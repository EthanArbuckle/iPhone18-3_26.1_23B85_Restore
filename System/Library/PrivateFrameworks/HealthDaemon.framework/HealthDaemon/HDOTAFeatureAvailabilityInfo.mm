@interface HDOTAFeatureAvailabilityInfo
- (BOOL)isEqual:(id)equal;
- (HDOTAFeatureAvailabilityInfo)initWithAllowedCountrySet:(id)set;
- (HDOTAFeatureAvailabilityInfo)initWithCoder:(id)coder;
- (HDOTAFeatureAvailabilityInfo)initWithDictionaryRepresentation:(id)representation;
@end

@implementation HDOTAFeatureAvailabilityInfo

- (HDOTAFeatureAvailabilityInfo)initWithDictionaryRepresentation:(id)representation
{
  v4 = [representation hk_safeDictionaryForKeyPath:@"AllowedCountrySet" error:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCD260]) initWithDictionaryRepresentation:v4 provenance:4];
    if (v5)
    {
      self = [(HDOTAFeatureAvailabilityInfo *)self initWithAllowedCountrySet:v5];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HDOTAFeatureAvailabilityInfo)initWithAllowedCountrySet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = HDOTAFeatureAvailabilityInfo;
  v5 = [(HDOTAFeatureAvailabilityInfo *)&v9 init];
  if (v5)
  {
    v6 = [setCopy copy];
    allowedCountrySet = v5->_allowedCountrySet;
    v5->_allowedCountrySet = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = HDOTAFeatureAvailabilityInfo;
  if ([(HDOTAFeatureAvailabilityInfo *)&v9 isEqual:equalCopy])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  allowedCountrySet = self->_allowedCountrySet;
  v7 = equalCopy[1];
  if (allowedCountrySet != v7)
  {
    if (v7)
    {
      v5 = [(HKCountrySet *)allowedCountrySet isEqual:?];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_2:
  v5 = 1;
LABEL_8:

  return v5;
}

- (HDOTAFeatureAvailabilityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllowedCountrySet"];

  if (v5)
  {
    self = [(HDOTAFeatureAvailabilityInfo *)self initWithAllowedCountrySet:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end