@interface IDSURIEncrypter
- (BOOL)_isReplayError:(id)error;
- (BOOL)_serverDisabledDupeReadReceipts;
- (IDSURIEncrypter)initWithPeerIDManager:(id)manager fullDeviceIdentityContainerEncrypter:(id)encrypter rateLimiter:(id)limiter replayCommitter:(id)committer publicIdentityCache:(id)cache avoidMainQueue:(BOOL)queue;
- (IDSURIEncrypter)initWithPeerIDManager:(id)manager fullDeviceIdentitySigner:(id)signer rateLimiter:(id)limiter publicIdentityCache:(id)cache avoidMainQueue:(BOOL)queue;
- (__SecKey)_copyLookupSecVerificationIdentity;
- (id)_lookupEndpoint;
- (id)_lookupIdentityWithLastResortFallback:(BOOL *)fallback;
- (id)_lookupNGMVerificationIdentityShouldUseLastResort:(BOOL)resort usedLastResort:(BOOL *)lastResort;
- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes usedIdentifier:(id *)identifier error:(id *)error;
- (void)decryptData:(id)data decryptionContext:(id)context usingIdentifier:(id)identifier onQueue:(id)queue isRetry:(BOOL)retry replayKey:(id)key withCompletion:(id)completion;
- (void)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue withCompletion:(id)completion;
- (void)setupWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert;
- (void)setupWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)obj;
- (void)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion;
@end

@implementation IDSURIEncrypter

- (IDSURIEncrypter)initWithPeerIDManager:(id)manager fullDeviceIdentityContainerEncrypter:(id)encrypter rateLimiter:(id)limiter replayCommitter:(id)committer publicIdentityCache:(id)cache avoidMainQueue:(BOOL)queue
{
  managerCopy = manager;
  encrypterCopy = encrypter;
  limiterCopy = limiter;
  committerCopy = committer;
  cacheCopy = cache;
  v23.receiver = self;
  v23.super_class = IDSURIEncrypter;
  v18 = [(IDSURIEncrypter *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_peerIDManager, manager);
    objc_storeStrong(&v19->_fullDeviceIdentityContainerEncrypter, encrypter);
    objc_storeStrong(&v19->_rateLimiter, limiter);
    objc_storeStrong(&v19->_replayCommitter, committer);
    objc_storeStrong(&v19->_publicIdentityCache, cache);
    v19->_avoidMainQueue = queue;
    v19->_forceLegacy = 0;
  }

  return v19;
}

- (IDSURIEncrypter)initWithPeerIDManager:(id)manager fullDeviceIdentitySigner:(id)signer rateLimiter:(id)limiter publicIdentityCache:(id)cache avoidMainQueue:(BOOL)queue
{
  managerCopy = manager;
  signerCopy = signer;
  limiterCopy = limiter;
  cacheCopy = cache;
  v20.receiver = self;
  v20.super_class = IDSURIEncrypter;
  v17 = [(IDSURIEncrypter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_peerIDManager, manager);
    objc_storeStrong(&v18->_fullDeviceIdentitySigner, signer);
    objc_storeStrong(&v18->_rateLimiter, limiter);
    objc_storeStrong(&v18->_publicIdentityCache, cache);
    v18->_avoidMainQueue = queue;
  }

  return v18;
}

- (void)setupWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert
{
  iCopy = i;
  rICopy = rI;
  tokenCopy = token;
  serviceCopy = service;
  certCopy = cert;
  localURI = self->_localURI;
  self->_localURI = iCopy;
  v25 = iCopy;

  remoteURI = self->_remoteURI;
  self->_remoteURI = rICopy;
  v19 = rICopy;

  pushToken = self->_pushToken;
  self->_pushToken = tokenCopy;
  v21 = tokenCopy;

  service = self->_service;
  self->_service = serviceCopy;
  v23 = serviceCopy;

  cert = self->_cert;
  self->_cert = certCopy;
}

- (void)setupWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)obj
{
  self->_keyType = type;
  objc_storeStrong(&self->_keyDiversifier, obj);
  certCopy = cert;
  serviceCopy = service;
  tokenCopy = token;
  rICopy = rI;
  iCopy = i;
  [(IDSURIEncrypter *)self setupWithLocalURI:iCopy remoteURI:rICopy pushToken:tokenCopy service:serviceCopy cert:certCopy];
}

- (id)_lookupEndpoint
{
  peerIDManager = [(IDSURIEncrypter *)self peerIDManager];
  pushToken = [(IDSURIEncrypter *)self pushToken];
  v5 = [IDSPushToken pushTokenWithData:pushToken withServiceLoggingHint:self->_service];
  remoteURI = [(IDSURIEncrypter *)self remoteURI];
  service = [(IDSURIEncrypter *)self service];
  localURI = [(IDSURIEncrypter *)self localURI];
  v9 = [peerIDManager endpointForPushToken:v5 URI:remoteURI service:service fromURI:localURI];

  return v9;
}

- (id)_lookupIdentityWithLastResortFallback:(BOOL *)fallback
{
  _lookupEndpoint = [(IDSURIEncrypter *)self _lookupEndpoint];
  publicDeviceIdentityContainer = [_lookupEndpoint publicDeviceIdentityContainer];
  if (_lookupEndpoint)
  {
    v7 = 0;
    if (!fallback)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  publicIdentityCache = [(IDSURIEncrypter *)self publicIdentityCache];
  pushToken = [(IDSURIEncrypter *)self pushToken];
  remoteURI = [(IDSURIEncrypter *)self remoteURI];
  service = [(IDSURIEncrypter *)self service];
  v16 = 0;
  v13 = [publicIdentityCache identityForToken:pushToken uri:remoteURI service:service error:&v16];
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

  publicDeviceIdentityContainer = v13;
  if (fallback)
  {
LABEL_3:
    *fallback = v7;
  }

LABEL_4:

  return publicDeviceIdentityContainer;
}

- (BOOL)_isReplayError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [errorCopy domain];
  v7 = IDSDecryptionErrorDomain;
  if ([domain isEqualToString:IDSDecryptionErrorDomain] && objc_msgSend(errorCopy, "code") == 15)
  {
    domain2 = [v5 domain];
    if ([domain2 isEqualToString:@"com.apple.messageprotection"])
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

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:v7])
  {
    v11 = [errorCopy code] == 5;
  }

  else
  {
    v11 = 0;
  }

  return v9 || v11;
}

- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes usedIdentifier:(id *)identifier error:(id *)error
{
  attributesCopy = attributes;
  dataCopy = data;
  _lookupEndpoint = [(IDSURIEncrypter *)self _lookupEndpoint];
  if (identifier)
  {
    *identifier = IDSMPLegacyIdentityIdentifier;
  }

  fullDeviceIdentityContainerEncrypter = self->_fullDeviceIdentityContainerEncrypter;
  publicDeviceIdentityContainer = [_lookupEndpoint publicDeviceIdentityContainer];
  v15 = [(IDSMPFullDeviceIdentityContainerEncrypter *)fullDeviceIdentityContainerEncrypter legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy withPublicDeviceIdentityContainer:publicDeviceIdentityContainer error:error];

  return v15;
}

- (void)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue withCompletion:(id)completion
{
  dataCopy = data;
  attributesCopy = attributes;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10037AB08;
  v16[3] = &unk_100BD9620;
  v16[4] = self;
  v17 = dataCopy;
  queueCopy = queue;
  completionCopy = completion;
  v18 = attributesCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  v14 = attributesCopy;
  v15 = dataCopy;
  [v12 performAsyncBlock:v16];
}

- (void)decryptData:(id)data decryptionContext:(id)context usingIdentifier:(id)identifier onQueue:(id)queue isRetry:(BOOL)retry replayKey:(id)key withCompletion:(id)completion
{
  dataCopy = data;
  contextCopy = context;
  identifierCopy = identifier;
  queueCopy = queue;
  keyCopy = key;
  completionCopy = completion;
  incomingMetric = [contextCopy incomingMetric];
  if (CUTIsInternalInstall())
  {
    retryCopy = retry;
    command = [contextCopy command];
    if ([command isEqualToNumber:&off_100C3BBC0])
    {
      v23 = ![(IDSURIEncrypter *)self _serverDisabledDupeReadReceipts];
    }

    else
    {
      v23 = 0;
    }

    retry = retryCopy;
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
  v33 = keyCopy;
  v34 = incomingMetric;
  v35 = dataCopy;
  v36 = contextCopy;
  v37 = identifierCopy;
  retryCopy2 = retry;
  v38 = queueCopy;
  v39 = completionCopy;
  v24 = queueCopy;
  v25 = identifierCopy;
  v26 = contextCopy;
  v27 = dataCopy;
  v28 = incomingMetric;
  v29 = completionCopy;
  v30 = keyCopy;
  [v24 performAsyncBlock:v32];
}

- (void)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion
{
  dataCopy = data;
  matchesDataCopy = matchesData;
  queueCopy = queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10037D4AC;
  v19[3] = &unk_100BD98C8;
  v19[4] = self;
  v20 = dataCopy;
  completionCopy = completion;
  typeCopy = type;
  v21 = matchesDataCopy;
  v22 = queueCopy;
  v15 = queueCopy;
  v16 = matchesDataCopy;
  v17 = dataCopy;
  v18 = completionCopy;
  [v15 performAsyncBlock:v19];
}

- (id)_lookupNGMVerificationIdentityShouldUseLastResort:(BOOL)resort usedLastResort:(BOOL *)lastResort
{
  if ([(IDSURIEncrypter *)self keyType])
  {
    ngmPublicDeviceIdentity = 0;
  }

  else
  {
    if (resort)
    {
      _lookupEndpoint = [(IDSURIEncrypter *)self _lookupIdentityWithLastResortFallback:lastResort];
      ngmPublicDeviceIdentity = [_lookupEndpoint ngmPublicDeviceIdentity];
    }

    else
    {
      _lookupEndpoint = [(IDSURIEncrypter *)self _lookupEndpoint];
      publicDeviceIdentityContainer = [_lookupEndpoint publicDeviceIdentityContainer];
      ngmPublicDeviceIdentity = [publicDeviceIdentityContainer ngmPublicDeviceIdentity];
    }
  }

  return ngmPublicDeviceIdentity;
}

- (__SecKey)_copyLookupSecVerificationIdentity
{
  if ([(IDSURIEncrypter *)self keyType]!= 1)
  {
    return 0;
  }

  _lookupEndpoint = [(IDSURIEncrypter *)self _lookupEndpoint];
  if ([_lookupEndpoint applicationPublicDeviceIdentity])
  {
    _lookupEndpoint2 = [(IDSURIEncrypter *)self _lookupEndpoint];
    v5 = CFRetain([_lookupEndpoint2 applicationPublicDeviceIdentity]);
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end