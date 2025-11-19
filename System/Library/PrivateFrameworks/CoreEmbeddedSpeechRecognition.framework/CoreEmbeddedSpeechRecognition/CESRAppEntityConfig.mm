@interface CESRAppEntityConfig
+ (id)_appEntityMappingFromSupportedFirstPartyEntities:(id)a3 bundleIdToLimit:(id)a4 supportedLmeTemplates:(id)a5;
+ (id)_assistantSchemaMappingFromSupportedAssistantSchemaTypes:(id)a3 supportedLmeTemplates:(id)a4;
+ (id)_parseExtractionVocabLabels:(id)a3;
+ (id)_parseThirdPartyBundleLimits:(id)a3;
- (BOOL)_parseJsonObject:(id)a3;
- (BOOL)isAssistantSchemaTypeSupported:(id)a3;
- (BOOL)isBundleIdSupported:(id)a3;
- (CESRAppEntityConfig)initWithJsonObject:(id)a3;
- (id)appEntityMappingForAssistantSchemaType:(id)a3;
- (id)appEntityMappingForBundleId:(id)a3 appEntityName:(id)a4;
- (id)limitForBundleId:(id)a3;
@end

@implementation CESRAppEntityConfig

- (BOOL)isAssistantSchemaTypeSupported:(id)a3
{
  v3 = [(CESRAppEntityConfig *)self appEntityMappingForAssistantSchemaType:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isBundleIdSupported:(id)a3
{
  v4 = a3;
  if ([v4 length] && (!+[CESRUtilities isFirstPartyBundleId:](CESRUtilities, "isFirstPartyBundleId:", v4) || (-[NSDictionary objectForKeyedSubscript:](self->_appEntityMapping, "objectForKeyedSubscript:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6)))
  {
    v7 = [(CESRAppEntityConfig *)self limitForBundleId:v4];
    v8 = v7;
    v9 = !v7 || [v7 intValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)limitForBundleId:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSDictionary *)self->_bundleIdToLimit objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)appEntityMappingForAssistantSchemaType:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSDictionary *)self->_assistantSchemaMapping objectForKeyedSubscript:v4];
    v6 = [v5 anyObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appEntityMappingForBundleId:(id)a3 appEntityName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSDictionary *)self->_appEntityMapping objectForKeyedSubscript:v6, 0];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 appEntityName];
          v14 = [v7 isEqualToString:v13];

          if (v14)
          {
            v9 = v12;
            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_parseJsonObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"appEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"overallAppEntityLimit"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_overallAppEntityLimit = [v7 integerValue];
        v8 = [v6 objectForKeyedSubscript:@"overallEntityExtractionLimit"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_overallEntityExtractionLimit = [v8 integerValue];
          v9 = [v6 objectForKeyedSubscript:@"enableEntityExtraction"];
          objc_opt_class();
          v43 = v9;
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 BOOLValue];
          }

          else
          {
            v10 = 0;
          }

          self->_enableEntityExtraction = v10;
          v12 = [v6 objectForKeyedSubscript:@"interactionStoreRankingEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self->_interactionStoreRankingEnabled = [v12 BOOLValue];
          }

          v13 = [v6 objectForKeyedSubscript:@"limitAllocation"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v8;
            v41 = v13;
            v42 = v12;
            v14 = v13;
            v15 = [v14 objectForKeyedSubscript:@"allocationStrategy"];
            objc_opt_class();
            v40 = v14;
            if (objc_opt_isKindOfClass())
            {
              v38 = v15;
              self->_allocationStrategy = CESRAppEntityAllocationStrategyEnumFromString(v15);
              v16 = [v14 objectForKeyedSubscript:@"proportionTransformationFunction"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                self->_proportionTransformationFunction = CESRAppEntityProportionTransformationFunctionEnumFromString(v16);
              }

              v17 = [v14 objectForKeyedSubscript:@"proportionTransformationAlpha"];
              objc_opt_class();
              v12 = v42;
              if (objc_opt_isKindOfClass())
              {
                if (v17)
                {
                  [v17 floatValue];
                }

                else
                {
                  v18 = 1.0;
                }

                self->_proportionTransformationAlpha = v18;
              }

              v19 = [v6 objectForKeyedSubscript:@"firstPartyEntities"];
              objc_opt_class();
              v37 = v19;
              if (objc_opt_isKindOfClass())
              {
                v35 = v17;
                v20 = [v19 objectForKeyedSubscript:@"supportedFirstPartyEntities"];
                objc_opt_class();
                v36 = v20;
                if (objc_opt_isKindOfClass())
                {
                  v21 = [CESRAppEntityConfig _appEntityMappingFromSupportedFirstPartyEntities:v20 bundleIdToLimit:0 supportedLmeTemplates:self->_supportedLmeTemplates];
                  appEntityMapping = self->_appEntityMapping;
                  self->_appEntityMapping = v21;

                  v23 = [v6 objectForKeyedSubscript:@"thirdPartyEntities"];
                  objc_opt_class();
                  v34 = v23;
                  if (objc_opt_isKindOfClass())
                  {
                    v33 = v23;
                    v24 = [v33 objectForKeyedSubscript:@"supportedAssistantSchemaTypes"];
                    objc_opt_class();
                    v32 = v24;
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = [CESRAppEntityConfig _assistantSchemaMappingFromSupportedAssistantSchemaTypes:v24 supportedLmeTemplates:self->_supportedLmeTemplates];
                      assistantSchemaMapping = self->_assistantSchemaMapping;
                      self->_assistantSchemaMapping = v25;

                      v27 = [v33 objectForKeyedSubscript:@"bundleLimits"];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();
                      if (isKindOfClass)
                      {
                        v31 = [CESRAppEntityConfig _parseThirdPartyBundleLimits:v27];
                        [0 addEntriesFromDictionary:v31];

                        bundleIdToLimit = self->_bundleIdToLimit;
                        self->_bundleIdToLimit = 0;
                      }

                      v29 = v16;
                    }

                    else
                    {
                      v29 = v16;
                      isKindOfClass = 0;
                    }

                    v17 = v35;

                    v13 = v41;
                    v15 = v38;
                  }

                  else
                  {
                    v29 = v16;
                    isKindOfClass = 0;
                    v13 = v41;
                    v15 = v38;
                  }
                }

                else
                {
                  v29 = v16;
                  isKindOfClass = 0;
                  v13 = v41;
                  v15 = v38;
                }
              }

              else
              {
                v29 = v16;
                isKindOfClass = 0;
                v13 = v41;
                v15 = v38;
              }
            }

            else
            {
              isKindOfClass = 0;
              v12 = v42;
            }

            v8 = v39;
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CESRAppEntityConfig)initWithJsonObject:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CESRAppEntityConfig;
  v5 = [(CESRAppEntityConfig *)&v17 init];
  if (!v5)
  {
LABEL_9:
    v11 = v5;
    goto LABEL_13;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  supportedLmeTemplates = v5->_supportedLmeTemplates;
  v5->_supportedLmeTemplates = v6;

  v8 = [(CESRAppEntityConfig *)v5 _parseJsonObject:v4];
  v9 = MEMORY[0x277CEF0E8];
  v10 = *MEMORY[0x277CEF0E8];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      overallAppEntityLimit = v5->_overallAppEntityLimit;
      *buf = 136315394;
      v19 = "[CESRAppEntityConfig initWithJsonObject:]";
      v20 = 2048;
      v21 = overallAppEntityLimit;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s Overall app entity limit: %ld", buf, 0x16u);
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      overallEntityExtractionLimit = v5->_overallEntityExtractionLimit;
      *buf = 136315394;
      v19 = "[CESRAppEntityConfig initWithJsonObject:]";
      v20 = 2048;
      v21 = overallEntityExtractionLimit;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s Overall entity extraction limit: %ld", buf, 0x16u);
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      appEntityMapping = v5->_appEntityMapping;
      *buf = 136315394;
      v19 = "[CESRAppEntityConfig initWithJsonObject:]";
      v20 = 2112;
      v21 = appEntityMapping;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s App entity mapping: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[CESRAppEntityConfig initWithJsonObject:]";
    _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s Failed to parse App Entity section of json.", buf, 0xCu);
  }

  v11 = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)_appEntityMappingFromSupportedFirstPartyEntities:(id)a3 bundleIdToLimit:(id)a4 supportedLmeTemplates:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v50 = a4;
  v59 = a5;
  v63 = [MEMORY[0x277CBEB38] dictionary];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0x277CBE000uLL;
    v12 = *v79;
    v51 = *v79;
    v52 = v8;
    do
    {
      v13 = 0;
      v53 = v10;
      do
      {
        if (*v79 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v66 = v13;
        v14 = *(*(&v78 + 1) + 8 * v13);
        v15 = *(v11 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v17 = [v16 objectForKeyedSubscript:@"sourceBundleId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            v19 = [v16 objectForKeyedSubscript:@"bundleLimit"];
            v67 = v18;
            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = v17;
                v21 = v16;
                v22 = v19;
                if ([v18 length] && (objc_msgSend(v22, "intValue") & 0x80000000) == 0)
                {
                  [v50 setObject:v22 forKeyedSubscript:v18];
                }

                v16 = v21;
                v17 = v20;
              }
            }

            v23 = [v16 objectForKeyedSubscript:@"appEntityTypes"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v55 = v19;
              v56 = v17;
              v57 = v16;
              v54 = v23;
              v24 = v23;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v25 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
              v26 = 0x277CCA000uLL;
              if (v25)
              {
                v27 = v25;
                v28 = *v75;
                v73 = v24;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v75 != v28)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v30 = *(*(&v74 + 1) + 8 * i);
                    v31 = *(v11 + 2752);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v32 = v30;
                      v33 = [v32 objectForKeyedSubscript:@"entityName"];
                      v34 = *(v26 + 3240);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v35 = v33;
                        v36 = [v32 objectForKeyedSubscript:@"primaryLme"];
                        v37 = *(v11 + 2752);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v38 = v36;
                          v39 = [v38 objectForKeyedSubscript:@"templateName"];
                          v40 = v26;
                          v41 = v39;
                          v42 = *(v40 + 3240);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v72 = v41;
                            v43 = [v38 objectForKeyedSubscript:@"tagName"];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v69 = v43;
                              v71 = v43;
                              v44 = [v32 objectForKeyedSubscript:@"extractedLme"];
                              objc_opt_class();
                              v68 = v44;
                              if (objc_opt_isKindOfClass())
                              {
                                v70 = [a1 _parseExtractionVocabLabels:v44];
                              }

                              else
                              {
                                v70 = 0;
                              }

                              v45 = v71;
                              if ([v67 length] && objc_msgSend(v35, "length") && objc_msgSend(v72, "length") && objc_msgSend(v71, "length"))
                              {
                                v64 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v72 lmeTag:v71];
                                v62 = [[CESRAppEntityMapping alloc] initWithSourceBundleId:v67 assistantSchemaType:0 appEntityName:v35 primaryVocabLabel:v64 extractionVocabLabels:v70];
                                [v59 addObject:v72];
                                v46 = [v63 objectForKeyedSubscript:v67];
                                v60 = v46;
                                if (v46)
                                {
                                  v47 = v63;
                                  [v63 setObject:v46 forKeyedSubscript:v67];
                                }

                                else
                                {
                                  v58 = [MEMORY[0x277CBEB58] set];
                                  v47 = v63;
                                  [v63 setObject:v58 forKeyedSubscript:v67];
                                }

                                v61 = [v47 objectForKeyedSubscript:v67];
                                [v61 addObject:v62];

                                v45 = v71;
                              }

                              v43 = v69;
                            }
                          }

                          v11 = 0x277CBE000;
                          v26 = 0x277CCA000;
                        }

                        v24 = v73;
                      }
                    }
                  }

                  v27 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
                }

                while (v27);
              }

              v12 = v51;
              v8 = v52;
              v10 = v53;
              v23 = v54;
              v17 = v56;
              v16 = v57;
              v18 = v67;
              v19 = v55;
            }
          }
        }

        v13 = v66 + 1;
      }

      while (v66 + 1 != v10);
      v10 = [v8 countByEnumeratingWithState:&v78 objects:v83 count:16];
    }

    while (v10);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v63;
}

+ (id)_parseExtractionVocabLabels:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];
        v10 = [v9 objectForKeyedSubscript:@"templateName"];

        v11 = [v3 objectForKeyedSubscript:v8];
        v12 = [v11 objectForKeyedSubscript:@"tagName"];

        if ([v10 length] && objc_msgSend(v12, "length"))
        {
          v13 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v10 lmeTag:v12];
          [v16 setObject:v13 forKey:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_assistantSchemaMappingFromSupportedAssistantSchemaTypes:(id)a3 supportedLmeTemplates:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29 = a4;
  v35 = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0x277CBE000uLL;
    v10 = *v44;
    v41 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = *(v9 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          v15 = [v14 objectForKeyedSubscript:@"assistantSchemaType"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            v17 = [v14 objectForKeyedSubscript:@"primaryLme"];
            v18 = v9;
            v19 = *(v9 + 2752);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v17;
              v21 = [v20 objectForKeyedSubscript:@"templateName"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v21;
                v40 = v20;
                v22 = [v20 objectForKeyedSubscript:@"tagName"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = v22;
                  v39 = v22;
                  v23 = [v14 objectForKeyedSubscript:@"extractedLme"];
                  v24 = *(v18 + 2752);
                  objc_opt_class();
                  v36 = v23;
                  if (objc_opt_isKindOfClass())
                  {
                    v38 = [a1 _parseExtractionVocabLabels:v23];
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v25 = v39;
                  if ([v16 length] && objc_msgSend(v42, "length") && objc_msgSend(v39, "length"))
                  {
                    v33 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v42 lmeTag:v39];
                    v32 = [[CESRAppEntityMapping alloc] initWithSourceBundleId:0 assistantSchemaType:v16 appEntityName:0 primaryVocabLabel:v33 extractionVocabLabels:v38];
                    [v29 addObject:v42];
                    v26 = [v35 objectForKeyedSubscript:v16];
                    if (v26)
                    {
                      [v35 setObject:v26 forKeyedSubscript:v16];
                    }

                    else
                    {
                      v30 = [MEMORY[0x277CBEB58] set];
                      [v35 setObject:v30 forKeyedSubscript:v16];
                    }

                    v31 = [v35 objectForKeyedSubscript:v16];
                    [v31 addObject:v32];

                    v25 = v39;
                  }

                  v22 = v37;
                }

                v20 = v40;
              }

              v6 = v41;
            }

            v9 = v18;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)_parseThirdPartyBundleLimits:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = 0x277CBE000uLL;
    v9 = @"bundleId";
    v10 = 0x277CCA000uLL;
    v26 = v4;
    v27 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = *(v8 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          v15 = [v14 objectForKeyedSubscript:v9];
          v16 = *(v10 + 3240);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v10;
            v18 = v15;
            v19 = [v14 objectForKeyedSubscript:@"limit"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v9;
              v21 = v19;
              if ([v18 length])
              {
                v22 = v21 == 0;
              }

              else
              {
                v22 = 1;
              }

              if (!v22 && ([v21 intValue] & 0x80000000) == 0)
              {
                [v25 setObject:v21 forKeyedSubscript:v18];
              }

              v9 = v20;
              v4 = v26;
              v8 = 0x277CBE000;
            }

            v10 = v17;
            v7 = v27;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

@end