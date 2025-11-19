@interface PKNameComponentFormatConfiguration
- (PKNameComponentFormatConfiguration)initWithCoder:(id)a3;
- (PKNameComponentFormatConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKNameComponentFormatConfiguration

- (PKNameComponentFormatConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKNameComponentFormatConfiguration;
  v5 = [(PKNameComponentFormatConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 PKDictionaryForKey:@"givenName"];
    v7 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v6];
    givenNameFieldConfiguration = v5->_givenNameFieldConfiguration;
    v5->_givenNameFieldConfiguration = v7;

    v9 = [v4 PKDictionaryForKey:@"familyName"];
    v10 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v9];
    familyNameFieldConfiguration = v5->_familyNameFieldConfiguration;
    v5->_familyNameFieldConfiguration = v10;

    v12 = [v4 PKDictionaryForKey:@"phoneticGivenName"];
    v13 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v12];
    phoneticGivenNameFieldConfiguration = v5->_phoneticGivenNameFieldConfiguration;
    v5->_phoneticGivenNameFieldConfiguration = v13;

    v15 = [v4 PKDictionaryForKey:@"phoneticFamilyName"];
    v16 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v15];
    phoneticFamilyNameFieldConfiguration = v5->_phoneticFamilyNameFieldConfiguration;
    v5->_phoneticFamilyNameFieldConfiguration = v16;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: '%@'; ", @"givenName", self->_givenNameFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"familyName", self->_familyNameFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"phoneticGivenName", self->_phoneticGivenNameFieldConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"phoneticFamilyName", self->_phoneticFamilyNameFieldConfiguration];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  givenNameFieldConfiguration = self->_givenNameFieldConfiguration;
  v5 = a3;
  [v5 encodeObject:givenNameFieldConfiguration forKey:@"givenName"];
  [v5 encodeObject:self->_familyNameFieldConfiguration forKey:@"familyName"];
  [v5 encodeObject:self->_phoneticFamilyNameFieldConfiguration forKey:@"phoneticGivenName"];
  [v5 encodeObject:self->_phoneticFamilyNameFieldConfiguration forKey:@"phoneticFamilyName"];
}

- (PKNameComponentFormatConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKNameComponentFormatConfiguration;
  v5 = [(PKNameComponentFormatConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenNameFieldConfiguration = v5->_givenNameFieldConfiguration;
    v5->_givenNameFieldConfiguration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
    familyNameFieldConfiguration = v5->_familyNameFieldConfiguration;
    v5->_familyNameFieldConfiguration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneticGivenName"];
    phoneticGivenNameFieldConfiguration = v5->_phoneticGivenNameFieldConfiguration;
    v5->_phoneticGivenNameFieldConfiguration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneticFamilyName"];
    phoneticFamilyNameFieldConfiguration = v5->_phoneticFamilyNameFieldConfiguration;
    v5->_phoneticFamilyNameFieldConfiguration = v12;
  }

  return v5;
}

@end