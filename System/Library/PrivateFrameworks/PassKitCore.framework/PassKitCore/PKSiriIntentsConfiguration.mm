@interface PKSiriIntentsConfiguration
- (PKSiriIntentsConfiguration)initWithCoder:(id)coder;
- (PKSiriIntentsConfiguration)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKSiriIntentsConfiguration

- (PKSiriIntentsConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKSiriIntentsConfiguration;
  v5 = [(PKSiriIntentsConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"vehicleFunctions"];
    supportedCarKeyIntents = v5->_supportedCarKeyIntents;
    v5->_supportedCarKeyIntents = v6;
  }

  return v5;
}

- (PKSiriIntentsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKSiriIntentsConfiguration;
  v5 = [(PKSiriIntentsConfiguration *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"vehicleFunctions"];
    supportedCarKeyIntents = v5->_supportedCarKeyIntents;
    v5->_supportedCarKeyIntents = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKSiriIntentsConfiguration allocWithZone:zone];
  objc_storeStrong(&v4->_supportedCarKeyIntents, self->_supportedCarKeyIntents);
  return v4;
}

@end