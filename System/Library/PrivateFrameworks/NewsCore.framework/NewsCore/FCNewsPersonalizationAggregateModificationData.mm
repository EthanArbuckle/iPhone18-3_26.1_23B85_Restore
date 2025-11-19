@interface FCNewsPersonalizationAggregateModificationData
- (FCNewsPersonalizationAggregateModificationData)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationAggregateModificationData

- (FCNewsPersonalizationAggregateModificationData)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCNewsPersonalizationAggregateModificationData;
  v5 = [(FCNewsPersonalizationAggregateModificationData *)&v12 init];
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
    [(FCNewsPersonalizationAggregateModificationData *)v6 doubleValue];
    v5->_clicks = v9;
    [v8 doubleValue];
    v5->_impressions = v10;

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(FCNewsPersonalizationAggregateModificationData *)self clicks];
  [v3 appendFormat:@"; clicks: %f", v4];
  [(FCNewsPersonalizationAggregateModificationData *)self impressions];
  [v3 appendFormat:@"; impressions: %f", v5];
  [v3 appendString:@">"];

  return v3;
}

@end