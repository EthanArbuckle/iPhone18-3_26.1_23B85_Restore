@interface GTDeviceProperties
+ (id)hardwareUUID;
+ (id)uniqueDeviceID;
- (GTDeviceProperties)initWithCoder:(id)a3;
- (GTDeviceProperties)initWithXPCObject:(id)a3;
- (id)initForEmbeddedSystem;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTDeviceProperties

+ (id)hardwareUUID
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6.tv_sec = 0;
  v6.tv_nsec = 0;
  v2 = gethostuuid(v7, &v6);
  v3 = 0;
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v7];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniqueDeviceID
{
  v2 = MGCopyAnswer();

  return v2;
}

- (GTDeviceProperties)initWithXPCObject:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = GTDeviceProperties;
  v5 = [(GTDeviceProperties *)&v62 init];
  if (v5)
  {
    v5->_LocationID = xpc_dictionary_get_uint64(v4, "LocationID");
    v6 = MEMORY[0x277CCACA8];
    string = xpc_dictionary_get_string(v4, "OSVersion");
    if (string)
    {
      v8 = string;
    }

    else
    {
      v8 = "";
    }

    v9 = [v6 stringWithUTF8String:v8];
    OSVersion = v5->_OSVersion;
    v5->_OSVersion = v9;

    v11 = MEMORY[0x277CCACA8];
    v12 = xpc_dictionary_get_string(v4, "BuildVersion");
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = "";
    }

    v14 = [v11 stringWithUTF8String:v13];
    BuildVersion = v5->_BuildVersion;
    v5->_BuildVersion = v14;

    v16 = MEMORY[0x277CCACA8];
    v17 = xpc_dictionary_get_string(v4, "ProductType");
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "";
    }

    v19 = [v16 stringWithUTF8String:v18];
    ProductType = v5->_ProductType;
    v5->_ProductType = v19;

    v21 = MEMORY[0x277CCACA8];
    v22 = xpc_dictionary_get_string(v4, "HWModel");
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    v24 = [v21 stringWithUTF8String:v23];
    HWModelStr = v5->_HWModelStr;
    v5->_HWModelStr = v24;

    v26 = MEMORY[0x277CCACA8];
    v27 = xpc_dictionary_get_string(v4, "UniqueDeviceID");
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = "";
    }

    v29 = [v26 stringWithUTF8String:v28];
    UniqueDeviceID = v5->_UniqueDeviceID;
    v5->_UniqueDeviceID = v29;

    v31 = MEMORY[0x277CCACA8];
    v32 = xpc_dictionary_get_string(v4, "Reality");
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = "";
    }

    v34 = [v31 stringWithUTF8String:v33];
    Reality = v5->_Reality;
    v5->_Reality = v34;

    v5->_RemoteXPCVersionFlags = xpc_dictionary_get_uint64(v4, "RemoteXPCVersionFlags");
    v36 = MEMORY[0x277CCACA8];
    v37 = xpc_dictionary_get_string(v4, "CPUArchitecture");
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = "";
    }

    v39 = [v36 stringWithUTF8String:v38];
    CPUArchitecture = v5->_CPUArchitecture;
    v5->_CPUArchitecture = v39;

    v41 = MEMORY[0x277CCACA8];
    v42 = xpc_dictionary_get_string(v4, "DeviceClass");
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = "";
    }

    v44 = [v41 stringWithUTF8String:v43];
    DeviceClass = v5->_DeviceClass;
    v5->_DeviceClass = v44;

    v46 = MEMORY[0x277CCACA8];
    v47 = xpc_dictionary_get_string(v4, "MobileDeviceMinimumVersion");
    if (v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = "";
    }

    v49 = [v46 stringWithUTF8String:v48];
    MobileDeviceMinimumVersion = v5->_MobileDeviceMinimumVersion;
    v5->_MobileDeviceMinimumVersion = v49;

    v51 = MEMORY[0x277CCACA8];
    v52 = xpc_dictionary_get_string(v4, "ProductName");
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = "";
    }

    v54 = [v51 stringWithUTF8String:v53];
    ProductName = v5->_ProductName;
    v5->_ProductName = v54;

    v56 = MEMORY[0x277CCACA8];
    v57 = xpc_dictionary_get_string(v4, "ReleaseType");
    if (v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = "";
    }

    v59 = [v56 stringWithUTF8String:v58];
    ReleaseType = v5->_ReleaseType;
    v5->_ReleaseType = v59;

    v5->_AppleInternal = xpc_dictionary_get_BOOL(v4, "AppleInternal");
    v5->_DeviceSupportsLockdown = xpc_dictionary_get_BOOL(v4, "DeviceSupportsLockdown");
    v5->_EffectiveProductionStatusAp = xpc_dictionary_get_BOOL(v4, "EffectiveProductionStatusAp");
    v5->_IsUIBuild = xpc_dictionary_get_BOOL(v4, "IsUIBuild");
    v5->_OSInstallEnvironment = xpc_dictionary_get_BOOL(v4, "OSInstallEnvironment");
    v5->_StoreDemoMode = xpc_dictionary_get_BOOL(v4, "StoreDemoMode");
  }

  return v5;
}

- (GTDeviceProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = GTDeviceProperties;
  v5 = [(GTDeviceProperties *)&v29 init];
  if (v5)
  {
    v5->_LocationID = [v4 decodeIntegerForKey:@"LocationID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BuildVersion"];
    BuildVersion = v5->_BuildVersion;
    v5->_BuildVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HWModel"];
    HWModelStr = v5->_HWModelStr;
    v5->_HWModelStr = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OSVersion"];
    OSVersion = v5->_OSVersion;
    v5->_OSVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    ProductType = v5->_ProductType;
    v5->_ProductType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueDeviceID"];
    UniqueDeviceID = v5->_UniqueDeviceID;
    v5->_UniqueDeviceID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Reality"];
    Reality = v5->_Reality;
    v5->_Reality = v16;

    v5->_RemoteXPCVersionFlags = [v4 decodeIntegerForKey:@"RemoteXPCVersionFlags"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPUArchitecture"];
    CPUArchitecture = v5->_CPUArchitecture;
    v5->_CPUArchitecture = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    DeviceClass = v5->_DeviceClass;
    v5->_DeviceClass = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MobileDeviceMinimumVersion"];
    MobileDeviceMinimumVersion = v5->_MobileDeviceMinimumVersion;
    v5->_MobileDeviceMinimumVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductName"];
    ProductName = v5->_ProductName;
    v5->_ProductName = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    ReleaseType = v5->_ReleaseType;
    v5->_ReleaseType = v26;

    v5->_AppleInternal = [v4 decodeBoolForKey:@"AppleInternal"];
    v5->_DeviceSupportsLockdown = [v4 decodeBoolForKey:@"DeviceSupportsLockdown"];
    v5->_EffectiveProductionStatusAp = [v4 decodeBoolForKey:@"EffectiveProductionStatusAp"];
    v5->_IsUIBuild = [v4 decodeBoolForKey:@"IsUIBuild"];
    v5->_OSInstallEnvironment = [v4 decodeBoolForKey:@"OSInstallEnvironment"];
    v5->_StoreDemoMode = [v4 decodeBoolForKey:@"StoreDemoMode"];
  }

  return v5;
}

- (id)initForEmbeddedSystem
{
  v23 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = GTDeviceProperties;
  v2 = [(GTDeviceProperties *)&v15 init];
  if (v2)
  {
    [(GTDeviceProperties *)v2 setAppleInternal:os_variant_has_internal_content()];
    v3 = _CFCopySystemVersionDictionary();
    if (v3)
    {
      v4 = v3;
      [(GTDeviceProperties *)v2 setOsVersion:CFDictionaryGetValue(v3, *MEMORY[0x277CBEC88])];
      [(GTDeviceProperties *)v2 setBuildVersion:CFDictionaryGetValue(v4, *MEMORY[0x277CBEC70])];
      [(GTDeviceProperties *)v2 setProductName:CFDictionaryGetValue(v4, *MEMORY[0x277CBEC78])];
      [(GTDeviceProperties *)v2 setReleaseType:CFDictionaryGetValue(v4, @"ReleaseType")];
      CFRelease(v4);
    }

    *__error() = 0;
    size = 128;
    v5 = sysctlbyname("kern.osversion", values, &size, 0, 0);
    if (!v5 || *__error() == 12)
    {
      if (size != 128 || *__error() != 12)
      {
        v7 = 0;
        v6 = values;
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      if (!sysctlbyname("kern.osversion", 0, &size, 0, 0))
      {
        if (size >= 0x81)
        {
          v6 = malloc_type_malloc(size, 0xDF58D149uLL);
          v7 = v6;
          if (!sysctlbyname("kern.osversion", v6, &size, 0, 0))
          {
            goto LABEL_15;
          }

LABEL_13:
          v8 = 0;
          size = 0;
          goto LABEL_16;
        }

        v7 = 0;
        v6 = values;
LABEL_15:
        v8 = strdup(v6);
LABEL_16:
        free(v7);
        if (size)
        {
          if (!v8)
          {
LABEL_19:
            v19 = xmmword_279661100;
            v20 = *&off_279661110;
            v21 = xmmword_279661120;
            v22 = @"re6Zb+zwFKJNlkQTUeT+/w";
            *values = xmmword_2796610E0;
            v18 = *&off_2796610F0;
            v10 = CFArrayCreate(0, values, 11, MEMORY[0x277CBF128]);
            v11 = MGCopyMultipleAnswers();
            CFRelease(v10);
            [(GTDeviceProperties *)v2 setCpuArchitecture:CFDictionaryGetValue(v11, @"k7QIBwZJJOVw+Sej/8h8VA")];
            [(GTDeviceProperties *)v2 setCpuArchitecture:CFDictionaryGetValue(v11, @"k7QIBwZJJOVw+Sej/8h8VA")];
            [(GTDeviceProperties *)v2 setDeviceClass:CFDictionaryGetValue(v11, @"+3Uf0Pm5F8Xy7Onyvko0vA")];
            [(GTDeviceProperties *)v2 setDeviceSupportsLockdown:MGGetBoolAnswer()];
            [(GTDeviceProperties *)v2 setEffectiveProductionStatusAp:MGGetBoolAnswer()];
            [(GTDeviceProperties *)v2 setHardwareModel:CFDictionaryGetValue(v11, @"/YYygAofPDbhrwToVsXdeA")];
            [(GTDeviceProperties *)v2 setIsUIBuild:MGGetBoolAnswer()];
            [(GTDeviceProperties *)v2 setMobileDeviceMinimumVersion:CFDictionaryGetValue(v11, @"k+KTni1jrwErpcDMEnn3aw")];
            [(GTDeviceProperties *)v2 setProductName:CFDictionaryGetValue(v11, @"ivIu8YTDnBSrYv/SN4G8Ag")];
            [(GTDeviceProperties *)v2 setProductType:CFDictionaryGetValue(v11, @"h9jDsbgj7xIVeIQ8S3/X3Q")];
            [(GTDeviceProperties *)v2 setReleaseType:CFDictionaryGetValue(v11, @"9UCjT7Qfi4xLVvPAKIzTCQ")];
            [(GTDeviceProperties *)v2 setUniqueDeviceID:CFDictionaryGetValue(v11, @"re6Zb+zwFKJNlkQTUeT+/w")];
            CFRelease(v11);
            [(GTDeviceProperties *)v2 setOsInstallEnvironment:getenv("__OSINSTALL_ENVIRONMENT") != 0];
            v12 = v2;
            goto LABEL_20;
          }

LABEL_18:
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
          [(GTDeviceProperties *)v2 setBuildVersion:v9];

          free(v8);
          goto LABEL_19;
        }

LABEL_22:
        _os_assumes_log();
        if (!v8)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v8 = 0;
    goto LABEL_22;
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  LocationID = self->_LocationID;
  v5 = a3;
  [v5 encodeInteger:LocationID forKey:@"LocationID"];
  [v5 encodeObject:self->_BuildVersion forKey:@"BuildVersion"];
  [v5 encodeObject:self->_HWModelStr forKey:@"HWModel"];
  [v5 encodeObject:self->_OSVersion forKey:@"OSVersion"];
  [v5 encodeObject:self->_ProductType forKey:@"ProductType"];
  [v5 encodeObject:self->_UniqueDeviceID forKey:@"UniqueDeviceID"];
  [v5 encodeObject:self->_Reality forKey:@"Reality"];
  [v5 encodeInteger:self->_RemoteXPCVersionFlags forKey:@"RemoteXPCVersionFlags"];
  [v5 encodeObject:self->_CPUArchitecture forKey:@"CPUArchitecture"];
  [v5 encodeObject:self->_DeviceClass forKey:@"DeviceClass"];
  [v5 encodeObject:self->_MobileDeviceMinimumVersion forKey:@"MobileDeviceMinimumVersion"];
  [v5 encodeObject:self->_ProductName forKey:@"ProductName"];
  [v5 encodeObject:self->_ReleaseType forKey:@"ReleaseType"];
  [v5 encodeBool:self->_AppleInternal forKey:@"AppleInternal"];
  [v5 encodeBool:self->_DeviceSupportsLockdown forKey:@"DeviceSupportsLockdown"];
  [v5 encodeBool:self->_EffectiveProductionStatusAp forKey:@"EffectiveProductionStatusAp"];
  [v5 encodeBool:self->_IsUIBuild forKey:@"IsUIBuild"];
  [v5 encodeBool:self->_OSInstallEnvironment forKey:@"OSInstallEnvironment"];
  [v5 encodeBool:self->_StoreDemoMode forKey:@"StoreDemoMode"];
}

@end