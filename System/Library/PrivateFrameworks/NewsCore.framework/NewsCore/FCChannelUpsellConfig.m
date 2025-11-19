@interface FCChannelUpsellConfig
- (FCChannelUpsellConfig)initWithChannelID:(id)a3 configDictionary:(id)a4;
@end

@implementation FCChannelUpsellConfig

- (FCChannelUpsellConfig)initWithChannelID:(id)a3 configDictionary:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = FCChannelUpsellConfig;
  v9 = [(FCChannelUpsellConfig *)&v39 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_channelID, a3);
    v34 = v8;
    v11 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"triggers", 0);
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[FCChannelUpsellTrigger alloc] initWithConfigDictionary:*(*(&v35 + 1) + 8 * i)];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCChannelUpsellTrigger triggerMethod](v18, "triggerMethod")}];
          [v12 setObject:v18 forKeyedSubscript:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    v20 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v12];
    triggersByMethod = v10->_triggersByMethod;
    v10->_triggersByMethod = v20;

    v8 = v34;
    v10->_presentationCap = FCAppConfigurationIntegerValue(v34, @"presentationCap", 1);
    v10->_presentationCountResetInterval = FCAppConfigurationIntegerValue(v34, @"presentationCountResetInterval", 0);
    v10->_quiescenceInterval = FCAppConfigurationIntegerValue(v34, @"quiescenceInterval", 0);
    v10->_engagedUserQuiescenceInterval = FCAppConfigurationIntegerValue(v34, @"engagedUserQuiescenceInterval", 0);
    v22 = [FCEmailSignupConfig alloc];
    v23 = FCAppConfigurationDictionaryValueWithDefaultValue(v34, @"emailSignupConfiguration", 0);
    v24 = [(FCEmailSignupConfig *)v22 initWithConfigDictionary:v23];
    emailSignupConfiguration = v10->_emailSignupConfiguration;
    v10->_emailSignupConfiguration = v24;

    v10->_ignoreWebOptInStatus = FCAppConfigurationBoolValue(v34, @"ignoreWebOptInStatus", 0);
    v26 = FCAppConfigurationDictionaryValueWithDefaultValue(v34, @"hideMyEmailSignupConfiguration", 0);
    if (v26)
    {
      v27 = [[FCHideMyEmailSignupConfig alloc] initWithConfigDictionary:v26];
      hideMyEmailSignupConfiguration = v10->_hideMyEmailSignupConfiguration;
      v10->_hideMyEmailSignupConfiguration = v27;
    }

    v29 = FCAppConfigurationDictionaryValueWithDefaultValue(v34, @"siwaPurchaseConfiguration", 0);
    if (v29)
    {
      v30 = [[FCSIWAPurchaseConfig alloc] initWithConfigDictionary:v29];
      siwaPurchaseConfiguration = v10->_siwaPurchaseConfiguration;
      v10->_siwaPurchaseConfiguration = v30;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

@end