@interface DeviceTypeDeviceIdentity
+ (id)sharedInstance;
- (BOOL)runningInRAMDisk;
- (DeviceTypeDeviceIdentity)init;
- (id)copyBootArgs;
- (id)copyBootSessionUUID;
- (id)copyDeviceTreeProperty:(id)a3 key:(id)a4;
- (id)copyDeviceTreeString:(id)a3 key:(id)a4 defaultValue:(id)a5;
@end

@implementation DeviceTypeDeviceIdentity

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[DeviceTypeDeviceIdentity sharedInstance];
  }

  v3 = sharedInstance_device_type;

  return v3;
}

uint64_t __42__DeviceTypeDeviceIdentity_sharedInstance__block_invoke()
{
  sharedInstance_device_type = objc_alloc_init(DeviceTypeDeviceIdentity);

  return MEMORY[0x2821F96F8]();
}

- (DeviceTypeDeviceIdentity)init
{
  v58.receiver = self;
  v58.super_class = DeviceTypeDeviceIdentity;
  v2 = [(DeviceTypeDeviceIdentity *)&v58 init];
  if (v2)
  {
    [@"com.apple.mobileactivationd" UTF8String];
    v2->_is_internal_build = os_variant_allows_internal_security_policies();
    [@"com.apple.mobileactivationd" UTF8String];
    v2->_has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v3 = +[GestaltHlprDeviceIdentity getSharedInstance];
    v4 = [v3 copyAnswer:@"ProductType"];
    v5 = isNSString(v4);
    product_type = v2->_product_type;
    v2->_product_type = v5;

    v7 = [v3 copyAnswer:@"HWModelStr"];
    v8 = isNSString(v7);
    hardware_model = v2->_hardware_model;
    v2->_hardware_model = v8;

    v2->_is_ipod = [(NSString *)v2->_product_type hasPrefix:@"iPod"];
    v2->_is_ipad = [(NSString *)v2->_product_type hasPrefix:@"iPad"];
    v2->_is_iphone = [(NSString *)v2->_product_type hasPrefix:@"iPhone"];
    v2->_is_audio_accessory = [(NSString *)v2->_product_type hasPrefix:@"AudioAccessory"];
    v2->_is_dev_board = [(NSString *)v2->_hardware_model hasSuffix:@"DEV"];
    v10 = [v3 copyAnswer:@"DeviceClass"];
    v11 = isNSString(v10);
    device_class = v2->_device_class;
    v2->_device_class = v11;

    v2->_has_baseband = [v3 getBoolAnswer:@"HasBaseband"];
    v13 = [@"IODeviceTree" stringByAppendingString:@":/arm-io"];
    v14 = [(DeviceTypeDeviceIdentity *)v2 copyDeviceTreeString:v13 key:@"soc-generation" defaultValue:0];
    v15 = [v14 uppercaseString];
    soc_generation = v2->_soc_generation;
    v2->_soc_generation = v15;

    v17 = +[GestaltHlprDeviceIdentity getSharedInstance];
    v18 = [v17 copyAnswer:@"ChipID"];
    v19 = isNSNumber(v18);

    if ([v19 isEqualToNumber:&unk_283965DB0] & 1) != 0 || (objc_msgSend(v19, "isEqualToNumber:", &unk_283965DC8) & 1) != 0 || (objc_msgSend(v19, "isEqualToNumber:", &unk_283965DE0))
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v20 = [v19 isEqualToNumber:&unk_283965DF8] ^ 1;
    }

    v2->_device_supports_mfi_certificates = v20;
    if ([v19 isEqualToNumber:&unk_283965DF8] & 1) != 0 || (objc_msgSend(v19, "isEqualToNumber:", &unk_283965DC8))
    {
      LOBYTE(v21) = 0;
    }

    else
    {
      v21 = [v19 isEqualToNumber:&unk_283965DE0] ^ 1;
    }

    v2->_device_supports_eda_certificates = v21;
    v2->_device_supports_dcrt_oob = [v3 getBoolAnswer:@"DeviceSupportsFairPlaySecureVideoPath"];
    v22 = [@"IODeviceTree" stringByAppendingString:@":/product"];
    v23 = [(DeviceTypeDeviceIdentity *)v2 copyDeviceTreeInt:v22 key:@"allow-hactivation" defaultValue:0];

    v24 = [v3 copyAnswer:@"CertificateProductionStatus"];
    v25 = isNSNumber(v24);

    v26 = [v3 copyAnswer:@"EffectiveProductionStatusAp"];
    v27 = isNSNumber(v26);

    v28 = [v3 copyAnswer:@"CertificateSecurityMode"];
    v29 = isNSNumber(v28);

    v30 = [v3 copyAnswer:@"EffectiveSecurityModeSEP"];
    v31 = isNSNumber(v30);

    if (v25 && v27 && v31 && v29)
    {
      if ([v25 isEqualToNumber:&unk_283965E10] && objc_msgSend(v27, "isEqualToNumber:", &unk_283965E28) && objc_msgSend(v29, "isEqualToNumber:", &unk_283965E10) && objc_msgSend(v31, "isEqualToNumber:", &unk_283965E10))
      {
        v2->_should_hactivate = 1;
        v2->_is_prodfused_demoted = 1;
      }

      if ([v25 isEqualToNumber:&unk_283965E28] && objc_msgSend(v27, "isEqualToNumber:", &unk_283965E28) && objc_msgSend(v29, "isEqualToNumber:", &unk_283965E10) && objc_msgSend(v31, "isEqualToNumber:", &unk_283965E10))
      {
        v2->_should_hactivate = 1;
        v2->_is_devfused_undemoted = 1;
      }
    }

    if (v2->_is_internal_build)
    {
      if (!v2->_should_hactivate)
      {
        v2->_should_hactivate = [v3 getBoolAnswer:@"ShouldHactivate"];
      }

      v32 = [(DeviceTypeDeviceIdentity *)v2 copyBootArgs];
      v33 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v53 = v32;
      v57 = [v32 componentsSeparatedByCharactersInSet:v33];

      if ([(NSString *)v2->_product_type containsString:@"iFPGA"])
      {
        v2->_should_hactivate = 1;
        v2->_is_fpga = 1;
      }

      if (v2->_is_dev_board)
      {
        v2->_should_hactivate = 1;
      }

      v34 = isNSNumber(v23);
      if (v34)
      {
        v35 = v34;
        v36 = [v23 BOOLValue];

        if (v36)
        {
          v2->_should_hactivate = 1;
        }
      }

      v54 = v27;
      if ([v57 containsObject:@"disable-hactivation-ma=1"])
      {
        v2->_should_hactivate = 0;
      }

      v37 = v31;
      v55 = v29;
      v38 = [MEMORY[0x277CCAA00] defaultManager];
      v39 = [v38 fileExistsAtPath:@"/AppleInternal/Lockdown/.hactivateoff"];

      if (v39)
      {
        v2->_should_hactivate = 0;
      }

      v56 = v23;
      v40 = objc_alloc(MEMORY[0x277CBEBD0]);
      v41 = [v40 persistentDomainForName:@"com.apple.mobileactivationd"];

      v42 = [v41 objectForKeyedSubscript:@"DisableHactivation"];
      v43 = isNSNumber(v42);
      if (v43)
      {
        v44 = v43;
        v45 = [v41 objectForKeyedSubscript:@"DisableHactivation"];
        v46 = [v45 BOOLValue];

        v31 = v37;
        if (v46)
        {
          v2->_should_hactivate = 0;
        }
      }

      else
      {
      }

      v27 = v54;
      if (is_virtual_machine())
      {
        v47 = [@"IODeviceTree" stringByAppendingString:@":/chosen"];
        v48 = [(DeviceTypeDeviceIdentity *)v2 copyDeviceTreeInt:v47 key:@"enable-avp-fairplay" defaultValue:0];

        v49 = isNSNumber(v48);
        if (v49)
        {
          v50 = v49;
          v51 = [v48 BOOLValue];

          if (v51)
          {
            v2->_should_hactivate = 0;
          }
        }
      }

      else
      {
        v48 = 0;
      }

      v29 = v55;
      v23 = v56;
    }
  }

  return v2;
}

- (id)copyDeviceTreeProperty:(id)a3 key:(id)a4
{
  v5 = a4;
  v6 = v5;
  CFProperty = 0;
  if (a3 && v5)
  {
    v8 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], [a3 fileSystemRepresentation]);
    if (v8)
    {
      v9 = v8;
      CFProperty = IORegistryEntryCreateCFProperty(v8, v6, 0, 0);
      IOObjectRelease(v9);
    }

    else
    {
      CFProperty = 0;
    }
  }

  return CFProperty;
}

- (id)copyBootSessionUUID
{
  size = 0;
  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    return 0;
  }

  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v2 = 0;
  if (!sysctlbyname("kern.bootsessionuuid", v3, &size, 0, 0))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
  }

  free(v4);
  return v2;
}

- (id)copyBootArgs
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(v6, 0x400uLL);
  v5 = 1024;
  v2 = sysctlbyname("kern.bootargs", v6, &v5, 0, 0);
  result = 0;
  if (!v2)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)copyDeviceTreeString:(id)a3 key:(id)a4 defaultValue:(id)a5
{
  v8 = a5;
  v9 = v8;
  v10 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

  v11 = v8;
  if (a4)
  {
    v10 = [(DeviceTypeDeviceIdentity *)self copyDeviceTreeProperty:a3 key:a4];
    v12 = isNSData(v10);
    if (v12)
    {
      v13 = v12;
      v14 = [v10 length];

      if (v14)
      {
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{objc_msgSend(v10, "bytes")}];

        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v9;
  }

LABEL_7:

  return v11;
}

- (BOOL)runningInRAMDisk
{
  v2 = [(DeviceTypeDeviceIdentity *)self copyBootArgs];
  if (v2 && ([MEMORY[0x277CCA900] whitespaceCharacterSet], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "componentsSeparatedByCharactersInSet:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    v5 = [v4 containsObject:@"-restore"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end