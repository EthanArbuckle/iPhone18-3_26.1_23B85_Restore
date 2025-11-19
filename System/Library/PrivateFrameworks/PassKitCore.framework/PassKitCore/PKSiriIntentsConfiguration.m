@interface PKSiriIntentsConfiguration
- (PKSiriIntentsConfiguration)initWithCoder:(id)a3;
- (PKSiriIntentsConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKSiriIntentsConfiguration

- (PKSiriIntentsConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSiriIntentsConfiguration;
  v5 = [(PKSiriIntentsConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 PKArrayContaining:objc_opt_class() forKey:@"vehicleFunctions"];
    supportedCarKeyIntents = v5->_supportedCarKeyIntents;
    v5->_supportedCarKeyIntents = v6;
  }

  return v5;
}

- (PKSiriIntentsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKSiriIntentsConfiguration;
  v5 = [(PKSiriIntentsConfiguration *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"vehicleFunctions"];
    supportedCarKeyIntents = v5->_supportedCarKeyIntents;
    v5->_supportedCarKeyIntents = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKSiriIntentsConfiguration allocWithZone:a3];
  objc_storeStrong(&v4->_supportedCarKeyIntents, self->_supportedCarKeyIntents);
  return v4;
}

@end