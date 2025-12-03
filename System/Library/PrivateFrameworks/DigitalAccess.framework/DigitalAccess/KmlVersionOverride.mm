@interface KmlVersionOverride
+ (id)sharedVersionsOverrides;
- (KmlVersionOverride)init;
@end

@implementation KmlVersionOverride

+ (id)sharedVersionsOverrides
{
  if (sharedVersionsOverrides_onceToken != -1)
  {
    +[KmlVersionOverride sharedVersionsOverrides];
  }

  v3 = sharedVersionsOverrides__versionOverride;

  return v3;
}

uint64_t __45__KmlVersionOverride_sharedVersionsOverrides__block_invoke()
{
  sharedVersionsOverrides__versionOverride = objc_alloc_init(KmlVersionOverride);

  return MEMORY[0x2821F96F8]();
}

- (KmlVersionOverride)init
{
  v18 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = KmlVersionOverride;
  v2 = [(KmlVersionOverride *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_kmlOverrideVersion = 768;
    v4 = objc_opt_new();
    kmlVersionOverride = [v4 kmlVersionOverride];
    if ([kmlVersionOverride isEqualToString:@"SharingInChainTest"])
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v13 = "[KmlVersionOverride init]";
        v14 = 1024;
        v15 = 51;
        v16 = 2112;
        v17 = kmlVersionOverride;
        _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_DEBUG, "%s : %i : KmlVersionOverride = %@", buf, 0x1Cu);
      }

      v3->_kmlOverrideVersion = 256;
    }

    v3->_keyRoleToShare = -1;
    keyRoleToShareOverride = [v4 keyRoleToShareOverride];
    if (keyRoleToShareOverride)
    {
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v13 = "[KmlVersionOverride init]";
        v14 = 1024;
        v15 = 58;
        v16 = 2112;
        v17 = keyRoleToShareOverride;
        _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : keyRoleToShareOverride: %@", buf, 0x1Cu);
      }

      v3->_keyRoleToShare = [keyRoleToShareOverride unsignedShortValue];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

@end