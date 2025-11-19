@interface FCNewsPersonalizationFeaturePrior
- (FCNewsPersonalizationFeaturePrior)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationFeaturePrior

- (FCNewsPersonalizationFeaturePrior)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCNewsPersonalizationFeaturePrior;
  v5 = [(FCNewsPersonalizationFeaturePrior *)&v10 init];
  if (!v5)
  {
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = FCAppConfigurationNumberValue(v4, @"clicks", 0);
  if (v6)
  {
    v7 = FCAppConfigurationNumberValue(v4, @"impressions", 0);
    if (!v7)
    {

      v6 = 0;
      goto LABEL_6;
    }

    v8 = v7;
    [(FCNewsPersonalizationFeaturePrior *)v6 doubleValue];
    [(FCNewsPersonalizationFeaturePrior *)v5 setClicks:?];
    [v8 doubleValue];
    [(FCNewsPersonalizationFeaturePrior *)v5 setImpressions:?];

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(FCNewsPersonalizationFeaturePrior *)self clicks];
  [v3 appendFormat:@"; clicks: %f", v4];
  [(FCNewsPersonalizationFeaturePrior *)self impressions];
  [v3 appendFormat:@"; impressions: %f", v5];
  [v3 appendString:@">"];

  return v3;
}

@end