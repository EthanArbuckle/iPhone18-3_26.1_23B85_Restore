@interface FCContentColorPair
+ (id)colorPairWithDictionary:(id)a3;
- (FCContentColorPair)initWithLightColor:(id)a3 darkColor:(id)a4;
@end

@implementation FCContentColorPair

- (FCContentColorPair)initWithLightColor:(id)a3 darkColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCContentColorPair;
  v8 = [(FCContentColorPair *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    lightColor = v8->_lightColor;
    v8->_lightColor = v9;

    v11 = [v7 copy];
    darkColor = v8->_darkColor;
    v8->_darkColor = v11;
  }

  return v8;
}

+ (id)colorPairWithDictionary:(id)a3
{
  v3 = a3;
  v4 = FCAppConfigurationStringValue(v3, @"light", 0);
  v5 = FCAppConfigurationStringValue(v3, @"dark", 0);

  v6 = [FCColor nullableColorWithHexString:v4];
  v7 = [FCColor nullableColorWithHexString:v5];
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v9 = [[FCContentColorPair alloc] initWithLightColor:v6 darkColor:v7];
  }

  return v9;
}

@end