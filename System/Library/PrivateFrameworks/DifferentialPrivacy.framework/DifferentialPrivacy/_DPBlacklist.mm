@interface _DPBlacklist
+ (BOOL)blacklistExistsWithKey:(id)a3 inDirectory:(id)a4;
+ (id)blacklistForKey:(id)a3 fromConfigurationsFile:(id)a4;
+ (id)blacklistForKey:(id)a3 systemBlacklistDirectory:(id)a4 runtimeBlacklistDirectory:(id)a5;
+ (id)extractKeyFromFileName:(id)a3;
+ (void)initialize;
+ (void)removeBlackListForKey:(id)a3;
+ (void)removeBlackListsForKeys:(id)a3;
+ (void)resetAllBlacklists;
- (_DPBlacklist)initWithKey:(id)a3 fromConfigurationsFile:(id)a4;
@end

@implementation _DPBlacklist

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[_DPBlacklist initialize];
  }
}

- (_DPBlacklist)initWithKey:(id)a3 fromConfigurationsFile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = _DPBlacklist;
  v9 = [(_DPBlacklist *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    v10->_version = -1;
    v11 = objc_opt_new();
    blacklist = v10->_blacklist;
    v10->_blacklist = v11;

    v13 = [objc_opt_class() filePathWithKey:v7 inDirectory:v8];
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

+ (id)blacklistForKey:(id)a3 systemBlacklistDirectory:(id)a4 runtimeBlacklistDirectory:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _allBlacklists;
  objc_sync_enter(v11);
  v12 = [_allBlacklists objectForKeyedSubscript:v8];
  if (!v12)
  {
    v13 = [objc_opt_class() blacklistForKey:v8 fromConfigurationsFile:v10];
    if ([v13 version] < 1)
    {
      v14 = [objc_opt_class() blacklistForKey:v8 fromConfigurationsFile:v9];
      if ([v14 version]>= 1)
      {
        v18 = +[_DPLog framework];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          v27 = NSStringFromClass(v21);
          v22 = NSStringFromSelector(a2);
          v25 = [v14 version];
          v23 = [v14 blacklist];
          *buf = 138413570;
          v29 = v27;
          v30 = 2112;
          v31 = v22;
          v32 = 2112;
          v33 = v8;
          v34 = 2048;
          v35 = v25;
          v36 = 2048;
          v37 = [v23 count];
          v38 = 2112;
          v39 = v9;
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
        v24 = [v12 version];
        v17 = [v12 blacklist];
        *buf = 138413570;
        v29 = v26;
        v30 = 2112;
        v31 = v16;
        v32 = 2112;
        v33 = v8;
        v34 = 2048;
        v35 = v24;
        v36 = 2048;
        v37 = [v17 count];
        v38 = 2112;
        v39 = v10;
        _os_log_debug_impl(&dword_22622D000, v14, OS_LOG_TYPE_DEBUG, "%@, %@: selecting runtime blacklist with key: %@, version: %li, values count: %li, from directory: %@", buf, 0x3Eu);
      }
    }

    if (v12)
    {
      [_allBlacklists setObject:v12 forKeyedSubscript:v8];
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

+ (void)removeBlackListForKey:(id)a3
{
  v4 = a3;
  v3 = _allBlacklists;
  objc_sync_enter(v3);
  [_allBlacklists removeObjectForKey:v4];
  objc_sync_exit(v3);
}

+ (void)removeBlackListsForKeys:(id)a3
{
  v4 = a3;
  v3 = _allBlacklists;
  objc_sync_enter(v3);
  [_allBlacklists removeObjectsForKeys:v4];
  objc_sync_exit(v3);
}

+ (id)blacklistForKey:(id)a3 fromConfigurationsFile:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_DPBlacklist alloc] initWithKey:v6 fromConfigurationsFile:v5];

  return v7;
}

+ (BOOL)blacklistExistsWithKey:(id)a3 inDirectory:(id)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultManager];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@%@", v6, v7, @".blacklist"];

  LOBYTE(v7) = [v8 fileExistsAtPath:v9];
  return v7;
}

+ (id)extractKeyFromFileName:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@".blacklist"])
  {
    v4 = [v3 stringByDeletingPathExtension];
  }

  else
  {
    v4 = &stru_2839671C8;
  }

  return v4;
}

@end