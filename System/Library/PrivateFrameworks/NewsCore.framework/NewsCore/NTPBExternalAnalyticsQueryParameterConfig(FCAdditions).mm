@interface NTPBExternalAnalyticsQueryParameterConfig(FCAdditions)
+ (id)externalAnalyticsQueryParameterConfigWithDictionary:()FCAdditions;
@end

@implementation NTPBExternalAnalyticsQueryParameterConfig(FCAdditions)

+ (id)externalAnalyticsQueryParameterConfigWithDictionary:()FCAdditions
{
  v3 = MEMORY[0x1E69B6E20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = FCAppConfigurationStringValue(v4, @"name", 0);
  [v5 setName:v6];

  v7 = FCAppConfigurationStringValue(v4, @"value", 0);

  [v5 setValue:v7];

  return v5;
}

@end