@interface FCNewsPersonalizationFeaturePriorsConfiguration
- (FCNewsPersonalizationFeaturePriorsConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationFeaturePriorsConfiguration

- (FCNewsPersonalizationFeaturePriorsConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FCNewsPersonalizationFeaturePriorsConfiguration;
  v5 = [(FCNewsPersonalizationFeaturePriorsConfiguration *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"baseline", 0);
  v7 = [[FCNewsPersonalizationFeaturePrior alloc] initWithDictionary:v6];
  if (!v7)
  {
LABEL_7:

    v13 = 0;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"general", 0);
  v10 = [[FCNewsPersonalizationFeaturePrior alloc] initWithDictionary:v9];
  v11 = v10;
  if (!v10)
  {

    goto LABEL_7;
  }

  v12 = v10;
  [(FCNewsPersonalizationFeaturePriorsConfiguration *)v5 setBaselineFeaturePrior:v8];
  [(FCNewsPersonalizationFeaturePriorsConfiguration *)v5 setGeneralFeaturePrior:v12];

LABEL_5:
  v13 = v5;
LABEL_8:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsPersonalizationFeaturePriorsConfiguration *)self baselineFeaturePrior];
  [v3 appendFormat:@"; baselineDictionary: %@", v4];

  v5 = [(FCNewsPersonalizationFeaturePriorsConfiguration *)self generalFeaturePrior];
  [v3 appendFormat:@"; generalFeaturePrior: %@", v5];

  [v3 appendString:@">"];

  return v3;
}

@end