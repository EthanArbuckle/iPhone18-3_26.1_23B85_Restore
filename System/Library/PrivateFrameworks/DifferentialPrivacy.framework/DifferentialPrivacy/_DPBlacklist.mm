@interface _DPBlacklist
+ (BOOL)blacklistExistsWithKey:(id)key inDirectory:(id)directory;
+ (id)blacklistForKey:(id)key fromConfigurationsFile:(id)file;
+ (id)blacklistForKey:(id)key systemBlacklistDirectory:(id)directory runtimeBlacklistDirectory:(id)blacklistDirectory;
+ (id)extractKeyFromFileName:(id)name;
+ (void)initialize;
+ (void)removeBlackListForKey:(id)key;
+ (void)removeBlackListsForKeys:(id)keys;
+ (void)resetAllBlacklists;
- (_DPBlacklist)initWithKey:(id)key fromConfigurationsFile:(id)file;
@end

@implementation _DPBlacklist

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[_DPBlacklist initialize];
  }
}

- (_DPBlacklist)initWithKey:(id)key fromConfigurationsFile:(id)file
{
  keyCopy = key;
  fileCopy = file;
  v25.receiver = self;
  v25.super_class = _DPBlacklist;
  v9 = [(_DPBlacklist *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    v10->_version = -1;
    v11 = objc_opt_new();
    blacklist = v10->_blacklist;
    v10->_blacklist = v11;

    v13 = [objc_opt_class() filePathWithKey:keyCopy inDirectory:fileCopy];
    v14 = objc_opt_new();
    v15 = [v14 nonEmptyStringsFromFileAtPath:v13];
    if ([v15 count])
    {
      v16 = MEMORY[0x277CCAC80];
      v17 = [v15 objectAtIndexedSubscript:0];
      v18 = [v16 scannerWithString:v17];

      if ([v18 scanInteger:0] && objc_msgSend(v18, "isAtEnd"))
      {
        v19 = [v15 objectAtIndexedSubscript:0];
        v10->_version = [v19 intValue];

        v20 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];

        v21 = objc_opt_new();
        [v21 addObjectsFromArray:v20];
        v22 = [v21 copy];
        v23 = v10->_blacklist;
        v10->_blacklist = v22;

        v15 = v20;
      }
    }
  }

  return v10;
}

+ (id)blacklistForKey:(id)key systemBlacklistDirectory:(id)directory runtimeBlacklistDirectory:(id)blacklistDirectory
{
  v40 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  directoryCopy = directory;
  blacklistDirectoryCopy = blacklistDirectory;
  v11 = _allBlacklists;
  objc_sync_enter(v11);
  v12 = [_allBlacklists objectForKeyedSubscript:keyCopy];
  if (!v12)
  {
    v13 = [objc_opt_class() blacklistForKey:keyCopy fromConfigurationsFile:blacklistDirectoryCopy];
    if ([v13 version] < 1)
    {
      v14 = [objc_opt_class() blacklistForKey:keyCopy fromConfigurationsFile:directoryCopy];
      if ([v14 version]>= 1)
      {
        v18 = +[_DPLog framework];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          v27 = NSStringFromClass(v21);
          v22 = NSStringFromSelector(a2);
          version = [v14 version];
          blacklist = [v14 blacklist];
          *buf = 138413570;
          v29 = v27;
          v30 = 2112;
          v31 = v22;
          v32 = 2112;
          v33 = keyCopy;
          v34 = 2048;
          v35 = version;
          v36 = 2048;
          v37 = [blacklist count];
          v38 = 2112;
          v39 = directoryCopy;
          _os_log_debug_impl(&dword_22622D000, v18, OS_LOG_TYPE_DEBUG, "%@, %@: selecting system blacklist with key: %@, version: %li, values count: %li, from directory: %@", buf, 0x3Eu);
        }
      }

      v12 = v14;
    }

    else
    {
      v12 = v13;
      v14 = +[_DPLog framework];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v26 = NSStringFromClass(v15);
        v16 = NSStringFromSelector(a2);
        version2 = [v12 version];
        blacklist2 = [v12 blacklist];
        *buf = 138413570;
        v29 = v26;
        v30 = 2112;
        v31 = v16;
        v32 = 2112;
        v33 = keyCopy;
        v34 = 2048;
        v35 = version2;
        v36 = 2048;
        v37 = [blacklist2 count];
        v38 = 2112;
        v39 = blacklistDirectoryCopy;
        _os_log_debug_impl(&dword_22622D000, v14, OS_LOG_TYPE_DEBUG, "%@, %@: selecting runtime blacklist with key: %@, version: %li, values count: %li, from directory: %@", buf, 0x3Eu);
      }
    }

    if (v12)
    {
      [_allBlacklists setObject:v12 forKeyedSubscript:keyCopy];
    }
  }

  objc_sync_exit(v11);

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)resetAllBlacklists
{
  obj = _allBlacklists;
  objc_sync_enter(obj);
  [_allBlacklists removeAllObjects];
  objc_sync_exit(obj);
}

+ (void)removeBlackListForKey:(id)key
{
  keyCopy = key;
  v3 = _allBlacklists;
  objc_sync_enter(v3);
  [_allBlacklists removeObjectForKey:keyCopy];
  objc_sync_exit(v3);
}

+ (void)removeBlackListsForKeys:(id)keys
{
  keysCopy = keys;
  v3 = _allBlacklists;
  objc_sync_enter(v3);
  [_allBlacklists removeObjectsForKeys:keysCopy];
  objc_sync_exit(v3);
}

+ (id)blacklistForKey:(id)key fromConfigurationsFile:(id)file
{
  fileCopy = file;
  keyCopy = key;
  v7 = [[_DPBlacklist alloc] initWithKey:keyCopy fromConfigurationsFile:fileCopy];

  return v7;
}

+ (BOOL)blacklistExistsWithKey:(id)key inDirectory:(id)directory
{
  v5 = MEMORY[0x277CCAA00];
  directoryCopy = directory;
  keyCopy = key;
  defaultManager = [v5 defaultManager];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@%@", directoryCopy, keyCopy, @".blacklist"];

  LOBYTE(keyCopy) = [defaultManager fileExistsAtPath:v9];
  return keyCopy;
}

+ (id)extractKeyFromFileName:(id)name
{
  nameCopy = name;
  if ([nameCopy hasSuffix:@".blacklist"])
  {
    stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
  }

  else
  {
    stringByDeletingPathExtension = &stru_2839671C8;
  }

  return stringByDeletingPathExtension;
}

@end