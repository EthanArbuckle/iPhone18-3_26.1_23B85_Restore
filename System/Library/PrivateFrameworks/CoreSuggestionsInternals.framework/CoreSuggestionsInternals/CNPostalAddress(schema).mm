@interface CNPostalAddress(schema)
+ (id)fromSchema:()schema;
- (id)schema;
@end

@implementation CNPostalAddress(schema)

- (id)schema
{
  v2 = objc_opt_new();
  [v2 setObject:@"http://schema.org/PostalAddress" forKeyedSubscript:@"@type"];
  street = [self street];
  if (street)
  {
    v4 = street;
    street2 = [self street];
    v6 = [street2 isEqualToString:&stru_284703F00];

    if ((v6 & 1) == 0)
    {
      street3 = [self street];
      [v2 setObject:street3 forKeyedSubscript:@"streetAddress"];
    }
  }

  city = [self city];
  if (city)
  {
    v9 = city;
    city2 = [self city];
    v11 = [city2 isEqualToString:&stru_284703F00];

    if ((v11 & 1) == 0)
    {
      city3 = [self city];
      [v2 setObject:city3 forKeyedSubscript:@"addressLocality"];
    }
  }

  state = [self state];
  if (state)
  {
    v14 = state;
    state2 = [self state];
    v16 = [state2 isEqualToString:&stru_284703F00];

    if ((v16 & 1) == 0)
    {
      state3 = [self state];
      [v2 setObject:state3 forKeyedSubscript:@"addressRegion"];
    }
  }

  postalCode = [self postalCode];
  if (postalCode)
  {
    v19 = postalCode;
    postalCode2 = [self postalCode];
    v21 = [postalCode2 isEqualToString:&stru_284703F00];

    if ((v21 & 1) == 0)
    {
      postalCode3 = [self postalCode];
      [v2 setObject:postalCode3 forKeyedSubscript:@"postalCode"];
    }
  }

  country = [self country];
  if (country)
  {
    v24 = country;
    country2 = [self country];
    v26 = [country2 isEqualToString:&stru_284703F00];

    if ((v26 & 1) == 0)
    {
      country3 = [self country];
      [v2 setObject:country3 forKeyedSubscript:@"addressCountry"];
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