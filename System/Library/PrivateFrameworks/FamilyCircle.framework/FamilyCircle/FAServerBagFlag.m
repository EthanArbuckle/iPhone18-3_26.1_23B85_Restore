@interface FAServerBagFlag
+ (id)megadomeKillSwitch;
+ (id)memberPhotoRequest404CacheDurationHours;
+ (id)registerDeviceWithPDS;
- (BOOL)isEnabledWithForceRefresh:(BOOL)a3;
- (FAServerBagFlag)initWithServerKey:(id)a3;
- (int64_t)getCacheDurationforMemberPhoto404Response:(BOOL)a3;
- (void)grabFromServer;
@end

@implementation FAServerBagFlag

+ (id)megadomeKillSwitch
{
  if (megadomeKillSwitch_onceToken != -1)
  {
    +[FAServerBagFlag megadomeKillSwitch];
  }

  v3 = megadomeKillSwitch_megadomeKillSwitch;

  return v3;
}

uint64_t __37__FAServerBagFlag_megadomeKillSwitch__block_invoke()
{
  megadomeKillSwitch_megadomeKillSwitch = [[FAServerBagFlag alloc] initWithServerKey:@"megadomeKillSwitch"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)registerDeviceWithPDS
{
  if (registerDeviceWithPDS_onceToken != -1)
  {
    +[FAServerBagFlag registerDeviceWithPDS];
  }

  v3 = registerDeviceWithPDS_registerDeviceWithPDS;

  return v3;
}

uint64_t __40__FAServerBagFlag_registerDeviceWithPDS__block_invoke()
{
  registerDeviceWithPDS_registerDeviceWithPDS = [[FAServerBagFlag alloc] initWithServerKey:@"usePDS"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)memberPhotoRequest404CacheDurationHours
{
  if (memberPhotoRequest404CacheDurationHours_onceToken[0] != -1)
  {
    +[FAServerBagFlag memberPhotoRequest404CacheDurationHours];
  }

  v3 = memberPhotoRequest404CacheDurationHours_memberPhotoRequest404CacheDurationHours;

  return v3;
}

uint64_t __58__FAServerBagFlag_memberPhotoRequest404CacheDurationHours__block_invoke()
{
  memberPhotoRequest404CacheDurationHours_memberPhotoRequest404CacheDurationHours = [[FAServerBagFlag alloc] initWithServerKey:@"memberPhotoRequest404CacheDurationHours"];

  return MEMORY[0x1EEE66BB8]();
}

- (FAServerBagFlag)initWithServerKey:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FAServerBagFlag;
  v5 = [(FAServerBagFlag *)&v9 init];
  if (v5)
  {
    v10[0] = @"usePDS";
    v10[1] = @"megadomeKillSwitch";
    v10[2] = @"memberPhotoRequest404CacheDurationHours";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    if ([v6 containsObject:v4])
    {
      [(FAServerBagFlag *)v5 setName:v4];
      [(FAServerBagFlag *)v5 grabFromServer];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEnabledWithForceRefresh:(BOOL)a3
{
  if (a3)
  {
    [(FAServerBagFlag *)self grabFromServer];
  }

  return [(FAServerBagFlag *)self value];
}

- (int64_t)getCacheDurationforMemberPhoto404Response:(BOOL)a3
{
  if (a3)
  {
    [(FAServerBagFlag *)self grabFromServer];
  }

  return [(FAServerBagFlag *)self intValue];
}

- (void)grabFromServer
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6959A48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];

  v5 = [v4 propertiesForDataclass:@"com.apple.Dataclass.Family"];
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Server results are %@", &v14, 0xCu);
  }

  v7 = [(FAServerBagFlag *)self name];
  v8 = [v5 objectForKey:v7];

  v9 = [(FAServerBagFlag *)self name];

  if (v8)
  {
    if (v9 == @"memberPhotoRequest404CacheDurationHours")
    {
      -[FAServerBagFlag setIntValue:](self, "setIntValue:", [v8 intValue]);
    }

    else
    {
      -[FAServerBagFlag setValue:](self, "setValue:", [v8 BOOLValue]);
    }
  }

  else
  {
    if (v9 == @"memberPhotoRequest404CacheDurationHours")
    {
      v10 = _FALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "use default value for FAMemberPhotoRequest404CacheDurationHour", &v14, 2u);
      }

      [(FAServerBagFlag *)self setIntValue:6];
    }

    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(FAServerBagFlag *)self name];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "No server value for %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end