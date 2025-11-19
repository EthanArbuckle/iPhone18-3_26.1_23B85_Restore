@interface ACCExternalAccessory
+ (id)accessoryDictionaryForLogging:(id)a3;
+ (unsigned)_generateLegacyIAPConnectionID;
- (ACCExternalAccessory)initWithEndpointUUIDs:(id)a3 primaryEndpointUUID:(id)a4;
- (id)_nativeUSBEndpointUUIDForProtocolIdentifier:(id)a3 iAP2Endpoint:(id *)a4;
- (id)copyExternalAccessoryProtocols;
- (id)externalAccessoryProtocolInformationForProtocolName:(id)a3;
- (void)_addAccessoryInfo:(ACCEndpoint_s *)a3;
- (void)_addEAProtocolPrimaryEndpointInfo:(ACCEndpoint_s *)a3;
- (void)_addEAProtocolsForEAEndpoints:(id)a3;
- (void)_addGenericMFiEAProtocols:(id *)a3;
- (void)_addiAP2AuthInfo:(id *)a3;
- (void)_addiAP2EAProtocols:(id *)a3;
- (void)_addiAP2IdentificationInfo:(id *)a3;
- (void)_addiAP2VehicleInfo:(id *)a3;
- (void)_constructEADictionary:(id)a3;
- (void)copyExternalAccessoryProtocols;
- (void)updateAccessoryInfo;
@end

@implementation ACCExternalAccessory

- (void)updateAccessoryInfo
{
  v1 = [a1 EAAccessoryDictionary];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (id)externalAccessoryProtocolInformationForProtocolName:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ACCExternalAccessory *)self EAProtocols];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (![v10 caseInsensitiveCompare:v4])
        {
          v12 = [(ACCExternalAccessory *)self EAProtocols];
          v11 = [v12 objectForKey:v10];

          if (gLogObjects && gNumLogObjects >= 10)
          {
            v13 = *(gLogObjects + 72);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v13 = &_os_log_default;
            v14 = &_os_log_default;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [ACCExternalAccessory externalAccessoryProtocolInformationForProtocolName:];
          }

          goto LABEL_19;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (id)copyExternalAccessoryProtocols
{
  v3 = [(ACCExternalAccessory *)self EAProtocols];
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  if (gLogObjects)
  {
    v6 = gNumLogObjects < 10;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ACCExternalAccessory *)self copyExternalAccessoryProtocols];
  }

  return v5;
}

- (void)_addiAP2AuthInfo:(id *)a3
{
  if (iap2_feature_getFeature(a3, 0))
  {
    v5 = iap2_accAuthentication_copyCertificate(a3);
    v6 = iap2_accAuthentication_copyCertificateSerial(a3);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  EACertData = self->_EACertData;
  self->_EACertData = v5;
  v10 = v5;

  EACertSerial = self->_EACertSerial;
  self->_EACertSerial = v7;
}

- (void)_addiAP2EAProtocols:(id *)a3
{
  v3 = a3;
  Feature = iap2_feature_getFeature(a3, 0xAu);
  if (!Feature)
  {
    return;
  }

  v6 = Feature;
  v7 = &kACCExternalAccessoryProtocolFirmwareVersionPendingKey_ptr;
  if (*Feature)
  {
    v8 = [[NSString alloc] initWithString:*Feature];
    EAPreferredApp = self->_EAPreferredApp;
    self->_EAPreferredApp = v8;
  }

  if (!v6[1])
  {
    return;
  }

  obj = objc_alloc_init(NSMutableDictionary);
  v10 = +[NSMutableArray array];
  Count = CFArrayGetCount(v6[1]);
  if (Count < 1)
  {
    goto LABEL_51;
  }

  v44 = v10;
  v45 = self;
  v46 = 0;
  v12 = 0;
  v50 = kACCExternalAccessoryProtocolIndexKey;
  v49 = kACCExternalAccessoryMatchActionKey;
  v56 = kACCExternalAccessoryProtocolTypeKey;
  v48 = kACCExternalAccessorySessionUsesSocketInterfaceKey;
  v47 = kACCExternalAccessoryProtocolEndpointUUIDKey;
  *&v11 = 134218240;
  v43 = v11;
  v54 = v3;
  v51 = v6;
  do
  {
    v13 = +[NSMutableDictionary dictionary];
    ValueAtIndex = CFArrayGetValueAtIndex(v6[1], v12);
    v15 = [NSNumber numberWithUnsignedInteger:*ValueAtIndex];
    [v13 setObject:v15 forKey:v50];
    v16 = [NSNumber numberWithUnsignedInt:*(ValueAtIndex + 4)];
    [v13 setObject:v16 forKey:v49];
    v17 = [NSNumber numberWithUnsignedInt:*(ValueAtIndex + 6)];
    [v13 setObject:v17 forKey:v56];
    v18 = [v7[190] stringWithString:*(ValueAtIndex + 1)];
    [obj setObject:v13 forKey:v18];
    if (v3->var0->var3 != 8)
    {
      var1 = v3->var1;
LABEL_32:
      v24 = [(__CFString *)var1 copy];
      goto LABEL_33;
    }

    v19 = [(ACCExternalAccessory *)v45 _nativeUSBEndpointUUIDForProtocolIdentifier:v18 iAP2Endpoint:v3];
    v20 = gLogObjects;
    v21 = gNumLogObjects;
    if (gLogObjects)
    {
      v22 = gNumLogObjects <= 9;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    if (!v19)
    {
      if (v23)
      {
        v27 = *(gLogObjects + 72);
      }

      else
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v43;
          v60 = v20;
          v61 = 1024;
          LODWORD(v62) = v21;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(ACCExternalAccessory *)&v57 _addiAP2EAProtocols:v58, v27];
      }

      var1 = v54->var1;
      goto LABEL_32;
    }

    v24 = v19;
    if (v23)
    {
      v25 = *(gLogObjects + 72);
    }

    else
    {
      v55 = v12;
      v28 = ValueAtIndex;
      v29 = v19;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v43;
        v60 = v20;
        v61 = 1024;
        LODWORD(v62) = v21;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v30 = &_os_log_default;
      v25 = &_os_log_default;
      v24 = v29;
      ValueAtIndex = v28;
      v12 = v55;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v60 = v24;
      v61 = 2112;
      v62 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found native EA USB endpoint %@ protocol for string %@", buf, 0x16u);
    }

    v31 = [NSNumber numberWithUnsignedInt:2];
    [v13 setObject:v31 forKey:v56];

LABEL_33:
    v33 = gLogObjects;
    v34 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v35 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = v43;
        v60 = v33;
        v61 = 1024;
        LODWORD(v62) = v34;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v36 = &_os_log_default;
      v35 = &_os_log_default;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "iAP2 EA uses the socket interface by default", buf, 2u);
    }

    v37 = [NSNumber numberWithBool:1];
    [v13 setObject:v37 forKey:v48];

    [v13 setObject:v24 forKey:v47];
    v38 = *(ValueAtIndex + 4);
    if (v38 == 3)
    {
      goto LABEL_44;
    }

    if (v38 != 2)
    {
      if (v38 != 1)
      {
        goto LABEL_46;
      }

LABEL_44:
      [v44 addObject:v18];
    }

    v46 = 1;
LABEL_46:

    ++v12;
    v6 = v51;
    v3 = v54;
    v7 = &kACCExternalAccessoryProtocolFirmwareVersionPendingKey_ptr;
  }

  while (Count != v12);
  v10 = v44;
  self = v45;
  if (v46)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v39 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v39 = &_os_log_default;
      v42 = &_os_log_default;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "accessory supports public iAP", buf, 2u);
    }

    v45->_eaAccessoryCapabilities |= 1uLL;
    goto LABEL_66;
  }

LABEL_51:
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v40 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v40 = &_os_log_default;
    v41 = &_os_log_default;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "accessory doesn't support public iAP", buf, 2u);
  }

LABEL_66:
  objc_storeStrong(&self->_EAProtocols, obj);
  if ([v10 count])
  {
    objc_storeStrong(&self->_EAProtocolsAppMatching, v10);
  }
}

- (void)_addiAP2VehicleInfo:(id *)a3
{
  Feature = iap2_feature_getFeature(a3, 0x14u);
  if (Feature)
  {
    v5 = Feature;
    v6 = +[NSMutableDictionary dictionary];
    v7 = *(v5 + 24);
    if (v7)
    {
      v8 = [v7 copy];
      [v6 setObject:v8 forKey:kACCVehicleInfoDisplayNameKey];
    }

    v9 = *(v5 + 32);
    if (v9)
    {
      v10 = [v9 copy];
      [v6 setObject:v10 forKey:kACCVehicleInfoMapsDisplayNameKey];
    }

    v11 = *(v5 + 16);
    if (v11)
    {
      v12 = v11;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v13)
      {
        v14 = v13;
        LODWORD(v15) = 0;
        v16 = *v47;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v47 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v15 = (1 << [*(*(&v46 + 1) + 8 * i) unsignedIntValue]) | v15;
          }

          v14 = [v12 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      v18 = [NSNumber numberWithUnsignedInt:v15];
      [v6 setObject:v18 forKey:kACCVehicleInfoEngineTypeBitmaskKey];
    }

    v19 = *(v5 + 40);
    if (v19)
    {
      v20 = [v19 copy];
      [v6 setObject:v20 forKey:kACCVehicleInfoVehicleColorHexCodeKey];
    }

    v21 = *(v5 + 48);
    if (v21)
    {
      v22 = v21;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v43;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v25 |= 1 << [*(*(&v42 + 1) + 8 * j) unsignedLongLongValue];
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v24);
      }

      else
      {
        v25 = 0;
      }

      v28 = [NSNumber numberWithUnsignedLongLong:v25];
      [v6 setObject:v28 forKey:kACCVehicleInfoSupportedChargingConnectorsBitMaskKey];
    }

    if (*(v5 + 56))
    {
      v29 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v29 forKey:kACCVehicleInfoPowerForConnectorTypeCCS1Key];
    }

    if (*(v5 + 60))
    {
      v30 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v30 forKey:kACCVehicleInfoPowerForConnectorTypeCCS2Key];
    }

    if (*(v5 + 64))
    {
      v31 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v31 forKey:kACCVehicleInfoPowerForConnectorTypeJ1772Key];
    }

    if (*(v5 + 68))
    {
      v32 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v32 forKey:kACCVehicleInfoPowerForConnectorTypeCHAdeMOKey];
    }

    if (*(v5 + 72))
    {
      v33 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v33 forKey:kACCVehicleInfoPowerForConnectorTypeMennekesKey];
    }

    if (*(v5 + 76))
    {
      v34 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v34 forKey:kACCVehicleInfoPowerForConnectorTypeGBT_DCKey];
    }

    if (*(v5 + 80))
    {
      v35 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v35 forKey:kACCVehicleInfoPowerForConnectorTypeGBT_ACKey];
    }

    if (*(v5 + 84))
    {
      v36 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v36 forKey:kACCVehicleInfoPowerForConnectorTypeTeslaKey];

      v37 = [NSNumber numberWithUnsignedInt:*(v5 + 88)];
      [v6 setObject:v37 forKey:kACCVehicleInfoPowerForConnectorTypeNACS_DCKey];
    }

    if (*(v5 + 92))
    {
      v38 = [NSNumber numberWithUnsignedInt:?];
      [v6 setObject:v38 forKey:kACCVehicleInfoPowerForConnectorTypeNACS_ACKey];
    }

    objc_storeStrong(&self->_vehicleInfoDictionary, v6);
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v39 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v39 = &_os_log_default;
      v40 = &_os_log_default;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      vehicleInfoDictionary = self->_vehicleInfoDictionary;
      *buf = 138412290;
      v51 = vehicleInfoDictionary;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "iAP2 vehicle info is %@", buf, 0xCu);
    }
  }
}

- (id)_nativeUSBEndpointUUIDForProtocolIdentifier:(id)a3 iAP2Endpoint:(id *)a4
{
  v5 = a3;
  v6 = acc_manager_copyConnectionUUIDForEndpointUUID(a4->var1);
  ConnectionWithUUID = acc_manager_getConnectionWithUUID(v6);
  v8 = acc_connection_copyEndpointUUIDs(ConnectionWithUUID);
  Count = CFSetGetCount(v8);
  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 9;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (Count >= 1)
  {
    v12 = Count;
    if (v11)
    {
      v13 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Have %ld endpoints to parse", buf, 0xCu);
    }

    v35 = v6;

    v34 = &v33;
    __chkstk_darwin(v16);
    v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v18, 170, v17);
    CFSetGetValues(v8, v18);
    if (v8)
    {
      CFRelease(v8);
    }

    v20 = 0;
    v21 = 0;
    v22 = 1;
    *&v19 = 138412546;
    v36 = v19;
    *&v19 = 134218240;
    v33 = v19;
    while (1)
    {
      v23 = *&v18[8 * v20];
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v23);
      if (!EndpointWithUUID || EndpointWithUUID[7] != 6)
      {
        goto LABEL_34;
      }

      v25 = acc_endpoint_copyIdentifier(EndpointWithUUID);
      v26 = gLogObjects;
      v27 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v28 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v33;
          v38 = v26;
          v39 = 1024;
          LODWORD(v40) = v27;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v29 = &_os_log_default;
        v28 = &_os_log_default;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v36;
        v38 = v23;
        v39 = 2112;
        v40 = v25;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Found EANative endpointUUID %@, identifier %@", buf, 0x16u);
      }

      if (![v25 caseInsensitiveCompare:v5])
      {
        break;
      }

      if (v25)
      {
        goto LABEL_32;
      }

LABEL_33:

LABEL_34:
      v20 = v22;
      v10 = v12 > v22++;
      if (!v10)
      {
        v6 = v35;
        goto LABEL_44;
      }
    }

    v30 = [v23 copy];

    v21 = v30;
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_32:
    CFRelease(v25);
    goto LABEL_33;
  }

  if (v11)
  {
    v14 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v31 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No native USB endpoints found!", buf, 2u);
  }

  v21 = 0;
LABEL_44:

  return v21;
}

- (void)_addEAProtocolPrimaryEndpointInfo:(ACCEndpoint_s *)a3
{
  AccessoryInfo = acc_endpoint_getAccessoryInfo(a3);
  v6 = AccessoryInfo;
  if (AccessoryInfo && *AccessoryInfo)
  {
    v41 = *AccessoryInfo;
  }

  else
  {
    v41 = acc_strings_placeholder_Unknown();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = v6[1];
  if (v7)
  {
    v8 = v7;
    goto LABEL_8;
  }

LABEL_7:
  v8 = acc_strings_placeholder_Unknown();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = v6[2];
  if (!v9)
  {
LABEL_10:
    v10 = acc_strings_placeholder_Unknown();
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v10 = v9;
LABEL_11:
  v11 = v6[3];
  if (v11)
  {
    v12 = v11;
    goto LABEL_14;
  }

LABEL_13:
  v12 = acc_strings_placeholder_Unknown();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v13 = v6[4];
  if (!v13)
  {
LABEL_16:
    v14 = acc_strings_placeholder_Unknown();
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = v13;
LABEL_17:
  v15 = v6[5];
  if (v15)
  {
    v16 = v15;
LABEL_20:
    v17 = v6[6];
    v18 = v6[7];
    v19 = v6[9];
    goto LABEL_21;
  }

LABEL_19:
  v16 = acc_strings_placeholder_Unknown();
  if (v6)
  {
    goto LABEL_20;
  }

  v18 = 0;
  v17 = 0;
  v19 = 0;
LABEL_21:
  v20 = v19;
  v21 = [v41 copy];
  EAName = self->_EAName;
  self->_EAName = v21;

  v23 = [v8 copy];
  EAManufacturer = self->_EAManufacturer;
  self->_EAManufacturer = v23;

  v25 = [v10 copy];
  EAModelNumber = self->_EAModelNumber;
  self->_EAModelNumber = v25;

  v27 = [v12 copy];
  EASerialNumber = self->_EASerialNumber;
  self->_EASerialNumber = v27;

  v29 = [v14 copy];
  EAHardwareRevision = self->_EAHardwareRevision;
  self->_EAHardwareRevision = v29;

  v31 = [v16 copy];
  EAFirmwareRevisionActive = self->_EAFirmwareRevisionActive;
  self->_EAFirmwareRevisionActive = v31;

  if (v17)
  {
    v33 = [v17 copy];
  }

  else
  {
    v33 = 0;
  }

  EAFirmwareRevisionPending = self->_EAFirmwareRevisionPending;
  self->_EAFirmwareRevisionPending = v33;

  if (v18)
  {
    v35 = [v18 copy];
  }

  else
  {
    v35 = 0;
  }

  EAPPID = self->_EAPPID;
  self->_EAPPID = v35;

  if (v20)
  {
    v37 = [v20 copy];
  }

  else
  {
    v37 = 0;
  }

  EARegionCode = self->_EARegionCode;
  self->_EARegionCode = v37;

  EADockType = self->_EADockType;
  self->_EADockType = &stru_10022D360;

  self->_eaAccessoryCapabilities |= 1uLL;
  if (a3->var0)
  {
    v40 = acc_connection_copyProperty(a3->var0, kCFACCProperties_Connection_HideFromUI);
  }

  else
  {
    v40 = 0;
  }

  if ((acc_policies_shouldHideAccessoryWithModelNumber(self->_EAModelNumber) & 1) != 0 || v40)
  {
    self->_eaAccessoryCapabilities |= 0x100uLL;
    if (v40)
    {
      CFRelease(v40);
    }
  }
}

- (void)_addEAProtocolsForEAEndpoints:(id)a3
{
  v3 = a3;
  v29 = objc_alloc_init(NSMutableDictionary);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v30 = *v32;
    v28 = kACCExternalAccessoryProtocolIndexKey;
    v27 = kACCExternalAccessoryProtocolTypeKey;
    v24 = kACCExternalAccessoryProtocolFirmwareVersionActiveKey;
    v23 = kACCExternalAccessoryProtocolFirmwareVersionPendingKey;
    v26 = kACCExternalAccessoryProtocolEndpointUUIDKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        EndpointWithUUID = acc_manager_getEndpointWithUUID(v8);
        v10 = acc_endpoint_copyIdentifier(EndpointWithUUID);
        if (v10)
        {
          v11 = v10;
          v12 = +[NSMutableDictionary dictionary];
          v13 = [NSNumber numberWithUnsignedInteger:v6];
          [v12 setObject:v13 forKey:v28];
          v14 = [NSNumber numberWithUnsignedInt:1];
          [v12 setObject:v14 forKey:v27];
          if (EndpointWithUUID)
          {
            AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);
            if (AccessoryInfo)
            {
              v16 = AccessoryInfo;
              v17 = acc_accInfo_retainedProperty(AccessoryInfo, 5, 0);
              if (v17)
              {
                [v12 setObject:v17 forKey:v24];
              }

              v18 = acc_accInfo_retainedProperty(v16, 6, 0);
              if (v18)
              {
                [v12 setObject:v18 forKey:v23];
              }
            }
          }

          ++v6;
          v19 = [NSString stringWithString:v11];
          CFRelease(v11);
          v20 = [v8 copy];
          [v12 setObject:v20 forKey:v26];

          [(NSDictionary *)v29 setObject:v12 forKey:v19];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  EAProtocols = self->_EAProtocols;
  self->_EAProtocols = v29;
}

- (void)_constructEADictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(ACCExternalAccessory *)self EAName];
  if (v6)
  {
    [v5 setObject:v6 forKey:kACCExternalAccessoryNameKey];
  }

  else
  {
    v7 = +[NSNull null];
    [v5 setObject:v7 forKey:kACCExternalAccessoryNameKey];
  }

  v8 = [(ACCExternalAccessory *)self EAManufacturer];
  if (v8)
  {
    [v5 setObject:v8 forKey:kACCExternalAccessoryManufacturerKey];
  }

  else
  {
    v9 = +[NSNull null];
    [v5 setObject:v9 forKey:kACCExternalAccessoryManufacturerKey];
  }

  v10 = [(ACCExternalAccessory *)self EAModelNumber];
  if (v10)
  {
    [v5 setObject:v10 forKey:kACCExternalAccessoryModelNumberKey];
  }

  else
  {
    v11 = +[NSNull null];
    [v5 setObject:v11 forKey:kACCExternalAccessoryModelNumberKey];
  }

  v12 = [(ACCExternalAccessory *)self EASerialNumber];
  if (v12)
  {
    [v5 setObject:v12 forKey:kACCExternalAccessorySerialNumberKey];
  }

  else
  {
    v13 = +[NSNull null];
    [v5 setObject:v13 forKey:kACCExternalAccessorySerialNumberKey];
  }

  v14 = [(ACCExternalAccessory *)self EAFirmwareRevisionActive];
  if (v14)
  {
    [v5 setObject:v14 forKey:kACCExternalAccessoryFirmwareRevisionActiveKey];
  }

  else
  {
    v15 = +[NSNull null];
    [v5 setObject:v15 forKey:kACCExternalAccessoryFirmwareRevisionActiveKey];
  }

  v16 = [(ACCExternalAccessory *)self EAFirmwareRevisionPending];
  if (v16)
  {
    [v5 setObject:v16 forKey:kACCExternalAccessoryFirmwareRevisionPendingKey];
  }

  else
  {
    v17 = +[NSNull null];
    [v5 setObject:v17 forKey:kACCExternalAccessoryFirmwareRevisionPendingKey];
  }

  v18 = [(ACCExternalAccessory *)self EAHardwareRevision];
  if (v18)
  {
    [v5 setObject:v18 forKey:kACCExternalAccessoryHardwareRevisionKey];
  }

  else
  {
    v19 = +[NSNull null];
    [v5 setObject:v19 forKey:kACCExternalAccessoryHardwareRevisionKey];
  }

  v20 = [(ACCExternalAccessory *)self EAPPID];
  if (v20)
  {
    [v5 setObject:v20 forKey:kACCExternalAccessoryPPIDKey];
  }

  else
  {
    v21 = +[NSNull null];
    [v5 setObject:v21 forKey:kACCExternalAccessoryPPIDKey];
  }

  v22 = [(ACCExternalAccessory *)self EARegionCode];
  if (v22)
  {
    [v5 setObject:v22 forKey:kACCExternalAccessoryRegionCodeKey];
  }

  else
  {
    v23 = +[NSNull null];
    [v5 setObject:v23 forKey:kACCExternalAccessoryRegionCodeKey];
  }

  v24 = [(ACCExternalAccessory *)self EAVendorID];
  if (v24)
  {
    [v5 setObject:v24 forKey:kACCExternalAccessoryVendorIDKey];
  }

  else
  {
    v25 = +[NSNull null];
    [v5 setObject:v25 forKey:kACCExternalAccessoryVendorIDKey];
  }

  v26 = [(ACCExternalAccessory *)self EAProductID];
  if (v26)
  {
    [v5 setObject:v26 forKey:kACCExternalAccessoryProductIDKey];
  }

  else
  {
    v27 = +[NSNull null];
    [v5 setObject:v27 forKey:kACCExternalAccessoryProductIDKey];
  }

  v28 = [(ACCExternalAccessory *)self EADockType];
  if (v28)
  {
    [v5 setObject:v28 forKey:kACCExternalAccessoryDockTypeKey];
  }

  else
  {
    v29 = +[NSNull null];
    [v5 setObject:v29 forKey:kACCExternalAccessoryDockTypeKey];
  }

  v30 = [(ACCExternalAccessory *)self EATransportType];
  if (v30)
  {
    [v5 setObject:v30 forKey:kACCExternalAccessoryTransportType];
  }

  else
  {
    v31 = +[NSNull null];
    [v5 setObject:v31 forKey:kACCExternalAccessoryTransportType];
  }

  v32 = [(ACCExternalAccessory *)self primaryEndpointUUID];
  if (v32)
  {
    [v5 setObject:v32 forKey:kACCExternalAccessoryPrimaryUUID];
  }

  else
  {
    v33 = +[NSNull null];
    [v5 setObject:v33 forKey:kACCExternalAccessoryPrimaryUUID];
  }

  v34 = [NSNumber numberWithUnsignedLongLong:self->_eaAccessoryCapabilities];
  [v5 setObject:v34 forKey:kACCExternalAccessoryCapabilitiesKey];

  v35 = [(ACCExternalAccessory *)self EACertSerial];

  if (v35)
  {
    v36 = [(ACCExternalAccessory *)self EACertSerial];
    [v5 setObject:v36 forKey:kACCExternalAccessoryCertSerialNumberKey];
  }

  v37 = [(ACCExternalAccessory *)self EACertData];

  if (v37)
  {
    v38 = [(ACCExternalAccessory *)self EACertData];
    [v5 setObject:v38 forKey:kACCExternalAccessoryCertDataKey];
  }

  if ([(ACCExternalAccessory *)self isMFiCharger])
  {
    v39 = [NSNumber numberWithBool:[(ACCExternalAccessory *)self isMFiCharger]];
    [v5 setObject:v39 forKey:kACCExternalAccessoryIsMFiChargerKey];
  }

  if (self->_EAMACAddress)
  {
    v40 = [(ACCExternalAccessory *)self EAMACAddress];
    [v5 setObject:v40 forKey:kACCExternalAccessoryMacAddressKey];
  }

  eaAccessoryCapabilities = self->_eaAccessoryCapabilities;
  if ((eaAccessoryCapabilities & 8) != 0)
  {
    v42 = [NSNumber numberWithUnsignedInt:platform_location_getSupportedNMEASentences()];
    [v5 setObject:v42 forKey:kACCExternalAccessoryLocationSentenceTypesKey];

    eaAccessoryCapabilities = self->_eaAccessoryCapabilities;
  }

  if ((eaAccessoryCapabilities & 0x20000) != 0)
  {
    v43 = [NSNumber numberWithBool:1];
    [v5 setObject:v43 forKey:kACCExternalAccessoryDestinationSharingKey];

    v44 = [NSNumber numberWithUnsignedLongLong:self->_destinationSharingOptions];
    [v5 setObject:v44 forKey:kACCDestinationSharingOptionsKey];
  }

  if (self->_EAProtocols)
  {
    v72 = v5;
    v74 = +[NSMutableDictionary dictionary];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v45 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v45 = &_os_log_default;
      v46 = &_os_log_default;
    }

    v73 = v4;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessory _constructEADictionary:?];
    }

    v47 = +[NSMutableDictionary dictionary];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v48 = [(ACCExternalAccessory *)self EAProtocols];
    v49 = [v48 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v76;
      v52 = kACCExternalAccessoryProtocolIndexKey;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v76 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v54 = *(*(&v75 + 1) + 8 * i);
          [(ACCExternalAccessory *)self EAProtocols];
          v56 = v55 = self;
          v57 = [v56 objectForKey:v54];

          v58 = [v57 objectForKey:v52];
          [v74 setObject:v58 forKey:v54];

          self = v55;
          [v47 setObject:v57 forKey:v54];
        }

        v50 = [v48 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v50);
    }

    if (gLogObjects && gNumLogObjects >= 10)
    {
      v59 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v59 = &_os_log_default;
      v60 = &_os_log_default;
    }

    v4 = v73;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessory _constructEADictionary:];
    }

    if (gLogObjects && gNumLogObjects >= 10)
    {
      v61 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v61 = &_os_log_default;
      v62 = &_os_log_default;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessory _constructEADictionary:];
    }

    v5 = v72;
    [v72 setObject:v74 forKey:kACCExternalAccessoryProtocolsKey];
    [v72 setObject:v47 forKey:kACCExternalAccessoryProtocolDetailsKey];
  }

  if (self->_EAPreferredApp)
  {
    v63 = [(ACCExternalAccessory *)self EAPreferredApp];
    v64 = [v63 copy];
    [v5 setObject:v64 forKey:kACCExternalAccessoryPreferredAppKey];
  }

  vehicleInfoDictionary = self->_vehicleInfoDictionary;
  if (vehicleInfoDictionary)
  {
    [v5 setObject:vehicleInfoDictionary forKey:kACCVehicleInfoLegacyInitialDataKey];
  }

  v66 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[ACCExternalAccessory _generateLegacyIAPConnectionID]);
  EAConnectionID = self->_EAConnectionID;
  self->_EAConnectionID = v66;

  v68 = [(ACCExternalAccessory *)self EAConnectionID];
  v69 = [v68 copy];
  [v5 setObject:v69 forKey:kACCExternalAccessoryLegacyConnectionIDKey];

  objc_storeStrong(&self->_EAAccessoryDictionary, v5);
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v70 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v70 = &_os_log_default;
    v71 = &_os_log_default;
  }

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessory _constructEADictionary:?];
  }
}

+ (unsigned)_generateLegacyIAPConnectionID
{
  if (_generateLegacyIAPConnectionID_onceToken != -1)
  {
    +[ACCExternalAccessory _generateLegacyIAPConnectionID];
  }

  if (((_generateLegacyIAPConnectionID_connectionID + 1) & 0xFFFFFF) != 0)
  {
    v2 = _generateLegacyIAPConnectionID_connectionID + 1;
  }

  else
  {
    v2 = _generateLegacyIAPConnectionID_connectionID + 2;
  }

  result = v2 & 0xFFFFFF | 0x2000000;
  _generateLegacyIAPConnectionID_connectionID = result;
  return result;
}

+ (id)accessoryDictionaryForLogging:(id)a3
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:a3];
  v4 = kACCExternalAccessoryCertDataKey;
  v5 = [v3 objectForKey:kACCExternalAccessoryCertDataKey];

  if (v5)
  {
    v6 = [v3 objectForKey:v4];
    v7 = [v6 length];

    v8 = [NSString stringWithFormat:@"%lu bytes", v7];
    [v3 setObject:v8 forKey:v4];
  }

  v9 = kACCExternalAccessoryCertSerialNumberKey;
  v10 = [v3 objectForKey:kACCExternalAccessoryCertSerialNumberKey];

  if (v10)
  {
    v11 = [v3 objectForKey:v9];
    v12 = [v11 length];

    v13 = [NSString stringWithFormat:@"%lu bytes", v12];
    [v3 setObject:v13 forKey:v9];
  }

  return v3;
}

- (ACCExternalAccessory)initWithEndpointUUIDs:(id)a3 primaryEndpointUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = ACCExternalAccessory;
  v8 = [(ACCExternalAccessory *)&v35 init];
  if (v8)
  {
    v9 = [v6 count];
    if (v7 || v9)
    {
      v10 = [v6 copy];
      v11 = *(v8 + 4);
      *(v8 + 4) = v10;

      if (v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = [v6 objectAtIndex:0];
      }

      v13 = *(v8 + 3);
      *(v8 + 3) = v12;

      *(v8 + 1) = 0;
      v14 = *(v8 + 15);
      *(v8 + 15) = 0;

      v15 = *(v8 + 28);
      *(v8 + 28) = 0;

      v16 = *(v8 + 20);
      *(v8 + 20) = 0;

      v17 = *(v8 + 21);
      *(v8 + 21) = 0;

      v18 = *(v8 + 22);
      *(v8 + 22) = 0;

      v19 = *(v8 + 23);
      *(v8 + 23) = 0;

      v20 = *(v8 + 27);
      *(v8 + 27) = 0;

      v21 = *(v8 + 25);
      *(v8 + 25) = 0;

      *(v8 + 26) = 0;
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*(v8 + 3));
      ParentConnection = acc_endpoint_getParentConnection(EndpointWithUUID);
      if (EndpointWithUUID)
      {
        v24 = ParentConnection;
        if (ParentConnection)
        {
          *(v8 + 16) = 0;
          v25 = [[NSNumber alloc] initWithInt:acc_endpoint_getTransportType(EndpointWithUUID)];
          v26 = *(v8 + 17);
          *(v8 + 17) = v25;

          v27 = acc_connection_copyProperty(v24, kCFACCProperties_Connection_Inductive_DeviceType);
          valuePtr = 0;
          if (v27)
          {
            CFNumberGetValue(v27, kCFNumberSInt16Type, &valuePtr);
            LODWORD(v27) = valuePtr;
          }

          *(v8 + 17) = acc_policies_isMFiCharger(v27);
          if (*(v24 + 8) == 2)
          {
            if (*(v24 + 16))
            {
              v28 = [[NSString alloc] initWithString:*(v24 + 16)];
              v29 = *(v8 + 15);
              *(v8 + 15) = v28;

              if (acc_policies_shouldOverrideNameOnAccessoryWithModelNumber(*(v8 + 7)))
              {
                v30 = platform_bluetooth_copyNameForMacAddress(*(v24 + 16));
                v31 = v30;
                if (v30 && [v30 length])
                {
                  objc_storeStrong(v8 + 5, v31);
                }
              }
            }
          }

          v32 = EndpointWithUUID[7];
          switch(v32)
          {
            case 1:
              [OUTLINED_FUNCTION_6_24() _addAccessoryInfo:?];
              break;
            case 2:
            case 3:
            case 6:
              break;
            case 4:
              if (*(EndpointWithUUID + 7))
              {
                [OUTLINED_FUNCTION_6_24() _addAccessoryInfo:?];
                [OUTLINED_FUNCTION_5_28() _addiAP2IdentificationInfo:?];
                [OUTLINED_FUNCTION_5_28() _addiAP2AuthInfo:?];
                [OUTLINED_FUNCTION_5_28() _addiAP2EAProtocols:?];
              }

              break;
            case 5:
            case 7:
              [OUTLINED_FUNCTION_6_24() _addEAProtocolPrimaryEndpointInfo:?];
              [v8 _addEAProtocolsForEAEndpoints:*(v8 + 4)];
              break;
            default:
              if (v32 == 18 && *(EndpointWithUUID + 7))
              {
                [OUTLINED_FUNCTION_6_24() _addAccessoryInfo:?];
                [OUTLINED_FUNCTION_5_28() _addGenericMFiEAProtocols:?];
              }

              break;
          }

          [v8 _constructEADictionary:*(v8 + 3)];
        }
      }
    }
  }

  return v8;
}

- (void)_addAccessoryInfo:(ACCEndpoint_s *)a3
{
  if (a3)
  {
    AccessoryInfo = acc_endpoint_getAccessoryInfo(a3);
    v6 = AccessoryInfo;
    if (AccessoryInfo && *AccessoryInfo)
    {
      v63 = *AccessoryInfo;
    }

    else
    {
      v63 = acc_strings_placeholder_Unknown();
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v7 = v6[1];
    if (v7)
    {
      v62 = v7;
LABEL_9:
      v8 = v6[2];
      if (v8)
      {
        v61 = v8;
LABEL_12:
        v9 = v6[3];
        if (v9)
        {
          v60 = v9;
LABEL_15:
          v10 = v6[4];
          if (v10)
          {
            v11 = v10;
LABEL_18:
            v12 = v6[5];
            if (v12)
            {
              v13 = v12;
              goto LABEL_21;
            }

LABEL_20:
            v13 = acc_strings_placeholder_Unknown();
            if (!v6)
            {
              v15 = 0;
              v14 = 0;
              v16 = 0;
LABEL_22:
              v17 = v16;
              v18 = acc_endpoint_copyProperties(a3);
              if (v18)
              {
                v19 = v18;
                Value = CFDictionaryGetValue(v18, kCFACCProperties_Endpoint_DockType);
                CFRelease(v19);
              }

              else
              {
                Value = 0;
              }

              v21 = &stru_10022D360;
              if (Value)
              {
                v21 = Value;
              }

              v22 = v21;
              if (!v6)
              {
                goto LABEL_58;
              }

              v23 = [v63 copy];
              EAName = self->_EAName;
              self->_EAName = v23;

              v25 = [v62 copy];
              EAManufacturer = self->_EAManufacturer;
              self->_EAManufacturer = v25;

              v27 = [v61 copy];
              EAModelNumber = self->_EAModelNumber;
              self->_EAModelNumber = v27;

              v29 = [v60 copy];
              EASerialNumber = self->_EASerialNumber;
              self->_EASerialNumber = v29;

              v31 = [v11 copy];
              EAHardwareRevision = self->_EAHardwareRevision;
              self->_EAHardwareRevision = v31;

              v33 = [v13 copy];
              EAFirmwareRevisionActive = self->_EAFirmwareRevisionActive;
              self->_EAFirmwareRevisionActive = v33;

              if (v14)
              {
                v35 = [v14 copy];
              }

              else
              {
                v35 = 0;
              }

              EAFirmwareRevisionPending = self->_EAFirmwareRevisionPending;
              self->_EAFirmwareRevisionPending = v35;

              if (v15)
              {
                v37 = [v15 copy];
              }

              else
              {
                v37 = 0;
              }

              EAPPID = self->_EAPPID;
              self->_EAPPID = v37;

              if (v17)
              {
                v39 = [v17 copy];
              }

              else
              {
                v39 = 0;
              }

              EARegionCode = self->_EARegionCode;
              self->_EARegionCode = v39;

              v41 = [(__CFString *)v22 copy];
              EADockType = self->_EADockType;
              self->_EADockType = v41;

              if (a3->var0)
              {
                v43 = acc_connection_copyProperty(a3->var0, kCFACCProperties_Connection_HideFromUI);
              }

              else
              {
                v43 = 0;
              }

              v44 = acc_policies_shouldHideAccessoryWithModelNumber(self->_EAModelNumber);
              if (v43)
              {
                v45 = 1;
              }

              else
              {
                v45 = v44;
              }

              if (v43)
              {
                CFRelease(v43);
              }

              else if (!v45)
              {
                goto LABEL_47;
              }

              self->_eaAccessoryCapabilities |= 0x100uLL;
LABEL_47:
              v46 = gLogObjects;
              v47 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 10)
              {
                v48 = *(gLogObjects + 72);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v65 = v46;
                  v66 = 1024;
                  LODWORD(v67) = v47;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v48 = &_os_log_default;
                v49 = &_os_log_default;
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v50 = self->_EAName;
                v51 = self->_EAManufacturer;
                v52 = self->_EAModelNumber;
                v53 = self->_EASerialNumber;
                v54 = self->_EAFirmwareRevisionActive;
                v55 = self->_EAFirmwareRevisionPending;
                v56 = self->_EAHardwareRevision;
                v57 = self->_EAPPID;
                v58 = self->_EARegionCode;
                v59 = "NO";
                if (v45)
                {
                  v59 = "YES";
                }

                *buf = 138414594;
                v65 = v50;
                v66 = 2112;
                v67 = v52;
                v68 = 2112;
                v69 = v51;
                v70 = 2112;
                v71 = v53;
                v72 = 2112;
                v73 = v54;
                v74 = 2112;
                v75 = v55;
                v76 = 2112;
                v77 = v56;
                v78 = 2112;
                v79 = v57;
                v80 = 2112;
                v81 = v58;
                v82 = 2080;
                v83 = v59;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Adding accessory info: name %@, model %@, manufacturer %@, serial %@, firmware revision (active) %@, firmware revision (pending) %@, hardware revision %@, ppid %@, regionCode %@, hideFromUI: %s", buf, 0x66u);
              }

LABEL_58:
              return;
            }

LABEL_21:
            v14 = v6[6];
            v15 = v6[7];
            v16 = v6[9];
            goto LABEL_22;
          }

LABEL_17:
          v11 = acc_strings_placeholder_Unknown();
          if (!v6)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }

LABEL_14:
        v60 = acc_strings_placeholder_Unknown();
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_11:
      v61 = acc_strings_placeholder_Unknown();
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_8:
    v62 = acc_strings_placeholder_Unknown();
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }
}

- (void)_addiAP2IdentificationInfo:(id *)a3
{
  if (!a3)
  {
    return;
  }

  v5 = HIDWORD(gLogObjects);
  v6 = gNumLogObjects;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 10;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21[2] = v5;
      v22 = 1024;
      v23 = v6;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v9, v10, v11, v12, 0);
    }

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding iAP2 identification info...", v21, 2u);
  }

  if ((iap2_identification_isIdentifiedForFeature(a3) & 1) != 0 || iap2_identification_isIdentifiedForFeature(a3))
  {
    self->_eaAccessoryCapabilities |= 2uLL;
  }

  if (iap2_identification_isIdentifiedForFeature(a3))
  {
    self->_eaAccessoryCapabilities |= 0x20000uLL;
  }

  if (iap2_identification_isIdentifiedForCarPlay(a3))
  {
    self->_eaAccessoryCapabilities |= 0x400uLL;
  }

  if (iap2_identification_isIdentifiedForWirelessCarPlay(a3))
  {
    self->_eaAccessoryCapabilities |= 0x1000uLL;
  }

  if (iap2_identification_isIdentifiedForUSBCarPlay(a3))
  {
    self->_eaAccessoryCapabilities |= 0x4000uLL;
  }

  isIdentifiedForIncomingMessageID = iap2_identification_isIdentifiedForIncomingMessageID(a3, 59907);
  eaAccessoryCapabilities = self->_eaAccessoryCapabilities;
  if (isIdentifiedForIncomingMessageID)
  {
    self->_eaAccessoryCapabilities = eaAccessoryCapabilities | 0x10000;
LABEL_26:
    self->_supportsMultipleSessionsPerProtocol = 1;
    goto LABEL_27;
  }

  if ((eaAccessoryCapabilities & 0x10000) != 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  isIdentifiedForThemeAssets = iap2_identification_isIdentifiedForThemeAssets(a3);
  v18 = self->_eaAccessoryCapabilities;
  if (isIdentifiedForThemeAssets)
  {
    v18 |= 0x200000uLL;
    self->_eaAccessoryCapabilities = v18;
  }

  if ((v18 & 0x400) != 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.carplay-attached", 0, 0, 1u);
  }

  if (iap2_identification_isIdentifiedForFeature(a3))
  {
    self->_eaAccessoryCapabilities |= 8uLL;
  }

  if (iap2_identification_isIdentifiedForFeature(a3))
  {
    self->_eaAccessoryCapabilities |= 0x2000uLL;
  }

  if (iap2_identification_isIdentifiedForFeature(a3))
  {
    v20 = self->_eaAccessoryCapabilities;
    if ((v20 & 0x400) != 0)
    {
      self->_eaAccessoryCapabilities = v20 | 0x40000;
    }
  }

  if (iap2_identification_isIdentifiedForFeature(a3))
  {
    self->_eaAccessoryCapabilities |= 0x80000uLL;
  }

  if (iap2_identification_isIdentifiedForFeature(a3))
  {
    self->_eaAccessoryCapabilities |= 0x100000uLL;
  }

  [(ACCExternalAccessory *)self _addiAP2VehicleInfo:a3];
}

- (void)_addGenericMFiEAProtocols:(id *)a3
{
  if (a3)
  {
    var0 = a3->var0;
    if (a3->var0)
    {
      if (*var0)
      {
        isAuthenticatedForAppMatchLaunch = acc_connection_isAuthenticatedForAppMatchLaunch(*var0);
        v6 = acc_userDefaults_BOOLForKey(@"GenericMFiIgnoreCertCaps");
        if ((isAuthenticatedForAppMatchLaunch & 1) == 0 && (v6 & 1) == 0)
        {
          v12 = logObjectForModule_27();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            var1 = a3->var1;
            *buf = 136315906;
            v53 = "[ACCExternalAccessory _addGenericMFiEAProtocols:]";
            v54 = 1024;
            v55 = 0;
            v56 = 1024;
            v57 = 0;
            v58 = 2112;
            v59 = var1;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Skip adding AppMatch EA protocols for accessory!!! authenticatedForAppMatchLaunch %d, ignoreCertCaps %d, %@", buf, 0x22u);
          }

          goto LABEL_47;
        }

        var8 = a3->var8;
        if (var8)
        {
          if (CFArrayGetCount(var8))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3->var8, 0);
            if (ValueAtIndex)
            {
              Copy = CFStringCreateCopy(kCFAllocatorDefault, ValueAtIndex);
              EAPreferredApp = self->_EAPreferredApp;
              self->_EAPreferredApp = &Copy->isa;
            }
          }
        }

        var9 = a3->var9;
        if (var9)
        {
          if (CFArrayGetCount(var9))
          {
            v12 = +[NSMutableDictionary dictionary];
            v45 = objc_alloc_init(NSMutableDictionary);
            v13 = +[NSMutableArray array];
            v14 = CFArrayCreateCopy(kCFAllocatorDefault, a3->var9);
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v15 = v14;
            v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (!v16)
            {

              goto LABEL_29;
            }

            v17 = v16;
            v37 = v13;
            obj = v15;
            v36 = self;
            LODWORD(v18) = 0;
            v39 = 0;
            v44 = *v48;
            v43 = kACCExternalAccessoryMatchActionKey;
            v42 = kACCExternalAccessoryProtocolIndexKey;
            v41 = kACCExternalAccessoryProtocolEndpointUUIDKey;
            v40 = kACCExternalAccessoryProtocolTypeKey;
            while (1)
            {
              v19 = 0;
              v18 = v18;
              do
              {
                if (*v48 != v44)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v47 + 1) + 8 * v19);
                v21 = [v20 objectForKey:@"MatchAction"];
                [v12 setObject:v21 forKey:v43];
                v22 = [NSNumber numberWithUnsignedInteger:v18];
                [v12 setObject:v22 forKey:v42];
                v23 = [(__CFString *)a3->var1 copy];
                [v12 setObject:v23 forKey:v41];
                v24 = [NSNumber numberWithUnsignedInt:3];
                [v12 setObject:v24 forKey:v40];
                v25 = [v20 objectForKey:@"ProtocolString"];
                [v45 setObject:v12 forKey:v25];
                v26 = [v21 intValue];
                if (v26 == 3)
                {
                  goto LABEL_20;
                }

                if (v26 != 2)
                {
                  if (v26 != 1)
                  {
                    goto LABEL_22;
                  }

LABEL_20:
                  [v37 addObject:v25];
                }

                v39 = 1;
LABEL_22:

                v19 = v19 + 1;
                ++v18;
              }

              while (v17 != v19);
              v17 = [(__CFArray *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
              if (!v17)
              {
                v15 = obj;

                self = v36;
                v13 = v37;
                if (v39)
                {
                  if (gLogObjects && gNumLogObjects >= 10)
                  {
                    v27 = *(gLogObjects + 72);
                  }

                  else
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_4_30(3.8521e-34);
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }

                    v27 = &_os_log_default;
                    v32 = &_os_log_default;
                  }

                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    OUTLINED_FUNCTION_7_19(&_mh_execute_header, v33, v34, "accessory supports public iAP");
                  }

                  v36->_eaAccessoryCapabilities |= 1uLL;
                  goto LABEL_44;
                }

LABEL_29:
                if (gLogObjects && gNumLogObjects >= 10)
                {
                  v28 = *(gLogObjects + 72);
                }

                else
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    OUTLINED_FUNCTION_4_30(3.8521e-34);
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v28 = &_os_log_default;
                  v29 = &_os_log_default;
                }

                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_7_19(&_mh_execute_header, v30, v31, "accessory doesn't support public iAP");
                }

LABEL_44:
                objc_storeStrong(&self->_EAProtocols, v45);
                if ([v13 count])
                {
                  objc_storeStrong(&self->_EAProtocolsAppMatching, v13);
                }

LABEL_47:
                return;
              }
            }
          }
        }
      }
    }
  }
}

- (void)externalAccessoryProtocolInformationForProtocolName:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Found externalAccessoryProtocolInformation protocolName %@ for protocol %@", v2, 0x16u);
}

- (void)copyExternalAccessoryProtocols
{
  v1 = [a1 EAName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_addiAP2EAProtocols:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Didn't find native EA endpoint UUID, using iAP2 Endpoint UUID", buf, 2u);
}

- (void)_constructEADictionary:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 EAProtocols];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_constructEADictionary:(void *)a1 .cold.8(void *a1)
{
  v1 = [a1 EAAccessoryDictionary];
  v2 = [ACCExternalAccessory accessoryDictionaryForLogging:v1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end