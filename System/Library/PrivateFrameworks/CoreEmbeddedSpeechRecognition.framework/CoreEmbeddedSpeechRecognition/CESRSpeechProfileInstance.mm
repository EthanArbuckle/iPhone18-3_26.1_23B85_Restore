@interface CESRSpeechProfileInstance
+ (id)loadAllInstancesAtSpeechProfileSiteURL:(id)l error:(id *)error;
+ (id)loadInstanceAtSpeechProfileSiteURL:(id)l locale:(id)locale error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstance:(id)instance;
- (BOOL)remove:(id *)remove;
- (CESRSpeechProfileInstance)init;
- (id)_changeRegistryFilename;
- (id)_updateVersion:(id)version forKeys:(id)keys logKey:(id)key;
- (id)description;
- (id)lastCompletedVersionForSpeechCategory:(id)category;
- (id)lastRegisteredVersionForSpeechCategory:(id)category;
- (unint64_t)hash;
- (unsigned)options;
- (void)recordUpdateCompletedForSpeechCategories:(id)categories version:(id)version;
- (void)registerUpdateForSpeechCategories:(id)categories version:(id)version;
@end

@implementation CESRSpeechProfileInstance

- (unint64_t)hash
{
  v3 = [(NSLocale *)self->_locale hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CESRSpeechProfileInstance options](self, "options")}];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToInstance:(id)instance
{
  instanceCopy = instance;
  locale = self->_locale;
  locale = [instanceCopy locale];
  if ([(NSLocale *)locale isEqual:locale])
  {
    options = [(CESRSpeechProfileInstance *)self options];
    v8 = options == [instanceCopy options];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileInstance *)self isEqualToInstance:v5];
  }

  return v6;
}

- (unsigned)options
{
  v2 = [(CESRDictionaryLog *)self->_log objectForKey:@"options"];
  unsignedCharValue = [v2 unsignedCharValue];

  return unsignedCharValue;
}

- (id)lastCompletedVersionForSpeechCategory:(id)category
{
  log = self->_log;
  categoryCopy = category;
  v5 = [(CESRDictionaryLog *)log mutableDictionaryForKey:@"completed" error:0];
  v6 = [v5 objectForKey:categoryCopy];

  return v6;
}

- (id)lastRegisteredVersionForSpeechCategory:(id)category
{
  log = self->_log;
  categoryCopy = category;
  v5 = [(CESRDictionaryLog *)log mutableDictionaryForKey:@"registered" error:0];
  v6 = [v5 objectForKey:categoryCopy];

  return v6;
}

- (void)recordUpdateCompletedForSpeechCategories:(id)categories version:(id)version
{
  log = self->_log;
  v5 = [(CESRSpeechProfileInstance *)self _updateVersion:version forKeys:categories logKey:@"completed"];
  [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"completed" error:0];
}

- (void)registerUpdateForSpeechCategories:(id)categories version:(id)version
{
  log = self->_log;
  v5 = [(CESRSpeechProfileInstance *)self _updateVersion:version forKeys:categories logKey:@"registered"];
  [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"registered" error:0];
}

- (id)_updateVersion:(id)version forKeys:(id)keys logKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  keysCopy = keys;
  v10 = [(CESRDictionaryLog *)self->_log mutableDictionaryForKey:key error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = keysCopy;
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

        [v10 setObject:versionCopy forKey:{*(*(&v18 + 1) + 8 * i), v18}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)remove:(id *)remove
{
  v5 = [(CCSetChangeRegistry *)self->_changeRegistry clearAllBookmarksAndCommit:?];
  if (v5)
  {
    log = self->_log;

    LOBYTE(v5) = [(CESRDictionaryLog *)log clear:remove];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v5 = CESRSpeechProfileInstanceOptionsDescription([(CESRSpeechProfileInstance *)self options]);
  v6 = [v3 stringWithFormat:@"%@:[%@]", localeIdentifier, v5];

  return v6;
}

- (id)_changeRegistryFilename
{
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v3 = [@"registry_" stringByAppendingString:localeIdentifier];

  return v3;
}

- (CESRSpeechProfileInstance)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (id)loadInstanceAtSpeechProfileSiteURL:(id)l locale:(id)locale error:(id *)error
{
  localeCopy = locale;
  lCopy = l;
  v9 = [[CESRSpeechProfileInstance alloc] initWithSpeechProfileSiteURL:lCopy create:0 locale:localeCopy options:0 error:error];

  return v9;
}

+ (id)loadAllInstancesAtSpeechProfileSiteURL:(id)l error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  errorCopy = error;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:error];

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
          v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 relativeToURL:{lCopy, v26}];
          path2 = [v15 path];

          if ([defaultManager fileExistsAtPath:path2 isDirectory:&v35] && (v35 & 1) == 0 && objc_msgSend(v14, "hasPrefix:", @"instance_"))
          {
            v17 = [v14 substringFromIndex:{objc_msgSend(@"instance_", "length")}];
            v18 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v17];
            v19 = [CESRSpeechProfileInstance loadInstanceAtSpeechProfileSiteURL:lCopy locale:v18 error:errorCopy];
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