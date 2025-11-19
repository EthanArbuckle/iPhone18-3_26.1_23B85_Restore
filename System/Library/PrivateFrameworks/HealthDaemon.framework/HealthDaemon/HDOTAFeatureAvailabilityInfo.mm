@interface HDOTAFeatureAvailabilityInfo
- (BOOL)isEqual:(id)a3;
- (HDOTAFeatureAvailabilityInfo)initWithAllowedCountrySet:(id)a3;
- (HDOTAFeatureAvailabilityInfo)initWithCoder:(id)a3;
- (HDOTAFeatureAvailabilityInfo)initWithDictionaryRepresentation:(id)a3;
@end

@implementation HDOTAFeatureAvailabilityInfo

- (HDOTAFeatureAvailabilityInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = [a3 hk_safeDictionaryForKeyPath:@"AllowedCountrySet" error:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCD260]) initWithDictionaryRepresentation:v4 provenance:4];
    if (v5)
    {
      self = [(HDOTAFeatureAvailabilityInfo *)self initWithAllowedCountrySet:v5];
      v6 = self;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HDOTAFeatureAvailabilityInfo)initWithAllowedCountrySet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDOTAFeatureAvailabilityInfo;
  v5 = [(HDOTAFeatureAvailabilityInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    allowedCountrySet = v5->_allowedCountrySet;
    v5->_allowedCountrySet = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDOTAFeatureAvailabilityInfo;
  if ([(HDOTAFeatureAvailabilityInfo *)&v9 isEqual:v4])
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
  v7 = v4[1];
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

- (HDOTAFeatureAvailabilityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllowedCountrySet"];

  if (v5)
  {
    self = [(HDOTAFeatureAvailabilityInfo *)self initWithAllowedCountrySet:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end