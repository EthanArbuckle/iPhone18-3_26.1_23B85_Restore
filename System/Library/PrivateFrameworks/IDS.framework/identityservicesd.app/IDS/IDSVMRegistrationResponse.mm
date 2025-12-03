@interface IDSVMRegistrationResponse
- (IDSVMRegistrationResponse)init;
- (IDSVMRegistrationResponse)initWithCoder:(id)coder;
- (IDSVMRegistrationResponse)initWithDataRepresentation:(id)representation;
- (IDSVMRegistrationResponse)initWithVersion:(unint64_t)version language:(id)language hardwareVersion:(id)hardwareVersion osVersion:(id)osVersion softwareVersion:(id)softwareVersion deviceName:(id)name;
- (NSData)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSVMRegistrationResponse

- (IDSVMRegistrationResponse)init
{
  v3 = IMCurrentPreferredLanguage();
  v4 = +[FTDeviceSupport sharedInstance];
  model = [v4 model];
  v6 = +[FTDeviceSupport sharedInstance];
  productOSVersion = [v6 productOSVersion];
  v8 = +[FTDeviceSupport sharedInstance];
  productBuildVersion = [v8 productBuildVersion];
  v10 = +[FTDeviceSupport sharedInstance];
  deviceName = [v10 deviceName];
  v12 = [(IDSVMRegistrationResponse *)self initWithVersion:1 language:v3 hardwareVersion:model osVersion:productOSVersion softwareVersion:productBuildVersion deviceName:deviceName];

  return v12;
}

- (IDSVMRegistrationResponse)initWithVersion:(unint64_t)version language:(id)language hardwareVersion:(id)hardwareVersion osVersion:(id)osVersion softwareVersion:(id)softwareVersion deviceName:(id)name
{
  languageCopy = language;
  hardwareVersionCopy = hardwareVersion;
  osVersionCopy = osVersion;
  softwareVersionCopy = softwareVersion;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = IDSVMRegistrationResponse;
  v18 = [(IDSVMRegistrationResponse *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_language, language);
    objc_storeStrong(&v19->_hardwareVersion, hardwareVersion);
    objc_storeStrong(&v19->_osVersion, osVersion);
    objc_storeStrong(&v19->_softwareVersion, softwareVersion);
    objc_storeStrong(&v19->_deviceName, name);
    v19->_version = version;
  }

  return v19;
}

- (IDSVMRegistrationResponse)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = +[IMRGLog vm];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10091D11C(representationCopy, v6, v7);
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

- (IDSVMRegistrationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardwareVersion"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersion"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];

  v11 = [(IDSVMRegistrationResponse *)self initWithVersion:v5 language:v6 hardwareVersion:v7 osVersion:v8 softwareVersion:v9 deviceName:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeObject:self->_language forKey:@"language"];
  [coderCopy encodeObject:self->_hardwareVersion forKey:@"hardwareVersion"];
  [coderCopy encodeObject:self->_osVersion forKey:@"osVersion"];
  [coderCopy encodeObject:self->_softwareVersion forKey:@"softwareVersion"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
}

@end