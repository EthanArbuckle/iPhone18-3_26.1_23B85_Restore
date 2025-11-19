@interface CLPlacemark(schema)
+ (id)fromSchema:()schema;
- (id)schema;
@end

@implementation CLPlacemark(schema)

- (id)schema
{
  v2 = objc_opt_new();
  [v2 setObject:@"http://schema.org/Place" forKeyedSubscript:@"@type"];
  v3 = [a1 name];

  if (v3)
  {
    v4 = [a1 name];
    [v2 setObject:v4 forKeyedSubscript:@"name"];
  }

  v5 = [a1 postalAddress];
  v6 = [v5 schema];

  if ([v6 count] >= 2)
  {
    [v2 setObject:v6 forKeyedSubscript:@"address"];
  }

  v7 = [a1 location];
  [v7 coordinate];
  if (v8 != 0.0)
  {

    goto LABEL_9;
  }

  v9 = [a1 location];
  [v9 coordinate];
  v11 = v10;

  if (v11 != 0.0)
  {
LABEL_9:
    v12 = [a1 location];
    v13 = [v12 schema];
    [v2 setObject:v13 forKeyedSubscript:@"geo"];
  }

  if ([v2 count] < 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v2;
  }

  return v14;
}

+ (id)fromSchema:()schema
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"name"];

  if (v4)
  {
    v4 = [v3 objectForKeyedSubscript:@"name"];
  }

  v5 = [v3 objectForKeyedSubscript:@"address"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"address"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = MEMORY[0x277CBDB78];
      v9 = [v3 objectForKeyedSubscript:@"address"];
      v5 = [v8 fromSchema:v9];
LABEL_8:

      goto LABEL_10;
    }

    v10 = [v3 objectForKeyedSubscript:@"address"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v9 = objc_opt_new();
      v12 = [v3 objectForKeyedSubscript:@"address"];
      v5 = [v9 postalAddressFromString:v12];

      goto LABEL_8;
    }

    v5 = 0;
  }

LABEL_10:
  v13 = [v3 objectForKeyedSubscript:@"geo"];

  v14 = MEMORY[0x277CE41F8];
  if (v13)
  {
    v15 = [v3 objectForKeyedSubscript:@"geo"];
    v16 = [v14 fromSchema:v15];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
  }

  v17 = [MEMORY[0x277CBFC40] placemarkWithLocation:v16 name:v4 postalAddress:v5];

  return v17;
}

@end