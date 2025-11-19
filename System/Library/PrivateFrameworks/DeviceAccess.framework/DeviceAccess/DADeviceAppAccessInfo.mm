@interface DADeviceAppAccessInfo
- (DADeviceAppAccessInfo)initWithBundleIdentifier:(id)a3 deviceIdentifier:(id)a4 accessoryOptions:(unint64_t)a5 state:(int64_t)a6;
- (DADeviceAppAccessInfo)initWithCoder:(id)a3;
- (DADeviceAppAccessInfo)initWithPersistentDictionaryRepresentation:(id)a3 error:(id *)a4;
- (DADeviceAppAccessInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (NSString)associationIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)persistentDictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DADeviceAppAccessInfo

- (DADeviceAppAccessInfo)initWithBundleIdentifier:(id)a3 deviceIdentifier:(id)a4 accessoryOptions:(unint64_t)a5 state:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v16.receiver = self;
  v16.super_class = DADeviceAppAccessInfo;
  v12 = [(DADeviceAppAccessInfo *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleIdentifier, a3);
    objc_storeStrong(&v13->_deviceIdentifier, a4);
    v13->_state = a6;
    v14 = v13;
  }

  return v13;
}

- (DADeviceAppAccessInfo)initWithPersistentDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = DADeviceAppAccessInfo;
  v7 = [(DADeviceAppAccessInfo *)&v21 init];
  if (v7)
  {
    v8 = NSDictionaryGetNSNumber();
    v7->_accessoryOptions = [v8 unsignedIntegerValue];

    CFDictionaryGetDouble();
    v7->_approveTime = v9;
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v10;

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    deviceIdentifier = v7->_deviceIdentifier;
    v7->_deviceIdentifier = v12;

    CFDictionaryGetDouble();
    v7->_endTime = v14;
    CFDataGetTypeID();
    v15 = CFDictionaryGetTypedValue();
    v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:0];
    appDiscoveryConfiguration = v7->_appDiscoveryConfiguration;
    v7->_appDiscoveryConfiguration = v16;

    v18 = NSDictionaryGetNSNumber();
    v7->_state = [v18 integerValue];

    v7->_wifiAwarePairingID = CFDictionaryGetInt64();
    v19 = v7;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:a4 error:?];
  }

  return v7;
}

- (id)persistentDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_accessoryOptions];
  [v3 setObject:v4 forKeyedSubscript:@"accessoryOptions"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_approveTime];
  [v3 setObject:v5 forKeyedSubscript:@"approveTime"];

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKeyedSubscript:@"deviceAppBundleID"];
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [v3 setObject:deviceIdentifier forKeyedSubscript:@"identifier"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endTime];
  [v3 setObject:v8 forKeyedSubscript:@"endTime"];

  v9 = self->_appDiscoveryConfiguration;
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"configuration"];
    }
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v3 setObject:v11 forKeyedSubscript:@"deviceState"];

  if (self->_wifiAwarePairingID)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v3 setObject:v12 forKeyedSubscript:@"deviceWiFiAwarePairingID"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  xpc_dictionary_set_uint64(v4, "dvAo", self->_accessoryOptions);
  approveTime = self->_approveTime;
  if (approveTime != 0.0)
  {
    xpc_dictionary_set_double(v4, "apT", approveTime);
  }

  bundleIdentifier = self->_bundleIdentifier;
  v7 = v4;
  v8 = [(NSString *)bundleIdentifier UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(v7, "bndI", v8);
  }

  deviceIdentifier = self->_deviceIdentifier;
  xdict = v7;
  v10 = [(NSString *)deviceIdentifier UTF8String];
  if (v10)
  {
    xpc_dictionary_set_string(xdict, "id", v10);
  }

  endTime = self->_endTime;
  if (endTime != 0.0)
  {
    xpc_dictionary_set_double(xdict, "epT", endTime);
  }

  appDiscoveryConfiguration = self->_appDiscoveryConfiguration;
  CUXPCEncodeObject();
  xpc_dictionary_set_int64(xdict, "dvSt", self->_state);
  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    xpc_dictionary_set_uint64(xdict, "wFPi", wifiAwarePairingID);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_approveTime != 0.0)
  {
    [v4 encodeDouble:@"apT" forKey:?];
    v4 = v11;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v11 encodeObject:bundleIdentifier forKey:@"bndI"];
    v4 = v11;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [v11 encodeObject:deviceIdentifier forKey:@"id"];
    v4 = v11;
  }

  if (self->_endTime != 0.0)
  {
    [v11 encodeDouble:@"epT" forKey:?];
    v4 = v11;
  }

  appDiscoveryConfiguration = self->_appDiscoveryConfiguration;
  if (appDiscoveryConfiguration)
  {
    [v11 encodeObject:appDiscoveryConfiguration forKey:@"dsCf"];
    v4 = v11;
  }

  state = self->_state;
  if (state)
  {
    [v11 encodeInteger:state forKey:@"dvSt"];
    v4 = v11;
  }

  accessoryOptions = self->_accessoryOptions;
  if (accessoryOptions)
  {
    [v11 encodeInteger:accessoryOptions forKey:@"dvFl"];
    v4 = v11;
  }

  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    [v11 encodeInt64:wifiAwarePairingID forKey:@"wFPi"];
    v4 = v11;
  }
}

- (DADeviceAppAccessInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DADeviceAppAccessInfo;
  v5 = [(DADeviceAppAccessInfo *)&v17 init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v4;
    if ([v6 containsValueForKey:@"apT"])
    {
      [v6 decodeDoubleForKey:@"apT"];
      v5->_approveTime = v7;
    }

    v8 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    if ([v10 containsValueForKey:@"epT"])
    {
      [v10 decodeDoubleForKey:@"epT"];
      v5->_endTime = v11;
    }

    v12 = v10;
    if ([v12 containsValueForKey:@"dvFl"])
    {
      v5->_accessoryOptions = [v12 decodeIntegerForKey:@"dvFl"];
    }

    v13 = v12;
    if ([v13 containsValueForKey:@"dvSt"])
    {
      v5->_state = [v13 decodeIntegerForKey:@"dvSt"];
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"wFPi"])
    {
      v5->_wifiAwarePairingID = [v14 decodeInt64ForKey:@"wFPi"];
    }

    v15 = v5;
  }

  else
  {
    [DADeviceAppAccessInfo initWithCoder:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 48) = self->_accessoryOptions;
  v5 = [(DADiscoveryConfiguration *)self->_appDiscoveryConfiguration copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  *(v4 + 16) = self->_approveTime;
  v7 = [(NSString *)self->_bundleIdentifier copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(NSString *)self->_deviceIdentifier copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  *(v4 + 24) = self->_endTime;
  *(v4 + 56) = *&self->_state;
  return v4;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    v20 = bundleIdentifier;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    v21 = deviceIdentifier;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  v9 = DADeviceStateToString(self->_state);
  CUAppendF();
  v10 = v4;

  v22 = DADeviceAccessorySetupOptionsToString(self->_accessoryOptions);
  CUAppendF();
  v11 = v10;

  if (self->_approveTime != 0.0)
  {
    v23 = CUPrintDateCF();
    CUAppendF();
    v12 = v11;

    v11 = v12;
  }

  if (self->_endTime != 0.0)
  {
    v24 = CUPrintDateCF();
    CUAppendF();
    v13 = v11;

    v11 = v13;
  }

  appDiscoveryConfiguration = self->_appDiscoveryConfiguration;
  if (appDiscoveryConfiguration)
  {
    v25 = appDiscoveryConfiguration;
    CUAppendF();
    v15 = v11;

    v11 = v15;
  }

  if (self->_wifiAwarePairingID)
  {
    wifiAwarePairingID = self->_wifiAwarePairingID;
    CUAppendF();
    v16 = v11;

    v11 = v16;
  }

  v17 = &stru_285B4C350;
  if (v11)
  {
    v17 = v11;
  }

  v18 = v17;

  return v18;
}

- (NSString)associationIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DADeviceAppAccessInfo *)v2 appDiscoveryConfiguration];
  v4 = [v3 associationIdentifier];

  objc_sync_exit(v2);

  return v4;
}

- (DADeviceAppAccessInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = DADeviceAppAccessInfo;
  v7 = [(DADeviceAppAccessInfo *)&v20 init];
  if (!v7)
  {
    if (a4)
    {
      v13 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v14, v15, v16, v17, v18, v19, v13);
      *a4 = v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v21 = 0;
  v8 = OUTLINED_FUNCTION_0();
  if (v8 == 6)
  {
    v7->_accessoryOptions = v21;
  }

  else if (v8 == 5)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_19;
  }

  objc_opt_class();
  CUXPCDecodeObject();
  v21 = 0;
  v9 = CUXPCDecodeSInt64RangedEx();
  if (v9 == 6)
  {
    v7->_state = v21;
  }

  else if (v9 == 5)
  {
    goto LABEL_19;
  }

  v21 = 0;
  v10 = OUTLINED_FUNCTION_0();
  if (v10 != 6)
  {
    if (v10 != 5)
    {
      goto LABEL_15;
    }

LABEL_19:
    v11 = 0;
    goto LABEL_16;
  }

  v7->_wifiAwarePairingID = v21;
LABEL_15:
  v11 = v7;
LABEL_16:

  return v11;
}

- (void)initWithPersistentDictionaryRepresentation:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    result = DAErrorF(350001, "%@ super init failed", v3, v4, v5, v6, v7, v8, v2);
    *v1 = result;
  }

  return result;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = DAErrorF(350001, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

@end