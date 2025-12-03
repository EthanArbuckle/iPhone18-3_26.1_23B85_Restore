@interface IDSDXPCInternalTesting
- (BOOL)hasEntitlementForPushReplay;
- (IDSDXPCInternalTesting)initWithQueue:(id)queue connection:(id)connection offGridStateManager:(id)manager;
- (id)_registeredIdentityTimestamps;
- (id)transparentEndpointViewer;
- (void)assertTransportThreadRealTimeMode:(BOOL)mode completionHandler:(id)handler;
- (void)autoBugCaptureWithCompletion:(id)completion;
- (void)checkServerStorageForService:(id)service withCompletion:(id)completion;
- (void)clearAllSenderKeysWithCompletion:(id)completion;
- (void)clearCacheAndUpdatePeersForService:(id)service;
- (void)clearCacheWithCompletion:(id)completion;
- (void)currentECVersionWithBlock:(id)block;
- (void)deviceChangedForDeviceID:(id)d isNearby:(BOOL)nearby isConnected:(BOOL)connected isCloudConnected:(BOOL)cloudConnected completionHandler:(id)handler;
- (void)fetchCurrentDeviceKVSKey:(id)key;
- (void)fetchEndpointCacheStateForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion;
- (void)fetchPrivateClientDataDescriptionForService:(id)service completion:(id)completion;
- (void)fetchPrivateDeviceDataDescription:(id)description;
- (void)fetchStewieStateWithCompletion:(id)completion;
- (void)fetchStoredUserDescriptions:(id)descriptions;
- (void)fetchTransparentEndpointsForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI verifyAgainstTrustCircle:(BOOL)circle completion:(id)completion;
- (void)fetchVerifierKVSTrustedDevicesWithCompletion:(id)completion;
- (void)fetchXPCStateDescriptionForProcesses:(id)processes withCompletion:(id)completion;
- (void)forceAccountRenewalOnService:(id)service;
- (void)forceAccountSync;
- (void)idsProtocolVersion:(id)version;
- (void)kickVerificationForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion;
- (void)listDonatedHandlesWithCompletion:(id)completion;
- (void)listRegistrationEventTracesForService:(id)service summary:(BOOL)summary completion:(id)completion;
- (void)listRegistrationHistoryWithBAADigests:(BOOL)digests completion:(id)completion;
- (void)listSenderKeysForURIs:(id)is completion:(id)completion;
- (void)nukeTransparencyStateWithCompletion:(id)completion;
- (void)oneToOneECCQuicktestEncryptionWithData:(id)data completion:(id)completion;
- (void)popupPromptWithTitle:(id)title message:(id)message defaultButton:(id)button defaultUrl:(id)url alternateButton:(id)alternateButton alternatrUrl:(id)alternatrUrl completion:(id)completion;
- (void)postNewDeviceNotification:(id)notification iCloudSignIn:(BOOL)in iMessageSignIn:(BOOL)signIn facetimeSignIn:(BOOL)facetimeSignIn forAppleID:(id)d;
- (void)registeredIdentityTimestampsWithBlock:(id)block;
- (void)removeAllKVSTrustedDevices:(id)devices;
- (void)removeConnectionWithConnectionName:(id)name completionHandler:(id)handler;
- (void)resetStewieStateWithCompletion:(id)completion;
- (void)sendBatchMessageProcessedForTopic:(id)topic;
- (void)sendFakePushFromFile:(id)file completion:(id)completion;
- (void)sendSenderKeyToURI:(id)i completion:(id)completion;
- (void)sendServerStorageProcessedForService:(id)service withCompletion:(id)completion;
- (void)setECVersion:(unsigned int)version withCompletion:(id)completion;
- (void)setForceKeyRoll:(BOOL)roll withCompletion:(id)completion;
- (void)setOffGridMode:(int64_t)mode options:(id)options completion:(id)completion;
- (void)tapToRadarWithTitle:(id)title message:(id)message context:(id)context completion:(id)completion;
- (void)triggerAllFirewallNotificationsWithHandle:(id)handle delay:(double)delay service:(id)service;
- (void)triggerAllTemporaryPhoneNotificationsWithHandle:(id)handle delay:(double)delay;
- (void)triggerFirewallDBCleanupWithInterval:(double)interval;
- (void)triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)status;
- (void)triggerKeyRollWithCompletion:(id)completion;
- (void)triggerRestrictedMessageCleanup;
- (void)updateCurrentDeviceInKVS:(id)s;
@end

@implementation IDSDXPCInternalTesting

- (IDSDXPCInternalTesting)initWithQueue:(id)queue connection:(id)connection offGridStateManager:(id)manager
{
  queueCopy = queue;
  connectionCopy = connection;
  managerCopy = manager;
  if (CUTIsInternalInstall())
  {
    v16.receiver = self;
    v16.super_class = IDSDXPCInternalTesting;
    v12 = [(IDSDXPCInternalTesting *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, queue);
      objc_storeStrong(p_isa + 2, connection);
      objc_storeStrong(p_isa + 3, manager);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)oneToOneECCQuicktestEncryptionWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  v80 = 0;
  completionCopy = completion;
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

  v14 = dataCopy;
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

  identityData = [v8 identityData];
  prekeyData = [v8 prekeyData];
  v73 = v24;
  v27 = [v10 dataRepresentationWithError:&v73];
  v28 = v73;

  identityData2 = [v19 identityData];
  v56 = v19;
  [v19 prekeyData];
  v30 = v55 = v14;
  v72 = v28;
  v60 = v23;
  v31 = [IDSNGMFullDeviceIdentity identityWithDataRepresentation:v23 error:&v72];
  v32 = v72;

  v71 = v32;
  v58 = prekeyData;
  v59 = identityData;
  v33 = [IDSNGMPublicDeviceIdentity identityWithIdentityData:identityData prekeyData:prekeyData error:&v71];
  v34 = v71;

  v70 = v34;
  v57 = v27;
  v35 = [IDSNGMFullDeviceIdentity identityWithDataRepresentation:v27 error:&v70];
  v36 = v70;

  v69 = v36;
  v37 = [IDSNGMPublicDeviceIdentity identityWithIdentityData:"identityWithIdentityData:prekeyData:error:" prekeyData:identityData2 error:?];
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

  completionCopy[2](completionCopy, v47, v44);
}

- (void)clearCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asked by idstool to clear caches!", v6, 2u);
  }

  v5 = getpid();
  kill(v5, 30);
  completionCopy[2](completionCopy);
}

- (void)registeredIdentityTimestampsWithBlock:(id)block
{
  blockCopy = block;
  _registeredIdentityTimestamps = [(IDSDXPCInternalTesting *)self _registeredIdentityTimestamps];
  (*(block + 2))(blockCopy, _registeredIdentityTimestamps);
}

- (void)triggerKeyRollWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IDSRegistrationKeyManager sharedInstance];
  forceRoll = [v5 forceRoll];

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
  v9 = completionCopy;
  v23[4] = self;
  v24 = v9;
  v25 = &v27;
  v26 = forceRoll;
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

- (void)setForceKeyRoll:(BOOL)roll withCompletion:(id)completion
{
  rollCopy = roll;
  completionCopy = completion;
  v5 = +[IDSRegistrationKeyManager sharedInstance];
  [v5 setForceRoll:rollCopy];

  completionCopy[2]();
}

- (void)currentECVersionWithBlock:(id)block
{
  blockCopy = block;
  v6 = +[IDSRegistrationKeyManager sharedInstance];
  identityDataSource = [v6 identityDataSource];
  (*(block + 2))(blockCopy, [identityDataSource ngmVersion]);
}

- (void)setECVersion:(unsigned int)version withCompletion:(id)completion
{
  v4 = *&version;
  completionCopy = completion;
  v5 = [NSNumber numberWithUnsignedInt:v4];
  IMSetAppValueForKey();

  completionCopy[2]();
}

- (void)checkServerStorageForService:(id)service withCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  v6 = +[IDSServerStorageStateMachine sharedInstance];
  [v6 incomingStorageRequestForTopic:serviceCopy primary:0 messageContext:0 sendReasonPathID:25];

  completionCopy[2]();
}

- (void)sendServerStorageProcessedForService:(id)service withCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  v6 = +[IDSServerStorageStateMachine sharedInstance];
  [v6 sendBatchProcessedForTopic:serviceCopy];

  completionCopy[2]();
}

- (void)tapToRadarWithTitle:(id)title message:(id)message context:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  messageCopy = message;
  titleCopy = title;
  v14 = [[IDSTapToRadarRequest alloc] initWithTitle:titleCopy message:messageCopy];

  v13 = [[IDSTapToRadarContext alloc] initWithDictionary:contextCopy];
  [IDSTapToRadar launchWithRequest:v14 context:v13];
  completionCopy[2](completionCopy);
}

- (void)popupPromptWithTitle:(id)title message:(id)message defaultButton:(id)button defaultUrl:(id)url alternateButton:(id)alternateButton alternatrUrl:(id)alternatrUrl completion:(id)completion
{
  completionCopy = completion;
  alternatrUrlCopy = alternatrUrl;
  alternateButtonCopy = alternateButton;
  urlCopy = url;
  buttonCopy = button;
  messageCopy = message;
  titleCopy = title;
  v22 = [[IDSPopupPrompt alloc] initWithTitle:titleCopy promptMessage:messageCopy];

  [v22 launchPromptWithButton:buttonCopy defaultUrl:urlCopy alternateButton:alternateButtonCopy alternateUrl:alternatrUrlCopy];
  completionCopy[2](completionCopy);
}

- (void)autoBugCaptureWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EF024;
  v4[3] = &unk_100BDABD0;
  completionCopy = completion;
  v3 = completionCopy;
  [IDSAutoBugCapture triggerCaptureWithEvent:0 context:@"IDSToolTrigger" completion:v4];
}

- (void)forceAccountRenewalOnService:(id)service
{
  serviceCopy = service;
  v4 = +[IDSDServiceController sharedInstance];
  v5 = [v4 serviceWithPushTopic:serviceCopy];

  v6 = +[IDSDAccountController sharedInstance];
  v7 = [v6 appleIDAccountOnService:v5];

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [v7 uniqueID];
    v12 = 138412546;
    v13 = uniqueID;
    v14 = 2112;
    v15 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Told to force renew account %@ on service %@", &v12, 0x16u);
  }

  v10 = +[IDSAppleIDRegistrationCenter sharedInstance];
  registration = [v7 registration];
  [v10 authenticateRegistration:registration forceRenewal:1 requireSilentAuth:0];
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

- (void)sendFakePushFromFile:(id)file completion:(id)completion
{
  fileCopy = file;
  completionCopy = completion;
  if (CUTIsInternalInstall() && [(IDSDXPCInternalTesting *)self hasEntitlementForPushReplay])
  {
    v44 = completionCopy;
    v7 = objc_alloc_init(IDSDaemon);
    pushHandlerForAPSDelegatePort = [(IDSDaemon *)v7 pushHandlerForAPSDelegatePort];

    v46 = pushHandlerForAPSDelegatePort;
    if (!pushHandlerForAPSDelegatePort)
    {
      v46 = objc_alloc_init(IDSPushHandler);
    }

    v51 = 0;
    v47 = objc_alloc_init(NSMutableArray);
    [v47 addObject:@"File(s) executed:"];
    v9 = +[NSFileManager defaultManager];
    [v9 fileExistsAtPath:fileCopy isDirectory:&v51];

    if (v51)
    {
      v10 = +[NSFileManager defaultManager];
      v11 = [v10 enumeratorAtPath:fileCopy];

      nextObject = [v11 nextObject];
      if (nextObject)
      {
        v13 = nextObject;
        v45 = v11;
        do
        {
          if ([v13 hasSuffix:@".data"])
          {
            v14 = [fileCopy stringByAppendingPathComponent:v13];
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
              v17 = [NSString stringWithFormat:@"%@ read error %@", fileCopy, v16];
              [v47 addObject:v17];
            }
          }

          nextObject2 = [v11 nextObject];

          v13 = nextObject2;
        }

        while (nextObject2);
      }
    }

    else
    {
      v50 = 0;
      v30 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v50];
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
              [v47 addObject:fileCopy];
            }

            v11 = v35;
          }
        }
      }

      else
      {
        v31 = [NSString stringWithFormat:@"%@ read error %@", fileCopy, v11];
        [v47 addObject:v31];
      }
    }

    completionCopy = v44;

    completionCopy[2](completionCopy, v47);
  }
}

- (void)postNewDeviceNotification:(id)notification iCloudSignIn:(BOOL)in iMessageSignIn:(BOOL)signIn facetimeSignIn:(BOOL)facetimeSignIn forAppleID:(id)d
{
  facetimeSignInCopy = facetimeSignIn;
  signInCopy = signIn;
  inCopy = in;
  notificationCopy = notification;
  dCopy = d;
  v16 = notificationCopy;
  if (inCopy)
  {
    v14 = +[IDSAppleIDNotificationCenter sharedInstance];
    [v14 addUsageNotificationForSession:@"Session Guid" appleID:dCopy alias:@"foo2@apple.com" deviceName:@"Foo's New Device" hardwareVersion:v16 deviceCapabilities:0 serviceType:IDSRegistrationServiceTypeMultiplex1];

    if (!signInCopy)
    {
LABEL_3:
      if (!facetimeSignInCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!signInCopy)
  {
    goto LABEL_3;
  }

  v15 = +[IDSAppleIDNotificationCenter sharedInstance];
  [v15 addUsageNotificationForSession:@"Session Guid" appleID:dCopy alias:@"foo2@apple.com" deviceName:@"Foo's New Device" hardwareVersion:v16 deviceCapabilities:0 serviceType:IDSRegistrationServiceTypeiMessage];

  if (facetimeSignInCopy)
  {
LABEL_4:
    v13 = +[IDSAppleIDNotificationCenter sharedInstance];
    [v13 addUsageNotificationForSession:@"Session Guid" appleID:dCopy alias:@"foo2@apple.com" deviceName:@"Foo's New Device" hardwareVersion:v16 deviceCapabilities:0 serviceType:IDSRegistrationServiceTypeFaceTime];
  }

LABEL_5:
}

- (id)transparentEndpointViewer
{
  v2 = +[IDSDaemon sharedInstance];
  transparentEndpointViewer = [v2 transparentEndpointViewer];

  return transparentEndpointViewer;
}

- (void)fetchEndpointCacheStateForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion
{
  completionCopy = completion;
  rICopy = rI;
  iCopy = i;
  identifierCopy = identifier;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003EFA40;
  v16[3] = &unk_100BDAC38;
  v17 = completionCopy;
  v15 = completionCopy;
  [transparentEndpointViewer internal_fetchEndpointCacheStateForServiceIdentifier:identifierCopy localURI:iCopy remoteURI:rICopy completion:v16];
}

- (void)fetchTransparentEndpointsForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI verifyAgainstTrustCircle:(BOOL)circle completion:(id)completion
{
  circleCopy = circle;
  completionCopy = completion;
  rICopy = rI;
  iCopy = i;
  identifierCopy = identifier;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003F0014;
  v18[3] = &unk_100BDAC60;
  v19 = completionCopy;
  v17 = completionCopy;
  [transparentEndpointViewer internal_fetchTransparentEndpointsForServiceIdentifier:identifierCopy localURI:iCopy remoteURI:rICopy verifyAgainstTrustCircle:circleCopy completion:v18];
}

- (void)kickVerificationForServiceIdentifier:(id)identifier localURI:(id)i remoteURI:(id)rI completion:(id)completion
{
  completionCopy = completion;
  rICopy = rI;
  iCopy = i;
  identifierCopy = identifier;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003F0310;
  v16[3] = &unk_100BDA9F0;
  v17 = completionCopy;
  v15 = completionCopy;
  [transparentEndpointViewer internal_kickVerificationForServiceIdentifier:identifierCopy localURI:iCopy remoteURI:rICopy completion:v16];
}

- (void)fetchVerifierKVSTrustedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F041C;
  v7[3] = &unk_100BDAB30;
  v8 = completionCopy;
  v6 = completionCopy;
  [transparentEndpointViewer internal_fetchVerifierKVSTrustedDevicesWithCompletion:v7];
}

- (void)removeAllKVSTrustedDevices:(id)devices
{
  devicesCopy = devices;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F04D8;
  v7[3] = &unk_100BD9328;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [transparentEndpointViewer internal_removeAllKVSTrustedDevices:v7];
}

- (void)fetchCurrentDeviceKVSKey:(id)key
{
  keyCopy = key;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F0594;
  v7[3] = &unk_100BDAC88;
  v8 = keyCopy;
  v6 = keyCopy;
  [transparentEndpointViewer internal_fetchCurrentDeviceKVSKey:v7];
}

- (void)updateCurrentDeviceInKVS:(id)s
{
  sCopy = s;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F0650;
  v7[3] = &unk_100BDACB0;
  v8 = sCopy;
  v6 = sCopy;
  [transparentEndpointViewer internal_updateCurrentDeviceInKVS:v7];
}

- (void)triggerKTCDPAccountStatusNotificationWithAccountStatus:(int64_t)status
{
  if (status < 5)
  {
    transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
    [transparentEndpointViewer internal_triggerKTCDPAccountStatusNotificationWithAccountStatus:status];
  }

  else
  {
    v4 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSNumber numberWithInteger:status];
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inputed account status not valid, doing nothing. { accountStatus: %@ }", buf, 0xCu);
    }
  }
}

- (void)nukeTransparencyStateWithCompletion:(id)completion
{
  completionCopy = completion;
  transparentEndpointViewer = [(IDSDXPCInternalTesting *)self transparentEndpointViewer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F082C;
  v7[3] = &unk_100BDA9F0;
  v8 = completionCopy;
  v6 = completionCopy;
  [transparentEndpointViewer internal_nukeTransparencyState:v7];
}

- (void)fetchStoredUserDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  v3 = +[IDSDaemon sharedInstance];
  registrationConductor = [v3 registrationConductor];
  userStore = [registrationConductor userStore];

  v6 = objc_alloc_init(NSMutableString);
  [v6 appendString:@"Stored Users:\n"];
  [v6 appendString:@"   DS Realm:\n"];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [userStore usersWithRealm:1];
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
        v13 = [userStore propertiesForUser:v12];
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
  v16 = [userStore usersWithRealm:0];
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
        v22 = [userStore propertiesForUser:v21];
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
  v25 = [userStore usersWithRealm:2];
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
        v31 = [userStore propertiesForUser:v30];
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
  descriptionsCopy[2](descriptionsCopy, v34);
}

- (void)fetchPrivateClientDataDescriptionForService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v7 = +[IDSRegistrationController sharedInstance];
  activeRegistrationsToRegister = [v7 activeRegistrationsToRegister];
  _copyForEnumerating = [activeRegistrationsToRegister _copyForEnumerating];

  v10 = +[IDSRegistrationKeyManager sharedInstance];
  v11 = +[IDSKeyTransparencyVerifier sharedInstance];
  v12 = [IDSClientDataGenerator clientDatasForRegistrations:_copyForEnumerating registerID:0 keyStore:v10 keyTransparencyVerifier:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003F0E0C;
  v15[3] = &unk_100BDAD00;
  v16 = serviceCopy;
  v17 = completionCopy;
  v13 = serviceCopy;
  v14 = completionCopy;
  [v12 registerResultBlock:v15];
}

- (void)fetchPrivateDeviceDataDescription:(id)description
{
  descriptionCopy = description;
  v4 = +[IDSRegistrationCenter sharedInstance];
  v6 = [v4 privateDeviceDataForKVSSuccess:0];

  v5 = [v6 debugDescription];
  descriptionCopy[2](descriptionCopy, v5);
}

- (void)clearCacheAndUpdatePeersForService:(id)service
{
  serviceCopy = service;
  v4 = +[IDSKeyTransparencyVerifier sharedInstance];
  [v4 clearCacheAndUpdatePeersForService:serviceCopy optIn:0];
}

- (void)removeConnectionWithConnectionName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v7 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v7 pairedDeviceUniqueID];

  v11[0] = IDSOpenSocketOptionCBUUIDKey;
  v11[1] = IDSOpenSocketOptionDeviceUniqueIDKey;
  v11[2] = @"account";
  v11[3] = @"service";
  v12[2] = @"idstest";
  v12[3] = @"localdelivery";
  v12[0] = @"12345678-7654-DADA-DADA-DADADADADADA";
  v12[1] = pairedDeviceUniqueID;
  v11[4] = IDSOpenSocketOptionStreamNameKey;
  v12[4] = nameCopy;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  v10 = +[IDSUTunController sharedInstance];

  [v10 closeSocketWithOptions:v9];
  handlerCopy[2](handlerCopy, 0);
}

- (void)deviceChangedForDeviceID:(id)d isNearby:(BOOL)nearby isConnected:(BOOL)connected isCloudConnected:(BOOL)cloudConnected completionHandler:(id)handler
{
  cloudConnectedCopy = cloudConnected;
  connectedCopy = connected;
  nearbyCopy = nearby;
  dCopy = d;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (nearbyCopy)
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
    v29 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received nearby change to %@ for device with uniqueID %@", &v26, 0x16u);
  }

  v13 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v14 = v13;
  if (nearbyCopy)
  {
    v15 = kIDSDeviceStatePropertiesIsNearby;
  }

  else
  {
    v15 = 0;
  }

  [v13 setState:v15 forProperty:kIDSDeviceStatePropertiesIsNearby deviceUniqueID:dCopy];

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (connectedCopy)
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
    v29 = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received connected change to %@ for device with uniqueID %@", &v26, 0x16u);
  }

  v18 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v19 = v18;
  if (connectedCopy)
  {
    v20 = kIDSDeviceStatePropertiesIsConnected;
  }

  else
  {
    v20 = 0;
  }

  [v18 setState:v20 forProperty:kIDSDeviceStatePropertiesIsConnected deviceUniqueID:dCopy];

  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (cloudConnectedCopy)
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
    v29 = dCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received cloud connected change to %@ for device with uniqueID %@", &v26, 0x16u);
  }

  v23 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  v24 = v23;
  if (cloudConnectedCopy)
  {
    v25 = kIDSDeviceStatePropertiesIsCloudConnected;
  }

  else
  {
    v25 = 0;
  }

  [v23 setState:v25 forProperty:kIDSDeviceStatePropertiesIsCloudConnected deviceUniqueID:dCopy];
}

- (void)assertTransportThreadRealTimeMode:(BOOL)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  IDSTransportThreadAddBlock();
  handlerCopy[2](handlerCopy, 0);
}

- (id)_registeredIdentityTimestamps
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  config = [v2 config];
  registeredIdentityContainer = [config registeredIdentityContainer];
  v5 = [registeredIdentityContainer valueForKeyPath:@"ngmFullDeviceIdentity.devicePrekeys.publicPrekey.timestamp"];
  v6 = [v5 __imArrayByApplyingBlock:&stru_100BDAD40];

  return v6;
}

- (void)triggerFirewallDBCleanupWithInterval:(double)interval
{
  v4 = +[IDSFirewallStore sharedInstance];
  [v4 runCleanupWithExpirationInterval:interval];
}

- (void)triggerAllFirewallNotificationsWithHandle:(id)handle delay:(double)delay service:(id)service
{
  handleCopy = handle;
  serviceCopy = service;
  v9 = +[IDSDServiceController sharedInstance];
  v10 = v9;
  if (serviceCopy)
  {
    v11 = [v9 serviceWithIdentifier:serviceCopy];

    if (v11)
    {
      v29 = v11;
      allServices = [NSArray arrayWithObjects:&v29 count:1];
    }

    else
    {
      allServices = 0;
    }
  }

  else
  {
    allServices = [v9 allServices];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = allServices;
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
          v23 = handleCopy;
          im_dispatch_after_primary_queue();
          v17 = v17 + delay;
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)triggerAllTemporaryPhoneNotificationsWithHandle:(id)handle delay:(double)delay
{
  handleCopy = handle;
  v5 = [[IDSPhoneUser alloc] initWithLabelID:@"AAA" phoneBookNumber:handleCopy];

  v6 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:v5];
  temporaryPhoneUserWithFinishedRegistration = [(IDSTemporaryPhoneUser *)v6 temporaryPhoneUserWithFinishedRegistration];

  v10 = temporaryPhoneUserWithFinishedRegistration;
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

- (void)resetStewieStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IDSDaemon sharedInstance];
  registrationConductor = [v4 registrationConductor];

  stewieCoordinator = [registrationConductor stewieCoordinator];
  [stewieCoordinator clearAllState];
  completionCopy[2](completionCopy);
}

- (void)fetchStewieStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IDSDaemon sharedInstance];
  registrationConductor = [v4 registrationConductor];

  stewieCoordinator = [registrationConductor stewieCoordinator];
  fetchCurrentState = [stewieCoordinator fetchCurrentState];
  completionCopy[2](completionCopy, fetchCurrentState);
}

- (void)sendSenderKeyToURI:(id)i completion:(id)completion
{
  completionCopy = completion;
  iCopy = i;
  v7 = +[IDSDAccountController sharedInstance];
  v8 = +[IDSDServiceController sharedInstance];
  v9 = [v8 serviceWithIdentifier:IDSServiceNameiMessage];
  v10 = [v7 registeredAccountsOnService:v9];

  v23 = iCopy;
  v11 = [NSArray arrayWithObjects:&v23 count:1];
  v12 = [IDSQueryUtilities accountToQueryFrom:v10 fromURI:0 destinationURIs:v11 allowLocalAccount:0];

  v13 = +[IDSDaemon sharedInstance];
  senderKeyDistributionManager = [v13 senderKeyDistributionManager];

  v22 = iCopy;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  loginID = [v12 loginID];
  v17 = [IDSURI URIWithUnprefixedURI:loginID];
  v18 = +[_TtC17identityservicesd23IDSSenderKeySendContext idstool];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003F2064;
  v20[3] = &unk_100BDAD68;
  v21 = completionCopy;
  v19 = completionCopy;
  [senderKeyDistributionManager generateAndSendKeyIfNeededToURIs:v15 fromURI:v17 context:v18 completion:v20];
}

- (void)listSenderKeysForURIs:(id)is completion:(id)completion
{
  completionCopy = completion;
  isCopy = is;
  v7 = +[IDSDaemon sharedInstance];
  senderKeyDistributionManager = [v7 senderKeyDistributionManager];

  v8 = [senderKeyDistributionManager formattedSenderKeyListFor:isCopy];

  completionCopy[2](completionCopy, v8);
}

- (void)clearAllSenderKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IDSDaemon sharedInstance];
  persistenceManager = [v4 persistenceManager];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F21E8;
  v7[3] = &unk_100BDAD68;
  v8 = completionCopy;
  v6 = completionCopy;
  [persistenceManager deleteAllSenderKeysWithCompletion:v7];
}

- (void)listDonatedHandlesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IDSDaemon sharedInstance];
  senderKeyDistributionManager = [v4 senderKeyDistributionManager];

  formattedDonatedHandleList = [senderKeyDistributionManager formattedDonatedHandleList];
  completionCopy[2](completionCopy, formattedDonatedHandleList);
}

- (void)setOffGridMode:(int64_t)mode options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  offGridStateManager = [(IDSDXPCInternalTesting *)self offGridStateManager];
  [offGridStateManager setOffGridMode:mode allowOnlineEnablement:1 options:optionsCopy completion:completionCopy];
}

- (void)forceAccountSync
{
  v2 = +[IDSAccountSync sharedInstance];
  [v2 resetAndResynchronizeEverything];
}

- (void)listRegistrationHistoryWithBAADigests:(BOOL)digests completion:(id)completion
{
  digestsCopy = digests;
  completionCopy = completion;
  v8 = +[IDSRegistrationRequestTracker sharedInstance];
  v7 = [v8 eventHistoryStringWithWantsBAADigests:digestsCopy];
  (*(completion + 2))(completionCopy, v7);
}

- (void)listRegistrationEventTracesForService:(id)service summary:(BOOL)summary completion:(id)completion
{
  summaryCopy = summary;
  serviceCopy = service;
  v8 = (completion + 16);
  completionCopy = completion;
  v10 = +[IDSRegistrationEventTracing sharedInstance];
  if (serviceCopy)
  {
    v13 = serviceCopy;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v12 = [v10 fetchLastRegistrationStatesForServices:v11 summary:summaryCopy];
  (*v8)(completionCopy, v12);

  if (serviceCopy)
  {
  }
}

- (void)idsProtocolVersion:(id)version
{
  versionCopy = version;
  v6 = _IDSIDProtocolVersionNumber();
  v4 = +[IDSDAccountController sharedInstance];
  forceReregValue = [v4 forceReregValue];

  versionCopy[2](versionCopy, v6, forceReregValue);
}

- (void)sendBatchMessageProcessedForTopic:(id)topic
{
  topicCopy = topic;
  v4 = +[IDSDaemon sharedInstance];
  serverStorageStateMachine = [v4 serverStorageStateMachine];

  [serverStorageStateMachine sendBatchProcessedForTopic:topicCopy];
}

- (void)fetchXPCStateDescriptionForProcesses:(id)processes withCompletion:(id)completion
{
  processesCopy = processes;
  completionCopy = completion;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = +[IDSDaemon sharedInstance];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1003F2720;
  v15 = &unk_100BDAD90;
  v16 = processesCopy;
  v17 = v7;
  v9 = v7;
  v10 = processesCopy;
  [v8 _iterateOverConnectedListeners:&v12];

  v11 = [v9 componentsJoinedByString:{@"\n", v12, v13, v14, v15}];
  completionCopy[2](completionCopy, v11);
}

@end