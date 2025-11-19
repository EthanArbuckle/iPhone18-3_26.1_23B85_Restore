@interface HDSDefaults
+ (BOOL)sysDropProfileInstalled;
+ (double)getDoubleForKey:(id)a3 defaultValue:(double)a4;
+ (id)sharedDefaults;
+ (id)sharedInstance;
+ (int64_t)getBoolForKey:(id)a3 defaultValue:(BOOL)a4;
+ (int64_t)getIntegerForKey:(id)a3 defaultValue:(int64_t)a4;
+ (unsigned)sysDropBuildMode;
- (HDSDefaults)init;
@end

@implementation HDSDefaults

- (HDSDefaults)init
{
  v6.receiver = self;
  v6.super_class = HDSDefaults;
  v2 = [(HDSDefaults *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.HomeDeviceSetup"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[HDSDefaults sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __29__HDSDefaults_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HDSDefaults);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)sharedDefaults
{
  v2 = +[HDSDefaults sharedInstance];
  v3 = [v2 defaults];

  return v3;
}

+ (unsigned)sysDropBuildMode
{
  result = [a1 getIntegerForKey:@"SysDropBuildMode" defaultValue:0];
  if (!result)
  {
    if ((isInternalBuild() & 1) != 0 || ![a1 sysDropProfileInstalled])
    {
      result = isInternalBuild();
      if (result)
      {
        result = _os_feature_enabled_impl();
        if (result)
        {
          return [a1 sysDropEnabled];
        }
      }
    }

    else if (_os_feature_enabled_impl())
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)sysDropProfileInstalled
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedProfilesWithFilterFlags:3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) identifier];
        v9 = v8;
        if (v8 && (([v8 isEqualToString:@"com.apple.homedevicesetup.sysdrop"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.homedevicesetup.sysdrop.prod")))
        {

          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (int64_t)getIntegerForKey:(id)a3 defaultValue:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 sharedDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a4 = [v7 integerForKey:v6];
  }

  return a4;
}

+ (double)getDoubleForKey:(id)a3 defaultValue:(double)a4
{
  v6 = a3;
  v7 = [a1 sharedDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    [v7 doubleForKey:v6];
    a4 = v9;
  }

  return a4;
}

+ (int64_t)getBoolForKey:(id)a3 defaultValue:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 sharedDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v4 = [v7 BOOLForKey:v6];
  }

  return v4;
}

@end