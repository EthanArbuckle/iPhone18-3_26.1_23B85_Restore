@interface FCNewsTabiRecommendedTagsInputOutputConfiguration
- (FCNewsTabiRecommendedTagsInputOutputConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecommendedTagsInputOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiRecommendedTagsInputOutputConfiguration *)self contextFeatureKey];
  [v3 appendFormat:@"\n\tcontextFeatureKey: %@;", v4];

  v5 = [(FCNewsTabiRecommendedTagsInputOutputConfiguration *)self recommendationsOutputName];
  [v3 appendFormat:@"\n\trecommendationsOutputName: %@;", v5];

  v6 = [(FCNewsTabiRecommendedTagsInputOutputConfiguration *)self recommendationsScoreOutputName];
  [v3 appendFormat:@"\n\trecommendationsScoreOutputName: %@;", v6];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecommendedTagsInputOutputConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"contextFeatureKey", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = FCAppConfigurationStringValue(v4, @"recommendationsOutputName", 0);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = FCAppConfigurationStringValue(v4, @"recommendationsScoreOutputName", 0);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        v18.receiver = self;
        v18.super_class = FCNewsTabiRecommendedTagsInputOutputConfiguration;
        v14 = [(FCNewsTabiRecommendedTagsInputOutputConfiguration *)&v18 init];
        p_isa = &v14->super.isa;
        if (v14)
        {
          objc_storeStrong(&v14->_contextFeatureKey, v6);
          objc_storeStrong(p_isa + 2, v9);
          objc_storeStrong(p_isa + 3, v12);
        }

        self = p_isa;

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