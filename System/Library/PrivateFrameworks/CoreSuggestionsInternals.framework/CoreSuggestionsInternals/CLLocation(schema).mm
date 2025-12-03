@interface CLLocation(schema)
+ (id)fromSchema:()schema;
- (id)schema;
@end

@implementation CLLocation(schema)

- (id)schema
{
  v2 = objc_opt_new();
  [self coordinate];
  if (v3 != 0.0 || ([self coordinate], v4 != 0.0))
  {
    [v2 setObject:@"http://schema.org/GeoCoordinates" forKeyedSubscript:@"@type"];
    v5 = MEMORY[0x277CCABB0];
    [self coordinate];
    v6 = [v5 numberWithDouble:?];
    [v2 setObject:v6 forKeyedSubscript:@"latitude"];

    v7 = MEMORY[0x277CCABB0];
    [self coordinate];
    v9 = [v7 numberWithDouble:v8];
    [v2 setObject:v9 forKeyedSubscript:@"longitude"];
  }

  if ([v2 count] < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v2;
  }

  return v10;
}

+ (id)fromSchema:()schema
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"longitude"];
  if (v4 && (v5 = v4, [v3 objectForKeyedSubscript:@"latitude"], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 objectForKeyedSubscript:@"latitude"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v3 objectForKeyedSubscript:@"longitude"];
    [v10 floatValue];
    v12 = v11;

    v13 = objc_alloc(MEMORY[0x277CE41F8]);
    v14 = v9;
    v15 = v12;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CE41F8]);
    v14 = 0.0;
    v15 = 0.0;
  }

  v16 = [v13 initWithLatitude:v14 longitude:v15];

  return v16;
}

@end