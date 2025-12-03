@interface PKRegionalContactFormatConfiguration
- (PKRegionalContactFormatConfiguration)initWithCoder:(id)coder;
- (PKRegionalContactFormatConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRegionalContactFormatConfiguration

- (PKRegionalContactFormatConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKRegionalContactFormatConfiguration;
  v5 = [(PKRegionalContactFormatConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [PKNameComponentFormatConfiguration alloc];
    v7 = [dictionaryCopy PKDictionaryForKey:@"nameComponentsFormat"];
    v8 = [(PKNameComponentFormatConfiguration *)v6 initWithDictionary:v7];
    nameComponentFormatConfiguration = v5->_nameComponentFormatConfiguration;
    v5->_nameComponentFormatConfiguration = v8;

    v10 = [PKAddressFormatConfiguration alloc];
    v11 = [dictionaryCopy PKDictionaryForKey:@"addressFormat"];
    v12 = [(PKAddressFormatConfiguration *)v10 initWithDictionary:v11];
    addressFormatConfiguration = v5->_addressFormatConfiguration;
    v5->_addressFormatConfiguration = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"%@: '%@'; ", @"nameComponentsFormat", self->_nameComponentFormatConfiguration];
  [v3 appendFormat:@"%@: '%@'; ", @"addressFormat", self->_addressFormatConfiguration];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  nameComponentFormatConfiguration = self->_nameComponentFormatConfiguration;
  coderCopy = coder;
  [coderCopy encodeObject:nameComponentFormatConfiguration forKey:@"nameComponentsFormat"];
  [coderCopy encodeObject:self->_addressFormatConfiguration forKey:@"addressFormat"];
}

- (PKRegionalContactFormatConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKRegionalContactFormatConfiguration;
  v5 = [(PKRegionalContactFormatConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameComponentsFormat"];
    nameComponentFormatConfiguration = v5->_nameComponentFormatConfiguration;
    v5->_nameComponentFormatConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addressFormat"];
    addressFormatConfiguration = v5->_addressFormatConfiguration;
    v5->_addressFormatConfiguration = v8;
  }

  return v5;
}

@end