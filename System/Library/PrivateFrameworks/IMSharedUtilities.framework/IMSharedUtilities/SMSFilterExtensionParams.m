@interface SMSFilterExtensionParams
+ (void)_updateFilterParams;
- (SMSFilterExtensionParams)init;
- (SMSFilterExtensionParams)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSFilterExtensionParams

- (SMSFilterExtensionParams)init
{
  v3.receiver = self;
  v3.super_class = SMSFilterExtensionParams;
  return [(SMSFilterExtensionParams *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[SMSFilterExtensionParams action](self, "action")}];
  [v5 encodeObject:v6 forKey:@"action"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams subAction](self, "subAction")}];
  [v5 encodeObject:v7 forKey:@"subAction"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams filterMode](self, "filterMode")}];
  [v5 encodeObject:v8 forKey:@"filterMode"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams orderOfPlacementInUI](self, "orderOfPlacementInUI")}];
  [v5 encodeObject:v9 forKey:@"orderOfPlacementInUI"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams category](self, "category")}];
  [v5 encodeObject:v10 forKey:@"category"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams subCategory](self, "subCategory")}];
  [v5 encodeObject:v11 forKey:@"subCategory"];

  v12 = [(SMSFilterExtensionParams *)self filterModeStringValue];
  [v5 encodeObject:v12 forKey:@"filterModeStringValue"];

  v13 = [(SMSFilterExtensionParams *)self label];
  [v5 encodeObject:v13 forKey:@"label"];

  v14 = [(SMSFilterExtensionParams *)self iconName];
  [v5 encodeObject:v14 forKey:@"iconName"];

  v15 = [(SMSFilterExtensionParams *)self folderName];
  [v5 encodeObject:v15 forKey:@"folderName"];
}

- (SMSFilterExtensionParams)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SMSFilterExtensionParams;
  v5 = [(SMSFilterExtensionParams *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    -[SMSFilterExtensionParams setAction:](v5, "setAction:", [v6 unsignedIntegerValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subAction"];
    -[SMSFilterExtensionParams setSubAction:](v5, "setSubAction:", [v7 unsignedIntegerValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterMode"];
    -[SMSFilterExtensionParams setFilterMode:](v5, "setFilterMode:", [v8 unsignedIntegerValue]);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orderOfPlacementInUI"];
    -[SMSFilterExtensionParams setOrderOfPlacementInUI:](v5, "setOrderOfPlacementInUI:", [v9 unsignedIntegerValue]);

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    -[SMSFilterExtensionParams setCategory:](v5, "setCategory:", [v10 unsignedIntegerValue]);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subCategory"];
    -[SMSFilterExtensionParams setSubCategory:](v5, "setSubCategory:", [v11 unsignedIntegerValue]);

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterModeStringValue"];
    [(SMSFilterExtensionParams *)v5 setFilterModeStringValue:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(SMSFilterExtensionParams *)v5 setLabel:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconName"];
    [(SMSFilterExtensionParams *)v5 setIconName:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"folderName"];
    [(SMSFilterExtensionParams *)v5 setFolderName:v15];
  }

  return v5;
}

+ (void)_updateFilterParams
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_SMSFilterExtensionParamsChangeDistributedNotification", 0, 0, 1u);
}

@end