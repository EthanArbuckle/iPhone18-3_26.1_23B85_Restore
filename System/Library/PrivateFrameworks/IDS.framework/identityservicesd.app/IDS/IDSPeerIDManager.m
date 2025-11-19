@interface IDSPeerIDManager
+ (BOOL)shouldUseSelfTokens;
+ (id)sharedInstance;
+ (unint64_t)dbCacheCostLimit;
+ (unint64_t)dbCacheCountLimit;
+ (unint64_t)defaultEndpointValidThroughTimeInterval;
- (BOOL)hasPeerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5 validThrough:(id)a6 outReason:(unint64_t *)a7;
- (BOOL)hasPublicKeyForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6;
- (BOOL)startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 reason:(id)a8 completionBlock:(id)a9;
- (BOOL)startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 forSending:(BOOL)a7 forceToServer:(BOOL)a8 clientRequestedForceQuery:(BOOL)a9 reason:(id)a10 completionBlock:(id)a11;
- (IDSPeerIDManager)init;
- (IDSPeerIDManager)initWithPushHandler:(id)a3 queryHandler:(id)a4 keyTransparencyVerifier:(id)a5 userDefaults:(id)a6;
- (IDSPeerIDManager)initWithPushHandler:(id)a3 queryHandler:(id)a4 restrictedPersistenceManager:(id)a5 keyTransparencyVerifier:(id)a6 userDefaults:(id)a7 dbCache:(id)a8 standardIDStatusCache:(id)a9 restrictedIDStatusCache:(id)a10;
- (double)timeToCacheURI:(id)a3 fromURI:(id)a4 service:(id)a5 forStatus:(unsigned int)a6;
- (id)_disasterModeTokenForURI:(id)a3;
- (id)_endpointsForService:(id)a3 fromURI:(id)a4 toURI:(id)a5 ignoreExpiration:(BOOL)a6 ignoreCache:(BOOL)a7 hitCache:(BOOL *)a8;
- (id)_keyTransparencyVerifierResultForService:(id)a3 fromURI:(id)a4 toURI:(id)a5;
- (id)_loadCachedPeerIDValueForKey:(id)a3 ignoreExpiration:(BOOL)a4;
- (id)_peerIDKeysForService:(id)a3;
- (id)_peerIDKeysForService:(id)a3 andFromURI:(id)a4;
- (id)_queryCacheReasonString:(int64_t)a3;
- (id)activeURIsFromURI:(id)a3 service:(id)a4;
- (id)endpointForPushToken:(id)a3 URI:(id)a4 service:(id)a5 fromURI:(id)a6;
- (id)endpointsForURIs:(id)a3 fromURI:(id)a4 service:(id)a5 fromIdentity:(id)a6 filterBehavior:(unint64_t)a7 allowRefresh:(BOOL)a8;
- (id)endpointsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5;
- (id)endpointsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5 ignoringTTL:(BOOL)a6;
- (id)endpointsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5 withCapabilities:(id)a6;
- (id)finishedQueryWithInfo:(id)a3 forURIs:(id)a4 fromURI:(id)a5 service:(id)a6;
- (id)idInfoResultForURIs:(id)a3 service:(id)a4 fromURI:(id)a5 infoType:(unint64_t)a6 infoOptions:(id)a7 idStatusUpdates:(id)a8;
- (id)keyTransparencyContextForService:(id)a3 fromURI:(id)a4 toURI:(id)a5;
- (id)lightDescriptionForVerifierResult:(id)a3;
- (id)loadAllStatusesForService:(id)a3;
- (id)loadStatusForService:(id)a3 URI:(id)a4;
- (id)peerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5;
- (id)persistenceManagerForService:(id)a3;
- (id)persistenceManagers;
- (id)pleaseDontCopyCacheDictionaryRepresentation;
- (id)publicDeviceIdentityContainerForPushToken:(id)a3;
- (id)publicKeyForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6;
- (id)queryDateForService:(id)a3 fromURI:(id)a4 toURI:(id)a5;
- (id)senderCorrelationIdentifierForURI:(id)a3 fromURI:(id)a4 service:(id)a5;
- (id)senderCorrelationIdentifierForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6;
- (id)sessionTokenForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6 expirationDate:(id *)a7 refreshDate:(id *)a8 fromIdentity:(id)a9 includeSelfDevice:(BOOL)a10;
- (id)sessionTokensForURIs:(id)a3 fromURI:(id)a4 service:(id)a5 fromIdentity:(id)a6 includeSelfDevice:(BOOL)a7 fullyRemoveSelfDevice:(BOOL)a8 allowRefresh:(BOOL)a9;
- (id)shortHandleForURI:(id)a3 fromURI:(id)a4;
- (id)uriForShortHandle:(id)a3;
- (id)urisMatchingPushToken:(id)a3 service:(id)a4;
- (id)verifierResultsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5;
- (int64_t)_valueOfProperty:(id)a3 forURI:(id)a4 pushToken:(id)a5 fromURI:(id)a6 service:(id)a7;
- (void)_setDisasterModeToken:(id)a3 forURI:(id)a4;
- (void)_updateKTContext:(id)a3 forURI:(id)a4 manager:(id)a5;
- (void)addClientDataUpdateBlock:(id)a3 forToken:(id)a4;
- (void)addCompletionBlock:(id)a3 forToken:(id)a4;
- (void)addEndpointQueryCompletionBlock:(id)a3 forToken:(id)a4 queue:(id)a5;
- (void)addPurgeClientDataBlock:(id)a3 forToken:(id)a4;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)clearCacheAndPersistImmediately:(BOOL)a3;
- (void)dealloc;
- (void)deleteAllStatusesForService:(id)a3;
- (void)deleteStatus:(id)a3;
- (void)deleteStatusCache;
- (void)deleteStatusForService:(id)a3 URI:(id)a4;
- (void)deleteStatusesForServices:(id)a3 URIs:(id)a4;
- (void)endpointsForURIs:(id)a3 serviceIdentifier:(id)a4 localURI:(id)a5 completion:(id)a6 queue:(id)a7;
- (void)forgetPeerTokensForService:(id)a3 reason:(int64_t)a4;
- (void)forgetPeerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5 reason:(int64_t)a6;
- (void)forgetPeerTokensForURI:(id)a3 fromURI:(id)a4 services:(id)a5 reason:(int64_t)a6;
- (void)forgetPeerTokensForURI:(id)a3 service:(id)a4 reason:(int64_t)a5;
- (void)forgetPeerTokensForURIs:(id)a3 services:(id)a4 reason:(int64_t)a5;
- (void)notePeerToken:(id)a3 forURI:(id)a4 fromURI:(id)a5 service:(id)a6;
- (void)performCleanupTasks;
- (void)removeClientDataUpdateBlockForToken:(id)a3;
- (void)removeCompletionBlockForToken:(id)a3;
- (void)removeEndpointQueryCompletionBlockForToken:(id)a3;
- (void)removePurgeClientDataBlockForToken:(id)a3;
- (void)saveStatus:(id)a3;
- (void)setPersistenceManager:(id)a3;
- (void)updateCachedVerifierResultsWithResults:(id)a3;
@end

@implementation IDSPeerIDManager

+ (id)sharedInstance
{
  if (qword_100CBCDD0 != -1)
  {
    sub_100019E5C();
  }

  v3 = qword_100CBCDD8;

  return v3;
}

+ (BOOL)shouldUseSelfTokens
{
  if (IMGetDomainBoolForKey())
  {
    return 1;
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:@"vc-disaster-sender-self-tokens"];
  v2 = [v4 intValue] > 0;

  return v2;
}

- (id)persistenceManagers
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_swiftDataManager)
  {
    [v3 addObject:?];
  }

  if (self->_restrictedPersistenceManager)
  {
    [v4 addObject:?];
  }

  return v4;
}

+ (unint64_t)dbCacheCostLimit
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ids-sd-dbcache-endpoint-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 10000;
  }

  return v4;
}

+ (unint64_t)dbCacheCountLimit
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ids-sd-dbcache-entry-limit"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 3000;
  }

  return v4;
}

+ (unint64_t)defaultEndpointValidThroughTimeInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ids-endpoint-vt-time-interval"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 200;
  }

  return v4;
}

- (IDSPeerIDManager)init
{
  v3 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v4 = [[IDSPeerIDQueryDataSource alloc] initWithPeerIDManager:self];
  v5 = [[IDSPeerIDQueryHandler alloc] initWithDelegate:self dataSource:v4];
  v6 = +[IDSKeyTransparencyVerifier sharedInstance];
  v7 = +[IMUserDefaults sharedDefaults];
  v8 = [(IDSPeerIDManager *)self initWithPushHandler:v3 queryHandler:v5 keyTransparencyVerifier:v6 userDefaults:v7];

  return v8;
}

- (IDSPeerIDManager)initWithPushHandler:(id)a3 queryHandler:(id)a4 keyTransparencyVerifier:(id)a5 userDefaults:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(NSCache);
  [v14 setTotalCostLimit:{+[IDSPeerIDManager dbCacheCountLimit](IDSPeerIDManager, "dbCacheCountLimit")}];
  [v14 setCountLimit:{+[IDSPeerIDManager dbCacheCountLimit](IDSPeerIDManager, "dbCacheCountLimit")}];
  v15 = objc_alloc_init(NSCache);
  v16 = [(IDSPeerIDManager *)self initWithPushHandler:v13 queryHandler:v12 restrictedPersistenceManager:0 keyTransparencyVerifier:v11 userDefaults:v10 dbCache:v14 standardIDStatusCache:v15 restrictedIDStatusCache:0];

  return v16;
}

- (IDSPeerIDManager)initWithPushHandler:(id)a3 queryHandler:(id)a4 restrictedPersistenceManager:(id)a5 keyTransparencyVerifier:(id)a6 userDefaults:(id)a7 dbCache:(id)a8 standardIDStatusCache:(id)a9 restrictedIDStatusCache:(id)a10
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v17 = a10;
  v39.receiver = self;
  v39.super_class = IDSPeerIDManager;
  v18 = [(IDSPeerIDManager *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pushHandler, a3);
    objc_storeStrong(&v19->_queryHandler, a4);
    objc_storeStrong(&v19->_restrictedPersistenceManager, a5);
    objc_storeStrong(&v19->_keyTransparencyVerifier, a6);
    objc_storeStrong(&v19->_userDefaults, a7);
    objc_storeStrong(&v19->_dbCache, a8);
    [(NSCache *)v19->_dbCache setDelegate:v19];
    objc_storeStrong(&v19->_standardIDStatusCache, a9);
    [(NSCache *)v19->_standardIDStatusCache setDelegate:v19];
    objc_storeStrong(&v19->_restrictedIDStatusCache, a10);
    [(NSCache *)v19->_restrictedIDStatusCache setDelegate:v19];
    objc_initWeak(&location, v19);
    if (_os_feature_enabled_impl())
    {
      v20 = +[IDSDiagnosticInfoHandler sharedInstance];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100310130;
      v35[3] = &unk_100BD6F40;
      v21 = &v37;
      objc_copyWeak(&v37, &location);
      v36 = v19;
      v22 = im_primary_queue();
      [v20 registerDiagnosticInfoBlock:v35 title:@"IDS-list" queue:v22];
      v23 = &v36;
    }

    else
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10031092C;
      v32[3] = &unk_100BD6F68;
      v21 = &v34;
      objc_copyWeak(&v34, &location);
      v33 = v19;
      v20 = im_primary_queue();
      sub_1006085C4(v32, @"IDS-list", v20);
      v23 = &v33;
    }

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  return v19;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IDSPeerIDManager;
  [(IDSPeerIDManager *)&v4 dealloc];
}

- (void)setPersistenceManager:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trying to set a nil persistenceManager on the class. Something is seriously wrong", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  swiftDataManager = self->_swiftDataManager;
  self->_swiftDataManager = v4;
}

- (id)_disasterModeTokenForURI:(id)a3
{
  v4 = a3;
  v5 = [v4 prefixedURI];
  v6 = [v5 length];

  if (v6)
  {
    disasterModeTokens = self->_disasterModeTokens;
    v8 = [v4 prefixedURI];
    v9 = [(NSMutableDictionary *)disasterModeTokens objectForKey:v8];

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "   Using disaster mode token for URI: %@   token: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setDisasterModeToken:(id)a3 forURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_disasterModeTokens allKeys];
  if ([v8 count] >= 5)
  {
    disasterModeTokens = self->_disasterModeTokens;
    v10 = [v8 __imFirstObject];
    [(NSMutableDictionary *)disasterModeTokens removeObjectForKey:v10];
  }

  if (!self->_disasterModeTokens)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = self->_disasterModeTokens;
    self->_disasterModeTokens = Mutable;
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "   Setting disaster mode token for URI: %@   token: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v14 = v6;
  if (v14)
  {
    v15 = self->_disasterModeTokens;
    v16 = [v7 prefixedURI];
    CFDictionarySetValue(v15, v16, v14);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100914E24(v7);
  }
}

- (id)persistenceManagerForService:(id)a3
{
  v4 = a3;
  if (self->_restrictedPersistenceManager)
  {
    v5 = IDSShouldUseRestrictedLoggingForService();
    p_swiftDataManager = &self->_swiftDataManager;
    if (v5)
    {
      p_swiftDataManager = &self->_restrictedPersistenceManager;
    }
  }

  else
  {
    p_swiftDataManager = &self->_swiftDataManager;
  }

  v7 = *p_swiftDataManager;
  v8 = *p_swiftDataManager;

  return v7;
}

- (id)finishedQueryWithInfo:(id)a3 forURIs:(id)a4 fromURI:(id)a5 service:(id)a6
{
  v170 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v162 = +[NSDate now];
  v167 = objc_alloc_init(NSMutableDictionary);
  v174 = objc_alloc_init(NSMutableDictionary);
  v157 = [(IDSPeerIDManager *)self persistenceManagerForService:v11];
  v273 = 0u;
  v272 = 0u;
  v271 = 0u;
  v270 = 0u;
  obj = v9;
  v168 = [obj countByEnumeratingWithState:&v270 objects:v292 count:16];
  if (v168)
  {
    v166 = *v271;
    v194 = IDSGameCenterContactsAssociationID;
    v193 = IDSGameCenterContactsSharingState;
    v192 = IDSGameCenterContactsLastUpdatedDate;
    v199 = _IDSIdentityClientDataMessageProtectionIdentityKey;
    v191 = IDSRegistrationPropertyShowPeerErrors;
    v176 = _IDSIdentityClientDataDevicePublicIdentityKey;
    v177 = _IDSIdentityClientDataGroupCryptoVersionNumberKey;
    v182 = _IDSIdentityClientDataMessageProtectionNGMDevicePrekeyDataKey;
    v175 = _IDSIdentityClientDataMessageProtectionNGMVersionNumberKey;
    v180 = _IDSIdentityClientDataMessageProtectionNGMWebPublicIdentityKey;
    do
    {
      v12 = 0;
      do
      {
        if (*v271 != v166)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v169 = v12;
        v14 = *(*(&v270 + 1) + 8 * v12);
        v15 = [v14 prefixedURI];
        v172 = [v170 objectForKey:v15];

        v171 = [v172 objectForKey:@"identities"];
        v202 = objc_alloc_init(IDSEndpointURIProperties);
        v16 = [v172 objectForKey:@"sender-correlation-identifier"];
        [v202 setSenderCorrelationIdentifier:v16];

        v17 = [v172 objectForKey:@"short-handle"];
        [v202 setShortHandle:v17];

        if (v172)
        {
          v18 = v170 != 0;
        }

        else
        {
          v18 = 0;
        }

        if (v11 != 0 && v18 && [v171 count])
        {
          v179 = [v172 _stringForKey:@"anonymized-sender-id"];
          v19 = [v172 _numberForKey:@"biz-trusted"];
          v178 = [v19 BOOLValue];

          v159 = [v172 objectForKey:@"kt-blob"];
          v163 = [v172 objectForKey:@"kt-status"];
          v186 = [v172 objectForKey:@"kt-account-key"];
          v161 = [v172 objectForKey:@"kt-opt-in"];
          v164 = [v172 objectForKey:@"server-time"];
          v20 = [v161 BOOLValue];
          if (v163)
          {
            v21 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413314;
              v283 = v11;
              v284 = 2112;
              v285 = v14;
              v286 = 2112;
              v287 = v186;
              v288 = 2112;
              v289 = v163;
              v290 = 2112;
              v291 = v159;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found KT status in query result { service: %@, URI: %@, KTAccountID: %@, KTStatus: %@, KTBlob: %@ }", buf, 0x34u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v164 doubleValue];
            v23 = [NSDate dateWithTimeIntervalSince1970:v22 / 1000.0];

            v162 = v23;
          }

          if (v14)
          {
            if (!v186)
            {
              v24 = [v14 prefixedURI];
              v25 = [v24 _md5Hash];
              v186 = [v25 dataUsingEncoding:4];

              v26 = +[IDSFoundationLog KeyTransparency];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v283 = v186;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Per-URI KT account identifier is missing from the IDS response, which may cause KT verification failures -- using URI hash instead { KTAccountKey: %@ }", buf, 0xCu);
              }
            }

            v160 = [[IDSKeyTransparencyIndex alloc] initWithServiceIdentifier:v11 accountKey:v186 URI:v14];
          }

          else
          {
            v160 = 0;
          }

          v184 = objc_alloc_init(NSMutableArray);
          v190 = objc_alloc_init(NSMutableArray);
          v269 = 0u;
          v268 = 0u;
          v267 = 0u;
          v266 = 0u;
          v183 = v171;
          v197 = [v183 countByEnumeratingWithState:&v266 objects:v281 count:16];
          v158 = v20;
          if (v197)
          {
            v209 = 0;
            v195 = *v267;
            v27 = @"NO";
            if (v20)
            {
              v27 = @"YES";
            }

            v185 = v27;
            do
            {
              v28 = 0;
              do
              {
                if (*v267 != v195)
                {
                  v29 = v28;
                  objc_enumerationMutation(v183);
                  v28 = v29;
                }

                v203 = v28;
                v30 = *(*(&v266 + 1) + 8 * v28);
                v225 = [v30 _dataForKey:{@"push-token", v150, v153, v154, v155}];
                v215 = [v30 _dataForKey:@"session-token"];
                v31 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found identity:", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v227 = [v30 _dictionaryForKey:@"client-data"];
                v223 = [v30 _stringForKey:@"device-name"];
                v217 = [v30 _dictionaryForKey:@"private-device-data"];
                v211 = 0;
                if (v223 && v217)
                {
                  v211 = [[IDSFamilyEndpointData alloc] initWithDeviceName:v223 privateDeviceData:v217];
                }

                v219 = [v30 _dataForKey:@"kt-loggable-data"];
                v214 = [v227 _dataForKey:@"device-key-signature"];
                v32 = [v30 _numberForKey:@"kt-mismatch-account-flag"];
                v204 = [v32 BOOLValue];

                v33 = [v30 _numberForKey:@"ktbility"];
                v208 = [v33 BOOLValue];

                v221 = [v227 _stringForKey:v194];
                v218 = [v227 _numberForKey:v193];
                v34 = [v227 _numberForKey:v192];
                v216 = v34;
                if (v34)
                {
                  [v34 doubleValue];
                  v213 = [NSDate dateWithTimeIntervalSince1970:?];
                }

                else
                {
                  v213 = 0;
                }

                v35 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v283 = v221;
                  v284 = 2112;
                  v285 = v218;
                  v286 = 2112;
                  v287 = v213;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "GameCenter data: AssociationID: %@, SharingState: %@, LastUpdatedDate: %@", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v153 = v218;
                  v154 = v213;
                  v151 = v221;
                  _IDSLogV();
                }

                if (v221 || v218 || v216)
                {
                  v205 = [[IDSGameCenterData alloc] initWithAssociationID:v221 sharingState:v218 lastUpdatedDate:v213];
                }

                else
                {
                  v205 = 0;
                }

                if (v225)
                {
                  v36 = [[IDSKeyTransparencyEntry alloc] initWithPushToken:v225 loggableData:v219 signedData:v214];
                  [(IDSKeyTransparencyEntry *)v36 setKtCapable:v208];
                  [v184 addObject:v36];
                }

                v212 = [v227 _dataForKey:{v199, v151}];
                v37 = [v227 _numberForKey:v191];
                v38 = [v37 intValue];

                v39 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = IDSLoggableDescriptionForTokenOnService();
                  v41 = [v40 debugDescription];
                  *buf = 138412290;
                  v283 = v41;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "              device pushToken: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v42 = IDSLoggableDescriptionForTokenOnService();
                  v150 = [v42 debugDescription];
                  _IDSLogV();
                }

                v43 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v215 debugDescription];
                  *buf = 138412290;
                  v283 = v44;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "                 session token: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [v215 debugDescription];
                  _IDSLogV();
                }

                v45 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v283 = v14;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "                           uri: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = v14;
                  _IDSLogV();
                }

                v46 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = [v202 senderCorrelationIdentifier];
                  *buf = 138412290;
                  v283 = v47;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " sender-correlation-identifier: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [v202 senderCorrelationIdentifier];
                  _IDSLogV();
                }

                v48 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = [v202 shortHandle];
                  *buf = 138412290;
                  v283 = v49;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "                  short-handle: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [v202 shortHandle];
                  _IDSLogV();
                }

                v50 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = [IDSLogFormatter descriptionForDictionary:v227 options:1];
                  *buf = 138412290;
                  v283 = v51;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "                    clientData: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [IDSLogFormatter descriptionForDictionary:v227 options:1];
                  _IDSLogV();
                }

                v52 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v283 = v223;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "                   device-name: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = v223;
                  _IDSLogV();
                }

                v53 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = [IDSLogFormatter descriptionForDictionary:v217 options:1];
                  *buf = 138412290;
                  v283 = v54;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "           private-device-data: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [IDSLogFormatter descriptionForDictionary:v217 options:1];
                  _IDSLogV();
                }

                v55 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = [IDSLogFormatter descriptionForData:v219 options:1];
                  *buf = 138412290;
                  v283 = v56;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "              kt-loggable-data: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [IDSLogFormatter descriptionForData:v219 options:1];
                  _IDSLogV();
                }

                v57 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = [IDSLogFormatter descriptionForData:v186 options:1];
                  *buf = 138412290;
                  v283 = v58;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "                kt-account-key: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [IDSLogFormatter descriptionForData:v186 options:1];
                  _IDSLogV();
                }

                v59 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v283 = v185;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "                     kt-opt-in: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = v185;
                  _IDSLogV();
                }

                v60 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  v61 = [IDSLogFormatter descriptionForData:v214 options:1];
                  *buf = 138412290;
                  v283 = v61;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "          device-key-signature: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = [IDSLogFormatter descriptionForData:v214 options:1];
                  _IDSLogV();
                }

                v62 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v63 = @"NO";
                  if (v204)
                  {
                    v63 = @"YES";
                  }

                  *buf = 138412290;
                  v283 = v63;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "      kt-mismatch-account-flag: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v64 = @"NO";
                  if (v204)
                  {
                    v64 = @"YES";
                  }

                  v150 = v64;
                  _IDSLogV();
                }

                v65 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = @"NO";
                  if (v208)
                  {
                    v66 = @"YES";
                  }

                  *buf = 138412290;
                  v283 = v66;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "               kt-capable-flag: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v67 = @"NO";
                  if (v208)
                  {
                    v67 = @"YES";
                  }

                  v150 = v67;
                  _IDSLogV();
                }

                v68 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = @"NO";
                  if (v38)
                  {
                    v69 = @"YES";
                  }

                  *buf = 138412290;
                  v283 = v69;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "                    showErrors: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v70 = @"NO";
                  if (v38)
                  {
                    v70 = @"YES";
                  }

                  v150 = v70;
                  _IDSLogV();
                }

                if (v212)
                {
                  goto LABEL_155;
                }

                v71 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v283 = v225;
                  _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "   No known public key found for token: %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v150 = v225;
                  _IDSLogV();
                }

                if (![v11 isEqualToIgnoringCase:{@"com.apple.madrid", v150}])
                {
LABEL_155:
                  if (v225)
                  {
                    v73 = IMGetDomainIntForKey();
                    v74 = IMGetDomainIntForKey();
                    v206 = [v30 _numberForKey:@"session-token-refresh-seconds"];
                    v207 = [v30 _numberForKey:@"session-token-expires-seconds"];
                    if (v73)
                    {
                      v75 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134217984;
                        v283 = v73;
                        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "                    Overwriting soft TTL with: %ld seconds", buf, 0xCu);
                      }

                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                      {
                        v150 = v73;
                        _IDSLogV();
                      }

                      v76 = [NSNumber numberWithInteger:v73, v150];

                      v206 = v76;
                    }

                    if (v74)
                    {
                      v77 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134217984;
                        v283 = v74;
                        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "                    Overwriting hard TTL with: %ld seconds", buf, 0xCu);
                      }

                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                      {
                        v150 = v74;
                        _IDSLogV();
                      }

                      v78 = [NSNumber numberWithInteger:v74, v150];

                      v207 = v78;
                    }

                    [v206 doubleValue];
                    v201 = [NSDate dateWithTimeIntervalSinceNow:?];
                    [v207 doubleValue];
                    v200 = [NSDate dateWithTimeIntervalSinceNow:?];
                    v79 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138413058;
                      v283 = v11;
                      v284 = 2112;
                      v285 = v14;
                      v286 = 2112;
                      v287 = v201;
                      v288 = 2112;
                      v289 = v200;
                      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "   TTL for Service: %@, Uri: %@, refresh: %@, expires: %@,", buf, 0x2Au);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v154 = v201;
                      v155 = v200;
                      v150 = v11;
                      v153 = v14;
                      _IDSLogV();
                    }

                    if (v215 && v207 && v206)
                    {
                      if ([v10 isEqualToURI:v14])
                      {
                        [(IDSPeerIDManager *)self _setDisasterModeToken:v215 forURI:v10];
                      }

                      v80 = +[IDSEndpointCapabilities allowedCapabilities];
                      v280[0] = v199;
                      v280[1] = v177;
                      v280[2] = v176;
                      v280[3] = v182;
                      v280[4] = v175;
                      v280[5] = v180;
                      v81 = [NSArray arrayWithObjects:v280 count:6];
                      v82 = [v80 arrayByAddingObjectsFromArray:v81];

                      v83 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v82, "count")}];
                      v265 = 0u;
                      v264 = 0u;
                      v263 = 0u;
                      v262 = 0u;
                      v84 = v82;
                      v85 = [v84 countByEnumeratingWithState:&v262 objects:v279 count:16];
                      if (v85)
                      {
                        v86 = *v263;
                        do
                        {
                          for (i = 0; i != v85; i = i + 1)
                          {
                            if (*v263 != v86)
                            {
                              objc_enumerationMutation(v84);
                            }

                            v88 = *(*(&v262 + 1) + 8 * i);
                            v89 = [v227 objectForKey:v88];
                            if (v89)
                            {
                              [v83 setObject:v89 forKey:v88];
                            }
                          }

                          v85 = [v84 countByEnumeratingWithState:&v262 objects:v279 count:16];
                        }

                        while (v85);
                      }

                      v90 = +[NSDate date];
                      [v90 timeIntervalSince1970];
                      v92 = v91;

                      v189 = [v83 _dataForKey:v199];
                      v188 = [v83 _dataForKey:v182];
                      v93 = +[IDSDServiceController sharedInstance];
                      v210 = [v93 serviceWithIdentifier:v11];

                      if (!v219)
                      {
                        v219 = [v83 _dataForKey:v180];
                      }

                      v196 = [[IDSProtoKeyTransparencyLoggableData alloc] initWithData:v219];
                      v187 = [(IDSProtoKeyTransparencyLoggableData *)v196 ngmPublicIdentity];
                      context = objc_autoreleasePoolPush();
                      if ([v210 applicationKeyIndex] && -[IDSProtoKeyTransparencyLoggableData applicationPublicIdentitysCount](v196, "applicationPublicIdentitysCount"))
                      {
                        v261 = 0u;
                        v260 = 0u;
                        v259 = 0u;
                        v258 = 0u;
                        v198 = [(IDSProtoKeyTransparencyLoggableData *)v196 applicationPublicIdentitys];
                        v94 = [v198 countByEnumeratingWithState:&v258 objects:v278 count:16];
                        if (v94)
                        {
                          v95 = *v259;
                          while (2)
                          {
                            for (j = 0; j != v94; j = j + 1)
                            {
                              if (*v259 != v95)
                              {
                                objc_enumerationMutation(v198);
                              }

                              v97 = *(*(&v258 + 1) + 8 * j);
                              v98 = [v97 keyIndex];
                              if (v98 == sub_1005F0F7C([v210 applicationKeyIndex]))
                              {
                                v94 = [v97 publicIdentity];
                                goto LABEL_209;
                              }
                            }

                            v94 = [v198 countByEnumeratingWithState:&v258 objects:v278 count:16];
                            if (v94)
                            {
                              continue;
                            }

                            break;
                          }
                        }

LABEL_209:
                      }

                      else
                      {
                        v94 = 0;
                      }

                      objc_autoreleasePoolPop(context);
                      LOBYTE(v156) = v178;
                      LOBYTE(v152) = v208;
                      v100 = [[IDSEndpoint alloc] initWithURI:v14 serviceIdentifier:v11 clientData:v83 KTLoggableData:v219 KTDeviceSignature:v214 mismatchedAccountFlag:v204 ktCapableFlag:v92 transparency:v152 pushToken:0 sessionToken:v225 expireDate:v215 refreshDate:v200 anonymizedSenderID:v201 verifiedBusiness:v179 serializedPublicMessageProtectionIdentity:v156 queryTimeInterval:v189 serializedNGMDeviceIdentity:v187 serializedNGMDevicePrekey:v188 serializedApplicationPublicKey:v94 endpointURIProperties:v202 familyEndpointData:v211 gameCenterData:v205];
                      [v190 addObject:v100];

                      v209 = 1;
                    }
                  }

                  else
                  {
                    v99 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "   No known push token found, ignoring", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      _IDSLogV();
                    }
                  }
                }

                else
                {
                  v72 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v283 = v225;
                    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "   No known iMessage public key found for token, skipping this identity: %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    _IDSWarnV();
                    _IDSLogV();
                    v150 = v225;
                    _IDSLogTransport();
                  }
                }

                v28 = v203 + 1;
              }

              while ((v203 + 1) != v197);
              v197 = [v183 countByEnumeratingWithState:&v266 objects:v281 count:16];
            }

            while (v197);
          }

          else
          {
            v209 = 0;
          }

          v101 = [KTVerifierResult alloc];
          v102 = [IDSKeyTransparencyVerifier keyTransparencyURIPrefixForServiceIdentifier:v11];
          v103 = [v14 prefixedURI];
          v104 = [v102 stringByAppendingString:v103];
          v105 = [IDSKeyTransparencyVerifier keyTransparencyApplicationForServiceIdentifier:v11];
          v222 = [v101 initPendingForUri:v104 application:v105];

          v106 = [IDSQueryKeyTransparencyContext alloc];
          v107 = [(IDSKeyTransparencyIndex *)v160 accountKey];
          v220 = [v106 initWithVerifierResult:v222 ticket:0 accountKey:v107 queryResponseTime:v162 ktOptIn:v158];

          v108 = [v174 objectForKeyedSubscript:v14];
          LODWORD(v101) = v108 == 0;

          if (v101)
          {
            v228 = [(IDSPeerIDManager *)self peerTokensForURI:v14 fromURI:v10 service:v11];
            v109 = +[NSMutableSet set];
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v110 = v190;
            v111 = [v110 countByEnumeratingWithState:&v254 objects:v277 count:16];
            if (v111)
            {
              v112 = *v255;
              do
              {
                for (k = 0; k != v111; k = k + 1)
                {
                  if (*v255 != v112)
                  {
                    objc_enumerationMutation(v110);
                  }

                  v114 = *(*(&v254 + 1) + 8 * k);
                  v115 = [v114 pushTokenObject];

                  if (v115)
                  {
                    v116 = [v114 pushTokenObject];
                    [v109 addObject:v116];
                  }
                }

                v111 = [v110 countByEnumeratingWithState:&v254 objects:v277 count:16];
              }

              while (v111);
            }

            if ([v228 count] && (objc_msgSend(v228, "isEqualToSet:", v109) & 1) == 0)
            {
              v117 = [v109 mutableCopy];
              [v117 minusSet:v228];
              v118 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v283 = v14;
                v284 = 2112;
                v285 = v10;
                v286 = 2112;
                v287 = v11;
                v288 = 2112;
                v289 = v117;
                _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Detected devices set changed for uri: %@, fromURI: %@, service: %@ {new: %@}", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v154 = v11;
                v155 = v117;
                v150 = v14;
                v153 = v10;
                _IDSLogV();
              }
            }

            v119 = [v228 count];
            v120 = [v109 count];
            if ([v11 isEqualToString:@"com.apple.madrid"] && (v119 == 0) == (v120 != 0))
            {
              v121 = [v109 count] == 0;
              v250[0] = _NSConcreteStackBlock;
              v250[1] = 3221225472;
              v250[2] = sub_100314F04;
              v250[3] = &unk_100BD6F90;
              v251 = v11;
              v252 = v14;
              v253 = v121;
              [v157 updateSenderKeyValidityFor:v14 markInvalid:v121 completion:v250];
            }

            v122 = +[NSUUID UUID];
            v123 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v283 = v11;
              v284 = 2112;
              v285 = v14;
              v286 = 2112;
              v287 = v122;
              _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Will save endpoints to SwiftData DB for service: %@, uri: %@, uuid: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v153 = v14;
              v154 = v122;
              v150 = v11;
              _IDSLogV();
            }

            v124 = [[IDSPeerIDKey alloc] initWithService:v11 fromURI:v10 toURI:v14];
            v125 = [[IDSPeerIDValue alloc] initWithEndpoints:v110 keyTransparencyContext:v220];
            -[NSCache setObject:forKey:cost:](self->_dbCache, "setObject:forKey:cost:", v125, v124, [v110 count]);
            v246[0] = _NSConcreteStackBlock;
            v246[1] = 3221225472;
            v246[2] = sub_100315084;
            v246[3] = &unk_100BD6FB8;
            v126 = v11;
            v247 = v126;
            v248 = v14;
            v127 = v122;
            v249 = v127;
            [v157 saveEndpoints:v110 ktContext:v220 service:v126 fromURI:v10 toURI:v14 completion:v246];
          }

          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          v224 = [(NSMutableDictionary *)self->_clientDataUpdateBlocks allValues];
          v229 = [v224 countByEnumeratingWithState:&v242 objects:v276 count:16];
          if (v229)
          {
            v226 = *v243;
            do
            {
              for (m = 0; m != v229; m = m + 1)
              {
                if (*v243 != v226)
                {
                  objc_enumerationMutation(v224);
                }

                v129 = *(*(&v242 + 1) + 8 * m);
                v238 = 0u;
                v239 = 0u;
                v240 = 0u;
                v241 = 0u;
                v130 = v190;
                v131 = [v130 countByEnumeratingWithState:&v238 objects:v275 count:16];
                if (v131)
                {
                  v132 = *v239;
                  do
                  {
                    for (n = 0; n != v131; n = n + 1)
                    {
                      if (*v239 != v132)
                      {
                        objc_enumerationMutation(v130);
                      }

                      (*(v129 + 16))(v129, v11, v14, v10, *(*(&v238 + 1) + 8 * n));
                    }

                    v131 = [v130 countByEnumeratingWithState:&v238 objects:v275 count:16];
                  }

                  while (v131);
                }
              }

              v229 = [v224 countByEnumeratingWithState:&v242 objects:v276 count:16];
            }

            while (v229);
          }

          if ((v209 & 1) == 0)
          {
            [(IDSPeerIDManager *)self forgetPeerTokensForURI:v14 fromURI:v10 service:v11 reason:16];
          }

          v134 = [NSNumber numberWithBool:v209 & 1];
          [v167 setObject:v134 forKeyedSubscript:v14];

          v135 = [v190 copy];
          [v174 setObject:v135 forKeyedSubscript:v14];
        }

        else
        {
          [(IDSPeerIDManager *)self forgetPeerTokensForURI:v14 fromURI:v10 service:v11 reason:16];
          [v167 setObject:&__kCFBooleanFalse forKeyedSubscript:v14];
          [v174 setObject:&__NSArray0__struct forKeyedSubscript:v14];
        }

        v12 = v169 + 1;
      }

      while ((v169 + 1) != v168);
      v136 = [obj countByEnumeratingWithState:&v270 objects:v292 count:16];
      v168 = v136;
    }

    while (v136);
  }

  v137 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Remote query finished - kicking KT peer verification", buf, 2u);
  }

  v138 = [(IDSPeerIDManager *)self keyTransparencyVerifier];
  [v138 kickPeerVerificationForURIs:obj service:v11 localURI:v10 fetchNow:0 withCompletion:&stru_100BD6FF8];

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v139 = [(NSMutableDictionary *)self->_endpointQueryListeners allValues];
  v140 = [v139 countByEnumeratingWithState:&v234 objects:v274 count:16];
  if (v140)
  {
    v141 = *v235;
    do
    {
      for (ii = 0; ii != v140; ii = ii + 1)
      {
        if (*v235 != v141)
        {
          objc_enumerationMutation(v139);
        }

        v143 = *(*(&v234 + 1) + 8 * ii);
        v144 = [v143 queryCompletionBlock];
        if (v144)
        {
          v145 = [v143 queue];
          v146 = v145 == 0;

          if (!v146)
          {
            v147 = [v143 queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100315368;
            block[3] = &unk_100BD7020;
            block[4] = v143;
            v231 = v11;
            v232 = v10;
            v233 = v174;
            dispatch_async(v147, block);
          }
        }
      }

      v140 = [v139 countByEnumeratingWithState:&v234 objects:v274 count:16];
    }

    while (v140);
  }

  v148 = [v167 copy];

  return v148;
}

- (id)sessionTokensForURIs:(id)a3 fromURI:(id)a4 service:(id)a5 fromIdentity:(id)a6 includeSelfDevice:(BOOL)a7 fullyRemoveSelfDevice:(BOOL)a8 allowRefresh:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v76 = objc_alloc_init(NSMutableDictionary);
  v19 = 1;
  if (!v9)
  {
    v19 = 2;
  }

  if (v10)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v71 = self;
  v72 = v16;
  v68 = v15;
  v69 = v17;
  v70 = v18;
  [(IDSPeerIDManager *)self endpointsForURIs:v15 fromURI:v16 service:v17 fromIdentity:v18 filterBehavior:v20 allowRefresh:a9];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  obj = v88 = 0u;
  v74 = [obj countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v74)
  {
    v73 = *v88;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v88 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v87 + 1) + 8 * i);
        v77 = [obj objectForKeyedSubscript:?];
        if (+[IDSPeerIDManager shouldUseSelfTokens])
        {
          v21 = [(IDSPeerIDManager *)v71 _disasterModeTokenForURI:v72];
          v22 = v21 != 0;
          if (v21)
          {
            v23 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v95 = v72;
              v96 = 2112;
              v97 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Returning disaster mode token for from URI: %@   token: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v66 = v72;
              v67 = v21;
              _IDSLogV();
            }
          }
        }

        else
        {
          v22 = 0;
        }

        v80 = [v76 objectForKeyedSubscript:{v78, v66, v67}];
        v24 = [v80 objectForKeyedSubscript:@"dates-expire"];
        v25 = [v24 mutableCopy];
        v26 = v25;
        if (v25)
        {
          v82 = v25;
        }

        else
        {
          v82 = +[NSMutableArray array];
        }

        v27 = [v80 objectForKeyedSubscript:@"dates-refresh"];
        v28 = [v27 mutableCopy];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = +[NSMutableArray array];
        }

        v31 = v30;

        v32 = [v80 objectForKeyedSubscript:@"push-tokens"];
        v33 = [v32 mutableCopy];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = +[NSMutableArray array];
        }

        v36 = v35;

        v37 = [v80 objectForKeyedSubscript:@"session-tokens"];
        v38 = [v37 mutableCopy];
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = +[NSMutableArray array];
        }

        v41 = v40;

        v42 = [v80 objectForKeyedSubscript:@"anonymized-sender-ids"];
        v43 = [v42 mutableCopy];
        v44 = v43;
        if (v43)
        {
          v81 = v43;
        }

        else
        {
          v81 = +[NSMutableArray array];
        }

        if (!v22)
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v45 = v77;
          v46 = [v45 countByEnumeratingWithState:&v83 objects:v93 count:16];
          if (v46)
          {
            v47 = *v84;
            do
            {
              for (j = 0; j != v46; j = j + 1)
              {
                if (*v84 != v47)
                {
                  objc_enumerationMutation(v45);
                }

                v49 = *(*(&v83 + 1) + 8 * j);
                v50 = [v49 refreshDate];
                v51 = [v49 expireDate];
                [v82 addObject:v51];

                [v31 addObject:v50];
                v52 = [v49 pushToken];
                [v36 addObject:v52];

                v53 = [v49 sessionToken];
                [v41 addObject:v53];

                v54 = [v49 anonymizedSenderID];
                LOBYTE(v53) = v54 == 0;

                if ((v53 & 1) == 0)
                {
                  v55 = [v49 anonymizedSenderID];
                  [v81 addObject:v55];
                }
              }

              v46 = [v45 countByEnumeratingWithState:&v83 objects:v93 count:16];
            }

            while (v46);
          }
        }

        v91[0] = @"dates-expire";
        v56 = [v82 copy];
        v92[0] = v56;
        v91[1] = @"dates-refresh";
        v57 = [v31 copy];
        v92[1] = v57;
        v91[2] = @"push-tokens";
        v58 = [v36 copy];
        v92[2] = v58;
        v91[3] = @"session-tokens";
        v59 = [v41 copy];
        v92[3] = v59;
        v60 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:4];
        v61 = [NSMutableDictionary dictionaryWithDictionary:v60];

        if ([v81 count])
        {
          v62 = [v81 copy];
          [v61 setValue:v62 forKey:@"anonymized-sender-ids"];
        }

        v63 = [v61 copy];
        [v76 setObject:v63 forKeyedSubscript:v78];
      }

      v74 = [obj countByEnumeratingWithState:&v87 objects:v98 count:16];
    }

    while (v74);
  }

  v64 = [v76 copy];

  return v64;
}

- (id)endpointsForURIs:(id)a3 fromURI:(id)a4 service:(id)a5 fromIdentity:(id)a6 filterBehavior:(unint64_t)a7 allowRefresh:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v51 = a4;
  v49 = a5;
  v14 = a6;
  v48 = objc_alloc_init(NSMutableArray);
  v15 = objc_alloc_init(NSMutableDictionary);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v16 = v13;
  v50 = [v16 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v50)
  {
    v43 = v8;
    v17 = 0;
    v44 = v14;
    v46 = *v64;
    v47 = v15;
    obj = v16;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v63 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 tokenFreeURI];
        v22 = [v19 pushToken];
        objc_autoreleasePoolPop(v20);
        [v48 addObject:v21];
        v23 = [v15 objectForKeyedSubscript:v21];
        v24 = [v23 mutableCopy];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = objc_alloc_init(NSMutableArray);
        }

        v53 = v26;

        v27 = [(IDSPeerIDManager *)self _endpointsForService:v49 fromURI:v51 toURI:v21 ignoreExpiration:0];
        if (a7 == 1 || a7 == 2 && [v21 isEqualToURI:v51])
        {
          v28 = [(IDSPeerIDPushHandler *)self->_pushHandler pushToken];
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_100315FCC;
          v61[3] = &unk_100BD7048;
          v62 = v28;
          v29 = v28;
          v30 = [v27 __imArrayByFilteringWithBlock:v61];

          v27 = v30;
        }

        if (v22)
        {
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100316014;
          v59[3] = &unk_100BD7048;
          v60 = v22;
          v31 = [v27 __imArrayByFilteringWithBlock:v59];

          v27 = v31;
        }

        v54 = v22;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v32 = v27;
        v33 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v56;
          while (2)
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v56 != v35)
              {
                objc_enumerationMutation(v32);
              }

              if (v17)
              {
                v17 = 1;
                goto LABEL_25;
              }

              v37 = *(*(&v55 + 1) + 8 * j);
              v38 = objc_opt_class();
              v39 = [v37 refreshDate];
              v17 = [v38 _datePassed:v39];
            }

            v34 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:

        [v53 addObjectsFromArray:v32];
        v15 = v47;
        [v47 setObject:v53 forKeyedSubscript:v21];
      }

      v16 = obj;
      v50 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v50);

    v14 = v44;
    v40 = v43;
    if (!v44)
    {
      v40 = 0;
    }

    if ((v40 & v17) == 1)
    {
      LOBYTE(v42) = 0;
      [(IDSPeerIDManager *)self startQueryForURIs:v48 fromIdentity:v44 fromURI:v51 fromService:v49 forSending:0 forceToServer:1 clientRequestedForceQuery:v42 reason:@"EndpointForURI" completionBlock:0];
    }
  }

  else
  {
  }

  return v15;
}

- (BOOL)hasPublicKeyForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6
{
  v6 = [(IDSPeerIDManager *)self publicKeyForURI:a3 pushToken:a4 fromURI:a5 service:a6];
  v7 = v6 != 0;

  return v7;
}

- (id)publicKeyForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6
{
  v10 = a4;
  v11 = [(IDSPeerIDManager *)self _endpointsForService:a6 fromURI:a5 toURI:a3 ignoreExpiration:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003161D0;
  v17[3] = &unk_100BD7048;
  v18 = v10;
  v12 = v10;
  v13 = [v11 __imArrayByFilteringWithBlock:v17];
  v14 = [v13 firstObject];

  v15 = [v14 serializedPublicLegacyIdentity];

  return v15;
}

- (id)publicDeviceIdentityContainerForPushToken:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_dbCache mapTableRepresentation];
  v6 = [v5 keyEnumerator];
  v7 = [v6 allObjects];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v26 = *v35;
    v27 = self;
    v29 = v8;
    do
    {
      v12 = 0;
      v28 = v10;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if ([v13 hasMatchingURIs])
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [(NSCache *)self->_dbCache objectForKey:v13];
          v15 = [v14 endpoints];

          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v30 + 1) + 8 * i);
                v21 = [v20 pushToken];
                v22 = [v4 rawToken];
                v23 = [v22 isEqualToData:v21];

                if (v23)
                {
                  v24 = [v20 publicDeviceIdentityContainer];

                  v8 = v29;
                  goto LABEL_21;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v11 = v26;
          self = v27;
          v10 = v28;
          v8 = v29;
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      v24 = 0;
    }

    while (v10);
  }

  else
  {
    v24 = 0;
  }

LABEL_21:

  return v24;
}

- (id)senderCorrelationIdentifierForURI:(id)a3 fromURI:(id)a4 service:(id)a5
{
  v5 = [(IDSPeerIDManager *)self _endpointsForService:a5 fromURI:a4 toURI:a3 ignoreExpiration:1];
  v6 = [v5 firstObject];

  v7 = [v6 senderCorrelationIdentifier];

  return v7;
}

- (id)senderCorrelationIdentifierForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6
{
  v10 = a4;
  v11 = [(IDSPeerIDManager *)self _endpointsForService:a6 fromURI:a5 toURI:a3 ignoreExpiration:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100316610;
  v17[3] = &unk_100BD7048;
  v18 = v10;
  v12 = v10;
  v13 = [v11 __imArrayByFilteringWithBlock:v17];
  v14 = [v13 firstObject];

  v15 = [v14 senderCorrelationIdentifier];

  return v15;
}

- (id)sessionTokenForURI:(id)a3 pushToken:(id)a4 fromURI:(id)a5 service:(id)a6 expirationDate:(id *)a7 refreshDate:(id *)a8 fromIdentity:(id)a9 includeSelfDevice:(BOOL)a10
{
  v15 = a3;
  v41 = v15;
  v16 = a9;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = [NSArray arrayWithObjects:&v41 count:1];
  v21 = [(IDSPeerIDManager *)self sessionTokensForURIs:v20 fromURI:v18 service:v17 fromIdentity:v16 includeSelfDevice:a10 fullyRemoveSelfDevice:0];

  v22 = objc_opt_class();
  v23 = v15;
  v40 = v21;
  v24 = [v21 objectForKey:v23];
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    if (v24)
    {
      v26 = +[IMRGLog registration];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_100914ED4(v23, v22, v26);
      }
    }

    v25 = 0;
  }

  v27 = [v25 _arrayForKey:@"session-tokens"];
  v28 = [v25 _arrayForKey:@"push-tokens"];
  v29 = [v25 _arrayForKey:@"dates-refresh"];
  v30 = [v25 _arrayForKey:@"dates-expire"];
  v31 = [v19 rawToken];

  v32 = [v28 indexOfObject:v31];
  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
  }

  else
  {
    v34 = [v30 objectAtIndex:v32];
    v35 = [v29 objectAtIndex:v32];
    if (a7)
    {
      v36 = v34;
      *a7 = v34;
    }

    if (a8)
    {
      v37 = v35;
      *a8 = v35;
    }

    v33 = [v27 objectAtIndex:{v32, a8}];
  }

  return v33;
}

- (double)timeToCacheURI:(id)a3 fromURI:(id)a4 service:(id)a5 forStatus:(unsigned int)a6
{
  v6 = *&a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v6 == 1)
  {
    v14 = 0;
    if (v10 && v11 && v12)
    {
      v28 = v10;
      v15 = [(IDSPeerIDManager *)self _endpointsForService:v12 fromURI:v11 toURI:v10 ignoreExpiration:1];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v14 = 0;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            if (v14)
            {
              v21 = [*(*(&v29 + 1) + 8 * i) expireDate];
              v22 = [v21 compare:v14];

              if (v22 != -1)
              {
                continue;
              }
            }

            v23 = [v20 expireDate];

            v14 = v23;
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      else
      {
        v14 = 0;
      }

      v10 = v28;
    }

    [v14 timeIntervalSinceNow];
    v25 = v26;
  }

  else
  {
    [IDSBagUtilities timeToCacheResultsForIDStatus:v6 forService:v12];
    v25 = v24;
  }

  return v25;
}

- (int64_t)_valueOfProperty:(id)a3 forURI:(id)a4 pushToken:(id)a5 fromURI:(id)a6 service:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v34 = v13;
  v35 = v15;
  if (v12)
  {
    v33 = v16;
    [(IDSPeerIDManager *)self _endpointsForService:v16 fromURI:v15 toURI:v13 ignoreExpiration:0];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v17 = 0;
    v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v18)
    {
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [v21 pushTokenObject];
          v23 = [v22 isEqualToPushToken:v14];

          if (v23)
          {
            v24 = [v21 capabilities];
            v17 = [v24 valueForCapability:v12];

            v25 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v26 = @"YES";
              if (!v17)
              {
                v26 = @"NO";
              }

              v42 = v12;
              v43 = 2112;
              v44 = v26;
              v45 = 2112;
              v46 = v14;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found %@ value: %@  for peer token: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v27 = @"YES";
              if (!v17)
              {
                v27 = @"NO";
              }

              v31 = v27;
              v32 = v14;
              v30 = v12;
              _IDSLogV();
            }
          }

          else
          {
            v28 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v42 = v12;
              v43 = 2112;
              v44 = v14;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "** No %@ value found for peer token: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v30 = v12;
              v31 = v14;
              _IDSLogV();
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v18);
    }

    v16 = v33;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)endpointsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  if (v10 && v9 && v11)
  {
    v12 = [(IDSPeerIDManager *)self endpointsForURIs:v8 service:v9 fromURI:v10 ignoringTTL:0];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing required field(s) for endpointsForURIs -- returning nil {uris: %@, service: %@, fromURI: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v17 = v9;
      v18 = v10;
      v16 = v8;
      _IDSLogV();
    }

    v12 = [NSDictionary dictionary:v16];
  }

  v14 = v12;

  return v14;
}

- (id)endpointForPushToken:(id)a3 URI:(id)a4 service:(id)a5 fromURI:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10 && v11 && v12 && v13)
  {
    v24 = v11;
    v15 = [NSArray arrayWithObjects:&v24 count:1];
    v16 = [(IDSPeerIDManager *)self endpointsForURIs:v15 service:v12 fromURI:v14];
    v17 = [v16 objectForKey:v11];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100317324;
    v22[3] = &unk_100BD7048;
    v23 = v10;
    v18 = [v17 __imArrayByFilteringWithBlock:v22];
    v19 = [v18 firstObject];
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Missing required field(s) for endpointForPushToken -- returning nil {pushToken: %@, URI: %@, service: %@, fromURI: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v19 = 0;
  }

  return v19;
}

- (id)endpointsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5 ignoringTTL:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  theDict = objc_alloc_init(NSMutableDictionary);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = [(IDSPeerIDManager *)self _endpointsForService:v11 fromURI:v12 toURI:v18 ignoreExpiration:v6];
        if (v19)
        {
          CFDictionarySetValue(theDict, v18, v19);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  return theDict;
}

- (id)endpointsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5 withCapabilities:(id)a6
{
  v10 = a3;
  v23 = a4;
  v11 = a5;
  v12 = a6;
  theDict = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [(IDSPeerIDManager *)self _endpointsForService:v23 fromURI:v11 toURI:v17 ignoreExpiration:0];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100317700;
        v24[3] = &unk_100BD7048;
        v25 = v12;
        v19 = [v18 __imArrayByFilteringWithBlock:v24];
        if (v19)
        {
          CFDictionarySetValue(theDict, v17, v19);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  return theDict;
}

- (id)idInfoResultForURIs:(id)a3 service:(id)a4 fromURI:(id)a5 infoType:(unint64_t)a6 infoOptions:(id)a7 idStatusUpdates:(id)a8
{
  v56 = a6;
  v12 = a3;
  v13 = a4;
  v46 = a5;
  v44 = a7;
  v14 = a8;
  v47 = v13;
  theDict = objc_alloc_init(NSMutableDictionary);
  v45 = v14;
  v51 = [v14 objectForKey:v13];
  v54 = [(IDSPeerIDManager *)self endpointsForURIs:v12 service:v13 fromURI:v46 ignoringTTL:1];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v12;
  v53 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v53)
  {
    v50 = *v62;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v61 + 1) + 8 * i);
        if ((v56 & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = [v54 objectForKey:*(*(&v61 + 1) + 8 * i)];

        if (!v17)
        {
          v27 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v67 = v16;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "URI %@ didn't have remote devices.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v42 = v16;
            _IDSLogV();
          }

LABEL_7:
          v55 = 0;
          goto LABEL_10;
        }

        v55 = [v54 objectForKey:v16];
LABEL_10:
        if ((v56 & 2) != 0)
        {
          v19 = [(IDSPeerIDManager *)self verifierResultsForURIs:obj service:v47 fromURI:v46];
          v20 = [v19 objectForKey:v16];

          if (v20)
          {
            v21 = [IDSIDKTData alloc];
            v22 = [v19 objectForKey:v16];
            v18 = [v21 initWithVerifierResult:v22 requestID:0];

            v23 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v19 objectForKey:v16];
              v25 = [(IDSPeerIDManager *)self lightDescriptionForVerifierResult:v24];
              *buf = 138412546;
              v67 = v16;
              v68 = 2112;
              v69 = v25;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "URI %@ found a KTVerifierResult %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v26 = [v19 objectForKey:v16];
              [(IDSPeerIDManager *)self lightDescriptionForVerifierResult:v26];
              v43 = v42 = v16;
              _IDSLogV();
            }
          }

          else
          {
            v28 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v67 = v16;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "URI %@ didn't find a KTVerifierResult", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v42 = v16;
              _IDSLogV();
            }

            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        if ((v56 & 4) != 0)
        {
          v30 = [v54 objectForKey:v16];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v29 = 0;
          v31 = [v30 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v31)
          {
            v32 = *v58;
            do
            {
              for (j = 0; j != v31; j = j + 1)
              {
                if (*v58 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = [*(*(&v57 + 1) + 8 * j) gameCenterData];
                v35 = v34;
                if (v29)
                {
                  v36 = [v29 compareAgainstData:v34];

                  v29 = v36;
                }

                else
                {
                  v29 = v34;
                }
              }

              v31 = [v30 countByEnumeratingWithState:&v57 objects:v65 count:16];
            }

            while (v31);
          }
        }

        else
        {
          v29 = 0;
        }

        v37 = [IDSIDInfoResult alloc];
        v38 = [v16 prefixedURI];
        v39 = [v51 objectForKey:v16];
        v40 = [v37 initWithURI:v38 status:objc_msgSend(v39 endpoints:"integerValue") ktData:v55 gameCenterData:{v18, v29}];

        if (v40)
        {
          CFDictionarySetValue(theDict, v16, v40);
        }
      }

      v53 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v53);
  }

  return theDict;
}

- (id)lightDescriptionForVerifierResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_class();
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 succeed]);
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 uiStatus]);
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 staticAccountKeyStatus]);
    v8 = [v3 publicID];
    v9 = [v3 failure];
    v10 = [NSString stringWithFormat:@"<%@: %p KTResult: %@, UIStatus: %@, StaticKeyResult: %@, AccountKey: %@, Error: %@>", v4, v3, v5, v6, v7, v8, v9];;
  }

  else
  {
    v10 = &stru_100C06028;
  }

  return v10;
}

- (id)_endpointsForService:(id)a3 fromURI:(id)a4 toURI:(id)a5 ignoreExpiration:(BOOL)a6 ignoreCache:(BOOL)a7 hitCache:(BOOL *)a8
{
  v10 = a6;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v14 = [[IDSPeerIDKey alloc] initWithService:v32 fromURI:v33 toURI:v34];
  if (a7)
  {
LABEL_21:
    if (a8)
    {
      *a8 = 0;
    }

    v16 = [(IDSPeerIDManager *)self _loadCachedPeerIDValueForKey:v14 ignoreExpiration:v10];
    v25 = [v16 endpoints];
    goto LABEL_24;
  }

  v15 = [(NSCache *)self->_dbCache objectForKey:v14];
  v16 = v15;
  if (!v15)
  {
    v26 = +[IDSFoundationLog PeerLookup_DBCache];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v40 = v32;
      v41 = 2112;
      v42 = v33;
      v43 = 2112;
      v44 = v34;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "DB Cache Miss { service: %@, fromURI: %@, toURI: %@ }", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if (a8)
  {
    *a8 = 1;
  }

  if (!v10)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v15 endpoints];
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v18)
    {
      v19 = *v36;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = objc_opt_class();
          v23 = [v21 expireDate];
          LODWORD(v22) = [v22 _datePassed:v23];

          if (v22)
          {
            v29 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v21 URI];
              *buf = 138412290;
              v40 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "** At least one session token expired for: %@, need to get new ones", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v31 = [v21 URI];
              _IDSLogV();
            }

            v27 = 0;
            goto LABEL_25;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  v24 = +[IDSFoundationLog PeerLookup_DBCache];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v40 = v32;
    v41 = 2112;
    v42 = v33;
    v43 = 2112;
    v44 = v34;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "DB Cache Hit { service: %@, fromURI: %@, toURI: %@ }", buf, 0x20u);
  }

  v25 = [v16 endpoints];
LABEL_24:
  v27 = v25;
LABEL_25:

  return v27;
}

- (id)_peerIDKeysForService:(id)a3 andFromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSCache *)self->_dbCache mapTableRepresentation];
  v9 = [v8 keyEnumerator];
  v10 = [v9 allObjects];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100318584;
  v15[3] = &unk_100BD7078;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 __imArrayByFilteringWithBlock:v15];

  return v13;
}

- (id)_peerIDKeysForService:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_dbCache mapTableRepresentation];
  v6 = [v5 keyEnumerator];
  v7 = [v6 allObjects];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003186F0;
  v11[3] = &unk_100BD70A0;
  v12 = v4;
  v8 = v4;
  v9 = [v7 __imArrayByFilteringWithBlock:v11];

  return v9;
}

- (id)verifierResultsForURIs:(id)a3 service:(id)a4 fromURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v33 = a5;
  theDict = objc_alloc_init(NSMutableDictionary);
  v10 = [(IDSKeyTransparencyVerifier *)self->_keyTransparencyVerifier accountController];
  v11 = [(IDSKeyTransparencyVerifier *)self->_keyTransparencyVerifier serviceController];
  v12 = [v11 serviceWithIdentifier:v9];
  v13 = [v10 accountsOnService:v12];

  v40 = objc_alloc_init(NSMutableSet);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v49 + 1) + 8 * i) registration];
        v19 = [v18 uris];
        v20 = [v19 __imArrayByApplyingBlock:&stru_100BD70E0];

        [v40 addObjectsFromArray:v20];
      }

      v15 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v15);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = v8;
  v38 = [v34 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v38)
  {
    v37 = *v46;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v22 = *(*(&v45 + 1) + 8 * j);
        v23 = objc_autoreleasePoolPush();
        key = v22;
        v24 = [v22 tokenFreeURI];
        objc_autoreleasePoolPop(v23);
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v25 = v40;
        v26 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v42;
          while (2)
          {
            for (k = 0; k != v27; k = k + 1)
            {
              if (*v42 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = [*(*(&v41 + 1) + 8 * k) tokenFreeURI];
              v31 = [(IDSPeerIDManager *)self _keyTransparencyVerifierResultForService:v9 fromURI:v30 toURI:v24];

              if (v31)
              {
                CFDictionarySetValue(theDict, key, v31);

                goto LABEL_23;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:
      }

      v38 = [v34 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v38);
  }

  return theDict;
}

- (id)_keyTransparencyVerifierResultForService:(id)a3 fromURI:(id)a4 toURI:(id)a5
{
  v5 = [(IDSPeerIDManager *)self keyTransparencyContextForService:a3 fromURI:a4 toURI:a5];
  v6 = [v5 verifierResult];

  return v6;
}

- (id)keyTransparencyContextForService:(id)a3 fromURI:(id)a4 toURI:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[IDSPeerIDKey alloc] initWithService:v10 fromURI:v9 toURI:v8];

  v12 = [(NSCache *)self->_dbCache objectForKey:v11];
  if (!v12)
  {
    v12 = [(IDSPeerIDManager *)self _loadCachedPeerIDValueForKey:v11 ignoreExpiration:0];
  }

  v13 = v12;
  v14 = [v12 keyTransparencyContext];

  return v14;
}

- (id)queryDateForService:(id)a3 fromURI:(id)a4 toURI:(id)a5
{
  v5 = [(IDSPeerIDManager *)self keyTransparencyContextForService:a3 fromURI:a4 toURI:a5];
  v6 = [v5 queryResponseTime];

  return v6;
}

- (void)updateCachedVerifierResultsWithResults:(id)a3
{
  v4 = a3;
  v52 = self;
  v44 = [(IDSPeerIDManager *)self persistenceManagerForService:@"com.apple.madrid"];
  v5 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v69 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating query cache with KT peer verification results { count: %lu }", buf, 0xCu);
  }

  v53 = objc_alloc_init(NSMutableArray);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v46 = v4;
  obj = [v4 allKeys];
  v49 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v49)
  {
    v47 = *v65;
    do
    {
      v6 = 0;
      do
      {
        if (*v65 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v6;
        v7 = *(*(&v64 + 1) + 8 * v6);
        v8 = [(NSCache *)v52->_dbCache mapTableRepresentation];
        v9 = [v8 keyEnumerator];
        v10 = [v9 allObjects];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v60 objects:v73 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v61;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v61 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v60 + 1) + 8 * i);
              v17 = [v16 service];
              if ([v17 isEqualToString:@"com.apple.madrid"])
              {
                v18 = [v16 toURI];
                v19 = [v7 isEqualToURI:v18];

                if (v19)
                {
                  [v53 addObject:v16];
                }
              }

              else
              {
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v60 objects:v73 count:16];
          }

          while (v13);
        }

        v6 = v50 + 1;
      }

      while ((v50 + 1) != v49);
      v49 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v49);
  }

  v20 = v53;
  if ([v53 count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = v53;
    v21 = [v48 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = 0;
      v51 = *v57;
      *&v22 = 138412546;
      v43 = v22;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v26 = *(*(&v56 + 1) + 8 * j);
          v27 = [v26 toURI];
          v28 = [(IDSPeerIDManager *)v52 queryHandler];
          [v28 noteKTQueryFinishedForURI:v27 service:@"com.apple.madrid"];

          v29 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v27;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Checking for updates result for %@.", buf, 0xCu);
          }

          v30 = [(NSCache *)v52->_dbCache objectForKey:v26];
          v31 = [v30 keyTransparencyContext];

          v32 = [v31 verifierResult];
          v33 = [v46 objectForKeyedSubscript:v27];
          v34 = [v32 isEqual:v33];
          v35 = +[IDSFoundationLog KeyTransparency];
          v36 = v35;
          if (v34)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v69 = v33;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "URI: no update: %@", buf, 0xCu);
            }

            v37 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v69 = v32;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "URI: stored: %@", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v43;
              v69 = v27;
              v70 = 2112;
              v71 = v33;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "URI: %@ has a new KTVerifierResult: %@", buf, 0x16u);
            }

            v38 = [IDSQueryKeyTransparencyContext alloc];
            v39 = [v31 accountKey];
            v40 = [v31 queryResponseTime];
            v37 = [v38 initWithVerifierResult:v33 ticket:0 accountKey:v39 queryResponseTime:v40 ktOptIn:{objc_msgSend(v31, "ktOptIn")}];

            [(IDSPeerIDManager *)v52 _updateKTContext:v37 forURI:v27 manager:v44];
            v54[0] = _NSConcreteStackBlock;
            v54[1] = 3221225472;
            v54[2] = sub_1003193FC;
            v54[3] = &unk_100BD7108;
            v55 = v27;
            [v44 updateKeyTransparencyContext:v37 uri:v55 service:@"com.apple.madrid" completion:v54];

            v24 = 1;
          }
        }

        v23 = [v48 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
    }

    v41 = +[TransparencyAnalytics logger];
    v42 = [NSNumber numberWithBool:v24 & 1];
    [v41 logMetric:v42 withName:@"IDSKTPeerVerificationResultsChanged"];

    v20 = v53;
  }

  else
  {
    v41 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found no keys to update.", buf, 2u);
    }
  }
}

- (BOOL)startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 forSending:(BOOL)a7 forceToServer:(BOOL)a8 clientRequestedForceQuery:(BOOL)a9 reason:(id)a10 completionBlock:(id)a11
{
  v11 = a8;
  v12 = a7;
  v17 = a11;
  v18 = a10;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[IDSPeerIDQueryContext alloc] initWithSending:v12 forceToServer:v11 messaging:0 resultExpected:0 preventNewQuery:0 clientRequestedForceQuery:a9];
  LOBYTE(v12) = [(IDSPeerIDManager *)self startQueryForURIs:v22 fromIdentity:v21 fromURI:v20 fromService:v19 context:v23 reason:v18 completionBlock:v17];

  return v12;
}

- (BOOL)startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 reason:(id)a8 completionBlock:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v33 = a8;
  v32 = a7;
  v31 = a4;
  v18 = [NSMutableSet setWithArray:a3];
  v19 = [v18 __imSetByApplyingBlock:&stru_100BD7148];
  v20 = [v19 allObjects];
  v21 = [(IDSPeerIDManager *)self endpointsForURIs:v20 service:v16 fromURI:v15];

  v22 = [(IDSPeerIDManager *)self queryHandler];
  v23 = [v18 allObjects];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100319990;
  v34[3] = &unk_100BD7170;
  v34[4] = self;
  v35 = v19;
  v36 = v16;
  v37 = v15;
  v38 = v18;
  v39 = v21;
  v40 = v17;
  v30 = v17;
  v29 = v21;
  v24 = v18;
  v25 = v15;
  v26 = v16;
  v27 = v19;
  LOBYTE(self) = [v22 startQueryForURIs:v23 fromIdentity:v31 fromURI:v25 fromService:v26 context:v32 reason:v33 completionBlock:v34];

  return self;
}

- (void)notePeerToken:(id)a3 forURI:(id)a4 fromURI:(id)a5 service:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 prefixedURI];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v9 rawToken];
    v16 = [v15 length];

    if (v16)
    {
      [(IDSPeerIDManager *)self _endpointsForService:v12 fromURI:v11 toURI:v10 ignoreExpiration:0];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v17 = v42 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v18)
      {
        v19 = *v42;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = [*(*(&v41 + 1) + 8 * i) pushTokenObject];
            v22 = [v21 isEqualToPushToken:v9];

            if (v22)
            {
              v23 = 1;
              goto LABEL_13;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v41 objects:v52 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v23 = 0;
LABEL_13:

      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v47 = v9;
        v48 = 2112;
        v49 = v10;
        v50 = 2112;
        v51 = v17;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Checking peer token: %@ for URI: %@   (Tokens: %@)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v34 = v10;
        v35 = v17;
        v33 = v9;
        _IDSLogV();
      }

      if (v23)
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "  => Good to go, we have it", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_45;
        }
      }

      else
      {
        v26 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "  => We don't have it - clearing that peer's map", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        if (![IDSPeerIDManager shouldUseSelfTokens:v33])
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v28 = [(NSMutableDictionary *)self->_purgeClientDataBlocks allValues];
          v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v29)
          {
            v30 = *v38;
            do
            {
              for (j = 0; j != v29; j = j + 1)
              {
                if (*v38 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v37 + 1) + 8 * j);
                if (v32)
                {
                  (*(v32 + 16))(v32, v12);
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v29);
          }

          [(IDSPeerIDManager *)self forgetPeerTokensForURI:v10 fromURI:v11 service:v12 reason:15];
          goto LABEL_45;
        }

        v27 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Not flushing tokens, we're in debilitated mode", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      _IDSLogV();
      goto LABEL_45;
    }
  }

LABEL_46:
}

- (void)clearCacheAndPersistImmediately:(BOOL)a3
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing peer and personal caches", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(NSCache *)self->_dbCache removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [(IDSPeerIDManager *)self persistenceManagers];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) deleteAllWithCompletion:&stru_100BD71B0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)pleaseDontCopyCacheDictionaryRepresentation
{
  v3 = [(IDSPeerIDManager *)self persistenceManagers];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 peerMapRepresentation];
  }

  else
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(IDSPeerIDManager *)self persistenceManagers];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) peerMapRepresentation];
          [v4 addEntriesFromDictionary:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v5 = [v4 copy];
  }

  v12 = v5;

  return v12;
}

- (void)forgetPeerTokensForURIs:(id)a3 services:(id)a4 reason:(int64_t)a5
{
  v33 = a3;
  v34 = a4;
  if (+[IDSPeerIDManager shouldUseSelfTokens])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not forgetting tokens, we're in debilitated mode", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v54 = v33;
      v55 = 2112;
      v56 = v34;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Forgetting peer tokens for URIs: %@  services: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v29 = v33;
      v30 = v34;
      _IDSLogV();
    }

    [(NSCache *)self->_dbCache removeAllObjects:v29];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = [(IDSPeerIDManager *)self persistenceManagers];
    v9 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v9)
    {
      v10 = *v47;
      do
      {
        v11 = 0;
        do
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v46 + 1) + 8 * v11);
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_10031AC18;
          v43[3] = &unk_100BD71D8;
          v13 = v33;
          v44 = v13;
          v45 = v34;
          [v12 deleteEndpointsWithServices:v45 toURIs:v13 completion:v43];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v9);
    }

    v14 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = v33;
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v16)
    {
      v17 = *v40;
      do
      {
        v18 = 0;
        do
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v39 + 1) + 8 * v18) prefixedURI];
          [v14 addObject:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v16);
    }

    [(IDSPeerIDManager *)self deleteStatusesForServices:v34 URIs:v14];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v34;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v50 count:16];
    if (v21)
    {
      v22 = *v36;
      do
      {
        v23 = 0;
        do
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v35 + 1) + 8 * v23);
          v25 = [IDSQueryCacheClearMetric alloc];
          v26 = [(IDSPeerIDManager *)self _queryCacheReasonString:a5];
          v27 = [v25 initWithServiceIdentifier:v24 clearReason:v26 uriCount:{objc_msgSend(v14, "count")}];

          v28 = +[IDSCoreAnalyticsLogger defaultLogger];
          [v28 logMetric:v27];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v35 objects:v50 count:16];
      }

      while (v21);
    }
  }
}

- (void)forgetPeerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5 reason:(int64_t)a6
{
  v9 = a3;
  v39 = a4;
  v40 = a5;
  if (+[IDSPeerIDManager shouldUseSelfTokens])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not forgetting tokens, we're in debilitated mode", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v35 = a6;
    v11 = [v9 prefixedURI];
    v12 = [v11 length];

    if (v12)
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v56 = v9;
        v57 = 2112;
        v58 = v39;
        v59 = 2112;
        v60 = v40;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Forgetting peer tokens for URI: %@  from URI: %@  service: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v33 = v39;
        v34 = v40;
        v32 = v9;
        _IDSLogV();
      }

      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v49 = 0u;
      v14 = [(NSMutableDictionary *)self->_purgeClientDataBlocks allValues:v32];
      v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v15)
      {
        v16 = *v50;
        do
        {
          v17 = 0;
          do
          {
            if (*v50 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v49 + 1) + 8 * v17);
            if (v18)
            {
              (*(v18 + 16))(v18, v40);
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v15);
      }

      v36 = [[IDSPeerIDKey alloc] initWithService:v40 fromURI:v39 toURI:v9];
      [(NSCache *)self->_dbCache removeObjectForKey:v36];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [(IDSPeerIDManager *)self persistenceManagers];
      v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v19)
      {
        v20 = *v46;
        do
        {
          v21 = 0;
          do
          {
            if (*v46 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v45 + 1) + 8 * v21);
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10031B258;
            v41[3] = &unk_100BD6FB8;
            v23 = v9;
            v24 = v9;
            v42 = v24;
            v25 = v39;
            v43 = v25;
            v44 = v40;
            v26 = v24;
            v9 = v23;
            [v22 deleteEndpointsWithService:v44 fromURI:v25 toURI:v26 completion:v41];

            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v19);
      }

      v27 = [v9 prefixedURI];
      [(IDSPeerIDManager *)self deleteStatusForService:v40 URI:v27];

      v28 = [IDSQueryCacheClearMetric alloc];
      v29 = [(IDSPeerIDManager *)self _queryCacheReasonString:v35];
      v30 = [v28 initWithServiceIdentifier:v40 clearReason:v29 uriCount:1];

      v31 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v31 logMetric:v30];
    }
  }
}

- (void)forgetPeerTokensForURI:(id)a3 fromURI:(id)a4 services:(id)a5 reason:(int64_t)a6
{
  v9 = a3;
  v47 = a4;
  v43 = a5;
  v48 = v9;
  if (+[IDSPeerIDManager shouldUseSelfTokens])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not forgetting tokens, we're in debilitated mode", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v11 = [v9 prefixedURI];
    if ([v11 length])
    {
      v12 = [v43 count];

      if (v12)
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v74 = v9;
          v75 = 2112;
          v76 = v47;
          v77 = 2112;
          v78 = v43;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Forgetting peer tokens for URI: %@  from URI: %@  services: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v41 = v47;
          v42 = v43;
          v40 = v9;
          _IDSLogV();
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = v43;
        v14 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
        if (v14)
        {
          v15 = *v66;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v66 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v65 + 1) + 8 * i);
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v18 = [(NSMutableDictionary *)self->_purgeClientDataBlocks allValues:v40];
              v19 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
              if (v19)
              {
                v20 = *v62;
                do
                {
                  for (j = 0; j != v19; j = j + 1)
                  {
                    if (*v62 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = *(*(&v61 + 1) + 8 * j);
                    if (v22)
                    {
                      (*(v22 + 16))(v22, v17);
                    }
                  }

                  v19 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
                }

                while (v19);
              }

              v23 = [[IDSPeerIDKey alloc] initWithService:v17 fromURI:v47 toURI:v48];
              [(NSCache *)self->_dbCache removeObjectForKey:v23];
            }

            v14 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
          }

          while (v14);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v44 = [(IDSPeerIDManager *)self persistenceManagers];
        v24 = [v44 countByEnumeratingWithState:&v57 objects:v70 count:16];
        if (v24)
        {
          v25 = *v58;
          do
          {
            for (k = 0; k != v24; k = k + 1)
            {
              if (*v58 != v25)
              {
                objc_enumerationMutation(v44);
              }

              v27 = *(*(&v57 + 1) + 8 * k);
              v53[0] = _NSConcreteStackBlock;
              v53[1] = 3221225472;
              v53[2] = sub_10031B9C4;
              v53[3] = &unk_100BD6FB8;
              v28 = v48;
              v54 = v28;
              v29 = v47;
              v55 = v29;
              v56 = obj;
              [v27 deleteEndpointsWithServices:v56 fromURI:v29 toURI:v28 completion:v53];
            }

            v24 = [v44 countByEnumeratingWithState:&v57 objects:v70 count:16];
          }

          while (v24);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = obj;
        v31 = [v30 countByEnumeratingWithState:&v49 objects:v69 count:16];
        if (v31)
        {
          v32 = *v50;
          do
          {
            for (m = 0; m != v31; m = m + 1)
            {
              if (*v50 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = *(*(&v49 + 1) + 8 * m);
              v35 = [v48 prefixedURI];
              [(IDSPeerIDManager *)self deleteStatusForService:v34 URI:v35];

              v36 = [IDSQueryCacheClearMetric alloc];
              v37 = [(IDSPeerIDManager *)self _queryCacheReasonString:a6];
              v38 = [v36 initWithServiceIdentifier:v34 clearReason:v37 uriCount:1];

              v39 = +[IDSCoreAnalyticsLogger defaultLogger];
              [v39 logMetric:v38];
            }

            v31 = [v30 countByEnumeratingWithState:&v49 objects:v69 count:16];
          }

          while (v31);
        }
      }
    }

    else
    {
    }
  }
}

- (void)forgetPeerTokensForURI:(id)a3 service:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v32 = a4;
  v31 = v8;
  if (+[IDSPeerIDManager shouldUseSelfTokens])
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not forgetting tokens, we're in debilitated mode", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v10 = [v8 prefixedURI];
    v11 = [v10 length];

    if (v11)
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = v8;
        v45 = 2112;
        v46 = v32;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Forgetting peer tokens for URI: %@ service: %@ for all registered URIs.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v28 = v8;
        v29 = v32;
        _IDSLogV();
      }

      v13 = [IDSDAccountController sharedInstance:v28];
      v14 = +[IDSDServiceController sharedInstance];
      v15 = [v14 serviceWithIdentifier:v32];
      v16 = [v13 accountsOnService:v15];

      v17 = objc_alloc_init(NSMutableSet);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v16;
      v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v18)
      {
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = [*(*(&v37 + 1) + 8 * i) registration];
            v22 = [v21 uris];
            v23 = [v22 __imArrayByApplyingBlock:&stru_100BD71F8];

            [v17 addObjectsFromArray:v23];
          }

          v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v18);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v24 = v17;
      v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v25)
      {
        v26 = *v34;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v24);
            }

            [(IDSPeerIDManager *)self forgetPeerTokensForURI:v31 fromURI:*(*(&v33 + 1) + 8 * j) service:v32 reason:a5];
          }

          v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
      }
    }
  }
}

- (void)forgetPeerTokensForService:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Forgetting peer tokens for service {service: %@}", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v6;
    _IDSLogV();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(NSMutableDictionary *)self->_purgeClientDataBlocks allValues];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if (v12)
        {
          (*(v12 + 16))(v12, v6);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(NSCache *)self->_dbCache removeAllObjects];
  v13 = [(IDSPeerIDManager *)self persistenceManagerForService:v6];
  if (v13)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10031C278;
    v19[3] = &unk_100BD7108;
    v20 = v6;
    [v13 deleteEndpointsWithService:v20 completion:v19];
  }

  [(IDSPeerIDManager *)self deleteAllStatusesForService:v6];
  v14 = [IDSQueryCacheClearMetric alloc];
  v15 = [(IDSPeerIDManager *)self _queryCacheReasonString:a4];
  v16 = [v14 initWithServiceIdentifier:v6 clearReason:v15 uriCount:-1];

  v17 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v17 logMetric:v16];
}

- (BOOL)hasPeerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5 validThrough:(id)a6 outReason:(unint64_t *)a7
{
  v12 = a3;
  v53 = a4;
  v52 = a5;
  v51 = a6;
  v13 = [v12 prefixedURI];
  v14 = [v13 length];

  if (!v14)
  {
    if (a7)
    {
      *a7 = 0;
    }

    v16 = 1;
    goto LABEL_66;
  }

  if (+[IDSPeerIDManager shouldUseSelfTokens])
  {
    v15 = [(IDSPeerIDManager *)self _disasterModeTokenForURI:v53];

    if (v15)
    {
      v16 = 0;
      if (a7)
      {
        *a7 = 1;
      }

      goto LABEL_66;
    }
  }

  v17 = [v12 pushToken];
  v49 = [v12 tokenFreeURI];
  v18 = [(IDSPeerIDManager *)self _endpointsForService:v52 fromURI:v53 toURI:v49 ignoreExpiration:0];
  v50 = v18;
  if (!v18 || ![v18 count])
  {
    v16 = 0;
    if (a7)
    {
      *a7 = 2;
    }

    goto LABEL_65;
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v51;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Client valid through date: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v46 = v51;
    _IDSLogV();
  }

  v20 = v51;
  v21 = +[IDSPeerIDManager defaultEndpointValidThroughTimeInterval];
  [v20 timeIntervalSinceNow];
  if (v22 > v21)
  {
    v23 = [NSDate dateWithTimeIntervalSinceNow:?];

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [NSNumber numberWithUnsignedInteger:v21];
      *buf = 138412546;
      v65 = v25;
      v66 = 2112;
      v67 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Client's valid through date was too big, default time instead. { timeInSeconds: %@, newValidThroughDate: %@ }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v46 = [NSNumber numberWithUnsignedInteger:v21];
      v47 = v23;
      _IDSLogV();
    }

    v26 = v50;
    v27 = v23;
    if (!v23)
    {
      goto LABEL_44;
    }

LABEL_27:
    v48 = v27;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v29)
    {
      v30 = 0;
      v31 = *v59;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v58 + 1) + 8 * i) expireDate];
          v34 = v33;
          if (!v30 || [v33 compare:v30] == -1)
          {
            v35 = v34;

            v30 = v35;
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v29);

      if (v30 && [v30 compare:v48] == -1)
      {
        if (a7)
        {
          *a7 = 3;
        }

        v16 = 0;
        v27 = v48;
        goto LABEL_64;
      }
    }

    else
    {

      v30 = 0;
    }

    v26 = v50;
    v27 = v48;
    goto LABEL_44;
  }

  v27 = v20;
  v26 = v50;
  if (v20)
  {
    goto LABEL_27;
  }

LABEL_44:
  if (!v17)
  {
    if (a7)
    {
      *a7 = 0;
    }

    v16 = 1;
    goto LABEL_64;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v36 = v26;
  v37 = [v36 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (!v37)
  {
    goto LABEL_54;
  }

  v38 = *v55;
  while (2)
  {
    for (j = 0; j != v37; j = j + 1)
    {
      if (*v55 != v38)
      {
        objc_enumerationMutation(v36);
      }

      v40 = *(*(&v54 + 1) + 8 * j);
      v41 = [v40 pushTokenObject];
      if (v41 && [v17 isEqualToPushToken:v41])
      {
        v42 = [v40 expireDate];
        v43 = v42;
        if (v27 && [v42 compare:v27] == -1)
        {
          v16 = 0;
          v44 = 4;
          if (!a7)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v44 = 0;
          v16 = 1;
          if (!a7)
          {
LABEL_63:

            goto LABEL_64;
          }
        }

        *a7 = v44;
        goto LABEL_63;
      }
    }

    v37 = [v36 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v16 = 0;
  if (a7)
  {
    *a7 = 5;
  }

LABEL_64:

LABEL_65:
LABEL_66:

  return v16;
}

- (id)activeURIsFromURI:(id)a3 service:(id)a4
{
  v30 = a3;
  v31 = a4;
  v6 = [v30 prefixedURI];
  if (![v6 length])
  {

    v25 = 0;
LABEL_36:
    v7 = v31;
    goto LABEL_38;
  }

  v7 = v31;
  v8 = [v31 length];

  if (v8)
  {
    v9 = [(IDSPeerIDManager *)self _peerIDKeysForService:v31 andFromURI:v30];
    v36 = objc_alloc_init(NSMutableSet);
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v48 = v31;
      v49 = 2112;
      v50 = v30;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Active query for service: %@  from: %@  peers: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v28 = v30;
      v29 = v9;
      v27 = v31;
      _IDSLogV();
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v9;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v34)
    {
      v33 = *v42;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v33)
          {
            v12 = v11;
            objc_enumerationMutation(obj);
            v11 = v12;
          }

          v35 = v11;
          v13 = *(*(&v41 + 1) + 8 * v11);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v14 = [(NSCache *)self->_dbCache objectForKey:v13, v27, v28, v29];
          v15 = [v14 endpoints];

          v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v16)
          {
            v17 = *v38;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v38 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v37 + 1) + 8 * i);
                v20 = objc_opt_class();
                v21 = [v19 expireDate];
                LOBYTE(v20) = [v20 _datePassed:v21];

                if (v20)
                {
                  v22 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v48 = v19;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "  Expired session for: %@, skipping...", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v27 = v19;
                    _IDSLogV();
                  }
                }

                else
                {
                  v23 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v48 = v19;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "  Active sessions for: %@, adding...", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v27 = v19;
                    _IDSLogV();
                  }

                  v24 = [v19 URI];
                  [v36 addObject:v24];
                }
              }

              v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v16);
          }

          v11 = v35 + 1;
        }

        while ((v35 + 1) != v34);
        v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    v25 = [v36 allObjects];

    goto LABEL_36;
  }

  v25 = 0;
LABEL_38:

  return v25;
}

- (id)urisMatchingPushToken:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v34 = self;
  v9 = [(NSCache *)self->_dbCache mapTableRepresentation];
  v10 = [v9 keyEnumerator];
  v11 = [v10 allObjects];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    v32 = *v44;
    v33 = v7;
    do
    {
      v15 = 0;
      v35 = v13;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        v17 = [v16 service];
        v18 = [v17 isEqualToString:v7];

        if (v18)
        {
          v38 = v15;
          v19 = [(NSCache *)v34->_dbCache objectForKey:v16];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v37 = v19;
          v20 = [v19 endpoints];
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v40;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v39 + 1) + 8 * i);
                v26 = [v25 pushToken];
                v27 = [v6 rawToken];
                v28 = [v26 isEqualToData:v27];

                if (v28)
                {
                  v29 = [v25 URI];
                  [v8 addObject:v29];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v22);
          }

          v14 = v32;
          v7 = v33;
          v13 = v35;
          v15 = v38;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  v30 = [v8 allObjects];

  return v30;
}

- (id)peerTokensForURI:(id)a3 fromURI:(id)a4 service:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableSet set];
  v12 = [(IDSPeerIDManager *)self _endpointsForService:v10 fromURI:v9 toURI:v8 ignoreExpiration:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) pushTokenObject];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)uriForShortHandle:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = IDSServiceNameiMessage;
    [(IDSPeerIDManager *)self _peerIDKeysForService:IDSServiceNameiMessage];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v25)
    {
      goto LABEL_19;
    }

    v21 = v5;
    v6 = 0;
    v23 = *v31;
    v24 = self;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSCache *)self->_dbCache objectForKey:*(*(&v30 + 1) + 8 * i)];
        v9 = [v8 endpoints];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              v16 = [v15 shortHandle];
              v17 = [v16 isEqualToString:v4];

              if (v17)
              {
                v18 = [v15 URI];

                v6 = v18;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v12);
        }

        self = v24;
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
    v5 = v21;
    if (!v6)
    {
LABEL_19:
      v19 = [(IDSPeerIDManager *)self persistenceManagerForService:v5];
      v6 = [v19 uriForShortHandle:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)shortHandleForURI:(id)a3 fromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 prefixedURI];
  v9 = [v8 length];

  if (v9)
  {
    v10 = IDSServiceNameiMessage;
    v11 = [(IDSPeerIDManager *)self _endpointsForService:IDSServiceNameiMessage fromURI:v7 toURI:v6 ignoreExpiration:1];
    v12 = [v11 firstObject];

    if (!v12 || ([v12 shortHandle], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, objc_msgSend(v12, "shortHandle"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15) || (objc_msgSend(v12, "shortHandle"), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = [(IDSPeerIDManager *)self persistenceManagerForService:v10];
      v16 = [v17 shortHandleForUri:v6];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)addCompletionBlock:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10031D854;
    v11[3] = &unk_100BD7220;
    v12 = v6;
    v8 = a4;
    v9 = objc_retainBlock(v11);
    v10 = [(IDSPeerIDManager *)self queryHandler];
    [v10 addCompletionBlock:v9 forToken:v8];
  }
}

- (void)removeCompletionBlockForToken:(id)a3
{
  v4 = a3;
  v5 = [(IDSPeerIDManager *)self queryHandler];
  [v5 removeCompletionBlockForToken:v4];
}

- (void)addClientDataUpdateBlock:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if (!self->_clientDataUpdateBlocks)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        clientDataUpdateBlocks = self->_clientDataUpdateBlocks;
        self->_clientDataUpdateBlocks = Mutable;
      }

      v10 = [v6 copy];
      v11 = v10;
      if (v10)
      {
        v12 = self->_clientDataUpdateBlocks;
        v13 = objc_retainBlock(v10);
        [(NSMutableDictionary *)v12 setObject:v13 forKey:v7];
      }

      goto LABEL_18;
    }

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Empty client data update block for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_17:
      _IDSLogV();
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Empty token for client data update block", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)removeClientDataUpdateBlockForToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_clientDataUpdateBlocks removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_clientDataUpdateBlocks count])
    {
      clientDataUpdateBlocks = self->_clientDataUpdateBlocks;
      self->_clientDataUpdateBlocks = 0;
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Empty token for removing client data update block", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)addPurgeClientDataBlock:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if (!self->_purgeClientDataBlocks)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        purgeClientDataBlocks = self->_purgeClientDataBlocks;
        self->_purgeClientDataBlocks = Mutable;
      }

      v10 = [v6 copy];
      v11 = v10;
      if (v10)
      {
        v12 = self->_purgeClientDataBlocks;
        v13 = objc_retainBlock(v10);
        [(NSMutableDictionary *)v12 setObject:v13 forKey:v7];
      }

      goto LABEL_18;
    }

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Empty purge client data block for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_17:
      _IDSLogV();
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Empty token for purge client data block", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)removePurgeClientDataBlockForToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_purgeClientDataBlocks removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_purgeClientDataBlocks count])
    {
      purgeClientDataBlocks = self->_purgeClientDataBlocks;
      self->_purgeClientDataBlocks = 0;
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Empty token for removing purge client data block", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)addEndpointQueryCompletionBlock:(id)a3 forToken:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10031E190;
    block[3] = &unk_100BD7248;
    block[4] = self;
    v19 = v8;
    v17 = v11;
    v18 = v9;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(v8);
      *buf = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing context for adding endpoint query completion block -- ignoring request {block: %@, token: %@, queue: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = objc_retainBlock(v8);
      _IDSLogV();
    }
  }
}

- (void)removeEndpointQueryCompletionBlockForToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10031E3C8;
    block[3] = &unk_100BD6E40;
    block[4] = self;
    v8 = v4;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Missing context for removing endpoint query completion block -- ignoring request {token: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)endpointsForURIs:(id)a3 serviceIdentifier:(id)a4 localURI:(id)a5 completion:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v12 || !v13 || !v14 || !v15 || !v16)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_retainBlock(v15);
      *buf = 138413314;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v19;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Missing context for endpoint request -- returning nil {URIs: %@, serviceIdentifier: %@, localURI: %@, completion: %@, queue: %@}", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = objc_retainBlock(v15);
      _IDSLogV();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10031E718;
    block[3] = &unk_100BD7270;
    v34 = v15;
    dispatch_async(v17, block);
  }

  v20 = im_primary_queue();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10031E72C;
  v27[3] = &unk_100BD72C0;
  v27[4] = self;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v17;
  v32 = v15;
  v21 = v15;
  v22 = v17;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  dispatch_async(v20, v27);
}

- (void)performCleanupTasks
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(IDSPeerIDManager *)self persistenceManagers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) performDBCleanupTasksWithCompletion:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSCache *)self->_dbCache removeAllObjects];
  [(NSCache *)self->_standardIDStatusCache removeAllObjects];
  [(NSCache *)self->_restrictedIDStatusCache removeAllObjects];
}

- (id)_loadCachedPeerIDValueForKey:(id)a3 ignoreExpiration:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 service];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 fromURI];
      if (v10)
      {
        v11 = v10;
        v12 = [v7 toURI];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }
  }

  v13 = +[IDSFoundationLog PeerLookup_DBCache];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Cannot load key, missing data. { peerIDKey: %@ }", &v26, 0xCu);
  }

LABEL_10:
  v14 = [v7 service];
  v15 = [(IDSPeerIDManager *)self persistenceManagerForService:v14];

  v16 = [v7 service];
  v17 = [v7 fromURI];
  v18 = [v7 toURI];
  v19 = [v15 fetchEndpointsWithService:v16 fromURI:v17 toURI:v18 ignoreExpiration:v4];

  v20 = [v7 toURI];
  v21 = [v7 service];
  v22 = [v15 fetchKeyTransparencyContextFor:v20 service:v21];

  v23 = [[IDSPeerIDValue alloc] initWithEndpoints:v19 keyTransparencyContext:v22];
  v24 = +[IDSFoundationLog PeerLookup_DBCache];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v26 = 138412546;
    v27 = v7;
    v28 = 2112;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "DB Cache Load { peerIDKey: %@, peerIDValue: %@ }", &v26, 0x16u);
  }

  -[NSCache setObject:forKey:cost:](self->_dbCache, "setObject:forKey:cost:", v23, v7, [v19 count]);

  return v23;
}

- (void)_updateKTContext:(id)a3 forURI:(id)a4 manager:(id)a5
{
  v8 = a3;
  v33 = a4;
  v32 = a5;
  v9 = [(IDSKeyTransparencyVerifier *)self->_keyTransparencyVerifier accountController];
  v10 = [(IDSKeyTransparencyVerifier *)self->_keyTransparencyVerifier serviceController];
  v11 = [v10 serviceWithIdentifier:@"com.apple.madrid"];
  v12 = [v9 accountsOnService:v11];

  v13 = objc_alloc_init(NSMutableSet);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      v17 = 0;
      do
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v38 + 1) + 8 * v17) registration];
        v19 = [v18 uris];
        v20 = [v19 __imArrayByApplyingBlock:&stru_100BD72E0];

        [v13 addObjectsFromArray:v20];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v15);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = v13;
  v21 = [v30 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v30);
        }

        v25 = [[IDSPeerIDKey alloc] initWithService:@"com.apple.madrid" fromURI:*(*(&v34 + 1) + 8 * v24) toURI:v33];
        v26 = [(NSCache *)self->_dbCache objectForKey:v25];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 endpoints];
          [v32 updateKeyTransparencyForEndpoints:v28 withKTContext:v8];
          v29 = [[IDSPeerIDValue alloc] initWithEndpoints:v28 keyTransparencyContext:v8];
          -[NSCache setObject:forKey:cost:](self->_dbCache, "setObject:forKey:cost:", v29, v25, [v28 count]);
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v30 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v22);
  }
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v4 = a4;
  v5 = +[IDSFoundationLog PeerLookup_DBCache];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DB Cache Eviction { peerIDValue: %@ }", &v6, 0xCu);
  }
}

- (id)loadStatusForService:(id)a3 URI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loading status for service %@ uri %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = v6;
    v18 = v7;
    _IDSLogV();
  }

  v9 = [(IDSPeerIDManager *)self idStatusCacheForService:v6, v17, v18];
  v10 = [IDSIDStatusKey statusIDKeyWithService:v6 URI:v7];
  v11 = [v9 objectForKey:v10];
  if (v11)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning cached status %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v13 = v11;
  }

  else
  {
    v14 = [(IDSPeerIDManager *)self persistenceManagerForService:v6];
    v13 = [v14 loadStatusForService:v6 uri:v7];
    if (v13)
    {
      [v9 setObject:v13 forKey:v10];
    }

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Returning database status %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  return v13;
}

- (id)loadAllStatusesForService:(id)a3
{
  v18 = a3;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading status for service %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = v18;
    _IDSLogV();
  }

  v5 = [(IDSPeerIDManager *)self idStatusCacheForService:v18, v16];
  v17 = [(IDSPeerIDManager *)self persistenceManagerForService:v18];
  [v17 loadAllStatusesForService:v18];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 service];
        v12 = [v10 uriString];
        v13 = [IDSIDStatusKey statusIDKeyWithService:v11 URI:v12];

        [v5 setObject:v10 forKey:v13];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning database statuses %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return v6;
}

- (void)saveStatus:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving status %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (v4)
  {
    v6 = [v4 service];
    v7 = [(IDSPeerIDManager *)self persistenceManagerForService:v6];

    [v7 saveStatus:v4 completion:0];
    v8 = [v4 service];
    v9 = [(IDSPeerIDManager *)self idStatusCacheForService:v8];

    v10 = [v4 service];
    v11 = [v4 uriString];
    v12 = [IDSIDStatusKey statusIDKeyWithService:v10 URI:v11];

    [v9 setObject:v4 forKey:v12];
  }
}

- (void)deleteStatus:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting status %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v4;
    _IDSLogV();
  }

  v6 = [v4 service];
  v7 = [(IDSPeerIDManager *)self persistenceManagerForService:v6];

  [v7 deleteStatus:v4 completion:0];
  v8 = [v4 service];
  v9 = [(IDSPeerIDManager *)self idStatusCacheForService:v8];

  v10 = [v4 service];
  v11 = [v4 uriString];
  v12 = [IDSIDStatusKey statusIDKeyWithService:v10 URI:v11];

  [v9 removeObjectForKey:v12];
}

- (void)deleteStatusForService:(id)a3 URI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting status for service %@ uri %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    v13 = v7;
    _IDSLogV();
  }

  v9 = [(IDSPeerIDManager *)self persistenceManagerForService:v6, v12, v13];
  [v9 deleteStatusForService:v6 URI:v7 completion:0];
  v10 = [(IDSPeerIDManager *)self idStatusCacheForService:v6];
  v11 = [IDSIDStatusKey statusIDKeyWithService:v6 URI:v7];
  [v10 removeObjectForKey:v11];
}

- (void)deleteStatusesForServices:(id)a3 URIs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting all statuses for services %@ uris %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v6;
    v14 = v7;
    _IDSLogV();
  }

  [(NSCache *)self->_standardIDStatusCache removeAllObjects:v13];
  [(NSCache *)self->_restrictedIDStatusCache removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(IDSPeerIDManager *)self persistenceManagers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v12) deleteAllStatusesForServices:v6 toURIs:v7 completion:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)deleteAllStatusesForService:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting all statuses for service %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = v4;
    _IDSLogV();
  }

  v6 = [(IDSPeerIDManager *)self persistenceManagerForService:v4, v8];
  [v6 deleteAllStatusesForService:v4 completion:0];
  v7 = [(IDSPeerIDManager *)self idStatusCacheForService:v4];
  [v7 removeAllObjects];
}

- (void)deleteStatusCache
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting all statuses", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [(IDSPeerIDManager *)self persistenceManagers];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7) deleteAllStatusesWithCompletion:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSCache *)self->_standardIDStatusCache removeAllObjects];
  [(NSCache *)self->_restrictedIDStatusCache removeAllObjects];
}

- (id)_queryCacheReasonString:(int64_t)a3
{
  if (a3 > 0x10)
  {
    return &stru_100C06028;
  }

  else
  {
    return off_100BD7398[a3];
  }
}

@end