@interface CSRemoteDeviceProtocolInfo
+ (id)defaultProtocolInfo;
+ (id)localDeviceProtocolInfo;
- (CSRemoteDeviceProtocolInfo)initWithProtocolVersion:(unint64_t)version buildVersion:(id)buildVersion deviceProductVersion:(id)productVersion deviceProductType:(id)type deviceCategory:(unint64_t)category;
- (CSRemoteDeviceProtocolInfo)initWithXPCObject:(id)object;
- (OS_xpc_object)xpcObject;
@end

@implementation CSRemoteDeviceProtocolInfo

- (OS_xpc_object)xpcObject
{
  keys[0] = "protocolVersion";
  keys[1] = "deviceCategory";
  values[0] = xpc_uint64_create(self->_protocolVersion);
  values[1] = xpc_uint64_create(self->_deviceCategory);
  v3 = xpc_dictionary_create(keys, values, 2uLL);
  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    xpc_dictionary_set_string(v3, "buildVersion", [(NSString *)buildVersion UTF8String]);
  }

  deviceProductVersion = self->_deviceProductVersion;
  if (deviceProductVersion)
  {
    xpc_dictionary_set_string(v3, "deviceProductVersion", [(NSString *)deviceProductVersion UTF8String]);
  }

  deviceProductType = self->_deviceProductType;
  if (deviceProductType)
  {
    xpc_dictionary_set_string(v3, "deviceProductType", [(NSString *)deviceProductType UTF8String]);
  }

  for (i = 1; i != -1; --i)
  {
  }

  return v3;
}

- (CSRemoteDeviceProtocolInfo)initWithXPCObject:(id)object
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = CSRemoteDeviceProtocolInfo;
  v5 = [(CSRemoteDeviceProtocolInfo *)&v16 init];
  if (v5)
  {
    v5->_protocolVersion = xpc_dictionary_get_uint64(objectCopy, "protocolVersion");
    v5->_deviceCategory = xpc_dictionary_get_uint64(objectCopy, "deviceCategory");
    v6 = xpc_dictionary_get_value(objectCopy, "buildVersion");

    if (v6)
    {
      v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(objectCopy, "buildVersion")];
      buildVersion = v5->_buildVersion;
      v5->_buildVersion = v7;
    }

    v9 = xpc_dictionary_get_value(objectCopy, "deviceProductVersion");

    if (v9)
    {
      v10 = [NSString stringWithUTF8String:xpc_dictionary_get_string(objectCopy, "deviceProductVersion")];
      deviceProductVersion = v5->_deviceProductVersion;
      v5->_deviceProductVersion = v10;
    }

    v12 = xpc_dictionary_get_value(objectCopy, "deviceProductType");

    if (v12)
    {
      v13 = [NSString stringWithUTF8String:xpc_dictionary_get_string(objectCopy, "deviceProductType")];
      deviceProductType = v5->_deviceProductType;
      v5->_deviceProductType = v13;
    }
  }

  return v5;
}

- (CSRemoteDeviceProtocolInfo)initWithProtocolVersion:(unint64_t)version buildVersion:(id)buildVersion deviceProductVersion:(id)productVersion deviceProductType:(id)type deviceCategory:(unint64_t)category
{
  buildVersionCopy = buildVersion;
  productVersionCopy = productVersion;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = CSRemoteDeviceProtocolInfo;
  v16 = [(CSRemoteDeviceProtocolInfo *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_protocolVersion = version;
    objc_storeStrong(&v16->_buildVersion, buildVersion);
    objc_storeStrong(&v17->_deviceProductVersion, productVersion);
    objc_storeStrong(&v17->_deviceProductType, type);
    v17->_deviceCategory = category;
  }

  return v17;
}

+ (id)localDeviceProtocolInfo
{
  v2 = +[CSUtils deviceBuildVersion];
  v3 = +[CSUtils deviceProductVersion];
  v4 = +[CSUtils deviceProductType];
  LODWORD(v5) = +[CSUtils isDarwinOS];
  if (CSIsIPad())
  {
    v5 = 5;
  }

  else if (CSIsOSX())
  {
    if ((+[CSUtils hasRemoteBuiltInMic]& 1) != 0)
    {
      v5 = 2;
    }

    else if (CSIsASMacWithAOP())
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = v5;
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "+[CSRemoteDeviceProtocolInfo localDeviceProtocolInfo]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unsupported protocol for this device", &v9, 0xCu);
    }
  }

  v7 = [[CSRemoteDeviceProtocolInfo alloc] initWithProtocolVersion:4 buildVersion:v2 deviceProductVersion:v3 deviceProductType:v4 deviceCategory:v5];

  return v7;
}

+ (id)defaultProtocolInfo
{
  v2 = [[CSRemoteDeviceProtocolInfo alloc] initWithProtocolVersion:1 buildVersion:@"Unknown" deviceProductVersion:@"Unknown" deviceProductType:@"Unknown" deviceCategory:0];

  return v2;
}

@end