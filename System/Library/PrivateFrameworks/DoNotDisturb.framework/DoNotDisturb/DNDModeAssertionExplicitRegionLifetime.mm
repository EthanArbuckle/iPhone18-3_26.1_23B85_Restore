@interface DNDModeAssertionExplicitRegionLifetime
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionExplicitRegionLifetime)initWithCoder:(id)coder;
- (DNDModeAssertionExplicitRegionLifetime)initWithRegion:(id)region;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionExplicitRegionLifetime

- (DNDModeAssertionExplicitRegionLifetime)initWithRegion:(id)region
{
  regionCopy = region;
  _init = [(DNDModeAssertionLifetime *)self _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, region);
  }

  return v7;
}

- (unint64_t)hash
{
  region = [(DNDModeAssertionExplicitRegionLifetime *)self region];
  v3 = [region hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      region = [(DNDModeAssertionExplicitRegionLifetime *)self region];
      region2 = [(DNDModeAssertionExplicitRegionLifetime *)v5 region];
      if (region == region2)
      {
        v12 = 1;
      }

      else
      {
        region3 = [(DNDModeAssertionExplicitRegionLifetime *)self region];
        if (region3)
        {
          region4 = [(DNDModeAssertionExplicitRegionLifetime *)v5 region];
          if (region4)
          {
            region5 = [(DNDModeAssertionExplicitRegionLifetime *)self region];
            region6 = [(DNDModeAssertionExplicitRegionLifetime *)v5 region];
            v12 = [region5 isEqual:region6];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  region = [(DNDModeAssertionExplicitRegionLifetime *)self region];
  v6 = [v3 stringWithFormat:@"<%@: %p region: '%@'>", v4, self, region];;

  return v6;
}

- (DNDModeAssertionExplicitRegionLifetime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];

  v6 = [(DNDModeAssertionExplicitRegionLifetime *)self initWithRegion:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  region = [(DNDModeAssertionExplicitRegionLifetime *)self region];
  [coderCopy encodeObject:region forKey:@"region"];
}

@end