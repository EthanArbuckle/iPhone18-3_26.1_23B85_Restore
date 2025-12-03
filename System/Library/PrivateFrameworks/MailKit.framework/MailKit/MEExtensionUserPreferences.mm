@interface MEExtensionUserPreferences
+ (id)log;
+ (id)sharedInstance;
- (BOOL)isExtensionEnabled:(id)enabled;
- (id)_loadUserPreferences;
- (id)_plistURL;
- (id)_prefsDictionary;
- (id)_serializedData;
- (void)_savePreferences;
- (void)_serializedData;
@end

@implementation MEExtensionUserPreferences

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MEExtensionUserPreferences_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __33__MEExtensionUserPreferences_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MEExtensionUserPreferences sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __44__MEExtensionUserPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MEExtensionUserPreferences);
  v1 = sharedInstance_sInstance;
  sharedInstance_sInstance = v0;
}

- (id)_plistURL
{
  if (_plistURL_onceToken != -1)
  {
    [MEExtensionUserPreferences _plistURL];
  }

  v3 = _plistURL_url;

  return v3;
}

void __39__MEExtensionUserPreferences__plistURL__block_invoke()
{
  v2 = [MEMORY[0x277D06E78] mailDataDirectory];
  v0 = [v2 URLByAppendingPathComponent:@"AppExtensionUserPreferences.plist" isDirectory:0];
  v1 = _plistURL_url;
  _plistURL_url = v0;
}

- (id)_prefsDictionary
{
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  _plistURL = [(MEExtensionUserPreferences *)self _plistURL];
  v5 = [v3 initWithContentsOfURL:_plistURL];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:1 format:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_loadUserPreferences
{
  _prefsDictionary = [(MEExtensionUserPreferences *)self _prefsDictionary];
  extensionIDToUserEnabledMap = self->_extensionIDToUserEnabledMap;
  self->_extensionIDToUserEnabledMap = _prefsDictionary;

  v5 = self->_extensionIDToUserEnabledMap;
  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = self->_extensionIDToUserEnabledMap;
    self->_extensionIDToUserEnabledMap = v6;

    v5 = self->_extensionIDToUserEnabledMap;
  }

  return v5;
}

- (BOOL)isExtensionEnabled:(id)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  _loadUserPreferences = [(MEExtensionUserPreferences *)self _loadUserPreferences];
  v6 = [_loadUserPreferences objectForKeyedSubscript:enabledCopy];

  v7 = [v6 objectForKeyedSubscript:@"MEExtensionUserEnabled"];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = [v7 BOOLValue];

  return self;
}

- (void)_savePreferences
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_257F67000, log, OS_LOG_TYPE_ERROR, "Failed to write serialized entries: %{public}@", buf, 0xCu);
}

- (id)_serializedData
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC58];
  v4 = [(NSMutableDictionary *)self->_extensionIDToUserEnabledMap copy];
  v12 = 0;
  v5 = [v3 dataWithPropertyList:v4 format:200 options:0 error:&v12];
  v6 = v12;

  if (!v5)
  {
    v7 = +[MEExtensionUserPreferences log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NSMutableDictionary *)self->_extensionIDToUserEnabledMap count];
      ef_publicDescription = [v6 ef_publicDescription];
      [(MEExtensionUserPreferences *)ef_publicDescription _serializedData:buf];
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_serializedData
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = self;
  _os_log_error_impl(&dword_257F67000, log, OS_LOG_TYPE_ERROR, "Failed to serialize %lu entries: %{public}@", buf, 0x16u);
}

@end