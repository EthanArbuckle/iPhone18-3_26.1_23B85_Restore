@interface HPSResult
- (HPSResult)initWithCoder:(id)a3;
- (HPSResult)initWithSetting:(id)a3 accessoryIdentifier:(id)a4 error:(id)a5 result:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSResult

- (HPSResult)initWithSetting:(id)a3 accessoryIdentifier:(id)a4 error:(id)a5 result:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HPSResult;
  v14 = [(HPSResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isSuccess = a6;
    objc_storeStrong(&v14->_error, a5);
    objc_storeStrong(&v15->_accessoryIdentifier, a4);
    objc_storeStrong(&v15->_setting, a3);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPSResult *)self accessoryIdentifier];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"AccessoryIdentifier"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSResult isSuccess](self, "isSuccess")}];
  [v4 encodeObject:v6 forKey:@"Success"];

  v7 = [(HPSResult *)self setting];
  if (v7)
  {
    v12 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v12];
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
      [v4 encodeObject:v8 forKey:@"Value"];
    }
  }

  v11 = [(HPSResult *)self error];
  if (v11)
  {
    [v4 encodeObject:v11 forKey:@"Error"];
  }
}

- (HPSResult)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HPSResult;
  v5 = [(HPSResult *)&v18 init];
  if (!v5)
  {
LABEL_13:
    v13 = v5;
    goto LABEL_14;
  }

  if ([v4 containsValueForKey:@"AccessoryIdentifier"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccessoryIdentifier"];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Success"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_isSuccess = [v8 BOOLValue];
    }
  }

  if (![v4 containsValueForKey:@"Value"])
  {
    goto LABEL_17;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
  v17 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v17];
  v11 = v17;
  setting = v5->_setting;
  v5->_setting = v10;

  if (!v11)
  {
LABEL_17:
    if ([v4 containsValueForKey:@"Error"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
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

  v5 = [(HPSResult *)self accessoryIdentifier];
  v6 = [(HPSResult *)self setting];
  v7 = [(HPSResult *)self error];
  v8 = [v3 stringWithFormat:@"\n Success = %@, \n Accessory Identifier = %@, \n Setting = [%@], \n Error = %@", v4, v5, v6, v7];

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