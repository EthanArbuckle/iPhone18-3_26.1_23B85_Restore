@interface HPSResult
- (HPSResult)initWithCoder:(id)coder;
- (HPSResult)initWithSetting:(id)setting accessoryIdentifier:(id)identifier error:(id)error result:(BOOL)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSResult

- (HPSResult)initWithSetting:(id)setting accessoryIdentifier:(id)identifier error:(id)error result:(BOOL)result
{
  settingCopy = setting;
  identifierCopy = identifier;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HPSResult;
  v14 = [(HPSResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isSuccess = result;
    objc_storeStrong(&v14->_error, error);
    objc_storeStrong(&v15->_accessoryIdentifier, identifier);
    objc_storeStrong(&v15->_setting, setting);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(HPSResult *)self accessoryIdentifier];
  if (accessoryIdentifier)
  {
    [coderCopy encodeObject:accessoryIdentifier forKey:@"AccessoryIdentifier"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSResult isSuccess](self, "isSuccess")}];
  [coderCopy encodeObject:v6 forKey:@"Success"];

  setting = [(HPSResult *)self setting];
  if (setting)
  {
    v12 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:setting requiringSecureCoding:1 error:&v12];
    v9 = v12;
    if (v9)
    {
      v10 = _HPSLoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(HPSResult *)v9 encodeWithCoder:v10];
      }
    }

    else
    {
      [coderCopy encodeObject:v8 forKey:@"Value"];
    }
  }

  error = [(HPSResult *)self error];
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"Error"];
  }
}

- (HPSResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HPSResult;
  v5 = [(HPSResult *)&v18 init];
  if (!v5)
  {
LABEL_13:
    v13 = v5;
    goto LABEL_14;
  }

  if ([coderCopy containsValueForKey:@"AccessoryIdentifier"])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccessoryIdentifier"];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Success"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_isSuccess = [v8 BOOLValue];
    }
  }

  if (![coderCopy containsValueForKey:@"Value"])
  {
    goto LABEL_17;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
  v17 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v17];
  v11 = v17;
  setting = v5->_setting;
  v5->_setting = v10;

  if (!v11)
  {
LABEL_17:
    if ([coderCopy containsValueForKey:@"Error"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
      error = v5->_error;
      v5->_error = v14;
    }

    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(HPSResult *)self isSuccess])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  accessoryIdentifier = [(HPSResult *)self accessoryIdentifier];
  setting = [(HPSResult *)self setting];
  error = [(HPSResult *)self error];
  v8 = [v3 stringWithFormat:@"\n Success = %@, \n Accessory Identifier = %@, \n Setting = [%@], \n Error = %@", v4, accessoryIdentifier, setting, error];

  return v8;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2542B7000, a2, OS_LOG_TYPE_ERROR, "Encoding result failed with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end