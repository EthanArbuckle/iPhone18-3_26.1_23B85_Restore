@interface IDSURIEncrypter
- (BOOL)_isReplayError:(id)a3;
- (BOOL)_serverDisabledDupeReadReceipts;
- (IDSURIEncrypter)initWithPeerIDManager:(id)a3 fullDeviceIdentityContainerEncrypter:(id)a4 rateLimiter:(id)a5 replayCommitter:(id)a6 publicIdentityCache:(id)a7 avoidMainQueue:(BOOL)a8;
- (IDSURIEncrypter)initWithPeerIDManager:(id)a3 fullDeviceIdentitySigner:(id)a4 rateLimiter:(id)a5 publicIdentityCache:(id)a6 avoidMainQueue:(BOOL)a7;
- (__SecKey)_copyLookupSecVerificationIdentity;
- (id)_lookupEndpoint;
- (id)_lookupIdentityWithLastResortFallback:(BOOL *)a3;
- (id)_lookupNGMVerificationIdentityShouldUseLastResort:(BOOL)a3 usedLastResort:(BOOL *)a4;
- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 usedIdentifier:(id *)a5 error:(id *)a6;
- (void)decryptData:(id)a3 decryptionContext:(id)a4 usingIdentifier:(id)a5 onQueue:(id)a6 isRetry:(BOOL)a7 replayKey:(id)a8 withCompletion:(id)a9;
- (void)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 withCompletion:(id)a6;
- (void)setupWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7;
- (void)setupWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)obj;
- (void)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 onQueue:(id)a6 withCompletion:(id)a7;
@end

@implementation IDSURIEncrypter

- (IDSURIEncrypter)initWithPeerIDManager:(id)a3 fullDeviceIdentityContainerEncrypter:(id)a4 rateLimiter:(id)a5 replayCommitter:(id)a6 publicIdentityCache:(id)a7 avoidMainQueue:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = IDSURIEncrypter;
  v18 = [(IDSURIEncrypter *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_peerIDManager, a3);
    objc_storeStrong(&v19->_fullDeviceIdentityContainerEncrypter, a4);
    objc_storeStrong(&v19->_rateLimiter, a5);
    objc_storeStrong(&v19->_replayCommitter, a6);
    objc_storeStrong(&v19->_publicIdentityCache, a7);
    v19->_avoidMainQueue = a8;
    v19->_forceLegacy = 0;
  }

  return v19;
}

- (IDSURIEncrypter)initWithPeerIDManager:(id)a3 fullDeviceIdentitySigner:(id)a4 rateLimiter:(id)a5 publicIdentityCache:(id)a6 avoidMainQueue:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = IDSURIEncrypter;
  v17 = [(IDSURIEncrypter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_peerIDManager, a3);
    objc_storeStrong(&v18->_fullDeviceIdentitySigner, a4);
    objc_storeStrong(&v18->_rateLimiter, a5);
    objc_storeStrong(&v18->_publicIdentityCache, a6);
    v18->_avoidMainQueue = a7;
  }

  return v18;
}

- (void)setupWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  localURI = self->_localURI;
  self->_localURI = v12;
  v25 = v12;

  remoteURI = self->_remoteURI;
  self->_remoteURI = v13;
  v19 = v13;

  pushToken = self->_pushToken;
  self->_pushToken = v14;
  v21 = v14;

  service = self->_service;
  self->_service = v15;
  v23 = v15;

  cert = self->_cert;
  self->_cert = v16;
}

- (void)setupWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)obj
{
  self->_keyType = a8;
  objc_storeStrong(&self->_keyDiversifier, obj);
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  [(IDSURIEncrypter *)self setupWithLocalURI:v19 remoteURI:v18 pushToken:v17 service:v16 cert:v15];
}

- (id)_lookupEndpoint
{
  v3 = [(IDSURIEncrypter *)self peerIDManager];
  v4 = [(IDSURIEncrypter *)self pushToken];
  v5 = [IDSPushToken pushTokenWithData:v4 withServiceLoggingHint:self->_service];
  v6 = [(IDSURIEncrypter *)self remoteURI];
  v7 = [(IDSURIEncrypter *)self service];
  v8 = [(IDSURIEncrypter *)self localURI];
  v9 = [v3 endpointForPushToken:v5 URI:v6 service:v7 fromURI:v8];

  return v9;
}

- (id)_lookupIdentityWithLastResortFallback:(BOOL *)a3
{
  v5 = [(IDSURIEncrypter *)self _lookupEndpoint];
  v6 = [v5 publicDeviceIdentityContainer];
  if (v5)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [(IDSURIEncrypter *)self publicIdentityCache];
  v10 = [(IDSURIEncrypter *)self pushToken];
  v11 = [(IDSURIEncrypter *)self remoteURI];
  v12 = [(IDSURIEncrypter *)self service];
  v16 = 0;
  v13 = [v9 identityForToken:v10 uri:v11 service:v12 error:&v16];
  v14 = v16;

  if (v14)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error retrieving data from last resort cache: { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSLogEventV();
    }
  }

  v7 = v13 != 0;

  v6 = v13;
  if (a3)
  {
LABEL_3:
    *a3 = v7;
  }

LABEL_4:

  return v6;
}

- (BOOL)_isReplayError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v6 = [v3 domain];
  v7 = IDSDecryptionErrorDomain;
  if ([v6 isEqualToString:IDSDecryptionErrorDomain] && objc_msgSend(v3, "code") == 15)
  {
    v8 = [v5 domain];
    if ([v8 isEqualToString:@"com.apple.messageprotection"])
    {
      v9 = [v5 code] == 5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 domain];
  if ([v10 isEqualToString:v7])
  {
    v11 = [v3 code] == 5;
  }

  else
  {
    v11 = 0;
  }

  return v9 || v11;
}

- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 usedIdentifier:(id *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(IDSURIEncrypter *)self _lookupEndpoint];
  if (a5)
  {
    *a5 = IDSMPLegacyIdentityIdentifier;
  }

  fullDeviceIdentityContainerEncrypter = self->_fullDeviceIdentityContainerEncrypter;
  v14 = [v12 publicDeviceIdentityContainer];
  v15 = [(IDSMPFullDeviceIdentityContainerEncrypter *)fullDeviceIdentityContainerEncrypter legacyEncryptData:v11 withEncryptedAttributes:v10 withPublicDeviceIdentityContainer:v14 error:a6];

  return v15;
}

- (void)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10037AB08;
  v16[3] = &unk_100BD9620;
  v16[4] = self;
  v17 = v10;
  v19 = a5;
  v20 = a6;
  v18 = v11;
  v12 = v19;
  v13 = v20;
  v14 = v11;
  v15 = v10;
  [v12 performAsyncBlock:v16];
}

- (void)decryptData:(id)a3 decryptionContext:(id)a4 usingIdentifier:(id)a5 onQueue:(id)a6 isRetry:(BOOL)a7 replayKey:(id)a8 withCompletion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = [v16 incomingMetric];
  if (CUTIsInternalInstall())
  {
    v31 = a7;
    v22 = [v16 command];
    if ([v22 isEqualToNumber:&off_100C3BBC0])
    {
      v23 = ![(IDSURIEncrypter *)self _serverDisabledDupeReadReceipts];
    }

    else
    {
      v23 = 0;
    }

    a7 = v31;
  }

  else
  {
    v23 = 0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10037B8F4;
  v32[3] = &unk_100BD97B0;
  v40 = v23;
  v32[4] = self;
  v33 = v19;
  v34 = v21;
  v35 = v15;
  v36 = v16;
  v37 = v17;
  v41 = a7;
  v38 = v18;
  v39 = v20;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = v15;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  [v24 performAsyncBlock:v32];
}

- (void)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 onQueue:(id)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10037D4AC;
  v19[3] = &unk_100BD98C8;
  v19[4] = self;
  v20 = v12;
  v23 = a7;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v23;
  [v15 performAsyncBlock:v19];
}

- (id)_lookupNGMVerificationIdentityShouldUseLastResort:(BOOL)a3 usedLastResort:(BOOL *)a4
{
  if ([(IDSURIEncrypter *)self keyType])
  {
    v7 = 0;
  }

  else
  {
    if (a3)
    {
      v8 = [(IDSURIEncrypter *)self _lookupIdentityWithLastResortFallback:a4];
      v7 = [v8 ngmPublicDeviceIdentity];
    }

    else
    {
      v8 = [(IDSURIEncrypter *)self _lookupEndpoint];
      v9 = [v8 publicDeviceIdentityContainer];
      v7 = [v9 ngmPublicDeviceIdentity];
    }
  }

  return v7;
}

- (__SecKey)_copyLookupSecVerificationIdentity
{
  if ([(IDSURIEncrypter *)self keyType]!= 1)
  {
    return 0;
  }

  v3 = [(IDSURIEncrypter *)self _lookupEndpoint];
  if ([v3 applicationPublicDeviceIdentity])
  {
    v4 = [(IDSURIEncrypter *)self _lookupEndpoint];
    v5 = CFRetain([v4 applicationPublicDeviceIdentity]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_serverDisabledDupeReadReceipts
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-dupe-read-receipts"];

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

@end