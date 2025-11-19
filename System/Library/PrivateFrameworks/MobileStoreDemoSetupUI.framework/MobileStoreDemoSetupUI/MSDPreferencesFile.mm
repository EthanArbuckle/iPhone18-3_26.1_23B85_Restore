@interface MSDPreferencesFile
+ (BOOL)preferencesFileExists;
+ (id)preferencesFilePath;
+ (id)preferencesFileUrl;
+ (id)sharedInstance;
- (BOOL)removeObjectForKey:(id)a3;
- (BOOL)removeObjectsForKeys:(id)a3;
- (BOOL)saveCache;
- (BOOL)setObject:(id)a3 forKey:(id)a4;
- (MSDPreferencesFile)init;
- (id)deepCopy:(id)a3;
- (id)objectForKey:(id)a3;
- (void)populateCache;
- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)a3;
- (void)reload;
@end

@implementation MSDPreferencesFile

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MSDPreferencesFile sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __36__MSDPreferencesFile_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(MSDPreferencesFile);

  return MEMORY[0x2821F96F8]();
}

- (MSDPreferencesFile)init
{
  v5.receiver = self;
  v5.super_class = MSDPreferencesFile;
  v2 = [(MSDPreferencesFile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDPreferencesFile *)v2 populateCache];
  }

  return v3;
}

+ (id)preferencesFilePath
{
  v2 = +[MSDPreferencesFile preferencesFileUrl];
  v3 = [v2 path];

  return v3;
}

+ (BOOL)preferencesFileExists
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[MSDPreferencesFile preferencesFilePath];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (void)reload
{
  obj = self;
  objc_sync_enter(obj);
  [(MSDPreferencesFile *)obj populateCache];
  objc_sync_exit(obj);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MSDPreferencesFile *)v5 cache];
    v7 = [v6 objectForKey:v4];

    objc_sync_exit(v5);
  }

  else
  {
    [MSDPreferencesFile objectForKey:];
    v7 = 0;
  }

  return v7;
}

- (BOOL)setObject:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446210;
      v18 = "[MSDPreferencesFile setObject:forKey:]";
      v14 = "%{public}s - Both object and key must be non-nil.";
LABEL_13:
      _os_log_impl(&dword_259BCA000, &v10->super, OS_LOG_TYPE_DEFAULT, v14, &v17, 0xCu);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446210;
      v18 = "[MSDPreferencesFile setObject:forKey:]";
      v14 = "%{public}s - Key must be of type NSString.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (([MEMORY[0x277CCAC58] propertyList:v6 isValidForFormat:100] & 1) == 0)
  {
    [(MSDPreferencesFile *)self raiseInvalidPropertyListObjectExceptionForObject:v6];
  }

  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(MSDPreferencesFile *)v8 setObject:v6 forKey:v9];
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(MSDPreferencesFile *)v10 cache];
  v12 = [(MSDPreferencesFile *)v10 deepCopy:v6];
  [v11 setObject:v12 forKey:v8];

  v13 = [(MSDPreferencesFile *)v10 saveCache];
  objc_sync_exit(v10);
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)removeObjectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MSDPreferencesFile *)v5 cache];
    [v6 removeObjectForKey:v4];

    v7 = [(MSDPreferencesFile *)v5 saveCache];
    objc_sync_exit(v5);
  }

  else
  {
    [MSDPreferencesFile removeObjectForKey:];
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MSDPreferencesFile *)v5 cache];
    [v6 removeObjectsForKeys:v4];

    v7 = [(MSDPreferencesFile *)v5 saveCache];
    objc_sync_exit(v5);
  }

  else
  {
    [MSDPreferencesFile removeObjectsForKeys:];
    v7 = 0;
  }

  return v7;
}

- (void)populateCache
{
  v18 = *MEMORY[0x277D85DE8];
  if (!+[MSDPreferencesFile preferencesFileExists])
  {
LABEL_7:
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MSDPreferencesFile *)self setCache:v5];
    goto LABEL_8;
  }

  v3 = MEMORY[0x277CBEAC0];
  v4 = +[MSDPreferencesFile preferencesFileUrl];
  v11 = 0;
  v5 = [v3 dictionaryWithContentsOfURL:v4 error:&v11];
  v6 = v11;

  if (!v5)
  {
    v8 = defaultLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[MSDPreferencesFile preferencesFilePath];
      *buf = 136446722;
      v13 = "[MSDPreferencesFile populateCache]";
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - Failed to read preferences file:  %{public}@ - Error:  %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
  [(MSDPreferencesFile *)self setCache:v7];

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveCache
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(MSDPreferencesFile *)self cache];
  v3 = +[MSDPreferencesFile preferencesFileUrl];
  v10 = 0;
  v4 = [v2 writeToURL:v3 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[MSDPreferencesFile preferencesFilePath];
      *buf = 136446722;
      v12 = "[MSDPreferencesFile saveCache]";
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - Failed to save preferences file:  %{public}@ - Error:  %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"Object %@ of type %@ is not a valid property list object.", v4, objc_opt_class()];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"InvalidPropertyListObject" reason:v5 userInfo:0];
  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[MSDPreferencesFile raiseInvalidPropertyListObjectExceptionForObject:]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - Exception:  %{public}@", buf, 0x16u);
  }

  [v6 raise];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)preferencesFileUrl
{
  if (preferencesFileUrl_onceToken != -1)
  {
    +[MSDPreferencesFile preferencesFileUrl];
  }

  v3 = preferencesFileUrl_fileUrl;

  return v3;
}

void __40__MSDPreferencesFile_preferencesFileUrl__block_invoke()
{
  v0 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo"];
  v3 = [v0 stringByAppendingPathExtension:@"plist"];

  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];
  v2 = preferencesFileUrl_fileUrl;
  preferencesFileUrl_fileUrl = v1;
}

- (id)deepCopy:(id)a3
{
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], a3, 0);

  return DeepCopy;
}

- (void)objectForKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_259BCA000, v1, v2, "%{public}s - Key is nil.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(os_log_t)log forKey:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_259BCA000, log, OS_LOG_TYPE_DEBUG, "Setting preference %{public}@:%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectForKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_259BCA000, v1, v2, "%{public}s - Key is nil.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectsForKeys:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_259BCA000, v1, v2, "%{public}s - Keys array pointer is nil.", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end