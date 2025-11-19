@interface IDSKTRegistrationDataManager
- (BOOL)_isKTRegistrationData:(id)a3 forServiceIndex:(unsigned __int16)a4 inTrustedDevices:(id)a5;
- (BOOL)doesSignatureDSID:(id)a3 matchAccountDSID:(id)a4;
- (BOOL)handleTransparencySignatureResponse:(id)a3 error:(id)a4;
- (BOOL)hasUnregisteredKTData;
- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)a3;
- (BOOL)notePublicIdentityDidRegisterKTData:(id)a3 forKeyIndex:(unsigned __int16)a4;
- (BOOL)registrationNeedKTDataUpdated;
- (BOOL)requestGenerationOfUnregisteredKTRegDataWithPublicIdentityData:(id)a3 applicationKeyManager:(id)a4;
- (BOOL)serializeAndPersistKTDatasDeleteIfNull:(BOOL)a3;
- (IDSKTRegistrationDataManager)initWithIdentityDataSource:(id)a3 transparencyDaemon:(id)a4;
- (id)_createKTTrustedDeviceForKVSisRegistered:(BOOL)a3;
- (id)_ktApplicationForKTRegistrationIndex:(unsigned __int16)a3;
- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4 withError:(id *)a5;
- (id)createKTRegistrationDataForServiceTypes:(id)a3 usingPublicIdentityData:(id)a4 withApplicationKeyManager:(id)a5;
- (id)createRegistrationStatusProvider;
- (unsigned)_ktRegistrationDataIndexForKTApplication:(id)a3;
- (void)clearKTDatas;
- (void)fetchKTSignatureDataForServiceTypes:(id)a3 publicIdentityData:(id)a4 registerID:(id)a5 applicationKeyManager:(id)a6 withCompletion:(id)a7;
- (void)loadKTRegistrationDatasWithShouldGenerateKTData:(BOOL *)a3;
- (void)logIDSKTRegMetrics:(id)a3 expectedRegisteredData:(id)a4 forKeyIndex:(unsigned __int16)a5;
- (void)logKTRegistrationTimeMetricsForLatestRegisteredKTData:(id)a3 lastRegisteredKTData:(id)a4 forKeyIndex:(unsigned __int16)a5;
- (void)noteBuddyFinishTime;
- (void)noteManateeAvailableTime;
- (void)noteSuccessfulKVSSyncOfTrustedDevices:(id)a3;
- (void)noteiCloudSignInTime;
- (void)scheduleNextKVSSync;
- (void)updateKVSWithCurrentKTRegistrationData;
@end

@implementation IDSKTRegistrationDataManager

- (IDSKTRegistrationDataManager)initWithIdentityDataSource:(id)a3 transparencyDaemon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = IDSKTRegistrationDataManager;
  v9 = [(IDSKTRegistrationDataManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityDataSource, a3);
    objc_storeStrong(&v10->_transparencyDaemon, a4);
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
  v4 = [(IDSKTRegistrationDataManager *)self serviceIndexToKTRegDataConfigs];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
        v11 = [v10 unregisteredKTData];

        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
          v13 = [v12 unregisteredKTData];

          v14 = [v13 ktDataForRegistration];
          if (v14)
          {
            v15 = v14;
            v16 = [v13 ktPublicAccountKey];
            if (v16)
            {
              v17 = v16;
              v18 = [v13 ktDataSignature];

              if (v18)
              {
                v20 = +[IDSFoundationLog KeyTransparency];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v28 = v9;
                  v29 = 2112;
                  v30 = v13;
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

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did not find any unregistered KT Data.", buf, 2u);
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
  v4 = [(IDSKTRegistrationDataManager *)self serviceIndexToKTRegDataConfigs];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v24 = v4;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
        v11 = [v10 unregisteredKTData];

        v12 = [(NSMutableDictionary *)self->_serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v9];
        v13 = [v12 registeredKTData];

        if (v11)
        {
          v14 = [v11 ktPublicAccountKey];
          if (v14)
          {
            v15 = v14;
            v16 = [v11 ktDataSignature];

            if (v16)
            {
              if (!v13)
              {
                goto LABEL_19;
              }

              v17 = [v13 ktPublicAccountKey];
              if (!v17)
              {
                goto LABEL_19;
              }

              v18 = v17;
              v19 = [v13 ktPublicAccountKey];
              v20 = [v11 ktPublicAccountKey];
              if (([v19 isEqualToData:v20] & 1) == 0)
              {

                v4 = v24;
LABEL_19:

                v22 = 1;
                goto LABEL_20;
              }

              v21 = [v13 ktDataSignature];

              v4 = v24;
              if (!v21)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4 withError:(id *)a5
{
  v5 = a4;
  v6 = a3;
  v8 = [IDSFoundationLog KeyTransparency:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    v37[0] = 67109378;
    v37[1] = v6;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting copy of KTRegistrationData for keyIndex { keyIndex: %u, isRegistered: %@ }", v37, 0x12u);
  }

  serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
  v11 = [NSNumber numberWithUnsignedShort:v6];
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

  if (!v5)
  {
    v26 = [v12 unregisteredKTData];

    if (v26)
    {
      v14 = objc_alloc_init(IDSKTRegistrationData);
      v27 = [v12 unregisteredKTData];
      v28 = [v27 ktDataForRegistration];
      v29 = [v28 copy];
      [v14 setKtDataForRegistration:v29];

      v30 = [v12 unregisteredKTData];
      v31 = [v30 ktPublicAccountKey];
      v32 = [v31 copy];
      [v14 setKtPublicAccountKey:v32];

      v33 = [v12 unregisteredKTData];
      v34 = [v33 ktDataSignature];
      v35 = [v34 copy];
      [v14 setKtDataSignature:v35];

      v24 = [v12 unregisteredKTData];
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

  v13 = [v12 registeredKTData];

  if (!v13)
  {
    v25 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10092E410();
    }

    goto LABEL_18;
  }

  v14 = objc_alloc_init(IDSKTRegistrationData);
  v15 = [v12 registeredKTData];
  v16 = [v15 ktDataForRegistration];
  v17 = [v16 copy];
  [v14 setKtDataForRegistration:v17];

  v18 = [v12 registeredKTData];
  v19 = [v18 ktPublicAccountKey];
  v20 = [v19 copy];
  [v14 setKtPublicAccountKey:v20];

  v21 = [v12 registeredKTData];
  v22 = [v21 ktDataSignature];
  v23 = [v22 copy];
  [v14 setKtDataSignature:v23];

  v24 = [v12 registeredKTData];
LABEL_13:
  v25 = v24;
  [v14 setUploadedToKVS:{-[NSObject uploadedToKVS](v24, "uploadedToKVS")}];
LABEL_19:

  return v14;
}

- (void)loadKTRegistrationDatasWithShouldGenerateKTData:(BOOL *)a3
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to load KT Registration Data from keychain.", buf, 2u);
  }

  v5 = 0;
  v32 = 0;
  v33 = self;
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
    self = v33;
    serviceIndexToKTRegDataConfigs = v33->_serviceIndexToKTRegDataConfigs;
    v30 = [NSNumber numberWithUnsignedShort:v5];
    [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs setObject:v6 forKeyedSubscript:v30];

    ++v5;
  }

  while (v5 != 4);
  if (a3)
  {
    *a3 = v32 & 1;
  }
}

- (BOOL)serializeAndPersistKTDatasDeleteIfNull:(BOOL)a3
{
  v4 = a3;
  v6 = 0;
  *&v3 = 67109120;
  v32 = v3;
  do
  {
    serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
    v8 = [NSNumber numberWithUnsignedShort:v6, v32];
    v9 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v8];

    v10 = [v9 registeredKTData];

    if (v10)
    {
      v11 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v9 registeredKTData];
        *buf = 67109378;
        v40 = v6;
        v41 = 2112;
        v42 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving registered KT Data for service key { keyIndex: %u, registeredKTData: %@ }", buf, 0x12u);
      }

      v13 = [v9 registeredKTData];
      v38 = 0;
      v14 = [v13 dataRepresentationWithError:&v38];
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
      v17 = [v9 registeredKTData];

      if (v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = !v4;
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

    v21 = [v9 unregisteredKTData];

    if (v21)
    {
      v22 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 unregisteredKTData];
        *buf = 67109378;
        v40 = v6;
        v41 = 2112;
        v42 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Saving unregistered KT Data for service key { keyIndex: %u, unregisteredKTData: %@ }", buf, 0x12u);
      }

      v24 = [v9 unregisteredKTData];
      v35 = 0;
      v25 = [v24 dataRepresentationWithError:&v35];
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
      v28 = [v9 unregisteredKTData];

      if (!v28 && v4)
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

- (BOOL)notePublicIdentityDidRegisterKTData:(id)a3 forKeyIndex:(unsigned __int16)a4
{
  v5 = a4;
  v7 = a3;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ktDataForRegistration];
    v10 = [v7 ktPublicAccountKey];
    v4 = [v7 ktDataSignature];
    *buf = 67109890;
    v76 = v5;
    v77 = 2112;
    v78 = v9;
    v79 = 2112;
    v80 = v10;
    v81 = 2112;
    v82 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KT registration manager noting registration of data { keyIndex: %u, ktDataForRegistration: %@, ktPublicAccountKey: %@, ktDataSignature: %@ }", buf, 0x26u);
  }

  serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
  v12 = [NSNumber numberWithUnsignedShort:v5];
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

  v14 = [v13 unregisteredKTData];
  if (!v14)
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10092E514();
    }

    v14 = [v13 registeredKTData];
    if (!v14)
    {
      v16 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10092E584();
      }

      goto LABEL_48;
    }
  }

  v16 = v14;
  v17 = [v14 registeredTime];

  if (!v17)
  {
    v18 = +[NSDate now];
    [v16 setRegisteredTime:v18];
  }

  if (v5 == 1)
  {
    [(IDSKTRegistrationDataManager *)self logIDSKTRegMetrics:v7 expectedRegisteredData:v16 forKeyIndex:1];
  }

  v73 = self;
  v19 = [v16 ktDataForRegistration];
  if (v19 || ([v7 ktDataForRegistration], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [v16 ktDataForRegistration];
    v21 = [v7 ktDataForRegistration];
    v22 = [v20 isEqualToData:v21];

    if (v19)
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
    v4 = [v7 ktDataForRegistration];
    *buf = 67109378;
    v76 = v5;
    v77 = 2112;
    v78 = v4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Expected KT Data for registration matches what was registered for keyIndex. { keyIndex: %u, expectedKTData: %@ }", buf, 0x12u);
  }

  v24 = [v16 ktPublicAccountKey];
  if (v24 || ([v7 ktPublicAccountKey], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v25 = [v16 ktPublicAccountKey];
    v26 = [v7 ktPublicAccountKey];
    v27 = [v25 isEqualToData:v26];

    if (v24)
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
    v4 = [v16 ktPublicAccountKey];
    *buf = 67109378;
    v76 = v5;
    v77 = 2112;
    v78 = v4;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Expected KT public account key for registrations matches what we registered for keyIndex. { keyIndex: %u, expectedKTPublicAccountKey: %@ }", buf, 0x12u);
  }

  v29 = [v16 ktDataSignature];
  if (v29 || ([v7 ktDataSignature], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = [v16 ktDataSignature];
    v31 = [v7 ktDataSignature];
    v32 = [v30 isEqualToData:v31];

    if (v29)
    {

      if (v32)
      {
        goto LABEL_34;
      }

LABEL_45:
      v48 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v74 = [v16 ktDataForRegistration];
        v51 = [v16 ktPublicAccountKey];
        v52 = [v16 ktDataSignature];
        v53 = [v7 ktDataForRegistration];
        v54 = [v7 ktPublicAccountKey];
        v55 = [v7 ktDataSignature];
        *buf = 67110658;
        v76 = v5;
        v77 = 2112;
        v78 = v74;
        v79 = 2112;
        v80 = v51;
        v81 = 2112;
        v82 = v52;
        v83 = 2112;
        v84 = v53;
        v85 = 2112;
        v86 = v54;
        v87 = 2112;
        v88 = v55;
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
    v34 = [v16 ktDataSignature];
    *buf = 67109378;
    v76 = v5;
    v77 = 2112;
    v78 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Expected KT Data Signature for registrations matches what we registered for keyIndex. { keyIndex: %u, expectedKTDataSignature: %@ }", buf, 0x12u);
  }

  v35 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v16 ktDataForRegistration];
    v37 = [v16 ktPublicAccountKey];
    v38 = [v16 ktDataSignature];
    *buf = 67109890;
    v76 = v5;
    v77 = 2112;
    v78 = v36;
    v79 = 2112;
    v80 = v37;
    v81 = 2112;
    v82 = v38;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Completed registration of previously unregistered KT Data for key index { keyIndex: %u, ktDataForRegistration: %@, ktPublicAccountKey: %@, ktDataSignature: %@ }", buf, 0x26u);
  }

  v39 = [v13 registeredKTData];
  if (v39)
  {
    v40 = [v13 registeredKTData];
    v41 = [v40 ktDataForRegistration];
    if (v41)
    {
      v42 = [v13 registeredKTData];
      v43 = [v42 ktDataSignature];
      if (v43)
      {
        v44 = [v13 registeredKTData];
        v45 = [v44 ktPublicAccountKey];
        v71 = v42;
        v46 = v45 != 0;

        v47 = v46;
        v42 = v71;
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

  v56 = [v13 unregisteredKTData];
  if (v56)
  {
    v57 = v56;
    v58 = [v13 unregisteredKTData];
    v59 = [v58 ktDataForRegistration];
    if (v59)
    {
      v72 = [v13 unregisteredKTData];
      v60 = [v72 ktDataSignature];
      if (v60)
      {
        [v13 unregisteredKTData];
        v61 = v70 = v47;
        v62 = [v61 ktPublicAccountKey];
        v63 = v62 != 0;

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
      v65 = v73;
LABEL_73:
      v68 = +[TransparencyAnalytics logger];
      [v68 logMetric:v67 withName:@"kt-reg-state-change"];

      goto LABEL_74;
    }

    v65 = v73;
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
    v65 = v73;
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
  if (v5 == 1)
  {
    v69 = [v13 registeredKTData];
    [(IDSKTRegistrationDataManager *)v65 logKTRegistrationTimeMetricsForLatestRegisteredKTData:v16 lastRegisteredKTData:v69 forKeyIndex:1];
  }

  [v13 setRegisteredKTData:v16];
  [v13 setUnregisteredKTData:0];
  v49 = 1;
LABEL_49:

  return v49;
}

- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)a3
{
  v3 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if we have unregistered KT Data that is ready to register.", v22, 2u);
  }

  serviceIndexToKTRegDataConfigs = self->_serviceIndexToKTRegDataConfigs;
  v7 = [NSNumber numberWithUnsignedShort:v3];
  v8 = [(NSMutableDictionary *)serviceIndexToKTRegDataConfigs objectForKeyedSubscript:v7];

  v9 = [v8 unregisteredKTData];

  if (v9)
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 unregisteredKTData];
      v22[0] = 67109378;
      v22[1] = v3;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found key index has unregistered KT Data { keyIndex: %u, unregisteredKTData: %@ }", v22, 0x12u);
    }

    v12 = [v8 unregisteredKTData];
    v13 = [v12 ktDataForRegistration];
    if (v13)
    {
      v14 = v13;
      v15 = [v8 unregisteredKTData];
      v16 = [v15 ktPublicAccountKey];
      if (v16)
      {
        v17 = v16;
        v18 = [v8 unregisteredKTData];
        v19 = [v18 ktDataSignature];

        if (v19)
        {
          v20 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v22[0]) = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unregistered KT Data has necessary fields to register.", v22, 2u);
          }

          LOBYTE(v9) = 1;
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

        LOBYTE(v9) = 0;
        goto LABEL_17;
      }
    }

    goto LABEL_14;
  }

LABEL_18:

  return v9;
}

- (id)createKTRegistrationDataForServiceTypes:(id)a3 usingPublicIdentityData:(id)a4 withApplicationKeyManager:(id)a5
{
  v75 = a3;
  v70 = a4;
  v8 = a5;
  v9 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v94 = v70;
    *&v94[8] = 2112;
    *&v94[10] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating KT Registration Data objects without async enrollment. {publicIdentity: %@, applicationKeyManager: %@}", buf, 0x16u);
  }

  v10 = objc_alloc_init(NSMutableSet);
  theDict = objc_alloc_init(NSMutableDictionary);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [v75 allKeys];
  v11 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v90;
    *&v12 = 138412290;
    v65 = v12;
    v15 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
    v78 = v8;
    v68 = v10;
    v69 = self;
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
        v17 = [v75 objectForKeyedSubscript:v65];
        v18 = [(IDSKTRegistrationDataManager *)self serviceController];
        v76 = v17;
        v19 = [v17 serviceIdentifier];
        v20 = [v18 serviceWithIdentifier:v19];

        v21 = v20;
        if ([v20 adHocServiceType])
        {
          v22 = [(IDSKTRegistrationDataManager *)self serviceController];
          v21 = [v22 primaryServiceForAdhocServiceType:{objc_msgSend(v20, "adHocServiceType")}];
        }

        if ([v10 containsObject:key])
        {
          v23 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v21 identifier];
            *buf = v65;
            *v94 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Top level service already has relevant KT Data setup. { service: %@ }", buf, 0xCu);
          }

          goto LABEL_41;
        }

        v74 = v16;
        v25 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
        v26 = v21;
        v27 = [v70 publicNGMIdentityData];
        [(IDSProtoKeyTransparencyLoggableData *)v25 setNgmPublicIdentity:v27];

        v28 = [v70 NGMVersion];
        -[IDSProtoKeyTransparencyLoggableData setNgmVersion:](v25, "setNgmVersion:", [v28 unsignedIntValue]);

        v29 = _IDSKeyTransparencyVersionNumber();
        v79 = v25;
        -[IDSProtoKeyTransparencyLoggableData setKtVersion:](v25, "setKtVersion:", [v29 unsignedIntValue]);

        v30 = objc_alloc_init(NSMutableSet);
        v31 = self;
        v32 = v30;
        v33 = [(IDSKTRegistrationDataManager *)v31 serviceController];
        v34 = [v21 identifier];
        v35 = [v33 adHocServicesForIdentifier:v34];
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
                v45 = [v42 applicationKeyIndex];
                v84 = 0;
                v46 = [v8 copyPublicIdentityDataToRegisterForKeyIndex:v45 withError:&v84];
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
                      v53 = [v42 applicationKeyIndex];
                      v54 = [v42 identifier];
                      *buf = 67109378;
                      *v94 = v53;
                      v8 = v78;
                      *&v94[4] = 2112;
                      *&v94[6] = v54;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Adding application key %u to kt-loggable-data for service: %@", buf, 0x12u);
                    }

                    v52 = objc_alloc_init(IDSProtoApplicationKeyEntry);
                    -[NSObject setKeyIndex:](v52, "setKeyIndex:", sub_1005F0F7C([v42 applicationKeyIndex]));
                    [v52 setPublicIdentity:v50];

                    [v79 addApplicationPublicIdentity:v52];
                    v15 = v49;
                    v55 = [v49[476] numberWithUnsignedShort:{objc_msgSend(v42, "applicationKeyIndex")}];
                    v32 = v80;
                    [v80 addObject:v55];
LABEL_25:
                  }

                  else
                  {
                    v15 = v49;
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                    {
                      v59 = [v42 applicationKeyIndex];
                      v60 = error;
                      v55 = [v42 identifier];
                      *buf = 67109634;
                      *v94 = v59;
                      v32 = v80;
                      *&v94[4] = 2112;
                      *&v94[6] = v60;
                      v8 = v78;
                      *&v94[14] = 2112;
                      *&v94[16] = v55;
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
                    v57 = [v42 applicationKeyIndex];
                    v58 = [v42 identifier];
                    *buf = 67109378;
                    *v94 = v57;
                    v32 = v80;
                    *&v94[4] = 2112;
                    *&v94[6] = v58;
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
        v63 = [v79 data];
        [v62 setKtDataForRegistration:v63];

        v10 = v68;
        if (v62)
        {
          CFDictionarySetValue(theDict, key, v62);
        }

        [v68 addObject:key];

        self = v69;
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

- (BOOL)requestGenerationOfUnregisteredKTRegDataWithPublicIdentityData:(id)a3 applicationKeyManager:(id)a4
{
  v76 = a3;
  v6 = a4;
  v7 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating request for KT registration data.", buf, 2u);
  }

  v8 = [(IDSKTRegistrationDataManager *)self serviceController];
  v9 = [v8 allPrimaryServices];

  v10 = objc_alloc_init(NSMutableSet);
  v72 = objc_alloc_init(NSMutableDictionary);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v93;
    v81 = v6;
    v74 = v10;
    v75 = self;
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
            v19 = [v15 identifier];
            *buf = 138412290;
            *v97 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Top level service already has relevant KT Data setup. { service: %@ }", buf, 0xCu);
          }
        }

        else
        {
          v80 = v14;
          v20 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
          v21 = [v76 publicNGMIdentityData];
          [(IDSProtoKeyTransparencyLoggableData *)v20 setNgmPublicIdentity:v21];

          v22 = [v76 NGMVersion];
          -[IDSProtoKeyTransparencyLoggableData setNgmVersion:](v20, "setNgmVersion:", [v22 unsignedIntValue]);

          v23 = _IDSKeyTransparencyVersionNumber();
          v82 = v20;
          -[IDSProtoKeyTransparencyLoggableData setKtVersion:](v20, "setKtVersion:", [v23 unsignedIntValue]);

          v24 = objc_alloc_init(NSMutableSet);
          v25 = [(IDSKTRegistrationDataManager *)self serviceController];
          v26 = [v15 identifier];
          v27 = [v25 adHocServicesForIdentifier:v26];
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
                    v37 = [v34 applicationKeyIndex];
                    v87 = 0;
                    v38 = [v6 copyPublicIdentityDataToRegisterForKeyIndex:v37 withError:&v87];
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
                          v43 = [v34 applicationKeyIndex];
                          v44 = [v34 identifier];
                          *buf = 67109378;
                          *v97 = v43;
                          v6 = v81;
                          *&v97[4] = 2112;
                          *&v97[6] = v44;
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
                          v49 = [v34 applicationKeyIndex];
                          v50 = error;
                          v51 = [v34 identifier];
                          *buf = 67109634;
                          *v97 = v49;
                          *&v97[4] = 2112;
                          *&v97[6] = v50;
                          v6 = v81;
                          v98 = 2112;
                          v99 = v51;
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
                        v47 = [v34 applicationKeyIndex];
                        v48 = [v34 identifier];
                        *buf = 67109378;
                        *v97 = v47;
                        v24 = v83;
                        *&v97[4] = 2112;
                        *&v97[6] = v48;
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
          v53 = [v82 data];
          [v52 setKtDataForRegistration:v53];

          self = v75;
          v54 = -[IDSKTRegistrationDataManager _ktApplicationForKTRegistrationIndex:](v75, "_ktApplicationForKTRegistrationIndex:", [v79 ktRegistrationDataIndex]);
          if (v54 && ([v52 ktDataForRegistration], v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
          {
            v56 = [TransparencyIDSRegistrationRequestData alloc];
            v57 = [v52 ktDataForRegistration];
            v58 = [v56 initWithApplication:v54 registrationData:v57];

            v59 = +[IDSPushHandler sharedInstance];
            v60 = [v59 pushToken];
            [v58 setPushToken:v60];

            v6 = v81;
            [v72 setObject:v58 forKeyedSubscript:v54];
            v10 = v74;
          }

          else
          {
            v58 = +[IDSFoundationLog KeyTransparency];
            v10 = v74;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v65 = [v79 ktRegistrationDataIndex];
              v66 = [v52 ktDataForRegistration];
              *buf = 67109378;
              *v97 = v65;
              *&v97[4] = 2112;
              *&v97[6] = v66;
              _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "No KT Application found for key index or registration data is null. { keyIndex: %u, ktRegistrationData: %@ }", buf, 0x12u);

              v6 = v81;
            }
          }

          serviceIndexToKTRegDataConfigs = v75->_serviceIndexToKTRegDataConfigs;
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

- (void)fetchKTSignatureDataForServiceTypes:(id)a3 publicIdentityData:(id)a4 registerID:(id)a5 applicationKeyManager:(id)a6 withCompletion:(id)a7
{
  v104 = a3;
  v99 = a4;
  v92 = a5;
  v12 = a6;
  v91 = a7;
  v13 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v131 = v99;
    *&v131[8] = 2112;
    *&v131[10] = v12;
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
  obj = [v104 allKeys];
  v15 = [obj countByEnumeratingWithState:&v125 objects:v133 count:16];
  v107 = v12;
  if (v15)
  {
    v16 = v15;
    v17 = *v126;
    v18 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
    v96 = self;
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
        v20 = [v104 objectForKeyedSubscript:?];
        v21 = [(IDSKTRegistrationDataManager *)self serviceController];
        v22 = [v20 serviceIdentifier];
        v23 = [v21 serviceWithIdentifier:v22];

        if ([v23 adHocServiceType])
        {
          v24 = [(IDSKTRegistrationDataManager *)self serviceController];
          v25 = [v24 primaryServiceForAdhocServiceType:{objc_msgSend(v23, "adHocServiceType")}];

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
            v29 = [v106 identifier];
            *buf = 138412290;
            *v131 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Top level service already has relevant KT Data setup. { service: %@ }", buf, 0xCu);
          }
        }

        else
        {
          v102 = v20;
          v103 = v19;
          v30 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
          v31 = [v99 publicNGMIdentityData];
          [(IDSProtoKeyTransparencyLoggableData *)v30 setNgmPublicIdentity:v31];

          v32 = [v99 NGMVersion];
          -[IDSProtoKeyTransparencyLoggableData setNgmVersion:](v30, "setNgmVersion:", [v32 unsignedIntValue]);

          v33 = _IDSKeyTransparencyVersionNumber();
          v108 = v30;
          -[IDSProtoKeyTransparencyLoggableData setKtVersion:](v30, "setKtVersion:", [v33 unsignedIntValue]);

          v34 = objc_alloc_init(NSMutableSet);
          v35 = self;
          v36 = v34;
          v37 = [(IDSKTRegistrationDataManager *)v35 serviceController];
          v38 = [v106 identifier];
          v39 = [v37 adHocServicesForIdentifier:v38];
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
                    v49 = [v46 applicationKeyIndex];
                    v120 = 0;
                    v50 = [v26 copyPublicIdentityDataToRegisterForKeyIndex:v49 withError:&v120];
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
                          v57 = [v46 applicationKeyIndex];
                          v58 = [v46 identifier];
                          *buf = 67109378;
                          *v131 = v57;
                          v26 = v107;
                          *&v131[4] = 2112;
                          *&v131[6] = v58;
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
                          v63 = [v46 applicationKeyIndex];
                          v64 = error;
                          v65 = [v46 identifier];
                          *buf = 67109634;
                          *v131 = v63;
                          v41 = v109;
                          *&v131[4] = 2112;
                          *&v131[6] = v64;
                          v18 = v53;
                          *&v131[14] = 2112;
                          *&v131[16] = v65;
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
                        v61 = [v46 applicationKeyIndex];
                        v62 = [v46 identifier];
                        *buf = 67109378;
                        *v131 = v61;
                        v41 = v109;
                        *&v131[4] = 2112;
                        *&v131[6] = v62;
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
          v68 = [v108 data];
          [v67 setKtDataForRegistration:v68];

          if (v67)
          {
            CFDictionarySetValue(theDict, key, v67);
          }

          v14 = v97;
          [v97 addObject:key];
          self = v96;
          v69 = -[IDSKTRegistrationDataManager _ktApplicationForKTRegistrationIndex:](v96, "_ktApplicationForKTRegistrationIndex:", [v106 ktRegistrationDataIndex]);
          v20 = v102;
          if (v69 && ([v67 ktDataForRegistration], v70 = objc_claimAutoreleasedReturnValue(), v70, v70))
          {
            v71 = [TransparencyIDSRegistrationRequestData alloc];
            v72 = [v67 ktDataForRegistration];
            v73 = [v71 initWithApplication:v69 registrationData:v72];

            v74 = +[IDSPushHandler sharedInstance];
            v75 = [v74 pushToken];
            [v73 setPushToken:v75];

            [v93 setObject:v73 forKeyedSubscript:v69];
          }

          else
          {
            v73 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v80 = [v106 ktRegistrationDataIndex];
              v81 = [v67 ktDataForRegistration];
              *buf = 67109378;
              *v131 = v80;
              *&v131[4] = 2112;
              *&v131[6] = v81;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "No KT Application found for key index or registration data is null. { keyIndex: %u, ktRegistrationData: %@ }", buf, 0x12u);
            }
          }

          serviceIndexToKTRegDataConfigs = v96->_serviceIndexToKTRegDataConfigs;
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

  v84 = [(IDSKTRegistrationDataManager *)self ktVerifier];
  v129 = kKTApplicationIdentifierIDS;
  v85 = [NSArray arrayWithObjects:&v129 count:1];
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_10069E254;
  v112[3] = &unk_100BE4078;
  v113 = theDict;
  v114 = v104;
  v115 = self;
  v116 = v93;
  v117 = v92;
  v118 = v91;
  v86 = v91;
  v87 = v92;
  v88 = v93;
  v89 = v104;
  v90 = theDict;
  [v84 getOptInStatesForKTApplications:v85 withCompletion:v112];
}

- (BOOL)doesSignatureDSID:(id)a3 matchAccountDSID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = 0;
      v15 = 2112;
      v16 = v6;
      v8 = "Missing signature dsid. Falling back and using signature without dsid validation. { signatureDSID: %@, accountDSID: %@ }";
      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v9) = 1;
    goto LABEL_9;
  }

  if ([v5 containsString:@"-"])
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v8 = "Signature DSID appears to be malformed. Falling back and using signature without dsid validation. { signatureDSID: %@, accountDSID: %@ }";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = v5;
  if (([v7 hasPrefix:@"D:"]& 1) == 0)
  {
    v11 = [@"D:" stringByAppendingString:v7];

    v7 = v11;
  }

  v9 = [v6 isEqualToString:v7];
  if (v9)
  {
    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Signature DSID appears to match account dsid. { signatureDSID: %@, accountDSID: %@ }", &v13, 0x16u);
    }
  }

LABEL_9:

  return v9;
}

- (BOOL)handleTransparencySignatureResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling signature response from transparency.", buf, 2u);
  }

  v9 = [(IDSKTRegistrationDataManager *)self accountController];
  v10 = [v9 isiCloudSignedIn];

  v11 = [(IDSKTRegistrationDataManager *)self systemMonitor];
  v12 = [v11 isSetup];

  if (!v6)
  {
    v69 = v12 ^ 1;
    if (((v10 ^ 1) & 1) != 0 || v69)
    {
      v75 = v10 ^ 1 | v12;
      v76 = v10 | v69;
      v77 = -1003;
      if ((v10 | v12))
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
        v80 = v10 | v12;
      }

      if ((v10 ^ 1 | v12))
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

      if (!v7)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v70 = 1;
      v71 = -1002;
      if (!v7)
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
    v133 = v7;
    v68 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    goto LABEL_104;
  }

  v13 = [v6 registrationData];
  if (!v13)
  {
    v72 = v12 ^ 1;
    if (((v10 ^ 1) & 1) != 0 || v72)
    {
      v88 = v10 | v72;
      v89 = -1013;
      if ((v10 | v12))
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
        v92 = v10 | v12;
      }

      if ((v10 ^ 1 | v12))
      {
        v74 = v91;
      }

      else
      {
        v74 = -1011;
      }

      if ((v10 ^ 1 | v12))
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

    if (v7)
    {
      v130 = NSUnderlyingErrorKey;
      v131 = v7;
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
  obj = v13;
  v14 = [v13 countByEnumeratingWithState:&v111 objects:v129 count:16];
  if (!v14)
  {
    v86 = 0;
    v68 = obj;
    goto LABEL_141;
  }

  v15 = v14;
  v99 = v6;
  log = 0;
  v102 = 0;
  v110 = *v112;
  v108 = v7;
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
        if (v7)
        {
          v127 = NSUnderlyingErrorKey;
          v128 = v7;
          v23 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        }

        else
        {
          v23 = 0;
        }

        v25 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2000 userInfo:v23];
        v41 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D270;
          *&v124[18] = 2112;
          *&v124[20] = v25;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v42 = +[TransparencyAnalytics logger];
        [v42 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:v25];

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
          *&v124[26] = v25;
          v125 = 2112;
          v126 = v108;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "No config for key index and KT Application. { keyIndex: %u, KT Application: %@, transparencyResponse: %@, error: %@, underlyingError: %@ }", buf, 0x30u);

          v7 = v108;
        }

        goto LABEL_45;
      }

      v22 = [v21 unregisteredKTData];

      if (!v22)
      {
        if (v7)
        {
          v121 = NSUnderlyingErrorKey;
          v122 = v7;
          v23 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        }

        else
        {
          v23 = 0;
        }

        v25 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2001 userInfo:v23];
        v45 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v124 = @"kt-sig-resp";
          *&v124[8] = 2112;
          *&v124[10] = &off_100C3D288;
          *&v124[18] = 2112;
          *&v124[20] = v25;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Reporting KT metric { metricName: %@, errorCode: %@, error: %@ }", buf, 0x20u);
        }

        v46 = +[TransparencyAnalytics logger];
        [v46 logResultForEvent:@"kt-sig-resp" hardFailure:1 result:v25];

        v43 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *v124 = v18;
          *&v124[4] = 2112;
          *&v124[6] = v17;
          *&v124[14] = 2112;
          *&v124[16] = v25;
          *&v124[24] = 2112;
          *&v124[26] = v7;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "No unregistered KT data for keyIndex. { keyIndex: %u, ktApplication: %@, error: %@, underlyingError: %@ }", buf, 0x26u);
        }

LABEL_45:

        goto LABEL_66;
      }

      v23 = [obj objectForKeyedSubscript:v17];
      if (!v23)
      {
        if (v7)
        {
          v119 = NSUnderlyingErrorKey;
          v120 = v7;
          v25 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        }

        else
        {
          v25 = 0;
        }

        v51 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-2002 userInfo:v25];
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

      v24 = [v21 unregisteredKTData];
      v25 = [v24 ktDataForRegistration];

      if (!v25 || ([v23 tbsKTIDSRegistrationData], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqualToData:", v26), v26, (v27 & 1) == 0))
      {
        if (v7)
        {
          v117 = NSUnderlyingErrorKey;
          v118 = v7;
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
          v105 = [v23 tbsKTIDSRegistrationData];
          *buf = 138413314;
          *v124 = v25;
          *&v124[8] = 2112;
          *&v124[10] = v105;
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
        v7 = v108;
        goto LABEL_66;
      }

      v28 = [v23 signature];
      if (!v28 || (v29 = v28, [v23 publicKey], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, !v30))
      {
        if (v7)
        {
          v115 = NSUnderlyingErrorKey;
          v116 = v7;
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

      v104 = [v21 registeredKTData];
      v31 = [v104 ktDataForRegistration];
      v32 = [v23 tbsKTIDSRegistrationData];
      v103 = v31;
      if (![v31 isEqualToData:v32])
      {

LABEL_69:
        goto LABEL_70;
      }

      v100 = [v21 registeredKTData];
      v33 = [v100 ktPublicAccountKey];
      v34 = [v23 publicKey];
      v101 = [v33 isEqualToData:v34];

      v7 = v108;
      if (v101)
      {
        v35 = [v21 registeredKTData];
        v36 = [v35 ktDataSignature];
        if (v36)
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

        v65 = [v23 signature];

        if (!v65)
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

      v59 = [v23 publicKey];
      v60 = [v21 unregisteredKTData];
      [v60 setKtPublicAccountKey:v59];

      v61 = [v23 signature];
      v62 = [v21 unregisteredKTData];
      [v62 setKtDataSignature:v61];

      v63 = [v23 dsid];
      v64 = [v21 unregisteredKTData];
      [v64 setDsid:v63];

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
    v6 = v99;
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
    v6 = v99;
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

- (id)_ktApplicationForKTRegistrationIndex:(unsigned __int16)a3
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100BE4098 + (a3 - 1));
  }

  return v4;
}

- (unsigned)_ktRegistrationDataIndexForKTApplication:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kKTApplicationIdentifierIDS])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:kKTApplicationIdentifierIDSFaceTime])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:kKTApplicationIdentifierIDSMultiplex])
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
    v6 = [(IDSKTRegistrationDataManager *)self ktVerifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006A0854;
    v8[3] = &unk_100BD9AA8;
    v8[4] = self;
    v9 = v3;
    [v6 updateKVSWithTrustedDevices:v9 withCompletion:v8];
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

- (id)_createKTTrustedDeviceForKVSisRegistered:(BOOL)a3
{
  v3 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  v7 = @"NO";
  if (v6)
  {
    if (v3)
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
    if (v3)
    {
      v7 = @"YES";
    }

    v34 = v7;
  }

  v8 = objc_alloc_init(IDSProtoKeyTransparencyTrustedDevice);
  v9 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v10 = [v9 pushToken];
  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setPushToken:v10];

  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setTransparencyVersion:kTransparencyAnalyticsVersion];
  v11 = +[IMDeviceSupport sharedInstance];
  v12 = [v11 productBuildVersion];
  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setBuildVersion:v12];

  v13 = +[IMDeviceSupport sharedInstance];
  v14 = [v13 productName];
  v35 = v8;
  [(IDSProtoKeyTransparencyTrustedDevice *)v8 setProductName:v14];

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
      if (v3)
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
        v22 = [v20 ktDataForRegistration];
        v23 = [(IDSProtoKeyTransparencyLoggableData *)v21 initWithData:v22];

        if (v23)
        {
          v24 = [v20 ktDataForRegistration];
          if (v24)
          {
            v25 = v24;
            v26 = [v20 ktDataSignature];

            if (v26)
            {
              v27 = objc_alloc_init(IDSProtoKeyTransparencyTrustedService);
              v28 = [v20 ktDataSignature];
              [(IDSProtoKeyTransparencyTrustedService *)v27 setDeviceSignature:v28];

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

- (void)noteSuccessfulKVSSyncOfTrustedDevices:(id)a3
{
  v4 = a3;
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
      v11 = [v10 unregisteredKTData];
      v12 = v11;
      if (v11 && ([v11 uploadedToKVS]& 1) == 0 && [(IDSKTRegistrationDataManager *)self _isKTRegistrationData:v12 forServiceIndex:v6 inTrustedDevices:v4])
      {
        v5 = 1;
        [v12 setUploadedToKVS:1];
      }

      v13 = [v10 registeredKTData];
      v14 = v13;
      if (v13 && ([v13 uploadedToKVS] & 1) == 0 && -[IDSKTRegistrationDataManager _isKTRegistrationData:forServiceIndex:inTrustedDevices:](self, "_isKTRegistrationData:forServiceIndex:inTrustedDevices:", v14, v6, v4))
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

- (BOOL)_isKTRegistrationData:(id)a3 forServiceIndex:(unsigned __int16)a4 inTrustedDevices:(id)a5
{
  v6 = a4;
  v7 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = a5;
  v32 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v9 = *v42;
    v34 = v8;
    v31 = *v42;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v33 = v10;
        v11 = [*(*(&v41 + 1) + 8 * v10) trustedServices];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v12 = v11;
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
              v18 = [v17 keyIndex];
              if (v18 == sub_1005F0F88(v6))
              {
                v19 = [v17 ktLoggableData];
                v20 = [v17 deviceSignature];
                v21 = v20;
                if (v19)
                {
                  v22 = v20 == 0;
                }

                else
                {
                  v22 = 1;
                }

                if (!v22)
                {
                  v23 = [v19 data];
                  v24 = [v7 ktDataForRegistration];
                  if ([v23 isEqualToData:v24])
                  {
                    [v7 ktDataSignature];
                    v25 = v12;
                    v26 = v6;
                    v28 = v27 = v7;
                    v36 = [v21 isEqualToData:v28];

                    v7 = v27;
                    v6 = v26;
                    v12 = v25;
                    v15 = v35;

                    if (v36)
                    {

                      v29 = 1;
                      v8 = v34;
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
        v8 = v34;
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

- (void)logIDSKTRegMetrics:(id)a3 expectedRegisteredData:(id)a4 forKeyIndex:(unsigned __int16)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ktDataForRegistration];

  if (!v8)
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

  v9 = [v6 ktDataForRegistration];
  v10 = [v7 ktDataForRegistration];
  v11 = [v9 isEqualToData:v10];

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

  v18 = [v6 ktPublicAccountKey];

  if (!v18)
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

  v19 = [v6 ktPublicAccountKey];
  v20 = [v7 ktPublicAccountKey];
  v21 = [v19 isEqualToData:v20];

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

  v28 = [v6 ktDataSignature];

  if (!v28)
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

  v29 = [v6 ktDataSignature];
  v30 = [v7 ktDataSignature];
  v31 = [v29 isEqualToData:v30];

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

- (void)logKTRegistrationTimeMetricsForLatestRegisteredKTData:(id)a3 lastRegisteredKTData:(id)a4 forKeyIndex:(unsigned __int16)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 ktPublicAccountKey];
  if (v10)
  {
    v11 = [v8 ktDataSignature];
    v12 = v11;
    v141 = v11 != 0;
    if (v9 && v11)
    {
      v13 = [v9 ktPublicAccountKey];
      if (v13)
      {
        v14 = [v9 ktDataSignature];
        v141 = v14 == 0;
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

  v15 = [v8 ktPublicAccountKey];
  if (v15)
  {
    v16 = [v8 ktDataSignature];
    if (v16)
    {
      v17 = [v9 ktPublicAccountKey];
      if (v17)
      {
        v18 = [v9 ktDataSignature];
        v19 = v18 != 0;
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

  v20 = [v8 ktPublicAccountKey];
  if (v20)
  {
    v21 = [v8 ktDataSignature];
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = +[IDSFoundationLog KeyTransparency];
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v9 != 0 && v22 || v19)
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
      v32 = [v8 registeredTime];
      v31 = v32 != 0;

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
    v33 = [v8 registeredTime];
    v135 = v33 != 0;
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
    v36 = [v8 registeredTime];
    v136 = v36 != 0;
  }

  if (v141 && self->_manateeAvailableDate)
  {
    v37 = [v8 registeredTime];
    v137 = v37 != 0;
  }

  else
  {
    v137 = 0;
  }

  v38 = !v140;
  if (v9)
  {
    v38 = 1;
  }

  if (v38)
  {
    v138 = 1;
  }

  else
  {
    v39 = [v8 registeredTime];
    v138 = v39 == 0;
  }

  if (v141)
  {
    v40 = [v8 registeredTime];
    v139 = v40 == 0;
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
        v45 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", v5];
        *buf = 138412546;
        v143 = v45;
        v144 = 2048;
        v145 = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f}", buf, 0x16u);
      }

      v46 = +[TransparencyAnalytics logger];
      v47 = [NSNumber numberWithDouble:v43];
      v48 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", v5];
      [v46 logMetric:v47 withName:v48];
    }

    else
    {
      v49 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", v5];
        *buf = 138412290;
        v143 = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v46 = +[TransparencyAnalytics logger];
      v47 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudBuddyTime", v5];
      [v46 logSuccessForEventNamed:v47];
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
      v55 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudManateeTime", v5];
      *buf = 138412546;
      v143 = v55;
      v144 = 2048;
      v145 = v53;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v56 = +[TransparencyAnalytics logger];
    v57 = [NSNumber numberWithDouble:v53];
    v58 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudManateeTime", v5];
    [v56 logMetric:v57 withName:v58];

    self->_hasReportediCloudManateeTime = 1;
    v31 = v51;
  }

  if (v31)
  {
    v59 = [v8 registeredTime];
    [v59 timeIntervalSinceDate:self->_iCloudSignInDate];
    v61 = v60;

    v62 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSNoKTRegTime", v5];
      *buf = 138412546;
      v143 = v63;
      v144 = 2048;
      v145 = v61;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v64 = +[TransparencyAnalytics logger];
    v65 = [NSNumber numberWithDouble:v61];
    v66 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSNoKTRegTime", v5];
    [v64 logMetric:v65 withName:v66];
  }

  if (v135)
  {
    v67 = [v8 registeredTime];
    [v67 timeIntervalSinceDate:self->_iCloudSignInDate];
    v69 = v68;

    v70 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSKTRegTime", v5];
      *buf = 138412546;
      v143 = v71;
      v144 = 2048;
      v145 = v69;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v72 = +[TransparencyAnalytics logger];
    v73 = [NSNumber numberWithDouble:v69];
    v74 = [NSString stringWithFormat:@"%@-%u", @"IDS_iCloudIDSKTRegTime", v5];
    [v72 logMetric:v73 withName:v74];
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
        v79 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", v5];
        *buf = 138412546;
        v143 = v79;
        v144 = 2048;
        v145 = v77;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
      }

      v80 = +[TransparencyAnalytics logger];
      v81 = [NSNumber numberWithDouble:v77];
      v82 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", v5];
      [v80 logMetric:v81 withName:v82];
    }

    else
    {
      v83 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", v5];
        *buf = 138412290;
        v143 = v84;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v80 = +[TransparencyAnalytics logger];
      v81 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeBuddyTime", v5];
      [v80 logSuccessForEventNamed:v81];
    }

    self->_hasReportedManateeBuddyTime = 1;
  }

  if (v136)
  {
    v85 = [v8 registeredTime];
    [v85 timeIntervalSinceDate:self->_manateeAvailableDate];
    v87 = v86;

    v88 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSNoKTRegTime", v5];
      *buf = 138412546;
      v143 = v89;
      v144 = 2048;
      v145 = v87;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v90 = +[TransparencyAnalytics logger];
    v91 = [NSNumber numberWithDouble:v87];
    v92 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSNoKTRegTime", v5];
    [v90 logMetric:v91 withName:v92];
  }

  if (v137)
  {
    v93 = [v8 registeredTime];
    [v93 timeIntervalSinceDate:self->_manateeAvailableDate];
    v95 = v94;

    v96 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSKTRegTime", v5];
      *buf = 138412546;
      v143 = v97;
      v144 = 2048;
      v145 = v95;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v98 = +[TransparencyAnalytics logger];
    v99 = [NSNumber numberWithDouble:v95];
    v100 = [NSString stringWithFormat:@"%@-%u", @"IDS_manateeIDSKTRegTime", v5];
    [v98 logMetric:v99 withName:v100];
  }

  if (!v138 && !v28)
  {
    if (self->_buddyFinishDate)
    {
      v101 = [v8 registeredTime];
      [v101 timeIntervalSinceDate:self->_buddyFinishDate];
      v103 = v102;

      v104 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", v5];
        *buf = 138412546;
        v143 = v105;
        v144 = 2048;
        v145 = v103;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
      }

      v106 = +[TransparencyAnalytics logger];
      v107 = [NSNumber numberWithDouble:v103];
      v108 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", v5];
      [v106 logMetric:v107 withName:v108];
    }

    else
    {
      v109 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", v5];
        *buf = 138412290;
        v143 = v110;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v106 = +[TransparencyAnalytics logger];
      v107 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSNoKTRegTime", v5];
      [v106 logSuccessForEventNamed:v107];
    }
  }

  if (!v139 && !v28)
  {
    if (self->_buddyFinishDate)
    {
      v111 = [v8 registeredTime];
      [v111 timeIntervalSinceDate:self->_buddyFinishDate];
      v113 = v112;

      v114 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        v115 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", v5];
        *buf = 138412546;
        v143 = v115;
        v144 = 2048;
        v145 = v113;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
      }

      v116 = +[TransparencyAnalytics logger];
      v117 = [NSNumber numberWithDouble:v113];
      v118 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", v5];
      [v116 logMetric:v117 withName:v118];
    }

    else
    {
      v119 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", v5];
        *buf = 138412290;
        v143 = v120;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric success. {metricName: %@}", buf, 0xCu);
      }

      v116 = +[TransparencyAnalytics logger];
      v117 = [NSString stringWithFormat:@"%@-%u", @"IDS_buddyIDSKTRegTime", v5];
      [v116 logSuccessForEventNamed:v117];
    }
  }

  if (v141)
  {
    v121 = [v9 registeredTime];
    if (v121)
    {
      v122 = [v8 registeredTime];
      v123 = [v9 registeredTime];
      [v122 timeIntervalSinceDate:v123];
      v125 = v124;
    }

    else
    {
      v125 = 0.0;
    }

    v126 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      v127 = [NSString stringWithFormat:@"%@-%u", @"IDS_IDSNoKTRegIDSKTRegTime", v5];
      *buf = 138412546;
      v143 = v127;
      v144 = 2048;
      v145 = v125;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric {metricName: %@, timeInterval: %f", buf, 0x16u);
    }

    v128 = +[TransparencyAnalytics logger];
    v129 = [NSNumber numberWithDouble:v125];
    v130 = [NSString stringWithFormat:@"%@-%u", @"IDS_IDSNoKTRegIDSKTRegTime", v5];
    [v128 logMetric:v129 withName:v130];
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