@interface SMSFilterSyncDeviceParams
- (SMSFilterSyncDeviceParams)init;
- (SMSFilterSyncDeviceParams)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSFilterSyncDeviceParams

- (SMSFilterSyncDeviceParams)init
{
  v3.receiver = self;
  v3.super_class = SMSFilterSyncDeviceParams;
  return [(SMSFilterSyncDeviceParams *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMSFilterSyncDeviceParams *)self deviceUniqueID];
  [v4 encodeObject:v5 forKey:@"deviceUniqueID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SMSFilterSyncDeviceParams smsFilterCapabilitiesOptions](self, "smsFilterCapabilitiesOptions")}];
  [v4 encodeObject:v6 forKey:@"smsFilterCapabilitiesOptions"];

  v7 = [(SMSFilterSyncDeviceParams *)self filterExtensionName];
  [v4 encodeObject:v7 forKey:@"filterExtensionName"];
}

- (SMSFilterSyncDeviceParams)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SMSFilterSyncDeviceParams;
  v5 = [(SMSFilterSyncDeviceParams *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUniqueID"];
    [(SMSFilterSyncDeviceParams *)v5 setDeviceUniqueID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smsFilterCapabilitiesOptions"];
    -[SMSFilterSyncDeviceParams setSmsFilterCapabilitiesOptions:](v5, "setSmsFilterCapabilitiesOptions:", [v7 unsignedIntegerValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterExtensionName"];
    [(SMSFilterSyncDeviceParams *)v5 setFilterExtensionName:v8];
  }

  return v5;
}

@end