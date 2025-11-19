@interface NTKComplicationSampleData
- (BOOL)_validateTemplatesExist;
- (BOOL)hasTemplateForFamily:(int64_t)a3;
- (NTKComplicationSampleData)initWithCoder:(id)a3;
- (NTKComplicationSampleData)initWithSupportedFamilies:(id)a3;
- (id)_decodedTemplateFromPath:(id)a3;
- (id)_uncachedTemplateForFamily:(int64_t)a3;
- (id)copyEncodedToDirectoryPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inflatedCopy;
- (id)supportedFamilies;
- (id)templateForFamily:(int64_t)a3;
- (id)templatePathForFamily:(int64_t)a3;
- (id)templateReferenceForFamily:(int64_t)a3;
- (void)_inflateAllTemplates;
- (void)encodeWithCoder:(id)a3;
- (void)setTemplate:(id)a3 forFamily:(int64_t)a4;
- (void)setTemplatePath:(id)a3 forFamily:(int64_t)a4;
@end

@implementation NTKComplicationSampleData

- (NTKComplicationSampleData)initWithSupportedFamilies:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKComplicationSampleData;
  v5 = [(NTKComplicationSampleData *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    familyToTemplate = v5->_familyToTemplate;
    v5->_familyToTemplate = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    familyToTemplatePath = v5->_familyToTemplatePath;
    v5->_familyToTemplatePath = v8;

    v10 = [MEMORY[0x277CBEB58] setWithArray:v4];
    supportedFamilies = v5->_supportedFamilies;
    v5->_supportedFamilies = v10;

    [(NTKComplicationSampleData *)v5 _commonInit];
  }

  return v5;
}

- (BOOL)hasTemplateForFamily:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  familyToTemplate = v4->_familyToTemplate;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)familyToTemplate objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    familyToTemplatePath = v4->_familyToTemplatePath;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [(NSMutableDictionary *)familyToTemplatePath objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v13 fileExistsAtPath:v12];
    }

    else
    {
      v9 = 0;
    }
  }

  objc_sync_exit(v4);
  return v9;
}

- (id)_uncachedTemplateForFamily:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  familyToTemplate = v4->_familyToTemplate;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)familyToTemplate objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  if (!v8)
  {
    familyToTemplatePath = v4->_familyToTemplatePath;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v11 = [(NSMutableDictionary *)familyToTemplatePath objectForKeyedSubscript:v10];

    if (v11)
    {
      v8 = [(NTKComplicationSampleData *)v4 _decodedTemplateFromPath:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  objc_sync_exit(v4);

  return v8;
}

- (id)templateForFamily:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  familyToTemplate = v4->_familyToTemplate;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)familyToTemplate objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  if (!v8)
  {
    v8 = [(NTKComplicationSampleData *)v4 _uncachedTemplateForFamily:a3];
    if ((CLKIsNTKDaemon() & 1) == 0)
    {
      v9 = v4->_familyToTemplate;
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
    }
  }

  v11 = v8;

  objc_sync_exit(v4);

  return v11;
}

- (id)templatePathForFamily:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  familyToTemplatePath = v4->_familyToTemplatePath;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)familyToTemplatePath objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  objc_sync_exit(v4);

  return v8;
}

- (void)setTemplate:(id)a3 forFamily:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (!v6)
  {
    v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(NTKComplicationSampleData *)v8 setTemplate:v9 forFamily:v10, v11, v12, v13, v14, v15];
    }
  }

  if ((CLKIsNTKDaemon() & 1) == 0)
  {
    familyToTemplate = v7->_familyToTemplate;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)familyToTemplate setObject:v6 forKeyedSubscript:v17];
  }

  supportedFamilies = v7->_supportedFamilies;
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableSet *)supportedFamilies addObject:v19];

  objc_sync_exit(v7);
}

- (void)setTemplatePath:(id)a3 forFamily:(int64_t)a4
{
  v11 = a3;
  v6 = self;
  objc_sync_enter(v6);
  familyToTemplatePath = v6->_familyToTemplatePath;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)familyToTemplatePath setObject:v11 forKeyedSubscript:v8];

  supportedFamilies = v6->_supportedFamilies;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableSet *)supportedFamilies addObject:v10];

  objc_sync_exit(v6);
}

- (id)supportedFamilies
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_supportedFamilies allObjects];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (id)templateReferenceForFamily:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  supportedFamilies = v4->_supportedFamilies;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  LOBYTE(supportedFamilies) = [(NSMutableSet *)supportedFamilies containsObject:v6];

  if (supportedFamilies)
  {
    familyToTemplatePath = v4->_familyToTemplatePath;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = [(NSMutableDictionary *)familyToTemplatePath objectForKeyedSubscript:v8];

    familyToTemplate = v4->_familyToTemplate;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [(NSMutableDictionary *)familyToTemplate objectForKeyedSubscript:v11];

    v13 = [[NTKComplicationTemplateReference alloc] initWithPath:v9 existingTemplate:v12];
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v4);

  return v13;
}

- (NTKComplicationSampleData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKComplicationSampleData *)self init];
  v6 = v5;
  if (v5)
  {
    [(NTKComplicationSampleData *)v5 _commonInit];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v11 forKey:@"FamilyToTemplate"];
    v20 = v19;
    v21 = v19 ? v19 : objc_opt_new();
    familyToTemplate = v6->_familyToTemplate;
    v6->_familyToTemplate = v21;

    v23 = [v4 decodeObjectOfClasses:v15 forKey:@"FamilyToTemplatePath"];
    v24 = v23;
    v25 = v23 ? v23 : objc_opt_new();
    familyToTemplatePath = v6->_familyToTemplatePath;
    v6->_familyToTemplatePath = v25;

    v27 = [v4 decodeObjectOfClasses:v18 forKey:@"SupportedFamilies"];
    supportedFamilies = v6->_supportedFamilies;
    v6->_supportedFamilies = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientID"];
    v30 = [v29 copy];
    clientID = v6->_clientID;
    v6->_clientID = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ApplicationID"];
    v33 = [v32 copy];
    applicationID = v6->_applicationID;
    v6->_applicationID = v33;

    if (![(NTKComplicationSampleData *)v6 _validateTemplatesExist])
    {
      v35 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [(NTKComplicationSampleData *)v35 initWithCoder:v36, v37, v38, v39, v40, v41, v42];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_encodesTemplatesAsPaths)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5->_supportedFamilies;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)v5->_familyToTemplatePath objectForKeyedSubscript:v11, v23];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = [(NSMutableDictionary *)v5->_familyToTemplate objectForKeyedSubscript:v11];
            [v6 setObject:v14 forKeyedSubscript:v11];
          }
        }

        v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    [v4 encodeObject:v5->_familyToTemplatePath forKey:@"FamilyToTemplatePath"];
    [v4 encodeObject:v6 forKey:@"FamilyToTemplate"];
  }

  else
  {
    [(NTKComplicationSampleData *)v5 _inflateAllTemplates];
    [v4 encodeObject:v5->_familyToTemplate forKey:@"FamilyToTemplate"];
  }

  [v4 encodeObject:v5->_supportedFamilies forKey:{@"SupportedFamilies", v23}];
  [v4 encodeObject:v5->_clientID forKey:@"ClientID"];
  [v4 encodeObject:v5->_applicationID forKey:@"ApplicationID"];
  if (![(NTKComplicationSampleData *)v5 _validateTemplatesExist])
  {
    v15 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(NTKComplicationSampleData *)v15 encodeWithCoder:v16, v17, v18, v19, v20, v21, v22];
    }
  }

  objc_sync_exit(v5);
}

- (id)_decodedTemplateFromPath:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NTKComplicationSampleData _decodedTemplateFromPath:];
    }

    v7 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
    [v8 setDecodingFailurePolicy:0];
    v7 = [v8 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  }

  return v7;
}

- (void)_inflateAllTemplates
{
  v2 = self;
  objc_sync_enter(v2);
  familyToTemplatePath = v2->_familyToTemplatePath;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__NTKComplicationSampleData__inflateAllTemplates__block_invoke;
  v4[3] = &unk_27877F838;
  v4[4] = v2;
  [(NSMutableDictionary *)familyToTemplatePath enumerateKeysAndObjectsUsingBlock:v4];
  objc_sync_exit(v2);
}

void __49__NTKComplicationSampleData__inflateAllTemplates__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _decodedTemplateFromPath:a3];
  [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)_validateTemplatesExist
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2->_supportedFamilies;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)v2->_familyToTemplate objectForKeyedSubscript:v7, v14];
        v9 = v8 == 0;

        if (v9)
        {
          if (!v2->_encodesTemplatesAsPaths || ([(NSMutableDictionary *)v2->_familyToTemplatePath objectForKeyedSubscript:v7], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
          {
            v12 = 0;
            goto LABEL_13;
          }
        }
      }

      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  objc_sync_exit(v2);
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableSet *)v3->_supportedFamilies mutableCopy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSMutableDictionary *)v3->_familyToTemplatePath mutableCopy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSMutableDictionary *)v3->_familyToTemplate mutableCopy];
  v10 = v4[1];
  v4[1] = v9;

  *(v4 + 32) = v3->_encodesTemplatesAsPaths;
  v11 = [(NSString *)v3->_clientID copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)v3->_applicationID copy];
  v14 = v4[6];
  v4[6] = v13;

  objc_sync_exit(v3);
  return v4;
}

- (id)inflatedCopy
{
  v2 = [(NTKComplicationSampleData *)self copy];
  [v2 _inflateAllTemplates];
  v3 = objc_opt_new();
  v4 = v2[2];
  v2[2] = v3;

  return v2;
}

- (id)copyEncodedToDirectoryPath:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v4 = [(NTKComplicationSampleData *)self copy];
  v5 = objc_opt_new();
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = objc_opt_new();
  v8 = *(v4 + 8);
  v33 = v4;
  *(v4 + 8) = v7;

  v9 = self;
  objc_sync_enter(v9);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9->_supportedFamilies;
  v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v32 = *v39;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v39 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      v13 = MEMORY[0x277CCACA8];
      [v12 unsignedIntegerValue];
      v14 = CLKStringForComplicationFamily();
      v15 = [v13 stringWithFormat:@"%@.sample-template", v14];

      v16 = [v34 stringByAppendingPathComponent:v15];
      v17 = [(NSMutableDictionary *)v9->_familyToTemplatePath objectForKey:v12];
      if (v17 && ([MEMORY[0x277CCAA00] defaultManager], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "fileExistsAtPath:", v17), v18, v19))
      {
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v37 = 0;
        [v20 copyItemAtPath:v17 toPath:v16 error:&v37];
        v21 = v37;

        if (v21)
        {
          v29 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [NTKComplicationSampleData copyEncodedToDirectoryPath:];
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = MEMORY[0x277CCAAB0];
        v23 = [(NSMutableDictionary *)v9->_familyToTemplate objectForKey:v12];
        v36 = 0;
        v29 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v36];
        v21 = v36;

        if (v21)
        {
          v27 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [NTKComplicationSampleData copyEncodedToDirectoryPath:];
          }

LABEL_20:

LABEL_21:
          objc_sync_exit(v9);

          v26 = 0;
          v25 = v33;
          goto LABEL_22;
        }

        v35 = 0;
        [v29 writeToFile:v16 options:1 error:&v35];
        v24 = v35;
        if (v24)
        {
          v21 = v24;
          v27 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [NTKComplicationSampleData copyEncodedToDirectoryPath:];
          }

          goto LABEL_20;
        }
      }

      [v33[2] setObject:v16 forKeyedSubscript:v12];

      if (v10 == ++v11)
      {
        v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(v9);
  v25 = v33;
  v26 = v33;
LABEL_22:

  return v26;
}

- (void)initWithCoder:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Could not decode NTKComplicationSampleData '%@'", buf, 0xCu);
}

@end