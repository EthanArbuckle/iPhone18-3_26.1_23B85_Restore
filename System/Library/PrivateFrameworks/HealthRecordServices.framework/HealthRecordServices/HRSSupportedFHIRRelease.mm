@interface HRSSupportedFHIRRelease
- (BOOL)isEqual:(id)equal;
- (HRSSupportedFHIRRelease)initWithCoder:(id)coder;
- (HRSSupportedFHIRRelease)initWithFHIRRelease:(id)release resourceTypes:(id)types;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRSSupportedFHIRRelease

- (HRSSupportedFHIRRelease)initWithFHIRRelease:(id)release resourceTypes:(id)types
{
  releaseCopy = release;
  typesCopy = types;
  v14.receiver = self;
  v14.super_class = HRSSupportedFHIRRelease;
  v9 = [(HRSSupportedFHIRRelease *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_FHIRRelease, release);
    v11 = [typesCopy copy];
    resourceTypes = v10->_resourceTypes;
    v10->_resourceTypes = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      FHIRRelease = self->_FHIRRelease;
      fHIRRelease = [(HRSSupportedFHIRRelease *)v6 FHIRRelease];
      if (FHIRRelease == fHIRRelease)
      {
        resourceTypes = self->_resourceTypes;
        resourceTypes = [(HRSSupportedFHIRRelease *)v6 resourceTypes];
        v9 = [(NSSet *)resourceTypes isEqualToSet:resourceTypes];
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
  allObjects = [(NSSet *)self->_resourceTypes allObjects];
  v8 = [allObjects componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@ %p %@, %@>", v5, self, FHIRRelease, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  FHIRRelease = self->_FHIRRelease;
  coderCopy = coder;
  [coderCopy encodeObject:FHIRRelease forKey:@"FHIRRelease"];
  [coderCopy encodeObject:self->_resourceTypes forKey:@"FHIRResourceTypes"];
}

- (HRSSupportedFHIRRelease)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRRelease"];
  if (v5)
  {
    v6 = HKFHIRReleaseFromNSString();
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"FHIRResourceTypes"];

  if (v6 && v8)
  {
    self = [(HRSSupportedFHIRRelease *)self initWithFHIRRelease:v6 resourceTypes:v8];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end