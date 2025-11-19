@interface PKAddressFormatConfiguration
- (PKAddressFormatConfiguration)initWithCoder:(id)a3;
- (PKAddressFormatConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAddressFormatConfiguration

- (PKAddressFormatConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKAddressFormatConfiguration;
  v5 = [(PKAddressFormatConfiguration *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKDictionaryForKey:@"street"];
    v7 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v6];
    streetFieldConfiguration = v5->_streetFieldConfiguration;
    v5->_streetFieldConfiguration = v7;

    v9 = [v4 PKDictionaryForKey:@"subLocality"];
    v10 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v9];
    subLocalityFieldConfiguration = v5->_subLocalityFieldConfiguration;
    v5->_subLocalityFieldConfiguration = v10;

    v12 = [v4 PKDictionaryForKey:@"city"];
    v13 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v12];
    cityFieldConfiguration = v5->_cityFieldConfiguration;
    v5->_cityFieldConfiguration = v13;

    v15 = [v4 PKDictionaryForKey:@"subAdministrativeArea"];
    v16 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v15];
    subAdministrativeAreaFieldConfiguration = v5->_subAdministrativeAreaFieldConfiguration;
    v5->_subAdministrativeAreaFieldConfiguration = v16;

    v18 = [v4 PKDictionaryForKey:@"state"];
    v19 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v18];
    stateFieldConfiguration = v5->_stateFieldConfiguration;
    v5->_stateFieldConfiguration = v19;

    v21 = [v4 PKDictionaryForKey:@"postalCode"];
    v22 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v21];
    postalCodeFieldConfiguration = v5->_postalCodeFieldConfiguration;
    v5->_postalCodeFieldConfiguration = v22;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: '%@'; ", @"street", self->_streetFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"subLocality", self->_subLocalityFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"city", self->_cityFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"subAdministrativeArea", self->_subAdministrativeAreaFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"state", self->_stateFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"postalCode", self->_postalCodeFieldConfiguration];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  streetFieldConfiguration = self->_streetFieldConfiguration;
  v5 = a3;
  [v5 encodeObject:streetFieldConfiguration forKey:@"street"];
  [v5 encodeObject:self->_subLocalityFieldConfiguration forKey:@"subLocality"];
  [v5 encodeObject:self->_cityFieldConfiguration forKey:@"city"];
  [v5 encodeObject:self->_subAdministrativeAreaFieldConfiguration forKey:@"subAdministrativeArea"];
  [v5 encodeObject:self->_stateFieldConfiguration forKey:@"state"];
  [v5 encodeObject:self->_postalCodeFieldConfiguration forKey:@"postalCode"];
}

- (PKAddressFormatConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKAddressFormatConfiguration;
  v5 = [(PKAddressFormatConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"street"];
    streetFieldConfiguration = v5->_streetFieldConfiguration;
    v5->_streetFieldConfiguration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subLocality"];
    subLocalityFieldConfiguration = v5->_subLocalityFieldConfiguration;
    v5->_subLocalityFieldConfiguration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    cityFieldConfiguration = v5->_cityFieldConfiguration;
    v5->_cityFieldConfiguration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subAdministrativeArea"];
    subAdministrativeAreaFieldConfiguration = v5->_subAdministrativeAreaFieldConfiguration;
    v5->_subAdministrativeAreaFieldConfiguration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    stateFieldConfiguration = v5->_stateFieldConfiguration;
    v5->_stateFieldConfiguration = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCodeFieldConfiguration = v5->_postalCodeFieldConfiguration;
    v5->_postalCodeFieldConfiguration = v16;
  }

  return v5;
}

@end