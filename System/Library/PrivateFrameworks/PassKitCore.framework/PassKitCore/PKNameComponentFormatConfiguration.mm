@interface PKNameComponentFormatConfiguration
- (PKNameComponentFormatConfiguration)initWithCoder:(id)coder;
- (PKNameComponentFormatConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKNameComponentFormatConfiguration

- (PKNameComponentFormatConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PKNameComponentFormatConfiguration;
  v5 = [(PKNameComponentFormatConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDictionaryForKey:@"givenName"];
    v7 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v6];
    givenNameFieldConfiguration = v5->_givenNameFieldConfiguration;
    v5->_givenNameFieldConfiguration = v7;

    v9 = [dictionaryCopy PKDictionaryForKey:@"familyName"];
    v10 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v9];
    familyNameFieldConfiguration = v5->_familyNameFieldConfiguration;
    v5->_familyNameFieldConfiguration = v10;

    v12 = [dictionaryCopy PKDictionaryForKey:@"phoneticGivenName"];
    v13 = [PKContactFieldConfiguration contactFieldConfigurationWithDictionary:v12];
    phoneticGivenNameFieldConfiguration = v5->_phoneticGivenNameFieldConfiguration;
    v5->_phoneticGivenNameFieldConfiguration = v13;

    v15 = [dictionaryCopy PKDictionaryForKey:@"phoneticFamilyName"];
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

- (void)encodeWithCoder:(id)coder
{
  givenNameFieldConfiguration = self->_givenNameFieldConfiguration;
  coderCopy = coder;
  [coderCopy encodeObject:givenNameFieldConfiguration forKey:@"givenName"];
  [coderCopy encodeObject:self->_familyNameFieldConfiguration forKey:@"familyName"];
  [coderCopy encodeObject:self->_phoneticFamilyNameFieldConfiguration forKey:@"phoneticGivenName"];
  [coderCopy encodeObject:self->_phoneticFamilyNameFieldConfiguration forKey:@"phoneticFamilyName"];
}

- (PKNameComponentFormatConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKNameComponentFormatConfiguration;
  v5 = [(PKNameComponentFormatConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenNameFieldConfiguration = v5->_givenNameFieldConfiguration;
    v5->_givenNameFieldConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
    familyNameFieldConfiguration = v5->_familyNameFieldConfiguration;
    v5->_familyNameFieldConfiguration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticGivenName"];
    phoneticGivenNameFieldConfiguration = v5->_phoneticGivenNameFieldConfiguration;
    v5->_phoneticGivenNameFieldConfiguration = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticFamilyName"];
    phoneticFamilyNameFieldConfiguration = v5->_phoneticFamilyNameFieldConfiguration;
    v5->_phoneticFamilyNameFieldConfiguration = v12;
  }

  return v5;
}

@end