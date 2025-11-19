@interface IDSDXPCInternalTesting
- (BOOL)hasEntitlementForPushReplay;
- (IDSDXPCInternalTesting)initWithQueue:(id)a3 connection:(id)a4 offGridStateManager:(id)a5;
- (id)_registeredIdentityTimestamps;
- (id)transparentEndpointViewer;
- (void)assertTransportThreadRealTimeMode:(BOOL)a3 completionHandler:(id)a4;
- (void)autoBugCaptureWithCompletion:(id)a3;
- (void)checkServerStorageForService:(id)a3 withCompletion:(id)a4;
- (void)clearAllSenderKeysWithCompletion:(id)a3;
- (void)clearCacheAndUpdatePeersForService:(id)a3;
- (void)clearCacheWithCompletion:(id)a3;
- (void)currentECVersionWithBlock:(id)a3;
- (void)deviceChangedForDeviceID:(id)a3 isNearby:(BOOL)a4 isConnected:(BOOL)a5 isCloudConnected:(BOOL)a6 completionHandler:(id)a7;
- (void)fetchCurrentDeviceKVSKey:(id)a3;
- (void)fetchEndpointCacheStateForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6;
- (void)fetchPrivateClientDataDescriptionForService:(id)a3 completion:(id)a4;
- (void)fetchPrivateDeviceDataDescription:(id)a3;
- (void)fetchStewieStateWithCompletion:(id)a3;
- (void)fetchStoredUserDescriptions:(id)a3;
- (void)fetchTransparentEndpointsForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 verifyAgainstTrustCircle:(BOOL)a6 completion:(id)a7;
- (void)fetchVerifierKVSTrustedDevicesWithCompletion:(id)a3;
- (void)fetchXPCStateDescriptionForProcesses:(id)a3 withCompletion:(id)a4;
- (void)forceAccountRenewalOnService:(id)a3;
- (void)forceAccountSync;
- (void)idsProtocolVersion:(id)a3;
- (void)kickVerificationForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6;
- (void)listDonatedHandlesWithCompletion:(id)a3;
- (void)listRegistrationEventTracesForService:(id)a3 summary:(BOOL)a4 completion:(id)a5;
- (void)listRegistrationHistoryWithBAADigests:(BOOL)a3 completion:(id)a4;
- (void)listSenderKeysForURIs:(id)a3 completion:(id)a4;
- (void)nukeTransparencyStateWithCompletion:(id)a3;
- (void)oneToOneECCQuicktestEncryptionWithData:(id)a3 completion:(id)a4;
- (void)popupPromptWithTitle:(id)a3 message:(id)a4 defaultButton:(id)a5 defaultUrl:(id)a6 alternateButton:(id)a7 alternatrUrl:(id)a8 completion:(id)a9;
- (void)postNewDeviceNotification:(id)a3 iCloudSignIn:(BOOL)a4 iMessageSignIn:(BOOL)a5 facetimeSignIn:(BOOL)a6 forAppleID:(id)a7;
- (void)registeredIdentityTimestampsWithBlock:(id)a3;
- (void)removeAllKVSTrustedDevices:(id)a3;
- (void)removeConnectionWithConnectionName:(id)a3 completionHandler:(id)a4;
- (void)resetStewieStateWithCompletion:(id)a3;
- (void)sendBatchMessageProcessedForTopic:(id)a3;
- (void)sendFakePushFromFile:(id)a3 completion:(id)a4;
- (void)sendSenderKeyToURI:(id)a3 completion:(id)a4;
- (void)sendServerStorageProcessedForService:(id)a3 withCompletion:(id)a4;
- (void)setECVersion:(unsigned int)a3 withCompletion:(id)a4;
- (void)setForceKeyRoll:(BOOL)a3 withCompletion:(id)a4;
- (void)setOffGridMode:(int64_t)a3 options:(id)a4 completion:(id)a5;
- (void)tapToRadarWithTitle:(id)a3 message:(id)a4 context:(id)a5 completion:(id)a6;
- (void)triggerAllFirewallNotificationsWithHandle:(id)a3 delay:(double)a4 service:(id)a5;
- (void)triggerAllTemporaryPhoneNotificationsWithHandle:(id)a3 delay:(double)a4;
- (void)triggerFirewallDBCleanupWithInterval:(double)a3;
- (void)triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)a3;
- (void)triggerKeyRollWithCompletion:(id)a3;
- (void)triggerRestrictedMessageCleanup;
- (void)updateCurrentDeviceInKVS:(id)a3;
@end

@implementation IDSDXPCInternalTesting

- (IDSDXPCInternalTesting)initWithQueue:(id)a3 connection:(id)a4 offGridStateManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (CUTIsInternalInstall())
  {
    v16.receiver = self;
    v16.super_class = IDSDXPCInternalTesting;
    v12 = [(IDSDXPCInternalTesting *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)oneToOneECCQuicktestEncryptionWithData:(id)a3 completion:(id)a4
{
  v5 = a3;
  v80 = 0;
  v62 = a4;
  v6 = [IDSNGMFullDeviceIdentity identityWithAccess:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly usageIdentifier:@"com.apple.idstool" error:&v80];
  v7 = v80;
  v79 = v7;
  v8 = [v6 publicDeviceIdentityWithError:&v79];
  v9 = v79;

  v78 = v9;
  v10 = [IDSNGMFullDeviceIdentity identityWithAccess:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly usageIdentifier:@"com.apple.idstool" error:&v78];
  v11 = v78;

  v77 = v11;
  v12 = [v10 publicDeviceIdentityWithError:&v77];
  v13 = v77;

  v14 = v5;
  v15 = +[NSMutableDictionary dictionary];
  v16 = +[NSData data];
  v17 = +[NSData data];
  v18 = +[NSData data];
  v76 = v15;
  v50 = v6;
  v65 = v6;
  LOWORD(v48) = 0;
  v19 = v12;
  v20 = [v12 sealMessage:v14 authenticatedData:v16 messageType:0 guid:&stru_100C06028 sendingURI:&stru_100C06028 sendingPushToken:v17 receivingURI:&stru_100C06028 receivingPushToken:v18 forceSizeOptimizations:v48 resetState:0 encryptedAttributes:v50 signedByFullIdentity:&v76 errors:?];
  v53 = v76;

  v75 = v13;
  v63 = v10;
  v64 = v8;
  v66 = [v10 unsealMessage:v20 signedByPublicIdentity:v8 error:&v75];
  v21 = v75;

  v22 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v82 = v14;
    v83 = 2112;
    v84 = v20;
    v85 = 2112;
    v86 = v66;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "plain: %@, encrypted: %@, decrypted: %@", buf, 0x20u);
  }

  value = v20;

  v74 = v21;
  v23 = [v65 dataRepresentationWithError:&v74];
  v24 = v74;

  v25 = [v8 identityData];
  v26 = [v8 prekeyData];
  v73 = v24;
  v27 = [v10 dataRepresentationWithError:&v73];
  v28 = v73;

  v29 = [v19 identityData];
  v56 = v19;
  [v19 prekeyData];
  v30 = v55 = v14;
  v72 = v28;
  v60 = v23;
  v31 = [IDSNGMFullDeviceIdentity identityWithDataRepresentation:v23 error:&v72];
  v32 = v72;

  v71 = v32;
  v58 = v26;
  v59 = v25;
  v33 = [IDSNGMPublicDeviceIdentity identityWithIdentityData:v25 prekeyData:v26 error:&v71];
  v34 = v71;

  v70 = v34;
  v57 = v27;
  v35 = [IDSNGMFullDeviceIdentity identityWithDataRepresentation:v27 error:&v70];
  v36 = v70;

  v69 = v36;
  v37 = [IDSNGMPublicDeviceIdentity identityWithIdentityData:"identityWithIdentityData:prekeyData:error:" prekeyData:v29 error:?];
  v38 = v69;

  v39 = +[NSData data];
  v40 = +[NSData data];
  v41 = +[NSData data];
  v68 = v53;
  v54 = v31;
  LOWORD(v49) = 0;
  v52 = v37;
  v42 = [v37 sealMessage:v55 authenticatedData:v39 messageType:0 guid:&stru_100C06028 sendingURI:&stru_100C06028 sendingPushToken:v40 receivingURI:&stru_100C06028 receivingPushToken:v41 forceSizeOptimizations:v49 resetState:0 encryptedAttributes:v31 signedByFullIdentity:&v68 errors:?];
  v51 = v68;

  v67 = v38;
  v43 = [v35 unsealMessage:v42 signedByPublicIdentity:v33 error:&v67];
  v44 = v67;

  v45 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v82 = v55;
    v83 = 2112;
    v84 = v42;
    v85 = 2112;
    v86 = v43;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "plain: %@, encryptedAgain: %@, decryptedAgain: %@", buf, 0x20u);
  }

  v46 = objc_alloc_init(NSMutableDictionary);
  v47 = v46;
  if (v55)
  {
    CFDictionarySetValue(v46, @"plain", v55);
  }

  if (value)
  {
    CFDictionarySetValue(v47, @"encrypted", value);
  }

  if (v66)
  {
    CFDictionarySetValue(v47, @"decrypted", v66);
  }

  if (v42)
  {
    CFDictionarySetValue(v47, @"encryptedAgain", v42);
  }

  if (v43)
  {
    CFDictionarySetValue(v47, @"decryptedAgain", v43);
  }

  v62[2](v62, v47, v44);
}

- (void)clearCacheWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asked by idstool to clear caches!", v6, 2u);
  }

  v5 = getpid();
  kill(v5, 30);
  v3[2](v3);
}

- (void)registeredIdentityTimestampsWithBlock:(id)a3
{
  v5 = a3;
  v6 = [(IDSDXPCInternalTesting *)self _registeredIdentityTimestamps];
  (*(a3 + 2))(v5, v6);
}

- (void)triggerKeyRollWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IDSRegistrationKeyManager sharedInstance];
  v6 = [v5 forceRoll];

  v7 = +[IDSRegistrationKeyManager sharedInstance];
  [v7 setForceRoll:1];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000A954;
  v31 = sub_10000BC1C;
  v32 = 0;
  v8 = +[IDSDRegistrationListener sharedInstance];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1003EEA38;
  v23[3] = &unk_100BDABA8;
  v9 = v4;
  v23[4] = self;
  v24 = v9;
  v25 = &v27;
  v26 = v6;
  v10 = [v8 addBlockForRegistrationCompletion:v23];
  v11 = v28[5];
  v28[5] = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = +[IDSDAccountController sharedInstance];
  v13 = +[IDSDServiceController sharedInstance];
  v14 = [v13 serviceWithIdentifier:@"com.apple.madrid"];
  v15 = [v12 accountsOnService:v14];

  v16 = [v15 countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v19 + 1) + 8 * v18) registerAccount];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v16);
  }

  _Block_object_dispose(&v27, 8);
}

- (void)setForceKeyRoll:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v5 = +[IDSRegistrationKeyManager sharedInstance];
  [v5 setForceRoll:v4];

  v6[2]();
}

- (void)currentECVersionWithBlock:(id)a3
{
  v4 = a3;
  v6 = +[IDSRegistrationKeyManager sharedInstance];
  v5 = [v6 identityDataSource];
  (*(a3 + 2))(v4, [v5 ngmVersion]);
}

- (void)setECVersion:(unsigned int)a3 withCompletion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v5 = [NSNumber numberWithUnsignedInt:v4];
  IMSetAppValueForKey();

  v6[2]();
}

- (void)checkServerStorageForService:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v5 = a3;
  v6 = +[IDSServerStorageStateMachine sharedInstance];
  [v6 incomingStorageRequestForTopic:v5 primary:0 messageContext:0 sendReasonPathID:25];

  v7[2]();
}

- (void)sendServerStorageProcessedForService:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v5 = a3;
  v6 = +[IDSServerStorageStateMachine sharedInstance];
  [v6 sendBatchProcessedForTopic:v5];

  v7[2]();
}

- (void)tapToRadarWithTitle:(id)a3 message:(id)a4 context:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = [[IDSTapToRadarRequest alloc] initWithTitle:v12 message:v11];

  v13 = [[IDSTapToRadarContext alloc] initWithDictionary:v10];
  [IDSTapToRadar launchWithRequest:v14 context:v13];
  v9[2](v9);
}

- (void)popupPromptWithTitle:(id)a3 message:(id)a4 defaultButton:(id)a5 defaultUrl:(id)a6 alternateButton:(id)a7 alternatrUrl:(id)a8 completion:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [[IDSPopupPrompt alloc] initWithTitle:v21 promptMessage:v20];

  [v22 launchPromptWithButton:v19 defaultUrl:v18 alternateButton:v17 alternateUrl:v16];
  v15[2](v15);
}

- (void)autoBugCaptureWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EF024;
  v4[3] = &unk_100BDABD0;
  v5 = a3;
  v3 = v5;
  [IDSAutoBugCapture triggerCaptureWithEvent:0 context:@"IDSToolTrigger" completion:v4];
}

- (void)forceAccountRenewalOnService:(id)a3
{
  v3 = a3;
  v4 = +[IDSDServiceController sharedInstance];
  v5 = [v4 serviceWithPushTopic:v3];

  v6 = +[IDSDAccountController sharedInstance];
  v7 = [v6 appleIDAccountOnService:v5];

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 uniqueID];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Told to force renew account %@ on service %@", &v12, 0x16u);
  }

  v10 = +[IDSAppleIDRegistrationCenter sharedInstance];
  v11 = [v7 registration];
  [v10 authenticateRegistration:v11 forceRenewal:1 requireSilentAuth:0];
}

- (BOOL)hasEntitlementForPushReplay
{
  v2 = [(IDSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.private.ids.allow-push-replay"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v2 BOOLValue] & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection is missing entitlement for replaying pushes", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)sendFakePushFromFile:(id)a3 completion:(id)a4
{
  v48 = a3;
  v6 = a4;
  if (CUTIsInternalInstall() && [(IDSDXPCInternalTesting *)self hasEntitlementForPushReplay])
  {
    v44 = v6;
    v7 = objc_alloc_init(IDSDaemon);
    v8 = [(IDSDaemon *)v7 pushHandlerForAPSDelegatePort];

    v46 = v8;
    if (!v8)
    {
      v46 = objc_alloc_init(IDSPushHandler);
    }

    v51 = 0;
    v47 = objc_alloc_init(NSMutableArray);
    [v47 addObject:@"File(s) executed:"];
    v9 = +[NSFileManager defaultManager];
    [v9 fileExistsAtPath:v48 isDirectory:&v51];

    if (v51)
    {
      v10 = +[NSFileManager defaultManager];
      v11 = [v10 enumeratorAtPath:v48];

      v12 = [v11 nextObject];
      if (v12)
      {
        v13 = v12;
        v45 = v11;
        do
        {
          if ([v13 hasSuffix:@".data"])
          {
            v14 = [v48 stringByAppendingPathComponent:v13];
            v49 = 0;
            v15 = [NSData dataWithContentsOfFile:v14 options:0 error:&v49];
            v16 = v49;
            if (v15)
            {
              v17 = [NSPropertyListSerialization propertyListWithData:v15 options:0 format:0 error:0];
              if (v17)
              {
                v18 = objc_opt_class();
                v19 = sub_10001B518(v18, v17, @"t");
                if (v19)
                {
                  v20 = v19;
                  v21 = objc_opt_class();
                  v22 = sub_10001B518(v21, v17, @"p");

                  if (v22)
                  {
                    v23 = [APSIncomingMessage alloc];
                    v24 = objc_opt_class();
                    v25 = sub_10001B518(v24, v17, @"t");
                    v26 = objc_opt_class();
                    v27 = sub_10001B518(v26, v17, @"p");
                    v28 = [v23 initWithTopic:v25 userInfo:v27];

                    [v46 connection:0 didReceiveIncomingMessage:v28];
                    [v47 addObject:v14];
                  }

                  v11 = v45;
                }

                else
                {
                  v11 = v45;
                }
              }
            }

            else
            {
              v17 = [NSString stringWithFormat:@"%@ read error %@", v48, v16];
              [v47 addObject:v17];
            }
          }

          v29 = [v11 nextObject];

          v13 = v29;
        }

        while (v29);
      }
    }

    else
    {
      v50 = 0;
      v30 = [NSData dataWithContentsOfFile:v48 options:0 error:&v50];
      v11 = v50;
      if (v30)
      {
        v31 = [NSPropertyListSerialization propertyListWithData:v30 options:0 format:0 error:0];
        if (v31)
        {
          v32 = objc_opt_class();
          v33 = sub_10001B518(v32, v31, @"t");
          if (v33)
          {
            v34 = v33;
            v35 = v11;
            v36 = objc_opt_class();
            v37 = sub_10001B518(v36, v31, @"p");

            if (v37)
            {
              v38 = [APSIncomingMessage alloc];
              v39 = objc_opt_class();
              v40 = sub_10001B518(v39, v31, @"t");
              v41 = objc_opt_class();
              v42 = sub_10001B518(v41, v31, @"p");
              v43 = [v38 initWithTopic:v40 userInfo:v42];

              [v46 connection:0 didReceiveIncomingMessage:v43];
              [v47 addObject:v48];
            }

            v11 = v35;
          }
        }
      }

      else
      {
        v31 = [NSString stringWithFormat:@"%@ read error %@", v48, v11];
        [v47 addObject:v31];
      }
    }

    v6 = v44;

    v6[2](v6, v47);
  }
}

- (void)postNewDeviceNotification:(id)a3 iCloudSignIn:(BOOL)a4 iMessageSignIn:(BOOL)a5 facetimeSignIn:(BOOL)a6 forAppleID:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a7;
  v16 = v11;
  if (v10)
  {
    v14 = +[IDSAppleIDNotificationCenter sharedInstance];
    [v14 addUsageNotificationForSession:@"Session Guid" appleID:v12 alias:@"foo2@apple.com" deviceName:@"Foo's New Device" hardwareVersion:v16 deviceCapabilities:0 serviceType:IDSRegistrationServiceTypeMultiplex1];

    if (!v9)
    {
LABEL_3:
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v9)
  {
    goto LABEL_3;
  }

  v15 = +[IDSAppleIDNotificationCenter sharedInstance];
  [v15 addUsageNotificationForSession:@"Session Guid" appleID:v12 alias:@"foo2@apple.com" deviceName:@"Foo's New Device" hardwareVersion:v16 deviceCapabilities:0 serviceType:IDSRegistrationServiceTypeiMessage];

  if (v8)
  {
LABEL_4:
    v13 = +[IDSAppleIDNotificationCenter sharedInstance];
    [v13 addUsageNotificationForSession:@"Session Guid" appleID:v12 alias:@"foo2@apple.com" deviceName:@"Foo's New Device" hardwareVersion:v16 deviceCapabilities:0 serviceType:IDSRegistrationServiceTypeFaceTime];
  }

LABEL_5:
}

- (id)transparentEndpointViewer
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 transparentEndpointViewer];

  return v3;
}

- (void)fetchEndpointCacheStateForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003EFA40;
  v16[3] = &unk_100BDAC38;
  v17 = v10;
  v15 = v10;
  [v14 internal_fetchEndpointCacheStateForServiceIdentifier:v13 localURI:v12 remoteURI:v11 completion:v16];
}

- (void)fetchTransparentEndpointsForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 verifyAgainstTrustCircle:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003F0014;
  v18[3] = &unk_100BDAC60;
  v19 = v12;
  v17 = v12;
  [v16 internal_fetchTransparentEndpointsForServiceIdentifier:v15 localURI:v14 remoteURI:v13 verifyAgainstTrustCircle:v7 completion:v18];
}

- (void)kickVerificationForServiceIdentifier:(id)a3 localURI:(id)a4 remoteURI:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003F0310;
  v16[3] = &unk_100BDA9F0;
  v17 = v10;
  v15 = v10;
  [v14 internal_kickVerificationForServiceIdentifier:v13 localURI:v12 remoteURI:v11 completion:v16];
}

- (void)fetchVerifierKVSTrustedDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F041C;
  v7[3] = &unk_100BDAB30;
  v8 = v4;
  v6 = v4;
  [v5 internal_fetchVerifierKVSTrustedDevicesWithCompletion:v7];
}

- (void)removeAllKVSTrustedDevices:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F04D8;
  v7[3] = &unk_100BD9328;
  v8 = v4;
  v6 = v4;
  [v5 internal_removeAllKVSTrustedDevices:v7];
}

- (void)fetchCurrentDeviceKVSKey:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F0594;
  v7[3] = &unk_100BDAC88;
  v8 = v4;
  v6 = v4;
  [v5 internal_fetchCurrentDeviceKVSKey:v7];
}

- (void)updateCurrentDeviceInKVS:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F0650;
  v7[3] = &unk_100BDACB0;
  v8 = v4;
  v6 = v4;
  [v5 internal_updateCurrentDeviceInKVS:v7];
}

- (void)triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)a3
{
  if (a3 < 5)
  {
    v6 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
    [v6 internal_triggerKTCDPAccountStatusNotificationWithAccountStatus:a3];
  }

  else
  {
    v4 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSNumber numberWithInteger:a3];
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inputed account status not valid, doing nothing. { accountStatus: %@ }", buf, 0xCu);
    }
  }
}

- (void)nukeTransparencyStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F082C;
  v7[3] = &unk_100BDA9F0;
  v8 = v4;
  v6 = v4;
  [v5 internal_nukeTransparencyState:v7];
}

- (void)fetchStoredUserDescriptions:(id)a3
{
  v35 = a3;
  v3 = +[IDSDaemon sharedInstance];
  v4 = [v3 registrationConductor];
  v5 = [v4 userStore];

  v6 = objc_alloc_init(NSMutableString);
  [v6 appendString:@"Stored Users:\n"];
  [v6 appendString:@"   DS Realm:\n"];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [v5 usersWithRealm:1];
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v5 propertiesForUser:v12];
        v14 = [v12 description];
        [v6 appendFormat:@"      %@\n", v14];

        v15 = [v13 description];
        [v6 appendFormat:@"         %@\n", v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v9);
  }

  [v6 appendString:@"   Phone Realm:\n"];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = [v5 usersWithRealm:0];
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v40 + 1) + 8 * j);
        v22 = [v5 propertiesForUser:v21];
        v23 = [v21 description];
        [v6 appendFormat:@"      %@\n", v23];

        v24 = [v22 description];
        [v6 appendFormat:@"         %@\n", v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v18);
  }

  [v6 appendString:@"   Transient Phone Realm:\n"];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = [v5 usersWithRealm:2];
  v26 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v36 + 1) + 8 * k);
        v31 = [v5 propertiesForUser:v30];
        v32 = [v30 description];
        [v6 appendFormat:@"      %@\n", v32];

        v33 = [v31 description];
        [v6 appendFormat:@"         %@\n", v33];
      }

      v27 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v27);
  }

  v34 = [v6 copy];
  v35[2](v35, v34);
}

- (void)fetchPrivateClientDataDescriptionForService:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IDSRegistrationController sharedInstance];
  v8 = [v7 activeRegistrationsToRegister];
  v9 = [v8 _copyForEnumerating];

  v10 = +[IDSRegistrationKeyManager sharedInstance];
  v11 = +[IDSKeyTransparencyVerifier sharedInstance];
  v12 = [IDSClientDataGenerator clientDatasForRegistrations:v9 registerID:0 keyStore:v10 keyTransparencyVerifier:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003F0E0C;
  v15[3] = &unk_100BDAD00;
  v16 = v5;
  v17 = v6;
  v13 = v5;
  v14 = v6;
  [v12 registerResultBlock:v15];
}

- (void)fetchPrivateDeviceDataDescription:(id)a3
{
  v3 = a3;
  v4 = +[IDSRegistrationCenter sharedInstance];
  v6 = [v4 privateDeviceDataForKVSSuccess:0];

  v5 = [v6 debugDescription];
  v3[2](v3, v5);
}

- (void)clearCacheAndUpdatePeersForService:(id)a3
{
  v3 = a3;
  v4 = +[IDSKeyTransparencyVerifier sharedInstance];
  [v4 clearCacheAndUpdatePeersForService:v3 optIn:0];
}

- (void)removeConnectionWithConnectionName:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IDSPairingManager sharedInstance];
  v8 = [v7 pairedDeviceUniqueID];

  v11[0] = IDSOpenSocketOptionCBUUIDKey;
  v11[1] = IDSOpenSocketOptionDeviceUniqueIDKey;
  v11[2] = @"account";
  v11[3] = @"service";
  v12[2] = @"idstest";
  v12[3] = @"localdelivery";
  v12[0] = @"12345678-7654-DADA-DADA-DADADADADADA";
  v12[1] = v8;
  v11[4] = IDSOpenSocketOptionStreamNameKey;
  v12[4] = v6;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  v10 = +[IDSUTunController sharedInstance];

  [v10 closeSocketWithOptions:v9];
  v5[2](v5, 0);
}

- (void)deviceChangedForDeviceID:(id)a3 isNearby:(BOOL)a4 isConnected:(BOOL)a5 isCloudConnected:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v26 = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received nearby change to %@ for device with uniqueID %@", &v26, 0x16u);
  }

  v13 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v14 = v13;
  if (v9)
  {
    v15 = kIDSDeviceStatePropertiesIsNearby;
  }

  else
  {
    v15 = 0;
  }

  [v13 setState:v15 forProperty:kIDSDeviceStatePropertiesIsNearby deviceUniqueID:v10];

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v26 = 138412546;
    v27 = v17;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received connected change to %@ for device with uniqueID %@", &v26, 0x16u);
  }

  v18 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v19 = v18;
  if (v8)
  {
    v20 = kIDSDeviceStatePropertiesIsConnected;
  }

  else
  {
    v20 = 0;
  }

  [v18 setState:v20 forProperty:kIDSDeviceStatePropertiesIsConnected deviceUniqueID:v10];

  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v26 = 138412546;
    v27 = v22;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received cloud connected change to %@ for device with uniqueID %@", &v26, 0x16u);
  }

  v23 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v24 = v23;
  if (v7)
  {
    v25 = kIDSDeviceStatePropertiesIsCloudConnected;
  }

  else
  {
    v25 = 0;
  }

  [v23 setState:v25 forProperty:kIDSDeviceStatePropertiesIsCloudConnected deviceUniqueID:v10];
}

- (void)assertTransportThreadRealTimeMode:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a4;
  IDSTransportThreadAddBlock();
  v4[2](v4, 0);
}

- (id)_registeredIdentityTimestamps
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  v3 = [v2 config];
  v4 = [v3 registeredIdentityContainer];
  v5 = [v4 valueForKeyPath:@"ngmFullDeviceIdentity.devicePrekeys.publicPrekey.timestamp"];
  v6 = [v5 __imArrayByApplyingBlock:&stru_100BDAD40];

  return v6;
}

- (void)triggerFirewallDBCleanupWithInterval:(double)a3
{
  v4 = +[IDSFirewallStore sharedInstance];
  [v4 runCleanupWithExpirationInterval:a3];
}

- (void)triggerAllFirewallNotificationsWithHandle:(id)a3 delay:(double)a4 service:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[IDSDServiceController sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 serviceWithIdentifier:v8];

    if (v11)
    {
      v29 = v11;
      v12 = [NSArray arrayWithObjects:&v29 count:1];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [v9 allServices];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    v17 = 0.0;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v24 + 1) + 8 * v18) isFirewallEnabled])
        {
          v19 = _NSConcreteStackBlock;
          v20 = 3221225472;
          v21 = sub_1003F1A00;
          v22 = &unk_100BD6E40;
          v23 = v7;
          im_dispatch_after_primary_queue();
          v17 = v17 + a4;
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)triggerAllTemporaryPhoneNotificationsWithHandle:(id)a3 delay:(double)a4
{
  v4 = a3;
  v5 = [[IDSPhoneUser alloc] initWithLabelID:@"AAA" phoneBookNumber:v4];

  v6 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:v5];
  v7 = [(IDSTemporaryPhoneUser *)v6 temporaryPhoneUserWithFinishedRegistration];

  v10 = v7;
  im_dispatch_after_primary_queue();
  v9 = v10;
  im_dispatch_after_primary_queue();
  v8 = v9;
  im_dispatch_after_primary_queue();
}

- (void)triggerRestrictedMessageCleanup
{
  v2 = +[IDSDaemon sharedInstance];
  [v2 _restrictedMessageCleanupTimerFired];
}

- (void)resetStewieStateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IDSDaemon sharedInstance];
  v6 = [v4 registrationConductor];

  v5 = [v6 stewieCoordinator];
  [v5 clearAllState];
  v3[2](v3);
}

- (void)fetchStewieStateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IDSDaemon sharedInstance];
  v7 = [v4 registrationConductor];

  v5 = [v7 stewieCoordinator];
  v6 = [v5 fetchCurrentState];
  v3[2](v3, v6);
}

- (void)sendSenderKeyToURI:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IDSDAccountController sharedInstance];
  v8 = +[IDSDServiceController sharedInstance];
  v9 = [v8 serviceWithIdentifier:IDSServiceNameiMessage];
  v10 = [v7 registeredAccountsOnService:v9];

  v23 = v6;
  v11 = [NSArray arrayWithObjects:&v23 count:1];
  v12 = [IDSQueryUtilities accountToQueryFrom:v10 fromURI:0 destinationURIs:v11 allowLocalAccount:0];

  v13 = +[IDSDaemon sharedInstance];
  v14 = [v13 senderKeyDistributionManager];

  v22 = v6;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  v16 = [v12 loginID];
  v17 = [IDSURI URIWithUnprefixedURI:v16];
  v18 = +[_TtC17identityservicesd23IDSSenderKeySendContext idstool];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003F2064;
  v20[3] = &unk_100BDAD68;
  v21 = v5;
  v19 = v5;
  [v14 generateAndSendKeyIfNeededToURIs:v15 fromURI:v17 context:v18 completion:v20];
}

- (void)listSenderKeysForURIs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IDSDaemon sharedInstance];
  v9 = [v7 senderKeyDistributionManager];

  v8 = [v9 formattedSenderKeyListFor:v6];

  v5[2](v5, v8);
}

- (void)clearAllSenderKeysWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v4 persistenceManager];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F21E8;
  v7[3] = &unk_100BDAD68;
  v8 = v3;
  v6 = v3;
  [v5 deleteAllSenderKeysWithCompletion:v7];
}

- (void)listDonatedHandlesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IDSDaemon sharedInstance];
  v6 = [v4 senderKeyDistributionManager];

  v5 = [v6 formattedDonatedHandleList];
  v3[2](v3, v5);
}

- (void)setOffGridMode:(int64_t)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(IDSDXPCInternalTesting *)self offGridStateManager];
  [v10 setOffGridMode:a3 allowOnlineEnablement:1 options:v9 completion:v8];
}

- (void)forceAccountSync
{
  v2 = +[IDSAccountSync sharedInstance];
  [v2 resetAndResynchronizeEverything];
}

- (void)listRegistrationHistoryWithBAADigests:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = +[IDSRegistrationRequestTracker sharedInstance];
  v7 = [v8 eventHistoryStringWithWantsBAADigests:v5];
  (*(a4 + 2))(v6, v7);
}

- (void)listRegistrationEventTracesForService:(id)a3 summary:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = (a5 + 16);
  v9 = a5;
  v10 = +[IDSRegistrationEventTracing sharedInstance];
  if (v7)
  {
    v13 = v7;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v12 = [v10 fetchLastRegistrationStatesForServices:v11 summary:v6];
  (*v8)(v9, v12);

  if (v7)
  {
  }
}

- (void)idsProtocolVersion:(id)a3
{
  v3 = a3;
  v6 = _IDSIDProtocolVersionNumber();
  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 forceReregValue];

  v3[2](v3, v6, v5);
}

- (void)sendBatchMessageProcessedForTopic:(id)a3
{
  v3 = a3;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v4 serverStorageStateMachine];

  [v5 sendBatchProcessedForTopic:v3];
}

- (void)fetchXPCStateDescriptionForProcesses:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = +[IDSDaemon sharedInstance];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1003F2720;
  v15 = &unk_100BDAD90;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  [v8 _iterateOverConnectedListeners:&v12];

  v11 = [v9 componentsJoinedByString:{@"\n", v12, v13, v14, v15}];
  v6[2](v6, v11);
}

@end