@interface PKContactFormatConfiguration
- (PKContactFormatConfiguration)initWithCoder:(id)a3;
- (PKContactFormatConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKContactFormatConfiguration

- (PKContactFormatConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKContactFormatConfiguration;
  v5 = [(PKContactFormatConfiguration *)&v19 init];
  if (v5)
  {
    v5->_checkFormatOfPhoneNumber = [v4 PKBoolForKey:@"checkFormatOfPhoneNumber"];
    v5->_checkFormatOfEmailAddress = [v4 PKBoolForKey:@"checkFormatOfEmailAddress"];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [v4 PKDictionaryForKey:@"regionalAddressFormatConfigurations"];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __51__PKContactFormatConfiguration_initWithDictionary___block_invoke;
    v16 = &unk_1E79C9928;
    v17 = v6;
    v8 = v5;
    v18 = v8;
    v9 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:&v13];
    v10 = [v9 copy];
    regionalAddressFormatConfigurations = v8->_regionalAddressFormatConfigurations;
    v8->_regionalAddressFormatConfigurations = v10;
  }

  return v5;
}

void __51__PKContactFormatConfiguration_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[PKRegionalContactFormatConfiguration alloc] initWithDictionary:v6];

  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKey:v5];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = 0;
      v9 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: Failed to parse regional address config for countryCode: %@ from dictionary: %@", &v10, 0x20u);
    }
  }
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = v3;
  if (self->_checkFormatOfPhoneNumber)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"checkFormatOfPhoneNumber", v5];
  if (self->_checkFormatOfEmailAddress)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 appendFormat:@"%@: '%@'; ", @"checkFormatOfEmailAddress", v6];
  [v4 appendFormat:@"%@: '%@'; ", @"regionalAddressFormatConfigurations", self->_regionalAddressFormatConfigurations];
  [v4 appendFormat:@">"];
  v7 = [v4 copy];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  checkFormatOfPhoneNumber = self->_checkFormatOfPhoneNumber;
  v5 = a3;
  [v5 encodeBool:checkFormatOfPhoneNumber forKey:@"checkFormatOfPhoneNumber"];
  [v5 encodeBool:self->_checkFormatOfEmailAddress forKey:@"checkFormatOfEmailAddress"];
  [v5 encodeObject:self->_regionalAddressFormatConfigurations forKey:@"regionalAddressFormatConfigurations"];
}

- (PKContactFormatConfiguration)initWithCoder:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKContactFormatConfiguration;
  v5 = [(PKContactFormatConfiguration *)&v12 init];
  if (v5)
  {
    v5->_checkFormatOfPhoneNumber = [v4 decodeBoolForKey:@"checkFormatOfPhoneNumber"];
    v5->_checkFormatOfEmailAddress = [v4 decodeBoolForKey:@"checkFormatOfEmailAddress"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 initWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"regionalAddressFormatConfigurations"];
    regionalAddressFormatConfigurations = v5->_regionalAddressFormatConfigurations;
    v5->_regionalAddressFormatConfigurations = v9;
  }

  return v5;
}

@end