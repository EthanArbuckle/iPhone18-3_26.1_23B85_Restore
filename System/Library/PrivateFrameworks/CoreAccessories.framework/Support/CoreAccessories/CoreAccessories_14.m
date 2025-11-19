void platform_analytics_connectionWillBeDestroyed()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v1 = v0;
    if (*v0)
    {
      if (gLogObjects)
      {
        v2 = gNumLogObjects < 7;
      }

      else
      {
        v2 = 1;
      }

      if (v2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_35_3();
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v4 = &_os_log_default;
        v3 = &_os_log_default;
      }

      else
      {
        v4 = *(gLogObjects + 48);
      }

      if (OUTLINED_FUNCTION_24())
      {
        v5 = *v1;
        *buf = 138412290;
        v60 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Connection will be destroyed: %@", buf, 0xCu);
      }

      v6 = acc_accInfo_copyAccessoryInfoDictionary(*(v1 + 120));
      v63[0] = @"connectionUUID";
      v7 = *v1;
      if (*v1)
      {
        v7 = CFRetain(v7);
      }

      v57 = v7;
      v56 = NSObjectIfNotNull(v7);
      OUTLINED_FUNCTION_5_14();
      v64[0] = v8;
      v63[1] = @"connectionType";
      acc_connection_getTypeString(v1);
      v55 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
      v54 = NSObjectIfNotNull(v55);
      OUTLINED_FUNCTION_5_14();
      v64[1] = v9;
      v63[2] = @"accessoryName";
      v53 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_Name];
      v52 = NSObjectIfNotNull(v53);
      OUTLINED_FUNCTION_5_14();
      v64[2] = v10;
      v63[3] = @"accessoryManufacturer";
      v51 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_Manufacturer];
      v50 = NSObjectIfNotNull(v51);
      OUTLINED_FUNCTION_5_14();
      v64[3] = v11;
      v63[4] = @"accessoryModel";
      v49 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_Model];
      v48 = NSObjectIfNotNull(v49);
      OUTLINED_FUNCTION_5_14();
      v64[4] = v12;
      v63[5] = @"accessoryHardwareVersion";
      v47 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_HardwareVersion];
      v46 = NSObjectIfNotNull(v47);
      OUTLINED_FUNCTION_5_14();
      v64[5] = v13;
      v63[6] = @"accessoryFirmwareVersionActive";
      v45 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
      v44 = NSObjectIfNotNull(v45);
      OUTLINED_FUNCTION_5_14();
      v64[6] = v14;
      v63[7] = @"accessoryFirmwareVersionPending";
      v43 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
      v42 = NSObjectIfNotNull(v43);
      OUTLINED_FUNCTION_5_14();
      v64[7] = v15;
      v63[8] = @"accessoryVID";
      v41 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_VendorID];
      v40 = NSObjectIfNotNull(v41);
      OUTLINED_FUNCTION_11_6();
      v64[8] = v16;
      v63[9] = @"accessoryPID";
      v58 = v6;
      v39 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_ProductID];
      v38 = NSObjectIfNotNull(v39);
      OUTLINED_FUNCTION_11_6();
      v64[9] = v17;
      v63[10] = @"unlockedSinceBoot";
      platform_system_unlockedSinceBoot();
      v37 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[10] = v37;
      v63[11] = @"deviceIsPowered";
      platform_power_getCurrentLimit(*v1);
      OUTLINED_FUNCTION_18_8();
      v36 = [NSNumber numberWithBool:?];
      v64[11] = v36;
      v63[12] = @"duration";
      v18 = [NSNumber numberWithInt:(acc_connection_getDurationMS(v1) / 1000)];
      v64[12] = v18;
      v63[13] = @"screenIsLocked";
      platform_system_isDeviceLocked();
      v19 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[13] = v19;
      v63[14] = @"authState";
      acc_authInfo_isAuthenticated(v1 + 48, 6u);
      v20 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[14] = v20;
      v63[15] = @"authVersion";
      v21 = [NSNumber numberWithInt:*(v1 + 68)];
      v64[15] = v21;
      v63[16] = @"ConnectedThroughAdapter";
      acc_connection_isConnectedThroughAdapter(v1);
      v22 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[16] = v22;
      v63[17] = @"AdapterVID";
      v23 = [NSNumber numberWithInt:acc_connection_getAdapterVID(v1)];
      v64[17] = v23;
      v63[18] = @"AdapterPID";
      acc_connection_getAdapterPID(v1);
      v24 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
      v64[18] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:19];
      v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

      v27 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_DigitalID);
      v28 = convertNSDataToNSString(v27, @"%02X");

      if (v28)
      {
        OUTLINED_FUNCTION_44_4();
      }

      v29 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_PrimaryPortNumber);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 setObject:v29 forKey:@"lightningPrimaryPortNumber"];
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v30 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_35_3();
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v30 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        *buf = 138412546;
        v60 = @"com.apple.accessories.connection.removed";
        v61 = 2112;
        v62 = v26;
        OUTLINED_FUNCTION_16_9(&_mh_execute_header, v32, v33, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", buf);
      }

      AnalyticsSendEvent();
    }
  }

  OUTLINED_FUNCTION_29();
}

void platform_analytics_availableCurrentNegotiated()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v2 = v0;
    if (*v0)
    {
      if (v0[1])
      {
        v3 = v1;
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects)
        {
          v6 = gNumLogObjects < 7;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v77 = 134218240;
            v78[0] = v4;
            LOWORD(v78[1]) = 1024;
            *(&v78[1] + 2) = v5;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v77);
          }

          v9 = &_os_log_default;
          v8 = &_os_log_default;
        }

        else
        {
          v9 = *(gLogObjects + 48);
        }

        if (OUTLINED_FUNCTION_24())
        {
          v11 = v2[1];
          v10 = v2[2];
          v77 = 67109634;
          LODWORD(v78[0]) = v3;
          WORD2(v78[0]) = 2112;
          *(v78 + 6) = v10;
          HIWORD(v78[1]) = 2112;
          v78[2] = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Available current set at: %d for endpoint: %@ (connection %@)", &v77, 0x1Cu);
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(v2);
        v13 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v75[0] = @"endpointUUID";
        v14 = v2[2];
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v73 = v14;
        v15 = NSObjectIfNotNull(v14);
        v72 = v15;
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &stru_10022D360;
        }

        v76[0] = v16;
        v75[1] = @"connectionUUID";
        v17 = v2[1];
        if (v17)
        {
          v17 = CFRetain(v17);
        }

        v71 = v17;
        v70 = NSObjectIfNotNull(v17);
        OUTLINED_FUNCTION_5_14();
        v76[1] = v18;
        v75[2] = @"connectionType";
        acc_connection_getTypeString(*v2);
        v69 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
        v68 = NSObjectIfNotNull(v69);
        OUTLINED_FUNCTION_5_14();
        v76[2] = v19;
        v75[3] = @"transportType";
        acc_endpoint_getTransportTypeString(v2);
        v67 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
        v66 = NSObjectIfNotNull(v67);
        OUTLINED_FUNCTION_5_14();
        v76[3] = v20;
        v75[4] = @"protocol";
        acc_endpoint_getProtocolString(v2);
        v65 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
        v64 = NSObjectIfNotNull(v65);
        OUTLINED_FUNCTION_5_14();
        v76[4] = v21;
        v75[5] = @"accessoryName";
        v63 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_Name];
        v62 = NSObjectIfNotNull(v63);
        OUTLINED_FUNCTION_5_14();
        v76[5] = v22;
        v75[6] = @"accessoryManufacturer";
        v61 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_Manufacturer];
        v60 = NSObjectIfNotNull(v61);
        OUTLINED_FUNCTION_5_14();
        v76[6] = v23;
        v75[7] = @"accessoryModel";
        v59 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_Model];
        v58 = NSObjectIfNotNull(v59);
        OUTLINED_FUNCTION_5_14();
        v76[7] = v24;
        v75[8] = @"accessoryHardwareVersion";
        v57 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_HardwareVersion];
        v56 = NSObjectIfNotNull(v57);
        OUTLINED_FUNCTION_5_14();
        v76[8] = v25;
        v75[9] = @"accessoryFirmwareVersionActive";
        v55 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
        v54 = NSObjectIfNotNull(v55);
        OUTLINED_FUNCTION_5_14();
        v76[9] = v26;
        v75[10] = @"accessoryFirmwareVersionPending";
        v53 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
        v52 = NSObjectIfNotNull(v53);
        OUTLINED_FUNCTION_5_14();
        v76[10] = v27;
        v75[11] = @"accessoryVID";
        v51 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_VendorID];
        v50 = NSObjectIfNotNull(v51);
        OUTLINED_FUNCTION_11_6();
        v76[11] = v28;
        v75[12] = @"accessoryPID";
        v74 = v13;
        v49 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_ProductID];
        v29 = NSObjectIfNotNull(v49);
        OUTLINED_FUNCTION_11_6();
        v76[12] = v30;
        v75[13] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v48 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
        v76[13] = v48;
        v75[14] = @"deviceIsPowered";
        platform_power_getCurrentLimit(v2[1]);
        OUTLINED_FUNCTION_18_8();
        v31 = [NSNumber numberWithBool:?];
        v76[14] = v31;
        v75[15] = @"availableCurrent";
        v32 = [NSNumber numberWithUnsignedShort:v3];
        v76[15] = v32;
        v75[16] = @"ConnectedThroughAdapter";
        v33 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v2)];
        v76[16] = v33;
        v75[17] = @"AdapterVID";
        acc_connection_getAdapterVID(*v2);
        v34 = [OUTLINED_FUNCTION_31_2() numberWithInt:?];
        v76[17] = v34;
        v75[18] = @"AdapterPID";
        acc_connection_getAdapterPID(*v2);
        v35 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v76[18] = v35;
        v36 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:19];
        v37 = [NSMutableDictionary dictionaryWithDictionary:v36];

        v38 = acc_connection_copyProperty(*v2, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          OUTLINED_FUNCTION_44_4();
        }

        CableType = platform_power_getCableType(v2[1]);
        if ((CableType - 1) <= 0xFFFFFFFD)
        {
          v40 = [NSNumber numberWithInt:CableType];
          [v37 setObject:v40 forKey:@"lightningCableType"];
        }

        v41 = gLogObjects;
        v42 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v43 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v77 = 134218240;
            v78[0] = v41;
            LOWORD(v78[1]) = 1024;
            *(&v78[1] + 2) = v42;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v77);
          }

          v43 = &_os_log_default;
          v45 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_24())
        {
          v77 = 138412546;
          v78[0] = @"com.apple.accessories.endpoint.setAvailableCurrent";
          LOWORD(v78[1]) = 2112;
          *(&v78[1] + 2) = v37;
          OUTLINED_FUNCTION_16_9(&_mh_execute_header, v46, v47, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v77);
        }

        AnalyticsSendEvent();
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void _getEndpointAndAccInfoForAuthPassedEvent()
{
  OUTLINED_FUNCTION_33();
  *v2 = 0;
  if (v0)
  {
    if (*v0)
    {
      v3 = v2;
      v4 = v1;
      v5 = acc_connection_copyEndpointUUIDs(v0);
      if (v5)
      {
        v6 = v5;
        Count = CFSetGetCount(v5);
        if (Count < 1)
        {
LABEL_81:
          CFRelease(v6);
          goto LABEL_82;
        }

        v8 = Count;
        __chkstk_darwin();
        v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        memset(v10, 170, v9);
        CFSetGetValues(v6, v10);
        v11 = 0;
        while (1)
        {
          v12 = *&v10[8 * v11];
          EndpointWithUUID = acc_manager_getEndpointWithUUID(v12);
          if (EndpointWithUUID)
          {
            if ((EndpointWithUUID[7] - 3) <= 1)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_12;
          }
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);
        *v3 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);

LABEL_12:
        v16 = *v3;
        if (*v3)
        {
          goto LABEL_68;
        }

        while (1)
        {
          v17 = *&v10[8 * v16];
          v18 = acc_manager_getEndpointWithUUID(v17);
          if (v18)
          {
            if ((v18[7] | 2) == 7)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_18;
          }
        }

        v19 = acc_endpoint_getAccessoryInfo(v18);
        *v3 = acc_accInfo_copyAccessoryInfoDictionary(v19);

LABEL_18:
        v20 = *v3;
        if (*v3)
        {
          goto LABEL_68;
        }

        while (1)
        {
          v21 = *&v10[8 * v20];
          v22 = acc_manager_getEndpointWithUUID(v21);
          if (v22)
          {
            if (v22[7] == 2)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_24;
          }
        }

        v23 = acc_endpoint_getAccessoryInfo(v22);
        *v3 = acc_accInfo_copyAccessoryInfoDictionary(v23);

LABEL_24:
        v24 = *v3;
        if (*v3)
        {
LABEL_68:
          if (v4 == 18)
          {
            v48 = *v3;
            if (!*v3)
            {
              v49 = 1;
              do
              {
                v50 = acc_manager_getEndpointWithUUID(*&v10[8 * v48]);
                if (v50)
                {
                  v51 = v50[7];
                  v52 = v51 == 18 || v51 == 14;
                  if (v52)
                  {
                    v53 = acc_endpoint_getAccessoryInfo(v50);
                    v50 = acc_accInfo_copyAccessoryInfoDictionary(v53);
                  }

                  else
                  {
                    v50 = 0;
                  }
                }

                if (v8 <= v49)
                {
                  break;
                }

                v48 = v49++;
              }

              while (!v50);
              *v3 = v50;
            }
          }

          goto LABEL_81;
        }

        while (1)
        {
          v25 = *&v10[8 * v24];
          v26 = acc_manager_getEndpointWithUUID(v25);
          v27 = v26;
          if (v26)
          {
            break;
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_68;
          }
        }

        v28 = acc_endpoint_getAccessoryInfo(v26);
        v29 = acc_accInfo_copyAccessoryInfoDictionary(v28);
        *v3 = v29;
        if (!v29 || acc_endpoint_getTransportType(v27) != 12)
        {
LABEL_67:

          goto LABEL_68;
        }

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v30 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_30_2(3.8521e-34);
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60);
          }

          v30 = &_os_log_default;
          v31 = &_os_log_default;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v60[0] = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Endpoint is inductive checking if unknown values are present during AuthPassedEvent.", v60, 2u);
        }

        v32 = *(acc_endpoint_getAccessoryInfo(v27) + 8);
        v59 = *(acc_endpoint_getAccessoryInfo(v27) + 16);
        v57 = *acc_endpoint_getAccessoryInfo(v27);
        v58 = v32;
        if (!v32)
        {
          goto LABEL_56;
        }

        v33 = +[NSNull null];
        if (v58 != v33 && v59)
        {
          v34 = +[NSNull null];
          v35 = v34;
          if (v59 != v34 && v57)
          {
            v56 = +[NSNull null];

            if (v57 != v56)
            {
              v36 = acc_endpoint_getAccessoryInfo(v27);
              v37 = CFGetTypeID(*(v36 + 8));
              if (v37 != CFStringGetTypeID())
              {
                goto LABEL_66;
              }

              v38 = acc_endpoint_getAccessoryInfo(v27);
              v39 = CFGetTypeID(*(v38 + 16));
              if (v39 != CFStringGetTypeID())
              {
                goto LABEL_66;
              }

              v40 = acc_endpoint_getAccessoryInfo(v27);
              v41 = CFGetTypeID(*v40);
              if (v41 != CFStringGetTypeID())
              {
                goto LABEL_66;
              }

              v42 = acc_endpoint_getAccessoryInfo(v27);
              if (CFStringCompare(*(v42 + 8), @"Unknown", 0))
              {
                goto LABEL_66;
              }

              v43 = acc_endpoint_getAccessoryInfo(v27);
              if (CFStringCompare(*(v43 + 16), @"Unknown", 0))
              {
                goto LABEL_66;
              }

              v44 = acc_endpoint_getAccessoryInfo(v27);
              if (CFStringCompare(*v44, @"Unknown", 0) || !acc_authInfo_isAuthenticated(*v27 + 48, 6u))
              {
                goto LABEL_66;
              }

              v45 = logObjectForModule_9();
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
LABEL_65:

                *v3 = 0;
LABEL_66:

                goto LABEL_67;
              }

              v60[0] = 0;
              v46 = "[#EventLogger] Unknown values for manufacturer, model, and name are present during AuthPassedEvent. Returning nil.";
LABEL_64:
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, v60, 2u);
              goto LABEL_65;
            }

LABEL_56:
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v45 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_30_2(3.8521e-34);
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v55, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60);
              }

              v45 = &_os_log_default;
              v47 = &_os_log_default;
            }

            if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_65;
            }

            v60[0] = 0;
            v46 = "[#EventLogger] Endpoint is inductive but values for manufacturer, model, or name are nil during AuthPassedEvent.";
            goto LABEL_64;
          }
        }

        goto LABEL_56;
      }
    }
  }

LABEL_82:
  OUTLINED_FUNCTION_29();
}

uint64_t _connectionContainsInductiveEndpoint(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v1 = acc_connection_copyEndpointUUIDs(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFSetGetCount(v1);
  if (Count < 1)
  {
    v12 = 0;
  }

  else
  {
    v4 = Count;
    __chkstk_darwin();
    v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v6, 170, v5);
    CFSetGetValues(v2, v6);
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = *&v6[8 * v7];
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v9);
      if (EndpointWithUUID)
      {
        if (acc_endpoint_getTransportType(EndpointWithUUID) == 12)
        {
          break;
        }
      }

      v7 = v8;
      if (v4 <= v8++)
      {
        v12 = 0;
        goto LABEL_12;
      }
    }

    v12 = 1;
  }

LABEL_12:
  CFRelease(v2);
  return v12;
}

void platform_analytics_connectionAuthUnsuccessfulForProtocol(CFStringRef *a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    if (*a1)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
      if (Copy)
      {
        v6 = Copy;
        if (a2 == 2)
        {
          v11 = logObjectForModule_9();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          *buf = 136315394;
          v85 = "_logAuthUnsuccessfulEvent";
          OUTLINED_FUNCTION_2_1();
          LODWORD(v87) = 2;
          OUTLINED_FUNCTION_15();
          v18 = 18;
LABEL_14:
          _os_log_impl(v13, v14, v15, v16, v17, v18);
LABEL_15:

          CFRelease(v6);
          return;
        }

        ConnectionWithUUID = acc_manager_getConnectionWithUUID(Copy);
        v8 = &audioProductCerts_endpoint_publish_onceToken;
        if (!ConnectionWithUUID)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v11 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v85 = v9;
              OUTLINED_FUNCTION_2_1();
              LODWORD(v87) = v10;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v11 = &_os_log_default;
            v12 = &_os_log_default;
          }

          if (!OUTLINED_FUNCTION_93())
          {
            goto LABEL_15;
          }

          *buf = 138412290;
          v85 = @"com.apple.accessories.connection.authUnsuccessful";
          OUTLINED_FUNCTION_15();
          v18 = 12;
          goto LABEL_14;
        }

        v19 = ConnectionWithUUID;
        _getEndpointAndAccInfoForAuthPassedEvent();
        v83 = v20;
        v11 = 0;
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v23 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v85 = v21;
            OUTLINED_FUNCTION_2_1();
            LODWORD(v87) = v22;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          v23 = &_os_log_default;
          v24 = &_os_log_default;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
LABEL_32:

          v30 = objc_alloc_init(NSMutableDictionary);
          if (v11)
          {
            v31 = gLogObjects;
            v32 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v33 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v85 = v31;
                OUTLINED_FUNCTION_2_1();
                LODWORD(v87) = v32;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
              }

              v33 = &_os_log_default;
              v34 = &_os_log_default;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *v19;
              v37 = "Unknown";
              if (a2 == 3)
              {
                v37 = "TimeOut";
              }

              if (a2 == 1)
              {
                v37 = "Failed";
              }

              *buf = 138412546;
              v85 = v36;
              v86 = 2080;
              v87 = v37;
              OUTLINED_FUNCTION_78(&_mh_execute_header, v33, v35, "[#EventLogger] Connection: %@ %s authentication", buf);
            }

            v38 = [v11 objectForKeyedSubscript:kACCInfo_Name];
            NSObjectIfNotNull(v38);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v39 = [v11 objectForKeyedSubscript:kACCInfo_Manufacturer];
            NSObjectIfNotNull(v39);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v40 = [v11 objectForKeyedSubscript:kACCInfo_Model];
            NSObjectIfNotNull(v40);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v41 = [v11 objectForKeyedSubscript:kACCInfo_HardwareVersion];
            NSObjectIfNotNull(v41);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v42 = [v11 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
            NSObjectIfNotNull(v42);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v43 = [v11 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
            NSObjectIfNotNull(v43);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v44 = [v11 objectForKeyedSubscript:kACCInfo_VendorID];
            v45 = NSObjectIfNotNull(v44);
            v46 = v45;
            if (v45)
            {
              v47 = v45;
            }

            else
            {
              v47 = &off_100233DE0;
            }

            [v30 setObject:v47 forKey:{@"accessoryVID", v83}];

            v48 = [v11 objectForKeyedSubscript:kACCInfo_ProductID];
            v49 = NSObjectIfNotNull(v48);
            v8 = v49;
            if (v49)
            {
              v50 = v49;
            }

            else
            {
              v50 = &off_100233DE0;
            }

            [v30 setObject:v50 forKey:@"accessoryPID"];
          }

          if (*v19)
          {
            v51 = CFRetain(*v19);
          }

          else
          {
            v51 = 0;
          }

          NSObjectIfNotNull(v51);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_16();
          [v30 setObject:? forKey:?];

          v52 = [NSString stringWithUTF8String:acc_connection_getTypeString(v19)];
          NSObjectIfNotNull(v52);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_16();
          [v30 setObject:? forKey:?];

          v53 = v83;
          v54 = [NSString stringWithUTF8String:acc_endpoint_getTransportTypeString(v83)];
          v55 = NSObjectIfNotNull(v54);
          v56 = v55;
          if (v55)
          {
            v57 = v55;
          }

          else
          {
            v57 = &stru_10022D360;
          }

          [v30 setObject:v57 forKey:{@"transportType", v83}];

          v58 = kACCEndpoint_Protocol_Strings[0];
          if (a3)
          {
            v59 = &audioProductCerts_endpoint_publish_onceToken;
            v60 = &audioProductCerts_endpoint_publish_onceToken;
            if (a3 > 0x12)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (!v53)
            {
              v59 = &audioProductCerts_endpoint_publish_onceToken;
              v60 = &audioProductCerts_endpoint_publish_onceToken;
              goto LABEL_65;
            }

            a3 = *(v53 + 28);
            v59 = &audioProductCerts_endpoint_publish_onceToken;
            v60 = &audioProductCerts_endpoint_publish_onceToken;
            if (a3 >= 0x13)
            {
LABEL_65:
              v61 = [NSString stringWithUTF8String:v58];
              v62 = NSObjectIfNotNull(v61);
              v63 = v62;
              if (v62)
              {
                v64 = v62;
              }

              else
              {
                v64 = &stru_10022D360;
              }

              [v30 setObject:v64 forKey:@"protocol"];

              platform_system_unlockedSinceBoot();
              v65 = [OUTLINED_FUNCTION_23_4() numberWithBool:?];
              OUTLINED_FUNCTION_36_2();

              platform_power_getCurrentLimit(*v19);
              OUTLINED_FUNCTION_18_8();
              v66 = [NSNumber numberWithBool:?];
              OUTLINED_FUNCTION_36_2();

              v67 = [NSNumber numberWithInt:*(v19 + 68)];
              OUTLINED_FUNCTION_36_2();

              acc_connection_isConnectedThroughAdapter(v19);
              v68 = [OUTLINED_FUNCTION_23_4() numberWithBool:?];
              OUTLINED_FUNCTION_36_2();

              acc_connection_getAdapterVID(v19);
              v69 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
              OUTLINED_FUNCTION_36_2();

              acc_connection_getAdapterPID(v19);
              v70 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
              OUTLINED_FUNCTION_36_2();

              v71 = acc_connection_copyProperty(v19, kCFACCProperties_Connection_PrimaryPortNumber);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                OUTLINED_FUNCTION_36_2();
              }

              CableType = platform_power_getCableType(*v19);
              if ((CableType - 1) <= 0xFFFFFFFD)
              {
                v73 = [NSNumber numberWithInt:CableType];
                OUTLINED_FUNCTION_44_4();
              }

              v74 = [NSNumber numberWithInt:a2];
              [v30 setObject:v74 forKey:@"authStatusCode"];

              v75 = v60[491];
              v76 = *(v59 + 984);
              if (v75 && v76 >= 7)
              {
                v77 = *(v75 + 48);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v85 = v75;
                  OUTLINED_FUNCTION_2_1();
                  LODWORD(v87) = v76;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                v77 = &_os_log_default;
                v78 = &_os_log_default;
              }

              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v85 = @"com.apple.accessories.connection.authUnsuccessful";
                v86 = 2112;
                v87 = v30;
                OUTLINED_FUNCTION_78(&_mh_execute_header, v77, v79, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", buf);
              }

              AnalyticsSendEvent();
              goto LABEL_15;
            }
          }

          v58 = kACCEndpoint_Protocol_Strings[a3];
          goto LABEL_65;
        }

        v25 = *v19;
        if (v83)
        {
          v26 = *(v83 + 16);
          v27 = kACCEndpoint_Protocol_Strings[0];
          if (!a3)
          {
            v28 = *(v83 + 28);
            if (v28 >= 0x13)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v26 = 0;
          v27 = kACCEndpoint_Protocol_Strings[0];
          if (!a3)
          {
            goto LABEL_31;
          }
        }

        v28 = a3;
        if (a3 <= 0x12)
        {
LABEL_30:
          v27 = kACCEndpoint_Protocol_Strings[v28];
        }

LABEL_31:
        *buf = 136316418;
        v85 = "_logAuthUnsuccessfulEvent";
        v86 = 2112;
        v87 = v25;
        v88 = 1024;
        v89 = a3;
        v90 = 2112;
        v91 = v26;
        v92 = 2080;
        v93 = v27;
        v94 = 2112;
        v95 = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[#EventLogger] %s: connection %@, protocol %{coreacc:ACCEndpoint_Protocol_t}d, endpoint %@ (%s), accInfo %@", buf, 0x3Au);
        goto LABEL_32;
      }
    }
  }
}

void platform_analytics_iap1_lingoesSupportedDidChange(uint64_t *a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50(a1);
    if (v3)
    {
      if (*v3)
      {
        v4 = v2;
        if (gLogObjects)
        {
          v5 = gNumLogObjects < 7;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v7 = &_os_log_default;
          v6 = &_os_log_default;
        }

        else
        {
          v7 = *(gLogObjects + 48);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v8 = **v1;
          OUTLINED_FUNCTION_4_16(v1[2], 5.778e-34);
          v48 = v9;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v10, v11, "[#EventLogger] iAP1 lingoes reported for endpoint: %@ (connection %@)");
        }

        v44[0] = @"endpointUUID";
        v12 = v1[2];
        if (v12)
        {
          v12 = CFRetain(v12);
        }

        v43 = v12;
        v13 = NSObjectIfNotNull(v12);
        v42 = v13;
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &stru_10022D360;
        }

        v45[0] = v14;
        v44[1] = @"connectionUUID";
        v15 = OUTLINED_FUNCTION_26_5();
        if (v15)
        {
          v15 = CFRetain(v15);
        }

        v41 = v15;
        v16 = NSObjectIfNotNull(v15);
        OUTLINED_FUNCTION_40_4();
        v45[1] = v17;
        v44[2] = @"connectionType";
        acc_connection_getTypeString(*v1);
        v39 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v18 = NSObjectIfNotNull(v39);
        OUTLINED_FUNCTION_40_4();
        v45[2] = v19;
        v44[3] = @"transportType";
        acc_endpoint_getTransportTypeString(v1);
        v38 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v20 = NSObjectIfNotNull(v38);
        OUTLINED_FUNCTION_40_4();
        v45[3] = v21;
        v44[4] = @"protocol";
        v22 = [NSString stringWithUTF8String:acc_endpoint_getProtocolString(v1)];
        v23 = NSObjectIfNotNull(v22);
        OUTLINED_FUNCTION_40_4();
        v45[4] = v24;
        v44[5] = @"lingoesBitmask";
        v25 = [NSNumber numberWithUnsignedInt:v4];
        v45[5] = v25;
        v44[6] = @"ConnectedThroughAdapter";
        v26 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v1)];
        v45[6] = v26;
        v44[7] = @"AdapterVID";
        v27 = [NSNumber numberWithInt:acc_connection_getAdapterVID(*v1)];
        v45[7] = v27;
        v44[8] = @"AdapterPID";
        acc_connection_getAdapterPID(*v1);
        v28 = [OUTLINED_FUNCTION_37_1() numberWithInt:?];
        v45[8] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:9];
        v40 = [NSMutableDictionary dictionaryWithDictionary:v29];

        v30 = gLogObjects;
        v31 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v32 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v46 = 134218240;
            v47 = v30;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v48) = v31;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v32 = &_os_log_default;
          v33 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          v46 = 138412546;
          v47 = @"com.apple.accessories.endpoint.iap1.lingoesSupported";
          OUTLINED_FUNCTION_13_7();
          v48 = v40;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v34, v35, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@");
        }

        AnalyticsSendEvent();
      }
    }
  }
}

void platform_analytics_iap2_featuresSupportedDidChange()
{
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    OUTLINED_FUNCTION_50(v1);
    if (v2)
    {
      if (*v2 && v2[1])
      {
        v3 = gLogObjects;
        v4 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v5 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v101 = 134218240;
            v102 = v3;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v103) = v4;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v5 = &_os_log_default;
          v6 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          v7 = *(v0 + 1);
          v8 = *(*v0 + 8);
          v101 = 138412546;
          v102 = v7;
          OUTLINED_FUNCTION_13_7();
          v103 = v9;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v10, v11, "[#EventLogger] iAP2 messages reported for endpoint: %@ (connection %@)");
        }

        v12 = 0;
        for (i = 0; i != 29; ++i)
        {
          v14 = iap2_identification_isIdentifiedForFeature(v0);
          v15 = 1 << i;
          if (!v14)
          {
            v15 = 0;
          }

          v12 |= v15;
        }

        v16 = gLogObjects;
        v17 = gNumLogObjects;
        if (gLogObjects)
        {
          v18 = gNumLogObjects < 7;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v101 = 134218240;
            v102 = v16;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v103) = v17;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v20 = &_os_log_default;
          v19 = &_os_log_default;
        }

        else
        {
          v20 = *(gLogObjects + 48);
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v101 = 67109120;
          LODWORD(v102) = v12;
          OUTLINED_FUNCTION_43_2(&_mh_execute_header, v21, v22, "[#EventLogger] True FeaturesMask: 0x%08x");
        }

        v23 = gLogObjects;
        v24 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v25 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v101 = 134218240;
            v102 = v23;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v103) = v24;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v25 = &_os_log_default;
          v26 = &_os_log_default;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v101 = 67109120;
          LODWORD(v102) = v12 & 0x136FC80;
          OUTLINED_FUNCTION_43_2(&_mh_execute_header, v27, v28, "[#EventLogger] Filtered FeaturesMask: 0x%08x");
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(*v0);
        v30 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v99[0] = @"endpointUUID";
        v31 = *(v0 + 1);
        if (v31)
        {
          v31 = CFRetain(v31);
        }

        v97 = v31;
        v32 = NSObjectIfNotNull(v31);
        v96 = v32;
        if (v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = &stru_10022D360;
        }

        v100[0] = v33;
        v99[1] = @"connectionUUID";
        v34 = *(*v0 + 8);
        if (v34)
        {
          v34 = CFRetain(v34);
        }

        v95 = v34;
        v94 = NSObjectIfNotNull(v34);
        OUTLINED_FUNCTION_5_14();
        v100[1] = v35;
        v99[2] = @"connectionType";
        v36 = OUTLINED_FUNCTION_26_5();
        acc_connection_getTypeString(v36);
        v93 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v92 = NSObjectIfNotNull(v93);
        OUTLINED_FUNCTION_5_14();
        v100[2] = v37;
        v99[3] = @"transportType";
        v38 = OUTLINED_FUNCTION_41_2();
        acc_endpoint_getTransportTypeString(v38);
        v91 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v90 = NSObjectIfNotNull(v91);
        OUTLINED_FUNCTION_5_14();
        v100[3] = v39;
        v99[4] = @"protocol";
        v40 = OUTLINED_FUNCTION_41_2();
        acc_endpoint_getProtocolString(v40);
        v89 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v88 = NSObjectIfNotNull(v89);
        OUTLINED_FUNCTION_5_14();
        v100[4] = v41;
        v99[5] = @"accessoryName";
        v87 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_Name];
        v86 = NSObjectIfNotNull(v87);
        OUTLINED_FUNCTION_5_14();
        v100[5] = v42;
        v99[6] = @"accessoryManufacturer";
        v85 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_Manufacturer];
        v84 = NSObjectIfNotNull(v85);
        OUTLINED_FUNCTION_5_14();
        v100[6] = v43;
        v99[7] = @"accessoryModel";
        v83 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_Model];
        v82 = NSObjectIfNotNull(v83);
        OUTLINED_FUNCTION_5_14();
        v100[7] = v44;
        v99[8] = @"accessoryHardwareVersion";
        v81 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_HardwareVersion];
        v80 = NSObjectIfNotNull(v81);
        OUTLINED_FUNCTION_5_14();
        v100[8] = v45;
        v99[9] = @"accessoryFirmwareVersionActive";
        v79 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
        v78 = NSObjectIfNotNull(v79);
        OUTLINED_FUNCTION_5_14();
        v100[9] = v46;
        v99[10] = @"accessoryFirmwareVersionPending";
        v77 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
        v76 = NSObjectIfNotNull(v77);
        OUTLINED_FUNCTION_5_14();
        v100[10] = v47;
        v99[11] = @"accessoryVID";
        v75 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_VendorID];
        v74 = NSObjectIfNotNull(v75);
        OUTLINED_FUNCTION_39_2();
        v100[11] = v48;
        v99[12] = @"accessoryPID";
        v98 = v30;
        v73 = [(__CFDictionary *)v30 objectForKeyedSubscript:kACCInfo_ProductID];
        v49 = NSObjectIfNotNull(v73);
        OUTLINED_FUNCTION_39_2();
        v100[12] = v50;
        v99[13] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v72 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
        v100[13] = v72;
        v99[14] = @"featuresBitmask";
        v51 = [NSNumber numberWithInteger:v12 & 0x136FC80];
        v100[14] = v51;
        v99[15] = @"carPlayCapable";
        iap2_identification_isIdentifiedForCarPlay(v0);
        v52 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
        v100[15] = v52;
        v99[16] = @"screenIsLocked";
        platform_system_isDeviceLocked();
        v53 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
        v100[16] = v53;
        v99[17] = @"ConnectedThroughAdapter";
        v54 = OUTLINED_FUNCTION_26_5();
        v55 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(v54)];
        v100[17] = v55;
        v99[18] = @"AdapterVID";
        v56 = OUTLINED_FUNCTION_26_5();
        acc_connection_getAdapterVID(v56);
        v57 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v100[18] = v57;
        v99[19] = @"AdapterPID";
        v58 = OUTLINED_FUNCTION_26_5();
        acc_connection_getAdapterPID(v58);
        v59 = [OUTLINED_FUNCTION_31_2() numberWithInt:?];
        v100[19] = v59;
        v60 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:20];
        v61 = [NSMutableDictionary dictionaryWithDictionary:v60];

        v62 = OUTLINED_FUNCTION_26_5();
        v63 = acc_connection_copyProperty(v62, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v61 setObject:v63 forKey:@"lightningPrimaryPortNumber"];
        }

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v64 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v64 = &_os_log_default;
          v65 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(@"com.apple.accessories.endpoint.iap2.featuresSupported", 5.778e-34);
          v103 = v61;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v66, v67, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@");
        }

        AnalyticsSendEvent();
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void __platform_analytics_endpointAccessoryInfoDidChange_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#EventLogger] [#powerlog] powerlogDict: %@", &v3, 0xCu);
}

void _logAuthPassedEvent_cold_2()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v1, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v2, v3, v4, v5, 0);
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 48);
  }

  if (OUTLINED_FUNCTION_93())
  {
    OUTLINED_FUNCTION_15();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }
}

uint64_t acc_protocolParser_iAP2_create(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10100407125D048uLL);
  *a1 = v2;
  if (!v2)
  {
    return 0;
  }

  *v2 = 0;
  v2[2] = 0;
  *(v2 + 6) = 0;
  *(v2 + 1) = 0;
  v2[8] = 0;
  v3 = 1;
  *(v2 + 18) = 0;
  return v3;
}

BOOL acc_protocolParser_iAP2_reset(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 18) = 0;
  }

  return a1 != 0;
}

BOOL acc_protocolParser_iAP2_destroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return a1 != 0;
}

void acc_protocolParser_iAP2_run_cold_21(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "iAP2 Packet Length: %d", v3, 8u);
}

void acc_protocolParser_iAP2_run_cold_23(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "iAP2 Payload Length: %d", v3, 8u);
}

uint64_t iap2_wifisharing_RequestWiFiInformation(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (iAP2MsgGetMsgID(a2) == 22272)
    {
      v11 = a1;
      OUTLINED_FUNCTION_44_3();
      FirstParam = iAP2MsgGetFirstParam(a2, 0);
      if (FirstParam)
      {
        NextParam = FirstParam;
        do
        {
          ParamID = iAP2MsgGetParamID(NextParam);
          v8 = gLogObjects;
          v9 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 39)
          {
            v10 = *(gLogObjects + 304);
          }

          else
          {
            v10 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v13 = v8;
              v14 = 1024;
              v15 = v9;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v10 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v13) = ParamID;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
          }

          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
        }

        while (NextParam);
      }

      return platform_wifisharing_request_device_wifi_information(*(v11 + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id iap2_wifisharing_AccessoryWiFiConfigurationInformation(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v49 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  if (iAP2MsgGetMsgID(a2) != 22275)
  {
    return 0;
  }

  v45 = a1;
  OUTLINED_FUNCTION_44_3();
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
LABEL_38:
    isIdentifiedForWirelessCarPlay = iap2_identification_isIdentifiedForWirelessCarPlay(v45);
    v3 = platform_wifisharing_accessory_wifi_configuration_information(*(v45 + 8), v8, v9, v10, v11, v12, isIdentifiedForWirelessCarPlay);
    kdebug_trace();
    if (!v8)
    {
      goto LABEL_40;
    }

LABEL_39:
    CFRelease(v8);
    goto LABEL_40;
  }

  NextParam = FirstParam;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = kCFAllocatorDefault;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    switch(ParamID)
    {
      case 0:
        ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
        v15 = OUTLINED_FUNCTION_3_17();
        DataAsData = iAP2MsgGetDataAsData(v15, v16);
        if (!v49)
        {
          v18 = DataAsData;
          if (v8)
          {
            CFRelease(v8);
          }

          v8 = CFDataCreate(v13, v18, ParamValueLen);
          goto LABEL_35;
        }

        v39 = logObjectForModule_14();
        if (!OUTLINED_FUNCTION_5_15(v39))
        {
          goto LABEL_60;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v51 = 0;
        *&v51[4] = 1024;
        *&v51[6] = MsgID;
        goto LABEL_59;
      case 1:
        v19 = OUTLINED_FUNCTION_3_17();
        DataAsString = iAP2MsgGetDataAsString(v19, v20);
        if (v49)
        {
          v44 = logObjectForModule_14();
          if (!OUTLINED_FUNCTION_5_15(v44))
          {
            goto LABEL_60;
          }

LABEL_58:
          iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          OUTLINED_FUNCTION_0();
LABEL_59:
          _os_log_error_impl(&_mh_execute_header, ParamValueLen, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
          goto LABEL_60;
        }

        ParamValueLen = DataAsString;
        if (v9)
        {
          CFRelease(v9);
        }

        v9 = OUTLINED_FUNCTION_8_8();
        goto LABEL_35;
      case 2:
        v34 = OUTLINED_FUNCTION_3_17();
        v36 = iAP2MsgGetDataAsString(v34, v35);
        if (!v49)
        {
          ParamValueLen = v36;
          if (v10)
          {
            CFRelease(v10);
          }

          v10 = OUTLINED_FUNCTION_8_8();
LABEL_35:
          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
          if (!NextParam)
          {
            goto LABEL_38;
          }

          continue;
        }

        v42 = logObjectForModule_14();
        if (OUTLINED_FUNCTION_5_15(v42))
        {
          goto LABEL_58;
        }

LABEL_60:
        v3 = 0;
        if (v8)
        {
          goto LABEL_39;
        }

LABEL_40:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        return v3;
      case 3:
        v28 = OUTLINED_FUNCTION_3_17();
        DataAsU8 = iAP2MsgGetDataAsU8(v28, v29);
        if (v49)
        {
          v43 = logObjectForModule_14();
          if (OUTLINED_FUNCTION_5_15(v43))
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        }

        ParamValueLen = DataAsU8;
        if (v11)
        {
          CFRelease(v11);
        }

        valuePtr = ParamValueLen;
        v11 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_35;
      case 4:
        v31 = OUTLINED_FUNCTION_3_17();
        v33 = iAP2MsgGetDataAsU8(v31, v32);
        if (!v49)
        {
          ParamValueLen = v33;
          if (v12)
          {
            CFRelease(v12);
          }

          v47 = ParamValueLen;
          v12 = CFNumberCreate(v13, kCFNumberSInt32Type, &v47);
          goto LABEL_35;
        }

        v41 = logObjectForModule_14();
        if (!OUTLINED_FUNCTION_5_15(v41))
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      case 5:
      case 6:
        goto LABEL_35;
      default:
        v22 = v8;
        v46 = v9;
        v23 = v10;
        v24 = v11;
        v25 = v12;
        v26 = gLogObjects;
        v27 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 39)
        {
          ParamValueLen = *(gLogObjects + 304);
        }

        else
        {
          ParamValueLen = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v51 = v26;
            *&v51[8] = 1024;
            v52 = v27;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (os_log_type_enabled(ParamValueLen, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v51 = ParamID;
          _os_log_impl(&_mh_execute_header, ParamValueLen, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
        }

        v12 = v25;
        v11 = v24;
        v10 = v23;
        v8 = v22;
        v13 = kCFAllocatorDefault;
        v9 = v46;
        goto LABEL_35;
    }
  }
}

const __CFNumber *iap2_wifisharing_DeviceWiFiInformation(uint64_t *a1, CFDictionaryRef theDict)
{
  Value = 0;
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationStatus);
      v5 = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationSecurityType);
      v6 = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationWifiSSID);
      v7 = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationWifiPassphrase);
      iAP2MsgInit((a1 + 15), 22273, a1[24], 0xFFFF, 0, 0);
      if (Value)
      {
        LOWORD(valuePtr) = 0;
        CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
        v8 = OUTLINED_FUNCTION_6_11();
        Value = iAP2MsgAddU8Param(v8, v9, 0, v10);
        v11 = valuePtr;
        v12 = &off_1001C3000;
        if (v5)
        {
          if (!valuePtr)
          {
            v33 = 0;
            CFNumberGetValue(v5, kCFNumberShortType, &v33);
            v13 = OUTLINED_FUNCTION_6_11();
            if (!iAP2MsgAddU8Param(v13, v14, 1, v15))
            {
              v16 = gLogObjects;
              v17 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 39)
              {
                v18 = *(gLogObjects + 304);
              }

              else
              {
                v18 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  valuePtr = 134218240;
                  v35 = v16;
                  OUTLINED_FUNCTION_2_1();
                  v36 = v17;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
                }
              }

              v12 = &off_1001C3000;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to add security type to message", &valuePtr, 2u);
              }
            }
          }
        }

        if (v6)
        {
          if (!v11)
          {
            v19 = OUTLINED_FUNCTION_6_11();
            if (!iAP2MsgAddCFStringParam(v19, v20, 2, v6))
            {
              v21 = gLogObjects;
              v22 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 39)
              {
                v23 = *(gLogObjects + 304);
              }

              else
              {
                v23 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  valuePtr = *(v12 + 71);
                  v35 = v21;
                  OUTLINED_FUNCTION_2_1();
                  v36 = v22;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
                }
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to add SSID to message", &valuePtr, 2u);
              }
            }
          }
        }

        if (v7)
        {
          if (!v11)
          {
            v24 = OUTLINED_FUNCTION_6_11();
            if (!iAP2MsgAddCFStringParam(v24, v25, 3, v7))
            {
              v26 = gLogObjects;
              v27 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 39)
              {
                v28 = *(gLogObjects + 304);
              }

              else
              {
                v28 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  valuePtr = *(v12 + 71);
                  v35 = v26;
                  OUTLINED_FUNCTION_2_1();
                  v36 = v27;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
                }
              }

              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to add passphrase to message", &valuePtr, 2u);
              }
            }
          }
        }

        if (Value)
        {
          Value = iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
          OUTLINED_FUNCTION_44_3();
        }
      }
    }
  }

  return Value;
}

uint64_t *iap2_wifisharing_RequestAccessoryWiFiConfigurationInformation(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v3 = 0;
    if (iap2_identification_checkRequiredMsgIDs(a1, &_kMsgAccessoryWiFiCredentialsSharingList, 2, &v3))
    {
      iAP2MsgInit((v1 + 15), 22274, v1[24], 0xFFFF, 0, 0);
      v1 = iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
      OUTLINED_FUNCTION_44_3();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

_WORD *_createFeature_6(_WORD *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_6(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t _startFeatureFromDevice_3(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = gLogObjects;
    v3 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 39)
    {
      v4 = *(gLogObjects + 304);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218240;
        v7 = v2;
        v8 = 1024;
        v9 = v3;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v6);
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "iAP2_WiFiSharing _startFeatureFromDevice", &v6, 2u);
    }

    result = iap2_feature_getFeature(v1, 0x16u);
    if (result)
    {
      iap2_wifisharing_RequestAccessoryWiFiConfigurationInformation(v1);
      return 1;
    }
  }

  return result;
}

uint64_t _checkIdentificationInfo_17(uint64_t a1)
{
  v35 = -86;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_kMsgDeviceWiFiCredentialsSharingList, 2u, &v35);
  if (v2)
  {
    return v2;
  }

  v3 = v35;
  v4 = iap2_identification_checkIdentificationMsgIDs(a1, &_kMsgAccessoryWiFiCredentialsSharingList, 2u, &v35);
  v5 = v4;
  v6 = 0;
  v7 = v35;
  v8 = 0;
  if (v35 | v3 && !v4)
  {
    iap2_features_createFeature(a1, 0x16u);
    iap2_identification_setIdentifiedForFeature(a1);
    v6 = v7;
    v8 = v3;
  }

  Feature = iap2_feature_getFeature(a1, 0x16u);
  if (Feature)
  {
    *Feature = v8;
    Feature[1] = v6;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 39)
  {
    v12 = *(gLogObjects + 304);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v36 = 134218240;
      v37 = v10;
      OUTLINED_FUNCTION_2_1();
      v38 = v11;
      OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_10(v25, v26, v27, v28, v29);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v36) = 0;
    OUTLINED_FUNCTION_59_1();
    _os_log_debug_impl(v17, v18, OS_LOG_TYPE_DEBUG, v19, v20, 2u);
    if (!v6)
    {
      return v5;
    }
  }

  else
  {
LABEL_14:
    if (!v6)
    {
      return v5;
    }
  }

  v13 = gLogObjects;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 39)
  {
    v15 = *(gLogObjects + 304);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v36 = 134218240;
      v37 = v13;
      OUTLINED_FUNCTION_2_1();
      v38 = v14;
      OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_10(v30, v31, v32, v33, v34);
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v36) = 0;
    OUTLINED_FUNCTION_59_1();
    _os_log_debug_impl(v21, v22, OS_LOG_TYPE_DEBUG, v23, v24, 2u);
  }

  return v5;
}

uint64_t platform_systemInfo_copyUniqueDeviceID()
{
  v0 = IOServiceMatching("IOUSBDeviceController");
  if (!v0)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceDescription", kCFAllocatorDefault, 0);
  v4 = CFProperty;
  if (CFProperty)
  {
    v5 = [CFProperty objectForKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v5 = 0;
  }

  IOObjectRelease(v2);

  return v5;
}

uint64_t acc_protocolRouter_initProtocolLayer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (!*(result + 56) || (result = acc_protocolRouter_destroyProtocolLayer(result, a2, a3, a4, a5, a6, a7, a8), result))
    {
      switch(*(v8 + 28))
      {
        case 3:
          if (*v8)
          {
            isAuthenticated = acc_connection_isAuthenticated(*v8, 0);
          }

          else
          {
            isAuthenticated = 0;
          }

          platform_iapd_bridge_accessory_connected(v8, isAuthenticated);
          return 1;
        case 4:
          v9 = iap2_endpoint_create(v8);
          goto LABEL_18;
        case 5:
        case 6:
        case 7:
          v9 = ea_endpoint_create(v8);
          goto LABEL_18;
        case 8:
          v9 = oobPairing_endpoint_create(v8);
          goto LABEL_18;
        case 0xA:
          v9 = accAuthProtocol_endpoint_create(v8);
          goto LABEL_18;
        case 0xB:
          v9 = configStream_endpoint_create(v8);
          goto LABEL_18;
        case 0xD:
          v9 = audioProductCerts_endpoint_create(v8);
          goto LABEL_18;
        case 0xE:
          v9 = mfi4Auth_endpoint_create(v8);
          goto LABEL_18;
        case 0xF:
          v9 = accSNTPTimeSync_endpoint_create(v8);
          goto LABEL_18;
        case 0x10:
          result = platform_systemInfo_supportsQiAuth();
          if (!result)
          {
            return result;
          }

          v9 = qiAuth_endpoint_create(v8);
LABEL_18:
          *(v8 + 56) = v9;
          result = v9 != 0;
          break;
        case 0x11:
          v9 = t56_endpoint_create(v8);
          goto LABEL_18;
        case 0x12:
          v9 = genericMFi_endpoint_create(v8);
          goto LABEL_18;
        default:
          if (gLogObjects)
          {
            v11 = gNumLogObjects < 17;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_2_21();
              OUTLINED_FUNCTION_26_0(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, 0);
            }
          }

          else
          {
            v18 = *(gLogObjects + 128);
          }

          result = OUTLINED_FUNCTION_93();
          if (result)
          {
            v19 = *(v8 + 28);
            OUTLINED_FUNCTION_84();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10_5(v20, v21, v22, v23, v24);
            return 0;
          }

          return result;
      }
    }
  }

  return result;
}

uint64_t acc_protocolRouter_destroyProtocolLayer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    switch(*(result + 28))
    {
      case 3:
        platform_iapd_bridge_accessory_disconnected(*(result + 16));
        goto LABEL_36;
      case 4:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = iap2_endpoint_destroy((result + 56));
        break;
      case 5:
      case 6:
      case 7:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = ea_endpoint_destroy(result + 56);
        break;
      case 8:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = oobPairing_endpoint_destroy((result + 56));
        break;
      case 0xA:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = accAuthProtocol_endpoint_destroy((result + 56), a2, a3, a4, a5, a6, a7, a8);
        break;
      case 0xB:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = configStream_endpoint_destroy(result + 56);
        break;
      case 0xD:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = audioProductCerts_endpoint_destroy(result + 56);
        break;
      case 0xE:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = mfi4Auth_endpoint_destroy((result + 56));
        break;
      case 0xF:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = accSNTPTimeSync_endpoint_destroy(result + 56);
        break;
      case 0x10:
        result = platform_systemInfo_supportsQiAuth();
        if (!result)
        {
          return result;
        }

        v17 = *(v8 + 56);
        v16 = (v8 + 56);
        if (v17)
        {

          result = qiAuth_endpoint_destroy(v16, v9, v10, v11, v12, v13, v14, v15);
        }

        else
        {
LABEL_36:
          result = 1;
        }

        break;
      case 0x11:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = t56_endpoint_destroy((result + 56), a2, a3, a4, a5, a6, a7, a8);
        break;
      case 0x12:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = genericMFi_endpoint_destroy(result + 56, a2, a3, a4, a5, a6, a7, a8);
        break;
      default:
        if (gLogObjects)
        {
          v18 = gNumLogObjects < 17;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_21();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v19, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21, v22, v23, v24, 0);
          }
        }

        else
        {
          v25 = *(gLogObjects + 128);
        }

        result = OUTLINED_FUNCTION_93();
        if (result)
        {
          v26 = *(v8 + 28);
          OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_10_5(v27, v28, v29, v30, v31);
          return 0;
        }

        return result;
    }
  }

  return result;
}

BOOL acc_protocolRouter_routeOutgoingSecureTunnelDataForClient(uint64_t a1, int a2, const __CFData *a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (*(a1 + 28) == 14)
    {
      if (mfi4Auth_endpoint_processOutgoingSecureTunnelDataForClient(*(a1 + 56), a2, a3))
      {
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_9();
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 < 17;
      }

      if (v8)
      {
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_3_10();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v9, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14, v37);
        }
      }

      else
      {
        v15 = *(v3 + 128);
      }

      if (OUTLINED_FUNCTION_93())
      {
        v16 = *(a1 + 28);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_10_5(v17, v18, v19, v20, v21);
      }
    }

    if (gLogObjects && gNumLogObjects >= 17)
    {
      v22 = *(gLogObjects + 128);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v31, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v33, v34, v35, v36, 0);
    }

    result = OUTLINED_FUNCTION_21();
    if (result)
    {
      v23 = *(a1 + 16);
      v24 = *(a1 + 28);
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v25, v26, "Error routing incoming secure tunnel data for endpoint UUID: %@ with protocol: %{coreacc:ACCEndpoint_Protocol_t}d!", v27, v28, v29, v30, v37);
      return 0;
    }
  }

  return result;
}

uint64_t acc_protocolRouter_setSecureTunnelDataTypeHandler(uint64_t result, unsigned int a2, void *a3)
{
  if (result)
  {
    v5 = result;
    if (*(result + 28) == 14)
    {
      if (mfi4Auth_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler(*(result + 16), a2, a3))
      {
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_9();
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4 < 17;
      }

      if (v7)
      {
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_3_10();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, v36);
        }
      }

      else
      {
        v14 = *(v3 + 128);
      }

      if (OUTLINED_FUNCTION_93())
      {
        v15 = *(v5 + 28);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_10_5(v16, v17, v18, v19, v20);
      }
    }

    if (gLogObjects && gNumLogObjects >= 17)
    {
      v21 = *(gLogObjects + 128);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v30, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v32, v33, v34, v35, 0);
    }

    result = OUTLINED_FUNCTION_21();
    if (result)
    {
      v22 = *(v5 + 16);
      v23 = *(v5 + 28);
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v24, v25, "Error routing incoming handler for endpoint UUID: %@ with protocol: %{coreacc:ACCEndpoint_Protocol_t}d!", v26, v27, v28, v29, v36);
      return 0;
    }
  }

  return result;
}

uint64_t genericMFi_endpoint_authStatusChanged(uint64_t result, int a2, char a3, char a4)
{
  if (result)
  {
    v4 = result;
    if (*(result + 32))
    {
      v8 = *result;
      if (*result)
      {
        v9 = *v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v12 = *(gLogObjects + 488);
      }

      else
      {
        v12 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          v23 = v10;
          v24 = 1024;
          LODWORD(v25) = v11;
          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v4 + 8);
        v16 = *(v4 + 40);
        *buf = 136315906;
        v23 = "genericMFi_endpoint_authStatusChanged";
        v24 = 2112;
        v25 = v15;
        v26 = 1024;
        v27 = v16;
        v28 = 1024;
        v29 = a2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@, authStatus %{coreacc:ACCAuthInfo_Status_t}d -> %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x22u);
      }

      v17 = OUTLINED_FUNCTION_33_4();
      v18[1] = 0x40000000;
      v18[2] = __genericMFi_endpoint_authStatusChanged_block_invoke;
      v18[3] = &__block_descriptor_tmp_16;
      v19 = a2;
      v20 = a3;
      v18[4] = v4;
      v18[5] = v9;
      v21 = a4;
      v18[6] = v8;
      dispatch_async(v17, v18);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _genericMFi_endpoint_publishEA(uint64_t a1)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v2 = *(gLogObjects + 488);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v14, v15, v16, v17, v18, 0x12u);
    }

    v3 = OUTLINED_FUNCTION_45_4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 40);
      v7 = *(a1 + 24);
      v8 = *(a1 + 72);
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 0x2Cu);
    }

    if (*(a1 + 72) && *(a1 + 40) == 2)
    {
      v13 = *(a1 + 8);
      if (*(a1 + 24) == 1)
      {
        platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(v13);
        platform_externalAccessory_updateEAAccessoryInfoForEndpointWithUUID(*(a1 + 8));
      }

      else
      {
        platform_externalAccessory_addEAAccessoryForPrimaryEndpoint(v13);
        *(a1 + 24) = 1;
      }
    }
  }
}

uint64_t genericMFi_endpoint_destroy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *result;
    if (*result)
    {
      acc_platform_packetLogging_logEvent(*v9, "DETACH", "GenericMFi detached!", a4, a5, a6, a7, a8, v25);
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v10 = *(gLogObjects + 488);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v20, v21, v22, v23, v24, 0x12u);
      }

      v11 = OUTLINED_FUNCTION_45_4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v9 + 8);
        v14 = *(v9 + 24);
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_64_0(v15, v16, v17, v18, v19);
      }

      if (*(v9 + 24) == 1)
      {
        platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(*(v9 + 8));
      }

      dispatch_source_cancel(*(*v8 + 96));
      dispatch_release(*(*v8 + 96));
      dispatch_sync(*(v9 + 32), &__block_literal_global_9);
      dispatch_release(*(v9 + 32));
      *v8 = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t genericMFi_endpoint_getFeature(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 <= 2)
    {
      return *(a1 + 8 * a2 + 104);
    }
  }

  return result;
}

uint64_t genericMFi_endpoint_setFeature(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 >= 3;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (result == 1)
  {
    *(a1 + 8 * a2 + 104) = a3;
  }

  return result;
}

uint64_t genericMFi_endpoint_processIncomingData(uint64_t a1, CFTypeRef cf)
{
  v3 = 0;
  if (a1)
  {
    if (cf)
    {
      CFRetain(cf);
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      v3 = 0;
      if (BytePtr)
      {
        if (Length)
        {
          v7 = OUTLINED_FUNCTION_33_4();
          v15[1] = 0x40000000;
          v15[2] = __genericMFi_endpoint_processIncomingData_block_invoke;
          v15[3] = &__block_descriptor_tmp_21_0;
          v15[4] = a1;
          v15[5] = cf;
          dispatch_async(v7, v15);
          v3 = 1;
        }
      }
    }
  }

  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v10 = *(gLogObjects + 488);
  }

  else
  {
    v10 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      v16 = 134218240;
      v17 = v8;
      OUTLINED_FUNCTION_34_2();
      v18 = v9;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v16);
    }
  }

  if (OUTLINED_FUNCTION_81())
  {
    v16 = 136315650;
    v17 = "genericMFi_endpoint_processIncomingData";
    OUTLINED_FUNCTION_34_2();
    v18 = v3;
    v19 = 2112;
    v20 = cf;
    OUTLINED_FUNCTION_64_0(&_mh_execute_header, v10, v11, "%s: success %d, dataIn %@", &v16);
  }

  return v3;
}

void __genericMFi_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2 && *v3)
  {
    if (*(v2 + 40) == 2)
    {
      acc_platform_packetLogging_logData(v3, @"Message", @"GenericMFi", *(a1 + 40), 1);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      _genericMFi_endpoint_processTLV();
    }

    else
    {
      v6 = logObjectForModule_1(61);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v12 = *(v7 + 8);
        v13 = *(v7 + 40);
        v14 = *(a1 + 40);
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v8, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 0x26u);
      }
    }
  }

  CFRelease(*(a1 + 40));
}

void _genericMFi_endpoint_processTLV()
{
  OUTLINED_FUNCTION_33();
  v125 = v2;
  if (!v0)
  {
    v5 = 0;
LABEL_132:
    v4 = 0;
    goto LABEL_87;
  }

  v3 = v1;
  v4 = 0;
  v5 = 0;
  if (v1)
  {
    v6 = v0;
    if (*v0)
    {
      v7 = *(*v0 + 16);
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v10 = *(gLogObjects + 488);
      }

      else if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v132 = v8;
        OUTLINED_FUNCTION_34_2();
        *v134 = v9;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v69, v70, v71, v72, v73, 0x12u);
      }

      if (OUTLINED_FUNCTION_24())
      {
        OUTLINED_FUNCTION_2_22();
        *&v134[8] = v11;
        *&v134[10] = v125;
        *&v134[18] = v11;
        *v135 = v3;
        OUTLINED_FUNCTION_10_1();
        _os_log_impl(v12, v13, v14, v15, v16, 0x2Au);
      }

      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v3);
      v4 = 0;
      v5 = 0;
      if (BytePtr)
      {
        v19 = Length;
        if (Length)
        {
          v130 = 0;
          v20 = &BytePtr[Length];
          memset(__b, 170, 0x150uLL);
          TLV8BufferInit(__b, v19);
          v129 = 0;
          v127 = 0;
          v128 = 0;
          Next = TLV8GetNext(BytePtr, &BytePtr[v19], &v129, &v128, &v127, &v130);
          v22 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 62)
          {
            v23 = *(gLogObjects + 488);
          }

          else
          {
            v23 = &_os_log_default;
            if (OUTLINED_FUNCTION_19_0())
            {
              OUTLINED_FUNCTION_12_10();
              *v134 = v22;
              OUTLINED_FUNCTION_38_5();
              _os_log_error_impl(v74, v75, v76, v77, v78, 0x12u);
            }
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 136316418;
            v132 = "_genericMFi_endpoint_processTLV";
            v133 = 2112;
            *v134 = v7;
            *&v134[8] = 1024;
            *&v134[10] = v129;
            *&v134[14] = 1024;
            *&v134[16] = v129;
            *v135 = 2048;
            *&v135[2] = v127;
            *&v135[10] = 1024;
            *&v135[12] = Next;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", buf, 0x32u);
          }

          if (Next)
          {
            v112 = logObjectForModule_1(61);
            if (!OUTLINED_FUNCTION_16(v112))
            {
              goto LABEL_131;
            }

            OUTLINED_FUNCTION_2_22();
            *&v134[8] = 1024;
            *&v134[10] = Next;
            OUTLINED_FUNCTION_13_0();
            v118 = 28;
            goto LABEL_130;
          }

          if (v129 == 128)
          {
            if (!v128)
            {
              v119 = logObjectForModule_1(61);
              if (OUTLINED_FUNCTION_16(v119))
              {
                goto LABEL_129;
              }

              goto LABEL_131;
            }

            if (v127 == 2)
            {
              if (v130)
              {
                if (v20 > v130)
                {
                  MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v3);
                  if (MutableCopy)
                  {
                    v5 = MutableCopy;
                    v137.location = 0;
                    v137.length = 4;
                    CFDataDeleteBytes(MutableCopy, v137);
                    if (!*(v6 + 80))
                    {
                      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      *(v6 + 80) = Mutable;
                      *(v6 + 88) = 0;
                      if (!Mutable)
                      {
                        v33 = gLogObjects;
                        v34 = gNumLogObjects;
                        if (gLogObjects && gNumLogObjects >= 62)
                        {
                          v35 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v35 = &_os_log_default;
                          if (OUTLINED_FUNCTION_21())
                          {
                            *buf = 134218240;
                            v132 = v33;
                            OUTLINED_FUNCTION_34_2();
                            *v134 = v34;
                            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_2_22();
                          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create tlvSequenceAccumulator!!!", buf, 0x16u);
                        }

                        goto LABEL_86;
                      }
                    }

                    valuePtr = *v128;
                    v26 = v128[1];
                    if (valuePtr > v26)
                    {
                      if (gLogObjects && gNumLogObjects >= 62)
                      {
                        v27 = *(gLogObjects + 488);
                      }

                      else if (OUTLINED_FUNCTION_18())
                      {
                        OUTLINED_FUNCTION_30_3();
                        OUTLINED_FUNCTION_24_2(&_mh_execute_header, v96, v97, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      if (!OUTLINED_FUNCTION_18())
                      {
                        goto LABEL_73;
                      }

                      OUTLINED_FUNCTION_8_9();
                      *&v134[8] = 1024;
                      *&v134[10] = v29;
                      *&v134[14] = 1024;
                      *&v134[16] = v26;
LABEL_65:
                      OUTLINED_FUNCTION_28();
                      _os_log_error_impl(v46, v47, v48, v49, v50, 0x22u);
LABEL_73:
                      Count = CFDictionaryGetCount(*(v6 + 80));
                      v56 = gNumLogObjects;
                      if (gLogObjects)
                      {
                        v57 = gNumLogObjects <= 61;
                      }

                      else
                      {
                        v57 = 1;
                      }

                      v58 = !v57;
                      if (Count > *(v6 + 88))
                      {
                        if (v58)
                        {
                          v66 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v66 = &_os_log_default;
                          if (OUTLINED_FUNCTION_18())
                          {
                            OUTLINED_FUNCTION_12_10();
                            *v134 = v56;
                            OUTLINED_FUNCTION_24_2(&_mh_execute_header, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                        {
                          v81 = *(v6 + 88);
                          v82 = CFDictionaryGetCount(*(v6 + 80));
                          v83 = *(v6 + 80);
                          *buf = 136316418;
                          v132 = "_genericMFi_endpoint_processTLV";
                          v133 = 1024;
                          *v134 = 1791;
                          *&v134[4] = 2112;
                          *&v134[6] = v7;
                          *&v134[14] = 1024;
                          *&v134[16] = v81;
                          *v135 = 2048;
                          *&v135[2] = v82;
                          *&v135[10] = 2112;
                          *&v135[12] = v83;
                          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%s:%d %@, maxSeq %d, tlvSequenceAccumulator(%ld) %@", buf, 0x36u);
                        }

                        v84 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                        buf[0] = 0;
                        do
                        {
                          v85 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, buf);
                          Value = CFDictionaryGetValue(*(v6 + 80), v85);
                          v87 = CFDataGetBytePtr(Value);
                          v88 = CFDataGetLength(Value);
                          CFDataAppendBytes(v84, v87, v88);
                          if (v85)
                          {
                            CFRelease(v85);
                          }

                          ++buf[0];
                        }

                        while (*(v6 + 88) >= buf[0]);
                        if (gLogObjects && gNumLogObjects >= 62)
                        {
                          v89 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v89 = &_os_log_default;
                          if (OUTLINED_FUNCTION_27())
                          {
                            OUTLINED_FUNCTION_30_3();
                            OUTLINED_FUNCTION_39(&_mh_execute_header, v90, v91, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                        {
                          CFDictionaryGetCount(*(v6 + 80));
                          OUTLINED_FUNCTION_2_22();
                          *&v134[8] = 2048;
                          *&v134[10] = v92;
                          *&v134[18] = 1024;
                          *v135 = v26;
                          *&v135[4] = v93;
                          *&v135[6] = v84;
                          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "%s: %@, tlvSequenceAccumulator count %ld, maxSeq %d, process fullData %@", buf, 0x30u);
                        }

                        _genericMFi_endpoint_processCompleteTLVData();
                        if (v84)
                        {
                          CFRelease(v84);
                        }
                      }

                      else
                      {
                        if (v58)
                        {
                          v59 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v59 = &_os_log_default;
                          if (OUTLINED_FUNCTION_17())
                          {
                            OUTLINED_FUNCTION_12_10();
                            *v134 = v56;
                            OUTLINED_FUNCTION_35(&_mh_execute_header, v94, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                        {
                          CFDictionaryGetCount(*(v6 + 80));
                          OUTLINED_FUNCTION_2_22();
                          *&v134[8] = 2048;
                          *&v134[10] = v60;
                          *&v134[18] = 1024;
                          *v135 = v26;
                          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s: %@, tlvSequenceAccumulator count %ld, maxSeq %d, don't have full list yet.", buf, 0x26u);
                        }
                      }

LABEL_86:
                      v4 = 1;
                      goto LABEL_87;
                    }

                    if (*(v6 + 88))
                    {
                      if (*(v6 + 88) != v26)
                      {
                        if (gLogObjects && gNumLogObjects >= 62)
                        {
                          v28 = *(gLogObjects + 488);
                        }

                        else if (OUTLINED_FUNCTION_18())
                        {
                          OUTLINED_FUNCTION_30_3();
                          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v105, v106, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                        }

                        if (!OUTLINED_FUNCTION_18())
                        {
                          goto LABEL_73;
                        }

                        v44 = *(v6 + 88);
                        OUTLINED_FUNCTION_8_9();
                        *&v134[8] = 1024;
                        *&v134[10] = v26;
                        *&v134[14] = 1024;
                        *&v134[16] = v45;
                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      *(v6 + 88) = v26;
                    }

                    v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
                    if (CFDictionaryGetValue(*(v6 + 80), v30))
                    {
                      v31 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 62)
                      {
                        v32 = *(gLogObjects + 488);
                      }

                      else if (OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_12_10();
                        *v134 = v31;
                        OUTLINED_FUNCTION_38_5();
                        _os_log_error_impl(v98, v99, v100, v101, v102, 0x12u);
                      }

                      if (OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_8_9();
                        *&v134[8] = 1024;
                        *&v134[10] = v38;
                        OUTLINED_FUNCTION_38_5();
                        _os_log_error_impl(v39, v40, v41, v42, v43, 0x1Cu);
                      }
                    }

                    else
                    {
                      CFDictionaryAddValue(*(v6 + 80), v30, v5);
                      v36 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 62)
                      {
                        v37 = *(gLogObjects + 488);
                      }

                      else
                      {
                        v37 = &_os_log_default;
                        if (OUTLINED_FUNCTION_19_0())
                        {
                          OUTLINED_FUNCTION_12_10();
                          *v134 = v36;
                          OUTLINED_FUNCTION_38_5();
                          _os_log_error_impl(v107, v108, v109, v110, v111, 0x12u);
                        }
                      }

                      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                      {
                        v52 = *(v6 + 80);
                        OUTLINED_FUNCTION_8_9();
                        *&v134[8] = v53;
                        *&v134[10] = v30;
                        *&v134[18] = v53;
                        *v135 = v5;
                        *&v135[8] = v53;
                        *&v135[10] = v54;
                        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s: %@, key %@, data %@, added to accumulator %@", buf, 0x34u);
                      }
                    }

                    if (v30)
                    {
                      CFRelease(v30);
                    }

                    goto LABEL_73;
                  }

                  v124 = logObjectForModule_1(61);
                  if (!OUTLINED_FUNCTION_16(v124))
                  {
                    goto LABEL_131;
                  }

                  goto LABEL_129;
                }

                v123 = logObjectForModule_1(61);
                if (OUTLINED_FUNCTION_16(v123))
                {
LABEL_129:
                  OUTLINED_FUNCTION_2_22();
                  OUTLINED_FUNCTION_13_0();
                  v118 = 22;
                  goto LABEL_130;
                }
              }

              else
              {
                v122 = logObjectForModule_1(61);
                if (OUTLINED_FUNCTION_16(v122))
                {
                  goto LABEL_129;
                }
              }

LABEL_131:
              v5 = 0;
              goto LABEL_132;
            }

            v120 = logObjectForModule_1(61);
            if (!OUTLINED_FUNCTION_16(v120))
            {
              goto LABEL_131;
            }

            OUTLINED_FUNCTION_8_9();
            *&v134[8] = 2048;
            *&v134[10] = v121;
            OUTLINED_FUNCTION_13_0();
            v118 = 32;
LABEL_130:
            _os_log_error_impl(v113, v114, v115, v116, v117, v118);
            goto LABEL_131;
          }

          _genericMFi_endpoint_processCompleteTLVData();
          v4 = v51;
          v5 = 0;
        }
      }
    }
  }

LABEL_87:
  v61 = gLogObjects;
  v62 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v63 = *(gLogObjects + 488);
  }

  else
  {
    v63 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v132 = v61;
      OUTLINED_FUNCTION_34_2();
      *v134 = v62;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  v64 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v64, v65))
  {
    OUTLINED_FUNCTION_2_22();
    *&v134[8] = 1024;
    *&v134[10] = v4;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s: %@, success %d", buf, 0x1Cu);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_29();
}

void _genericMFi_endpoint_resetPropertyArray(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_50(a1);
      if (v4)
      {
        v5 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v6 = *(gLogObjects + 488);
        }

        else
        {
          v6 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_10_0();
            *(&v21[3] + 2) = v5;
            OUTLINED_FUNCTION_35(&_mh_execute_header, v19, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21);
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = v2[1];
          v21[0] = 136315650;
          OUTLINED_FUNCTION_7_0();
          v22 = v8;
          v23 = a2;
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0x20u);
        }

        if (CFEqual(a2, @"MFi_AppMatch_TeamIDs_TLV"))
        {
          v15 = v2[8];
          v14 = v2 + 8;
          v13 = v15;
          if (!v15)
          {
            return;
          }

LABEL_22:
          CFRelease(v13);
          *v14 = 0;
          return;
        }

        if (CFEqual(a2, @"MFi_AppMatch_ProtocolStrings_TLV"))
        {
          v16 = v2[9];
          v14 = v2 + 9;
          v13 = v16;
          if (v16)
          {
            goto LABEL_22;
          }
        }

        else if (CFEqual(a2, @"MFi_AccessoryTypes_TLV"))
        {
          v17 = v2[6];
          v14 = v2 + 6;
          v13 = v17;
          if (v17)
          {
            goto LABEL_22;
          }
        }

        else if (CFEqual(a2, @"MFi_AccessoryAttributes_TLV"))
        {
          v18 = v2[7];
          v14 = v2 + 7;
          v13 = v18;
          if (v18)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }
}

void _genericMFi_endpoint_resetSequenceAccumulator(uint64_t a1)
{
  if (a1)
  {
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v2 = *(gLogObjects + 488);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
    }

    v3 = OUTLINED_FUNCTION_66_1();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 88);
      v7 = *(a1 + 80);
      if (v7)
      {
        CFDictionaryGetCount(v7);
      }

      OUTLINED_FUNCTION_24_5();
      OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 0x26u);
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 80) = 0;
    }

    *(a1 + 88) = 0;
  }
}

uint64_t genericMFi_endpoint_propertiesDidChange(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    CFRetain(cf);
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v7 = *(gLogObjects + 488);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        *(&v13[3] + 2) = v6;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v11, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*a1 + 16);
      v13[0] = 136315650;
      OUTLINED_FUNCTION_7_0();
      v14 = v10;
      v15 = cf;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: %@, %@", v13, 0x20u);
    }

    CFDictionaryApplyFunction(cf, _CFDictionaryApplierFunction_handlePropertiesChange_0, a1);
    CFRelease(cf);
  }

  return v3;
}

uint64_t _CFDictionaryApplierFunction_handlePropertiesChange_0(uint64_t result, uint64_t a2, void *a3)
{
  if (result && a3)
  {
    if (*a3)
    {
      return genericMFi_endpoint_propertyDidChange(a3, result, a2);
    }
  }

  return result;
}

uint64_t genericMFi_endpoint_certCapsValidForAppMatchLaunch(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_50(result);
    if (v2 && *v2)
    {
      if (acc_userDefaults_BOOLForKey(@"GenericMFiIgnoreCertCaps"))
      {
        return 1;
      }

      else
      {
        v3 = **v1;

        return acc_connection_isAuthenticatedForAppMatchLaunch(v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *_genericMFi_endpoint_convertJSONData2Dictionary(void *a1)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v2 = *(gLogObjects + 488);
  }

  else
  {
    v2 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v18, v19, v20, v21, v22, 0x12u);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_15_1();
    _os_log_debug_impl(v14, v15, OS_LOG_TYPE_DEBUG, v16, v17, 0x16u);
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else if (!a1)
  {
    goto LABEL_12;
  }

  v3 = acc_json_data2object(a1);
  a1 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFDictionaryGetTypeID())
    {
      v5 = CFGetTypeID(a1);
      if (v5 != CFArrayGetTypeID())
      {
        CFRelease(a1);
        a1 = 0;
      }
    }
  }

LABEL_12:
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v6 = *(gLogObjects + 488);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v23, v24, v25, v26, v27, 0x12u);
  }

  v7 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0x16u);
  }

  return a1;
}

void _genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary()
{
  OUTLINED_FUNCTION_33();
  if (!v0)
  {
    v3 = 0;
    Copy = 0;
    goto LABEL_90;
  }

  v2 = v1;
  v3 = 0;
  if (!v1)
  {
    Copy = 0;
    goto LABEL_90;
  }

  Copy = 0;
  if (*v0)
  {
    v5 = *(*v0 + 16);
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v7 = *(gLogObjects + 488);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_37_2();
      *&buf[14] = v6;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v155, v156, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v8 = OUTLINED_FUNCTION_45_4();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 136315650;
      OUTLINED_FUNCTION_15_9();
      *&buf[14] = v5;
      *&buf[22] = v10;
      *&v196 = v2;
      OUTLINED_FUNCTION_86_1(&_mh_execute_header, v11, v12, "%s: %@, dataIn %@", v13, v14, v15, v16, v164, v166, v167, v169, v170, v172, theDict, value, alloc, cf, v182, v184, v185, v187, valuePtr, v190, v191, v192, v193, v194, buf[0]);
    }

    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(v2);
    Copy = 0;
    if (!BytePtr || (v3 = Length) == 0)
    {
      v3 = v5;
      goto LABEL_90;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    OUTLINED_FUNCTION_71_0(Mutable, v20, v21, v22, v23, v24, v25, v26, v164, v166, v167, v169, v170, v172, theDict, value, kCFAllocatorDefault, cf, v182, v184, v185, v5, valuePtr, v190, v191, v192, v193, v194, *buf, *&buf[8], *&buf[16], v196, *(&v196 + 1), v197, v198, v199, v200[0]);
    v27 = TLV8BufferInit(v200, v3);
    HIBYTE(v193) = 0;
    v191 = 0;
    v192 = 0;
    if (v3 < 1)
    {
      OUTLINED_FUNCTION_76_2();
      goto LABEL_88;
    }

    theDicta = v2;
    valuea = 0;
    cfa = 0;
    v36 = &BytePtr[v3];
    *&v35 = 136316418;
    v183 = v35;
    Copy = 1024;
    *&v35 = 136315906;
    v168 = v35;
    *&v35 = 134218240;
    v171 = v35;
    *&v35 = 136315394;
    v165 = v35;
    while (1)
    {
      v37 = OUTLINED_FUNCTION_43_3(v27, v28, v29, v30, v31, v32, v33, v34, v165, *(&v165 + 1), v168, *(&v168 + 1), v171, *(&v171 + 1), theDicta, valuea, alloca, cfa, v183, *(&v183 + 1), v186, v188, valuePtr, v190, v191, v192, v193, SWORD2(v193), SBYTE6(v193), SHIBYTE(v193), v194);
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v38 = *(gLogObjects + 488);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_13();
        if (v39)
        {
          OUTLINED_FUNCTION_5_17(v39, v40, v41, v42, v43, v44, v45, v46, v165, *(&v165 + 1), v168, *(&v168 + 1), v171);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v89, v90, v91, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v92, 0x12u);
        }
      }

      v27 = OUTLINED_FUNCTION_75_3();
      if (v27)
      {
        OUTLINED_FUNCTION_81_1(v27, v28, v29, v30, v31, v32, v33, v34, v165, *(&v165 + 1), v168, *(&v168 + 1), v171, *(&v171 + 1), theDicta, valuea, alloca, cfa, v183);
        *&buf[4] = "_genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary";
        *&buf[12] = 2112;
        *&buf[14] = v188;
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_68_2();
        _os_log_impl(v47, v48, v49, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", v50, 0x32u);
      }

      if (v37)
      {
        Copy = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v132 = *(gLogObjects + 488);
          v133 = v188;
        }

        else
        {
          v134 = OUTLINED_FUNCTION_18();
          v133 = v188;
          if (v134)
          {
            OUTLINED_FUNCTION_55_0(v134, v135, v136, v137, v138, v139, v140, v141, v165, *(&v165 + 1), v168, *(&v168 + 1), v171);
            OUTLINED_FUNCTION_24_2(&_mh_execute_header, v162, v163, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (OUTLINED_FUNCTION_18())
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_15_9();
          *&buf[14] = v133;
          *&buf[22] = 1024;
          LODWORD(v196) = v37;
          OUTLINED_FUNCTION_28();
          _os_log_error_impl(v157, v158, v159, v160, v161, 0x1Cu);
        }

LABEL_81:
        v3 = valuea;
        if (valuea && cfa)
        {
          v2 = theDicta;
          CFDictionaryAddValue(theDicta, @"ProtocolString", valuea);
          CFDictionaryAddValue(theDicta, @"MatchAction", cfa);
          Copy = CFDictionaryCreateCopy(alloca, theDicta);
          CFRelease(valuea);
          v3 = v188;
          goto LABEL_87;
        }

        v2 = theDicta;
        if (valuea)
        {
          CFRelease(valuea);
        }

        OUTLINED_FUNCTION_76_2();
        if (cfa)
        {
LABEL_87:
          CFRelease(cfa);
        }

LABEL_88:
        if (v2)
        {
          CFRelease(v2);
        }

        break;
      }

      if (HIBYTE(v193) == 2)
      {
        if (v192 && v191)
        {
          valuePtr = OUTLINED_FUNCTION_56_3(v27, v28, v29, v30, v31, v32, v33, v34, v165, *(&v165 + 1), v168, *(&v168 + 1), v171, *(&v171 + 1), theDicta, valuea, alloca, cfa, v183, *(&v183 + 1), v186, v188, valuePtr, v190, SHIDWORD(v190));
          if (HIDWORD(v190) || cfb)
          {
            if (gLogObjects && gNumLogObjects >= 62)
            {
              v70 = *(gLogObjects + 488);
            }

            else
            {
              v72 = OUTLINED_FUNCTION_13();
              if (v72)
              {
                OUTLINED_FUNCTION_5_17(v72, v73, v74, v75, v76, v77, v78, v79, v165, *(&v165 + 1), v168, *(&v168 + 1), v171);
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v119, v120, v121, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v122, 0x12u);
              }
            }

            v80 = OUTLINED_FUNCTION_59();
            if (v80)
            {
              OUTLINED_FUNCTION_79_1(v80, v28, v29, v30, v31, v32, v33, v34, v165, *(&v165 + 1), v168);
              *&buf[4] = "_genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary";
              *&buf[12] = 2112;
              OUTLINED_FUNCTION_19_6();
              WORD2(v196) = v114;
              *(&v196 + 6) = cfb;
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v115, v116, v117, "%s: %@, Failed to get tlv number value(err %d) or matchAction already exists(%@)!!!", v118, 0x26u);
            }

            v27 = cfb;
            if (cfb)
            {
              CFRelease(cfb);
            }

            cfa = 0;
          }

          else
          {
            v27 = CFNumberCreate(alloca, kCFNumberSInt64Type, &valuePtr);
            cfa = v27;
          }
        }

        goto LABEL_61;
      }

      if (HIBYTE(v193) == 1)
      {
        v28 = v192;
        if (!v192)
        {
          goto LABEL_61;
        }

        v29 = v191;
        if (!v191)
        {
          goto LABEL_61;
        }

        v51 = OUTLINED_FUNCTION_57_3(alloca, v192, v191);
        if (v51)
        {
          v52 = v51;
          v53 = valuea;
          if (valuea || (v53 = CFStringCreateMutable(alloca, 0)) != 0)
          {
            valuea = v53;
            CFStringAppend(v53, v52);
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 62)
            {
              v93 = *(gLogObjects + 488);
            }

            else
            {
              v98 = OUTLINED_FUNCTION_13();
              v93 = &_os_log_default;
              if (v98)
              {
                OUTLINED_FUNCTION_5_17(v98, v99, v100, v101, v102, v103, v104, v105, v165, *(&v165 + 1), v168, *(&v168 + 1), v171);
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v128, v129, v130, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v131, 0x12u);
                v93 = &_os_log_default;
              }
            }

            v106 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
            if (v106)
            {
              OUTLINED_FUNCTION_77_2(v106, v107, v108, v109, v110, v111, v112, v113, v165);
              OUTLINED_FUNCTION_10_10();
              _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create protocolString main string!!!", v127, 0x16u);
            }

            valuea = 0;
          }

          CFRelease(v52);
          goto LABEL_61;
        }

        if (gLogObjects && gNumLogObjects >= 62)
        {
          v71 = *(gLogObjects + 488);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_13();
          if (v81)
          {
            OUTLINED_FUNCTION_5_17(v81, v82, v83, v84, v85, v86, v87, v88, v165, *(&v165 + 1), v168, *(&v168 + 1), v171);
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v123, v124, v125, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v126, 0x12u);
          }
        }

        v27 = OUTLINED_FUNCTION_59();
        if (!v27)
        {
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_77_2(v27, v28, v29, v30, v31, v32, v33, v34, v165);
        OUTLINED_FUNCTION_10_10();
        OUTLINED_FUNCTION_36_3();
        v68 = "%s: %@, Failed to create protocolString fragment string!!!";
        v69 = 22;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v54 = *(gLogObjects + 488);
        }

        else
        {
          v55 = OUTLINED_FUNCTION_13();
          if (v55)
          {
            OUTLINED_FUNCTION_5_17(v55, v56, v57, v58, v59, v60, v61, v62, v165, *(&v165 + 1), v168, *(&v168 + 1), v171);
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v94, v95, v96, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v97, 0x12u);
          }
        }

        v27 = OUTLINED_FUNCTION_59();
        if (!v27)
        {
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_79_1(v27, v28, v29, v30, v31, v32, v33, v34, v165, *(&v165 + 1), v168);
        *&buf[4] = "_genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary";
        *&buf[12] = 2112;
        OUTLINED_FUNCTION_19_6();
        WORD2(v196) = 1024;
        *(&v196 + 6) = v63;
        OUTLINED_FUNCTION_36_3();
        v68 = "%s: %@, Unexpected TLV type(%d/0x%x)!!!";
        v69 = 34;
      }

      _os_log_error_impl(v64, v65, v66, v68, v67, v69);
LABEL_61:
      if (!v194 || v194 >= v36)
      {
        goto LABEL_81;
      }
    }
  }

LABEL_90:
  v142 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v143 = *(gLogObjects + 488);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_37_2();
    *&buf[14] = v142;
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v150, v151, v152, v153, v154, 0x12u);
  }

  if (OUTLINED_FUNCTION_24())
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v3;
    *&buf[22] = v144;
    *&v196 = Copy;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v145, v146, v147, v148, v149, 0x20u);
  }

  OUTLINED_FUNCTION_29();
}

void _genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary()
{
  OUTLINED_FUNCTION_33();
  if (!v0)
  {
    v3 = 0;
    Copy = 0;
    goto LABEL_88;
  }

  v2 = v1;
  v3 = 0;
  if (!v1)
  {
    Copy = 0;
    goto LABEL_88;
  }

  Copy = 0;
  if (*v0)
  {
    v5 = *(*v0 + 16);
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v8 = *(gLogObjects + 488);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v9, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v11 = OUTLINED_FUNCTION_45_4();
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 136315650;
      OUTLINED_FUNCTION_15_9();
      *&buf[14] = v5;
      *&buf[22] = v13;
      *&v186 = v2;
      OUTLINED_FUNCTION_86_1(&_mh_execute_header, v14, v15, "%s: %@, dataIn %@", v16, v17, v18, v19, v155, v157, v158, v160, v161, v163, theDict, v166, v168, alloc, v172, v174, v175, v177, valuePtr, v180, v181, v182, v183, v184, buf[0]);
    }

    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(v2);
    Copy = 0;
    if (!BytePtr || (v3 = Length) == 0)
    {
      v3 = v5;
      goto LABEL_88;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    OUTLINED_FUNCTION_71_0(Mutable, v23, v24, v25, v26, v27, v28, v29, v155, v157, v158, v160, v161, v163, theDict, v166, v168, kCFAllocatorDefault, v172, v174, v175, v5, valuePtr, v180, v181, v182, v183, v184, *buf, *&buf[8], *&buf[16], v186, *(&v186 + 1), v187, v188, v189, v190[0]);
    v30 = TLV8BufferInit(v190, v3);
    HIBYTE(v183) = 0;
    v181 = 0;
    v182 = 0;
    if (v3 < 1)
    {
      OUTLINED_FUNCTION_76_2();
      goto LABEL_86;
    }

    theDicta = v2;
    v167 = 0;
    v169 = 0;
    v39 = &BytePtr[v3];
    *&v38 = 136316418;
    v173 = v38;
    Copy = 1024;
    *&v38 = 136315906;
    v159 = v38;
    *&v38 = 134218240;
    v162 = v38;
    *&v38 = 136315394;
    v156 = v38;
    while (1)
    {
      v40 = OUTLINED_FUNCTION_43_3(v30, v31, v32, v33, v34, v35, v36, v37, v156, *(&v156 + 1), v159, *(&v159 + 1), v162, *(&v162 + 1), theDicta, v167, v169, alloca, v173, *(&v173 + 1), v176, v178, valuePtr, v180, v181, v182, v183, SWORD2(v183), SBYTE6(v183), SHIBYTE(v183), v184);
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v41 = *(gLogObjects + 488);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_13();
        if (v42)
        {
          OUTLINED_FUNCTION_9_9(v42, v43, v44, v45, v46, v47, v48, v49, v156, *(&v156 + 1), v159, *(&v159 + 1), v162);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v93, v94, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v96, 0x12u);
        }
      }

      v30 = OUTLINED_FUNCTION_75_3();
      if (v30)
      {
        OUTLINED_FUNCTION_81_1(v30, v31, v32, v33, v34, v35, v36, v37, v156, *(&v156 + 1), v159, *(&v159 + 1), v162, *(&v162 + 1), theDicta, v167, v169, alloca, v173);
        *&buf[4] = "_genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary";
        *&buf[12] = 2112;
        *&buf[14] = v178;
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_68_2();
        _os_log_impl(v50, v51, v52, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", v53, 0x32u);
      }

      if (v40)
      {
        Copy = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v125 = *(gLogObjects + 488);
          v126 = v178;
        }

        else
        {
          v127 = OUTLINED_FUNCTION_18();
          v126 = v178;
          if (v127)
          {
            OUTLINED_FUNCTION_55_0(v127, v128, v129, v130, v131, v132, v133, v134, v156, *(&v156 + 1), v159, *(&v159 + 1), v162);
            OUTLINED_FUNCTION_24_2(&_mh_execute_header, v153, v154, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (OUTLINED_FUNCTION_18())
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_15_9();
          *&buf[14] = v126;
          *&buf[22] = 1024;
          LODWORD(v186) = v40;
          OUTLINED_FUNCTION_28();
          _os_log_error_impl(v148, v149, v150, v151, v152, 0x1Cu);
        }

LABEL_79:
        v3 = v167;
        if (v167 && v169)
        {
          v2 = theDicta;
          CFDictionaryAddValue(theDicta, @"BundleID", v167);
          CFDictionaryAddValue(theDicta, @"LaunchMethod", v169);
          Copy = CFDictionaryCreateCopy(alloca, theDicta);
          CFRelease(v167);
          v3 = v178;
          goto LABEL_85;
        }

        v2 = theDicta;
        if (v167)
        {
          CFRelease(v167);
        }

        OUTLINED_FUNCTION_76_2();
        if (v169)
        {
LABEL_85:
          CFRelease(v169);
        }

LABEL_86:
        if (v2)
        {
          CFRelease(v2);
        }

        break;
      }

      if (HIBYTE(v183) == 2)
      {
        if (!v182 || !v181)
        {
          goto LABEL_60;
        }

        v57 = OUTLINED_FUNCTION_56_3(v30, v31, v32, v33, v34, v35, v36, v37, v156, *(&v156 + 1), v159, *(&v159 + 1), v162, *(&v162 + 1), theDicta, v167, v169, alloca, v173, *(&v173 + 1), v176, v178, valuePtr, v180, SHIDWORD(v180));
        valuePtr = v57;
        if (!HIDWORD(v180) && v57 <= 0x7E && !v169)
        {
          v30 = CFNumberCreate(alloca, kCFNumberSInt64Type, &valuePtr);
          v169 = v30;
          goto LABEL_60;
        }

        if (gLogObjects && gNumLogObjects >= 62)
        {
          v74 = *(gLogObjects + 488);
        }

        else
        {
          v76 = OUTLINED_FUNCTION_13();
          if (v76)
          {
            OUTLINED_FUNCTION_9_9(v76, v77, v78, v79, v80, v81, v82, v83, v156, *(&v156 + 1), v159, *(&v159 + 1), v162);
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v112, v113, v114, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v115, 0x12u);
          }
        }

        v30 = OUTLINED_FUNCTION_59();
        if (!v30)
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_79_1(v30, v31, v32, v33, v34, v35, v36, v37, v156, *(&v156 + 1), v159);
        *&buf[4] = "_genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary";
        *&buf[12] = 2112;
        OUTLINED_FUNCTION_19_6();
        WORD2(v186) = v84;
        *(&v186 + 6) = v169;
        OUTLINED_FUNCTION_36_3();
        v72 = "%s: %@, Failed to get tlv number value(err %d) or launchMethod already exists(%@)!!!";
        v73 = 38;
      }

      else if (HIBYTE(v183) == 1)
      {
        v31 = v182;
        if (!v182)
        {
          goto LABEL_60;
        }

        v32 = v181;
        if (!v181)
        {
          goto LABEL_60;
        }

        v54 = OUTLINED_FUNCTION_57_3(alloca, v182, v181);
        if (v54)
        {
          v55 = v54;
          v56 = v167;
          if (v167 || (v56 = CFStringCreateMutable(alloca, 0)) != 0)
          {
            v167 = v56;
            CFStringAppend(v56, v55);
          }

          else
          {
            v97 = gLogObjects;
            v98 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 62)
            {
              v99 = *(gLogObjects + 488);
            }

            else
            {
              v99 = &_os_log_default;
              if (OUTLINED_FUNCTION_13())
              {
                *buf = v162;
                *&buf[4] = v97;
                *&buf[12] = 1024;
                *&buf[14] = v98;
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v121, v122, v123, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v124, 0x12u);
                v99 = &_os_log_default;
              }
            }

            v104 = OUTLINED_FUNCTION_27();
            if (v104)
            {
              OUTLINED_FUNCTION_77_2(v104, v105, v106, v107, v108, v109, v110, v111, v156);
              OUTLINED_FUNCTION_10_10();
              _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create bundleID main string!!!", v120, 0x16u);
            }

            v167 = 0;
          }

          CFRelease(v55);
          goto LABEL_60;
        }

        if (gLogObjects && gNumLogObjects >= 62)
        {
          v75 = *(gLogObjects + 488);
        }

        else
        {
          v85 = OUTLINED_FUNCTION_13();
          if (v85)
          {
            OUTLINED_FUNCTION_9_9(v85, v86, v87, v88, v89, v90, v91, v92, v156, *(&v156 + 1), v159, *(&v159 + 1), v162);
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v116, v117, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v119, 0x12u);
          }
        }

        v30 = OUTLINED_FUNCTION_59();
        if (!v30)
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_77_2(v30, v31, v32, v33, v34, v35, v36, v37, v156);
        OUTLINED_FUNCTION_10_10();
        OUTLINED_FUNCTION_36_3();
        v72 = "%s: %@, Failed to create bundleID fragment string!!!";
        v73 = 22;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v58 = *(gLogObjects + 488);
        }

        else
        {
          v59 = OUTLINED_FUNCTION_13();
          if (v59)
          {
            OUTLINED_FUNCTION_9_9(v59, v60, v61, v62, v63, v64, v65, v66, v156, *(&v156 + 1), v159, *(&v159 + 1), v162);
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v100, v101, v102, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v103, 0x12u);
          }
        }

        v30 = OUTLINED_FUNCTION_59();
        if (!v30)
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_79_1(v30, v31, v32, v33, v34, v35, v36, v37, v156, *(&v156 + 1), v159);
        *&buf[4] = "_genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary";
        *&buf[12] = 2112;
        OUTLINED_FUNCTION_19_6();
        WORD2(v186) = 1024;
        *(&v186 + 6) = v67;
        OUTLINED_FUNCTION_36_3();
        v72 = "%s: %@, Unexpected TLV type(%d/0x%x)!!!";
        v73 = 34;
      }

      _os_log_error_impl(v68, v69, v70, v72, v71, v73);
LABEL_60:
      if (!v184 || v184 >= v39)
      {
        goto LABEL_79;
      }
    }
  }

LABEL_88:
  v135 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v136 = *(gLogObjects + 488);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_37_2();
    *&buf[14] = v135;
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v143, v144, v145, v146, v147, 0x12u);
  }

  if (OUTLINED_FUNCTION_24())
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v3;
    *&buf[22] = v137;
    *&v186 = Copy;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v138, v139, v140, v141, v142, 0x20u);
  }

  OUTLINED_FUNCTION_29();
}

void _genericMFi_endpoint_processCompleteTLVData()
{
  OUTLINED_FUNCTION_33();
  if (!v1)
  {
    v4 = 0;
    goto LABEL_96;
  }

  v3 = v2;
  v4 = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_50(v1);
    if (v6)
    {
      v123 = *(v6 + 16);
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      v122 = v5;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v9 = *(gLogObjects + 488);
      }

      else
      {
        v9 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = 134218240;
          v129 = v7;
          v130 = 1024;
          LODWORD(v131) = v8;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (OUTLINED_FUNCTION_81())
      {
        *buf = 136315906;
        v129 = "_genericMFi_endpoint_processCompleteTLVData";
        v130 = 2112;
        v131 = v123;
        v132 = 2112;
        *v133 = v122;
        *&v133[8] = 2112;
        *v134 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@, propertyKey %@, dataIn %@", buf, 0x2Au);
      }

      acc_platform_packetLogging_logGenericMFiTLV(*v0, v122, v3, 1);
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v3);
      v4 = 0;
      if (BytePtr)
      {
        v14 = Length;
        if (Length)
        {
          v127 = 0;
          memset(__b, 170, 0x150uLL);
          TLV8BufferInit(__b, v14);
          v126 = 0;
          v124 = 0;
          v125 = 0;
          if (v14 < 1)
          {
            v17 = 0;
            v16 = 0;
            goto LABEL_79;
          }

          v16 = 0;
          v17 = 0;
          v18 = &BytePtr[v14];
          *&v15 = 136315906;
          v120 = v15;
          *&v15 = 134218240;
          v121 = v15;
          *&v15 = 136315394;
          v119 = v15;
          while (1)
          {
            v127 = 0;
            v126 = 0;
            v124 = 0;
            v125 = 0;
            Next = TLV8GetNext(BytePtr, v18, &v126, &v125, &v124, &v127);
            if (gLogObjects && gNumLogObjects >= 62)
            {
              v20 = *(gLogObjects + 488);
            }

            else
            {
              v21 = OUTLINED_FUNCTION_59();
              if (v21)
              {
                OUTLINED_FUNCTION_54(v21, v22, v23, v24, v25, v26, v27, v28, v119, *(&v119 + 1), v120, *(&v120 + 1), v121);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v63, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v66, 0x12u);
              }
            }

            if (OUTLINED_FUNCTION_75_3())
            {
              *buf = 136316418;
              v129 = "_genericMFi_endpoint_processCompleteTLVData";
              v130 = 2112;
              v131 = v123;
              OUTLINED_FUNCTION_39_3();
              *v134 = 2048;
              *&v134[2] = v29;
              v135 = 1024;
              LODWORD(v136) = Next;
              OUTLINED_FUNCTION_68_2();
              _os_log_impl(v30, v31, v32, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", v33, 0x32u);
            }

            if (Next)
            {
              if (gLogObjects && gNumLogObjects >= 62)
              {
                v104 = *(gLogObjects + 488);
              }

              else
              {
                v104 = &_os_log_default;
                if (OUTLINED_FUNCTION_27())
                {
                  OUTLINED_FUNCTION_67_2();
                  OUTLINED_FUNCTION_39(&_mh_execute_header, v105, v106, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (OUTLINED_FUNCTION_27())
              {
                *buf = 136315650;
                OUTLINED_FUNCTION_46_2();
                *v133 = Next;
                _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%s: %@, Failed to retrieve next TLV!!! err %d", buf, 0x1Cu);
              }

LABEL_79:
              if (gLogObjects && gNumLogObjects >= 62)
              {
                v107 = *(gLogObjects + 488);
                v108 = v0;
              }

              else
              {
                v107 = &_os_log_default;
                v108 = v0;
                if (OUTLINED_FUNCTION_27())
                {
                  OUTLINED_FUNCTION_67_2();
                  OUTLINED_FUNCTION_39(&_mh_execute_header, v109, v110, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
              {
                *buf = 136316162;
                v129 = "_genericMFi_endpoint_processCompleteTLVData";
                v130 = 2112;
                v131 = v123;
                v132 = 1024;
                *v133 = v17;
                *&v133[4] = 1024;
                *&v133[6] = v17;
                *v134 = 2112;
                *&v134[2] = v16;
                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "%s: %@, lastTlvType <%d / 0x%02x>, _tlvValueAccumulator %@", buf, 0x2Cu);
              }

              if (v16 && v17)
              {
                if (v122)
                {
                  _genericMFi_endpoint_processFullPropertyTLVData(v108, v122, v17, v16);
                }

                else
                {
                  _genericMFi_endpoint_processFullMessageTLVData(v108, v17, v16);
                }

                _genericMFi_endpoint_updatePropertyInfo(v108, v122);
LABEL_94:
                CFRelease(v16);
              }

              else
              {
                _genericMFi_endpoint_updatePropertyInfo(v108, v122);
                if (v16)
                {
                  goto LABEL_94;
                }
              }

              v4 = 1;
              goto LABEL_96;
            }

            v34 = v126;
            if (v17)
            {
              if (v126 != v17)
              {
                break;
              }
            }

            if (!v126)
            {
              goto LABEL_42;
            }

LABEL_26:
            if (v34 == 128)
            {
              if (gLogObjects && gNumLogObjects >= 62)
              {
                v35 = *(gLogObjects + 488);
              }

              else
              {
                v40 = OUTLINED_FUNCTION_59();
                v35 = &_os_log_default;
                if (v40)
                {
                  OUTLINED_FUNCTION_16_10(v40, v41, v42, v43, v44, v45, v46, v47, v119, *(&v119 + 1), v120, *(&v120 + 1), v121);
                  OUTLINED_FUNCTION_36_3();
                  _os_log_error_impl(v92, v93, v94, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v95, 0x12u);
                  v35 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = v120;
                v129 = "_genericMFi_endpoint_processCompleteTLVData";
                v130 = 2112;
                v131 = v123;
                OUTLINED_FUNCTION_39_3();
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: %@, Unexpected TLV type(%d/0x%x)!!!", buf, 0x22u);
              }
            }

            else
            {
              v36 = v125;
              if (v125)
              {
                v37 = v124;
                if (v124)
                {
                  if (!v16)
                  {
                    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    if (!Mutable)
                    {
                      if (gLogObjects && gNumLogObjects >= 62)
                      {
                        v83 = *(gLogObjects + 488);
                      }

                      else
                      {
                        v84 = OUTLINED_FUNCTION_59();
                        v83 = &_os_log_default;
                        if (v84)
                        {
                          OUTLINED_FUNCTION_16_10(v84, v85, v86, v87, v88, v89, v90, v91, v119, *(&v119 + 1), v120, *(&v120 + 1), v121);
                          OUTLINED_FUNCTION_36_3();
                          _os_log_error_impl(v100, v101, v102, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v103, 0x12u);
                          v83 = &_os_log_default;
                        }
                      }

                      if (OUTLINED_FUNCTION_17())
                      {
                        *buf = v119;
                        v129 = "_genericMFi_endpoint_processCompleteTLVData";
                        v130 = 2112;
                        v131 = v123;
                        _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create _tlvValueAccumulator!!!", buf, 0x16u);
                      }

                      v16 = 0;
                      goto LABEL_42;
                    }

                    v16 = Mutable;
                    v37 = v124;
                    v36 = v125;
                  }

                  CFDataAppendBytes(v16, v36, v37);
                  if (gLogObjects && gNumLogObjects >= 62)
                  {
                    v39 = *(gLogObjects + 488);
                  }

                  else
                  {
                    v48 = OUTLINED_FUNCTION_59();
                    if (v48)
                    {
                      OUTLINED_FUNCTION_16_10(v48, v49, v50, v51, v52, v53, v54, v55, v119, *(&v119 + 1), v120, *(&v120 + 1), v121);
                      OUTLINED_FUNCTION_36_3();
                      _os_log_error_impl(v96, v97, v98, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v99, 0x12u);
                    }
                  }

                  if (OUTLINED_FUNCTION_75_3())
                  {
                    *buf = 136316418;
                    v129 = "_genericMFi_endpoint_processCompleteTLVData";
                    v130 = 2112;
                    v131 = v123;
                    OUTLINED_FUNCTION_39_3();
                    *v134 = 2048;
                    *&v134[2] = v56;
                    v135 = v57;
                    v136 = v16;
                    OUTLINED_FUNCTION_68_2();
                    _os_log_impl(v58, v59, v60, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, added to accumulator %@", v61, 0x36u);
                  }
                }
              }
            }

LABEL_42:
            BytePtr = v127;
            v17 = v126;
            if (!v127 || v127 >= v18)
            {
              goto LABEL_79;
            }
          }

          if (gLogObjects && gNumLogObjects >= 62)
          {
            v62 = *(gLogObjects + 488);
          }

          else
          {
            v67 = OUTLINED_FUNCTION_59();
            if (v67)
            {
              OUTLINED_FUNCTION_54(v67, v68, v69, v70, v71, v72, v73, v74, v119, *(&v119 + 1), v120, *(&v120 + 1), v121);
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v75, v76, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v78, 0x12u);
            }
          }

          if (OUTLINED_FUNCTION_75_3())
          {
            *buf = 136316418;
            v129 = "_genericMFi_endpoint_processCompleteTLVData";
            v130 = 2112;
            v131 = v123;
            v132 = 2112;
            *v133 = v122;
            *&v133[8] = 1024;
            *v134 = v17;
            *&v134[4] = 1024;
            *&v134[6] = v17;
            v135 = 2112;
            v136 = v16;
            OUTLINED_FUNCTION_68_2();
            _os_log_impl(v79, v80, v81, "%s: %@, propertyKey %@, lastTlvType <%d / 0x%02x>, _tlvValueAccumulator %@", v82, 0x36u);
          }

          if (v122)
          {
            _genericMFi_endpoint_processFullPropertyTLVData(v0, v122, v17, v16);
            if (!v16)
            {
              goto LABEL_61;
            }
          }

          else
          {
            _genericMFi_endpoint_processFullMessageTLVData(v0, v17, v16);
            if (!v16)
            {
LABEL_61:
              v16 = 0;
              v34 = v126;
              if (!v126)
              {
                goto LABEL_42;
              }

              goto LABEL_26;
            }
          }

          CFRelease(v16);
          goto LABEL_61;
        }
      }
    }
  }

LABEL_96:
  v111 = gLogObjects;
  v112 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v113 = *(gLogObjects + 488);
  }

  else
  {
    v113 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v129 = v111;
      v130 = 1024;
      LODWORD(v131) = v112;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v114, v115, v116, v117, v118, 0x12u);
    }
  }

  if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_46_2();
    *v133 = v4;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "%s: %@, success %d", buf, 0x1Cu);
  }

  OUTLINED_FUNCTION_29();
}

void genericMFi_endpoint_create_cold_2(void *a1, uint64_t *a2, void *a3)
{
  free(a1);
  v5 = logObjectForModule_1(61);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v7, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 0x16u);
  }

  *a3 = 0;
}

void genericMFi_endpoint_create_cold_3(void *a1)
{
  v2 = logObjectForModule_1(61);
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = 0;
}

void genericMFi_endpoint_create_cold_4(void *a1)
{
  v2 = logObjectForModule_1(61);
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = 0;
}

void ___genericMFi_endpoint_handlePropertiesDidChange_block_invoke_cold_3()
{
  v2 = 136315394;
  v3 = "_genericMFi_endpoint_handlePropertiesDidChange_block_invoke";
  OUTLINED_FUNCTION_24_5();
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s: propertiesToProcess %@", &v2, 0x16u);
}

void _genericMFi_endpoint_initFeature_cold_1(uint64_t a1)
{
  v2 = logObjectForModule_1(61);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
  }
}

uint64_t iap2_navigation_startRouteGuidanceHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v6 = *(gLogObjects + 368);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v135 = v4;
      OUTLINED_FUNCTION_49_2();
      v136 = v5;
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_10(v68, v69, v70, v71, v72);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v7 = *(a1 + 8);
    }

    OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_98_0();
    _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 0xCu);
  }

  v12 = 0;
  if (!a1 || !a2)
  {
    return v12;
  }

  v129 = a1;
  v13 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v13, v14);
  v133 = 0;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  if (!FirstParam)
  {
    v39 = 0;
    v131 = 0;
    v19 = 0;
    LOBYTE(v18) = 0;
    v17 = 0;
    goto LABEL_44;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v131 = 0;
  v20 = 0;
  *&v16 = 67109376;
  v128 = v16;
  *&v16 = 134218240;
  v127 = v16;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    switch(ParamID)
    {
      case 0:
        valuePtr = iAP2MsgGetDataAsU16(FirstParam, &v133);
        if (!v133)
        {
          v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
          CFArrayAppendValue(theArray, v22);
          if (v22)
          {
            CFRelease(v22);
          }

          ++v20;
          goto LABEL_41;
        }

        v77 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_70_3(v77))
        {
          goto LABEL_92;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_32_3(MsgID, v79, v80, v81, v82, v83, v84, v85, v127, *(&v127 + 1), v128);
        LODWORD(v135) = 0;
        OUTLINED_FUNCTION_10_11();
        v86 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_91;
      case 1:
        if (iAP2MsgIsDataVoid(FirstParam))
        {
          if ((v17 & 1) == 0)
          {
            v17 = 1;
            goto LABEL_41;
          }

          v118 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v118))
          {
            goto LABEL_92;
          }

          goto LABEL_90;
        }

        v97 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_70_3(v97))
        {
          goto LABEL_92;
        }

        goto LABEL_80;
      case 2:
        if (iAP2MsgIsDataVoid(FirstParam))
        {
          if ((v18 & 1) == 0)
          {
            v18 = 1;
            goto LABEL_41;
          }

          v18 = logObjectForModule_15();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_92;
          }

          v107 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v107, v108, v109, v110, v111, v112, v113, v114, v127, *(&v127 + 1), v128);
          LODWORD(v135) = 2;
          OUTLINED_FUNCTION_10_11();
          v86 = "Too many params Param ID: %d for Msg ID: 0x%04X - ignoring message";
        }

        else
        {
          v18 = logObjectForModule_15();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_92;
          }

          v88 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v88, v89, v90, v91, v92, v93, v94, v95, v127, *(&v127 + 1), v128);
          LODWORD(v135) = 2;
          OUTLINED_FUNCTION_10_11();
          v86 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        }

        goto LABEL_91;
      case 3:
        if (iAP2MsgIsDataVoid(FirstParam))
        {
          if ((v19 & 1) == 0)
          {
            v19 = 1;
            goto LABEL_41;
          }

          v116 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v116))
          {
            goto LABEL_92;
          }

          goto LABEL_90;
        }

        v87 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_70_3(v87))
        {
          goto LABEL_92;
        }

        goto LABEL_80;
      case 4:
        if (iAP2MsgIsDataVoid(FirstParam))
        {
          if ((v131 & 1) == 0)
          {
            LOBYTE(v131) = 1;
            goto LABEL_41;
          }

          v115 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v115))
          {
            goto LABEL_92;
          }

          goto LABEL_90;
        }

        v98 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_70_3(v98))
        {
          goto LABEL_92;
        }

        goto LABEL_80;
      case 5:
        if (!iAP2MsgIsDataVoid(FirstParam))
        {
          v96 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v96))
          {
            goto LABEL_92;
          }

LABEL_80:
          v99 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v99, v100, v101, v102, v103, v104, v105, v106, v127, *(&v127 + 1), v128);
          OUTLINED_FUNCTION_0();
          v86 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
LABEL_91:
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v86, buf, 0xEu);
          goto LABEL_92;
        }

        if ((v131 & 0x100000000) != 0)
        {
          v117 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v117))
          {
            goto LABEL_92;
          }

LABEL_90:
          v119 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v119, v120, v121, v122, v123, v124, v125, v126, v127, *(&v127 + 1), v128);
          OUTLINED_FUNCTION_0();
          v86 = "Too many params Param ID: %d for Msg ID: 0x%04X - ignoring message";
          goto LABEL_91;
        }

        BYTE4(v131) = 1;
LABEL_34:
        v23 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v24 = *(gLogObjects + 368);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_14_10();
          v136 = v23;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        if (OUTLINED_FUNCTION_106())
        {
          v27 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v27, v28, v29, v30, v31, v32, v33, v34, v127, *(&v127 + 1), v128);
          LODWORD(v135) = ParamID;
          OUTLINED_FUNCTION_10_11();
          OUTLINED_FUNCTION_74_0();
          _os_log_debug_impl(v35, v36, v37, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v38, 0xEu);
        }

LABEL_41:
        v25 = OUTLINED_FUNCTION_21_1();
        FirstParam = iAP2MsgGetNextParam(v25, v26, FirstParam);
        if (FirstParam)
        {
          continue;
        }

        v39 = v20 > 0;
LABEL_44:
        v40 = gLogObjects;
        v41 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v42 = *(gLogObjects + 368);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          *buf = 134218240;
          v135 = v40;
          OUTLINED_FUNCTION_49_2();
          v136 = v41;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v43 = *(v129 + 8);
          OUTLINED_FUNCTION_78_3();
          OUTLINED_FUNCTION_33_5();
          _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
        }

        Feature = iap2_feature_getFeature(v129, 0x11u);
        if (!Feature || (v50 = Feature, buf[0] = 0, !iap2_identification_checkRequiredMsgIDs(v129, &gskMsgNavigationMainList, 5, buf)))
        {
LABEL_92:
          v12 = 0;
          v53 = theArray;
          if (theArray)
          {
            goto LABEL_67;
          }

          return v12;
        }

        v50[16] = v17 & 1;
        v50[17] = v18 & 1;
        v50[18] = v19 & 1;
        v50[19] = iap2_identification_isIdentifiedForOutgoingMessageID(v129, 0x5204u);
        v50[20] = v131 & 1;
        v50[21] = BYTE4(v131) & 1;
        v51 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v52 = *(gLogObjects + 368);
        }

        else
        {
          v52 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_14_10();
            v136 = v51;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v75, v76, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        v53 = theArray;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v135 = theArray;
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v63, v64, v65, v66, v67, 0xCu);
        }

        v54 = v50[16];
        v55 = v50[17];
        OUTLINED_FUNCTION_99_0();
        v56 = v50[18];
        OUTLINED_FUNCTION_99_0();
        v57 = v50[19];
        OUTLINED_FUNCTION_99_0();
        v58 = v50[20];
        OUTLINED_FUNCTION_99_0();
        if (v50[21])
        {
          v60 = v59 | 0x20;
        }

        else
        {
          v60 = v59;
        }

        if (v39)
        {
          v61 = theArray;
        }

        else
        {
          v61 = 0;
        }

        platform_navigation_startRouteGuidance(*(v129 + 8), v61, v60);
        v12 = 1;
        if (theArray)
        {
LABEL_67:
          CFRelease(v53);
        }

        return v12;
      default:
        goto LABEL_34;
    }
  }
}

uint64_t iap2_navigation_roadObjectDetectionUpdateHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v5 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    *buf = 134218240;
    v209 = v4;
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v121, v122, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  v6 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v6, v7))
  {
    if (a1)
    {
      v8 = *(a1 + 8);
    }

    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_68_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  v14 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_84;
  }

  v206 = a1;
  v15 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v15, v16);
  HIDWORD(v207) = 0;
  if (!FirstParam)
  {
    ObjectDetectionInfoDict = 0;
LABEL_65:
    v88 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v89 = *(gLogObjects + 368);
      a1 = v206;
    }

    else
    {
      a1 = v206;
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        v209 = v88;
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v125, v126, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v90 = OUTLINED_FUNCTION_97_0();
    if (os_log_type_enabled(v90, v91))
    {
      v114 = *(a1 + 8);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_103(&_mh_execute_header, v115, v116, "iAP2Navigation RoadObjectDetectionUpdate: %@", v117, v118, v119, v120, v203, *(&v203 + 1), v204, *(&v204 + 1), v205, *(&v205 + 1), v206, v207, buf[0]);
    }

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_105;
    }

    buf[0] = 0;
    if (!iap2_identification_checkRequiredMsgIDs(a1, &gskMsgNavigationMainList, 5, buf) || !ObjectDetectionInfoDict)
    {
      goto LABEL_105;
    }

    Item = platform_navigation_objectDetectionInfoGetItem(ObjectDetectionInfoDict, 0);
    v93 = gLogObjects;
    v94 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v95 = *(gLogObjects + 368);
    }

    else if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v209 = v93;
      OUTLINED_FUNCTION_20_4();
      LODWORD(v211) = v94;
      OUTLINED_FUNCTION_39(&_mh_execute_header, v127, v128, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    a1 = v206;
    if (OUTLINED_FUNCTION_76_1())
    {
      v96 = *(v206 + 8);
      OUTLINED_FUNCTION_14_1();
      v210 = 2112;
      v211 = Item;
      v212 = 2112;
      v213 = ObjectDetectionInfoDict;
      OUTLINED_FUNCTION_40_5();
      _os_log_impl(v97, v98, v99, v100, v101, 0x20u);
    }

    platform_navigation_objectDetectionUpdateInfo(*(v206 + 8), 0, ObjectDetectionInfoDict);
    v102 = 1;
    goto LABEL_83;
  }

  NextParam = FirstParam;
  ObjectDetectionInfoDict = 0;
  *&v18 = 138412546;
  v205 = v18;
  *&v18 = 67109376;
  v203 = v18;
  *&v18 = 134218240;
  v204 = v18;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    v22 = gLogObjects;
    v23 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v24 = *(gLogObjects + 368);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = v204;
      v209 = v22;
      OUTLINED_FUNCTION_20_4();
      LODWORD(v211) = v23;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v25 = OUTLINED_FUNCTION_106();
    if (v25)
    {
      OUTLINED_FUNCTION_44_5(v25, v26, v27, v28, v29, v30, v31, v32, v203, *(&v203 + 1), v204, *(&v204 + 1), v205, v206);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_20_4();
      LODWORD(v211) = ParamID;
      OUTLINED_FUNCTION_74_0();
      _os_log_debug_impl(v58, v59, v60, "iAP2Navigation RoadObjectDetectionUpdate Handler %@, process paramID=%d", v61, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v33 = OUTLINED_FUNCTION_93_1();
        DataAsU16 = iAP2MsgGetDataAsU16(v33, v34);
        if (!HIDWORD(v207))
        {
          v36 = DataAsU16;
          if (!ObjectDetectionInfoDict)
          {
            ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
          }

          platform_navigation_objectDetectionInfoAddComponentID(ObjectDetectionInfoDict, v36);
          goto LABEL_49;
        }

        v153 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_47_2(v153))
        {
          goto LABEL_104;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_38_6(MsgID, v155, v156, v157, v158, v159, v160, v161, v203);
        LODWORD(v209) = 0;
        OUTLINED_FUNCTION_12_0();
        goto LABEL_114;
      case 1:
        v50 = OUTLINED_FUNCTION_93_1();
        iAP2MsgGetDataAsU64(v50, v51);
        if (!HIDWORD(v207))
        {
          v52 = OUTLINED_FUNCTION_66_1();
          if (platform_navigation_objectDetectionInfoGetItem(v52, v53))
          {
            goto LABEL_104;
          }

          if (!ObjectDetectionInfoDict)
          {
            ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
          }

          v54 = OUTLINED_FUNCTION_73_2();
          platform_navigation_objectDetectionInfoSetTimestamp(v54, v55);
          goto LABEL_49;
        }

        v130 = logObjectForModule_15();
        a1 = v206;
        if (!OUTLINED_FUNCTION_47_2(v130))
        {
          goto LABEL_105;
        }

        v131 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_38_6(v131, v132, v133, v134, v135, v136, v137, v138, v203);
        LODWORD(v209) = 1;
        OUTLINED_FUNCTION_12_0();
        goto LABEL_100;
      case 2:
        v40 = OUTLINED_FUNCTION_93_1();
        DataAsI32 = iAP2MsgGetDataAsI32(v40, v41);
        if (HIDWORD(v207))
        {
          v139 = logObjectForModule_15();
          a1 = v206;
          if (!OUTLINED_FUNCTION_50_1(v139))
          {
            goto LABEL_105;
          }

          v140 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_38_6(v140, v141, v142, v143, v144, v145, v146, v147, v203);
          LODWORD(v209) = v23;
          OUTLINED_FUNCTION_12_0();
LABEL_100:
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v148, v149, v150, v151, v152, 0xEu);
          goto LABEL_105;
        }

        v43 = DataAsI32;
        v44 = OUTLINED_FUNCTION_94();
        if (platform_navigation_objectDetectionInfoGetItem(v44, v45))
        {
          goto LABEL_104;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        platform_navigation_objectDetectionInfoSetEgoSpeed(ObjectDetectionInfoDict, v43);
        goto LABEL_49;
      case 3:
        v214 = 0xAAAAAAAAAAAAAAAALL;
        DataAsArrayI32 = iAP2MsgGetDataAsArrayI32(NextParam, &v207 + 1, &v214, 2);
        if (HIDWORD(v207))
        {
          v129 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v129))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (DataAsArrayI32 == 2)
          {
            v47 = OUTLINED_FUNCTION_95_1();
            if (platform_navigation_objectDetectionInfoGetItem(v47, v48))
            {
              goto LABEL_104;
            }

            v49 = v214;
            if (!ObjectDetectionInfoDict)
            {
              ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
            }

            platform_navigation_objectDetectionInfoSetEgoYawRate(ObjectDetectionInfoDict, v49 / SHIDWORD(v49));
            goto LABEL_49;
          }

          v162 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v162))
          {
            goto LABEL_104;
          }
        }

        v190 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_38_6(v190, v191, v192, v193, v194, v195, v196, v197, v203);
        LODWORD(v209) = 3;
        OUTLINED_FUNCTION_12_0();
LABEL_114:
        OUTLINED_FUNCTION_76_3();
        _os_log_debug_impl(v198, v199, v200, v201, v202, 0xEu);
        goto LABEL_104;
      case 4:
        v62 = OUTLINED_FUNCTION_43_4(v25, v26, v27, v28, v29, v30, v31, v32, v203, *(&v203 + 1), v204, *(&v204 + 1), v205, *(&v205 + 1), v206);
        v66 = _parseRoadSignParameter(v62, v63, v64, v65);
        v67 = v66;
        if (HIDWORD(v207))
        {
          CFRelease(v66);
          v172 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_47_2(v172))
          {
            v173 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_38_6(v173, v174, v175, v176, v177, v178, v179, v180, v203);
            LODWORD(v209) = 4;
            OUTLINED_FUNCTION_12_0();
            goto LABEL_114;
          }

          goto LABEL_104;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        v68 = OUTLINED_FUNCTION_73_2();
        platform_navigation_objectDetectionInfoAddRoadSign(v68, v69);
        goto LABEL_63;
      case 5:
        OUTLINED_FUNCTION_43_4(v25, v26, v27, v28, v29, v30, v31, v32, v203, *(&v203 + 1), v204, *(&v204 + 1), v205, *(&v205 + 1), v206);
        v70 = _parseRoadLaneParameter();
        v67 = v70;
        if (HIDWORD(v207))
        {
          CFRelease(v70);
          v163 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_47_2(v163))
          {
            v164 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_38_6(v164, v165, v166, v167, v168, v169, v170, v171, v203);
            LODWORD(v209) = 5;
            OUTLINED_FUNCTION_12_0();
            goto LABEL_114;
          }

          goto LABEL_104;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        v71 = OUTLINED_FUNCTION_73_2();
        platform_navigation_objectDetectionInfoAddRoadLane(v71, v72);
        goto LABEL_63;
      case 6:
        OUTLINED_FUNCTION_43_4(v25, v26, v27, v28, v29, v30, v31, v32, v203, *(&v203 + 1), v204, *(&v204 + 1), v205, *(&v205 + 1), v206);
        v73 = _parseRoadObjectParameter();
        v67 = v73;
        if (!HIDWORD(v207))
        {
          if (!ObjectDetectionInfoDict)
          {
            ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
          }

          v74 = OUTLINED_FUNCTION_73_2();
          platform_navigation_objectDetectionInfoAddRoadObject(v74, v75);
LABEL_63:
          CFRelease(v67);
LABEL_49:
          v56 = OUTLINED_FUNCTION_21_1();
          NextParam = iAP2MsgGetNextParam(v56, v57, NextParam);
          if (!NextParam)
          {
            goto LABEL_65;
          }

          continue;
        }

        CFRelease(v73);
        v181 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v181))
        {
          v182 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_38_6(v182, v183, v184, v185, v186, v187, v188, v189, v203);
          LODWORD(v209) = 6;
          OUTLINED_FUNCTION_12_0();
          goto LABEL_114;
        }

LABEL_104:
        a1 = v206;
LABEL_105:
        v102 = 0;
        v14 = 0;
        if (ObjectDetectionInfoDict)
        {
LABEL_83:
          CFRelease(ObjectDetectionInfoDict);
          v14 = v102;
        }

LABEL_84:
        v103 = gLogObjects;
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v104 = *(gLogObjects + 368);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          *buf = 134218240;
          v209 = v103;
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v123, v124, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v105 = OUTLINED_FUNCTION_66_1();
        if (os_log_type_enabled(v105, v106))
        {
          if (a1)
          {
            v107 = *(a1 + 8);
          }

          OUTLINED_FUNCTION_14_1();
          OUTLINED_FUNCTION_20_4();
          LODWORD(v211) = v14;
          OUTLINED_FUNCTION_68_3();
          _os_log_impl(v108, v109, v110, v111, v112, 0x12u);
        }

        return v14;
      default:
        v37 = gLogObjects;
        v38 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v39 = *(gLogObjects + 368);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v204;
          v209 = v37;
          OUTLINED_FUNCTION_20_4();
          LODWORD(v211) = v38;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        if (OUTLINED_FUNCTION_106())
        {
          v76 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_38_6(v76, v77, v78, v79, v80, v81, v82, v83, v203);
          LODWORD(v209) = ParamID;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_74_0();
          _os_log_debug_impl(v84, v85, v86, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v87, 0xEu);
        }

        goto LABEL_49;
    }
  }
}

unsigned __int16 *_parseRoadSignParameter(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _DWORD *a4)
{
  v95 = a1;
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v9 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    v103 = v7;
    OUTLINED_FUNCTION_15_0();
    v104 = v8;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_108())
  {
    if (v95)
    {
      v65 = *(v95 + 8);
      if (a2)
      {
LABEL_52:
        MsgID = iAP2MsgGetMsgID(a2);
        if (!a3)
        {
LABEL_56:
          *buf = 138412802;
          v103 = v65;
          OUTLINED_FUNCTION_15_0();
          v104 = MsgID;
          v105 = v68;
          v106 = v69;
          OUTLINED_FUNCTION_55_1();
          _os_log_debug_impl(v70, v71, v72, v73, v74, 0x18u);
          goto LABEL_7;
        }

LABEL_53:
        iAP2MsgGetParamID(a3);
        goto LABEL_56;
      }
    }

    else
    {
      v65 = 0;
      if (a2)
      {
        goto LABEL_52;
      }
    }

    MsgID = 0;
    if (!a3)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_7:
  FirstParam = 0;
  v11 = -1;
  if (!v95 || !a2 || !a3)
  {
    goto LABEL_49;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (!FirstParam)
  {
    goto LABEL_48;
  }

  v93 = a4;
  v96 = 0;
  cf = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v13 = kCFAllocatorDefault;
  *&v12 = 138412546;
  v94 = v12;
  *&v12 = 134218240;
  v91 = v12;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v15 = gLogObjects;
    v16 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v17 = *(gLogObjects + 368);
    }

    else
    {
      v17 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        *buf = v91;
        v103 = v15;
        OUTLINED_FUNCTION_15_0();
        v104 = v16;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v17 = &_os_log_default;
      }
    }

    v18 = OUTLINED_FUNCTION_97_0();
    v20 = os_log_type_enabled(v18, v19);
    if (v20)
    {
      *buf = OUTLINED_FUNCTION_44_5(v20, v21, v22, v23, v24, v25, v26, v27, v91, *(&v91 + 1), v92, v93, v94, v95).n128_u32[0];
      v103 = v51;
      OUTLINED_FUNCTION_15_0();
      v104 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_parseRoadSignParameter: %@, process paramID=%d", buf, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v28 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU32(v28, v29);
        if (!v96)
        {
          v30 = OUTLINED_FUNCTION_75_4();
          v96 = CFNumberCreate(v30, kCFNumberSInt32Type, v31);
          goto LABEL_32;
        }

        v77 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_65_1(v77))
        {
          goto LABEL_68;
        }

        iAP2MsgGetParamID(a3);
        OUTLINED_FUNCTION_60();
        *buf = 67109632;
        LODWORD(v103) = 0;
        OUTLINED_FUNCTION_4_18();
        goto LABEL_67;
      case 1:
        v43 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU8(v43, v44);
        if (cf)
        {
          v79 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_65_1(v79))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v103) = 1;
            OUTLINED_FUNCTION_4_18();
LABEL_67:
            OUTLINED_FUNCTION_55_1();
            _os_log_debug_impl(v80, v81, v82, v83, v84, 0x14u);
          }

          goto LABEL_68;
        }

        v45 = OUTLINED_FUNCTION_75_4();
        cf = CFNumberCreate(v45, kCFNumberSInt8Type, v46);
        goto LABEL_32;
      case 2:
        v36 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU8(v36, v37);
        if (v98)
        {
          v75 = logObjectForModule_15();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v103) = 2;
            OUTLINED_FUNCTION_4_18();
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        v38 = OUTLINED_FUNCTION_75_4();
        v98 = CFNumberCreate(v38, kCFNumberSInt8Type, v39);
        goto LABEL_32;
      case 3:
        v40 = OUTLINED_FUNCTION_64_1();
        v42 = iAP2MsgCopyDataAsCFString(v40, v41);
        if (v99)
        {
          v85 = logObjectForModule_15();
          a4 = v93;
          if (OUTLINED_FUNCTION_65_1(v85))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v103) = 3;
            OUTLINED_FUNCTION_4_18();
            OUTLINED_FUNCTION_55_1();
            _os_log_debug_impl(v86, v87, v88, v89, v90, 0x14u);
          }

          goto LABEL_69;
        }

        v99 = v42;
        goto LABEL_32;
      case 4:
        v32 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsI32(v32, v33);
        if (v100)
        {
          v76 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_65_1(v76))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v103) = 4;
            OUTLINED_FUNCTION_4_18();
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        v34 = OUTLINED_FUNCTION_75_4();
        v100 = CFNumberCreate(v34, kCFNumberSInt32Type, v35);
        goto LABEL_32;
      case 5:
        v47 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU32(v47, v48);
        if (!v101)
        {
          v49 = OUTLINED_FUNCTION_75_4();
          v101 = CFNumberCreate(v49, kCFNumberSInt32Type, v50);
LABEL_32:
          FirstParam = iAP2MsgGetNextParam(a2, a3, FirstParam);
          if (!FirstParam)
          {
            FirstParam = v96;
            if (v96)
            {
              platform_navigation_createObjectDetectionRoadSignDict(*(v95 + 8));
              OUTLINED_FUNCTION_69_2();
              platform_navigation_objectDetectionRoadSignSetInfo(v52, v53, v54);
              v55 = 1;
              v56 = OUTLINED_FUNCTION_66_1();
              platform_navigation_objectDetectionRoadSignSetInfo(v56, v57, cf);
              v58 = OUTLINED_FUNCTION_94();
              platform_navigation_objectDetectionRoadSignSetInfo(v58, v59, v98);
              v60 = OUTLINED_FUNCTION_95_1();
              platform_navigation_objectDetectionRoadSignSetInfo(v60, v61, v99);
              platform_navigation_objectDetectionRoadSignSetInfo(kCFAllocatorDefault, 4, v100);
              platform_navigation_objectDetectionRoadSignSetInfo(kCFAllocatorDefault, 5, v101);
              a4 = v93;
              v62 = v96;
              goto LABEL_35;
            }

            v63 = 0;
            a4 = v93;
            goto LABEL_36;
          }

          continue;
        }

        v78 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_65_1(v78))
        {
          iAP2MsgGetParamID(a3);
          OUTLINED_FUNCTION_60();
          *buf = 67109632;
          LODWORD(v103) = 5;
          OUTLINED_FUNCTION_4_18();
          goto LABEL_67;
        }

LABEL_68:
        a4 = v93;
LABEL_69:
        v55 = 0;
        v13 = 0;
        FirstParam = 0;
        v63 = 0;
        v62 = v96;
        if (v96)
        {
LABEL_35:
          CFRelease(v62);
          FirstParam = v13;
          v63 = v55;
        }

LABEL_36:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v98)
        {
          CFRelease(v98);
        }

        if (v99)
        {
          CFRelease(v99);
        }

        if (v100)
        {
          CFRelease(v100);
        }

        if (v101)
        {
          CFRelease(v101);
          if (v63)
          {
            goto LABEL_46;
          }

LABEL_48:
          v11 = -1;
        }

        else
        {
          if (!v63)
          {
            goto LABEL_48;
          }

LABEL_46:
          v11 = 0;
        }

LABEL_49:
        *a4 = v11;
        return FirstParam;
      default:
        goto LABEL_32;
    }
  }
}

unsigned __int16 *_parseRoadLaneParameter()
{
  OUTLINED_FUNCTION_100_0();
  v4 = gLogObjects;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v7 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    *&buf[4] = v4;
    OUTLINED_FUNCTION_49_1();
    v213 = v6;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v124, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_108())
  {
    if (v3)
    {
      v122 = *(v3 + 8);
      if (v0)
      {
LABEL_81:
        MsgID = iAP2MsgGetMsgID(v0);
        if (!v1)
        {
LABEL_85:
          *buf = 138412802;
          *&buf[4] = v122;
          OUTLINED_FUNCTION_49_1();
          v213 = MsgID;
          v214 = v125;
          v215 = v126;
          OUTLINED_FUNCTION_55_1();
          _os_log_debug_impl(v127, v128, v129, v130, v131, 0x18u);
          goto LABEL_7;
        }

LABEL_82:
        iAP2MsgGetParamID(v1);
        goto LABEL_85;
      }
    }

    else
    {
      v122 = 0;
      if (v0)
      {
        goto LABEL_81;
      }
    }

    MsgID = 0;
    if (!v1)
    {
      goto LABEL_85;
    }

    goto LABEL_82;
  }

LABEL_7:
  FirstParam = 0;
  v9 = -1;
  if (!v3 || !v0 || !v1)
  {
    goto LABEL_78;
  }

  HIDWORD(v207) = 0;
  v10 = OUTLINED_FUNCTION_72_1();
  FirstParam = iAP2MsgGetFirstParam(v10, v11);
  if (!FirstParam)
  {
    goto LABEL_77;
  }

  v193 = v3;
  v197 = 0;
  v181 = v2;
  cf = 0;
  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v198 = 0;
  v199 = 0;
  v200 = 0;
  *&v12 = 138412546;
  *v182 = v12;
  *&v12 = 134218240;
  *v170 = v12;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v16 = *(gLogObjects + 368);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v170[0];
        *&buf[4] = v14;
        OUTLINED_FUNCTION_49_1();
        v213 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v16 = &_os_log_default;
      }
    }

    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      v110 = *(v193 + 8);
      *buf = v182[0];
      *&buf[4] = v110;
      OUTLINED_FUNCTION_49_1();
      v213 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "_parseRoadLaneParameter: %@, process paramID=%d", buf, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v25 = OUTLINED_FUNCTION_56_4();
        LODWORD(valuePtr) = iAP2MsgGetDataAsU32(v25, v26);
        if (HIDWORD(v207))
        {
          v147 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v147))
          {
            goto LABEL_133;
          }

          goto LABEL_105;
        }

        if (!v197)
        {
          v197 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_53;
        }

        v149 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v149))
        {
LABEL_105:
          iAP2MsgGetParamID(v1);
          v148 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_2_23(v148);
          goto LABEL_132;
        }

        goto LABEL_133;
      case 1:
        v76 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v76, v77);
        OUTLINED_FUNCTION_79_2();
        if (v86)
        {
          v133 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v133))
          {
            goto LABEL_133;
          }

          goto LABEL_89;
        }

        if (!cf)
        {
          cf = OUTLINED_FUNCTION_51_0(v78, v79, v80, v81, v82, v83, v84, v85, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, 0, v202, v203, v204, v205, v206, v207, valuePtr);
          goto LABEL_53;
        }

        v158 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v158))
        {
LABEL_89:
          iAP2MsgGetParamID(v1);
          v134 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v134, 1);
LABEL_132:
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v165, v166, v167, v168, v169, 0x14u);
          goto LABEL_133;
        }

        goto LABEL_133;
      case 2:
        v46 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v46, v47);
        OUTLINED_FUNCTION_79_2();
        if (v56)
        {
          v144 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_50_1(v144))
          {
            goto LABEL_133;
          }

          goto LABEL_101;
        }

        if (!v202)
        {
          v202 = OUTLINED_FUNCTION_51_0(v48, v49, v50, v51, v52, v53, v54, v55, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, 0, v203, v204, v205, v206, v207, valuePtr);
          goto LABEL_53;
        }

        v156 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_50_1(v156))
        {
LABEL_101:
          iAP2MsgGetParamID(v1);
          v145 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          *&buf[4] = v14;
          OUTLINED_FUNCTION_2_23(v145);
          goto LABEL_132;
        }

        goto LABEL_133;
      case 3:
        v57 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v57, v58);
        OUTLINED_FUNCTION_79_2();
        if (v67)
        {
          v140 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v140))
          {
            goto LABEL_133;
          }

          goto LABEL_97;
        }

        if (!v203)
        {
          v203 = OUTLINED_FUNCTION_51_0(v59, v60, v61, v62, v63, v64, v65, v66, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, v202, 0, v204, v205, v206, v207, valuePtr);
          goto LABEL_53;
        }

        v153 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v153))
        {
LABEL_97:
          iAP2MsgGetParamID(v1);
          v141 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v141, 3);
          goto LABEL_132;
        }

        goto LABEL_133;
      case 4:
        v27 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v27, v28);
        OUTLINED_FUNCTION_79_2();
        if (v37)
        {
          v142 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v142))
          {
            goto LABEL_133;
          }

          goto LABEL_99;
        }

        if (!v204)
        {
          v204 = OUTLINED_FUNCTION_51_0(v29, v30, v31, v32, v33, v34, v35, v36, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, v202, v203, 0, v205, v206, v207, valuePtr);
          goto LABEL_53;
        }

        v152 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v152))
        {
LABEL_99:
          iAP2MsgGetParamID(v1);
          v143 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v143, 4);
          goto LABEL_132;
        }

        goto LABEL_133;
      case 5:
        v87 = OUTLINED_FUNCTION_56_4();
        iAP2MsgGetDataAsU8(v87, v88);
        OUTLINED_FUNCTION_79_2();
        if (v97)
        {
          v137 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v137))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (!v205)
          {
            v205 = OUTLINED_FUNCTION_51_0(v89, v90, v91, v92, v93, v94, v95, v96, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, v202, v203, v204, 0, v206, v207, valuePtr);
            goto LABEL_53;
          }

          v150 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v150))
          {
            goto LABEL_133;
          }
        }

        iAP2MsgGetParamID(v1);
        v138 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_0_10(v138, 5);
        goto LABEL_132;
      case 6:
        v98 = OUTLINED_FUNCTION_56_4();
        LODWORD(valuePtr) = iAP2MsgGetDataAsU32(v98, v99);
        if (HIDWORD(v207))
        {
          v135 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v135))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (!v206)
          {
            v206 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
            goto LABEL_53;
          }

          v155 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v155))
          {
            goto LABEL_133;
          }
        }

        iAP2MsgGetParamID(v1);
        v136 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_0_10(v136, 6);
        goto LABEL_132;
      case 7:
        v68 = OUTLINED_FUNCTION_45_5(v17, v18, v19, v20, v21, v22, v23, v24, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, v202, v203, v204, v205, v206, v207, SHIDWORD(v207), valuePtr);
        if (HIDWORD(v209))
        {
          v146 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v146))
          {
            goto LABEL_133;
          }

          goto LABEL_129;
        }

        if (v68 != 2)
        {
          v154 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v154))
          {
            goto LABEL_133;
          }

          goto LABEL_129;
        }

        if (!v198)
        {
          v198 = OUTLINED_FUNCTION_19_7(2, v69, v70, v71, v72, v73, v74, v75, v172, v175, v179, v181, v184, v187, v191, v195, v197, 0, v199, v200, cf, v202, v203, v204, v205, v206, v209, valuePtr, SHIDWORD(valuePtr));
          goto LABEL_53;
        }

        v161 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v161))
        {
LABEL_129:
          iAP2MsgGetParamID(v1);
          v162 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v162, 7);
          goto LABEL_132;
        }

        goto LABEL_133;
      case 8:
        v100 = OUTLINED_FUNCTION_45_5(v17, v18, v19, v20, v21, v22, v23, v24, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, v202, v203, v204, v205, v206, v207, SHIDWORD(v207), valuePtr);
        if (HIDWORD(v210))
        {
          v132 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v132))
          {
            goto LABEL_133;
          }

LABEL_127:
          iAP2MsgGetParamID(v1);
          v160 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_0_10(v160, 8);
          goto LABEL_132;
        }

        if (v100 != 2)
        {
          v151 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v151))
          {
            goto LABEL_133;
          }

          goto LABEL_127;
        }

        if (v199)
        {
          v159 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v159))
          {
            goto LABEL_133;
          }

          goto LABEL_127;
        }

        v199 = OUTLINED_FUNCTION_19_7(2, v101, v102, v103, v104, v105, v106, v107, v173, v176, v180, v181, v185, v188, v192, v196, v197, v198, 0, v200, cf, v202, v203, v204, v205, v206, v210, valuePtr, SHIDWORD(valuePtr));
LABEL_53:
        v108 = OUTLINED_FUNCTION_72_1();
        FirstParam = iAP2MsgGetNextParam(v108, v109, FirstParam);
        if (FirstParam)
        {
          continue;
        }

        v111 = v197;
        if (v197)
        {
          platform_navigation_createObjectDetectionRoadSignDict(*(v193 + 8));
          OUTLINED_FUNCTION_69_2();
          platform_navigation_objectDetectionRoadLaneSetInfo(v112, v113, v114);
          LODWORD(v1) = 1;
          v115 = OUTLINED_FUNCTION_66_1();
          platform_navigation_objectDetectionRoadLaneSetInfo(v115, v116, cf);
          v117 = OUTLINED_FUNCTION_94();
          platform_navigation_objectDetectionRoadLaneSetInfo(v117, v118, v202);
          v119 = OUTLINED_FUNCTION_95_1();
          platform_navigation_objectDetectionRoadLaneSetInfo(v119, v120, v203);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 4, v204);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 5, v205);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 6, v206);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 7, v198);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 8, v199);
          platform_navigation_objectDetectionRoadLaneSetInfo(v0, 7, v200);
          v2 = v181;
          goto LABEL_56;
        }

        FirstParam = 0;
        LODWORD(v5) = 0;
        v2 = v181;
LABEL_57:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v202)
        {
          CFRelease(v202);
        }

        if (v203)
        {
          CFRelease(v203);
        }

        if (v204)
        {
          CFRelease(v204);
        }

        if (v205)
        {
          CFRelease(v205);
        }

        if (v206)
        {
          CFRelease(v206);
        }

        if (v198)
        {
          CFRelease(v198);
        }

        if (v199)
        {
          CFRelease(v199);
        }

        if (v200)
        {
          CFRelease(v200);
          if (v5)
          {
            goto LABEL_75;
          }

LABEL_77:
          v9 = -1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_77;
          }

LABEL_75:
          v9 = 0;
        }

LABEL_78:
        *v2 = v9;
        return FirstParam;
      case 9:
        v38 = OUTLINED_FUNCTION_45_5(v17, v18, v19, v20, v21, v22, v23, v24, v170[0], v170[1], v177, v181, v182[0], v182[1], v189, v193, v197, v198, v199, v200, cf, v202, v203, v204, v205, v206, v207, SHIDWORD(v207), valuePtr);
        if (HIDWORD(v208))
        {
          v139 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v139))
          {
            goto LABEL_133;
          }
        }

        else if (v38 == 2)
        {
          if (!v200)
          {
            v200 = OUTLINED_FUNCTION_19_7(2, v39, v40, v41, v42, v43, v44, v45, v171, v174, v178, v181, v183, v186, v190, v194, v197, v198, v199, 0, cf, v202, v203, v204, v205, v206, v208, valuePtr, SHIDWORD(valuePtr));
            goto LABEL_53;
          }

          v163 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v163))
          {
LABEL_133:
            v2 = v181;
            v111 = v197;
            OUTLINED_FUNCTION_87_2();
            if (v197)
            {
LABEL_56:
              CFRelease(v111);
              FirstParam = v0;
              LODWORD(v5) = v1;
            }

            goto LABEL_57;
          }
        }

        else
        {
          v157 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v157))
          {
            goto LABEL_133;
          }
        }

        iAP2MsgGetParamID(v1);
        v164 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_0_10(v164, 9);
        goto LABEL_132;
      default:
        goto LABEL_53;
    }
  }
}

unsigned __int16 *_parseRoadObjectParameter()
{
  OUTLINED_FUNCTION_100_0();
  v4 = gLogObjects;
  v5 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v7 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    *&buf[4] = v4;
    OUTLINED_FUNCTION_17_0();
    v209 = v6;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v148, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_108())
  {
    if (v3)
    {
      v146 = *(v3 + 8);
      if (v0)
      {
LABEL_78:
        MsgID = iAP2MsgGetMsgID(v0);
        if (!v1)
        {
LABEL_82:
          *buf = 138412802;
          *&buf[4] = v146;
          OUTLINED_FUNCTION_17_0();
          v209 = MsgID;
          v210 = v149;
          v211 = v150;
          OUTLINED_FUNCTION_55_1();
          _os_log_debug_impl(v151, v152, v153, v154, v155, 0x18u);
          goto LABEL_7;
        }

LABEL_79:
        iAP2MsgGetParamID(v1);
        goto LABEL_82;
      }
    }

    else
    {
      v146 = 0;
      if (v0)
      {
        goto LABEL_78;
      }
    }

    MsgID = 0;
    if (!v1)
    {
      goto LABEL_82;
    }

    goto LABEL_79;
  }

LABEL_7:
  FirstParam = 0;
  v9 = -1;
  if (!v3 || !v0 || !v1)
  {
    goto LABEL_75;
  }

  v207 = 0;
  v10 = OUTLINED_FUNCTION_72_1();
  FirstParam = iAP2MsgGetFirstParam(v10, v11);
  if (!FirstParam)
  {
    goto LABEL_74;
  }

  v195 = v3;
  v196 = 0;
  v193 = v2;
  cf = 0;
  v198 = 0;
  v199 = 0;
  v200 = 0;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  *&v12 = 138412546;
  v194 = v12;
  *&v12 = 134218240;
  *v191 = v12;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v16 = *(gLogObjects + 368);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v191[0];
        *&buf[4] = v14;
        OUTLINED_FUNCTION_17_0();
        v209 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v16 = &_os_log_default;
      }
    }

    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      *buf = OUTLINED_FUNCTION_44_5(v17, v18, v19, v20, v21, v22, v23, v24, v191[0], v191[1], v192, v193, v194, v195).n128_u32[0];
      *&buf[4] = v134;
      OUTLINED_FUNCTION_17_0();
      v209 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "_parseRoadObjectParameter: %@, process paramID=%d", buf, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v25 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsU32(v25, v26);
        OUTLINED_FUNCTION_57_4();
        if (v35)
        {
          v171 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v171))
          {
            goto LABEL_124;
          }

          goto LABEL_100;
        }

        if (!v196)
        {
          v196 = OUTLINED_FUNCTION_37_3(v27, v28, v29, v30, v31, v32, v33, v34, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, 0, cf, v198, v199, v200, v201, v202, v203, v204, v205, valuePtr);
          goto LABEL_50;
        }

        v181 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v181))
        {
LABEL_100:
          iAP2MsgGetParamID(v1);
          v172 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_3_19(v172);
          goto LABEL_123;
        }

        goto LABEL_124;
      case 1:
        v89 = OUTLINED_FUNCTION_41_4();
        DataAsU8 = iAP2MsgGetDataAsU8(v89, v90);
        if (v207)
        {
          v161 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v161))
          {
            goto LABEL_124;
          }

          goto LABEL_90;
        }

        if (!cf)
        {
          cf = OUTLINED_FUNCTION_83_1(DataAsU8, v92, v93, v94, v95, v96, v97, v98, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, 0, v198, v199, v200, v201, v202, v203, v204, v205, DataAsU8);
          goto LABEL_50;
        }

        v183 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v183))
        {
LABEL_90:
          iAP2MsgGetParamID(v1);
          v162 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v162, 1);
          goto LABEL_123;
        }

        goto LABEL_124;
      case 2:
        v58 = OUTLINED_FUNCTION_41_4();
        v60 = iAP2MsgGetDataAsU8(v58, v59);
        if (v207)
        {
          v159 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_50_1(v159))
          {
            goto LABEL_124;
          }

          goto LABEL_88;
        }

        if (!v198)
        {
          v198 = OUTLINED_FUNCTION_83_1(v60, v61, v62, v63, v64, v65, v66, v67, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, 0, v199, v200, v201, v202, v203, v204, v205, v60);
          goto LABEL_50;
        }

        v175 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_50_1(v175))
        {
LABEL_88:
          iAP2MsgGetParamID(v1);
          v160 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          *&buf[4] = v14;
          OUTLINED_FUNCTION_3_19(v160);
          goto LABEL_123;
        }

        goto LABEL_124;
      case 3:
        v68 = OUTLINED_FUNCTION_41_4();
        v70 = iAP2MsgGetDataAsU8(v68, v69);
        if (v207)
        {
          v165 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v165))
          {
            goto LABEL_124;
          }

          goto LABEL_94;
        }

        if (!v199)
        {
          v199 = OUTLINED_FUNCTION_83_1(v70, v71, v72, v73, v74, v75, v76, v77, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, 0, v200, v201, v202, v203, v204, v205, v70);
          goto LABEL_50;
        }

        v177 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v177))
        {
LABEL_94:
          iAP2MsgGetParamID(v1);
          v166 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v166, 3);
          goto LABEL_123;
        }

        goto LABEL_124;
      case 4:
        v36 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v36, v37);
        OUTLINED_FUNCTION_57_4();
        if (v46)
        {
          v173 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v173))
          {
            goto LABEL_124;
          }

          goto LABEL_102;
        }

        if (!v200)
        {
          v200 = OUTLINED_FUNCTION_37_3(v38, v39, v40, v41, v42, v43, v44, v45, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, v199, 0, v201, v202, v203, v204, v205, valuePtr);
          goto LABEL_50;
        }

        v180 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v180))
        {
LABEL_102:
          iAP2MsgGetParamID(v1);
          v174 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v174, 4);
          goto LABEL_123;
        }

        goto LABEL_124;
      case 5:
        v99 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v99, v100);
        OUTLINED_FUNCTION_57_4();
        if (v109)
        {
          v158 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v158))
          {
            goto LABEL_124;
          }
        }

        else
        {
          if (!v201)
          {
            v201 = OUTLINED_FUNCTION_37_3(v101, v102, v103, v104, v105, v106, v107, v108, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, v199, v200, 0, v202, v203, v204, v205, valuePtr);
            goto LABEL_50;
          }

          v184 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v184))
          {
            goto LABEL_124;
          }
        }

        iAP2MsgGetParamID(v1);
        v185 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v185, 5);
        goto LABEL_123;
      case 6:
        v110 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v110, v111);
        OUTLINED_FUNCTION_57_4();
        if (v120)
        {
          v163 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v163))
          {
            goto LABEL_124;
          }
        }

        else
        {
          if (!v202)
          {
            v202 = OUTLINED_FUNCTION_37_3(v112, v113, v114, v115, v116, v117, v118, v119, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, v199, v200, v201, 0, v203, v204, v205, valuePtr);
            goto LABEL_50;
          }

          v179 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v179))
          {
            goto LABEL_124;
          }
        }

        iAP2MsgGetParamID(v1);
        v164 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v164, 6);
        goto LABEL_123;
      case 7:
        v78 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsU32(v78, v79);
        OUTLINED_FUNCTION_57_4();
        if (v88)
        {
          v169 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v169))
          {
            goto LABEL_124;
          }

          goto LABEL_98;
        }

        if (!v203)
        {
          v203 = OUTLINED_FUNCTION_37_3(v80, v81, v82, v83, v84, v85, v86, v87, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, v199, v200, v201, v202, 0, v204, v205, valuePtr);
          goto LABEL_50;
        }

        v176 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v176))
        {
LABEL_98:
          iAP2MsgGetParamID(v1);
          v170 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v170, 7);
          goto LABEL_123;
        }

        goto LABEL_124;
      case 8:
        v121 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v121, v122);
        OUTLINED_FUNCTION_57_4();
        if (v131)
        {
          v156 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v156))
          {
            goto LABEL_124;
          }

LABEL_84:
          iAP2MsgGetParamID(v1);
          v157 = OUTLINED_FUNCTION_48_3();
          *buf = 67109632;
          OUTLINED_FUNCTION_1_15(v157, 8);
LABEL_123:
          OUTLINED_FUNCTION_76_3();
          _os_log_debug_impl(v186, v187, v188, v189, v190, 0x14u);
          goto LABEL_124;
        }

        if (v204)
        {
          v178 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v178))
          {
            goto LABEL_124;
          }

          goto LABEL_84;
        }

        v204 = OUTLINED_FUNCTION_37_3(v123, v124, v125, v126, v127, v128, v129, v130, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, v199, v200, v201, v202, v203, 0, v205, valuePtr);
LABEL_50:
        v132 = OUTLINED_FUNCTION_72_1();
        FirstParam = iAP2MsgGetNextParam(v132, v133, FirstParam);
        if (FirstParam)
        {
          continue;
        }

        v135 = v196;
        if (v196)
        {
          platform_navigation_createObjectDetectionRoadSignDict(*(v195 + 8));
          OUTLINED_FUNCTION_69_2();
          platform_navigation_objectDetectionRoadObjectSetInfo(v136, v137, v138);
          LODWORD(v1) = 1;
          v139 = OUTLINED_FUNCTION_66_1();
          platform_navigation_objectDetectionRoadObjectSetInfo(v139, v140, cf);
          v141 = OUTLINED_FUNCTION_94();
          platform_navigation_objectDetectionRoadObjectSetInfo(v141, v142, v198);
          v143 = OUTLINED_FUNCTION_95_1();
          platform_navigation_objectDetectionRoadObjectSetInfo(v143, v144, v199);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 4, v200);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 5, v201);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 6, v202);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 7, v203);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 8, v204);
          platform_navigation_objectDetectionRoadObjectSetInfo(v0, 9, v205);
          v2 = v193;
          goto LABEL_53;
        }

        FirstParam = 0;
        LODWORD(v5) = 0;
        v2 = v193;
LABEL_54:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v198)
        {
          CFRelease(v198);
        }

        if (v199)
        {
          CFRelease(v199);
        }

        if (v200)
        {
          CFRelease(v200);
        }

        if (v201)
        {
          CFRelease(v201);
        }

        if (v202)
        {
          CFRelease(v202);
        }

        if (v203)
        {
          CFRelease(v203);
        }

        if (v204)
        {
          CFRelease(v204);
        }

        if (v205)
        {
          CFRelease(v205);
          if (v5)
          {
            goto LABEL_72;
          }

LABEL_74:
          v9 = -1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_74;
          }

LABEL_72:
          v9 = 0;
        }

LABEL_75:
        *v2 = v9;
        return FirstParam;
      case 9:
        v47 = OUTLINED_FUNCTION_41_4();
        iAP2MsgGetDataAsI32(v47, v48);
        OUTLINED_FUNCTION_57_4();
        if (v57)
        {
          v167 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v167))
          {
            goto LABEL_124;
          }
        }

        else
        {
          if (!v205)
          {
            v205 = OUTLINED_FUNCTION_37_3(v49, v50, v51, v52, v53, v54, v55, v56, v191[0], v191[1], v192, v193, v194, *(&v194 + 1), v195, v196, cf, v198, v199, v200, v201, v202, v203, v204, 0, valuePtr);
            goto LABEL_50;
          }

          v182 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v182))
          {
LABEL_124:
            v2 = v193;
            v135 = v196;
            OUTLINED_FUNCTION_87_2();
            if (v196)
            {
LABEL_53:
              CFRelease(v135);
              FirstParam = v0;
              LODWORD(v5) = v1;
            }

            goto LABEL_54;
          }
        }

        iAP2MsgGetParamID(v1);
        v168 = OUTLINED_FUNCTION_48_3();
        *buf = 67109632;
        OUTLINED_FUNCTION_1_15(v168, 9);
        goto LABEL_123;
      default:
        goto LABEL_50;
    }
  }
}

BOOL iap2_navigation_routeGuidanceManeuverUpdateHandler(uint64_t *a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_35(&_mh_execute_header, v144, v145, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v157);
  }

  if (OUTLINED_FUNCTION_82())
  {
    if (a1)
    {
      v5 = a1[1];
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x11u);
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v13 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_8_1();
    *v160 = v12;
    OUTLINED_FUNCTION_39(&_mh_execute_header, v146, v147, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v157);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    v14 = "exists";
    v15 = a1[1];
    if (!Feature)
    {
      v14 = "missing!!";
    }

    v157 = 138412546;
    v158 = v15;
    v159 = 2080;
    *v160 = v14;
    OUTLINED_FUNCTION_40_5();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    v22 = gLogObjects;
    v23 = gNumLogObjects;
    if (gLogObjects)
    {
      v24 = gNumLogObjects <= 46;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    if (*(a2 + 16))
    {
      if (v25)
      {
        v26 = *(gLogObjects + 368);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        v157 = 134218240;
        v158 = v22;
        OUTLINED_FUNCTION_3();
        *v160 = v23;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v148, v149, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v157);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        v28 = a1[1];
        v29 = *(a2 + 8);
        v30 = *(a2 + 16);
        OUTLINED_FUNCTION_38();
        v159 = 2112;
        *v160 = v31;
        *&v160[8] = 2112;
        v161 = v32;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
      }

      v38 = OUTLINED_FUNCTION_49((a1 + 15), 20994, a1[24]);
      v39 = *(a2 + 8);
      if (v39 && (Count = CFArrayGetCount(v39), Count >= 1))
      {
        v41 = Count;
        v42 = 0;
        for (i = 0; i != v41; ++i)
        {
          CFArrayGetValueAtIndex(*(a2 + 8), i);
          v44 = OUTLINED_FUNCTION_13_8();
          v42 += __addU16NumberParameterToMsg(v44, v45, 0, v46);
        }
      }

      else
      {
        v42 = 0;
      }

      v47 = *(a2 + 16);
      v48 = platform_navigation_maneuverInfoKeyForType(1);
      OUTLINED_FUNCTION_61(v48);
      v49 = OUTLINED_FUNCTION_13_8();
      v52 = v42 + __addU16NumberParameterToMsg(v49, v50, 1, v51);
      v53 = *(a2 + 16);
      v54 = platform_navigation_maneuverInfoKeyForType(2);
      v58 = 0;
      if (OUTLINED_FUNCTION_61(v54))
      {
        v55 = OUTLINED_FUNCTION_13_8();
        if (iAP2MsgAddCFStringParam(v55, v56, 2, v57))
        {
          v58 = 1;
        }
      }

      v59 = *(a2 + 16);
      v60 = platform_navigation_maneuverInfoKeyForType(3);
      OUTLINED_FUNCTION_61(v60);
      v61 = OUTLINED_FUNCTION_26_1();
      v65 = v52 + v58 + __addEnumNumberParameterToMsg(v61, v62, 3, v63, v64);
      v66 = *(a2 + 16);
      v67 = platform_navigation_maneuverInfoKeyForType(4);
      v71 = 0;
      if (OUTLINED_FUNCTION_61(v67))
      {
        v68 = OUTLINED_FUNCTION_13_8();
        if (iAP2MsgAddCFStringParam(v68, v69, 4, v70))
        {
          v71 = 1;
        }
      }

      v72 = *(a2 + 16);
      v73 = platform_navigation_maneuverInfoKeyForType(5);
      OUTLINED_FUNCTION_61(v73);
      v74 = OUTLINED_FUNCTION_13_8();
      v77 = v65 + v71 + __addU32NumberParameterToMsg(v74, v75, 5, v76);
      v78 = *(a2 + 16);
      v79 = platform_navigation_maneuverInfoKeyForType(6);
      v83 = 0;
      if (OUTLINED_FUNCTION_61(v79))
      {
        v80 = OUTLINED_FUNCTION_13_8();
        if (iAP2MsgAddCFStringParam(v80, v81, 6, v82))
        {
          v83 = 1;
        }
      }

      v84 = *(a2 + 16);
      v85 = platform_navigation_maneuverInfoKeyForType(7);
      OUTLINED_FUNCTION_61(v85);
      OUTLINED_FUNCTION_11_8();
      v86 = OUTLINED_FUNCTION_26_1();
      v90 = v83 + __addEnumNumberParameterToMsg(v86, v87, 7, v88, v89);
      v91 = *(a2 + 16);
      v92 = platform_navigation_maneuverInfoKeyForType(8);
      OUTLINED_FUNCTION_61(v92);
      v93 = OUTLINED_FUNCTION_26_1();
      v97 = v90 + __addEnumNumberParameterToMsg(v93, v94, 8, v95, v96);
      v98 = *(a2 + 16);
      v99 = platform_navigation_maneuverInfoKeyForType(9);
      OUTLINED_FUNCTION_61(v99);
      v100 = OUTLINED_FUNCTION_26_1();
      v104 = v77 + v97 + __addEnumNumberParameterToMsg(v100, v101, 9, v102, v103);
      v105 = *(a2 + 16);
      v106 = platform_navigation_maneuverInfoKeyForType(10);
      v107 = OUTLINED_FUNCTION_61(v106);
      if (v107)
      {
        v108 = v107;
        v109 = CFArrayGetCount(v107);
        if (v109 >= 1)
        {
          v110 = v109;
          for (j = 0; j != v110; ++j)
          {
            CFArrayGetValueAtIndex(v108, j);
            v112 = OUTLINED_FUNCTION_13_8();
            v104 += __addU16NumberParameterToMsg(v112, v113, 10, v114);
          }
        }
      }

      v115 = *(a2 + 16);
      v116 = platform_navigation_maneuverInfoKeyForType(11);
      OUTLINED_FUNCTION_61(v116);
      v117 = OUTLINED_FUNCTION_13_8();
      v120 = v104 + __addU16NumberParameterToMsg(v117, v118, 11, v119);
      if (*(Feature + 18) == 1)
      {
        v121 = *(a2 + 16);
        v122 = platform_navigation_maneuverInfoKeyForType(13);
        v126 = 0;
        if (CFDictionaryGetValue(v121, v122))
        {
          v123 = OUTLINED_FUNCTION_13_8();
          if (iAP2MsgAddCFStringParam(v123, v124, 13, v125))
          {
            v126 = 1;
          }
        }

        v120 += v126;
      }

      if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x5204u))
      {
        v127 = *(a2 + 16);
        v128 = platform_navigation_maneuverInfoKeyForType(12);
        if (CFDictionaryGetValue(v127, v128))
        {
          v129 = OUTLINED_FUNCTION_13_8();
          v120 += __addU16NumberParameterToMsg(v129, v130, 12, v131);
        }
      }

      if (v120)
      {
        v132 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 47)
        {
          v133 = *(gLogObjects + 368);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_8_1();
          *v160 = v132;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v150, v151, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v157);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v134 = a1[1];
          iAP2MsgGetMsgID(v38);
          OUTLINED_FUNCTION_8_1();
          *v160 = v135;
          *&v160[4] = v136;
          *&v160[6] = v120;
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v137, v138, v139, v140, v141, 0x18u);
        }

        iap2_sessionControl_sendOutgoingMessage(a1, v38);
      }

      platform_navigation_deleteParams(a2);
      return 1;
    }

    if (v25)
    {
      v27 = *(gLogObjects + 368);
    }

    else
    {
      v27 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        v157 = 134218240;
        v158 = v22;
        OUTLINED_FUNCTION_3();
        *v160 = v23;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v152, v153, v154, v155, v156, 0x12u);
      }
    }

    result = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v142 = a1[1];
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_79_0(&_mh_execute_header, v27, v143, "iAP2Navigation RouteGuidanceManeuverUpdate %@, no userInfo, message not sent!", &v157);
      return 0;
    }
  }

  return result;
}

uint64_t iap2_navigation_stopRoadObjectDetectionHandler(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_35(&_mh_execute_header, v51, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59);
  }

  if (OUTLINED_FUNCTION_82())
  {
    if (a1)
    {
      v5 = *(a1 + 8);
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0x11u);
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v13 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_3();
    LODWORD(v61) = v12;
    OUTLINED_FUNCTION_39(&_mh_execute_header, v53, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    v14 = *(a1 + 8);
    if (Feature)
    {
      v15 = "exists";
    }

    else
    {
      v15 = "missing!!";
    }

    obfuscatedPointer(a2);
    OUTLINED_FUNCTION_70();
    v60 = 2080;
    v61 = v15;
    v62 = 2048;
    v63 = v16;
    OUTLINED_FUNCTION_40_5();
    _os_log_impl(v17, v18, v19, v20, v21, 0x20u);
  }

  result = 0;
  if (a2 && Feature)
  {
    if (*a2 == 4)
    {
      if (gLogObjects && gNumLogObjects >= 47)
      {
        v23 = *(gLogObjects + 368);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59);
      }

      if (OUTLINED_FUNCTION_82())
      {
        v24 = *(a1 + 8);
        v25 = *(a2 + 8);
        OUTLINED_FUNCTION_38();
        v60 = 2112;
        v61 = v26;
        OUTLINED_FUNCTION_27_0();
        _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
      }

      v32 = OUTLINED_FUNCTION_49(a1 + 120, 3330, *(a1 + 192));
      v33 = *(a2 + 8);
      if (v33)
      {
        Count = CFArrayGetCount(v33);
        if (Count >= 1)
        {
          v35 = Count;
          for (i = 0; i != v35; ++i)
          {
            CFArrayGetValueAtIndex(*(a2 + 8), i);
            v37 = OUTLINED_FUNCTION_6_13();
            __addU16NumberParameterToMsg(v37, v38, 0, v39);
          }
        }
      }

      v40 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 47)
      {
        v41 = *(gLogObjects + 368);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        LODWORD(v61) = v40;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v57, v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        v42 = *(a1 + 8);
        iAP2MsgGetMsgID(v32);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        LODWORD(v61) = v43;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v44, v45, v46, v47, v48, 0x12u);
      }

      v49 = OUTLINED_FUNCTION_72_1();
      iap2_sessionControl_sendOutgoingMessage(v49, v50);
      platform_navigation_deleteParams(a2);
      return 1;
    }

    return 0;
  }

  return result;
}

void *_createFeature_7(void *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v14 = 134218240;
      v15 = v2;
      OUTLINED_FUNCTION_3();
      v16 = v3;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
    }
  }

  v5 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v5, v6))
  {
    LOWORD(v14) = 0;
    OUTLINED_FUNCTION_12(&_mh_execute_header, v4, v7, "iAP2Navigation _createFeature", &v14);
  }

  if (a1)
  {
    a1 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040684C9801uLL);
    if (a1)
    {
      *a1 = OUTLINED_FUNCTION_104();
      a1[1] = OUTLINED_FUNCTION_104();
    }
  }

  return a1;
}

uint64_t _destroyFeature_7(void **a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15);
  }

  if (OUTLINED_FUNCTION_82())
  {
    v15[0] = 0;
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v11 = *a1;
    if (*a1)
    {
      platform_navigation_accessoryDetached(*(a2 + 8));
      platform_navigation_decrementUserCount();
      if (*v11)
      {
        CFRelease(*v11);
        *v11 = 0;
      }

      v12 = v11[1];
      if (v12)
      {
        CFRelease(v12);
        v11[1] = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_4(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v4 = *(gLogObjects + 368);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v49 = 134218240;
      v50 = v2;
      OUTLINED_FUNCTION_3();
      v51 = v3;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v34, v35, v36, v37, v38, 0x12u);
    }
  }

  v5 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v5, v6))
  {
    LOWORD(v49) = 0;
    OUTLINED_FUNCTION_12(&_mh_execute_header, v4, v7, "iAP2Navigation _startFeatureFromDevice", &v49);
  }

  Feature = iap2_feature_getFeature(a1, 0x11u);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Feature)
  {
    LOBYTE(v49) = 0;
    if (!iap2_identification_checkRequiredMsgIDs(a1, &gskMsgNavigationMainList, 5, &v49))
    {
      goto LABEL_23;
    }

    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v11 = *(gLogObjects + 368);
    }

    else
    {
      v11 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        OUTLINED_FUNCTION_8_1();
        v51 = v10;
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v39, v40, v41, v42, v43);
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v49) = 0;
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_12(v12, v13, v14, v15, v16);
    }

    Count = CFDictionaryGetCount(*Feature);
    v18 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*Feature, 0, v18);
    if (Count < 1)
    {
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = v18;
      do
      {
        v20 = *v19++;
        CFArrayAppendValue(Mutable, v20);
        --Count;
      }

      while (Count);
    }

    free(v18);
LABEL_23:
    LOBYTE(v49) = 0;
    if (!iap2_identification_checkRequiredMsgIDs(a1, &gskMsgRoadObjectDetectionMainList, 3, &v49))
    {
      goto LABEL_37;
    }

    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v22 = *(gLogObjects + 368);
    }

    else
    {
      v22 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        OUTLINED_FUNCTION_8_1();
        v51 = v21;
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_10(v44, v45, v46, v47, v48);
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v49) = 0;
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_12(v23, v24, v25, v26, v27);
    }

    v28 = CFDictionaryGetCount(Feature[1]);
    v29 = malloc_type_calloc(v28, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(Feature[1], 0, v29);
    if (v28 < 1)
    {
      if (!v29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v30 = v29;
      do
      {
        v31 = *v30++;
        CFArrayAppendValue(Mutable, v31);
        --v28;
      }

      while (v28);
    }

    free(v29);
LABEL_37:
    platform_navigation_incrementUserCount();
    if (!a1 || (v32 = *(a1 + 8)) == 0)
    {
      v32 = 0;
    }

    platform_navigation_accessoryAttached(v32, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Feature != 0;
}

void _convertRouteGuidanceStateTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertManeuverStateTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertDistaceUnitTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertManeuverTypeForFunc_cold_1()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertDrivingSideTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _convertJunctionTypeForFunc_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _parseIdentificationParams_cold_2_0(_DWORD *a1)
{
  v2 = logObjectForModule_15();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = 10;
}

void _parseIdentificationParams_cold_6_0(_BYTE *a1)
{
  v2 = logObjectForModule_15();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = 0;
}

void acc_auth_protocol_sizeofMessageData_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = a2;
  OUTLINED_FUNCTION_3_20(&_mh_execute_header, a2, a3, "[AccAuth] sizeofEncryptedAuthInfoData: encryptedInfoType %d, dataLen %d \n", 67109376, v3);
}

void acc_auth_protocol_isRespMessage_cold_3(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_20(&_mh_execute_header, v2, v3, "[AccAuth] isRespMessage: msgID %#04x, isRespMessage %d \n", v4, v5);
}

void acc_auth_protocol_initSetupMessage_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 10);
  v3 = *(a2 + 1388);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_20(&_mh_execute_header, v4, v5, "[AccAuth] initSetupMessage: DO_IF_HOST - copy authTypes, authTypesLen %d -> %d \n", v6, v7);
}

void acc_auth_protocol_createSessionWithContext_cold_3(unsigned int *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_20(&_mh_execute_header, v4, v5, "[AccAuth] createSession: setupInfo: role %d, sessionID %d, setup sessionID! \n", v6, v7);
}

void acc_auth_protocol_createSessionWithContext_cold_5(unsigned int *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_3_20(&_mh_execute_header, v4, v5, "[AccAuth] createSession: setupInfo: role %d, sessionID %d, call _acc_auth_protocol_createSessionImplementation \n", v6, v7);
}

uint64_t iap2_location_update(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v94 = 0;
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      Feature = iap2_feature_getFeature(a1, 0xCu);
      if (Feature)
      {
        v5 = &audioProductCerts_endpoint_publish_onceToken;
        v6 = &audioProductCerts_endpoint_publish_onceToken;
        if (*Feature == 1)
        {
          FirstParam = iAP2MsgGetFirstParam(v3, 0);
          if (FirstParam)
          {
            NextParam = FirstParam;
            v2 = 0;
            *&v8 = 134218240;
            v91 = v8;
            *&v8 = 138412546;
            v90 = v8;
            v92 = v3;
            while (1)
            {
              ParamID = iAP2MsgGetParamID(NextParam);
              if (ParamID)
              {
                v11 = ParamID;
                v12 = v5[491];
                v13 = *(v6 + 984);
                if (v12 && v13 >= 43)
                {
                  v14 = *(v12 + 336);
                }

                else
                {
                  v14 = &_os_log_default;
                  v70 = OUTLINED_FUNCTION_11();
                  if (v70)
                  {
                    OUTLINED_FUNCTION_1_16(v70, v71, v72, v73, v74, v75, v76, v77, v88, v89, v90, *(&v90 + 1), v91);
                    LODWORD(v98) = v13;
                    OUTLINED_FUNCTION_10_6();
                    _os_log_error_impl(v78, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, 0x12u);
                  }
                }

                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109120;
                  LODWORD(v96) = v11;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Unrecognized paramID: 0x%04X", buf, 8u);
                }

                v6 = &audioProductCerts_endpoint_publish_onceToken;
              }

              else
              {
                DataAsString = iAP2MsgGetDataAsString(NextParam, &v94);
                if (v94)
                {
                  MsgID = iAP2MsgGetMsgID(v3);
                  printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, MsgID);
                  return v2 & 1;
                }

                v16 = DataAsString;
                if (!DataAsString)
                {
                  return v2 & 1;
                }

                ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
                if (ParamValueLen)
                {
                  v18 = &v16[ParamValueLen];
                  if (!*(v18 - 1) && v16 < v18)
                  {
                    do
                    {
                      v20 = strlen(v16) + 1;
                      if (v20 <= 0x800)
                      {
                        v21 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
                        v22 = v5;
                        v23 = v5[491];
                        v24 = *(v6 + 984);
                        if (v23)
                        {
                          v25 = v24 <= 42;
                        }

                        else
                        {
                          v25 = 1;
                        }

                        v26 = !v25;
                        if (v21)
                        {
                          v27 = v21;
                          if (v26)
                          {
                            v28 = *(v23 + 336);
                          }

                          else
                          {
                            v28 = &_os_log_default;
                            v30 = OUTLINED_FUNCTION_11();
                            if (v30)
                            {
                              OUTLINED_FUNCTION_1_16(v30, v31, v32, v33, v34, v35, v36, v37, v88, v89, v90, *(&v90 + 1), v91);
                              LODWORD(v98) = v24;
                              OUTLINED_FUNCTION_10_6();
                              _os_log_error_impl(v57, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60, 0x12u);
                            }
                          }

                          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412290;
                            v96 = v27;
                            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "nmeaSentenceRef: %@", buf, 0xCu);
                          }

                          v2 = platform_location_update(*(a1 + 8), v27);
                          v5 = v22;
                          if ((v2 & 1) == 0)
                          {
                            v38 = v22[491];
                            v39 = gNumLogObjects;
                            if (v38 && gNumLogObjects >= 43)
                            {
                              v40 = *(v38 + 336);
                            }

                            else
                            {
                              v49 = OUTLINED_FUNCTION_11();
                              if (v49)
                              {
                                OUTLINED_FUNCTION_1_16(v49, v50, v51, v52, v53, v54, v55, v56, v88, v89, v90, *(&v90 + 1), v91);
                                LODWORD(v98) = v39;
                                OUTLINED_FUNCTION_10_6();
                                _os_log_error_impl(v66, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, 0x12u);
                              }
                            }

                            v5 = v22;
                            if (OUTLINED_FUNCTION_11())
                            {
                              v61 = *(a1 + 8);
                              *buf = v90;
                              v96 = v27;
                              v97 = 2112;
                              v98 = v61;
                              OUTLINED_FUNCTION_10_6();
                              _os_log_error_impl(v62, v63, v64, "platform_location_update failed to forward nmeaSentenceRef: %@ on endpoint: %@", v65, 0x16u);
                            }
                          }

                          CFRelease(v27);
                          v6 = &audioProductCerts_endpoint_publish_onceToken;
                        }

                        else
                        {
                          if (v26)
                          {
                            v29 = *(v23 + 336);
                          }

                          else
                          {
                            v29 = &_os_log_default;
                            v41 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                            if (v41)
                            {
                              OUTLINED_FUNCTION_1_16(v41, v42, v43, v44, v45, v46, v47, v48, v88, v89, v90, *(&v90 + 1), v91);
                              LODWORD(v98) = v24;
                              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                            }
                          }

                          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 67109120;
                            LODWORD(v96) = 0;
                            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "paramID: %04X, nmeaSentenceRef = nil!\n", buf, 8u);
                          }

                          v5 = v22;
                        }
                      }

                      v16 += v20;
                    }

                    while (v16 < v18);
                  }
                }
              }

              v3 = v92;
              NextParam = iAP2MsgGetNextParam(v92, 0, NextParam);
              if (!NextParam)
              {
                return v2 & 1;
              }
            }
          }
        }

        else
        {
          v82 = gLogObjects;
          v83 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 43)
          {
            v84 = *(gLogObjects + 336);
          }

          else
          {
            v84 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v96 = v82;
              v97 = 1024;
              LODWORD(v98) = v83;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "Update received when location not started!\n", buf, 2u);
          }
        }
      }

      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t iap2_location_start(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 43)
    {
      v6 = *(gLogObjects + 336);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        valuePtr = 134218240;
        v22 = v4;
        v23 = 1024;
        LODWORD(v24) = v5;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v3[1];
      valuePtr = 136315650;
      v22 = "iap2_location_start";
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = a2;
      OUTLINED_FUNCTION_9_11(&_mh_execute_header, v8, v9, "%s %@, attributes %@", &valuePtr);
    }

    if (!a2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_49((v3 + 15), 65530, v3[24]);
    v11 = 0;
    valuePtr = 0;
    while (1)
    {
      v20 = v11 | 0x8000;
      v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v20);
      if (!v12)
      {
        goto LABEL_16;
      }

      Value = CFDictionaryGetValue(a2, v12);
      if (!Value)
      {
        goto LABEL_16;
      }

      v19 = 0;
      if (!CFNumberGetValue(Value, kCFNumberIntType, &v19))
      {
        goto LABEL_16;
      }

      v15 = (v3 + 15);
      if (v19 == 1)
      {
        break;
      }

      iAP2MsgAddU32Param(v15, 0, valuePtr, v19);
      if (v13)
      {
LABEL_17:
        v16 = CFDictionaryGetValue(a2, v13);
        if (v16)
        {
          v19 = 0;
          if (CFNumberGetValue(v16, kCFNumberIntType, &v19))
          {
            v17 = (v3 + 15);
            if (v19 == 1)
            {
              iAP2MsgAddVoidParam(v17, 0, v20);
            }

            else
            {
              iAP2MsgAddU32Param(v17, 0, v20, v19);
            }
          }
        }
      }

LABEL_24:
      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v11 = valuePtr + 1;
      valuePtr = v11;
      if (v11 >= 8)
      {
        if (iap2_sessionControl_sendOutgoingMessage(v3, (v3 + 15)))
        {
          Feature = iap2_feature_getFeature(v3, 0xCu);
          result = 1;
          if (Feature)
          {
            *Feature = 1;
          }

          return result;
        }

        return 0;
      }
    }

    iAP2MsgAddVoidParam(v15, 0, valuePtr);
LABEL_16:
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t iap2_location_stop(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_14();
    if (v4 && v5 >= 43)
    {
      v6 = *(v4 + 336);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v24 = 134218240;
        v25 = v4;
        OUTLINED_FUNCTION_3();
        v26 = v5;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v24);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v1[1];
      v24 = 136315650;
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_9_11(&_mh_execute_header, v8, v9, "%s %@, attributes %@", &v24);
    }

    result = iap2_feature_getFeature(v1, 0xCu);
    if (result)
    {
      v10 = result;
      if (*result == 1)
      {
        OUTLINED_FUNCTION_49((v1 + 15), 65532, v1[24]);
        result = iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
        if (result)
        {
          *v10 = 0;
          return 1;
        }
      }

      else
      {
        v11 = *(v2 + 3928);
        v12 = *(v3 + 3936);
        if (v11 && v12 >= 43)
        {
          v13 = *(v11 + 336);
        }

        else
        {
          v13 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v24 = 134218240;
            v25 = v11;
            OUTLINED_FUNCTION_3();
            v26 = v12;
            OUTLINED_FUNCTION_88();
            OUTLINED_FUNCTION_10(v19, v20, v21, v22, v23);
          }
        }

        result = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (result)
        {
          LOWORD(v24) = 0;
          OUTLINED_FUNCTION_88();
          _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 2u);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t iap2_location_send_gprmc_data_values(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_6_14();
  if (v5 && v6 >= 43)
  {
    v7 = *(v5 + 336);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v33 = 134218240;
      v34 = v5;
      OUTLINED_FUNCTION_3();
      v35 = v6;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v33);
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v1[1];
    v33 = 136315650;
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_9_11(&_mh_execute_header, v9, v10, "%s %@, attributes %@", &v33);
  }

  if ((iap2_identification_isIdentifiedForOutgoingMessageID(v1, 0xFFF0u) & 1) == 0)
  {
    v28 = logObjectForModule_17();
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v33 = 67109120;
    LODWORD(v34) = 65520;
    OUTLINED_FUNCTION_88();
    _os_log_error_impl(v29, v30, OS_LOG_TYPE_ERROR, v31, v32, 8u);
    return 0;
  }

  result = iap2_feature_getFeature(v1, 0xCu);
  if (!result)
  {
    return result;
  }

  if (*result == 1)
  {
    OUTLINED_FUNCTION_49((v1 + 15), 65520, v1[24]);
    Value = CFDictionaryGetValue(v2, @"GPRMCDataStatus");
    if (Value)
    {
      v12 = Value;
      if (CFArrayGetCount(Value) >= 1)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
          if (ValueAtIndex)
          {
            v33 = 3;
            if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v33))
            {
              if (v33 <= 2)
              {
                iAP2MsgAddVoidParam((v1 + 15), 0, v33);
              }
            }
          }

          ++v13;
        }

        while (CFArrayGetCount(v12) > v13);
      }
    }

    return iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
  }

  v15 = *(v3 + 3928);
  v16 = *(v4 + 3936);
  if (v15 && v16 >= 43)
  {
    v17 = *(v15 + 336);
  }

  else
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v33 = 134218240;
      v34 = v15;
      OUTLINED_FUNCTION_3();
      v35 = v16;
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_10(v23, v24, v25, v26, v27);
    }
  }

  result = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (result)
  {
    LOWORD(v33) = 0;
    OUTLINED_FUNCTION_88();
    _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 2u);
    return 0;
  }

  return result;
}

_BYTE *_createFeature_8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    platform_location_setSupportedNMEASentencesForEndpoint(*(a1 + 8), 0);
  }

  return v3;
}

id _destroyFeature_8(void **a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      v2 = platform_location_resetSupportedNMEASentencesForEndpoint(*(a2 + 8));
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL _startFeatureFromDevice_5(_BOOL8 result)
{
  if (result)
  {
    return iap2_feature_getFeature(result, 0xCu) != 0;
  }

  return result;
}

void _parseIdentificationParams_cold_6_1(_BYTE *a1)
{
  v2 = logObjectForModule_17();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "pProtocolEndpoint == NULL", v3, 2u);
  }

  *a1 = 0;
}

void _handleIdentificationRejection_cold_2(char a1, uint64_t a2, os_log_t log)
{
  if ((a1 & 1) != 0 || (v3 = *(a2 + 8)) == 0)
  {
    v3 = 0;
  }

  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to reset SupportedNMEASentences for endpointUUID %@", &v4, 0xCu);
}

void platform_bluetooth_copyNameForMacAddress_cold_3(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformBluetoothAccessoryInformationPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#Bluetooth] Could not find plugin conforming to %@!", &v3, 0xCu);
}

BOOL _checkRequiresChargingCurrentLimit(uint64_t *a1, unsigned int a2, _WORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 0;
  }

  v8 = platform_systemInfo_deviceType();
  v9 = acc_authInfo_isAppleAccessory((v5 + 48));
  v10 = platform_power_batteryLevelPercent();
  v11 = *a1;

  return acc_policies_endpointRequiresChargingCurrentLimit(v11, v9, v8, a2, v10, a3);
}

uint64_t iap2_power_wakeUpdateHandler(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0x10u);
  if (a1)
  {
    v3 = Feature;
    if (Feature)
    {
      if (*(a1 + 8))
      {
        if (*(Feature + 8) == 1)
        {
          v4 = gLogObjects;
          v5 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 37)
          {
            v6 = *(gLogObjects + 288);
          }

          else
          {
            v6 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v10 = 134218240;
              v11 = v4;
              OUTLINED_FUNCTION_3();
              v12 = v5;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v10, 0x12u);
            }
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(v3 + 8);
            v10 = 67109120;
            LODWORD(v11) = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "powerDuringSleepType = %d, toggling acc_pwr on wake", &v10, 8u);
          }

          platform_system_resetLightningBusForEndpointWithUUID(*(a1 + 8));
        }

        v8 = *(a1 + 32);
        if (v8)
        {
          iAP2LinkRunLoopHandleResume(v8);
        }
      }
    }
  }

  return 1;
}

uint64_t _startFeatureFromDevice_6(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 0x10u);
    if (Feature)
    {
      v3 = Feature;
      *(Feature + 36) = -1;
      if ((acc_endpoint_isWireless(*v1) & 1) == 0 && !*(v3 + 4))
      {
        platform_power_setAvailableCurrent(*(v1 + 8), 0, 1);
      }

      if (*(v3 + 8) == 2)
      {
        return 1;
      }

      v4 = platform_power_powerDuringSleepSupported(*(v1 + 8));
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v7 = *(gLogObjects + 288);
      }

      else
      {
        v7 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v14 = 134218240;
          *v15 = v5;
          OUTLINED_FUNCTION_3();
          v16 = v6;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14, 0x12u);
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v3 + 8);
        v14 = 67109376;
        *v15 = v11;
        *&v15[4] = 1024;
        *&v15[6] = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "powerDuringSleepType = %d, powerDuringSleepSupported = %d", &v14, 0xEu);
      }

      if (!v4)
      {
        return 1;
      }

      else
      {
        v12 = *(v1 + 8);
        v1 = 1;
        platform_power_setPowerDuringSleep(v12, 1);
      }
    }

    else
    {
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 37)
      {
        v10 = *(gLogObjects + 288);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v14 = 134218240;
          *v15 = v8;
          OUTLINED_FUNCTION_3();
          v16 = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v14, 0x12u);
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "pFeaturePower is NULL", &v14, 2u);
      }

      return 0;
    }
  }

  return v1;
}

void _parseIdentificationParamsPower_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _parseIdentificationParamsPower_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _parseIdentificationParamsPower_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _parseIdentificationParamsPower_cold_10()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _processPowerSourceUpdate_cold_2(uint64_t a1, unsigned __int16 *a2)
{
  if (!a1 || (v2 = *(a1 + 8)) == 0)
  {
    v2 = 0;
  }

  v3 = *(a2 + 2);
  v4 = *a2;
  v9 = 138412802;
  v10 = v2;
  OUTLINED_FUNCTION_3();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Check availableCurrentForDevice(ChargingCurrentLimit) for override, accessory %@, isValid %d, availableCurrentForDevice %d", &v9, 0x18u);
}

void _cbPowerSourceUpdateParams_cold_4()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void iap2_power_powerSourceUpdateHandler_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _cbAccessoryPowerUpdateParams_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void iap2_power_accessoryPowerUpdateHandler_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void iap2_power_updateHandler_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t iap2_deviceNotifications_deviceInfoUpdateHandler(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!iap2_feature_getFeature(a1, 8u))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v3, 19977, v4);
  v5 = OUTLINED_FUNCTION_0_11();
  if (!iAP2MsgAddCFStringParam(v5, v6, v7, a2))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_3_21();

  return iap2_sessionControl_sendOutgoingMessage(v8, v9);
}

uint64_t iap2_deviceNotifications_deviceLanguageUpdateHandler(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!iap2_feature_getFeature(a1, 8u))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v3, 19978, v4);
  v5 = OUTLINED_FUNCTION_0_11();
  if (!iAP2MsgAddCFStringParam(v5, v6, v7, a2))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_3_21();

  return iap2_sessionControl_sendOutgoingMessage(v8, v9);
}