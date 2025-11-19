@interface IDSKeyTransparencyVerifier
+ (BOOL)isKeyTransparencyEnabled;
+ (IDSKeyTransparencyVerifier)sharedInstance;
+ (id)keyTransparencyApplicationForServiceIdentifier:(id)a3;
+ (id)keyTransparencyServiceIdentifierForTransparencyApplication:(id)a3;
+ (id)keyTransparencyURIPrefixForServiceIdentifier:(id)a3;
+ (id)keyTransparencyVersionNumberForServiceType:(id)a3;
+ (id)strippedURIFromKeyTransparencyURI:(id)a3;
- (BOOL)_isTrustedCandidate:(id)a3 index:(id)a4 givenTrustedDevices:(id)a5;
- (BOOL)isDeviceAccountStateKeyTransparencyEligible;
- (BOOL)isKeyInKVS:(id)a3;
- (BOOL)isOptedInForServiceIdentifier:(id)a3;
- (BOOL)ktShouldClearCacheOnOptInOut;
- (IDSKeyTransparencyVerifier)init;
- (IDSKeyTransparencyVerifier)initWithPolicy:(id)a3 serviceToVerifier:(id)a4 keyManager:(id)a5 store:(id)a6 registrationDataSource:(id)a7 internalMetricLogger:(id)a8 productionMetricLogger:(id)a9 serviceToKTOptInManager:(id)a10;
- (IDSRateLimiter)registerUpdateRateLimiter;
- (IDSRateLimiter)selfHealRateLimiter;
- (double)keyTransparencyCKContainerExpiryTime;
- (double)keyTransparencyPeerUpdateLastResortFetchInterval;
- (double)ktCacheClearRequestLimitTime;
- (double)ktRegisterUpdateLimitTime;
- (id)SHA256HashForKeyTransparencyTrustedDevice:(id)a3;
- (id)SHA256HashForKeyTransparencyTrustedService:(id)a3;
- (id)SHA256HashForKeyTransparencyTrustedServices:(id)a3;
- (id)_IDSEndpointTransparencyStatesForKTLoggableDatas:(id)a3 index:(id)a4;
- (id)_IDSProtoKeyTransparencyTrustedDeviceForKeyTransparencyIndex:(id)a3 entry:(id)a4;
- (id)_KTDataForIDSKeyTransparencyEntry:(id)a3;
- (id)_KTDatasForIDSKeyTransparencyEntries:(id)a3;
- (id)_KTDatasForIDSProtoKeyTransparencyTrustedDevices:(id)a3 serviceIdentifier:(id)a4;
- (id)_clientErrorForKTResult:(unint64_t)a3 underlyingError:(id)a4;
- (id)_clientErrorWithCode:(int64_t)a3 debugDescription:(id)a4 underlyingError:(id)a5;
- (id)_currentPeerVerificationResultsForQueriedIndex:(id)a3 ticket:(id)a4;
- (id)_currentVerificationResultsForRegisteredIndex:(id)a3 ticket:(id)a4;
- (id)_fetchCurrentKVS;
- (id)_fetchExpiredEntriesFromKVS;
- (id)_keyTransparencyVerifierForServiceIdentifier:(id)a3;
- (id)_mergeCloudKitTrustedDevices:(id)a3 accountKeyTrustedDevices:(id)a4;
- (id)_pruneTrustedDevice:(id)a3 givenEligibleServiceIdentifiers:(id)a4;
- (id)_transparencyTicketForQueryResultsWithIndex:(id)a3 verificationState:(id)a4 entries:(id)a5;
- (id)_verifyKeyTransparencyOfRegisteredIndex:(id)a3 verificationState:(id)a4 entry:(id)a5;
- (id)currentPeerVerificationResultsForQueriedIndex:(id)a3 ticket:(id)a4;
- (id)currentVerificationResultsForRegisteredIndex:(id)a3 ticket:(id)a4;
- (id)fetchKTEligibleServices;
- (id)fetchTrustedDevicesFromKVS;
- (id)forceSyncKVS;
- (id)transparencyTicketForQueryResultsWithIndex:(id)a3 verificationState:(id)a4 entries:(id)a5 localURI:(id)a6;
- (id)transparencyTicketForRegistrationWithIndex:(id)a3 verificationState:(id)a4 entry:(id)a5;
- (int64_t)_IDSEndpointTransparencyVerificationStateForKTResult:(unint64_t)a3;
- (int64_t)_IDSKTAccountStatusForKTAccountStatus:(unint64_t)a3;
- (unint64_t)_numberOfMatchesForCandidates:(id)a3 index:(id)a4 trustedDevices:(id)a5;
- (unint64_t)ktCacheClearRequestLimit;
- (unint64_t)ktRegisterUpdateRequestLimit;
- (void)_fetchVerificationInfoForService:(id)a3 forURIs:(id)a4 localURI:(id)a5 preventNewQuery:(BOOL)a6 forSelfVerification:(BOOL)a7 withCompletion:(id)a8;
- (void)_forceVerificationWithIndex:(id)a3 ticket:(id)a4 completion:(id)a5;
- (void)_fulfillOrFailPromiseSeal:(id)a3 basedOnIndex:(id)a4 KTResult:(unint64_t)a5 ktLoggableDatas:(id)a6 optedIn:(BOOL)a7 error:(id)a8;
- (void)_handleKTCDPStatusUpdate:(id)a3;
- (void)_insertTrustedDeviceToKVS:(id)a3 withMetadata:(id)a4;
- (void)_kickPeerVerificationForURIs:(id)a3 localURI:(id)a4 service:(id)a5 fetchNow:(BOOL)a6 withCompletion:(id)a7;
- (void)_mutateSuccessfulSyncIndicatorOnKTLoggableDatas:(id)a3 forIndex:(id)a4;
- (void)_notifyClientOfKTVerifierResults:(id)a3 forService:(id)a4;
- (void)_presentInternalVerificationAlertWithText:(id)a3;
- (void)_removeObjectsForKeysFromKVS:(id)a3;
- (void)_submitMetricForTrustedDeviceEnrollmentWithKVSResult:(id)a3 kvsSyncTimeInterval:(double)a4;
- (void)_submitMetricsForTrustedDeviceEnrollmentWithCloudKitResult:(id)a3 cloudKitOperationTimeInterval:(double)a4 accountKeyResult:(id)a5 accountKeyOperationTimeInterval:(double)a6;
- (void)_submitMetricsForTrustedDeviceVerificationWithCloudKitResult:(id)a3 cloudKitOperationTimeInterval:(double)a4 accountKeyResult:(id)a5 accountKeyOperationTimeInterval:(double)a6 index:(id)a7 entries:(id)a8;
- (void)cacheClearRequest:(id)a3;
- (void)checkOptInEligibilityForApplication:(id)a3 andFetchSelfVerificationRequestIDWithCompletion:(id)a4;
- (void)clearCacheAndUpdatePeersForService:(id)a3 optIn:(BOOL)a4;
- (void)clearTransparencyCacheForService:(id)a3 peerURI:(id)a4;
- (void)currentPeerVerificationResultsForURIVerificationMap:(id)a3 forService:(id)a4 withCompletion:(id)a5;
- (void)fetchCurrentDeviceKVSKey:(id)a3;
- (void)fetchKTCDPStatus:(id)a3;
- (void)fetchKTRegistrationStatusWithCompletion:(id)a3;
- (void)fetchLocalDeviceTrustCircleEligibilityWithCompletion:(id)a3;
- (void)fetchLocalDeviceTrustCircleEligibleServiceIdentifiersWithCompletion:(id)a3;
- (void)fetchPeerVerificationInfoForApplication:(id)a3 forURIs:(id)a4 withCompletion:(id)a5;
- (void)fetchSelfVerificationInfoForApplication:(id)a3 withCompletion:(id)a4;
- (void)forceVerificationWithIndex:(id)a3 ticket:(id)a4 completion:(id)a5;
- (void)getCurrentRegistrationState:(id)a3 withCompletion:(id)a4;
- (void)getOptInStatesForKTApplications:(id)a3 withCompletion:(id)a4;
- (void)healSelfForApplication:(id)a3 withHealableErrors:(id)a4 withCompletion:(id)a5;
- (void)initiateKTQueryForUris:(id)a3 service:(id)a4 withCompletion:(id)a5;
- (void)kickPeerVerificationForURIs:(id)a3 service:(id)a4 localURI:(id)a5 fetchNow:(BOOL)a6 withCompletion:(id)a7;
- (void)nukeKeyTransparencyStateWithCompletion:(id)a3;
- (void)peerVerificationFinishedWithResults:(id)a3;
- (void)registrationDataNeedsUpdate;
- (void)registrationMightNeedUpdate:(id)a3;
- (void)removeAllKVSEntries;
- (void)repairKVSDeviceEntryIfNeeded;
- (void)reportAccountKeyFetchMetricForService:(id)a3 withSuccess:(BOOL)a4 isAccountMismatch:(BOOL)a5 withError:(id)a6;
- (void)sendOptInUpdateForApplications:(id)a3 withCompletion:(id)a4;
- (void)sendOptInUpdateRequest:(id)a3 withCompletion:(id)a4;
- (void)updateCurrentDeviceInKVS:(id)a3;
- (void)updateKVSWithTrustedDevices:(id)a3 withCompletion:(id)a4;
- (void)updateKeyTransparencyManagersWithKTState;
@end

@implementation IDSKeyTransparencyVerifier

+ (IDSKeyTransparencyVerifier)sharedInstance
{
  if (qword_100CBF5E0 != -1)
  {
    sub_1009336CC();
  }

  v3 = qword_100CBF5E8;

  return v3;
}

- (IDSKeyTransparencyVerifier)init
{
  v3 = objc_alloc_init(IDSKeyTransparencyPolicy);
  v4 = +[IDSRegistrationKeyManager sharedInstance];
  v5 = objc_alloc_init(IDSKeyTransparencyRegistrationDataSource);
  if ([(IDSKeyTransparencyPolicy *)v3 isKeyTransparencyEnabled])
  {
    v33 = self;
    v34 = v5;
    v35 = v4;
    v36 = v3;
    v6 = [KTVerifier alloc];
    v7 = kKTApplicationIdentifierIDS;
    v8 = [v6 initWithApplication:kKTApplicationIdentifierIDS];
    v9 = [KTVerifier alloc];
    v10 = kKTApplicationIdentifierIDSFaceTime;
    v11 = [v9 initWithApplication:kKTApplicationIdentifierIDSFaceTime];
    v12 = [KTVerifier alloc];
    v13 = kKTApplicationIdentifierIDSMultiplex;
    v14 = [v12 initWithApplication:kKTApplicationIdentifierIDSMultiplex];
    v15 = IDSiMessageKeyTransparencyService;
    v16 = IDSFaceTimeMultiKeyTransparencyService;
    v41[0] = IDSiMessageKeyTransparencyService;
    v41[1] = IDSFaceTimeMultiKeyTransparencyService;
    v32 = v8;
    v42[0] = v8;
    v42[1] = v11;
    v37 = v14;
    v38 = v11;
    v17 = IDSMultiplex1KeyTransparencyService;
    v41[2] = IDSMultiplex1KeyTransparencyService;
    v42[2] = v14;
    v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v19 = [IDSCloudKitKeyTransparencyStore alloc];
    v20 = im_primary_queue();
    v21 = [(IDSCloudKitKeyTransparencyStore *)v19 initWithQueue:v20];

    v39[0] = v15;
    v22 = [[KTOptInManager alloc] initWithApplication:v7];
    v40[0] = v22;
    v39[1] = v16;
    v23 = [[KTOptInManager alloc] initWithApplication:v10];
    v40[1] = v23;
    v39[2] = v17;
    v24 = [[KTOptInManager alloc] initWithApplication:v13];
    v40[2] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];

    if (_os_feature_enabled_impl())
    {
      v26 = +[NSNotificationCenter defaultCenter];
      self = v33;
      [v26 addObserver:v33 selector:"_handleKTCDPStatusUpdate:" name:@"TransparencyAccountStatusChanged" object:0];

      v4 = v35;
      v3 = v36;
    }

    else
    {
      v4 = v35;
      v3 = v36;
      self = v33;
    }

    v5 = v34;
    v27 = v32;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v18 = 0;
    v25 = 0;
    v21 = 0;
    v27 = 0;
  }

  if (CUTIsInternalInstall())
  {
    v28 = [IDSRTCLogger loggerWithCategory:4000];
  }

  else
  {
    v28 = 0;
  }

  v29 = +[IDSKTAnalyticsLogger logger];
  v30 = [(IDSKeyTransparencyVerifier *)self initWithPolicy:v3 serviceToVerifier:v18 keyManager:v4 store:v21 registrationDataSource:v5 internalMetricLogger:v28 productionMetricLogger:v29 serviceToKTOptInManager:v25];

  return v30;
}

- (IDSKeyTransparencyVerifier)initWithPolicy:(id)a3 serviceToVerifier:(id)a4 keyManager:(id)a5 store:(id)a6 registrationDataSource:(id)a7 internalMetricLogger:(id)a8 productionMetricLogger:(id)a9 serviceToKTOptInManager:(id)a10
{
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v17 = a10;
  v48.receiver = self;
  v48.super_class = IDSKeyTransparencyVerifier;
  v18 = [(IDSKeyTransparencyVerifier *)&v48 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_policy, a3);
    objc_storeStrong(&v19->_keyManager, a5);
    objc_storeStrong(&v19->_serviceToVerifier, a4);
    objc_storeStrong(&v19->_serviceToOptInManager, a10);
    objc_storeStrong(&v19->_keyTransparencyStore, a6);
    objc_storeStrong(&v19->_registrationDataSource, a7);
    objc_storeStrong(&v19->_internalMetricLogger, a8);
    objc_storeStrong(&v19->_productionMetricLogger, a9);
    v20 = [NSMutableDictionary dictionary:v35];
    keyTransparencyManagerClients = v19->_keyTransparencyManagerClients;
    v19->_keyTransparencyManagerClients = v20;

    kickPeerVerificationDate = v19->_kickPeerVerificationDate;
    v19->_kickPeerVerificationDate = 0;

    v23 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      KTVerifier = v19->_KTVerifier;
      keyTransparencyStore = v19->_keyTransparencyStore;
      internalMetricLogger = v19->_internalMetricLogger;
      productionMetricLogger = v19->_productionMetricLogger;
      *buf = 138413570;
      v50 = KTVerifier;
      v51 = 2112;
      v52 = @"com.apple.ids";
      v53 = 2112;
      v54 = IDSiMessageKeyTransparencyService;
      v55 = 2112;
      v56 = keyTransparencyStore;
      v57 = 2112;
      v58 = internalMetricLogger;
      v59 = 2112;
      v60 = productionMetricLogger;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Initialized IDSKeyTransparencyVerifier { KTVerifier: %@, application: %@, service: %@, keyTransparencyStore: %@, internalMetricLogger: %@, productionMetricLogger: %@ }", buf, 0x3Eu);
    }

    v28 = im_primary_base_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006E43F8;
    block[3] = &unk_100BD6ED0;
    v29 = v19;
    v47 = v29;
    dispatch_async(v28, block);

    objc_initWeak(buf, v29);
    if (_os_feature_enabled_impl())
    {
      v30 = +[IDSDiagnosticInfoHandler sharedInstance];
      v31 = v44;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1006E4408;
      v44[3] = &unk_100BD6F40;
      v32 = &v45;
      objc_copyWeak(&v45, buf);
      v44[4] = v29;
      v33 = im_primary_queue();
      [v30 registerDiagnosticInfoBlock:v44 title:@"IDS-KT-List" queue:v33];
    }

    else
    {
      v31 = v42;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1006E48E4;
      v42[3] = &unk_100BD6F68;
      v32 = &v43;
      objc_copyWeak(&v43, buf);
      v42[4] = v29;
      v30 = im_primary_queue();
      sub_1006085C4(v42, @"IDS-KT-List", v30);
    }

    objc_destroyWeak(v32);
    objc_destroyWeak(buf);
  }

  return v19;
}

- (IDSRateLimiter)selfHealRateLimiter
{
  selfHealRateLimiter = self->_selfHealRateLimiter;
  if (!selfHealRateLimiter)
  {
    v4 = [[IDSRateLimiter alloc] initWithLimit:3 timeLimit:18000.0];
    v5 = self->_selfHealRateLimiter;
    self->_selfHealRateLimiter = v4;

    selfHealRateLimiter = self->_selfHealRateLimiter;
  }

  return selfHealRateLimiter;
}

- (IDSRateLimiter)registerUpdateRateLimiter
{
  registerUpdateRateLimiter = self->_registerUpdateRateLimiter;
  if (!registerUpdateRateLimiter)
  {
    v4 = [IDSRateLimiter alloc];
    v5 = [(IDSKeyTransparencyVerifier *)self ktRegisterUpdateRequestLimit];
    [(IDSKeyTransparencyVerifier *)self ktRegisterUpdateLimitTime];
    v6 = [v4 initWithLimit:v5 timeLimit:?];
    v7 = self->_registerUpdateRateLimiter;
    self->_registerUpdateRateLimiter = v6;

    registerUpdateRateLimiter = self->_registerUpdateRateLimiter;
  }

  return registerUpdateRateLimiter;
}

+ (BOOL)isKeyTransparencyEnabled
{
  v2 = objc_alloc_init(IDSKeyTransparencyPolicy);
  v3 = [(IDSKeyTransparencyPolicy *)v2 isKeyTransparencyEnabled];

  return v3;
}

+ (id)keyTransparencyVersionNumberForServiceType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IDSKeyTransparencyPolicy);
  v5 = [(IDSKeyTransparencyPolicy *)v4 isKeyTransparencyEnabledForServiceType:v3];

  if (v5)
  {
    v6 = _IDSKeyTransparencyVersionNumber();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDeviceAccountStateKeyTransparencyEligible
{
  v3 = [(IDSKeyTransparencyVerifier *)self policy];
  v4 = [v3 isKeyTransparencyEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IDSKeyTransparencyVerifier *)self registrationDataSource];
  v6 = [v5 isiCloudSignedIn];

  return v6;
}

- (void)fetchLocalDeviceTrustCircleEligibilityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self policy];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v7 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006E51E0;
    v9[3] = &unk_100BE0FB8;
    v9[4] = self;
    v10 = v4;
    [v7 fetchAccountEligibilityForDeviceToDeviceEncryptionWithCompletion:v9];
  }

  else if (v4)
  {
    v8 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-1000 debugDescription:@"Key transparency is not enabled" underlyingError:0];
    (*(v4 + 2))(v4, 0, v8);
  }
}

- (void)fetchLocalDeviceTrustCircleEligibleServiceIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self policy];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006E5388;
    v8[3] = &unk_100BD97D8;
    v8[4] = self;
    v9 = v4;
    [(IDSKeyTransparencyVerifier *)self fetchLocalDeviceTrustCircleEligibilityWithCompletion:v8];
  }

  else if (v4)
  {
    v7 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-1000 debugDescription:@"Key transparency is not enabled" underlyingError:0];
    (*(v4 + 2))(v4, 0, v7);
  }
}

- (id)fetchKTEligibleServices
{
  v2 = [(IDSKeyTransparencyVerifier *)self registrationDataSource];
  v3 = [v2 currentLocalKeyTransparencyEligibleServiceIdentifiers];

  return v3;
}

- (id)transparencyTicketForQueryResultsWithIndex:(id)a3 verificationState:(id)a4 entries:(id)a5 localURI:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = im_primary_base_queue();
  dispatch_assert_queue_V2(v14);

  v15 = [(IDSKeyTransparencyVerifier *)self policy];
  v16 = [v10 serviceIdentifier];
  v17 = [v15 isKeyTransparencyEnabledForServiceIdentifier:v16];

  if (v17)
  {
    if ([(IDSKeyTransparencyVerifier *)self isDeviceAccountStateKeyTransparencyEligible])
    {
      v18 = [(IDSKeyTransparencyVerifier *)self registrationDataSource];
      v19 = [v10 serviceIdentifier];
      v20 = [v18 currentLocalKeyTransparencyEnrolledURIsForServiceIdentifier:v19];
      v21 = [v13 prefixedURI];
      if ([v20 containsObject:v21])
      {

LABEL_14:
        v26 = [v11 transparencyStatus];
        v27 = [v26 integerValue];

        if (v27)
        {
          v28 = @"☠️";
        }

        else
        {
          v28 = @"✅";
        }

        v29 = [v10 URI];
        v30 = [v11 transparencyStatus];
        v31 = [NSString stringWithFormat:@"🔍 🔓 %@\nKT query\n{ %@, %@ }", v28, v29, v30];
        [(IDSKeyTransparencyVerifier *)self _presentInternalVerificationAlertWithText:v31];

        v23 = [(IDSKeyTransparencyVerifier *)self _transparencyTicketForQueryResultsWithIndex:v10 verificationState:v11 entries:v12];
        goto LABEL_10;
      }

      v25 = [(IDSKeyTransparencyVerifier *)self policy];
      v34 = [v25 isKeyTransparencyPeerVerificationAllowedWithoutEnrollment];

      if (v34)
      {
        goto LABEL_14;
      }

      v22 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v10 serviceIdentifier];
        v33 = [v13 prefixedURI];
        *buf = 138412546;
        v36 = v32;
        v37 = 2112;
        v38 = v33;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Local URI is not enrolled in key transparency -- not not requesting transparency ticket { serviceIdentifier: %@, localURI: %@ }", buf, 0x16u);
      }
    }

    else
    {
      v22 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10093376C();
      }
    }
  }

  else
  {
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1009336E0(v10);
    }
  }

  v23 = 0;
LABEL_10:

  return v23;
}

- (void)kickPeerVerificationForURIs:(id)a3 service:(id)a4 localURI:(id)a5 fetchNow:(BOOL)a6 withCompletion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = im_primary_base_queue();
  dispatch_assert_queue_V2(v16);

  v17 = [(IDSKeyTransparencyVerifier *)self policy];
  v18 = [v17 isKeyTransparencyEnabledForServiceIdentifier:v13];

  if (v18)
  {
    if (![(IDSKeyTransparencyVerifier *)self isDeviceAccountStateKeyTransparencyEligible])
    {
      v25 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100933818();
      }

      v23 = self;
      v24 = -1100;
      goto LABEL_11;
    }

    v19 = [(IDSKeyTransparencyVerifier *)self registrationDataSource];
    v20 = [v19 currentLocalKeyTransparencyEnrolledURIsForServiceIdentifier:v13];
    v21 = [v14 prefixedURI];
    if ([v20 containsObject:v21])
    {

LABEL_14:
      [(IDSKeyTransparencyVerifier *)self _kickPeerVerificationForURIs:v12 localURI:v14 service:v13 fetchNow:v8 withCompletion:v15];
      goto LABEL_12;
    }

    v27 = [(IDSKeyTransparencyVerifier *)self policy];
    v28 = [v27 isKeyTransparencyPeerVerificationAllowedWithoutEnrollment];

    if (v28)
    {
      goto LABEL_14;
    }

    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Local URI is not enrolled in key transparency -- not kicking peer verification { service: %@, localURI: %@ }", buf, 0x16u);
    }
  }

  else
  {
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1009337A8();
    }
  }

  v23 = self;
  v24 = -1000;
LABEL_11:
  v26 = [(IDSKeyTransparencyVerifier *)v23 _clientErrorWithCode:v24 debugDescription:@"Key transparency is not enabled" underlyingError:0];
  v15[2](v15, &__NSArray0__struct, v26);

LABEL_12:
}

- (void)_kickPeerVerificationForURIs:(id)a3 localURI:(id)a4 service:(id)a5 fetchNow:(BOOL)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006E5C78;
    v17[3] = &unk_100BE5B78;
    v20 = v15;
    v17[4] = self;
    v18 = v12;
    v19 = v14;
    v21 = a6;
    [(IDSKeyTransparencyVerifier *)self _fetchVerificationInfoForService:v19 forURIs:v18 localURI:v13 preventNewQuery:1 forSelfVerification:0 withCompletion:v17];
  }

  else
  {
    v16 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-1300 debugDescription:@"Empty uris for _kickPeerVerificationForURIs." underlyingError:0];
    (*(v15 + 2))(v15, &__NSArray0__struct, v16);
  }
}

- (void)initiateKTQueryForUris:(id)a3 service:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = im_primary_base_queue();
  dispatch_assert_queue_V2(v11);

  if ([v8 count])
  {
    v12 = objc_alloc_init(NSMutableArray);
    v13 = [objc_opt_class() keyTransparencyURIPrefixForServiceIdentifier:v9];
    if (v13)
    {
      v23 = v10;
      v24 = v9;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          v18 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v27 + 1) + 8 * v18) prefixedURI];
            v20 = [v13 stringByAppendingString:v19];

            [v12 addObject:v20];
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v16);
      }

      v10 = v23;
      v9 = v24;
    }

    v21 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v9];
    if (v21)
    {
      v22 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v8;
        v33 = 2112;
        v34 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Calling in to start Transparency query { uris: %@ service: %@ }", buf, 0x16u);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1006E6178;
      v25[3] = &unk_100BDA9F0;
      v26 = v10;
      [v21 initiateQueryForUris:v12 completionBlock:v25];
    }
  }

  else
  {
    v12 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-1200 debugDescription:@"Empty uris for initiateKTQueryForUris." underlyingError:0];
    (*(v10 + 2))(v10, v12);
  }
}

- (id)transparencyTicketForRegistrationWithIndex:(id)a3 verificationState:(id)a4 entry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = im_primary_base_queue();
  dispatch_assert_queue_V2(v11);

  v12 = [(IDSKeyTransparencyVerifier *)self policy];
  v13 = [v8 serviceIdentifier];
  v14 = [v12 isKeyTransparencyEnabledForServiceIdentifier:v13];

  if (v14)
  {
    if ([(IDSKeyTransparencyVerifier *)self isDeviceAccountStateKeyTransparencyEligible])
    {
      v15 = [v9 transparencyStatus];
      v16 = [v15 integerValue];

      if (v16)
      {
        v17 = @"☠️";
      }

      else
      {
        v17 = @"✅";
      }

      v18 = [v8 URI];
      v19 = [v9 transparencyStatus];
      v20 = [NSString stringWithFormat:@"✏️ 🔓 %@\nKT registration\n{ %@, %@ }", v17, v18, v19];
      [(IDSKeyTransparencyVerifier *)self _presentInternalVerificationAlertWithText:v20];

      v21 = [(IDSKeyTransparencyVerifier *)self _verifyKeyTransparencyOfRegisteredIndex:v8 verificationState:v9 entry:v10];
      goto LABEL_12;
    }

    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10093376C();
    }
  }

  else
  {
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1009336E0(v8);
    }
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (id)_pruneTrustedDevice:(id)a3 givenEligibleServiceIdentifiers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [IDSProtoKeyTransparencyTrustedDevice alloc];
  v8 = [v6 data];
  v9 = [(IDSProtoKeyTransparencyTrustedDevice *)v7 initWithData:v8];

  v10 = [v6 trustedServices];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006E64B4;
  v15[3] = &unk_100BE5BA0;
  v16 = v5;
  v11 = v5;
  v12 = [v10 __imArrayByFilteringWithBlock:v15];
  v13 = [v12 mutableCopy];

  [(IDSProtoKeyTransparencyTrustedDevice *)v9 setTrustedServices:v13];

  return v9;
}

- (id)currentPeerVerificationResultsForQueriedIndex:(id)a3 ticket:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = im_primary_base_queue();
  dispatch_assert_queue_V2(v8);

  v9 = [(IDSKeyTransparencyVerifier *)self policy];
  v10 = [v6 serviceIdentifier];
  v11 = [v9 isKeyTransparencyEnabledForServiceIdentifier:v10];

  if (v11)
  {
    if ([(IDSKeyTransparencyVerifier *)self isDeviceAccountStateKeyTransparencyEligible])
    {
      v12 = [(IDSKeyTransparencyVerifier *)self _currentPeerVerificationResultsForQueriedIndex:v6 ticket:v7];
      goto LABEL_11;
    }

    v17 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100933950();
    }

    v14 = @"The local device is not eligible for key transparency due to account status";
    v15 = self;
    v16 = -1100;
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1009338C4(v6);
    }

    v14 = @"Key transparency is not enabled";
    v15 = self;
    v16 = -1000;
  }

  v18 = [(IDSKeyTransparencyVerifier *)v15 _clientErrorWithCode:v16 debugDescription:v14 underlyingError:0];
  v12 = [CUTUnsafePromise failedPromiseWithError:v18];

LABEL_11:

  return v12;
}

- (id)currentVerificationResultsForRegisteredIndex:(id)a3 ticket:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = im_primary_base_queue();
  dispatch_assert_queue_V2(v8);

  v9 = [(IDSKeyTransparencyVerifier *)self policy];
  v10 = [v6 serviceIdentifier];
  v11 = [v9 isKeyTransparencyEnabledForServiceIdentifier:v10];

  if (v11)
  {
    if ([(IDSKeyTransparencyVerifier *)self isDeviceAccountStateKeyTransparencyEligible])
    {
      v12 = [(IDSKeyTransparencyVerifier *)self _currentVerificationResultsForRegisteredIndex:v6 ticket:v7];
      goto LABEL_11;
    }

    v17 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100933A18();
    }

    v14 = @"The local device is not eligible for key transparency due to account status";
    v15 = self;
    v16 = -1100;
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10093398C(v6);
    }

    v14 = @"Key transparency is not enabled";
    v15 = self;
    v16 = -1000;
  }

  v18 = [(IDSKeyTransparencyVerifier *)v15 _clientErrorWithCode:v16 debugDescription:v14 underlyingError:0];
  v12 = [CUTUnsafePromise failedPromiseWithError:v18];

LABEL_11:

  return v12;
}

- (void)forceVerificationWithIndex:(id)a3 ticket:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = im_primary_base_queue();
  dispatch_assert_queue_V2(v11);

  v12 = [(IDSKeyTransparencyVerifier *)self policy];
  v13 = [v8 serviceIdentifier];
  v14 = [v12 isKeyTransparencyEnabledForServiceIdentifier:v13];

  if (v14)
  {
    [(IDSKeyTransparencyVerifier *)self _forceVerificationWithIndex:v8 ticket:v9 completion:v10];
  }

  else
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100933A54(v8);
    }

    if (v10)
    {
      v16 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-1000 debugDescription:@"Key transparency is not enabled" underlyingError:0];
      v10[2](v10, v16);
    }
  }
}

- (void)nukeKeyTransparencyStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Nuking KT verification state", buf, 2u);
  }

  v6 = im_primary_base_queue();
  dispatch_assert_queue_V2(v6);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(IDSKeyTransparencyVerifier *)self serviceToVerifier];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1006E6B90;
        v15[3] = &unk_100BE2338;
        v14 = v4;
        v15[4] = self;
        v16 = v14;
        [v13 clearState:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)currentPeerVerificationResultsForURIVerificationMap:(id)a3 forService:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [(IDSKeyTransparencyVerifier *)self policy];
  v13 = [v12 isKeyTransparencyEnabledForServiceIdentifier:v9];

  if (v13)
  {
    v32 = v11;
    v29 = v10;
    group = dispatch_group_create();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v8;
    v14 = v8;
    v34 = [v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v34)
    {
      v33 = *v43;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v14);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          v17 = [objc_opt_class() keyTransparencyURIPrefixForServiceIdentifier:v9];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 stringByAppendingString:v16];
            v20 = self;
            v21 = v9;
            v22 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v9];
            v23 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v14 objectForKey:v16];
              *buf = 138412546;
              v47 = v19;
              v48 = 2112;
              v49 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Fetching verification status. { uri: %@, UUID: %@ }", buf, 0x16u);
            }

            dispatch_group_enter(group);
            v25 = [v14 objectForKey:v16];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1006E70E4;
            v38[3] = &unk_100BE5BC8;
            v39 = v32;
            v40 = v16;
            v41 = group;
            [v22 getValidatePeerResult:v19 uuid:v25 completionBlock:v38];

            v9 = v21;
            self = v20;
          }
        }

        v34 = [v14 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v34);
    }

    v26 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006E72D8;
    block[3] = &unk_100BD7298;
    v10 = v29;
    v37 = v29;
    v11 = v32;
    v36 = v32;
    v27 = group;
    dispatch_group_notify(group, v26, block);

    v8 = v30;
  }

  else
  {
    v28 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v9;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Key Transparency is disabled for service, not fetching peer verification results. { serviceIdentifier: %@ }", buf, 0xCu);
    }

    v27 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-1000 debugDescription:@"Key Transparency is not enabled." underlyingError:0];
    (*(v10 + 2))(v10, v11, v27);
  }
}

- (id)_transparencyTicketForQueryResultsWithIndex:(id)a3 verificationState:(id)a4 entries:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Performing KT verification of query { index: %@, state: %@, entries: %@ }", buf, 0x20u);
  }

  v12 = im_primary_base_queue();
  dispatch_assert_queue_V2(v12);

  v13 = [(IDSKeyTransparencyVerifier *)self _KTDatasForIDSKeyTransparencyEntries:v10];
  v14 = objc_opt_class();
  v15 = [v8 serviceIdentifier];
  v16 = [v14 keyTransparencyURIPrefixForServiceIdentifier:v15];

  v36 = v13;
  if (v16)
  {
    v17 = [v8 URI];
    v18 = [v17 prefixedURI];
    v32 = v16;
    v19 = [v16 stringByAppendingString:v18];

    v20 = [v8 accountKey];
    v35 = v9;
    v21 = [v9 transparencyBlob];
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100933AE0(v19, v13);
    }

    v34 = v10;

    v23 = [v8 serviceIdentifier];
    v24 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v23];

    v37 = 0;
    v33 = v20;
    v25 = [v24 validatePeerUri:v19 accountKey:v20 loggableDatas:v13 queryResponse:v21 error:&v37];
    v26 = v37;
    v27 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v19;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Finished requesting KT ticket for query { KTURI: %@, error: %@, ticket: %@ }", buf, 0x20u);
    }

    if (v26)
    {
      v28 = @"☠️";
    }

    else
    {
      v28 = @"✅";
    }

    v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 code]);
    v30 = [NSString stringWithFormat:@"🔍 🔐 %@\nKT peer-verify ticket\n{ %@, %@ }", v28, v19, v29];
    [(IDSKeyTransparencyVerifier *)self _presentInternalVerificationAlertWithText:v30];

    v10 = v34;
    v9 = v35;
    v16 = v32;
  }

  else
  {
    v19 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100933B84(v8);
    }

    v25 = 0;
  }

  return v25;
}

- (id)_currentPeerVerificationResultsForQueriedIndex:(id)a3 ticket:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting KT verification results of query { index: %@, ticket: %@ }", buf, 0x16u);
  }

  v9 = im_primary_base_queue();
  dispatch_assert_queue_V2(v9);

  v10 = objc_alloc_init(CUTUnsafePromiseSeal);
  v11 = objc_opt_class();
  v12 = [v6 serviceIdentifier];
  v13 = [v11 keyTransparencyURIPrefixForServiceIdentifier:v12];

  v14 = [v6 URI];

  if (v7 && v14)
  {
    if (v13)
    {
      v15 = [v6 URI];
      v16 = [v15 prefixedURI];
      v17 = [v13 stringByAppendingString:v16];

      v18 = [v6 serviceIdentifier];
      v19 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v18];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1006E79F8;
      v26[3] = &unk_100BE5C30;
      v27 = v17;
      v28 = v7;
      v29 = self;
      v30 = v10;
      v31 = v6;
      v20 = v17;
      [v19 getValidatePeerResult:v20 uuid:v28 completionBlock:v26];

      goto LABEL_14;
    }

    v23 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100933C10(v6);
    }

    v22 = @"Invalid index provided (unrecognized service identifier)";
  }

  else
  {
    v21 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100933C9C(v6);
    }

    v22 = @"Peer verification requires non-nil URI and ticket";
  }

  v19 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-7000 debugDescription:v22 underlyingError:0];
  [v10 failWithError:v19];
LABEL_14:

  v24 = [v10 promise];

  return v24;
}

- (void)_forceVerificationWithIndex:(id)a3 ticket:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Forcing KT verification results of trusted devices results { index: %@, ticket: %@ }", buf, 0x16u);
  }

  v12 = im_primary_base_queue();
  dispatch_assert_queue_V2(v12);

  v13 = objc_opt_class();
  v14 = [v8 serviceIdentifier];
  v15 = [v13 keyTransparencyURIPrefixForServiceIdentifier:v14];

  if (v15)
  {
    v16 = [v8 URI];
    v17 = [v16 prefixedURI];
    v18 = [v15 stringByAppendingString:v17];

    v19 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling in to force KT validation { KTURI: %@ }", buf, 0xCu);
    }

    v20 = [v8 serviceIdentifier];
    v21 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v20];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1006E7EA8;
    v24[3] = &unk_100BE5C58;
    v25 = v18;
    v26 = v9;
    v27 = self;
    v28 = v10;
    v22 = v18;
    [v21 forceValidateUUID:v26 uri:v22 completionBlock:v24];

    goto LABEL_11;
  }

  v23 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100933D40(v8);
  }

  if (v10)
  {
    v21 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-7000 debugDescription:@"Invalid index provided (unrecognized service identifier)" underlyingError:0];
    (*(v10 + 2))(v10, v21);
LABEL_11:
  }
}

- (id)_verifyKeyTransparencyOfRegisteredIndex:(id)a3 verificationState:(id)a4 entry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = im_primary_base_queue();
  dispatch_assert_queue_V2(v11);

  v12 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Performing KT verification of registration { index: %@, state: %@, entry: %@ }", buf, 0x20u);
  }

  v13 = [(IDSKeyTransparencyVerifier *)self _KTDataForIDSKeyTransparencyEntry:v10];
  v14 = objc_opt_class();
  v15 = [v8 serviceIdentifier];
  v16 = [v14 keyTransparencyURIPrefixForServiceIdentifier:v15];

  v36 = v13;
  if (v16)
  {
    v17 = [v8 URI];
    v18 = [v17 prefixedURI];
    v32 = v16;
    v19 = [v16 stringByAppendingString:v18];

    v20 = [v8 accountKey];
    v35 = v9;
    v21 = [v9 transparencyBlob];
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100933DCC(v19, v13);
    }

    v34 = v10;

    v23 = [v8 serviceIdentifier];
    v24 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v23];

    v37 = 0;
    v33 = v20;
    v25 = [v24 validateEnrollmentUri:v19 accountKey:v20 loggableData:v13 insertResponse:v21 error:&v37];
    v26 = v37;
    v27 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v19;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Finished requesting KT ticket for registration { KTURI: %@, error: %@, ticket: %@ }", buf, 0x20u);
    }

    if (v26)
    {
      v28 = @"☠️";
    }

    else
    {
      v28 = @"✅";
    }

    v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 code]);
    v30 = [NSString stringWithFormat:@"✏️ 🔐 %@\nKT enroll ticket\n{ %@, %@ }", v28, v19, v29];
    [(IDSKeyTransparencyVerifier *)self _presentInternalVerificationAlertWithText:v30];

    v10 = v34;
    v9 = v35;
    v16 = v32;
  }

  else
  {
    v19 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100933E68(v8);
    }

    v25 = 0;
  }

  return v25;
}

- (id)_currentVerificationResultsForRegisteredIndex:(id)a3 ticket:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting KT verification results of registration { index: %@, ticket: %@ }", buf, 0x16u);
  }

  v9 = im_primary_base_queue();
  dispatch_assert_queue_V2(v9);

  v10 = objc_alloc_init(CUTUnsafePromiseSeal);
  v11 = objc_opt_class();
  v12 = [v6 serviceIdentifier];
  v13 = [v11 keyTransparencyURIPrefixForServiceIdentifier:v12];

  if (v13)
  {
    v14 = [v6 URI];
    v15 = [v14 prefixedURI];
    v16 = [v13 stringByAppendingString:v15];

    v17 = [v6 serviceIdentifier];
    v18 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v17];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1006E86B8;
    v23[3] = &unk_100BE5C80;
    v24 = v16;
    v25 = v7;
    v26 = self;
    v27 = v10;
    v28 = v6;
    v19 = v16;
    [v18 validateEnrollmentResult:v19 uuid:v25 completionBlock:v23];
  }

  else
  {
    v20 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100933E68(v6);
    }

    v18 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-7000 debugDescription:@"Invalid index provided (unrecognized service identifier)" underlyingError:0];
    [v10 failWithError:v18];
  }

  v21 = [v10 promise];

  return v21;
}

- (void)_fulfillOrFailPromiseSeal:(id)a3 basedOnIndex:(id)a4 KTResult:(unint64_t)a5 ktLoggableDatas:(id)a6 optedIn:(BOOL)a7 error:(id)a8
{
  v9 = a7;
  v19 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [(IDSKeyTransparencyVerifier *)self _clientErrorForKTResult:a5 underlyingError:a8];
  if (v16)
  {
    [v19 failWithError:v16];
  }

  else
  {
    v17 = objc_alloc_init(IDSKTVerificationResult);
    v18 = [(IDSKeyTransparencyVerifier *)self _IDSEndpointTransparencyStatesForKTLoggableDatas:v15 index:v14];
    [v17 setEndpointTransparencyStates:v18];
    [v17 setOptedIn:v9];
    [v19 fulfillWithValue:v17];
  }
}

- (void)_mutateSuccessfulSyncIndicatorOnKTLoggableDatas:(id)a3 forIndex:(id)a4
{
  v5 = a3;
  v33 = a4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v31 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v31)
  {
    v30 = *v43;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v33 URI];
        v9 = [(IDSKeyTransparencyVerifier *)self peerIDManager];
        v48 = v8;
        LOBYTE(v10) = 1;
        v11 = [NSArray arrayWithObjects:&v48 count:1];
        v12 = [v33 serviceIdentifier];
        v13 = [v9 endpointsForURIs:v11 service:v12 fromURI:v8];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v14 = [v13 objectForKeyedSubscript:v8];
        v15 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v39;
          while (2)
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v39 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v38 + 1) + 8 * j);
              if ([v19 mismatchedAccountFlag])
              {
                v10 = [v19 mismatchedAccountFlag] ^ 1;
                goto LABEL_16;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          LOBYTE(v10) = 1;
        }

LABEL_16:

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = [v13 objectForKeyedSubscript:v8];
        v21 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v21)
        {
          v22 = *v35;
          while (2)
          {
            for (k = 0; k != v21; k = k + 1)
            {
              if (*v35 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v34 + 1) + 8 * k);
              if ([v24 ktCapableFlag])
              {
                v21 = [v24 ktCapableFlag];
                goto LABEL_26;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        v25 = [(IDSKeyTransparencyVerifier *)self registrationDataSource];
        v26 = [v33 serviceIdentifier];
        v27 = [v7 deviceID];
        v28 = [v25 expectedRemoteKeyTransparencyEligibilityForServiceIdentifier:v26 pushToken:v27];

        [v7 setSuccessfulSync:(v28 == 1) & v10];
        [v7 setKtCapable:v21];
      }

      v31 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v31);
  }
}

- (id)_clientErrorForKTResult:(unint64_t)a3 underlyingError:(id)a4
{
  v6 = a4;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v8 = @"Transparency verification resulted in a failure";
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      v7 = 0;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v8 = @"Transparency results are currently pending";
    v9 = self;
    v10 = -6100;
    goto LABEL_12;
  }

  if (a3 != 3)
  {
LABEL_8:
    v8 = @"Received unknown verification result";
    goto LABEL_10;
  }

  v8 = @"Transparency verification resulted in a failure which was ignored";
LABEL_10:
  v9 = self;
  v10 = -6000;
LABEL_12:
  v7 = [(IDSKeyTransparencyVerifier *)v9 _clientErrorWithCode:v10 debugDescription:v8 underlyingError:v6];
LABEL_13:

  return v7;
}

- (void)checkOptInEligibilityForApplication:(id)a3 andFetchSelfVerificationRequestIDWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSKeyTransparencyVerifier *)self policy];
  v9 = [v8 isKeyTransparencyEnabled];

  if ((v9 & 1) == 0)
  {
    v36 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }

    v37 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1000 userInfo:0];
    goto LABEL_22;
  }

  if (![v6 isEqualToString:kKTApplicationIdentifierIDS] || (v10 = IDSiMessageKeyTransparencyService) == 0)
  {
    v38 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100933F5C();
    }

    v37 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-8001 debugDescription:@"Invalid Service for Opt in" underlyingError:0];
LABEL_22:
    v11 = v37;
    (*(v7 + 2))(v7, 0, 0, v37);
    goto LABEL_23;
  }

  v11 = v10;
  v12 = [(IDSKeyTransparencyRegistrationDataSource *)self->_registrationDataSource currentLocalKeyTransparencyEligibleServiceIdentifiers];
  v13 = [v12 containsObject:v11];

  if (v13)
  {
    v43 = v7;
    v44 = v6;
    v14 = [(IDSKeyTransparencyVerifier *)self accountController];
    v15 = [(IDSKeyTransparencyVerifier *)self serviceController];
    v42 = v11;
    v16 = [v15 serviceWithIdentifier:v11];
    v17 = [v14 accountsOnService:v16];

    v18 = objc_alloc_init(NSMutableSet);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v48 + 1) + 8 * i) registration];
          v25 = [v24 uris];
          v26 = [v25 __imArrayByApplyingBlock:&stru_100BE5CA0];

          [v18 addObjectsFromArray:v26];
        }

        v21 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v21);
    }

    v27 = [v18 allObjects];
    v28 = [IDSQueryUtilities accountToQueryFrom:v19 fromURI:0 destinationURIs:v27 allowLocalAccount:0];

    v29 = [IDSQueryUtilities URIToQueryFrom:v28 withPreferredFromURI:0];
    v30 = +[IDSFoundationLog KeyTransparency];
    v31 = v30;
    if (v29)
    {
      v7 = v43;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Performing hard query for KT opt in.", buf, 2u);
      }

      v32 = [(IDSKeyTransparencyVerifier *)self peerIDManager];
      v33 = [v18 allObjects];
      v34 = [v28 _registrationCert];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1006E9348;
      v45[3] = &unk_100BE5CC8;
      v46 = v43;
      LOBYTE(v41) = 0;
      v11 = v42;
      [v32 startQueryForURIs:v33 fromIdentity:v34 fromURI:v29 fromService:v42 forSending:0 forceToServer:1 clientRequestedForceQuery:v41 reason:@"KTOptIn" completionBlock:v45];

      v35 = v46;
    }

    else
    {
      v7 = v43;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100933F28();
      }

      v35 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8002 userInfo:0];
      (v43)[2](v43, 0, 0, v35);
      v11 = v42;
    }

    v6 = v44;
  }

  else
  {
    v39 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100933EF4();
    }

    v40 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-8003 debugDescription:@"Mismatched Account" underlyingError:0];
    (*(v7 + 2))(v7, 0, 0, v40);
  }

LABEL_23:
}

- (void)sendOptInUpdateForApplications:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSKeyTransparencyVerifier *)self policy];
  v9 = [v8 isKeyTransparencyEnabled];

  if ((v9 & 1) == 0)
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }

    v16 = [IDSKTOptInResult alloc];
    v12 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1000 userInfo:0];
    v17 = [v16 initWithSuccess:0 optedInOutURIs:0 serverSMTByURI:0 error:v12];
    goto LABEL_12;
  }

  if (![v6 count])
  {
    v18 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100934000();
    }

    v19 = [IDSKTOptInResult alloc];
    v12 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-8000 debugDescription:@"No kt applications provided for opt in status update." underlyingError:0];
    v17 = [v19 initWithSuccess:0 serverProvidedSMT:0 error:v12];
LABEL_12:
    v13 = v17;
    v7[2](v7, v17);
    goto LABEL_17;
  }

  v10 = kKTApplicationIdentifierIDS;
  v11 = [v6 objectForKey:kKTApplicationIdentifierIDS];

  if (!v11)
  {
    v20 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100933FCC();
    }

    v21 = [IDSKTOptInResult alloc];
    v14 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-8000 debugDescription:@"No kt applications provided for opt in status update." underlyingError:0];
    v22 = [v21 initWithSuccess:0 serverProvidedSMT:0 error:v14];
    v7[2](v7, v22);

    v13 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v12 = IDSiMessageKeyTransparencyService;
  v13 = [v6 objectForKey:v10];
  if (v12)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1006E9678;
    v23[3] = &unk_100BE5D18;
    v12 = v12;
    v24 = v12;
    v27 = v7;
    v25 = self;
    v13 = v13;
    v26 = v13;
    [(IDSKeyTransparencyVerifier *)self fetchLocalDeviceTrustCircleEligibleServiceIdentifiersWithCompletion:v23];

    v14 = v24;
LABEL_16:
  }

LABEL_17:
}

- (void)sendOptInUpdateRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 applicationsToOptInStatusData];

  if (v8)
  {
    v9 = [v6 applicationsToOptInStatusData];
    v10 = kKTApplicationIdentifierIDS;
    v11 = [v9 objectForKey:kKTApplicationIdentifierIDS];

    if (!v11)
    {
      v31 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100933FCC();
      }

      v32 = [IDSKTOptInResult alloc];
      v28 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-8000 debugDescription:@"No kt applications provided for opt in status update." underlyingError:0];
      v33 = [v32 initWithSuccess:0 serverProvidedSMT:0 error:v28];
      v7[2](v7, v33);

      v13 = 0;
      v24 = 0;
      goto LABEL_27;
    }

    v44 = v7;
    v43 = IDSiMessageKeyTransparencyService;
    v12 = [v6 applicationsToOptInStatusData];
    v13 = [v12 objectForKey:v10];

    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v14 = [v6 applicationsToOptInStatusData];
    v15 = [v14 allKeys];

    v16 = [v15 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v54;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v53 + 1) + 8 * i);
          v21 = [v6 applicationsToOptInStatusData];
          v22 = [v21 objectForKey:v20];

          v23 = [objc_opt_class() keyTransparencyServiceIdentifierForTransparencyApplication:v20];
          [v22 setServiceIdentifier:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v17);
    }

    v24 = v43;
    if (v43)
    {
      v25 = [v13 optInStatus];
      v26 = [v25 BOOLValue];

      v7 = v44;
      if (v26)
      {
        v27 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v58 = v43;
          v59 = 2112;
          v60 = v13;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Trying to send opt in. {serviceIdentifier: %@, optInOutStatusData: %@}", buf, 0x16u);
        }

        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1006EA040;
        v48[3] = &unk_100BE5D18;
        v24 = v43;
        v49 = v24;
        v52 = v44;
        v50 = self;
        v51 = v6;
        [(IDSKeyTransparencyVerifier *)self fetchLocalDeviceTrustCircleEligibleServiceIdentifiersWithCompletion:v48];

        v28 = v49;
      }

      else
      {
        v34 = [(IDSKeyTransparencyVerifier *)self accountController];
        v35 = [(IDSKeyTransparencyVerifier *)self serviceController];
        v36 = [v35 serviceWithIdentifier:v43];
        v28 = [v34 appleIDAccountOnService:v36];

        if (!v28 || [v28 registrationStatus] < 3 || (objc_msgSend(v28, "primaryRegistration"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "registrationCert"), v38 = objc_claimAutoreleasedReturnValue(), v38, v37, !v38))
        {
          v39 = [(IDSKeyTransparencyVerifier *)self accountController];
          v40 = [(IDSKeyTransparencyVerifier *)self serviceController];
          v41 = [v40 serviceWithIdentifier:IDSMultiplex1KeyTransparencyService];
          v42 = [v39 appleIDAccountOnService:v41];

          v28 = v42;
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1006EA40C;
        v45[3] = &unk_100BE5CF0;
        v45[4] = self;
        v24 = v43;
        v46 = v24;
        v47 = v44;
        [v28 updateKTOptInStatusWithRequest:v6 withCompletion:v45];
      }

LABEL_27:

      goto LABEL_28;
    }

    v7 = v44;
  }

  else
  {
    v29 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No Public Account Key provided for optInOutRequest.", buf, 2u);
    }

    v30 = [IDSKTOptInResult alloc];
    v24 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-8000 debugDescription:@"No kt applications provided for opt in status update." underlyingError:0];
    v13 = [v30 initWithSuccess:0 optedInOutURIs:0 serverSMTByURI:0 error:v24];
    v7[2](v7, v13);
  }

LABEL_28:
}

- (BOOL)isOptedInForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self policy];
  v6 = [v5 isKeyTransparencyEnabledForServiceIdentifier:v4];

  if (v6)
  {
    v7 = [(IDSKeyTransparencyVerifier *)self serviceToOptInManager];
    v8 = [v7 objectForKey:v4];

    if (v8)
    {
      v9 = [v8 getOptInState];
      v10 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"NO";
        if (v9)
        {
          v11 = @"YES";
        }

        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found opt in manager for service. { serviceIdentifier: %@, optInState: %@ }", &v13, 0x16u);
      }
    }

    else
    {
      v10 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No valid opt in manager found for service { serviceIdentifier: %@ }", &v13, 0xCu);
      }

      LOBYTE(v9) = 0;
    }
  }

  else
  {
    v8 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Key Transparency is not enabled for service { serviceIdentifier: %@ }", &v13, 0xCu);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)getOptInStatesForKTApplications:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = im_primary_base_queue();
  dispatch_assert_queue_V2(v8);

  if (![v6 count])
  {
LABEL_16:
    v7[2](v7, &__NSDictionary0__struct);
    goto LABEL_17;
  }

  v9 = [(IDSKeyTransparencyVerifier *)self policy];
  v10 = [v9 isKeyTransparencyEnabled];

  if ((v10 & 1) == 0)
  {
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100934068();
    }

    goto LABEL_16;
  }

  v23 = v7;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = dispatch_group_create();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v6;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        dispatch_group_enter(v12);
        v18 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling into Transparency to get opt in state for application: %@", buf, 0xCu);
        }

        v19 = [[KTOptInStateRequest alloc] initWithApplication:v17];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1006EAB58;
        v29[3] = &unk_100BE5D40;
        v29[4] = v17;
        v30 = v11;
        v31 = v12;
        [KTOptInManager getOptInState:v19 completion:v29];
      }

      v14 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v14);
  }

  v20 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006EACF4;
  block[3] = &unk_100BD7298;
  v7 = v23;
  v27 = v11;
  v28 = v23;
  v21 = v11;
  dispatch_group_notify(v12, v20, block);

  v6 = v24;
LABEL_17:
}

- (void)clearCacheAndUpdatePeersForService:(id)a3 optIn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v49 = v4;
    v7 = [(IDSKeyTransparencyVerifier *)self accountController];
    [(IDSKeyTransparencyVerifier *)self serviceController];
    v9 = v8 = v6;
    v10 = [v9 serviceWithIdentifier:v8];
    v51 = [v7 appleIDAccountOnService:v10];

    v11 = [(IDSKeyTransparencyVerifier *)self accountController];
    v12 = [(IDSKeyTransparencyVerifier *)self serviceController];
    v53 = v8;
    v13 = [v12 serviceWithIdentifier:v8];
    v14 = [v11 accountsOnService:v13];

    v15 = objc_alloc_init(NSMutableSet);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v63;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v63 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v62 + 1) + 8 * i) registration];
          v22 = [v21 uris];

          v23 = [v22 __imArrayByApplyingBlock:&stru_100BE5D60];
          [v15 addObjectsFromArray:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v18);
    }

    v52 = self;
    v50 = v16;

    v24 = objc_alloc_init(NSMutableDictionary);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v25 = v15;
    v26 = [v25 countByEnumeratingWithState:&v58 objects:v68 count:16];
    v6 = v53;
    if (v26)
    {
      v27 = v26;
      v28 = *v59;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v58 + 1) + 8 * j);
          v31 = objc_alloc_init(NSMutableSet);
          v32 = [(IDSKeyTransparencyVerifier *)v52 peerIDManager];
          v33 = [v32 activeURIsFromURI:v30 service:v6];
          v34 = [v33 mutableCopy];

          v35 = [v25 allObjects];
          [v34 removeObjectsInArray:v35];

          [v31 addObjectsFromArray:v34];
          if (v31)
          {
            CFDictionarySetValue(v24, v30, v31);
          }

          v6 = v53;
        }

        v27 = [v25 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v27);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v36 = [(__CFDictionary *)v24 allKeys];
    v37 = [v36 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v55;
      do
      {
        for (k = 0; k != v38; k = k + 1)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v54 + 1) + 8 * k);
          v42 = [(__CFDictionary *)v24 objectForKeyedSubscript:v41];
          v43 = v42;
          if (v42 && [v42 count])
          {
            v44 = [v43 allObjects];
            [v51 askPeersToClearCacheWithURIs:v44 fromURI:v41 forService:v6];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v38);
    }

    if ([(IDSKeyTransparencyVerifier *)v52 ktShouldClearCacheOnOptInOut])
    {
      v45 = [(IDSKeyTransparencyVerifier *)v52 peerIDManager];
      v46 = v45;
      if (v49)
      {
        v47 = 8;
      }

      else
      {
        v47 = 9;
      }

      [v45 forgetPeerTokensForService:v6 reason:v47];
    }

    v48 = v51;
  }

  else
  {
    v48 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Cannot clearCacheAndUpdatePeersForService if service is nil -- returning", buf, 2u);
    }
  }
}

- (void)clearTransparencyCacheForService:(id)a3 peerURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(IDSKeyTransparencyVerifier *)self _keyTransparencyVerifierForServiceIdentifier:v6];
    v10 = [objc_opt_class() keyTransparencyURIPrefixForServiceIdentifier:v6];
    v11 = [v8 prefixedURI];
    v12 = [v10 stringByAppendingString:v11];

    if (v9 && [v12 length])
    {
      v13 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling into Transparency to clear Transparency cache for peerURI: %@", buf, 0xCu);
      }

      v20 = v12;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      v19 = 0;
      v15 = [v9 clearPeerCache:v14 error:&v19];
      v16 = v19;

      v17 = +[IDSFoundationLog KeyTransparency];
      v18 = v17;
      if (!v15 || v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10093409C();
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v8;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Success clearing Transparency cache for peerURI: %@", buf, 0xCu);
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "clearTransparencyCacheForService needs a service and peerURI -- returning", buf, 2u);
    }
  }
}

- (void)fetchPeerVerificationInfoForApplication:(id)a3 forURIs:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSKeyTransparencyVerifier *)self policy];
  v12 = [v11 isKeyTransparencyEnabled];

  if (v12)
  {
    v13 = [objc_opt_class() keyTransparencyServiceIdentifierForTransparencyApplication:v8];
    v14 = v13;
    if (v13 && ![v13 isEqualToString:&stru_100C06028])
    {
      [(IDSKeyTransparencyVerifier *)self _fetchVerificationInfoForService:v14 forURIs:v9 localURI:0 preventNewQuery:0 forSelfVerification:0 withCompletion:v10];
    }

    else
    {
      v15 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100934120();
      }

      v16 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1100 userInfo:0];
      v10[2](v10, &__NSDictionary0__struct, v16);
    }
  }

  else
  {
    v17 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }

    v14 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1000 userInfo:0];
    v10[2](v10, &__NSDictionary0__struct, v14);
  }
}

- (void)_fetchVerificationInfoForService:(id)a3 forURIs:(id)a4 localURI:(id)a5 preventNewQuery:(BOOL)a6 forSelfVerification:(BOOL)a7 withCompletion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [(IDSKeyTransparencyVerifier *)self serviceController];
  v19 = [v18 serviceWithIdentifier:v14];

  v20 = [(IDSKeyTransparencyVerifier *)self accountController];
  v21 = [v20 appleIDAccountOnService:v19];

  if (_os_feature_enabled_impl() && [v14 isEqualToString:IDSServiceNameiMessage])
  {
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1009341C4();
    }

    goto LABEL_7;
  }

  if (v21)
  {
LABEL_7:
    v44 = a6;
    v42 = v9;
    v46 = v21;
    v23 = [(IDSKeyTransparencyVerifier *)self accountController];
    v47 = v19;
    v24 = [v23 accountsOnService:v19];

    v25 = [IDSQueryUtilities accountToQueryFrom:v24 fromURI:v16 destinationURIs:v15 allowLocalAccount:0];
    v26 = [IDSQueryUtilities URIToQueryFrom:v25 withPreferredFromURI:v16];
    if (v26)
    {
      v40 = v16;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1006EBAE8;
      v50[3] = &unk_100BDA848;
      v50[4] = self;
      v41 = v15;
      v27 = v15;
      v51 = v27;
      v28 = v14;
      v52 = v28;
      v29 = v26;
      v53 = v29;
      v39 = v17;
      v54 = v17;
      v30 = objc_retainBlock(v50);
      v31 = v30;
      if (v44)
      {
        (v30[2])(v30);
      }

      else
      {
        v35 = off_100BD7350;
        if (!v42)
        {
          v35 = off_100BD7348;
        }

        v36 = *v35;
        v43 = [(IDSKeyTransparencyVerifier *)self peerIDManager];
        [v25 _registrationCert];
        v37 = v45 = v14;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1006EBF00;
        v48[3] = &unk_100BE5CC8;
        v49 = v31;
        LOBYTE(v38) = 0;
        [v43 startQueryForURIs:v27 fromIdentity:v37 fromURI:v29 fromService:v28 forSending:0 forceToServer:0 clientRequestedForceQuery:v38 reason:v36 completionBlock:v48];

        v14 = v45;
      }

      v19 = v47;

      v16 = v40;
      v15 = v41;
      v17 = v39;
    }

    else
    {
      v33 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100933F28();
      }

      v34 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1100 userInfo:0];
      (*(v17 + 2))(v17, &__NSDictionary0__struct, v34);
    }

    v21 = v46;
    goto LABEL_21;
  }

  v32 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_100934190();
  }

  v24 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1100 userInfo:0];
  (*(v17 + 2))(v17, &__NSDictionary0__struct, v24);
LABEL_21:
}

- (void)fetchSelfVerificationInfoForApplication:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing fetch for self verification info.", buf, 2u);
  }

  v9 = [(IDSKeyTransparencyVerifier *)self policy];
  v10 = [v9 isKeyTransparencyEnabled];

  if (v10)
  {
    v11 = [objc_opt_class() keyTransparencyServiceIdentifierForTransparencyApplication:v6];
    v12 = v11;
    if (v11 && ![v11 isEqualToString:&stru_100C06028])
    {
      v18 = [(IDSKeyTransparencyVerifier *)self policy];
      v19 = [v18 isKeyTransparencyEnabledForServiceIdentifier:v12];

      if (v19)
      {
        v40 = v7;
        v41 = v6;
        v20 = [(IDSKeyTransparencyVerifier *)self accountController];
        v21 = [(IDSKeyTransparencyVerifier *)self serviceController];
        v39 = v12;
        v22 = [v21 serviceWithIdentifier:v12];
        v23 = [v20 accountsOnService:v22];

        v16 = objc_alloc_init(NSMutableSet);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v14 = v23;
        v24 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v48;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v14);
              }

              v28 = [*(*(&v47 + 1) + 8 * i) registration];
              v29 = [v28 uris];
              v30 = [v29 __imArrayByApplyingBlock:&stru_100BE5DA0];

              [v16 addObjectsFromArray:v30];
            }

            v25 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v25);
        }

        v31 = [v16 allObjects];
        v32 = [IDSQueryUtilities accountToQueryFrom:v14 fromURI:0 destinationURIs:v31 allowLocalAccount:0];

        v33 = [IDSQueryUtilities URIToQueryFrom:v32 withPreferredFromURI:0];
        if (v33)
        {
          [(IDSKeyTransparencyVerifier *)self repairKVSDeviceEntryIfNeeded];
          v34 = [v16 allObjects];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1006EC5CC;
          v42[3] = &unk_100BE5E30;
          v7 = v40;
          v46 = v40;
          v42[4] = self;
          v12 = v39;
          v43 = v39;
          v44 = v33;
          v45 = v32;
          [(IDSKeyTransparencyVerifier *)self _fetchVerificationInfoForService:v43 forURIs:v34 localURI:0 preventNewQuery:0 forSelfVerification:1 withCompletion:v42];

          v35 = v46;
        }

        else
        {
          v37 = +[IDSFoundationLog KeyTransparency];
          v12 = v39;
          v7 = v40;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_100933F28();
          }

          v35 = [[KTSelfVerificationInfo alloc] initWithSyncedLoggableDatas:&__NSArray0__struct uriToServerLoggableDatas:&__NSDictionary0__struct];
          v38 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:-9001 debugDescription:@"No account registered for service." underlyingError:0];
          (v40)[2](v40, v35, v38);
        }

        v6 = v41;
        goto LABEL_10;
      }

      v36 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100934268();
      }

      v14 = objc_alloc_init(KTSelfVerificationInfo);
      v15 = -1000;
    }

    else
    {
      v13 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100934120();
      }

      v14 = [[KTSelfVerificationInfo alloc] initWithSyncedLoggableDatas:&__NSArray0__struct uriToServerLoggableDatas:&__NSDictionary0__struct];
      v15 = -9003;
    }

    v16 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:v15 userInfo:0];
    (*(v7 + 2))(v7, v14, v16);
LABEL_10:

    goto LABEL_14;
  }

  v17 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100915CB4();
  }

  v12 = objc_alloc_init(KTSelfVerificationInfo);
  v14 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-1000 userInfo:0];
  (*(v7 + 2))(v7, v12, v14);
LABEL_14:
}

- (void)healSelfForApplication:(id)a3 withHealableErrors:(id)a4 withCompletion:(id)a5
{
  v5 = a5;
  v6 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "This is not a supported flow.", v7, 2u);
  }

  v5[2](v5, 0);
}

- (void)fetchKTRegistrationStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self policy];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v9 = [(IDSRegistrationKeyManager *)self->_keyManager fetchRegistrationStatusProvider];
    v4[2](v4, v9);
  }

  else
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }

    v8 = objc_alloc_init(IDSKTRegistrationStatusProvider);
    v4[2](v4, v8);
  }
}

- (void)registrationDataNeedsUpdate
{
  v3 = [(IDSKeyTransparencyVerifier *)self policy];
  v4 = [v3 isKeyTransparencyEnabled];

  if ((v4 & 1) == 0)
  {
    v9 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }

    goto LABEL_10;
  }

  v5 = [(IDSKeyTransparencyVerifier *)self registerUpdateRateLimiter];
  v6 = [v5 underLimitForItem:@"RegisterUpdateLimitKey"];

  if (!v6)
  {
    v9 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "KT registration data update is rate limited.", v10, 2u);
    }

LABEL_10:

    return;
  }

  v7 = [(IDSKeyTransparencyVerifier *)self registerUpdateRateLimiter];
  [v7 noteItem:@"RegisterUpdateLimitKey"];

  keyManager = self->_keyManager;

  [(IDSRegistrationKeyManager *)keyManager _ktDataNeedsUpdate:0];
}

- (void)registrationMightNeedUpdate:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self policy];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v7 = [(IDSKeyTransparencyVerifier *)self policy];
    v8 = [v7 isKeyTransparencyPokeWithKeysEnabled];

    v9 = +[IDSFoundationLog KeyTransparency];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "registrationMightNeedUpdate: %@", &v12, 0xCu);
      }

      if (v4)
      {
        [(IDSRegistrationKeyManager *)self->_keyManager _handleTransparencySignatureResponse:v4 error:0];
        goto LABEL_15;
      }

      v9 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100934348();
      }
    }

    else if (v10)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Key Transparency using legacy async registration path.", &v12, 2u);
    }

    [(IDSKeyTransparencyVerifier *)self registrationDataNeedsUpdate];
    goto LABEL_15;
  }

  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100915CB4();
  }

LABEL_15:
}

- (int64_t)_IDSKTAccountStatusForKTAccountStatus:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)fetchKTCDPStatus:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching KT account status from transparency", buf, 2u);
  }

  if (CUTIsInternalInstall() && +[IMUserDefaults useKeyTransparencyAccountStatusDefault])
  {
    v6 = +[IMUserDefaults keyTransparencyAccountStatusDefault];
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Default is set to return KT account status instead of calling transparency. { accountStatus: %ld }", buf, 0xCu);
    }

    [(IDSKeyTransparencyVerifier *)self setMostRecentKTCDPAccountStatus:v6];
    v4[2](v4, v6);
  }

  else
  {
    v8 = [[KTStatus alloc] initWithApplication:@"IDS"];
    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006ED530;
    v9[3] = &unk_100BE5E80;
    objc_copyWeak(&v11, buf);
    v9[4] = self;
    v10 = v4;
    [v8 getStatus:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)_handleKTCDPStatusUpdate:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification of update to KT CDP status.", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(IDSKeyTransparencyVerifier *)self accountController];
    v7 = [(IDSKeyTransparencyVerifier *)self serviceController];
    v8 = [v7 serviceWithIdentifier:@"com.apple.madrid"];
    v9 = [v6 accountsOnService:v8];

    v10 = objc_alloc_init(NSMutableArray);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          if ([v16 registrationError] == 47 || objc_msgSend(v16, "registrationError") == 48 || objc_msgSend(v16, "registrationError") == 49)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v17 = [v4 userInfo];
      v18 = [v17 objectForKey:@"accountStatus"];
      v19 = [v18 unsignedIntValue];

      v20 = [(IDSKeyTransparencyVerifier *)self _IDSKTAccountStatusForKTAccountStatus:v19];
      v21 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [NSNumber numberWithUnsignedInteger:v19];
        *buf = 138412290;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received account status update from KT. { KTAccountStatus: %@ }", buf, 0xCu);
      }

      if ((v20 - 2) >= 3)
      {
        v30 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Received account status that we have no update for.", buf, 2u);
        }
      }

      else
      {
        v23 = qword_1009AC308[v20 - 2];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v24 = v10;
        v25 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v32;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v32 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v31 + 1) + 8 * j);
              if ([v29 registrationError] != v23)
              {
                [v29 _updateRegistrationStatusWithError:v23 info:0];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v26);
        }
      }
    }

    else
    {
      v17 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No accounts need updating.", buf, 2u);
      }
    }
  }
}

- (void)peerVerificationFinishedWithResults:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  log = +[IDSFoundationLog KeyTransparency];
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v6)
    {
      *buf = 138412290;
      v60 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Received peer verification finished with results: %@", buf, 0xCu);
    }

    if (self->_kickPeerVerificationDate)
    {
      v7 = +[NSDate now];
      [v7 timeIntervalSince1970];
      v9 = v8;
      [(NSDate *)self->_kickPeerVerificationDate timeIntervalSince1970];
      v11 = v9 - v10;

      if (v11 > 0.0)
      {
        v12 = +[TransparencyAnalytics logger];
        v13 = [NSNumber numberWithDouble:v11];
        [v12 logMetric:v13 withName:@"IDSKTTimeToReceivePeerVerificationResults"];

        kickPeerVerificationDate = self->_kickPeerVerificationDate;
        self->_kickPeerVerificationDate = 0;
      }
    }

    v48 = self;
    log = objc_alloc_init(NSMutableDictionary);
    v15 = +[NSMutableDictionary dictionary];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v45 = v4;
    obj = v4;
    v16 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v54;
      v19 = kKTApplicationIdentifierIDS;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          v22 = [v21 application];
          if (v22)
          {
            v23 = v22;
            v24 = [v21 application];
            v25 = [v24 isEqualToString:v19];

            if (v25)
            {
              v26 = v15;
              v27 = objc_opt_class();
              v28 = [v21 uri];
              v29 = [v27 strippedURIFromKeyTransparencyURI:v28];

              if ([v29 length])
              {
                v30 = [IDSURI URIWithPrefixedURI:v29];
                [log setObject:v21 forKey:v30];
              }

              v31 = objc_opt_class();
              v32 = [v21 application];
              v33 = [v31 keyTransparencyServiceIdentifierForTransparencyApplication:v32];

              v15 = v26;
              if ([v33 length])
              {
                v34 = [v26 objectForKeyedSubscript:v33];

                if (!v34)
                {
                  v35 = +[NSMutableArray array];
                  [v26 setObject:v35 forKeyedSubscript:v33];
                }

                v36 = [v26 objectForKeyedSubscript:v33];
                [v36 addObject:v21];
              }
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v17);
    }

    v37 = [(IDSKeyTransparencyVerifier *)v48 peerIDManager];
    [v37 updateCachedVerifierResultsWithResults:log];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v38 = v15;
    v39 = [v38 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v50;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v50 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v49 + 1) + 8 * j);
          v44 = [v38 objectForKeyedSubscript:{v43, v45}];
          [(IDSKeyTransparencyVerifier *)v48 _notifyClientOfKTVerifierResults:v44 forService:v43];
        }

        v40 = [v38 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v40);
    }

    v4 = v45;
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Received peerVerificationFinishedWithResults but results are empty -- returning", buf, 2u);
  }
}

- (void)_notifyClientOfKTVerifierResults:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v6 && v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          v15 = objc_opt_class();
          v16 = [v14 uri];
          v17 = [v15 strippedURIFromKeyTransparencyURI:v16];

          if ([v17 length])
          {
            [v8 setObject:v14 forKey:v17];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v11);
    }

    v18 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 count];
      *buf = 138412546;
      v34 = v6;
      v35 = 2048;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Need to notify client of uriToVerifierResult { service: %@ count: %lu }", buf, 0x16u);
    }

    v20 = +[IDSDaemon sharedInstance];
    v21 = objc_alloc_init(IMMessageContext);
    v22 = [v20 broadcasterForTopic:v6 messageContext:v21];

    v28 = 0;
    v23 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v28];
    v24 = v28;
    v25 = +[IDSFoundationLog KeyTransparency];
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v26)
      {
        *buf = 138412290;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Error archiving uriToVerifierResult -- dropping { archiveError: %@ }", buf, 0xCu);
      }
    }

    else
    {
      if (v26)
      {
        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully archived uriToVerifierResultData: %@", buf, 0xCu);
      }

      [v22 ktPeerVerificationResultsUpdated:v23 forService:v6];
    }

    v5 = v27;
  }
}

- (void)cacheClearRequest:(id)a3
{
  v35 = a3;
  v4 = [(IDSKeyTransparencyVerifier *)self policy];
  v5 = [v4 isKeyTransparencyEnabled];

  v6 = +[IDSFoundationLog KeyTransparency];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v35;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received request from transparency to clear cache. { CacheClearRequest: %@ }", buf, 0xCu);
    }

    if (!self->_cacheClearRateLimiterByService)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      cacheClearRateLimiterByService = self->_cacheClearRateLimiterByService;
      self->_cacheClearRateLimiterByService = Mutable;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = [v35 requestContexts];
    v10 = [v7 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      v36 = *v45;
      v37 = v7;
      do
      {
        v13 = 0;
        v38 = v11;
        do
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v39 = v13;
          v14 = *(*(&v44 + 1) + 8 * v13);
          v15 = [v14 service];
          if (v15 && (v16 = v15, [v14 service], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"com.apple.madrid"), v17, v16, (v18 & 1) != 0))
          {
            v19 = self->_cacheClearRateLimiterByService;
            v20 = [v14 service];
            v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];

            if (!v21)
            {
              v22 = [IDSRateLimiter alloc];
              v23 = [(IDSKeyTransparencyVerifier *)self ktCacheClearRequestLimit];
              [(IDSKeyTransparencyVerifier *)self ktCacheClearRequestLimitTime];
              v21 = [v22 initWithLimit:v23 timeLimit:?];
              v24 = self->_cacheClearRateLimiterByService;
              v25 = [v14 service];
              [(NSMutableDictionary *)v24 setObject:v21 forKeyedSubscript:v25];
            }

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v26 = [v14 uris];
            v27 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v41;
              do
              {
                v30 = 0;
                do
                {
                  if (*v41 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v40 + 1) + 8 * v30);
                  if ([v21 underLimitForItem:v31])
                  {
                    [v21 noteItem:v31];
                    v32 = [(IDSKeyTransparencyVerifier *)self peerIDManager];
                    v33 = [v14 service];
                    [v32 forgetPeerTokensForURI:v31 service:v33 reason:10];
LABEL_22:

                    goto LABEL_24;
                  }

                  v32 = +[IDSFoundationLog KeyTransparency];
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    v33 = [v14 service];
                    *buf = 138412546;
                    v49 = v31;
                    v50 = 2112;
                    v51 = v33;
                    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Reached rate limit for clearing query cache. { URI: %@, Service: %@ }", buf, 0x16u);
                    goto LABEL_22;
                  }

LABEL_24:

                  v30 = v30 + 1;
                }

                while (v28 != v30);
                v34 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
                v28 = v34;
              }

              while (v34);
            }

            v12 = v36;
            v7 = v37;
            v11 = v38;
          }

          else
          {
            v21 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_1009343EC(v53, v14, &v54, v21);
            }
          }

          v13 = v39 + 1;
        }

        while ((v39 + 1) != v11);
        v11 = [v7 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v11);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100915CB4();
  }
}

- (void)updateKVSWithTrustedDevices:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Uploading trusted devices to KVS. { trustedDevices: %@ }", buf, 0xCu);
  }

  v9 = [(IDSKeyTransparencyVerifier *)self policy];
  v10 = [v9 isKeyTransparencyEnabled];

  if ((v10 & 1) == 0)
  {
    v35 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100934464();
    }

    goto LABEL_32;
  }

  v11 = [(IDSKeyTransparencyVerifier *)self policy];
  v12 = [v11 isKeyTransparencyTrustCircleEnabled];

  if ((v12 & 1) == 0)
  {
    v36 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Key transparency trust circle is not enabled -- not enrolling trusted device", buf, 2u);
    }

LABEL_32:
    v7[2](v7, 0);
    goto LABEL_37;
  }

  v39 = v7;
  v13 = [(IDSKeyTransparencyVerifier *)self registrationDataSource];
  v14 = [v13 currentLocalKeyTransparencyEligibleServiceIdentifiers];

  v40 = v6;
  v41 = objc_alloc_init(NSMutableArray);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(IDSKeyTransparencyVerifier *)self _pruneTrustedDevice:*(*(&v48 + 1) + 8 * i) givenEligibleServiceIdentifiers:v14];
        v21 = [v20 trustedServices];
        v22 = [v21 count];

        if (v22)
        {
          [v41 addObject:v20];
        }

        else
        {
          v23 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Trusted Device info has no services with data to insert into KVS.", buf, 2u);
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v17);
  }

  v24 = v41;
  if ([v41 count])
  {
    v38 = [(IDSKeyTransparencyVerifier *)self _fetchExpiredEntriesFromKVS];
    v25 = [v38 allKeys];
    [(IDSKeyTransparencyVerifier *)self _removeObjectsForKeysFromKVS:v25];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = v41;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v45;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v44 + 1) + 8 * j);
          v32 = objc_alloc_init(IDSProtoKeyTransparencyTrustedDeviceMetadata);
          v33 = [(IDSKeyTransparencyVerifier *)self serverTime];
          [v33 currentServerTimeInterval];
          [(IDSProtoKeyTransparencyTrustedDeviceMetadata *)v32 setTimestamp:?];

          [(IDSKeyTransparencyVerifier *)self _insertTrustedDeviceToKVS:v31 withMetadata:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v28);
    }

    v34 = [(IDSKeyTransparencyVerifier *)self forceSyncKVS];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1006EECDC;
    v42[3] = &unk_100BD9940;
    v7 = v39;
    v43 = v39;
    [v34 registerResultBlock:v42];

    v6 = v40;
    v24 = v41;
  }

  else
  {
    v37 = +[IDSFoundationLog KeyTransparency];
    v6 = v40;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1009344A0();
    }

    v7 = v39;
    v39[2](v39, 0);
  }

LABEL_37:
}

- (id)_fetchCurrentKVS
{
  v2 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
  v3 = [v2 fetchAllEntries];

  return v3;
}

- (void)_insertTrustedDeviceToKVS:(id)a3 withMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Inserting trusted device with metadata. {trustedDevice: %@, metadata: %@}", buf, 0x16u);
  }

  v9 = [v6 data];
  v16[0] = v9;
  v15[1] = IDSKTKVSTrustedDeviceMetadataKey;
  v10 = [v7 data];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [(IDSKeyTransparencyVerifier *)self SHA256HashForKeyTransparencyTrustedDevice:v6];
  v13 = [v12 __imHexString];

  v14 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
  [v14 insertDictionary:v11 forKey:v13];
}

- (void)_removeObjectsForKeysFromKVS:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing entries from KVS. {keys: %@}", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
        [v12 removeEntryForKey:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)fetchTrustedDevicesFromKVS
{
  v2 = [(IDSKeyTransparencyVerifier *)self _fetchCurrentKVS];
  v23 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    v22 = IDSKTKVSTrustedDeviceKey;
    v8 = &_dispatch_main_q_ptr;
    *&v5 = 138412290;
    v21 = v5;
    do
    {
      v9 = 0;
      v24 = v6;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v3 objectForKeyedSubscript:{v10, v21}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
          v13 = v8;
          v14 = [IDSProtoKeyTransparencyTrustedDevice alloc];
          v15 = v3;
          v16 = [v3 objectForKeyedSubscript:v10];
          v17 = [v16 objectForKey:v22];
          v18 = [(IDSProtoKeyTransparencyTrustedDevice *)v14 initWithData:v17];

          if (!v18)
          {
            v19 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v30 = v10;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create trusted device from KVS entry. {kvsKey: %@}", buf, 0xCu);
            }
          }

          [v23 addObject:v18];
          v8 = v13;
          v7 = v12;
          v6 = v24;
          v3 = v15;
        }

        else
        {
          v18 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v30 = v10;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "KVS entry not of expected type, skipping. {kvsKey: %@}", buf, 0xCu);
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  return v23;
}

- (id)_fetchExpiredEntriesFromKVS
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching expired entries from KVS.", buf, 2u);
  }

  v3 = [(IDSKeyTransparencyVerifier *)self _fetchCurrentKVS];
  v39 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSKeyTransparencyVerifier *)self serverTime];
  [v4 currentServerTimeInterval];
  v6 = v5;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v42;
    v12 = IDSKTKVSTrustedDeviceMetadataKey;
    *&v9 = 134218498;
    v38 = v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = [v7 objectForKeyedSubscript:{v14, v38}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [IDSProtoKeyTransparencyTrustedDeviceMetadata alloc];
          v17 = [v15 objectForKeyedSubscript:v12];
          v18 = [(IDSProtoKeyTransparencyTrustedDeviceMetadata *)v16 initWithData:v17];

          if (v18)
          {
            [v18 timestamp];
            if (v19 > 0.0)
            {
              [v18 timestamp];
              v21 = v6 - v20;
              [(IDSKeyTransparencyVerifier *)self keyTransparencyCKContainerExpiryTime];
              if (v21 <= v22)
              {
                goto LABEL_23;
              }

              v23 = +[IDSFoundationLog KeyTransparency];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                [v18 timestamp];
                *buf = v38;
                v46 = *&v6;
                v47 = 2048;
                v48 = v24;
                v49 = 2112;
                v50 = v14;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found expired entry. {currentTime: %f, trustedDeviceTimestamp: %f, entryKey: %@", buf, 0x20u);
              }

              v25 = [v7 objectForKeyedSubscript:v14];
              [v39 setObject:v25 forKey:v14];

              [v18 timestamp];
              v27 = v6 - v26;
              v28 = +[IDSFoundationLog KeyTransparency];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [NSNumber numberWithDouble:v27];
                *buf = 138412546;
                v46 = @"ktKVSExpiredEntryTime";
                v47 = 2112;
                v48 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Reporting KT Metric. {metricName: %@, timeInterval: %@}", buf, 0x16u);
              }

              v30 = +[TransparencyAnalytics logger];
              v31 = [NSNumber numberWithDouble:v27];
              [v30 logMetric:v31 withName:@"ktKVSExpiredEntryTime"];

              goto LABEL_22;
            }

            v30 = +[IDSFoundationLog KeyTransparency];
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
LABEL_22:

              goto LABEL_23;
            }

            [v18 timestamp];
            *buf = 138412546;
            v46 = v14;
            v47 = 2048;
            v48 = v35;
            v32 = v30;
            v33 = "Timestamp value for KVS entry is not valid. {kvsKey: %@, timestamp: %f}";
            v34 = 22;
          }

          else
          {
            v30 = +[IDSFoundationLog KeyTransparency];
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_22;
            }

            *buf = 138412290;
            v46 = v14;
            v32 = v30;
            v33 = "Failed to create device metadata object from KVS entry. {kvsKey: %@}";
            v34 = 12;
          }

          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buf, v34);
          goto LABEL_22;
        }

        v18 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v14;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "KVS entry not of expected type, skipping. {kvsKey: %@}", buf, 0xCu);
        }

LABEL_23:

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v36 = [v7 countByEnumeratingWithState:&v41 objects:v51 count:16];
      v10 = v36;
    }

    while (v36);
  }

  return v39;
}

- (id)forceSyncKVS
{
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trying to sync KVS.", buf, 2u);
  }

  v4 = +[NSDate date];
  v5 = objc_alloc_init(CUTUnsafePromiseSeal);
  v6 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
  v7 = [v6 forceKVSSync];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1006EF990;
  v15 = &unk_100BD87D8;
  v16 = v4;
  v17 = v5;
  v8 = v5;
  v9 = v4;
  [v7 registerResultBlock:&v12];
  v10 = [v8 promise];

  return v10;
}

- (void)removeAllKVSEntries
{
  v2 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
  [v2 removeAllEntries];
}

- (void)fetchCurrentDeviceKVSKey:(id)a3
{
  v15 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [(IDSKeyTransparencyVerifier *)self keyManager];
  v6 = [v5 kvsTrustedDevices];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(IDSKeyTransparencyVerifier *)self SHA256HashForKeyTransparencyTrustedDevice:v12];
        if (v13)
        {
          if (!v12)
          {
            goto LABEL_12;
          }

          v14 = v12;
          CFDictionarySetValue(v4, [v13 __imHexString], v14);
        }

        else
        {
          v14 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't create hash for trusted device. { trustedDevice: %@ }", buf, 0xCu);
          }
        }

LABEL_12:
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v15[2](v15, v4, 0);
}

- (void)repairKVSDeviceEntryIfNeeded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006EFF34;
  v2[3] = &unk_100BE5EA8;
  v2[4] = self;
  [(IDSKeyTransparencyVerifier *)self fetchCurrentDeviceKVSKey:v2];
}

- (void)updateCurrentDeviceInKVS:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self keyManager];
  v6 = [v5 kvsTrustedDevices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006F0160;
  v8[3] = &unk_100BDFDC0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(IDSKeyTransparencyVerifier *)self updateKVSWithTrustedDevices:v6 withCompletion:v8];
}

- (BOOL)isKeyInKVS:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self keyTransparencyStore];
  v6 = [v5 fetchEntryForKey:v4];

  v7 = +[IDSFoundationLog KeyTransparency];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v4;
      v9 = "Key found in KVS. { kvsKey: %@ }";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }

  else if (v8)
  {
    v11 = 138412290;
    v12 = v4;
    v9 = "Key not found in KVS. { kvsKey: %@ }";
    goto LABEL_6;
  }

  return v6 != 0;
}

- (void)reportAccountKeyFetchMetricForService:(id)a3 withSuccess:(BOOL)a4 isAccountMismatch:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = +[IMUserDefaults keyTransparencyAccountKeyFetchMetricDeviceID];
  v14 = +[IDSRegistrationReasonTracker sharedInstance];
  v15 = [v14 getMostRecentIDSRegistrationReason];

  if (v10)
  {
    CFDictionarySetValue(v12, @"IDSKTAccountKeyFetchService", v10);
  }

  v16 = [NSNumber numberWithBool:v8];
  if (v16)
  {
    CFDictionarySetValue(v12, @"IDSKTAccountKeyFetchSuccess", v16);
  }

  v17 = [NSNumber numberWithBool:v7];
  if (v17)
  {
    CFDictionarySetValue(v12, @"IDSKTAccountKeyFetchIsMismatchAccount", v17);
  }

  v18 = _IDSKeyTransparencyVersionNumber();
  if (v18)
  {
    CFDictionarySetValue(v12, @"KTVersion", v18);
  }

  v19 = [NSNumber numberWithInteger:v15];
  if (v19)
  {
    CFDictionarySetValue(v12, @"akRegRes", v19);
  }

  if (v13)
  {
    CFDictionarySetValue(v12, @"akFetchDID", v13);
  }

  if (CUTIsInternalInstall())
  {
    v20 = v10;
    v21 = v13;
    v22 = v11;
    v23 = v15;
    v24 = v7;
    v25 = [(IDSKeyTransparencyVerifier *)self pushHandler];
    v26 = [v25 pushToken];
    v27 = [v26 base64EncodedStringWithOptions:0];

    if (v27)
    {
      CFDictionarySetValue(v12, @"akFetchPT", v27);
    }

    LODWORD(v7) = v24;
    v15 = v23;
    v11 = v22;
    v13 = v21;
    v10 = v20;
  }

  if (!v8)
  {
    v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 code]);
    if (v28)
    {
      CFDictionarySetValue(v12, @"akFetchErr", v28);
    }

    v29 = [v11 userInfo];
    v30 = [v29 objectForKey:NSUnderlyingErrorKey];

    if (v30)
    {
      v31 = [v30 domain];
      if (v31)
      {
        CFDictionarySetValue(v12, @"akUnderlyingErrorDomain", v31);
      }

      v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 code]);
      if (v32)
      {
        CFDictionarySetValue(v12, @"akUnderlyingErr", v32);
      }
    }
  }

  v33 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    if (v7)
    {
      v35 = @"YES";
    }

    else
    {
      v35 = @"NO";
    }

    v36 = [NSNumber numberWithInteger:v15];
    v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 code]);
    v39 = 138413570;
    v40 = v10;
    v41 = 2112;
    v42 = v34;
    v43 = 2112;
    v44 = v35;
    v45 = 2112;
    v46 = v36;
    v47 = 2112;
    v48 = v37;
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Reporting IDSKTAccountKeyFetchMetric {service: %@, success: %@, isMismatchAccount: %@, regReason: %@, error: %@, metricAttributes: %@}", &v39, 0x3Eu);
  }

  v38 = +[TransparencyAnalytics logger];
  [v38 logHardFailureForEventNamed:@"IDSKTAccountKeyFetch" withAttributes:v12];
}

- (void)_submitMetricForTrustedDeviceEnrollmentWithKVSResult:(id)a3 kvsSyncTimeInterval:(double)a4
{
  v6 = a3;
  v7 = [(IDSKeyTransparencyVerifier *)self policy];
  v8 = [v7 isKeyTransparencyAnalyticsEnabled];

  if (!v8)
  {
    goto LABEL_16;
  }

  if ([v6 state] == 1)
  {
    v9 = [v6 error];
    if (v9)
    {
      v10 = v9;
LABEL_8:
      v12 = [v10 userInfo];
      v11 = [v12 objectForKey:NSUnderlyingErrorKey];

      goto LABEL_9;
    }

    v10 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:0 debugDescription:@"KVS sync error unknown." underlyingError:0];
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
LABEL_9:
  v13 = [IDSKeyTransparencyTrustedDeviceEnrollmentMetric alloc];
  v14 = _IDSKeyTransparencyVersionNumber();
  v15 = [v14 unsignedIntegerValue];
  v16 = [v6 state] == 0;
  v17 = [v10 domain];
  v18 = [v10 code];
  v19 = [v11 domain];
  v20 = v11;
  v21 = v19;
  v30 = v20;
  v22 = [v13 initWithKeyTransparencyVersion:v15 kvsSuccess:v16 kvsErrorDomain:v17 kvsErrorCode:v18 kvsSyncTimeInterval:v19 kvsUnderlyingErrorDomain:objc_msgSend(v20 kvsUnderlyingErrorCode:{"code"), a4}];

  v23 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Logging KT enrollment metric { metric: %@ }", buf, 0xCu);
  }

  v24 = [(IDSKeyTransparencyVerifier *)self policy];
  v25 = [v24 isKeyTransparencyRTCAnalyticsEnabled];

  if (v25)
  {
    v26 = [(IDSKeyTransparencyVerifier *)self internalMetricLogger];
    [v26 logMetric:v22];
  }

  v27 = [(IDSKeyTransparencyVerifier *)self policy];
  v28 = [v27 isKeyTransparencySFAnalyticsEnabled];

  if (v28)
  {
    v29 = [(IDSKeyTransparencyVerifier *)self productionMetricLogger];
    [v29 logMetric:v22];
  }

LABEL_16:
}

- (void)_submitMetricsForTrustedDeviceEnrollmentWithCloudKitResult:(id)a3 cloudKitOperationTimeInterval:(double)a4 accountKeyResult:(id)a5 accountKeyOperationTimeInterval:(double)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(IDSKeyTransparencyVerifier *)self policy];
  v13 = [v12 isKeyTransparencyAnalyticsEnabled];

  if (v13)
  {
    if ([v10 state] == 1)
    {
      v14 = [v10 error];
      v15 = [v14 userInfo];
      v16 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [v10 error];
      }

      v19 = v18;

      if (!v19)
      {
        v19 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:0 debugDescription:0 underlyingError:0];
      }
    }

    else
    {
      v19 = 0;
    }

    v59 = self;
    if ([v11 state] == 1)
    {
      v20 = [v11 error];
      v21 = [v20 userInfo];
      v22 = NSUnderlyingErrorKey;
      v23 = [v21 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [v11 error];
      }

      v27 = v25;

      if (v27)
      {
        v26 = v27;
      }

      else
      {
        v26 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:0 debugDescription:0 underlyingError:0];
      }
    }

    else
    {
      v26 = 0;
      v22 = NSUnderlyingErrorKey;
    }

    v53 = [IDSKeyTransparencyTrustedDeviceEnrollmentMetric alloc];
    v56 = _IDSKeyTransparencyVersionNumber();
    v51 = [v56 unsignedIntegerValue];
    v61 = v10;
    v50 = [v10 state] == 0;
    v49 = [v19 domain];
    v48 = [v19 code];
    v55 = [v19 userInfo];
    v54 = [v55 objectForKeyedSubscript:v22];
    v47 = [v54 domain];
    v58 = v19;
    v52 = [v19 userInfo];
    v28 = [v52 objectForKeyedSubscript:v22];
    v29 = [v28 code];
    v60 = v11;
    v30 = [v11 state] == 0;
    v31 = [v26 domain];
    v32 = [v26 code];
    v33 = [v26 userInfo];
    v34 = [v33 objectForKeyedSubscript:v22];
    v35 = [v34 domain];
    v57 = v26;
    v36 = [v26 userInfo];
    v37 = [v36 objectForKeyedSubscript:v22];
    LOBYTE(v46) = v30;
    v38 = [v53 initWithKeyTransparencyVersion:v51 cloudKitSuccess:v50 cloudKitErrorDomain:v49 cloudKitErrorCode:v48 cloudKitUnderlyingErrorDomain:v47 cloudKitUnderlyingErrorCode:v29 cloudKitOperationTimeInterval:a4 accountKeySuccess:a6 accountKeyErrorDomain:v46 accountKeyErrorCode:v31 accountKeyUnderlyingErrorDomain:v32 accountKeyUnderlyingErrorCode:v35 accountKeyOperationTimeInterval:{objc_msgSend(v37, "code")}];

    v39 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Logging KT enrollment metric { metric: %@ }", buf, 0xCu);
    }

    v40 = [(IDSKeyTransparencyVerifier *)v59 policy];
    v41 = [v40 isKeyTransparencyRTCAnalyticsEnabled];

    if (v41)
    {
      v42 = [(IDSKeyTransparencyVerifier *)v59 internalMetricLogger];
      [v42 logMetric:v38];
    }

    v43 = [(IDSKeyTransparencyVerifier *)v59 policy];
    v44 = [v43 isKeyTransparencySFAnalyticsEnabled];

    v10 = v61;
    v11 = v60;
    if (v44)
    {
      v45 = [(IDSKeyTransparencyVerifier *)v59 productionMetricLogger];
      [v45 logMetric:v38];
    }
  }
}

- (void)_submitMetricsForTrustedDeviceVerificationWithCloudKitResult:(id)a3 cloudKitOperationTimeInterval:(double)a4 accountKeyResult:(id)a5 accountKeyOperationTimeInterval:(double)a6 index:(id)a7 entries:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [(IDSKeyTransparencyVerifier *)self policy];
  LODWORD(a7) = [v18 isKeyTransparencyAnalyticsEnabled];

  if (a7)
  {
    v67 = [v17 count];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1006F16F0;
    v77[3] = &unk_100BE5ED0;
    v77[4] = self;
    v70 = v16;
    v74 = v16;
    v78 = v74;
    v69 = v17;
    v76 = [v17 __imArrayByFilteringWithBlock:v77];
    v66 = [v76 count];
    if ([v14 state] == 1)
    {
      v19 = [v14 error];
      v20 = [v19 userInfo];
      v21 = [v20 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [v14 error];
      }

      v24 = v23;

      if (!v24)
      {
        v24 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:0 debugDescription:0 underlyingError:0];
      }
    }

    else
    {
      v24 = 0;
    }

    if ([v15 state] == 1)
    {
      v25 = [v15 error];
      v26 = [v25 userInfo];
      v27 = NSUnderlyingErrorKey;
      v28 = [v26 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = [v15 error];
      }

      v31 = v30;

      if (!v31)
      {
        v31 = [(IDSKeyTransparencyVerifier *)self _clientErrorWithCode:0 debugDescription:0 underlyingError:0];
      }
    }

    else
    {
      v31 = 0;
      v27 = NSUnderlyingErrorKey;
    }

    v60 = [IDSKeyTransparencyTrustedDeviceVerificationMetric alloc];
    v65 = _IDSKeyTransparencyVersionNumber();
    v59 = [v65 unsignedIntegerValue];
    v55 = [v14 state];
    v32 = [v24 domain];
    v58 = [v24 code];
    v64 = [v24 userInfo];
    v63 = [v64 objectForKeyedSubscript:v27];
    v33 = [v63 domain];
    v62 = [v24 userInfo];
    v61 = [v62 objectForKeyedSubscript:v27];
    v54 = [v61 code];
    v51 = [v15 state];
    v73 = [v31 domain];
    v52 = [v31 code];
    v57 = [v31 userInfo];
    v56 = [v57 objectForKeyedSubscript:v27];
    v72 = [v56 domain];
    v68 = v31;
    v53 = [v31 userInfo];
    v34 = [v53 objectForKeyedSubscript:v27];
    v35 = [v34 code];
    v36 = [v14 state];
    v71 = v14;
    if (v36)
    {
      v37 = &__NSArray0__struct;
    }

    else
    {
      v37 = [v14 value];
    }

    v75 = self;
    v50 = v37;
    v38 = [(IDSKeyTransparencyVerifier *)self _numberOfMatchesForCandidates:v76 index:v74 trustedDevices:v37];
    v39 = [v15 state];
    if (v39)
    {
      v40 = &__NSArray0__struct;
    }

    else
    {
      v40 = [v15 value];
    }

    LOBYTE(v49) = v51 == 0;
    v41 = [v60 initWithKeyTransparencyVersion:v59 cloudKitSuccess:v55 == 0 cloudKitErrorDomain:v32 cloudKitErrorCode:v58 cloudKitUnderlyingErrorDomain:v33 cloudKitUnderlyingErrorCode:v54 cloudKitOperationTimeInterval:a4 accountKeySuccess:a6 accountKeyErrorDomain:v49 accountKeyErrorCode:v73 accountKeyUnderlyingErrorDomain:v52 accountKeyUnderlyingErrorCode:v72 accountKeyOperationTimeInterval:v35 numberOfTotalDevices:v67 numberOfCandidateDevices:v66 numberOfMatchesFromCloudKit:v38 numberOfMatchesFromAccountKey:{-[IDSKeyTransparencyVerifier _numberOfMatchesForCandidates:index:trustedDevices:](v75, "_numberOfMatchesForCandidates:index:trustedDevices:", v76, v74, v40)}];
    if (!v39)
    {
    }

    v14 = v71;
    if (!v36)
    {
    }

    v42 = +[IDSFoundationLog KeyTransparency];
    v17 = v69;
    v16 = v70;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Logging KT verification metric { metric: %@ }", buf, 0xCu);
    }

    v43 = [(IDSKeyTransparencyVerifier *)v75 policy];
    v44 = [v43 isKeyTransparencyRTCAnalyticsEnabled];

    if (v44)
    {
      v45 = [(IDSKeyTransparencyVerifier *)v75 internalMetricLogger];
      [v45 logMetric:v41];
    }

    v46 = [(IDSKeyTransparencyVerifier *)v75 policy];
    v47 = [v46 isKeyTransparencySFAnalyticsEnabled];

    if (v47)
    {
      v48 = [(IDSKeyTransparencyVerifier *)v75 productionMetricLogger];
      [v48 logMetric:v41];
    }
  }
}

- (unint64_t)_numberOfMatchesForCandidates:(id)a3 index:(id)a4 trustedDevices:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006F185C;
  v12[3] = &unk_100BE5EF8;
  v12[4] = self;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = [a3 __imArrayByFilteringWithBlock:v12];
  v10 = [v9 count];

  return v10;
}

- (BOOL)_isTrustedCandidate:(id)a3 index:(id)a4 givenTrustedDevices:(id)a5
{
  v7 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1006F194C;
  v16 = &unk_100BE5F68;
  v17 = a4;
  v18 = v7;
  v8 = v7;
  v9 = v17;
  v10 = [a5 __imArrayByFilteringWithBlock:&v13];
  v11 = [v10 count] != 0;

  return v11;
}

- (id)_mergeCloudKitTrustedDevices:(id)a3 accountKeyTrustedDevices:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = v7;
  if (v5)
  {
    [v7 addObjectsFromArray:v5];
  }

  if (v6)
  {
    [v8 addObjectsFromArray:v6];
  }

  v9 = [v8 allObjects];

  return v9;
}

- (id)_KTDataForIDSKeyTransparencyEntry:(id)a3
{
  v3 = a3;
  v4 = [KTLoggableData alloc];
  v5 = [v3 loggableData];
  v6 = [v4 initWithClientData:v5];

  v7 = [v3 pushToken];
  [v6 setDeviceID:v7];

  v8 = [v3 signedData];
  [v6 setSignature:v8];

  [v6 setKtCapable:{objc_msgSend(v3, "ktCapable")}];
  v9 = [v3 buildVersion];
  [v6 setBuild:v9];

  v10 = [v3 productName];
  [v6 setProduct:v10];

  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 transparencyVersion]);
  [v6 setVersion:v11];

  if (objc_opt_respondsToSelector())
  {
    [v6 setSupportConditionalEnforcement:{objc_msgSend(v3, "supportConditionalEnforcement")}];
  }

  return v6;
}

- (id)_KTDatasForIDSKeyTransparencyEntries:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IDSKeyTransparencyVerifier *)self _KTDataForIDSKeyTransparencyEntry:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_IDSProtoKeyTransparencyTrustedDeviceForKeyTransparencyIndex:(id)a3 entry:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 pushToken];
  v8 = [v6 URI];
  v9 = [v8 prefixedURI];

  v10 = [v6 serviceIdentifier];

  v11 = [v5 loggableData];
  v12 = [v5 signedData];

  if (v11)
  {
    v13 = [[IDSProtoKeyTransparencyLoggableData alloc] initWithData:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  if (v7 && v9 && v10 && v13 && v12)
  {
    v14 = objc_alloc_init(IDSProtoKeyTransparencyTrustedDevice);
    [(IDSProtoKeyTransparencyTrustedDevice *)v14 setPushToken:v7];
    v15 = objc_alloc_init(IDSProtoKeyTransparencyTrustedService);
    [(IDSProtoKeyTransparencyTrustedService *)v15 setServiceIdentifier:v10];
    [(IDSProtoKeyTransparencyTrustedService *)v15 setKtLoggableData:v13];
    [(IDSProtoKeyTransparencyTrustedService *)v15 setDeviceSignature:v12];
    v16 = [NSMutableArray arrayWithObject:v9];
    [(IDSProtoKeyTransparencyTrustedService *)v15 setUris:v16];

    v17 = [NSMutableArray arrayWithObject:v15];
    [(IDSProtoKeyTransparencyTrustedDevice *)v14 setTrustedServices:v17];
  }

  return v14;
}

- (id)_KTDatasForIDSProtoKeyTransparencyTrustedDevices:(id)a3 serviceIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSKeyTransparencyVerifier *)self serviceController];
  v9 = [v8 serviceWithIdentifier:v6];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1006F2224;
  v18 = &unk_100BE5F90;
  v19 = v6;
  v20 = v9;
  v10 = v9;
  v11 = v6;
  v12 = [v7 __imArrayByApplyingBlock:&v15];

  v13 = [(IDSKeyTransparencyVerifier *)self _KTDatasForIDSKeyTransparencyEntries:v12, v15, v16, v17, v18];

  return v13;
}

- (id)_IDSEndpointTransparencyStatesForKTLoggableDatas:(id)a3 index:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [IDSEndpointTransparencyState alloc];
        v14 = [v12 deviceID];
        v15 = [v13 initWithPushToken:v14 verificationState:{-[IDSKeyTransparencyVerifier _IDSEndpointTransparencyVerificationStateForKTResult:](self, "_IDSEndpointTransparencyVerificationStateForKTResult:", objc_msgSend(v12, "result"))}];

        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

- (int64_t)_IDSEndpointTransparencyVerificationStateForKTResult:(unint64_t)a3
{
  if (a3 > 2)
  {
    return -1;
  }

  else
  {
    return qword_1009AC320[a3];
  }
}

- (id)_keyTransparencyVerifierForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSKeyTransparencyVerifier *)self serviceToVerifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1009344D4();
    }
  }

  return v6;
}

- (id)SHA256HashForKeyTransparencyTrustedDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 pushToken], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "trustedServices"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v5 trustedServices];
    v10 = [(IDSKeyTransparencyVerifier *)self SHA256HashForKeyTransparencyTrustedServices:v9];

    if (v10)
    {
      v11 = objc_alloc_init(NSMutableData);
      v12 = [v5 pushToken];
      [v11 appendData:v12];

      [v11 appendData:v10];
      v13 = [v11 SHA256Data];

      goto LABEL_9;
    }

    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Didn't receive trusted services hash.", v16, 2u);
    }
  }

  else
  {
    v10 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No push token or trusted services. Cannot create a hash.", buf, 2u);
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)SHA256HashForKeyTransparencyTrustedServices:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = objc_alloc_init(NSMutableData);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(IDSKeyTransparencyVerifier *)self SHA256HashForKeyTransparencyTrustedService:*(*(&v27 + 1) + 8 * i)];
          if (v13)
          {
            [v6 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v10);
    }

    if ([v6 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [v6 allObjects];
      v15 = [v14 sortedArrayUsingComparator:&stru_100BE5FB0];

      v16 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v7 appendData:*(*(&v23 + 1) + 8 * j)];
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v17);
      }

      v20 = [v7 SHA256Data];
    }

    else
    {
      v21 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No trusted service hashes found, cannot create a hash.", buf, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v6 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No trusted services, cannot create a hash.", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)SHA256HashForKeyTransparencyTrustedService:(id)a3
{
  v3 = a3;
  v4 = [v3 ktLoggableData];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 serviceIdentifier];
    if (v6)
    {

LABEL_5:
      v8 = objc_alloc_init(NSMutableData);
      v9 = [v3 ktLoggableData];
      v10 = [v9 data];
      [v8 appendData:v10];

      v11 = [v3 serviceIdentifier];

      if (v11)
      {
        v12 = [v3 serviceIdentifier];
        v13 = [v12 dataUsingEncoding:4];
        [v8 appendData:v13];
      }

      if ([v3 keyIndex])
      {
        v14 = [v3 keyIndex];
        if (v14 >= 4)
        {
          v15 = [NSString stringWithFormat:@"(unknown: %i)", v14];
        }

        else
        {
          v15 = off_100BE6038[v14];
        }

        v18 = [(__CFString *)v15 dataUsingEncoding:4];
        [v8 appendData:v18];
      }

      v17 = [v8 SHA256Data];

      goto LABEL_16;
    }

    v7 = [v3 keyIndex];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v16 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100934544();
  }

  v17 = 0;
LABEL_16:

  return v17;
}

+ (id)keyTransparencyServiceIdentifierForTransparencyApplication:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kKTApplicationIdentifierIDS])
  {
    v4 = &IDSiMessageKeyTransparencyService;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:kKTApplicationIdentifierIDSFaceTime])
  {
    v4 = &IDSFaceTimeMultiKeyTransparencyService;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:kKTApplicationIdentifierIDSMultiplex])
  {
    v4 = &IDSMultiplex1KeyTransparencyService;
    goto LABEL_7;
  }

  v5 = &stru_100C06028;
LABEL_8:

  return v5;
}

+ (id)keyTransparencyApplicationForServiceIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:IDSiMessageKeyTransparencyService])
  {
    v4 = &kKTApplicationIdentifierIDS;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:IDSFaceTimeMultiKeyTransparencyService])
  {
    v4 = &kKTApplicationIdentifierIDSFaceTime;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:IDSMultiplex1KeyTransparencyService])
  {
    v4 = &kKTApplicationIdentifierIDSMultiplex;
    goto LABEL_7;
  }

  v5 = &stru_100C06028;
LABEL_8:

  return v5;
}

+ (id)keyTransparencyURIPrefixForServiceIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_100CBF600 == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100934578();
    if (v4)
    {
LABEL_3:
      v5 = [qword_100CBF5F8 objectForKeyedSubscript:v4];
      v6 = v5;
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10093458C();
  }

  v5 = 0;
  v6 = &stru_100C06028;
LABEL_7:
  v8 = v6;

  return v6;
}

+ (id)strippedURIFromKeyTransparencyURI:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = &stru_100C06028;
  if (v3)
  {
    v6 = @"im://";
    if (([v3 hasPrefix:@"im://"] & 1) == 0)
    {
      v6 = @"mp1://";
      if (([v4 hasPrefix:@"mp1://"] & 1) == 0)
      {
        v6 = @"ftm://";
        if (![v4 hasPrefix:@"ftm://"])
        {
          v6 = &stru_100C06028;
        }
      }
    }

    v5 = [v4 copy];
    if ([v4 hasPrefix:v6])
    {
      v7 = [v4 substringFromIndex:{-[__CFString length](v6, "length")}];

      v5 = v7;
    }
  }

  return v5;
}

- (void)_presentInternalVerificationAlertWithText:(id)a3
{
  v8 = a3;
  v4 = im_primary_base_queue();
  dispatch_assert_queue_V2(v4);

  v5 = [(IDSKeyTransparencyVerifier *)self policy];
  LODWORD(v4) = [v5 isKeyTransparencyUIEnabled];

  if (v4)
  {
    v6 = [IMUserNotification userNotificationWithIdentifier:@"IDSKeyTransparencyVerifier" title:@"Key Transparency" message:v8 defaultButton:@"OK" alternateButton:0 otherButton:0];
    [v6 setUsesNotificationCenter:1];
    v7 = +[IMUserNotificationCenter sharedInstance];
    [v7 addUserNotification:v6 listener:0];
  }
}

- (id)_clientErrorWithCode:(int64_t)a3 debugDescription:(id)a4 underlyingError:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7 | v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = v9;
    if (v7)
    {
      [v9 setObject:v7 forKeyedSubscript:NSDebugDescriptionErrorKey];
    }

    if (v8)
    {
      [v10 setObject:v8 forKeyedSubscript:NSUnderlyingErrorKey];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [[NSError alloc] initWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:a3 userInfo:v10];

  return v11;
}

- (double)keyTransparencyCKContainerExpiryTime
{
  v2 = 4320000.0;
  if (+[IMUserDefaults keyTransparencyCKContainerExpiryOverride]>= 1 && CUTIsInternalInstall())
  {
    return +[IMUserDefaults keyTransparencyCKContainerExpiryOverride];
  }

  return v2;
}

- (double)keyTransparencyPeerUpdateLastResortFetchInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-peer-update-last-resort-fetch-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 604800.0;
  }

  return v4;
}

- (unint64_t)ktCacheClearRequestLimit
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-clear-cache-request-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (double)ktCacheClearRequestLimitTime
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-clear-cache-request-limit-time"];

  v4 = 1800.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  return v4;
}

- (unint64_t)ktRegisterUpdateRequestLimit
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-register-update-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (double)ktRegisterUpdateLimitTime
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-register-update-limit-time"];

  v4 = 3600.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  return v4;
}

- (BOOL)ktShouldClearCacheOnOptInOut
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-clear-cache-opt-in-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getCurrentRegistrationState:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v38 = a4;
  v40 = +[NSMutableDictionary dictionary];
  v43 = IDSFaceTimeMultiKeyTransparencyService;
  v42 = IDSiMessageKeyTransparencyService;
  v41 = IDSMultiplex1KeyTransparencyService;
  v6 = 1;
  v39 = v5;
  while (v6 != 3)
  {
    if (v6 == 2)
    {
      v7 = v43;
      if (!v5)
      {
        goto LABEL_12;
      }

      v8 = [v5 servicesToFetch];
      v9 = v8;
      v7 = v43;
    }

    else
    {
      v7 = v42;
      if (!v5)
      {
        goto LABEL_12;
      }

      v8 = [v5 servicesToFetch];
      v9 = v8;
      v7 = v42;
    }

    v12 = [v8 containsObject:v7];

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (v6++ >= 3)
    {
      goto LABEL_23;
    }
  }

  v7 = v41;
  if (!v5 || ([v5 servicesToFetch], v10 = objc_claimAutoreleasedReturnValue(), v7 = v41, v11 = objc_msgSend(v10, "containsObject:", v41), v10, (v11 & 1) != 0))
  {
LABEL_12:
    v13 = v7;
    if (v13)
    {
      v14 = v13;
      v45 = v6;
      v15 = +[IDSDAccountController sharedInstance];
      v16 = +[IDSDServiceController sharedInstance];
      v44 = v14;
      v17 = [v16 serviceWithIdentifier:v14];
      v18 = [v15 accountsOnService:v17];

      v19 = objc_alloc_init(NSMutableArray);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v47;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v47 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v46 + 1) + 8 * i);
            v26 = objc_alloc_init(IDSKTState);
            v27 = [v25 registration];
            v28 = [v27 userID];
            [v26 setUserID:v28];

            [v26 setRegistrationType:{objc_msgSend(v27, "registrationType")}];
            [v26 setStatus:{objc_msgSend(v25, "registrationStatus")}];
            [v26 setOptedIn:{objc_msgSend(v27, "optedIntoKT")}];
            v29 = [v27 optedIntoKTTimestamp];
            [v26 setKtOptInTimestamp:v29];

            v30 = [v27 ktOptInErrorCode];
            [v26 setKtOptInErrorCode:v30];

            v31 = [v27 ktAccountKey];
            [v26 setKtAccountKey:v31];

            v32 = [v27 ktAccountKeyTimestamp];
            [v26 setKtAccountKeyTimestamp:v32];

            v33 = [v27 ktAccountKeyErrorCode];
            [v26 setKtAccountKeyErrorCode:v33];

            v34 = [v27 deviceSignature];
            [v26 setDeviceSignature:v34];

            v35 = [v27 ktDataForRegistration];
            [v26 setKtDataForRegistration:v35];

            v36 = [v27 dsid];
            [v26 setDsid:v36];

            [v19 addObject:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v22);
      }

      [v40 setObject:v19 forKeyedSubscript:v44];
      v5 = v39;
      v6 = v45;
    }

    goto LABEL_21;
  }

LABEL_23:
  v38[2](v38, v40);
}

- (void)updateKeyTransparencyManagersWithKTState
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006F3BB4;
  v2[3] = &unk_100BE5FF8;
  v2[4] = self;
  [(IDSKeyTransparencyVerifier *)self getCurrentRegistrationState:0 withCompletion:v2];
}

@end