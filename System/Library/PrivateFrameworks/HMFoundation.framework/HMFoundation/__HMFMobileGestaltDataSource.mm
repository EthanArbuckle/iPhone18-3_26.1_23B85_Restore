@interface __HMFMobileGestaltDataSource
- (BOOL)shouldFetchProtectedKey:(id)key;
- (BOOL)shouldFetchUserAssignedDeviceName;
- (HMFSystemInfoNameDataSourceDelegate)delegate;
- (NSString)name;
- (__HMFMobileGestaltDataSource)init;
- (void)dealloc;
@end

@implementation __HMFMobileGestaltDataSource

- (__HMFMobileGestaltDataSource)init
{
  v116[5] = *MEMORY[0x277D85DE8];
  v107.receiver = self;
  v107.super_class = __HMFMobileGestaltDataSource;
  v2 = [(__HMFMobileGestaltDataSource *)&v107 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMFDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create(v4, v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = v3;
    v109 = @"UserAssignedDeviceName";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
    objc_initWeak(&location, v8);
    queue = [(__HMFMobileGestaltDataSource *)v8 queue];
    v112 = MEMORY[0x277D85DD0];
    v113 = 3221225472;
    v114 = ____registerForUpdates_block_invoke;
    v115 = &unk_2786E78B0;
    objc_copyWeak(v116, &location);
    v8->_notificationToken = MGRegisterForUpdates();

    objc_destroyWeak(v116);
    objc_destroyWeak(&location);

    v11 = v8;
    v12 = MEMORY[0x277CBEB18];
    v112 = @"ProductType";
    v113 = @"ModelNumber";
    v114 = @"RegionInfo";
    v115 = @"ProductName";
    v116[0] = @"DeviceClass";
    v116[1] = @"ReleaseType";
    v116[2] = @"BuildVersion";
    v116[3] = @"bluetooth-le";
    v116[4] = @"DeviceColor";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:9];
    v14 = [v12 arrayWithArray:v13];

    shouldFetchUserAssignedDeviceName = [(__HMFMobileGestaltDataSource *)v11 shouldFetchUserAssignedDeviceName];
    if (shouldFetchUserAssignedDeviceName)
    {
      [v14 addObject:@"UserAssignedDeviceName"];
    }

    v16 = [(__HMFMobileGestaltDataSource *)v11 shouldFetchProtectedKey:@"SerialNumber"];
    if (v16)
    {
      [v14 addObject:@"SerialNumber"];
    }

    v17 = [(__HMFMobileGestaltDataSource *)v11 shouldFetchProtectedKey:@"WifiAddress"];
    if (v17)
    {
      [v14 addObject:@"WifiAddress"];
    }

    v18 = MGCopyMultipleAnswers();
    v19 = v18;
    if (!v18)
    {
      goto LABEL_115;
    }

    if (shouldFetchUserAssignedDeviceName)
    {
      Value = CFDictionaryGetValue(v18, @"UserAssignedDeviceName");
      v21 = Value;
      if (Value)
      {
        v22 = CFGetTypeID(Value);
        if (v22 == CFStringGetTypeID())
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      objc_storeStrong(&v11->_name, v23);
    }

    if (v16)
    {
      v24 = CFDictionaryGetValue(v19, @"SerialNumber");
      v25 = v24;
      if (v24)
      {
        v26 = CFGetTypeID(v24);
        if (v26 == CFStringGetTypeID())
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      objc_storeStrong(&v11->_serialNumber, v27);
    }

    v28 = CFDictionaryGetValue(v19, @"ProductType");
    v29 = v28;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 == CFStringGetTypeID())
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    objc_storeStrong(&v11->_modelIdentifier, v31);
    v32 = CFDictionaryGetValue(v19, @"ModelNumber");
    v33 = v32;
    if (v32)
    {
      v34 = CFGetTypeID(v32);
      if (v34 == CFStringGetTypeID())
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    objc_storeStrong(&v11->_model, v35);
    v36 = CFDictionaryGetValue(v19, @"RegionInfo");
    v37 = v36;
    if (v36)
    {
      v38 = CFGetTypeID(v36);
      if (v38 == CFStringGetTypeID())
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    objc_storeStrong(&v11->_regionInfo, v39);
    v40 = CFDictionaryGetValue(v19, @"ProductName");
    v41 = v40;
    if (v40)
    {
      v42 = CFGetTypeID(v40);
      if (v42 == CFStringGetTypeID())
      {
        v43 = v41;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v11->_productPlatform = HMFProductPlatformFromString(v43);
    v44 = CFDictionaryGetValue(v19, @"DeviceClass");
    v45 = v44;
    if (v44)
    {
      v46 = CFGetTypeID(v44);
      if (v46 == CFStringGetTypeID())
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    lowercaseString = [v47 lowercaseString];
    lowercaseString2 = [@"iPhone" lowercaseString];
    v50 = [lowercaseString containsString:lowercaseString2];

    if (v50)
    {
      v51 = 1;
    }

    else
    {
      lowercaseString3 = [@"iPod" lowercaseString];
      v53 = [lowercaseString containsString:lowercaseString3];

      if (v53)
      {
        v51 = 2;
      }

      else
      {
        lowercaseString4 = [@"iPad" lowercaseString];
        v55 = [lowercaseString containsString:lowercaseString4];

        if (v55)
        {
          v51 = 3;
        }

        else
        {
          lowercaseString5 = [@"AppleTV" lowercaseString];
          v57 = [lowercaseString containsString:lowercaseString5];

          if (v57)
          {
            v51 = 4;
          }

          else
          {
            lowercaseString6 = [@"Watch" lowercaseString];
            v59 = [lowercaseString containsString:lowercaseString6];

            if (v59)
            {
              v51 = 5;
            }

            else
            {
              lowercaseString7 = [@"AudioAccessory" lowercaseString];
              v61 = [lowercaseString containsString:lowercaseString7];

              if (v61)
              {
                v51 = 6;
              }

              else
              {
                lowercaseString8 = [@"RealityDevice" lowercaseString];
                v63 = [lowercaseString containsString:lowercaseString8];

                if (v63)
                {
                  v51 = 11;
                }

                else
                {
                  v51 = 0;
                }
              }
            }
          }
        }
      }
    }

    v11->_productClass = v51;
    v64 = CFDictionaryGetValue(v19, @"ReleaseType");
    v65 = v64;
    if (v64)
    {
      v66 = CFGetTypeID(v64);
      if (v66 == CFStringGetTypeID())
      {
        v67 = v65;
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {
      v67 = 0;
    }

    lowercaseString9 = [v67 lowercaseString];
    lowercaseString10 = [@"Beta" lowercaseString];
    v70 = [lowercaseString9 containsString:lowercaseString10];

    if (v70)
    {
      v71 = 1;
    }

    else
    {
      lowercaseString11 = [@"Carrier" lowercaseString];
      v73 = [lowercaseString9 containsString:lowercaseString11];

      if (v73)
      {
        v71 = 2;
      }

      else
      {
        lowercaseString12 = [@"Internal" lowercaseString];
        v75 = [lowercaseString9 containsString:lowercaseString12];

        if (v75)
        {
          v71 = 3;
        }

        else
        {
          v71 = 0;
        }
      }
    }

    v11->_productVariant = v71;
    v76 = CFDictionaryGetValue(v19, @"BuildVersion");
    v77 = v76;
    if (v76)
    {
      v78 = CFGetTypeID(v76);
      if (v78 == CFStringGetTypeID())
      {
        v79 = v77;
      }

      else
      {
        v79 = 0;
      }
    }

    else
    {
      v79 = 0;
    }

    v109 = 0;
    v110 = 0;
    v111 = 0;
    v80 = MEMORY[0x277CCAC38];
    v81 = v79;
    processInfo = [v80 processInfo];
    v83 = processInfo;
    if (processInfo)
    {
      [processInfo operatingSystemVersion];
    }

    else
    {
      v109 = 0;
      v110 = 0;
      v111 = 0;
    }

    v84 = [HMFSoftwareVersion alloc];
    v85 = [(HMFSoftwareVersion *)v84 initWithMajorVersion:v109 minorVersion:v110 updateVersion:v111 buildVersion:v81];

    if (v85)
    {
      objc_storeStrong(&v11->_softwareVersion, v85);
    }

    if (v17)
    {
      v86 = CFDictionaryGetValue(v19, @"WifiAddress");
      v87 = v86;
      if (v86)
      {
        v88 = CFGetTypeID(v86);
        if (v88 == CFStringGetTypeID())
        {
          v89 = v87;
          v90 = [[HMFMACAddress alloc] initWithMACAddressString:v89];
          WiFiInterfaceMACAddress = v11->_WiFiInterfaceMACAddress;
          v11->_WiFiInterfaceMACAddress = v90;
        }
      }
    }

    v92 = CFDictionaryGetValue(v19, @"bluetooth-le");
    v93 = v92;
    if (v92)
    {
      v94 = CFGetTypeID(v92);
      if (v94 == CFBooleanGetTypeID())
      {
        v11->_supportsBLE = CFBooleanGetValue(v93) != 0;
      }
    }

    v95 = CFDictionaryGetValue(v19, @"DeviceColor");
    v96 = v95;
    if (v95)
    {
      v97 = CFGetTypeID(v95);
      if (v97 == CFStringGetTypeID())
      {
        v98 = v96;
      }

      else
      {
        v98 = 0;
      }
    }

    else
    {
      v98 = 0;
    }

    v99 = v98;
    v100 = MGGetProductType();
    v101 = v99;
    v102 = v101;
    v103 = 0;
    if (v100 > 3348380075)
    {
      if (v100 == 4240173202)
      {
        goto LABEL_103;
      }

      v104 = 3348380076;
    }

    else
    {
      if (v100 == 1540760353)
      {
        goto LABEL_103;
      }

      v104 = 2702125347;
    }

    if (v100 != v104)
    {
LABEL_114:

      v11->_productColor = v103;
      CFRelease(v19);

LABEL_115:
      goto LABEL_116;
    }

LABEL_103:
    if (HMFEqualObjects(v101, @"1"))
    {
      v103 = 1;
    }

    else if (HMFEqualObjects(v102, @"2"))
    {
      v103 = 2;
    }

    else if (HMFEqualObjects(v102, @"7"))
    {
      v103 = 3;
    }

    else if (HMFEqualObjects(v102, @"8"))
    {
      v103 = 4;
    }

    else if (HMFEqualObjects(v102, @"9"))
    {
      v103 = 5;
    }

    else
    {
      v103 = 0;
    }

    goto LABEL_114;
  }

LABEL_116:
  v105 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)shouldFetchUserAssignedDeviceName
{
  v2 = +[HMFProcessInfo processInfo];
  v3 = [v2 valueForEntitlement:@"com.apple.developer.device-information.user-assigned-device-name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (void)dealloc
{
  if (self->_notificationToken != -1)
  {
    MGCancelNotifications();
  }

  v3.receiver = self;
  v3.super_class = __HMFMobileGestaltDataSource;
  [(__HMFMobileGestaltDataSource *)&v3 dealloc];
}

- (BOOL)shouldFetchProtectedKey:(id)key
{
  keyCopy = key;
  v4 = +[HMFProcessInfo processInfo];
  v5 = [v4 valueForEntitlement:@"com.apple.private.MobileGestalt.AllowedProtectedKeys"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 containsObject:keyCopy];
  return v8;
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMFSystemInfoNameDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end