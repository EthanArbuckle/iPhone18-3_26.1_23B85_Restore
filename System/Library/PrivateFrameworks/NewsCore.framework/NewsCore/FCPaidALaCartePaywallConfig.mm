@interface FCPaidALaCartePaywallConfig
- (BOOL)isEqual:(id)equal;
- (FCPaidALaCartePaywallConfig)init;
- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)d channelPaywallTitle:(id)title hardPaywallTitle:(id)paywallTitle leakyPaywallTitle:(id)leakyPaywallTitle promotionalPaywallTitle:(id)promotionalPaywallTitle;
- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)d configDictionary:(id)dictionary;
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

- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)d configDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v8 = FCAppConfigurationStringValue(dictionaryCopy, @"channelPaywall", 0);
  v9 = FCAppConfigurationStringValue(dictionaryCopy, @"hardPaywall", 0);
  v10 = FCAppConfigurationStringValue(dictionaryCopy, @"leakyPaywall", 0);
  v11 = FCAppConfigurationStringValue(dictionaryCopy, @"promotionalPaywall", 0);

  v12 = [(FCPaidALaCartePaywallConfig *)self initWithChannelID:dCopy channelPaywallTitle:v8 hardPaywallTitle:v9 leakyPaywallTitle:v10 promotionalPaywallTitle:v11];
  return v12;
}

- (FCPaidALaCartePaywallConfig)initWithChannelID:(id)d channelPaywallTitle:(id)title hardPaywallTitle:(id)paywallTitle leakyPaywallTitle:(id)leakyPaywallTitle promotionalPaywallTitle:(id)promotionalPaywallTitle
{
  dCopy = d;
  titleCopy = title;
  paywallTitleCopy = paywallTitle;
  leakyPaywallTitleCopy = leakyPaywallTitle;
  promotionalPaywallTitleCopy = promotionalPaywallTitle;
  v29.receiver = self;
  v29.super_class = FCPaidALaCartePaywallConfig;
  v17 = [(FCPaidALaCartePaywallConfig *)&v29 init];
  if (v17)
  {
    v18 = [dCopy copy];
    channelID = v17->_channelID;
    v17->_channelID = v18;

    v20 = [titleCopy copy];
    channelPaywallTitle = v17->_channelPaywallTitle;
    v17->_channelPaywallTitle = v20;

    v22 = [paywallTitleCopy copy];
    hardPaywallTitle = v17->_hardPaywallTitle;
    v17->_hardPaywallTitle = v22;

    v24 = [leakyPaywallTitleCopy copy];
    leakyPaywallTitle = v17->_leakyPaywallTitle;
    v17->_leakyPaywallTitle = v24;

    v26 = [promotionalPaywallTitleCopy copy];
    promotionalPaywallTitle = v17->_promotionalPaywallTitle;
    v17->_promotionalPaywallTitle = v26;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    channelId = [(FCPaidALaCartePaywallConfig *)self channelId];
    channelID = [v6 channelID];
    if ([v7 nf_object:channelId isEqualToObject:channelID])
    {
      v10 = MEMORY[0x1E69E58C0];
      channelPaywallTitle = [(FCPaidALaCartePaywallConfig *)self channelPaywallTitle];
      channelPaywallTitle2 = [v6 channelPaywallTitle];
      if ([v10 nf_object:channelPaywallTitle isEqualToObject:channelPaywallTitle2])
      {
        v13 = MEMORY[0x1E69E58C0];
        hardPaywallTitle = [(FCPaidALaCartePaywallConfig *)self hardPaywallTitle];
        hardPaywallTitle2 = [v6 hardPaywallTitle];
        if ([v13 nf_object:hardPaywallTitle isEqualToObject:hardPaywallTitle2])
        {
          v26 = hardPaywallTitle;
          v16 = MEMORY[0x1E69E58C0];
          leakyPaywallTitle = [(FCPaidALaCartePaywallConfig *)self leakyPaywallTitle];
          leakyPaywallTitle2 = [v6 leakyPaywallTitle];
          v27 = leakyPaywallTitle;
          v19 = leakyPaywallTitle;
          v20 = leakyPaywallTitle2;
          if ([v16 nf_object:v19 isEqualToObject:leakyPaywallTitle2])
          {
            v25 = MEMORY[0x1E69E58C0];
            promotionalPaywallTitle = [(FCPaidALaCartePaywallConfig *)self promotionalPaywallTitle];
            promotionalPaywallTitle2 = [v6 promotionalPaywallTitle];
            v23 = [v25 nf_object:promotionalPaywallTitle isEqualToObject:promotionalPaywallTitle2];
          }

          else
          {
            v23 = 0;
          }

          hardPaywallTitle = v26;
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
  channelId = [(FCPaidALaCartePaywallConfig *)self channelId];
  v4 = [channelId hash];
  channelPaywallTitle = [(FCPaidALaCartePaywallConfig *)self channelPaywallTitle];
  v6 = [channelPaywallTitle hash] ^ v4;
  hardPaywallTitle = [(FCPaidALaCartePaywallConfig *)self hardPaywallTitle];
  v8 = [hardPaywallTitle hash];
  leakyPaywallTitle = [(FCPaidALaCartePaywallConfig *)self leakyPaywallTitle];
  v10 = v6 ^ v8 ^ [leakyPaywallTitle hash];
  promotionalPaywallTitle = [(FCPaidALaCartePaywallConfig *)self promotionalPaywallTitle];
  v12 = [promotionalPaywallTitle hash];

  return v10 ^ v12;
}

@end