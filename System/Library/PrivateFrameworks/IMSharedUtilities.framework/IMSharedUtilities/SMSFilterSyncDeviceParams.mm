@interface SMSFilterSyncDeviceParams
- (SMSFilterSyncDeviceParams)init;
- (SMSFilterSyncDeviceParams)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSFilterSyncDeviceParams

- (SMSFilterSyncDeviceParams)init
{
  v3.receiver = self;
  v3.super_class = SMSFilterSyncDeviceParams;
  return [(SMSFilterSyncDeviceParams *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceUniqueID = [(SMSFilterSyncDeviceParams *)self deviceUniqueID];
  [coderCopy encodeObject:deviceUniqueID forKey:@"deviceUniqueID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterSyncDeviceParams smsFilterCapabilitiesOptions](self, "smsFilterCapabilitiesOptions")}];
  [coderCopy encodeObject:v6 forKey:@"smsFilterCapabilitiesOptions"];

  filterExtensionName = [(SMSFilterSyncDeviceParams *)self filterExtensionName];
  [coderCopy encodeObject:filterExtensionName forKey:@"filterExtensionName"];
}

- (SMSFilterSyncDeviceParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SMSFilterSyncDeviceParams;
  v5 = [(SMSFilterSyncDeviceParams *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUniqueID"];
    [(SMSFilterSyncDeviceParams *)v5 setDeviceUniqueID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smsFilterCapabilitiesOptions"];
    -[SMSFilterSyncDeviceParams setSmsFilterCapabilitiesOptions:](v5, "setSmsFilterCapabilitiesOptions:", [v7 unsignedIntegerValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterExtensionName"];
    [(SMSFilterSyncDeviceParams *)v5 setFilterExtensionName:v8];
  }

  return v5;
}

@end