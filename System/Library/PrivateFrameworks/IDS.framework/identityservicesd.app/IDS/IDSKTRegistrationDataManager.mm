@interface IDSKTRegistrationDataManager
- (BOOL)_isKTRegistrationData:(id)data forServiceIndex:(unsigned __int16)index inTrustedDevices:(id)devices;
- (BOOL)doesSignatureDSID:(id)d matchAccountDSID:(id)iD;
- (BOOL)handleTransparencySignatureResponse:(id)response error:(id)error;
- (BOOL)hasUnregisteredKTData;
- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)index;
- (BOOL)notePublicIdentityDidRegisterKTData:(id)data forKeyIndex:(unsigned __int16)index;
- (BOOL)registrationNeedKTDataUpdated;
- (BOOL)requestGenerationOfUnregisteredKTRegDataWithPublicIdentityData:(id)data applicationKeyManager:(id)manager;
- (BOOL)serializeAndPersistKTDatasDeleteIfNull:(BOOL)null;
- (IDSKTRegistrationDataManager)initWithIdentityDataSource:(id)source transparencyDaemon:(id)daemon;
- (id)_createKTTrustedDeviceForKVSisRegistered:(BOOL)registered;
- (id)_ktApplicationForKTRegistrationIndex:(unsigned __int16)index;
- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered withError:(id *)error;
- (id)createKTRegistrationDataForServiceTypes:(id)types usingPublicIdentityData:(id)data withApplicationKeyManager:(id)manager;
- (id)createRegistrationStatusProvider;
- (unsigned)_ktRegistrationDataIndexForKTApplication:(id)application;
- (void)clearKTDatas;
- (void)fetchKTSignatureDataForServiceTypes:(id)types publicIdentityData:(id)data registerID:(id)d applicationKeyManager:(id)manager withCompletion:(id)completion;
- (void)loadKTRegistrationDatasWithShouldGenerateKTData:(BOOL *)data;
- (void)logIDSKTRegMetrics:(id)metrics expectedRegisteredData:(id)data forKeyIndex:(unsigned __int16)index;
- (void)logKTRegistrationTimeMetricsForLatestRegisteredKTData:(id)data lastRegisteredKTData:(id)tData forKeyIndex:(unsigned __int16)index;
- (void)noteBuddyFinishTime;
- (void)noteManateeAvailableTime;
- (void)noteSuccessfulKVSSyncOfTrustedDevices:(id)devices;
- (void)noteiCloudSignInTime;
- (void)scheduleNextKVSSync;
- (void)updateKVSWithCurrentKTRegistrationData;
@end

@implementation IDSKTRegistrationDataManager

- (IDSKTRegistrationDataManager)initWithIdentityDataSource:(id)source transparencyDaemon:(id)daemon
{
  sourceCopy = source;
  daemonCopy = daemon;
  v17.receiver = self;
  v17.super_class = IDSKTRegistrationDataManager;
  v9 = [(IDSKTRegistrationDataManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityDataSource, source);
    objc_storeStrong(&v10->_transparencyDaemon, daemon);
    v11 = objc_alloc_init(NSMutableDictionary);
    serviceIndexToKTRegDataConfigs = v10->_serviceIndexToKTRegDataConfigs;
    v10->_serviceIndexToKTRegDataConfigs = v11;

    iCloudSignInDate = v10->_iCloudSignInDate;
    v10->_iCloudSignInDate = 0;

    buddyFinishDate = v10->_buddyFinishDate;
    v10->_buddyFinishDate = 0;

    manateeAvailableDate = v10->_manateeAvailableDate;
    v10->_manateeAvailableDate = 0;

    *&v10->_hasReportediCloudBuddyTime = 0;
    v10->_hasReportedManateeBuddyTime = 0;
  }

  return v10;
}

- (void)clearKTDatas
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing KT Registration Data.", v9, 2u);
  }

  [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs removeAllObjects];
  v4 = 0;
  do
  {
    v5 = objc_alloc_init(IDSKTRegistrationDataConfig);
    serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
    v7 = v4;
    v8 = [NSNumber numberWithUnsignedShort:v4];
    [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs setObject:v5 forKeyedSubscript:v8];

    ++v4;
  }

  while (v7 < 3);
  [(IDSKTRegistrationDataManager *)self serializeAndPersistKTDatasDeleteIfNull:1];
}

- (BOOL)hasUnregisteredKTData
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for unregisterd KT Data.", buf, 2u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  serviceIndexToKTRegDataConfigs = [(IDSKTRegistrationDataManager *)self serviceIndexToKTRegDataConfigs];
  v5 = [serviceIndexToKTRegDataConfigs countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(serviceIndexToKTRegDataConfigs);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
        unregisteredKTData = [v10 unregisteredKTData];

        if (unregisteredKTData)
        {
          v12 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
          unregisteredKTData2 = [v12 unregisteredKTData];

          ktDataForRegistration = [unregisteredKTData2 ktDataForRegistration];
          if (ktDataForRegistration)
          {
            v15 = ktDataForRegistration;
            ktPublicAccountKey = [unregisteredKTData2 ktPublicAccountKey];
            if (ktPublicAccountKey)
            {
              v17 = ktPublicAccountKey;
              ktDataSignature = [unregisteredKTData2 ktDataSignature];

              if (ktDataSignature)
              {
                v20 = +[IDSFoundationLog KeyTransparency];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v28 = v9;
                  v29 = 2112;
                  v30 = unregisteredKTData2;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found unregistered KT Data for keyIndex. { keyIndex: %@, ktRegistrationData: %@ }", buf, 0x16u);
                }

                v19 = 1;
                goto LABEL_23;
              }
            }

            else
            {
            }
          }
        }
      }

      v6 = [serviceIndexToKTRegDataConfigs countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  serviceIndexToKTRegDataConfigs = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(serviceIndexToKTRegDataConfigs, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, serviceIndexToKTRegDataConfigs, OS_LOG_TYPE_DEFAULT, "Did not find any unregistered KT Data.", buf, 2u);
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (BOOL)registrationNeedKTDataUpdated
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if we need to reregister to update KT data.", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  serviceIndexToKTRegDataConfigs = [(IDSKTRegistrationDataManager *)self serviceIndexToKTRegDataConfigs];
  v5 = [serviceIndexToKTRegDataConfigs countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v24 = serviceIndexToKTRegDataConfigs;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(serviceIndexToKTRegDataConfigs);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
        unregisteredKTData = [v10 unregisteredKTData];

        v12 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
        registeredKTData = [v12 registeredKTData];

        if (unregisteredKTData)
        {
          ktPublicAccountKey = [unregisteredKTData ktPublicAccountKey];
          if (ktPublicAccountKey)
          {
            v15 = ktPublicAccountKey;
            ktDataSignature = [unregisteredKTData ktDataSignature];

            if (ktDataSignature)
            {
              if (!registeredKTData)
              {
                goto LABEL_19;
              }

              ktPublicAccountKey2 = [registeredKTData ktPublicAccountKey];
              if (!ktPublicAccountKey2)
              {
                goto LABEL_19;
              }

              v18 = ktPublicAccountKey2;
              ktPublicAccountKey3 = [registeredKTData ktPublicAccountKey];
              ktPublicAccountKey4 = [unregisteredKTData ktPublicAccountKey];
              if (([ktPublicAccountKey3 isEqualToData:ktPublicAccountKey4] & 1) == 0)
              {

                serviceIndexToKTRegDataConfigs = v24;
LABEL_19:

                v22 = 1;
                goto LABEL_20;
              }

              ktDataSignature2 = [registeredKTData ktDataSignature];

              serviceIndexToKTRegDataConfigs = v24;
              if (!ktDataSignature2)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

      v6 = [serviceIndexToKTRegDataConfigs countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_20:

  return v22;
}

- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered withError:(id *)error
{
  registeredCopy = registered;
  indexCopy = index;
  v8 = [IDSFoundationLog KeyTransparency:index];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (registeredCopy)
    {
      v9 = @"YES";
    }

    v37[0] = 67109378;
    v37[1] = indexCopy;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting copy of KTRegistrationData for keyIndex { keyIndex: %u, isRegistered: %@ }", v37, 0x12u);
  }

  serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
  v11 = [NSNumber numberWithUnsignedShort:indexCopy];
  v12 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v11];

  if (!v12)
  {
    v25 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10092E48C();
    }

    goto LABEL_18;
  }

  if (!registeredCopy)
  {
    unregisteredKTData = [v12 unregisteredKTData];

    if (unregisteredKTData)
    {
      v14 = objc_alloc_init(IDSKTRegistrationData);
      unregisteredKTData2 = [v12 unregisteredKTData];
      ktDataForRegistration = [unregisteredKTData2 ktDataForRegistration];
      v29 = [ktDataForRegistration copy];
      [v14 setKtDataForRegistration:v29];

      unregisteredKTData3 = [v12 unregisteredKTData];
      ktPublicAccountKey = [unregisteredKTData3 ktPublicAccountKey];
      v32 = [ktPublicAccountKey copy];
      [v14 setKtPublicAccountKey:v32];

      unregisteredKTData4 = [v12 unregisteredKTData];
      ktDataSignature = [unregisteredKTData4 ktDataSignature];
      v35 = [ktDataSignature copy];
      [v14 setKtDataSignature:v35];

      unregisteredKTData5 = [v12 unregisteredKTData];
      goto LABEL_13;
    }

    v25 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10092E394();
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  registeredKTData = [v12 registeredKTData];

  if (!registeredKTData)
  {
    v25 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10092E410();
    }

    goto LABEL_18;
  }

  v14 = objc_alloc_init(IDSKTRegistrationData);
  registeredKTData2 = [v12 registeredKTData];
  ktDataForRegistration2 = [registeredKTData2 ktDataForRegistration];
  v17 = [ktDataForRegistration2 copy];
  [v14 setKtDataForRegistration:v17];

  registeredKTData3 = [v12 registeredKTData];
  ktPublicAccountKey2 = [registeredKTData3 ktPublicAccountKey];
  v20 = [ktPublicAccountKey2 copy];
  [v14 setKtPublicAccountKey:v20];

  registeredKTData4 = [v12 registeredKTData];
  ktDataSignature2 = [registeredKTData4 ktDataSignature];
  v23 = [ktDataSignature2 copy];
  [v14 setKtDataSignature:v23];

  unregisteredKTData5 = [v12 registeredKTData];
LABEL_13:
  v25 = unregisteredKTData5;
  [v14 setUploadedToKVS:{-[NSObject uploadedToKVS](unregisteredKTData5, "uploadedToKVS")}];
LABEL_19:

  return v14;
}

- (void)loadKTRegistrationDatasWithShouldGenerateKTData:(BOOL *)data
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to load KT Registration Data from keychain.", buf, 2u);
  }

  v5 = 0;
  v32 = 0;
  selfCopy = self;
  do
  {
    v6 = objc_alloc_init(IDSKTRegistrationDataConfig);
    identityDataSource = self->_identityDataSource;
    v37 = 0;
    v8 = [(IDSRegistrationKeyManagerIdentityDataSource *)identityDataSource loadKTRegistrationDataForKeyIndex:v5 isRegistered:0 error:&v37];
    v9 = v37;
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v39 = v5;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No unregistered KT data stored in keychain for keyIndex. { keyIndex: %u, error: %@ }", buf, 0x12u);
      }
    }

    v13 = self->_identityDataSource;
    v36 = 0;
    v14 = [(IDSRegistrationKeyManagerIdentityDataSource *)v13 loadKTRegistrationDataForKeyIndex:v5 isRegistered:1 error:&v36];
    v15 = v36;
    v16 = v15;
    if (!v14 || v15)
    {
      v18 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v39 = v5;
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No registered KT data stored in keychain for keyIndex. { keyIndex: %u, error: %@ }", buf, 0x12u);
      }

      v17 = v14 != 0;
      if (!(v8 | v14))
      {
        v24 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v39 = v5;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No KT data found in keychain, we need to generate a new one for keyIndex. { keyIndex: %u }", buf, 8u);
        }

        v32 = 1;
        goto LABEL_38;
      }

      if (!v8)
      {
        if (v14)
        {
          goto LABEL_30;
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      v17 = 1;
    }

    v19 = [IDSKTRegistrationData alloc];
    v35 = 0;
    v20 = [v19 initWithDataRepresentation:v8 error:&v35];
    v21 = v35;
    v22 = +[IDSFoundationLog KeyTransparency];
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v39 = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Successfully deserialized unregistered KT Data from keychain for keyIndex, saving to config. { keyIndex: %u }", buf, 8u);
      }

      [(IDSKTRegistrationDataConfig *)v6 setUnregisteredKTData:v20];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v39 = v5;
        v40 = 2112;
        v41 = v21;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to deserialize unregisterd KT Data from keychain for keyIndex, need to generate new KT Data. { keyIndex: %u, error: %@ }", buf, 0x12u);
      }

      v32 = 1;
    }

    if (v17)
    {
LABEL_30:
      v25 = [IDSKTRegistrationData alloc];
      v34 = 0;
      v26 = [v25 initWithDataRepresentation:v14 error:&v34];
      v24 = v34;
      v27 = +[IDSFoundationLog KeyTransparency];
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v39 = v5;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully deserialized registered KT Data from keychain for keyIndex, saving to config. { keyIndex: %u }", buf, 8u);
        }

        [(IDSKTRegistrationDataConfig *)v6 setRegisteredKTData:v26];
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v39 = v5;
          v40 = 2112;
          v41 = v24;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to deserialize registerd KT Data from keychain for keyIndex, need to generate new KT Data. { keyIndex: %u, error: %@ }", buf, 0x12u);
        }

        v32 = 1;
      }

LABEL_38:
    }

LABEL_39:
    self = selfCopy;
    serviceIndexToKTRegDataConfigs = selfCopy->_serviceIndexToKTRegDataConfigs;
    v30 = [NSNumber numberWithUnsignedShort:v5];
    [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs setObject:v6 forKeyedSubscript:v30];

    ++v5;
  }

  while (v5 != 4);
  if (data)
  {
    *data = v32 & 1;
  }
}

- (BOOL)serializeAndPersistKTDatasDeleteIfNull:(BOOL)null
{
  nullCopy = null;
  v6 = 0;
  *&v3 = 67109120;
  v32 = v3;
  do
  {
    serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
    v8 = [NSNumber numberWithUnsignedShort:v6, v32];
    v9 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v8];

    registeredKTData = [v9 registeredKTData];

    if (registeredKTData)
    {
      v11 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        registeredKTData2 = [v9 registeredKTData];
        *buf = 67109378;
        v40 = v6;
        v41 = 2112;
        v42 = registeredKTData2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving registered KT Data for service key { keyIndex: %u, registeredKTData: %@ }", buf, 0x12u);
      }

      registeredKTData3 = [v9 registeredKTData];
      v38 = 0;
      v14 = [registeredKTData3 dataRepresentationWithError:&v38];
      v15 = v38;

      if (v14)
      {
        identityDataSource = self->_identityDataSource;
        v37 = 0;
        [(IDSRegistrationKeyManagerIdentityDataSource *)identityDataSource saveKTRegistrationData:v14 forKeyIndex:v6 isRegistered:1 error:&v37];
      }
    }

    else
    {
      registeredKTData4 = [v9 registeredKTData];

      if (registeredKTData4)
      {
        v18 = 1;
      }

      else
      {
        v18 = !nullCopy;
      }

      if (!v18)
      {
        v19 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v32;
          v40 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removing registered KT Data from keychain because deleteIfNull == YES and no registered config present, {keyIndex: %u}", buf, 8u);
        }

        v20 = self->_identityDataSource;
        v36 = 0;
        [(IDSRegistrationKeyManagerIdentityDataSource *)v20 removeKTRegistrationDataForKeyIndex:v6 isRegistered:1 error:&v36];
      }
    }

    unregisteredKTData = [v9 unregisteredKTData];

    if (unregisteredKTData)
    {
      v22 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        unregisteredKTData2 = [v9 unregisteredKTData];
        *buf = 67109378;
        v40 = v6;
        v41 = 2112;
        v42 = unregisteredKTData2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Saving unregistered KT Data for service key { keyIndex: %u, unregisteredKTData: %@ }", buf, 0x12u);
      }

      unregisteredKTData3 = [v9 unregisteredKTData];
      v35 = 0;
      v25 = [unregisteredKTData3 dataRepresentationWithError:&v35];
      v26 = v35;

      if (v25)
      {
        v27 = self->_identityDataSource;
        v34 = 0;
        [(IDSRegistrationKeyManagerIdentityDataSource *)v27 saveKTRegistrationData:v25 forKeyIndex:v6 isRegistered:0 error:&v34];
      }
    }

    else
    {
      unregisteredKTData4 = [v9 unregisteredKTData];

      if (!unregisteredKTData4 && nullCopy)
      {
        v29 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v32;
          v40 = v6;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Removing unregistered KT Data from keychain because deleteIfNull == YES and no registered config present, {keyIndex: %u}", buf, 8u);
        }

        v30 = self->_identityDataSource;
        v33 = 0;
        [(IDSRegistrationKeyManagerIdentityDataSource *)v30 removeKTRegistrationDataForKeyIndex:v6 isRegistered:0 error:&v33];
      }
    }

    ++v6;
  }

  while (v6 != 4);
  return 1;
}

- (BOOL)notePublicIdentityDidRegisterKTData:(id)data forKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  dataCopy = data;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ktDataForRegistration = [dataCopy ktDataForRegistration];
    ktPublicAccountKey = [dataCopy ktPublicAccountKey];
    ktDataSignature = [dataCopy ktDataSignature];
    *buf = 67109890;
    v76 = indexCopy;
    v77 = 2112;
    v78 = ktDataForRegistration;
    v79 = 2112;
    v80 = ktPublicAccountKey;
    v81 = 2112;
    v82 = ktDataSignature;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KT registration manager noting registration of data { keyIndex: %u, ktDataForRegistration: %@, ktPublicAccountKey: %@, ktDataSignature: %@ }", buf, 0x26u);
  }

  serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
  v12 = [NSNumber numberWithUnsignedShort:indexCopy];
  v13 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v12];

  if (!v13)
  {
    v16 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10092E5F4();
    }

    goto LABEL_48;
  }

  unregisteredKTData = [v13 unregisteredKTData];
  if (!unregisteredKTData)
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10092E514();
    }

    unregisteredKTData = [v13 registeredKTData];
    if (!unregisteredKTData)
    {
      v16 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10092E584();
      }

      goto LABEL_48;
    }
  }

  v16 = unregisteredKTData;
  registeredTime = [unregisteredKTData registeredTime];

  if (!registeredTime)
  {
    v18 = +[NSDate now];
    [v16 setRegisteredTime:v18];
  }

  if (indexCopy == 1)
  {
    [(IDSKTRegistrationDataManager *)self logIDSKTRegMetrics:dataCopy expectedRegisteredData:v16 forKeyIndex:1];
  }

  selfCopy = self;
  ktDataForRegistration2 = [v16 ktDataForRegistration];
  if (ktDataForRegistration2 || ([dataCopy ktDataForRegistration], (ktDataSignature = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ktDataForRegistration3 = [v16 ktDataForRegistration];
    ktDataForRegistration4 = [dataCopy ktDataForRegistration];
    v22 = [ktDataForRegistration3 isEqualToData:ktDataForRegistration4];

    if (ktDataForRegistration2)
    {

      if (!v22)
      {
        goto LABEL_45;
      }
    }

    else
    {

      if ((v22 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v23 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    ktDataSignature = [dataCopy ktDataForRegistration];
    *buf = 67109378;
    v76 = indexCopy;
    v77 = 2112;
    v78 = ktDataSignature;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Expected KT Data for registration matches what was registered for keyIndex. { keyIndex: %u, expectedKTData: %@ }", buf, 0x12u);
  }

  ktPublicAccountKey2 = [v16 ktPublicAccountKey];
  if (ktPublicAccountKey2 || ([dataCopy ktPublicAccountKey], (ktDataSignature = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ktPublicAccountKey3 = [v16 ktPublicAccountKey];
    ktPublicAccountKey4 = [dataCopy ktPublicAccountKey];
    v27 = [ktPublicAccountKey3 isEqualToData:ktPublicAccountKey4];

    if (ktPublicAccountKey2)
    {

      if (!v27)
      {
        goto LABEL_45;
      }
    }

    else
    {

      if ((v27 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v28 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    ktDataSignature = [v16 ktPublicAccountKey];
    *buf = 67109378;
    v76 = indexCopy;
    v77 = 2112;
    v78 = ktDataSignature;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Expected KT public account key for registrations matches what we registered for keyIndex. { keyIndex: %u, expectedKTPublicAccountKey: %@ }", buf, 0x12u);
  }

  ktDataSignature2 = [v16 ktDataSignature];
  if (ktDataSignature2 || ([dataCopy ktDataSignature], (ktDataSignature = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ktDataSignature3 = [v16 ktDataSignature];
    ktDataSignature4 = [dataCopy ktDataSignature];
    v32 = [ktDataSignature3 isEqualToData:ktDataSignature4];

    if (ktDataSignature2)
    {

      if (v32)
      {
        goto LABEL_34;
      }

LABEL_45:
      v48 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        ktDataForRegistration5 = [v16 ktDataForRegistration];
        ktPublicAccountKey5 = [v16 ktPublicAccountKey];
        ktDataSignature5 = [v16 ktDataSignature];
        ktDataForRegistration6 = [dataCopy ktDataForRegistration];
        ktPublicAccountKey6 = [dataCopy ktPublicAccountKey];
        ktDataSignature6 = [dataCopy ktDataSignature];
        *buf = 67110658;
        v76 = indexCopy;
        v77 = 2112;
        v78 = ktDataForRegistration5;
        v79 = 2112;
        v80 = ktPublicAccountKey5;
        v81 = 2112;
        v82 = ktDataSignature5;
        v83 = 2112;
        v84 = ktDataForRegistration6;
        v85 = 2112;
        v86 = ktPublicAccountKey6;
        v87 = 2112;
        v88 = ktDataSignature6;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Completed registration does not match unregistered KT Data for key index { keyIndex: %u, expectedKTDataForRegistration: %@, expectedKTPublicAccountKey: %@, expectedKTDataSignature: %@, regKTDataForRegistration: %@, regKTPublicAccountKey: %@, regKTDataSignature: %@ }", buf, 0x44u);
      }

LABEL_48:
      v49 = 0;
      goto LABEL_49;
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

LABEL_34:
  v33 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    ktDataSignature7 = [v16 ktDataSignature];
    *buf = 67109378;
    v76 = indexCopy;
    v77 = 2112;
    v78 = ktDataSignature7;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Expected KT Data Signature for registrations matches what we registered for keyIndex. { keyIndex: %u, expectedKTDataSignature: %@ }", buf, 0x12u);
  }

  v35 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    ktDataForRegistration7 = [v16 ktDataForRegistration];
    ktPublicAccountKey7 = [v16 ktPublicAccountKey];
    ktDataSignature8 = [v16 ktDataSignature];
    *buf = 67109890;
    v76 = indexCopy;
    v77 = 2112;
    v78 = ktDataForRegistration7;
    v79 = 2112;
    v80 = ktPublicAccountKey7;
    v81 = 2112;
    v82 = ktDataSignature8;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Completed registration of previously unregistered KT Data for key index { keyIndex: %u, ktDataForRegistration: %@, ktPublicAccountKey: %@, ktDataSignature: %@ }", buf, 0x26u);
  }

  registeredKTData = [v13 registeredKTData];
  if (registeredKTData)
  {
    registeredKTData2 = [v13 registeredKTData];
    ktDataForRegistration8 = [registeredKTData2 ktDataForRegistration];
    if (ktDataForRegistration8)
    {
      registeredKTData3 = [v13 registeredKTData];
      ktDataSignature9 = [registeredKTData3 ktDataSignature];
      if (ktDataSignature9)
      {
        registeredKTData4 = [v13 registeredKTData];
        ktPublicAccountKey8 = [registeredKTData4 ktPublicAccountKey];
        v71 = registeredKTData3;
        v46 = ktPublicAccountKey8 != 0;

        v47 = v46;
        registeredKTData3 = v71;
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
  }

  else
  {
    v47 = 0;
  }

  unregisteredKTData2 = [v13 unregisteredKTData];
  if (unregisteredKTData2)
  {
    v57 = unregisteredKTData2;
    unregisteredKTData3 = [v13 unregisteredKTData];
    ktDataForRegistration9 = [unregisteredKTData3 ktDataForRegistration];
    if (ktDataForRegistration9)
    {
      unregisteredKTData4 = [v13 unregisteredKTData];
      ktDataSignature10 = [unregisteredKTData4 ktDataSignature];
      if (ktDataSignature10)
      {
        [v13 unregisteredKTData];
        v61 = v70 = v47;
        ktPublicAccountKey9 = [v61 ktPublicAccountKey];
        v63 = ktPublicAccountKey9 != 0;

        v47 = v70;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    v64 = !v47;
    v66 = !v63;
    if (v47 && !v66)
    {
      v67 = &off_100C3D210;
      v65 = selfCopy;
LABEL_73:
      v68 = +[TransparencyAnalytics logger];
      [v68 logMetric:v67 withName:@"kt-reg-state-change"];

      goto LABEL_74;
    }

    v65 = selfCopy;
    if (((v47 | v66) & 1) == 0)
    {
      v67 = &off_100C3D228;
      goto LABEL_73;
    }
  }

  else
  {
    v63 = 0;
    v64 = !v47;
    v65 = selfCopy;
  }

  if (!v64 && !v63)
  {
    v67 = &off_100C3D240;
    goto LABEL_73;
  }

  if (!v47 && !v63)
  {
    v67 = &off_100C3D258;
    goto LABEL_73;
  }

LABEL_74:
  if (indexCopy == 1)
  {
    registeredKTData5 = [v13 registeredKTData];
    [(IDSKTRegistrationDataManager *)v65 logKTRegistrationTimeMetricsForLatestRegisteredKTData:v16 lastRegisteredKTData:registeredKTData5 forKeyIndex:1];
  }

  [v13 setRegisteredKTData:v16];
  [v13 setUnregisteredKTData:0];
  v49 = 1;
LABEL_49:

  return v49;
}

- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if we have unregistered KT Data that is ready to register.", v22, 2u);
  }

  serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
  v7 = [NSNumber numberWithUnsignedShort:indexCopy];
  v8 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v7];

  unregisteredKTData = [v8 unregisteredKTData];

  if (unregisteredKTData)
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      unregisteredKTData2 = [v8 unregisteredKTData];
      v22[0] = 67109378;
      v22[1] = indexCopy;
      v23 = 2112;
      v24 = unregisteredKTData2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found key index has unregistered KT Data { keyIndex: %u, unregisteredKTData: %@ }", v22, 0x12u);
    }

    unregisteredKTData3 = [v8 unregisteredKTData];
    ktDataForRegistration = [unregisteredKTData3 ktDataForRegistration];
    if (ktDataForRegistration)
    {
      v14 = ktDataForRegistration;
      unregisteredKTData4 = [v8 unregisteredKTData];
      ktPublicAccountKey = [unregisteredKTData4 ktPublicAccountKey];
      if (ktPublicAccountKey)
      {
        v17 = ktPublicAccountKey;
        unregisteredKTData5 = [v8 unregisteredKTData];
        ktDataSignature = [unregisteredKTData5 ktDataSignature];

        if (ktDataSignature)
        {
          v20 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v22[0]) = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unregistered KT Data has necessary fields to register.", v22, 2u);
          }

          LOBYTE(unregisteredKTData) = 1;
LABEL_17:

          goto LABEL_18;
        }

LABEL_14:
        v20 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22[0]) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unregistered KT Data does not yet have necessary fields to register.", v22, 2u);
        }

        LOBYTE(unregisteredKTData) = 0;
        goto LABEL_17;
      }
    }

    goto LABEL_14;
  }

LABEL_18:

  return unregisteredKTData;
}

- (id)createKTRegistrationDataForServiceTypes:(id)types usingPublicIdentityData:(id)data withApplicationKeyManager:(id)manager
{
  typesCopy = types;
  dataCopy = data;
  managerCopy = manager;
  v9 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v94 = dataCopy;
    *&v94[8] = 2112;
    *&v94[10] = managerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating KT Registration Data objects without async enrollment. {publicIdentity: %@, applicationKeyManager: %@}", buf, 0x16u);
  }

  v10 = objc_alloc_init(NSMutableSet);
  theDict = objc_alloc_init(NSMutableDictionary);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [typesCopy allKeys];
  v11 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v90;
    *&v12 = 138412290;
    v65 = v12;
    v15 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
    v78 = managerCopy;
    v68 = v10;
    selfCopy = self;
    v67 = *v90;
    do
    {
      v16 = 0;
      v71 = v13;
      do
      {
        if (*v90 != v14)
        {
          objc_enumerationMutation(obj);
        }

        key = *(*(&v89 + 1) + 8 * v16);
        v17 = [typesCopy objectForKeyedSubscript:v65];
        serviceController = [(IDSKTRegistrationDataManager *)self serviceController];
        v76 = v17;
        serviceIdentifier = [v17 serviceIdentifier];
        v20 = [serviceController serviceWithIdentifier:serviceIdentifier];

        v21 = v20;
        if ([v20 adHocServiceType])
        {
          serviceController2 = [(IDSKTRegistrationDataManager *)self serviceController];
          v21 = [serviceController2 primaryServiceForAdhocServiceType:{objc_msgSend(v20, "adHocServiceType")}];
        }

        if ([v10 containsObject:key])
        {
          v23 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v21 identifier];
            *buf = v65;
            *v94 = identifier;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Top level service already has relevant KT Data setup. { service: %@ }", buf, 0xCu);
          }

          goto LABEL_41;
        }

        v74 = v16;
        v25 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
        v26 = v21;
        publicNGMIdentityData = [dataCopy publicNGMIdentityData];
        [(IDSProtoKeyTransparencyLoggableData *)v25 setNgmPublicIdentity:publicNGMIdentityData];

        nGMVersion = [dataCopy NGMVersion];
        -[IDSProtoKeyTransparencyLoggableData setNgmVersion:](v25, "setNgmVersion:", [nGMVersion unsignedIntValue]);

        v29 = _IDSKeyTransparencyVersionNumber();
        v79 = v25;
        -[IDSProtoKeyTransparencyLoggableData setKtVersion:](v25, "setKtVersion:", [v29 unsignedIntValue]);

        v30 = objc_alloc_init(NSMutableSet);
        selfCopy2 = self;
        v32 = v30;
        serviceController3 = [(IDSKTRegistrationDataManager *)selfCopy2 serviceController];
        identifier2 = [v21 identifier];
        v35 = [serviceController3 adHocServicesForIdentifier:identifier2];
        v73 = v26;
        v36 = [v35 arrayByAddingObject:v26];

        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v37 = v36;
        v38 = [v37 countByEnumeratingWithState:&v85 objects:v95 count:16];
        if (!v38)
        {
          goto LABEL_38;
        }

        v39 = v38;
        v40 = *v86;
        v80 = v32;
        v81 = v37;
        do
        {
          v41 = 0;
          do
          {
            if (*v86 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v85 + 1) + 8 * v41);
            if ([v42 applicationKeyIndex])
            {
              v43 = [v15[476] numberWithUnsignedShort:{objc_msgSend(v42, "applicationKeyIndex")}];
              v44 = [v32 containsObject:v43];

              if ((v44 & 1) == 0)
              {
                applicationKeyIndex = [v42 applicationKeyIndex];
                v84 = 0;
                v46 = [managerCopy copyPublicIdentityDataToRegisterForKeyIndex:applicationKeyIndex withError:&v84];
                v47 = v84;
                v48 = v47;
                if (v46)
                {
                  v82 = v47;
                  error = 0;
                  v49 = v15;
                  v50 = SecKeyCopyExternalRepresentation(v46, &error);
                  v51 = +[IDSFoundationLog KeyTransparency];
                  v52 = v51;
                  if (v50)
                  {
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      applicationKeyIndex2 = [v42 applicationKeyIndex];
                      identifier3 = [v42 identifier];
                      *buf = 67109378;
                      *v94 = applicationKeyIndex2;
                      managerCopy = v78;
                      *&v94[4] = 2112;
                      *&v94[6] = identifier3;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Adding application key %u to kt-loggable-data for service: %@", buf, 0x12u);
                    }

                    v52 = objc_alloc_init(IDSProtoApplicationKeyEntry);
                    -[NSObject setKeyIndex:](v52, "setKeyIndex:", sub_1005F0F7C([v42 applicationKeyIndex]));
                    [v52 setPublicIdentity:v50];

                    [v79 addApplicationPublicIdentity:v52];
                    v15 = v49;
                    identifier4 = [v49[476] numberWithUnsignedShort:{objc_msgSend(v42, "applicationKeyIndex")}];
                    v32 = v80;
                    [v80 addObject:identifier4];
LABEL_25:
                  }

                  else
                  {
                    v15 = v49;
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                    {
                      applicationKeyIndex3 = [v42 applicationKeyIndex];
                      v60 = error;
                      identifier4 = [v42 identifier];
                      *buf = 67109634;
                      *v94 = applicationKeyIndex3;
                      v32 = v80;
                      *&v94[4] = 2112;
                      *&v94[6] = v60;
                      managerCopy = v78;
                      *&v94[14] = 2112;
                      *&v94[16] = identifier4;
                      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to get representation of application key { keyType: %u, error: %@, service: %@ }", buf, 0x1Cu);
                      goto LABEL_25;
                    }
                  }

                  v48 = v82;

                  CFRelease(v46);
                  if (error)
                  {
                    CFRelease(error);
                  }

                  v37 = v81;
                }

                else
                {
                  v56 = +[IDSFoundationLog KeyTransparency];
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    applicationKeyIndex4 = [v42 applicationKeyIndex];
                    identifier5 = [v42 identifier];
                    *buf = 67109378;
                    *v94 = applicationKeyIndex4;
                    v32 = v80;
                    *&v94[4] = 2112;
                    *&v94[6] = identifier5;
                    _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to get service application key { keyType: %u, service: %@ }", buf, 0x12u);
                  }
                }
              }
            }

            v41 = v41 + 1;
          }

          while (v39 != v41);
          v61 = [v37 countByEnumeratingWithState:&v85 objects:v95 count:16];
          v39 = v61;
        }

        while (v61);
LABEL_38:

        v62 = objc_alloc_init(IDSKTRegistrationData);
        v23 = v79;
        data = [v79 data];
        [v62 setKtDataForRegistration:data];

        v10 = v68;
        if (v62)
        {
          CFDictionarySetValue(theDict, key, v62);
        }

        [v68 addObject:key];

        self = selfCopy;
        v14 = v67;
        v13 = v71;
        v21 = v73;
        v16 = v74;
LABEL_41:

        v16 = v16 + 1;
      }

      while (v16 != v13);
      v13 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    }

    while (v13);
  }

  return theDict;
}

- (BOOL)requestGenerationOfUnregisteredKTRegDataWithPublicIdentityData:(id)data applicationKeyManager:(id)manager
{
  dataCopy = data;
  managerCopy = manager;
  v7 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating request for KT registration data.", buf, 2u);
  }

  serviceController = [(IDSKTRegistrationDataManager *)self serviceController];
  allPrimaryServices = [serviceController allPrimaryServices];

  v10 = objc_alloc_init(NSMutableSet);
  v72 = objc_alloc_init(NSMutableDictionary);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = allPrimaryServices;
  v11 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v93;
    v81 = managerCopy;
    v74 = v10;
    selfCopy = self;
    v73 = *v93;
    do
    {
      v14 = 0;
      v77 = v12;
      do
      {
        if (*v93 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v92 + 1) + 8 * v14);
        v16 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v15 ktRegistrationDataIndex]);
        v17 = [v10 containsObject:v16];

        if (v17)
        {
          v18 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v15 identifier];
            *buf = 138412290;
            *v97 = identifier;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Top level service already has relevant KT Data setup. { service: %@ }", buf, 0xCu);
          }
        }

        else
        {
          v80 = v14;
          v20 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
          publicNGMIdentityData = [dataCopy publicNGMIdentityData];
          [(IDSProtoKeyTransparencyLoggableData *)v20 setNgmPublicIdentity:publicNGMIdentityData];

          nGMVersion = [dataCopy NGMVersion];
          -[IDSProtoKeyTransparencyLoggableData setNgmVersion:](v20, "setNgmVersion:", [nGMVersion unsignedIntValue]);

          v23 = _IDSKeyTransparencyVersionNumber();
          v82 = v20;
          -[IDSProtoKeyTransparencyLoggableData setKtVersion:](v20, "setKtVersion:", [v23 unsignedIntValue]);

          v24 = objc_alloc_init(NSMutableSet);
          serviceController2 = [(IDSKTRegistrationDataManager *)self serviceController];
          identifier2 = [v15 identifier];
          v27 = [serviceController2 adHocServicesForIdentifier:identifier2];
          v79 = v15;
          v28 = [v27 arrayByAddingObject:v15];

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v84 = v28;
          v29 = [v84 countByEnumeratingWithState:&v88 objects:v100 count:16];
          v30 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          v83 = v24;
          if (v29)
          {
            v31 = v29;
            v32 = *v89;
            do
            {
              for (i = 0; i != v31; i = i + 1)
              {
                if (*v89 != v32)
                {
                  objc_enumerationMutation(v84);
                }

                v34 = *(*(&v88 + 1) + 8 * i);
                if ([v34 applicationKeyIndex])
                {
                  v35 = [v30[476] numberWithUnsignedShort:{objc_msgSend(v34, "applicationKeyIndex")}];
                  v36 = [v24 containsObject:v35];

                  if ((v36 & 1) == 0)
                  {
                    applicationKeyIndex = [v34 applicationKeyIndex];
                    v87 = 0;
                    v38 = [managerCopy copyPublicIdentityDataToRegisterForKeyIndex:applicationKeyIndex withError:&v87];
                    v39 = v87;
                    if (v38)
                    {
                      error = 0;
                      v40 = SecKeyCopyExternalRepresentation(v38, &error);
                      v41 = +[IDSFoundationLog KeyTransparency];
                      v42 = v41;
                      if (v40)
                      {
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                        {
                          applicationKeyIndex2 = [v34 applicationKeyIndex];
                          identifier3 = [v34 identifier];
                          *buf = 67109378;
                          *v97 = applicationKeyIndex2;
                          managerCopy = v81;
                          *&v97[4] = 2112;
                          *&v97[6] = identifier3;
                          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Adding application key %u to kt-loggable-data for service: %@", buf, 0x12u);
                        }

                        v42 = objc_alloc_init(IDSProtoApplicationKeyEntry);
                        -[NSObject setKeyIndex:](v42, "setKeyIndex:", sub_1005F0F7C([v34 applicationKeyIndex]));
                        [v42 setPublicIdentity:v40];

                        [v82 addApplicationPublicIdentity:v42];
                        v30 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
                        v45 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v34 applicationKeyIndex]);
                        [v83 addObject:v45];
                      }

                      else
                      {
                        v30 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                        {
                          applicationKeyIndex3 = [v34 applicationKeyIndex];
                          v50 = error;
                          identifier4 = [v34 identifier];
                          *buf = 67109634;
                          *v97 = applicationKeyIndex3;
                          *&v97[4] = 2112;
                          *&v97[6] = v50;
                          managerCopy = v81;
                          v98 = 2112;
                          v99 = identifier4;
                          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to get representation of application key { keyType: %u, error: %@, service: %@ }", buf, 0x1Cu);
                        }
                      }

                      CFRelease(v38);
                      if (error)
                      {
                        CFRelease(error);
                      }

                      v24 = v83;
                    }

                    else
                    {
                      v46 = +[IDSFoundationLog KeyTransparency];
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                      {
                        applicationKeyIndex4 = [v34 applicationKeyIndex];
                        identifier5 = [v34 identifier];
                        *buf = 67109378;
                        *v97 = applicationKeyIndex4;
                        v24 = v83;
                        *&v97[4] = 2112;
                        *&v97[6] = identifier5;
                        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to get service application key { keyType: %u, service: %@ }", buf, 0x12u);
                      }
                    }
                  }
                }
              }

              v31 = [v84 countByEnumeratingWithState:&v88 objects:v100 count:16];
            }

            while (v31);
          }

          v52 = objc_alloc_init(IDSKTRegistrationData);
          v18 = v82;
          data = [v82 data];
          [v52 setKtDataForRegistration:data];

          self = selfCopy;
          v54 = -[IDSKTRegistrationDataManager _ktApplicationForKTRegistrationIndex:](selfCopy, "_ktApplicationForKTRegistrationIndex:", [v79 ktRegistrationDataIndex]);
          if (v54 && ([v52 ktDataForRegistration], v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
          {
            v56 = [TransparencyIDSRegistrationRequestData alloc];
            ktDataForRegistration = [v52 ktDataForRegistration];
            v58 = [v56 initWithApplication:v54 registrationData:ktDataForRegistration];

            v59 = +[IDSPushHandler sharedInstance];
            pushToken = [v59 pushToken];
            [v58 setPushToken:pushToken];

            managerCopy = v81;
            [v72 setObject:v58 forKeyedSubscript:v54];
            v10 = v74;
          }

          else
          {
            v58 = +[IDSFoundationLog KeyTransparency];
            v10 = v74;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              ktRegistrationDataIndex = [v79 ktRegistrationDataIndex];
              ktDataForRegistration2 = [v52 ktDataForRegistration];
              *buf = 67109378;
              *v97 = ktRegistrationDataIndex;
              *&v97[4] = 2112;
              *&v97[6] = ktDataForRegistration2;
              _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "No KT Application found for key index or registration data is null. { keyIndex: %u, ktRegistrationData: %@ }", buf, 0x12u);

              managerCopy = v81;
            }
          }

          serviceIndexToKTRegDataConfigs = selfCopy->_serviceIndexToKTRegDataConfigs;
          v62 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v79 ktRegistrationDataIndex]);
          v63 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v62];

          [v63 setUnregisteredKTData:v52];
          v64 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v79 ktRegistrationDataIndex]);
          [v10 addObject:v64];

          v13 = v73;
          v12 = v77;
          v14 = v80;
        }

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
    }

    while (v12);
  }

  if (+[IMUserDefaults shouldDropKTAccountKeySignatureRequestOnLaunch]&& CUTIsInternalInstall())
  {
    v67 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Default is set to drop account key signature generation request. This is not the path that's hit during registration.", buf, 2u);
    }

    [v72 removeAllObjects];
  }

  if (!+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
  {
    v68 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_10092E664();
    }

    [v72 removeAllObjects];
  }

  if ([v72 count])
  {
    v69 = [[TransparencyIDSRegistrationRequest alloc] initWithSignatureRequests:v72];
    [v69 setInitialTimeout:10.0];
    transparencyDaemon = self->_transparencyDaemon;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10069D480;
    v85[3] = &unk_100BE4028;
    v85[4] = self;
    [(TransparencyDaemon *)transparencyDaemon transparencyGetKTSignatures:v69 complete:v85];
  }

  else
  {
    v69 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_10092E6A0();
    }
  }

  return 0;
}

- (void)fetchKTSignatureDataForServiceTypes:(id)types publicIdentityData:(id)data registerID:(id)d applicationKeyManager:(id)manager withCompletion:(id)completion
{
  typesCopy = types;
  dataCopy = data;
  dCopy = d;
  managerCopy = manager;
  completionCopy = completion;
  v13 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v131 = dataCopy;
    *&v131[8] = 2112;
    *&v131[10] = managerCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating KT Registration Data objects. {publicIdentity: %@, applicationKeyManager: %@}", buf, 0x16u);
  }

  v14 = objc_alloc_init(NSMutableSet);
  theDict = objc_alloc_init(NSMutableDictionary);
  v98 = objc_alloc_init(NSMutableSet);
  v93 = objc_alloc_init(NSMutableDictionary);
  [(IDSKTRegistrationDataManager *)self clearKTDatas];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = [typesCopy allKeys];
  v15 = [obj countByEnumeratingWithState:&v125 objects:v133 count:16];
  v107 = managerCopy;
  if (v15)
  {
    v16 = v15;
    v17 = *v126;
    v18 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
    selfCopy = self;
    v97 = v14;
    v95 = *v126;
    do
    {
      v19 = 0;
      v100 = v16;
      do
      {
        if (*v126 != v17)
        {
          objc_enumerationMutation(obj);
        }

        key = *(*(&v125 + 1) + 8 * v19);
        v20 = [typesCopy objectForKeyedSubscript:?];
        serviceController = [(IDSKTRegistrationDataManager *)self serviceController];
        serviceIdentifier = [v20 serviceIdentifier];
        v23 = [serviceController serviceWithIdentifier:serviceIdentifier];

        if ([v23 adHocServiceType])
        {
          serviceController2 = [(IDSKTRegistrationDataManager *)self serviceController];
          v25 = [serviceController2 primaryServiceForAdhocServiceType:{objc_msgSend(v23, "adHocServiceType")}];

          v106 = v25;
        }

        else
        {
          v106 = v23;
        }

        v26 = v107;
        if ([v14 containsObject:key])
        {
          v27 = +[IDSFoundationLog KeyTransparency];
          v28 = v106;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v106 identifier];
            *buf = 138412290;
            *v131 = identifier;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Top level service already has relevant KT Data setup. { service: %@ }", buf, 0xCu);
          }
        }

        else
        {
          v102 = v20;
          v103 = v19;
          v30 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
          publicNGMIdentityData = [dataCopy publicNGMIdentityData];
          [(IDSProtoKeyTransparencyLoggableData *)v30 setNgmPublicIdentity:publicNGMIdentityData];

          nGMVersion = [dataCopy NGMVersion];
          -[IDSProtoKeyTransparencyLoggableData setNgmVersion:](v30, "setNgmVersion:", [nGMVersion unsignedIntValue]);

          v33 = _IDSKeyTransparencyVersionNumber();
          v108 = v30;
          -[IDSProtoKeyTransparencyLoggableData setKtVersion:](v30, "setKtVersion:", [v33 unsignedIntValue]);

          v34 = objc_alloc_init(NSMutableSet);
          selfCopy2 = self;
          v36 = v34;
          serviceController3 = [(IDSKTRegistrationDataManager *)selfCopy2 serviceController];
          identifier2 = [v106 identifier];
          v39 = [serviceController3 adHocServicesForIdentifier:identifier2];
          v40 = [v39 arrayByAddingObject:v106];

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v41 = v40;
          v42 = [v41 countByEnumeratingWithState:&v121 objects:v132 count:16];
          v109 = v41;
          v110 = v36;
          if (v42)
          {
            v43 = v42;
            v44 = *v122;
            do
            {
              v45 = 0;
              do
              {
                if (*v122 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v121 + 1) + 8 * v45);
                if ([v46 applicationKeyIndex])
                {
                  v47 = [v18[476] numberWithUnsignedShort:{objc_msgSend(v46, "applicationKeyIndex")}];
                  v48 = [v36 containsObject:v47];

                  if ((v48 & 1) == 0)
                  {
                    applicationKeyIndex = [v46 applicationKeyIndex];
                    v120 = 0;
                    v50 = [v26 copyPublicIdentityDataToRegisterForKeyIndex:applicationKeyIndex withError:&v120];
                    v51 = v120;
                    v52 = v51;
                    if (v50)
                    {
                      v111 = v51;
                      v53 = v18;
                      error = 0;
                      v54 = SecKeyCopyExternalRepresentation(v50, &error);
                      v55 = +[IDSFoundationLog KeyTransparency];
                      v56 = v55;
                      if (v54)
                      {
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                        {
                          applicationKeyIndex2 = [v46 applicationKeyIndex];
                          identifier3 = [v46 identifier];
                          *buf = 67109378;
                          *v131 = applicationKeyIndex2;
                          v26 = v107;
                          *&v131[4] = 2112;
                          *&v131[6] = identifier3;
                          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Adding application key %u to kt-loggable-data for service: %@", buf, 0x12u);
                        }

                        v56 = objc_alloc_init(IDSProtoApplicationKeyEntry);
                        -[NSObject setKeyIndex:](v56, "setKeyIndex:", sub_1005F0F7C([v46 applicationKeyIndex]));
                        [v56 setPublicIdentity:v54];

                        [v108 addApplicationPublicIdentity:v56];
                        v18 = v53;
                        v59 = [v53[476] numberWithUnsignedShort:{objc_msgSend(v46, "applicationKeyIndex")}];
                        v36 = v110;
                        [v110 addObject:v59];

                        v41 = v109;
                      }

                      else
                      {
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                        {
                          applicationKeyIndex3 = [v46 applicationKeyIndex];
                          v64 = error;
                          identifier4 = [v46 identifier];
                          *buf = 67109634;
                          *v131 = applicationKeyIndex3;
                          v41 = v109;
                          *&v131[4] = 2112;
                          *&v131[6] = v64;
                          v18 = v53;
                          *&v131[14] = 2112;
                          *&v131[16] = identifier4;
                          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to get representation of application key { keyType: %u, error: %@, service: %@ }", buf, 0x1Cu);

                          v26 = v107;
                        }

                        else
                        {
                          v18 = v53;
                        }

                        v36 = v110;
                      }

                      CFRelease(v50);
                      if (error)
                      {
                        CFRelease(error);
                      }

                      v52 = v111;
                    }

                    else
                    {
                      v60 = +[IDSFoundationLog KeyTransparency];
                      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                      {
                        applicationKeyIndex4 = [v46 applicationKeyIndex];
                        identifier5 = [v46 identifier];
                        *buf = 67109378;
                        *v131 = applicationKeyIndex4;
                        v41 = v109;
                        *&v131[4] = 2112;
                        *&v131[6] = identifier5;
                        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to get service application key { keyType: %u, service: %@ }", buf, 0x12u);

                        v26 = v107;
                      }
                    }
                  }
                }

                v45 = v45 + 1;
              }

              while (v43 != v45);
              v66 = [v41 countByEnumeratingWithState:&v121 objects:v132 count:16];
              v43 = v66;
            }

            while (v66);
          }

          v67 = objc_alloc_init(IDSKTRegistrationData);
          v27 = v108;
          data = [v108 data];
          [v67 setKtDataForRegistration:data];

          if (v67)
          {
            CFDictionarySetValue(theDict, key, v67);
          }

          v14 = v97;
          [v97 addObject:key];
          self = selfCopy;
          v69 = -[IDSKTRegistrationDataManager _ktApplicationForKTRegistrationIndex:](selfCopy, "_ktApplicationForKTRegistrationIndex:", [v106 ktRegistrationDataIndex]);
          v20 = v102;
          if (v69 && ([v67 ktDataForRegistration], v70 = objc_claimAutoreleasedReturnValue(), v70, v70))
          {
            v71 = [TransparencyIDSRegistrationRequestData alloc];
            ktDataForRegistration = [v67 ktDataForRegistration];
            v73 = [v71 initWithApplication:v69 registrationData:ktDataForRegistration];

            v74 = +[IDSPushHandler sharedInstance];
            pushToken = [v74 pushToken];
            [v73 setPushToken:pushToken];

            [v93 setObject:v73 forKeyedSubscript:v69];
          }

          else
          {
            v73 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              ktRegistrationDataIndex = [v106 ktRegistrationDataIndex];
              ktDataForRegistration2 = [v67 ktDataForRegistration];
              *buf = 67109378;
              *v131 = ktRegistrationDataIndex;
              *&v131[4] = 2112;
              *&v131[6] = ktDataForRegistration2;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "No KT Application found for key index or registration data is null. { keyIndex: %u, ktRegistrationData: %@ }", buf, 0x12u);
            }
          }

          serviceIndexToKTRegDataConfigs = selfCopy->_serviceIndexToKTRegDataConfigs;
          v77 = [v18[476] numberWithUnsignedShort:{objc_msgSend(v106, "ktRegistrationDataIndex")}];
          v78 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v77];

          [v78 setUnregisteredKTData:v67];
          v79 = [v18[476] numberWithUnsignedShort:{objc_msgSend(v106, "ktRegistrationDataIndex")}];
          [v98 addObject:v79];

          v28 = v106;
          v17 = v95;
          v16 = v100;
          v19 = v103;
        }

        v19 = v19 + 1;
      }

      while (v19 != v16);
      v16 = [obj countByEnumeratingWithState:&v125 objects:v133 count:16];
    }

    while (v16);
  }

  if (+[IMUserDefaults shouldDropKTAccountKeySignatureRequestDuringReg]&& CUTIsInternalInstall())
  {
    v82 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Default is set to drop account key signature request during registration.", buf, 2u);
    }

    [v93 removeAllObjects];
  }

  if (!+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
  {
    v83 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_10092E664();
    }

    [v93 removeAllObjects];
  }

  ktVerifier = [(IDSKTRegistrationDataManager *)self ktVerifier];
  v129 = kKTApplicationIdentifierIDS;
  v85 = [NSArray arrayWithObjects:&v129 count:1];
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_10069E254;
  v112[3] = &unk_100BE4078;
  v113 = theDict;
  v114 = typesCopy;
  selfCopy3 = self;
  v116 = v93;
  v117 = dCopy;
  v118 = completionCopy;
  v86 = completionCopy;
  v87 = dCopy;
  v88 = v93;
  v89 = typesCopy;
  v90 = theDict;
  [ktVerifier getOptInStatesForKTApplications:v85 withCompletion:v112];
}

- (BOOL)doesSignatureDSID:(id)d matchAccountDSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = 0;
      v15 = 2112;
      v16 = iDCopy;
      v8 = "Missing signature dsid. Falling back and using signature without dsid validation. { signatureDSID: %@, accountDSID: %@ }";
      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v9) = 1;
    goto LABEL_9;
  }

  if ([dCopy containsString:@"-"])
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = dCopy;
      v15 = 2112;
      v16 = iDCopy;
      v8 = "Signature DSID appears to be malformed. Falling back and using signature without dsid validation. { signatureDSID: %@, accountDSID: %@ }";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = dCopy;
  if (([v7 hasPrefix:@"D:"]& 1) == 0)
  {
    v11 = [@"D:" stringByAppendingString:v7];

    v7 = v11;
  }

  v9 = [iDCopy isEqualToString:v7];
  if (v9)
  {
    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = iDCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Signature DSID appears to match account dsid. { signatureDSID: %@, accountDSID: %@ }", &v13, 0x16u);
    }
  }

LABEL_9:

  return v9;
}

- (BOOL)handleTransparencySignatureResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling signature response from transparency.", buf, 2u);
  }

  accountController = [(IDSKTRegistrationDataManager *)self accountController];
  isiCloudSignedIn = [accountController isiCloudSignedIn];

  systemMonitor = [(IDSKTRegistrationDataManager *)self systemMonitor];
  isSetup = [systemMonitor isSetup];

  if (!responseCopy)
  {
    v69 = isSetup ^ 1;
    if (((isiCloudSignedIn ^ 1) & 1) != 0 || v69)
    {
      v75 = isiCloudSignedIn ^ 1 | isSetup;
      v76 = isiCloudSignedIn | v69;
      v77 = -1003;
      if ((isiCloudSignedIn | isSetup))
      {
        v77 = -1000;
      }

      v78 = (v76 & 1) == 0;
      if (v76)
      {
        v79 = v77;
      }

      else
      {
        v79 = -1004;
      }

      if (v78)
      {
        v80 = 0;
      }

      else
      {
        v80 = isiCloudSignedIn | isSetup;
      }

      if ((isiCloudSignedIn ^ 1 | isSetup))
      {
        v71 = v79;
      }

      else
      {
        v71 = -1001;
      }

      if (v75)
      {
        v70 = v80;
      }

      else
      {
        v70 = 1;
      }

      if (!errorCopy)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v70 = 1;
      v71 = -1002;
      if (!errorCopy)
      {
LABEL_84:
        v68 = 0;
LABEL_104:
        v81 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:v71 userInfo:v68];
        v82 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = [NSNumber numberWithInteger:v71];
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = v83;
          *&v124[18] = 2112;
          *&v124[20] = v81;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v84 = +[TransparencyAnalytics logger];
        [v84 logResultForEvent:@"kt-sig-resp" hardFailure:v70 & 1 result:v81];

        v85 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sub_10092E74C();
        }

        v86 = 0;
        goto LABEL_140;
      }
    }

    v132 = NSUnderlyingErrorKey;
    v133 = errorCopy;
    v68 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    goto LABEL_104;
  }

  registrationData = [responseCopy registrationData];
  if (!registrationData)
  {
    v72 = isSetup ^ 1;
    if (((isiCloudSignedIn ^ 1) & 1) != 0 || v72)
    {
      v88 = isiCloudSignedIn | v72;
      v89 = -1013;
      if ((isiCloudSignedIn | isSetup))
      {
        v89 = -1000;
      }

      v90 = (v88 & 1) == 0;
      if (v88)
      {
        v91 = v89;
      }

      else
      {
        v91 = -1014;
      }

      if (v90)
      {
        v92 = 0;
      }

      else
      {
        v92 = isiCloudSignedIn | isSetup;
      }

      if ((isiCloudSignedIn ^ 1 | isSetup))
      {
        v74 = v91;
      }

      else
      {
        v74 = -1011;
      }

      if ((isiCloudSignedIn ^ 1 | isSetup))
      {
        v73 = v92;
      }

      else
      {
        v73 = 1;
      }
    }

    else
    {
      v73 = 1;
      v74 = -1012;
    }

    if (errorCopy)
    {
      v130 = NSUnderlyingErrorKey;
      v131 = errorCopy;
      v81 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    }

    else
    {
      v81 = 0;
    }

    v93 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:v74 userInfo:v81];
    v94 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = [NSNumber numberWithInteger:v74];
      *buf = 138412802;
      *v124 = @"kt-sig-resp";
      *&v124[8] = 2112;
      *&v124[10] = v95;
      *&v124[18] = 2112;
      *&v124[20] = v93;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
    }

    v96 = +[TransparencyAnalytics logger];
    [v96 logResultForEvent:@"kt-sig-resp" hardFailure:v73 & 1 result:v93];

    v97 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      sub_10092E6DC();
    }

    v86 = 0;
    v68 = 0;
LABEL_140:

    goto LABEL_141;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = registrationData;
  v14 = [registrationData countByEnumeratingWithState:&v111 objects:v129 count:16];
  if (!v14)
  {
    v86 = 0;
    v68 = obj;
    goto LABEL_141;
  }

  v15 = v14;
  v99 = responseCopy;
  log = 0;
  v102 = 0;
  v110 = *v112;
  v108 = errorCopy;
  do
  {
    v16 = 0;
    do
    {
      if (*v112 != v110)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v111 + 1) + 8 * v16);
      v18 = [(IDSKTRegistrationDataManager *)self _ktRegistrationDataIndexForKTApplication:v17];
      serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
      v20 = [NSNumber numberWithUnsignedShort:v18];
      v21 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v20];

      if (!v21)
      {
        if (errorCopy)
        {
          v127 = NSUnderlyingErrorKey;
          v128 = errorCopy;
          v23 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        }

        else
        {
          v23 = 0;
        }

        ktDataForRegistration = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2000 userInfo:v23];
        v41 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D270;
          *&v124[18] = 2112;
          *&v124[20] = ktDataForRegistration;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v42 = +[TransparencyAnalytics logger];
        [v42 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:ktDataForRegistration];

        v43 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = [obj objectForKeyedSubscript:v17];
          *buf = 67110146;
          *v124 = v18;
          *&v124[4] = 2112;
          *&v124[6] = v17;
          *&v124[14] = 2112;
          *&v124[16] = v44;
          *&v124[24] = 2112;
          *&v124[26] = ktDataForRegistration;
          v125 = 2112;
          v126 = v108;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "No config for key index and KT Application. { keyIndex: %u, KT Application: %@, transparencyResponse: %@, error: %@, underlyingError: %@ }", buf, 0x30u);

          errorCopy = v108;
        }

        goto LABEL_45;
      }

      unregisteredKTData = [v21 unregisteredKTData];

      if (!unregisteredKTData)
      {
        if (errorCopy)
        {
          v121 = NSUnderlyingErrorKey;
          v122 = errorCopy;
          v23 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        }

        else
        {
          v23 = 0;
        }

        ktDataForRegistration = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2001 userInfo:v23];
        v45 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D288;
          *&v124[18] = 2112;
          *&v124[20] = ktDataForRegistration;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v46 = +[TransparencyAnalytics logger];
        [v46 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:ktDataForRegistration];

        v43 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *v124 = v18;
          *&v124[4] = 2112;
          *&v124[6] = v17;
          *&v124[14] = 2112;
          *&v124[16] = ktDataForRegistration;
          *&v124[24] = 2112;
          *&v124[26] = errorCopy;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "No unregistered KT data for keyIndex. { keyIndex: %u, ktApplication: %@, error: %@, underlyingError: %@ }", buf, 0x26u);
        }

LABEL_45:

        goto LABEL_66;
      }

      v23 = [obj objectForKeyedSubscript:v17];
      if (!v23)
      {
        if (errorCopy)
        {
          v119 = NSUnderlyingErrorKey;
          v120 = errorCopy;
          ktDataForRegistration = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        }

        else
        {
          ktDataForRegistration = 0;
        }

        v51 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2002 userInfo:ktDataForRegistration];
        v52 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D2A0;
          *&v124[18] = 2112;
          *&v124[20] = v51;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v53 = +[TransparencyAnalytics logger];
        [v53 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:v51];

        v54 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *v124 = v18;
          *&v124[4] = 2112;
          *&v124[6] = v17;
          *&v124[14] = 2112;
          *&v124[16] = v51;
          *&v124[24] = 2112;
          *&v124[26] = v108;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "No signature data from KT for KT Application. { keyIndex: %u, ktApplication: %@, error: %@, underlyingError: %@ }", buf, 0x26u);
        }

        goto LABEL_65;
      }

      unregisteredKTData2 = [v21 unregisteredKTData];
      ktDataForRegistration = [unregisteredKTData2 ktDataForRegistration];

      if (!ktDataForRegistration || ([v23 tbsKTIDSRegistrationData], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(ktDataForRegistration, "isEqualToData:", v26), v26, (v27 & 1) == 0))
      {
        if (errorCopy)
        {
          v117 = NSUnderlyingErrorKey;
          v118 = errorCopy;
          v40 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        }

        else
        {
          v40 = 0;
        }

        v47 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2003 userInfo:v40];
        v48 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D2B8;
          *&v124[18] = 2112;
          *&v124[20] = v47;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v49 = +[TransparencyAnalytics logger];
        [v49 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:v47];

        v50 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          tbsKTIDSRegistrationData = [v23 tbsKTIDSRegistrationData];
          *buf = 138413314;
          *v124 = ktDataForRegistration;
          *&v124[8] = 2112;
          *&v124[10] = tbsKTIDSRegistrationData;
          *&v124[18] = 1024;
          *&v124[20] = v18;
          *&v124[24] = 2112;
          *&v124[26] = v47;
          v125 = 2112;
          v126 = v108;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "KT data requiring signature not matching between transparency and IDS. { IDSKTData: %@, TransparencyKTData: %@, keyIndex: %u, error: %@, underlyingError: %@ }", buf, 0x30u);
        }

LABEL_64:

LABEL_65:
        errorCopy = v108;
        goto LABEL_66;
      }

      signature = [v23 signature];
      if (!signature || (v29 = signature, [v23 publicKey], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, !v30))
      {
        if (errorCopy)
        {
          v115 = NSUnderlyingErrorKey;
          v116 = errorCopy;
          v40 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        }

        else
        {
          v40 = 0;
        }

        v47 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2004 userInfo:v40];
        v55 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D2D0;
          *&v124[18] = 2112;
          *&v124[20] = v47;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v56 = +[TransparencyAnalytics logger];
        [v56 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:v47];

        v50 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          *v124 = v18;
          *&v124[4] = 2112;
          *&v124[6] = v47;
          *&v124[14] = 2112;
          *&v124[16] = v108;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "No signature or public key provided from transparency for key index. { keyIndex: %u, error: %@, underlyingError: %@ }", buf, 0x1Cu);
        }

        goto LABEL_64;
      }

      loga = [v21 registeredKTData];
      if (!loga)
      {
        goto LABEL_70;
      }

      registeredKTData = [v21 registeredKTData];
      ktDataForRegistration2 = [registeredKTData ktDataForRegistration];
      tbsKTIDSRegistrationData2 = [v23 tbsKTIDSRegistrationData];
      v103 = ktDataForRegistration2;
      if (![ktDataForRegistration2 isEqualToData:tbsKTIDSRegistrationData2])
      {

LABEL_69:
        goto LABEL_70;
      }

      registeredKTData2 = [v21 registeredKTData];
      ktPublicAccountKey = [registeredKTData2 ktPublicAccountKey];
      publicKey = [v23 publicKey];
      v101 = [ktPublicAccountKey isEqualToData:publicKey];

      errorCopy = v108;
      if (v101)
      {
        registeredKTData3 = [v21 registeredKTData];
        ktDataSignature = [registeredKTData3 ktDataSignature];
        if (ktDataSignature)
        {

LABEL_22:
          v37 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v124 = @"kt-sig-resp";
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Reporting KT metric success. { metricName: %@ }", buf, 0xCu);
          }

          v38 = +[TransparencyAnalytics logger];
          [v38 logSuccessForEventNamed:@"kt-sig-resp"];

          v39 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v124 = v18;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "KT data for registration and public account key are unchanged from what is registered. No update needed for key index. { keyIndex: %u }", buf, 8u);
          }

          [v21 setUnregisteredKTData:0];
          log = 1;
          goto LABEL_66;
        }

        signature2 = [v23 signature];

        if (!signature2)
        {
          goto LABEL_22;
        }

        loga = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "We previously registered without a signature, but we have one now.", buf, 2u);
        }

        goto LABEL_69;
      }

LABEL_70:
      v57 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v124 = @"kt-sig-resp";
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Reporting KT metric success. { metricName: %@ }", buf, 0xCu);
      }

      v58 = +[TransparencyAnalytics logger];
      [v58 logSuccessForEventNamed:@"kt-sig-resp"];

      publicKey2 = [v23 publicKey];
      unregisteredKTData3 = [v21 unregisteredKTData];
      [unregisteredKTData3 setKtPublicAccountKey:publicKey2];

      signature3 = [v23 signature];
      unregisteredKTData4 = [v21 unregisteredKTData];
      [unregisteredKTData4 setKtDataSignature:signature3];

      dsid = [v23 dsid];
      unregisteredKTData5 = [v21 unregisteredKTData];
      [unregisteredKTData5 setDsid:dsid];

      log = 1;
      v102 = 1;
LABEL_66:

      v16 = v16 + 1;
    }

    while (v15 != v16);
    v66 = [obj countByEnumeratingWithState:&v111 objects:v129 count:16];
    v15 = v66;
  }

  while (v66);
  if (log)
  {
    v67 = +[IDSFoundationLog KeyTransparency];
    responseCopy = v99;
    v68 = obj;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Persisting changes.", buf, 2u);
    }

    [(IDSKTRegistrationDataManager *)self serializeAndPersistKTDatasDeleteIfNull:1];
  }

  else
  {
    responseCopy = v99;
    v68 = obj;
  }

  if (v102)
  {
    v87 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Updated unregistered data. Need to upload to KVS.", buf, 2u);
    }

    [(IDSKTRegistrationDataManager *)self updateKVSWithCurrentKTRegistrationData];
    v81 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Updated unregistered data. Need to reregister.", buf, 2u);
    }

    v86 = 1;
    goto LABEL_140;
  }

  v86 = 0;
LABEL_141:

  return v86;
}

- (id)_ktApplicationForKTRegistrationIndex:(unsigned __int16)index
{
  if ((index - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100BE4098 + (index - 1));
  }

  return v4;
}

- (unsigned)_ktRegistrationDataIndexForKTApplication:(id)application
{
  applicationCopy = application;
  if ([applicationCopy isEqualToString:kKTApplicationIdentifierIDS])
  {
    v4 = 1;
  }

  else if ([applicationCopy isEqualToString:kKTApplicationIdentifierIDSFaceTime])
  {
    v4 = 2;
  }

  else if ([applicationCopy isEqualToString:kKTApplicationIdentifierIDSMultiplex])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateKVSWithCurrentKTRegistrationData
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(IDSKTRegistrationDataManager *)self _createKTTrustedDeviceForKVSisRegistered:0];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(IDSKTRegistrationDataManager *)self _createKTTrustedDeviceForKVSisRegistered:1];
  if (v5)
  {
    [v3 addObject:v5];
  }

  if ([v3 count])
  {
    ktVerifier = [(IDSKTRegistrationDataManager *)self ktVerifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006A0854;
    v8[3] = &unk_100BD9AA8;
    v8[4] = self;
    v9 = v3;
    [ktVerifier updateKVSWithTrustedDevices:v9 withCompletion:v8];
  }

  else
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No new trusted devices to insert into KVS.", buf, 2u);
    }
  }
}

- (id)createRegistrationStatusProvider
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to create KT Registration Status provider.", buf, 2u);
  }

  v15 = objc_alloc_init(IDSKTRegistrationStatusProvider);
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = 1;
  *&v6 = 67109120;
  v14 = v6;
  do
  {
    v7 = [(IDSKTRegistrationDataManager *)self _ktApplicationForKTRegistrationIndex:v5, v14];
    if (!v7)
    {
      v8 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = v14;
        v19 = v5;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No KTApplication found for keyIndex. { keyIndex: %u }", buf, 8u);
      }
    }

    v17 = 0;
    v9 = [(IDSKTRegistrationDataManager *)self copyKTRegistrationDataToRegisterForKeyIndex:v5 isRegistered:0 withError:&v17];
    v10 = v17;
    v16 = 0;
    v11 = [(IDSKTRegistrationDataManager *)self copyKTRegistrationDataToRegisterForKeyIndex:v5 isRegistered:1 withError:&v16];
    v12 = objc_alloc_init(IDSKTRegistrationStatus);
    [v12 setUnregisteredKTData:v9];
    [v12 setRegisteredKTData:v11];
    if (v12)
    {
      CFDictionarySetValue(v4, v7, v12);
    }

    ++v5;
  }

  while (v5 != 4);
  [v15 setKtApplicationToKTRegStatus:v4];

  return v15;
}

- (id)_createKTTrustedDeviceForKVSisRegistered:(BOOL)registered
{
  registeredCopy = registered;
  v5 = +[IDSFoundationLog KeyTransparency];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  v7 = @"NO";
  if (v6)
  {
    if (registeredCopy)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v34 = v7;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating KT Trusted Device for KVS upload. { isRegistered: %@ }", buf, 0xCu);
  }

  else
  {
    if (registeredCopy)
    {
      v7 = @"YES";
    }

    v34 = v7;
  }

  v8 = objc_alloc_init(IDSProtoKeyTransparencyTrustedDevice);
  v9 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  pushToken = [v9 pushToken];
  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setPushToken:pushToken];

  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setTransparencyVersion:kTransparencyAnalyticsVersion];
  v11 = +[IMDeviceSupport sharedInstance];
  productBuildVersion = [v11 productBuildVersion];
  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setBuildVersion:productBuildVersion];

  v13 = +[IMDeviceSupport sharedInstance];
  productName = [v13 productName];
  v35 = v8;
  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setProductName:productName];

  v36 = objc_alloc_init(NSMutableArray);
  v15 = 1;
  *&v16 = 138412802;
  v33 = v16;
  do
  {
    serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
    v18 = [NSNumber numberWithUnsignedShort:v15, v33];
    v19 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v18];

    if (v19)
    {
      if (registeredCopy)
      {
        [(__CFString *)v19 registeredKTData];
      }

      else
      {
        [(__CFString *)v19 unregisteredKTData];
      }
      v20 = ;
      if (v20)
      {
        v21 = [IDSProtoKeyTransparencyLoggableData alloc];
        ktDataForRegistration = [v20 ktDataForRegistration];
        v23 = [(IDSProtoKeyTransparencyLoggableData *)v21 initWithData:ktDataForRegistration];

        if (v23)
        {
          ktDataForRegistration2 = [v20 ktDataForRegistration];
          if (ktDataForRegistration2)
          {
            v25 = ktDataForRegistration2;
            ktDataSignature = [v20 ktDataSignature];

            if (ktDataSignature)
            {
              v27 = objc_alloc_init(IDSProtoKeyTransparencyTrustedService);
              ktDataSignature2 = [v20 ktDataSignature];
              [(IDSProtoKeyTransparencyTrustedService *)v27 setDeviceSignature:ktDataSignature2];

              [(IDSProtoKeyTransparencyTrustedService *)v27 setKtLoggableData:v23];
              [(IDSProtoKeyTransparencyTrustedService *)v27 setKeyIndex:sub_1005F0F88(v15)];
              [v36 addObject:v27];
            }
          }
        }
      }

      else
      {
        v23 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = v33;
          v38 = v19;
          v39 = 1024;
          v40 = v15;
          v41 = 2112;
          v42 = v34;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "No kt registration data found for key index. { config: %@, keyIndex: %u, isRegistered: %@ }", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v20 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v38) = v15;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No config found for key index. { keyIndex: %u }", buf, 8u);
      }
    }

    ++v15;
  }

  while (v15 != 4);
  if ([v36 count])
  {
    v29 = v35;
    [(IDSProtoKeyTransparencyTrustedDevice *)v35 setTrustedServices:v36];
    v30 = v35;
  }

  else
  {
    v31 = +[IDSFoundationLog KeyTransparency];
    v29 = v35;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10092E7BC();
    }

    v30 = 0;
  }

  return v30;
}

- (void)noteSuccessfulKVSSyncOfTrustedDevices:(id)devices
{
  devicesCopy = devices;
  v5 = 0;
  v6 = 1;
  *&v7 = 67109120;
  v15 = v7;
  do
  {
    serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
    v9 = [NSNumber numberWithUnsignedShort:v6, v15];
    v10 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];

    if (v10)
    {
      unregisteredKTData = [v10 unregisteredKTData];
      v12 = unregisteredKTData;
      if (unregisteredKTData && ([unregisteredKTData uploadedToKVS]& 1) == 0 && [(IDSKTRegistrationDataManager *)self _isKTRegistrationData:v12 forServiceIndex:v6 inTrustedDevices:devicesCopy])
      {
        v5 = 1;
        [v12 setUploadedToKVS:1];
      }

      registeredKTData = [v10 registeredKTData];
      v14 = registeredKTData;
      if (registeredKTData && ([registeredKTData uploadedToKVS] & 1) == 0 && -[IDSKTRegistrationDataManager _isKTRegistrationData:forServiceIndex:inTrustedDevices:](self, "_isKTRegistrationData:forServiceIndex:inTrustedDevices:", v14, v6, devicesCopy))
      {
        v5 = 1;
        [v14 setUploadedToKVS:1];
      }
    }

    else
    {
      v12 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = v15;
        v17 = v6;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No config for keyIndex. { keyIndex: %u }", buf, 8u);
      }
    }

    ++v6;
  }

  while (v6 != 4);
  if (v5)
  {
    [(IDSKTRegistrationDataManager *)self serializeAndPersistKTDatasDeleteIfNull:1];
  }
}

- (void)scheduleNextKVSSync
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10092E7F8();
  }
}

- (BOOL)_isKTRegistrationData:(id)data forServiceIndex:(unsigned __int16)index inTrustedDevices:(id)devices
{
  indexCopy = index;
  dataCopy = data;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  devicesCopy = devices;
  v32 = [devicesCopy countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v9 = *v42;
    v34 = devicesCopy;
    v31 = *v42;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v33 = v10;
        trustedServices = [*(*(&v41 + 1) + 8 * v10) trustedServices];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v12 = trustedServices;
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v38;
          v35 = *v38;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v37 + 1) + 8 * i);
              keyIndex = [v17 keyIndex];
              if (keyIndex == sub_1005F0F88(indexCopy))
              {
                ktLoggableData = [v17 ktLoggableData];
                deviceSignature = [v17 deviceSignature];
                v21 = deviceSignature;
                if (ktLoggableData)
                {
                  v22 = deviceSignature == 0;
                }

                else
                {
                  v22 = 1;
                }

                if (!v22)
                {
                  data = [ktLoggableData data];
                  ktDataForRegistration = [dataCopy ktDataForRegistration];
                  if ([data isEqualToData:ktDataForRegistration])
                  {
                    [dataCopy ktDataSignature];
                    v25 = v12;
                    v26 = indexCopy;
                    v28 = v27 = dataCopy;
                    v36 = [v21 isEqualToData:v28];

                    dataCopy = v27;
                    indexCopy = v26;
                    v12 = v25;
                    v15 = v35;

                    if (v36)
                    {

                      v29 = 1;
                      devicesCopy = v34;
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                  }
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v14);
        }

        v10 = v33 + 1;
        devicesCopy = v34;
        v9 = v31;
      }

      while ((v33 + 1) != v32);
      v29 = 0;
      v32 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  else
  {
    v29 = 0;
  }

LABEL_27:

  return v29;
}

- (void)logIDSKTRegMetrics:(id)metrics expectedRegisteredData:(id)data forKeyIndex:(unsigned __int16)index
{
  metricsCopy = metrics;
  dataCopy = data;
  ktDataForRegistration = [metricsCopy ktDataForRegistration];

  if (!ktDataForRegistration)
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412546;
      v39 = @"kt-reg-data-status";
      v40 = 2112;
      v41 = &off_100C3D2E8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Logging KT Metric {metricName: %@, errorCode: %@}", &v38, 0x16u);
    }

    v14 = +[TransparencyAnalytics logger];
    v16 = -3001;
    goto LABEL_12;
  }

  ktDataForRegistration2 = [metricsCopy ktDataForRegistration];
  ktDataForRegistration3 = [dataCopy ktDataForRegistration];
  v11 = [ktDataForRegistration2 isEqualToData:ktDataForRegistration3];

  v12 = +[IDSFoundationLog KeyTransparency];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((v11 & 1) == 0)
  {
    if (v13)
    {
      v38 = 138412546;
      v39 = @"kt-reg-data-status";
      v40 = 2112;
      v41 = &off_100C3D300;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Logging KT Metric {metricName: %@, errorCode: %@}", &v38, 0x16u);
    }

    v14 = +[TransparencyAnalytics logger];
    v16 = -3002;
LABEL_12:
    v17 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:v16 userInfo:0];
    [v14 logResultForEvent:@"kt-reg-data-status" hardFailure:1 result:v17];

    goto LABEL_13;
  }

  if (v13)
  {
    v38 = 138412290;
    v39 = @"kt-reg-data-status";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Logging KT Metric Success {metricName: %@}", &v38, 0xCu);
  }

  v14 = +[TransparencyAnalytics logger];
  [v14 logSuccessForEventNamed:@"kt-reg-data-status"];
LABEL_13:

  ktPublicAccountKey = [metricsCopy ktPublicAccountKey];

  if (!ktPublicAccountKey)
  {
    v25 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412546;
      v39 = @"kt-reg-publicAccountKey-status";
      v40 = 2112;
      v41 = &off_100C3D318;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Logging KT Metric {metricName: %@, errorCode: %@}", &v38, 0x16u);
    }

    v24 = +[TransparencyAnalytics logger];
    v26 = -3003;
    goto LABEL_24;
  }

  ktPublicAccountKey2 = [metricsCopy ktPublicAccountKey];
  ktPublicAccountKey3 = [dataCopy ktPublicAccountKey];
  v21 = [ktPublicAccountKey2 isEqualToData:ktPublicAccountKey3];

  v22 = +[IDSFoundationLog KeyTransparency];
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if ((v21 & 1) == 0)
  {
    if (v23)
    {
      v38 = 138412546;
      v39 = @"kt-reg-publicAccountKey-status";
      v40 = 2112;
      v41 = &off_100C3D330;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Logging KT Metric {metricName: %@, errorCode: %@}", &v38, 0x16u);
    }

    v24 = +[TransparencyAnalytics logger];
    v26 = -3004;
LABEL_24:
    v27 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:v26 userInfo:0];
    [v24 logResultForEvent:@"kt-reg-publicAccountKey-status" hardFailure:1 result:v27];

    goto LABEL_25;
  }

  if (v23)
  {
    v38 = 138412290;
    v39 = @"kt-reg-publicAccountKey-status";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Logging KT Metric Success {metricName: %@}", &v38, 0xCu);
  }

  v24 = +[TransparencyAnalytics logger];
  [v24 logSuccessForEventNamed:@"kt-reg-publicAccountKey-status"];
LABEL_25:

  ktDataSignature = [metricsCopy ktDataSignature];

  if (!ktDataSignature)
  {
    v35 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412546;
      v39 = @"kt-reg-dataSignature-status";
      v40 = 2112;
      v41 = &off_100C3D348;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Logging KT Metric {metricName: %@, errorCode: %@}", &v38, 0x16u);
    }

    v34 = +[TransparencyAnalytics logger];
    v36 = -3005;
    goto LABEL_36;
  }

  ktDataSignature2 = [metricsCopy ktDataSignature];
  ktDataSignature3 = [dataCopy ktDataSignature];
  v31 = [ktDataSignature2 isEqualToData:ktDataSignature3];

  v32 = +[IDSFoundationLog KeyTransparency];
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if ((v31 & 1) == 0)
  {
    if (v33)
    {
      v38 = 138412546;
      v39 = @"kt-reg-dataSignature-status";
      v40 = 2112;
      v41 = &off_100C3D360;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Logging KT Metric {metricName: %@, errorCode: %@}", &v38, 0x16u);
    }

    v34 = +[TransparencyAnalytics logger];
    v36 = -3006;
LABEL_36:
    v37 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:v36 userInfo:0];
    [v34 logResultForEvent:@"kt-reg-dataSignature-status" hardFailure:1 result:v37];

    goto LABEL_37;
  }

  if (v33)
  {
    v38 = 138412290;
    v39 = @"kt-reg-dataSignature-status";
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Logging KT Metric Success {metricName: %@}", &v38, 0xCu);
  }

  v34 = +[TransparencyAnalytics logger];
  [v34 logSuccessForEventNamed:@"kt-reg-dataSignature-status"];
LABEL_37:
}

- (void)logKTRegistrationTimeMetricsForLatestRegisteredKTData:(id)data lastRegisteredKTData:(id)tData forKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  dataCopy = data;
  tDataCopy = tData;
  ktPublicAccountKey = [dataCopy ktPublicAccountKey];
  if (ktPublicAccountKey)
  {
    ktDataSignature = [dataCopy ktDataSignature];
    v12 = ktDataSignature;
    v141 = ktDataSignature != 0;
    if (tDataCopy && ktDataSignature)
    {
      ktPublicAccountKey2 = [tDataCopy ktPublicAccountKey];
      if (ktPublicAccountKey2)
      {
        ktDataSignature2 = [tDataCopy ktDataSignature];
        v141 = ktDataSignature2 == 0;
      }

      else
      {
        v141 = 1;
      }
    }
  }

  else
  {
    v141 = 0;
  }

  ktPublicAccountKey3 = [dataCopy ktPublicAccountKey];
  if (ktPublicAccountKey3)
  {
    ktDataSignature3 = [dataCopy ktDataSignature];
    if (ktDataSignature3)
    {
      ktPublicAccountKey4 = [tDataCopy ktPublicAccountKey];
      if (ktPublicAccountKey4)
      {
        ktDataSignature4 = [tDataCopy ktDataSignature];
        v19 = ktDataSignature4 != 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  ktPublicAccountKey5 = [dataCopy ktPublicAccountKey];
  if (ktPublicAccountKey5)
  {
    ktDataSignature5 = [dataCopy ktDataSignature];
    v22 = ktDataSignature5 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = +[IDSFoundationLog KeyTransparency];
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (tDataCopy != 0 && v22 || v19)
  {
    if (v24)
    {
      *buf = 0;
      v25 = "Not reporting KT time metrics.";
LABEL_131:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      goto LABEL_132;
    }

    goto LABEL_132;
  }

  if (v24)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Reporting KT time metrics.", buf, 2u);
  }

  v140 = v22;
  if (!self->_iCloudSignInDate)
  {
    v31 = 0;
    v29 = 0;
    v30 = 1;
    v28 = 1;
    goto LABEL_39;
  }

  buddyFinishDate = self->_buddyFinishDate;
  if (buddyFinishDate)
  {
    [(NSDate *)buddyFinishDate timeIntervalSinceDate:?];
    v28 = v27 < 0.0;
    if (!self->_iCloudSignInDate)
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_34;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 0;
  v29 = self->_manateeAvailableDate != 0;
LABEL_34:
  if (v22)
  {
    if (v30)
    {
      v31 = 0;
      v30 = 1;
    }

    else
    {
      registeredTime = [dataCopy registeredTime];
      v31 = registeredTime != 0;

      v30 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_39:
  if (v141 && self->_iCloudSignInDate)
  {
    registeredTime2 = [dataCopy registeredTime];
    v135 = registeredTime2 != 0;
  }

  else
  {
    v135 = 0;
  }

  manateeAvailableDate = self->_manateeAvailableDate;
  if (manateeAvailableDate)
  {
    v35 = !v140;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    v136 = 0;
  }

  else
  {
    registeredTime3 = [dataCopy registeredTime];
    v136 = registeredTime3 != 0;
  }

  if (v141 && self->_manateeAvailableDate)
  {
    registeredTime4 = [dataCopy registeredTime];
    v137 = registeredTime4 != 0;
  }

  else
  {
    v137 = 0;
  }

  v38 = !v140;
  if (tDataCopy)
  {
    v38 = 1;
  }

  if (v38)
  {
    v138 = 1;
  }

  else
  {
    registeredTime5 = [dataCopy registeredTime];
    v138 = registeredTime5 == 0;
  }

  if (v141)
  {
    registeredTime6 = [dataCopy registeredTime];
    v139 = registeredTime6 == 0;
  }

  else
  {
    v139 = 1;
  }

  if (((v30 | v28) & 1) == 0 && !self->_hasReportediCloudBuddyTime)
  {
    v134 = v31;
    v41 = self->_buddyFinishDate;
    if (v41)
    {
      [(NSDate *)v41 timeIntervalSinceDate:self->_iCloudSignInDate];
      v43 = v42;
      v44 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", indexCopy];
        *buf = 138412546;
        v143 = indexCopy;
        v144 = 2048;
        v145 = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f}", buf, 0x16u);
      }

      v46 = +[TransparencyAnalytics logger];
      indexCopy4 = [NSNumber numberWithDouble:v43];
      indexCopy2 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", indexCopy];
      [v46 logMetric:indexCopy4 withName:indexCopy2];
    }

    else
    {
      v49 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy3 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", indexCopy];
        *buf = 138412290;
        v143 = indexCopy3;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v46 = +[TransparencyAnalytics logger];
      indexCopy4 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", indexCopy];
      [v46 logSuccessForEventNamed:indexCopy4];
    }

    self->_hasReportediCloudBuddyTime = 1;
    v31 = v134;
  }

  if (v29 && !self->_hasReportediCloudManateeTime)
  {
    v51 = v31;
    [(NSDate *)self->_manateeAvailableDate timeIntervalSinceDate:self->_iCloudSignInDate];
    v53 = v52;
    v54 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      indexCopy5 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudManateeTime", indexCopy];
      *buf = 138412546;
      v143 = indexCopy5;
      v144 = 2048;
      v145 = v53;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v56 = +[TransparencyAnalytics logger];
    v57 = [NSNumber numberWithDouble:v53];
    indexCopy6 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudManateeTime", indexCopy];
    [v56 logMetric:v57 withName:indexCopy6];

    self->_hasReportediCloudManateeTime = 1;
    v31 = v51;
  }

  if (v31)
  {
    registeredTime7 = [dataCopy registeredTime];
    [registeredTime7 timeIntervalSinceDate:self->_iCloudSignInDate];
    v61 = v60;

    v62 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      indexCopy7 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSNoKTRegTime", indexCopy];
      *buf = 138412546;
      v143 = indexCopy7;
      v144 = 2048;
      v145 = v61;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v64 = +[TransparencyAnalytics logger];
    v65 = [NSNumber numberWithDouble:v61];
    indexCopy8 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSNoKTRegTime", indexCopy];
    [v64 logMetric:v65 withName:indexCopy8];
  }

  if (v135)
  {
    registeredTime8 = [dataCopy registeredTime];
    [registeredTime8 timeIntervalSinceDate:self->_iCloudSignInDate];
    v69 = v68;

    v70 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      indexCopy9 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSKTRegTime", indexCopy];
      *buf = 138412546;
      v143 = indexCopy9;
      v144 = 2048;
      v145 = v69;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v72 = +[TransparencyAnalytics logger];
    v73 = [NSNumber numberWithDouble:v69];
    indexCopy10 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSKTRegTime", indexCopy];
    [v72 logMetric:v73 withName:indexCopy10];
  }

  if (manateeAvailableDate != 0 && !v28 && !self->_hasReportedManateeBuddyTime)
  {
    v75 = self->_buddyFinishDate;
    if (v75)
    {
      [(NSDate *)v75 timeIntervalSinceDate:self->_manateeAvailableDate];
      v77 = v76;
      v78 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy11 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", indexCopy];
        *buf = 138412546;
        v143 = indexCopy11;
        v144 = 2048;
        v145 = v77;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
      }

      v80 = +[TransparencyAnalytics logger];
      indexCopy14 = [NSNumber numberWithDouble:v77];
      indexCopy12 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", indexCopy];
      [v80 logMetric:indexCopy14 withName:indexCopy12];
    }

    else
    {
      v83 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy13 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", indexCopy];
        *buf = 138412290;
        v143 = indexCopy13;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v80 = +[TransparencyAnalytics logger];
      indexCopy14 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", indexCopy];
      [v80 logSuccessForEventNamed:indexCopy14];
    }

    self->_hasReportedManateeBuddyTime = 1;
  }

  if (v136)
  {
    registeredTime9 = [dataCopy registeredTime];
    [registeredTime9 timeIntervalSinceDate:self->_manateeAvailableDate];
    v87 = v86;

    v88 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      indexCopy15 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSNoKTRegTime", indexCopy];
      *buf = 138412546;
      v143 = indexCopy15;
      v144 = 2048;
      v145 = v87;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v90 = +[TransparencyAnalytics logger];
    v91 = [NSNumber numberWithDouble:v87];
    indexCopy16 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSNoKTRegTime", indexCopy];
    [v90 logMetric:v91 withName:indexCopy16];
  }

  if (v137)
  {
    registeredTime10 = [dataCopy registeredTime];
    [registeredTime10 timeIntervalSinceDate:self->_manateeAvailableDate];
    v95 = v94;

    v96 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      indexCopy17 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSKTRegTime", indexCopy];
      *buf = 138412546;
      v143 = indexCopy17;
      v144 = 2048;
      v145 = v95;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v98 = +[TransparencyAnalytics logger];
    v99 = [NSNumber numberWithDouble:v95];
    indexCopy18 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSKTRegTime", indexCopy];
    [v98 logMetric:v99 withName:indexCopy18];
  }

  if (!v138 && !v28)
  {
    if (self->_buddyFinishDate)
    {
      registeredTime11 = [dataCopy registeredTime];
      [registeredTime11 timeIntervalSinceDate:self->_buddyFinishDate];
      v103 = v102;

      v104 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy19 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", indexCopy];
        *buf = 138412546;
        v143 = indexCopy19;
        v144 = 2048;
        v145 = v103;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
      }

      v106 = +[TransparencyAnalytics logger];
      indexCopy22 = [NSNumber numberWithDouble:v103];
      indexCopy20 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", indexCopy];
      [v106 logMetric:indexCopy22 withName:indexCopy20];
    }

    else
    {
      v109 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy21 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", indexCopy];
        *buf = 138412290;
        v143 = indexCopy21;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v106 = +[TransparencyAnalytics logger];
      indexCopy22 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", indexCopy];
      [v106 logSuccessForEventNamed:indexCopy22];
    }
  }

  if (!v139 && !v28)
  {
    if (self->_buddyFinishDate)
    {
      registeredTime12 = [dataCopy registeredTime];
      [registeredTime12 timeIntervalSinceDate:self->_buddyFinishDate];
      v113 = v112;

      v114 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy23 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", indexCopy];
        *buf = 138412546;
        v143 = indexCopy23;
        v144 = 2048;
        v145 = v113;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
      }

      v116 = +[TransparencyAnalytics logger];
      indexCopy26 = [NSNumber numberWithDouble:v113];
      indexCopy24 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", indexCopy];
      [v116 logMetric:indexCopy26 withName:indexCopy24];
    }

    else
    {
      v119 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        indexCopy25 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", indexCopy];
        *buf = 138412290;
        v143 = indexCopy25;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v116 = +[TransparencyAnalytics logger];
      indexCopy26 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", indexCopy];
      [v116 logSuccessForEventNamed:indexCopy26];
    }
  }

  if (v141)
  {
    registeredTime13 = [tDataCopy registeredTime];
    if (registeredTime13)
    {
      registeredTime14 = [dataCopy registeredTime];
      registeredTime15 = [tDataCopy registeredTime];
      [registeredTime14 timeIntervalSinceDate:registeredTime15];
      v125 = v124;
    }

    else
    {
      v125 = 0.0;
    }

    v126 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      indexCopy27 = [NSString stringWithFormat:@"%@-%u", @"IDS_IDSNoKTRegIDSKTRegTime", indexCopy];
      *buf = 138412546;
      v143 = indexCopy27;
      v144 = 2048;
      v145 = v125;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v128 = +[TransparencyAnalytics logger];
    v129 = [NSNumber numberWithDouble:v125];
    indexCopy28 = [NSString stringWithFormat:@"%@-%u", @"IDS_IDSNoKTRegIDSKTRegTime", indexCopy];
    [v128 logMetric:v129 withName:indexCopy28];
  }

  if (!v140)
  {
    iCloudSignInDate = self->_iCloudSignInDate;
    self->_iCloudSignInDate = 0;

    v132 = self->_buddyFinishDate;
    self->_buddyFinishDate = 0;

    v133 = self->_manateeAvailableDate;
    self->_manateeAvailableDate = 0;

    *&self->_hasReportediCloudBuddyTime = 0;
    self->_hasReportedManateeBuddyTime = 0;
  }

  v23 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v25 = "Finished reporting KT time metrics.";
    goto LABEL_131;
  }

LABEL_132:
}

- (void)noteiCloudSignInTime
{
  v3 = +[NSDate now];
  iCloudSignInDate = self->_iCloudSignInDate;
  self->_iCloudSignInDate = v3;

  _objc_release_x1(v3, iCloudSignInDate);
}

- (void)noteBuddyFinishTime
{
  v3 = +[NSDate now];
  buddyFinishDate = self->_buddyFinishDate;
  self->_buddyFinishDate = v3;

  _objc_release_x1(v3, buddyFinishDate);
}

- (void)noteManateeAvailableTime
{
  v3 = +[NSDate now];
  manateeAvailableDate = self->_manateeAvailableDate;
  self->_manateeAvailableDate = v3;

  _objc_release_x1(v3, manateeAvailableDate);
}

@end