@interface IDSVMRegistrationResponse
- (IDSVMRegistrationResponse)init;
- (IDSVMRegistrationResponse)initWithCoder:(id)a3;
- (IDSVMRegistrationResponse)initWithDataRepresentation:(id)a3;
- (IDSVMRegistrationResponse)initWithVersion:(unint64_t)a3 language:(id)a4 hardwareVersion:(id)a5 osVersion:(id)a6 softwareVersion:(id)a7 deviceName:(id)a8;
- (NSData)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSVMRegistrationResponse

- (IDSVMRegistrationResponse)init
{
  v3 = IMCurrentPreferredLanguage();
  v4 = +[FTDeviceSupport sharedInstance];
  v5 = [v4 model];
  v6 = +[FTDeviceSupport sharedInstance];
  v7 = [v6 productOSVersion];
  v8 = +[FTDeviceSupport sharedInstance];
  v9 = [v8 productBuildVersion];
  v10 = +[FTDeviceSupport sharedInstance];
  v11 = [v10 deviceName];
  v12 = [(IDSVMRegistrationResponse *)self initWithVersion:1 language:v3 hardwareVersion:v5 osVersion:v7 softwareVersion:v9 deviceName:v11];

  return v12;
}

- (IDSVMRegistrationResponse)initWithVersion:(unint64_t)a3 language:(id)a4 hardwareVersion:(id)a5 osVersion:(id)a6 softwareVersion:(id)a7 deviceName:(id)a8
{
  v22 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = IDSVMRegistrationResponse;
  v18 = [(IDSVMRegistrationResponse *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_language, a4);
    objc_storeStrong(&v19->_hardwareVersion, a5);
    objc_storeStrong(&v19->_osVersion, a6);
    objc_storeStrong(&v19->_softwareVersion, a7);
    objc_storeStrong(&v19->_deviceName, a8);
    v19->_version = a3;
  }

  return v19;
}

- (IDSVMRegistrationResponse)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = +[IMRGLog vm];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10091D11C(v4, v6, v7);
    }
  }

  return v5;
}

- (NSData)dataRepresentation
{
  v6 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = +[IMRGLog vm];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10091D1A4(v3, v4);
    }
  }

  return v2;
}

- (IDSVMRegistrationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareVersion"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersion"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];

  v11 = [(IDSVMRegistrationResponse *)self initWithVersion:v5 language:v6 hardwareVersion:v7 osVersion:v8 softwareVersion:v9 deviceName:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_language forKey:@"language"];
  [v5 encodeObject:self->_hardwareVersion forKey:@"hardwareVersion"];
  [v5 encodeObject:self->_osVersion forKey:@"osVersion"];
  [v5 encodeObject:self->_softwareVersion forKey:@"softwareVersion"];
  [v5 encodeObject:self->_deviceName forKey:@"deviceName"];
}

@end