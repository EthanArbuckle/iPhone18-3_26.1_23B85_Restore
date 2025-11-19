@interface FCPaidALaCartePaywallConfig
- (BOOL)isEqual:(id)a3;
- (FCPaidALaCartePaywallConfig)init;
- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)a3 channelPaywallTitle:(id)a4 hardPaywallTitle:(id)a5 leakyPaywallTitle:(id)a6 promotionalPaywallTitle:(id)a7;
- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)a3 configDictionary:(id)a4;
- (unint64_t)hash;
@end

@implementation FCPaidALaCartePaywallConfig

- (FCPaidALaCartePaywallConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPaidALaCartePaywallConfig init]";
    v10 = 2080;
    v11 = "FCPaidALaCartePaywallConfig.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPaidALaCartePaywallConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)a3 configDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = FCAppConfigurationStringValue(v6, @"channelPaywall", 0);
  v9 = FCAppConfigurationStringValue(v6, @"hardPaywall", 0);
  v10 = FCAppConfigurationStringValue(v6, @"leakyPaywall", 0);
  v11 = FCAppConfigurationStringValue(v6, @"promotionalPaywall", 0);

  v12 = [(FCPaidALaCartePaywallConfig *)self initWithChannelID:v7 channelPaywallTitle:v8 hardPaywallTitle:v9 leakyPaywallTitle:v10 promotionalPaywallTitle:v11];
  return v12;
}

- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)a3 channelPaywallTitle:(id)a4 hardPaywallTitle:(id)a5 leakyPaywallTitle:(id)a6 promotionalPaywallTitle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = FCPaidALaCartePaywallConfig;
  v17 = [(FCPaidALaCartePaywallConfig *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    channelID = v17->_channelID;
    v17->_channelID = v18;

    v20 = [v13 copy];
    channelPaywallTitle = v17->_channelPaywallTitle;
    v17->_channelPaywallTitle = v20;

    v22 = [v14 copy];
    hardPaywallTitle = v17->_hardPaywallTitle;
    v17->_hardPaywallTitle = v22;

    v24 = [v15 copy];
    leakyPaywallTitle = v17->_leakyPaywallTitle;
    v17->_leakyPaywallTitle = v24;

    v26 = [v16 copy];
    promotionalPaywallTitle = v17->_promotionalPaywallTitle;
    v17->_promotionalPaywallTitle = v26;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    v8 = [(FCPaidALaCartePaywallConfig *)self channelId];
    v9 = [v6 channelID];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCPaidALaCartePaywallConfig *)self channelPaywallTitle];
      v12 = [v6 channelPaywallTitle];
      if ([v10 nf_object:v11 isEqualToObject:v12])
      {
        v13 = MEMORY[0x1E69E58C0];
        v14 = [(FCPaidALaCartePaywallConfig *)self hardPaywallTitle];
        v15 = [v6 hardPaywallTitle];
        if ([v13 nf_object:v14 isEqualToObject:v15])
        {
          v26 = v14;
          v16 = MEMORY[0x1E69E58C0];
          v17 = [(FCPaidALaCartePaywallConfig *)self leakyPaywallTitle];
          v18 = [v6 leakyPaywallTitle];
          v27 = v17;
          v19 = v17;
          v20 = v18;
          if ([v16 nf_object:v19 isEqualToObject:v18])
          {
            v25 = MEMORY[0x1E69E58C0];
            v21 = [(FCPaidALaCartePaywallConfig *)self promotionalPaywallTitle];
            v22 = [v6 promotionalPaywallTitle];
            v23 = [v25 nf_object:v21 isEqualToObject:v22];
          }

          else
          {
            v23 = 0;
          }

          v14 = v26;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(FCPaidALaCartePaywallConfig *)self channelId];
  v4 = [v3 hash];
  v5 = [(FCPaidALaCartePaywallConfig *)self channelPaywallTitle];
  v6 = [v5 hash] ^ v4;
  v7 = [(FCPaidALaCartePaywallConfig *)self hardPaywallTitle];
  v8 = [v7 hash];
  v9 = [(FCPaidALaCartePaywallConfig *)self leakyPaywallTitle];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(FCPaidALaCartePaywallConfig *)self promotionalPaywallTitle];
  v12 = [v11 hash];

  return v10 ^ v12;
}

@end