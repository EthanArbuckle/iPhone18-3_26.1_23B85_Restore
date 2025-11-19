@interface NSLocaleRegion
- (BOOL)isEqual:(id)a3;
- (NSLocaleRegion)initWithLocaleIdentifier:(id)a3;
- (NSLocaleRegion)initWithRegionIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation NSLocaleRegion

- (NSLocaleRegion)initWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NSLocaleRegion;
  v5 = [(NSLocaleRegion *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 countryCode];
      if ([v8 length])
      {
        if ([v8 isEqualToString:@"XKS"])
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:@"XK"];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:@"XKK"];
        }

        else
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:v8];
          v10 = [v7 threeCharacterRegionCode];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:v10];
        }

        v9 = v5;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSLocaleRegion)initWithRegionIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSLocaleRegion;
  v5 = [(NSLocaleRegion *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEAF8];
    v7 = [@"_" stringByAppendingString:v4];
    v8 = [v6 localeWithLocaleIdentifier:v7];

    if (v8)
    {
      v9 = [v8 countryCode];
      if ([v9 length])
      {
        if ([v9 isEqualToString:@"XKS"])
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:@"XK"];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:@"XKK"];
        }

        else
        {
          [(NSLocaleRegion *)v5 setTwoCharacterCode:v9];
          v11 = [v8 threeCharacterRegionCode];
          [(NSLocaleRegion *)v5 setThreeCharacterCode:v11];
        }

        v10 = v5;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(NSLocaleRegion *)self twoCharacterCode];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSLocaleRegion *)self twoCharacterCode];
      v6 = [(NSLocaleRegion *)v4 twoCharacterCode];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end