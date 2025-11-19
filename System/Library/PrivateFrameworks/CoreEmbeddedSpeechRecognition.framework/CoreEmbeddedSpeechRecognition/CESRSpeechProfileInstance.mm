@interface CESRSpeechProfileInstance
+ (id)loadAllInstancesAtSpeechProfileSiteURL:(id)a3 error:(id *)a4;
+ (id)loadInstanceAtSpeechProfileSiteURL:(id)a3 locale:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInstance:(id)a3;
- (BOOL)remove:(id *)a3;
- (CESRSpeechProfileInstance)init;
- (id)_changeRegistryFilename;
- (id)_updateVersion:(id)a3 forKeys:(id)a4 logKey:(id)a5;
- (id)description;
- (id)lastCompletedVersionForSpeechCategory:(id)a3;
- (id)lastRegisteredVersionForSpeechCategory:(id)a3;
- (unint64_t)hash;
- (unsigned)options;
- (void)recordUpdateCompletedForSpeechCategories:(id)a3 version:(id)a4;
- (void)registerUpdateForSpeechCategories:(id)a3 version:(id)a4;
@end

@implementation CESRSpeechProfileInstance

- (unint64_t)hash
{
  v3 = [(NSLocale *)self->_locale hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CESRSpeechProfileInstance options](self, "options")}];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToInstance:(id)a3
{
  v4 = a3;
  locale = self->_locale;
  v6 = [v4 locale];
  if ([(NSLocale *)locale isEqual:v6])
  {
    v7 = [(CESRSpeechProfileInstance *)self options];
    v8 = v7 == [v4 options];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileInstance *)self isEqualToInstance:v5];
  }

  return v6;
}

- (unsigned)options
{
  v2 = [(CESRDictionaryLog *)self->_log objectForKey:@"options"];
  v3 = [v2 unsignedCharValue];

  return v3;
}

- (id)lastCompletedVersionForSpeechCategory:(id)a3
{
  log = self->_log;
  v4 = a3;
  v5 = [(CESRDictionaryLog *)log mutableDictionaryForKey:@"completed" error:0];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)lastRegisteredVersionForSpeechCategory:(id)a3
{
  log = self->_log;
  v4 = a3;
  v5 = [(CESRDictionaryLog *)log mutableDictionaryForKey:@"registered" error:0];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)recordUpdateCompletedForSpeechCategories:(id)a3 version:(id)a4
{
  log = self->_log;
  v5 = [(CESRSpeechProfileInstance *)self _updateVersion:a4 forKeys:a3 logKey:@"completed"];
  [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"completed" error:0];
}

- (void)registerUpdateForSpeechCategories:(id)a3 version:(id)a4
{
  log = self->_log;
  v5 = [(CESRSpeechProfileInstance *)self _updateVersion:a4 forKeys:a3 logKey:@"registered"];
  [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"registered" error:0];
}

- (id)_updateVersion:(id)a3 forKeys:(id)a4 logKey:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(CESRDictionaryLog *)self->_log mutableDictionaryForKey:a5 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 setObject:v8 forKey:{*(*(&v18 + 1) + 8 * i), v18}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)remove:(id *)a3
{
  v5 = [(CCSetChangeRegistry *)self->_changeRegistry clearAllBookmarksAndCommit:?];
  if (v5)
  {
    log = self->_log;

    LOBYTE(v5) = [(CESRDictionaryLog *)log clear:a3];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSLocale *)self->_locale localeIdentifier];
  v5 = CESRSpeechProfileInstanceOptionsDescription([(CESRSpeechProfileInstance *)self options]);
  v6 = [v3 stringWithFormat:@"%@:[%@]", v4, v5];

  return v6;
}

- (id)_changeRegistryFilename
{
  v2 = [(NSLocale *)self->_locale localeIdentifier];
  v3 = [@"registry_" stringByAppendingString:v2];

  return v3;
}

- (CESRSpeechProfileInstance)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (id)loadInstanceAtSpeechProfileSiteURL:(id)a3 locale:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CESRSpeechProfileInstance alloc] initWithSpeechProfileSiteURL:v8 create:0 locale:v7 options:0 error:a5];

  return v9;
}

+ (id)loadAllInstancesAtSpeechProfileSiteURL:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v30 = a4;
  v8 = [v6 contentsOfDirectoryAtPath:v7 error:a4];

  if (v8)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = 1;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v27 = *v32;
      v28 = v9;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 relativeToURL:{v5, v26}];
          v16 = [v15 path];

          if ([v6 fileExistsAtPath:v16 isDirectory:&v35] && (v35 & 1) == 0 && objc_msgSend(v14, "hasPrefix:", @"instance_"))
          {
            v17 = [v14 substringFromIndex:{objc_msgSend(@"instance_", "length")}];
            v18 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v17];
            v19 = [CESRSpeechProfileInstance loadInstanceAtSpeechProfileSiteURL:v5 locale:v18 error:v30];
            if (!v19)
            {

              v23 = 0;
              v8 = v26;
              v22 = v29;
              goto LABEL_19;
            }

            v20 = v19;
            [v29 addObject:v19];

            v12 = v27;
            v9 = v28;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v21 = *MEMORY[0x277CEF0E8];
    v22 = v29;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "+[CESRSpeechProfileInstance loadAllInstancesAtSpeechProfileSiteURL:error:]";
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_INFO, "%s Managed profile instances: %@", buf, 0x16u);
    }

    v23 = v29;
    v8 = v26;
LABEL_19:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end