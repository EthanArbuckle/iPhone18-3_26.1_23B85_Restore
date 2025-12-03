@interface SMSFilterExtensionParams
+ (void)_updateFilterParams;
- (SMSFilterExtensionParams)init;
- (SMSFilterExtensionParams)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSFilterExtensionParams

- (SMSFilterExtensionParams)init
{
  v3.receiver = self;
  v3.super_class = SMSFilterExtensionParams;
  return [(SMSFilterExtensionParams *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[SMSFilterExtensionParams action](self, "action")}];
  [coderCopy encodeObject:v6 forKey:@"action"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams subAction](self, "subAction")}];
  [coderCopy encodeObject:v7 forKey:@"subAction"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams filterMode](self, "filterMode")}];
  [coderCopy encodeObject:v8 forKey:@"filterMode"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams orderOfPlacementInUI](self, "orderOfPlacementInUI")}];
  [coderCopy encodeObject:v9 forKey:@"orderOfPlacementInUI"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams category](self, "category")}];
  [coderCopy encodeObject:v10 forKey:@"category"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterExtensionParams subCategory](self, "subCategory")}];
  [coderCopy encodeObject:v11 forKey:@"subCategory"];

  filterModeStringValue = [(SMSFilterExtensionParams *)self filterModeStringValue];
  [coderCopy encodeObject:filterModeStringValue forKey:@"filterModeStringValue"];

  label = [(SMSFilterExtensionParams *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  iconName = [(SMSFilterExtensionParams *)self iconName];
  [coderCopy encodeObject:iconName forKey:@"iconName"];

  folderName = [(SMSFilterExtensionParams *)self folderName];
  [coderCopy encodeObject:folderName forKey:@"folderName"];
}

- (SMSFilterExtensionParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SMSFilterExtensionParams;
  v5 = [(SMSFilterExtensionParams *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    -[SMSFilterExtensionParams setAction:](v5, "setAction:", [v6 unsignedIntegerValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subAction"];
    -[SMSFilterExtensionParams setSubAction:](v5, "setSubAction:", [v7 unsignedIntegerValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterMode"];
    -[SMSFilterExtensionParams setFilterMode:](v5, "setFilterMode:", [v8 unsignedIntegerValue]);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderOfPlacementInUI"];
    -[SMSFilterExtensionParams setOrderOfPlacementInUI:](v5, "setOrderOfPlacementInUI:", [v9 unsignedIntegerValue]);

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    -[SMSFilterExtensionParams setCategory:](v5, "setCategory:", [v10 unsignedIntegerValue]);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subCategory"];
    -[SMSFilterExtensionParams setSubCategory:](v5, "setSubCategory:", [v11 unsignedIntegerValue]);

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterModeStringValue"];
    [(SMSFilterExtensionParams *)v5 setFilterModeStringValue:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(SMSFilterExtensionParams *)v5 setLabel:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconName"];
    [(SMSFilterExtensionParams *)v5 setIconName:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"folderName"];
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