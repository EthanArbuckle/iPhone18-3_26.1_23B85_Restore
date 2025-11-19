@interface FCNewsTabiPersonalizedPaywallsConfiguration
- (FCNewsTabiPersonalizedPaywallsConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiPersonalizedPaywallsConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiPersonalizedPaywallsConfiguration *)self contextFeatureKey];
  [v3 appendFormat:@"\n\tcontextFeatureKey: %@;", v4];

  v5 = [(FCNewsTabiPersonalizedPaywallsConfiguration *)self channelIDsOutputName];
  [v3 appendFormat:@"\n\tchannelIDsOutputName: %@;", v5];

  [v3 appendFormat:@"\n\tomitHardFollows: %d", -[FCNewsTabiPersonalizedPaywallsConfiguration omitHardFollows](self, "omitHardFollows")];
  v6 = [(FCNewsTabiPersonalizedPaywallsConfiguration *)self scoresOutputName];
  [v3 appendFormat:@"\n\tscoresOutputName: %@;", v6];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiPersonalizedPaywallsConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"contextFeatureKey", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationStringValue(v4, @"channelIDsOutputName", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = FCAppConfigurationStringValue(v4, @"scoresOutputName", 0);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v18.receiver = self;
        v18.super_class = FCNewsTabiPersonalizedPaywallsConfiguration;
        v14 = [(FCNewsTabiPersonalizedPaywallsConfiguration *)&v18 init];
        v15 = v14;
        if (v14)
        {
          objc_storeStrong(&v14->_contextFeatureKey, v6);
          objc_storeStrong(&v15->_channelIDsOutputName, v9);
          v15->_omitHardFollows = FCAppConfigurationBoolValue(v4, @"omitHardFollows", 0);
          objc_storeStrong(&v15->_scoresOutputName, v12);
        }

        self = v15;

        v16 = self;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end