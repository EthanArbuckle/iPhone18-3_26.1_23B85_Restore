@interface HRSSupportedFHIRRelease
- (BOOL)isEqual:(id)a3;
- (HRSSupportedFHIRRelease)initWithCoder:(id)a3;
- (HRSSupportedFHIRRelease)initWithFHIRRelease:(id)a3 resourceTypes:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRSSupportedFHIRRelease

- (HRSSupportedFHIRRelease)initWithFHIRRelease:(id)a3 resourceTypes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HRSSupportedFHIRRelease;
  v9 = [(HRSSupportedFHIRRelease *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_FHIRRelease, a3);
    v11 = [v8 copy];
    resourceTypes = v10->_resourceTypes;
    v10->_resourceTypes = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      FHIRRelease = self->_FHIRRelease;
      v8 = [(HRSSupportedFHIRRelease *)v6 FHIRRelease];
      if (FHIRRelease == v8)
      {
        resourceTypes = self->_resourceTypes;
        v11 = [(HRSSupportedFHIRRelease *)v6 resourceTypes];
        v9 = [(NSSet *)resourceTypes isEqualToSet:v11];
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

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  FHIRRelease = self->_FHIRRelease;
  v7 = [(NSSet *)self->_resourceTypes allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@ %p %@, %@>", v5, self, FHIRRelease, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  FHIRRelease = self->_FHIRRelease;
  v5 = a3;
  [v5 encodeObject:FHIRRelease forKey:@"FHIRRelease"];
  [v5 encodeObject:self->_resourceTypes forKey:@"FHIRResourceTypes"];
}

- (HRSSupportedFHIRRelease)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRRelease"];
  if (v5)
  {
    v6 = HKFHIRReleaseFromNSString();
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"FHIRResourceTypes"];

  if (v6 && v8)
  {
    self = [(HRSSupportedFHIRRelease *)self initWithFHIRRelease:v6 resourceTypes:v8];
    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
}

@end