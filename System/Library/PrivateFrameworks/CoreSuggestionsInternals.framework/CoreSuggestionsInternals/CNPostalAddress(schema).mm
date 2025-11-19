@interface CNPostalAddress(schema)
+ (id)fromSchema:()schema;
- (id)schema;
@end

@implementation CNPostalAddress(schema)

- (id)schema
{
  v2 = objc_opt_new();
  [v2 setObject:@"http://schema.org/PostalAddress" forKeyedSubscript:@"@type"];
  v3 = [a1 street];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 street];
    v6 = [v5 isEqualToString:&stru_284703F00];

    if ((v6 & 1) == 0)
    {
      v7 = [a1 street];
      [v2 setObject:v7 forKeyedSubscript:@"streetAddress"];
    }
  }

  v8 = [a1 city];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 city];
    v11 = [v10 isEqualToString:&stru_284703F00];

    if ((v11 & 1) == 0)
    {
      v12 = [a1 city];
      [v2 setObject:v12 forKeyedSubscript:@"addressLocality"];
    }
  }

  v13 = [a1 state];
  if (v13)
  {
    v14 = v13;
    v15 = [a1 state];
    v16 = [v15 isEqualToString:&stru_284703F00];

    if ((v16 & 1) == 0)
    {
      v17 = [a1 state];
      [v2 setObject:v17 forKeyedSubscript:@"addressRegion"];
    }
  }

  v18 = [a1 postalCode];
  if (v18)
  {
    v19 = v18;
    v20 = [a1 postalCode];
    v21 = [v20 isEqualToString:&stru_284703F00];

    if ((v21 & 1) == 0)
    {
      v22 = [a1 postalCode];
      [v2 setObject:v22 forKeyedSubscript:@"postalCode"];
    }
  }

  v23 = [a1 country];
  if (v23)
  {
    v24 = v23;
    v25 = [a1 country];
    v26 = [v25 isEqualToString:&stru_284703F00];

    if ((v26 & 1) == 0)
    {
      v27 = [a1 country];
      [v2 setObject:v27 forKeyedSubscript:@"addressCountry"];
    }
  }

  if ([v2 count] < 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = v2;
  }

  return v28;
}

+ (id)fromSchema:()schema
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"streetAddress"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"streetAddress"];
    [v4 setStreet:v6];
  }

  v7 = [v3 objectForKeyedSubscript:@"addressLocality"];

  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"addressLocality"];
    [v4 setCity:v8];
  }

  v9 = [v3 objectForKeyedSubscript:@"addressRegion"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"addressRegion"];
    [v4 setState:v10];
  }

  v11 = [v3 objectForKeyedSubscript:@"postalCode"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"postalCode"];
    [v4 setPostalCode:v12];
  }

  v13 = [v3 objectForKeyedSubscript:@"addressCountry"];

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"addressCountry"];
    [v4 setCountry:v14];
  }

  return v4;
}

@end