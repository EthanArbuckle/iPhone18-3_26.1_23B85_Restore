@interface HAENAccessoryInfo
+ (id)getAccessoryInfo:(id *)info;
+ (id)getAccessoryInfoFromIOAccesoryManager:(id *)manager;
+ (id)getAccessoryInfoFromIOKitDirectly:(id *)directly;
- (id)description;
@end

@implementation HAENAccessoryInfo

+ (id)getAccessoryInfoFromIOAccesoryManager:(id *)manager
{
  v49 = *MEMORY[0x277D85DE8];
  if (!+[HAENDefaults isRunningCITests])
  {
    connect = 0;
    ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
    if (ServiceWithPrimaryPort)
    {
      v10 = IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &connect);
      if (!v10)
      {
        v13 = objc_alloc_init(HAENAccessoryInfo);
        v17 = IOAccessoryManagerCopyDeviceInfo();
        if (v17)
        {
          v18 = errorForIOKitFailure(v17);
          v19 = HAENotificationsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v18;
            _os_log_impl(&dword_25081E000, v19, OS_LOG_TYPE_DEFAULT, "failed to get serial number %@", buf, 0xCu);
          }

          v20 = IOAccessoryManagerCopyDeviceInfo();
          if (v20)
          {
            v21 = errorForIOKitFailure(v20);

            v22 = HAENotificationsLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = v21;
              _os_log_impl(&dword_25081E000, v22, OS_LOG_TYPE_DEFAULT, "failed to get manufacturer %@", buf, 0xCu);
            }

            v18 = v21;

            v23 = IOAccessoryManagerCopyDeviceInfo();
            if (v23)
            {
              v24 = errorForIOKitFailure(v23);

              v25 = HAENotificationsLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = v24;
                _os_log_impl(&dword_25081E000, v25, OS_LOG_TYPE_DEFAULT, "failed to get model number %@", buf, 0xCu);
              }

              v18 = v24;

              v26 = IOAccessoryManagerCopyDeviceInfo();
              if (v26)
              {
                v27 = errorForIOKitFailure(v26);

                v28 = HAENotificationsLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = v27;
                  _os_log_impl(&dword_25081E000, v28, OS_LOG_TYPE_DEFAULT, "failed to get name %@", buf, 0xCu);
                }

                v18 = v27;

                v29 = IOAccessoryManagerCopyDeviceInfo();
                if (v29)
                {
                  v30 = errorForIOKitFailure(v29);

                  v31 = HAENotificationsLog();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v46 = v30;
                    _os_log_impl(&dword_25081E000, v31, OS_LOG_TYPE_DEFAULT, "failed to get interface serial number %@", buf, 0xCu);
                  }

                  v18 = v30;

                  v32 = IOAccessoryManagerCopyDeviceInfo();
                  if (v32)
                  {
                    v33 = errorForIOKitFailure(v32);

                    v34 = HAENotificationsLog();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
                    }

                    name = v33;

                    v35 = HAENotificationsLog();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v46 = "+[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:]";
                      v47 = 2112;
                      v48 = v13;
                      _os_log_impl(&dword_25081E000, v35, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
                    }

                    IOServiceClose(connect);
                    serialNumber = v13->_serialNumber;
                    if (!v13->_manufacturer || !serialNumber)
                    {
                      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOAccessoryManager: required fields are missing, manufacturer %@, serialNumber %@", v13->_manufacturer, serialNumber, 0];
                      v43 = *MEMORY[0x277CCA450];
                      v44 = v37;
                      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
                      *manager = makeError(v38, 4u);

                      v39 = HAENotificationsLog();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
                      }

                      v13 = 0;
                    }

                    v13 = v13;
                    v5 = v13;
                    goto LABEL_17;
                  }

                  v40 = @"kIOAccDigitalIDDeviceInfoTypeInterfaceModuleSerialNumber";
                }

                else
                {
                  v40 = @"kIOAccDigitalIDDeviceInfoTypeInterfaceDeviceSerialNumber";
                }
              }

              else
              {
                v40 = @"kIOAccDigitalIDDeviceInfoTypeAccessoryName";
              }
            }

            else
            {
              v40 = @"kIOAccDigitalIDDeviceInfoTypeAccessoryModelNumber";
            }
          }

          else
          {
            v40 = @"kIOAccDigitalIDDeviceInfoTypeAccessoryManufacturer";
          }

          v41 = errorForBadDeviceInfo(v40);

          name = v41;
        }

        else
        {
          name = errorForBadDeviceInfo(@"kIOAccDigitalIDDeviceInfoTypeAccessorySerialNumber");
        }

LABEL_12:
        if (connect)
        {
          IOServiceClose(connect);
        }

        v5 = 0;
        if (manager && name)
        {
          v14 = name;
          v5 = 0;
          *manager = name;
        }

LABEL_17:

        goto LABEL_18;
      }

      name = errorForIOKitFailure(v10);
      v11 = HAENotificationsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
      }
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CCA9B8]);
      name = [v12 initWithDomain:HAENAccessoryInfoErrorDomain code:2 userInfo:MEMORY[0x277CBEC10]];
      v11 = HAENotificationsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

  v4 = HAENotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "running citest mode with fake accessory info", buf, 2u);
  }

  v5 = objc_alloc_init(HAENAccessoryInfo);
  manufacturer = v5->_manufacturer;
  v5->_manufacturer = @"CITEST.INC";

  v7 = v5->_serialNumber;
  v5->_serialNumber = @"0123456789";

  name = v5->_name;
  v5->_name = @"FAKE";
LABEL_18:

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)getAccessoryInfoFromIOKitDirectly:(id *)directly
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(HAENAccessoryInfo);
  v5 = IOServiceMatching("IOMikeyBusDevice");
  if (!v5 || ((existing = 0, !IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v5, &existing)) ? (v6 = existing == 0) : (v6 = 1), v6))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = IOIteratorNext(existing);
    if (v9)
    {
      v10 = v9;
      v8 = 0;
      v7 = 0;
      while (1)
      {
        if (v8 && v7)
        {
          goto LABEL_28;
        }

        properties = 0;
        v11 = IORegistryEntryCreateCFProperties(v10, &properties, 0, 0);
        v12 = properties;
        if (!v11)
        {
          if (properties)
          {
            break;
          }
        }

LABEL_21:
        if (v12)
        {
          CFRelease(v12);
        }

        IOObjectRelease(v10);
        v10 = IOIteratorNext(existing);
        if (!v10)
        {
          goto LABEL_28;
        }
      }

      v13 = HAENotificationsLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "+[HAENAccessoryInfo getAccessoryInfoFromIOKitDirectly:]";
        v29 = 2112;
        v30 = properties;
        _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_DEFAULT, "%s IOMikeyBusDevice properties: %@\n", buf, 0x16u);
      }

      if (v8)
      {
        if (v7)
        {
LABEL_18:
          v14 = HAENotificationsLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v28 = v8;
            v29 = 2112;
            v30 = v7;
            _os_log_impl(&dword_25081E000, v14, OS_LOG_TYPE_DEFAULT, "IOMikeyBus sn: %@ mft: %@", buf, 0x16u);
          }

          v12 = properties;
          goto LABEL_21;
        }
      }

      else
      {
        v8 = [(__CFDictionary *)properties objectForKey:@"SerialNumber"];
        if (v7)
        {
          goto LABEL_18;
        }
      }

      v7 = [(__CFDictionary *)properties objectForKey:@"VendorName"];
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
LABEL_28:
    IOObjectRelease(existing);
  }

  objc_storeStrong(&v4->_manufacturer, v7);
  objc_storeStrong(&v4->_serialNumber, v8);
  serialNumber = v4->_serialNumber;
  if (v4->_manufacturer)
  {
    v16 = serialNumber == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    serialNumber = [MEMORY[0x277CCACA8] stringWithFormat:@"IOMikeyBus: required fields are missing, manufacturer %@, serialNumber %@", v4->_manufacturer, serialNumber];
    v25 = *MEMORY[0x277CCA450];
    v26 = serialNumber;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *directly = makeError(v18, 4u);

    v19 = HAENotificationsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
    }

    v4 = 0;
  }

  v20 = v4;

  v21 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)getAccessoryInfo:(id *)info
{
  v4 = [HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:?];
  v5 = v4;
  if (v4 && !*info)
  {
    v13 = v4;
  }

  else
  {
    v6 = HAENotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HAENAccessoryInfo *)info getAccessoryInfo:v6, v7, v8, v9, v10, v11, v12];
    }

    *info = 0;
    v13 = [HAENAccessoryInfo getAccessoryInfoFromIOKitDirectly:info];

    if (*info)
    {
      v14 = HAENotificationsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(HAENAccessoryInfo *)info getAccessoryInfo:v14, v15, v16, v17, v18, v19, v20];
      }
    }
  }

  v21 = v13;

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@]: serial# '%@', manufacturer '%@', name '%@', model# '%@', InterfaceDeviceSerial# '%@', interfaceModuleSerial# '%@'", v5, self->_serialNumber, self->_manufacturer, self->_name, self->_modelNumber, self->_interfaceDeviceSerialNumber, self->_interfaceModuleSerialNumber];

  return v6;
}

+ (void)getAccessoryInfoFromIOAccesoryManager:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "failed IOServiceOpen %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getAccessoryInfoFromIOAccesoryManager:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "failed to get device module serial number %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getAccessoryInfoFromIOAccesoryManager:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getAccessoryInfoFromIOAccesoryManager:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "failed to get service port %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getAccessoryInfo:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "failed to get accessory info from IOAccessoryManager: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getAccessoryInfo:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "failed to get accessory info from mickey bus: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end