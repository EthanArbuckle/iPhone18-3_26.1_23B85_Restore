@interface IDSBatchVerifier
+ (id)getItemToNoteForRemoteURI:(id)i;
- (IDSBatchVerifier)initWithPeerIDManager:(id)manager rateLimiter:(id)limiter localURI:(id)i service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)diversifier publicIdentityCache:(id)self0 builder:(id)self1;
- (IDSBatchVerifier)initWithPeerIDManager:(id)manager rateLimiter:(id)limiter localURI:(id)i service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)diversifier publicIdentityCache:(id)self0 builder:(id)self1 queue:(id)self2;
- (id)_lookupEndpointFromURI:(id)i;
- (id)_verifySignedDataWithContext:(id)context endpoint:(id)endpoint forType:(int64_t)type onQueue:(id)queue;
- (id)_verifySignedDataWithContext:(id)context forType:(int64_t)type withPublicDeviceIdentity:(id)identity onQueue:(id)queue;
- (id)lastResortCacheIdentityForURI:(id)i;
- (void)verifyPayloadsFromContexts:(id)contexts forType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion;
@end

@implementation IDSBatchVerifier

- (IDSBatchVerifier)initWithPeerIDManager:(id)manager rateLimiter:(id)limiter localURI:(id)i service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)diversifier publicIdentityCache:(id)self0 builder:(id)self1
{
  builderCopy = builder;
  cacheCopy = cache;
  diversifierCopy = diversifier;
  certCopy = cert;
  serviceCopy = service;
  iCopy = i;
  limiterCopy = limiter;
  managerCopy = manager;
  v24 = [IDSBatchVerifier alloc];
  v25 = im_primary_queue();
  v26 = [(IDSBatchVerifier *)v24 initWithPeerIDManager:managerCopy rateLimiter:limiterCopy localURI:iCopy service:serviceCopy cert:certCopy keyType:type keyDiversifier:diversifierCopy publicIdentityCache:cacheCopy builder:builderCopy queue:v25];

  return v26;
}

- (IDSBatchVerifier)initWithPeerIDManager:(id)manager rateLimiter:(id)limiter localURI:(id)i service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)diversifier publicIdentityCache:(id)self0 builder:(id)self1 queue:(id)self2
{
  managerCopy = manager;
  limiterCopy = limiter;
  iCopy = i;
  serviceCopy = service;
  certCopy = cert;
  diversifierCopy = diversifier;
  cacheCopy = cache;
  builderCopy = builder;
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = IDSBatchVerifier;
  v19 = [(IDSBatchVerifier *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_peerIDManager, manager);
    objc_storeStrong(&v20->_publicIdentityCache, cache);
    objc_storeStrong(&v20->_rateLimiter, limiter);
    objc_storeStrong(&v20->_localURI, i);
    objc_storeStrong(&v20->_service, service);
    objc_storeStrong(&v20->_cert, cert);
    v20->_keyType = type;
    objc_storeStrong(&v20->_keyDiversifier, diversifier);
    objc_storeStrong(&v20->_builder, builder);
    objc_storeStrong(&v20->_queue, queue);
  }

  return v20;
}

- (id)_verifySignedDataWithContext:(id)context endpoint:(id)endpoint forType:(int64_t)type onQueue:(id)queue
{
  contextCopy = context;
  queueCopy = queue;
  endpointCopy = endpoint;
  v13 = objc_alloc_init(CUTUnsafePromiseSeal);
  builder = [(IDSBatchVerifier *)self builder];
  keyType = [(IDSBatchVerifier *)self keyType];
  keyDiversifier = [(IDSBatchVerifier *)self keyDiversifier];
  v17 = [builder verifierWithEndpoint:endpointCopy keyType:keyType keyDiversifier:keyDiversifier];

  signedPayload = [contextCopy signedPayload];
  payloadData = [contextCopy payloadData];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100357FB8;
  v24[3] = &unk_100BD6FB8;
  v24[4] = self;
  v25 = contextCopy;
  v26 = v13;
  v20 = v13;
  v21 = contextCopy;
  [v17 verifySignedData:signedPayload matchesData:payloadData forType:type onQueue:queueCopy withCompletion:v24];

  promise = [v20 promise];

  return promise;
}

- (id)_verifySignedDataWithContext:(id)context forType:(int64_t)type withPublicDeviceIdentity:(id)identity onQueue:(id)queue
{
  contextCopy = context;
  identityCopy = identity;
  queueCopy = queue;
  v13 = objc_alloc_init(CUTUnsafePromiseSeal);
  builder = [(IDSBatchVerifier *)self builder];
  fullDeviceIdentitySigner = [builder fullDeviceIdentitySigner];

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100358290;
  v25 = &unk_100BD8E10;
  v26 = fullDeviceIdentitySigner;
  v27 = contextCopy;
  v28 = identityCopy;
  selfCopy = self;
  v30 = v13;
  typeCopy = type;
  v16 = v13;
  v17 = identityCopy;
  v18 = contextCopy;
  v19 = fullDeviceIdentitySigner;
  [queueCopy performAsyncBlock:&v22];

  promise = [v16 promise];

  return promise;
}

- (void)verifyPayloadsFromContexts:(id)contexts forType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion
{
  contextsCopy = contexts;
  queueCopy = queue;
  completionCopy = completion;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_10000A8B8;
  v86 = sub_10000BBDC;
  v87 = objc_alloc_init(NSMutableDictionary);
  v53 = objc_alloc_init(NSMutableDictionary);
  v52 = objc_alloc_init(NSMutableArray);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = contextsCopy;
  v9 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v9)
  {
    v10 = *v79;
    v11 = IDSSigningErrorDomain;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v79 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v78 + 1) + 8 * i);
        remoteURI = [v13 remoteURI];
        prefixedURI = [remoteURI prefixedURI];
        v77 = 0;
        v16 = [prefixedURI _stripPotentialTokenURIWithToken:&v77];
        v17 = v77;

        remoteURI2 = [v13 remoteURI];
        v19 = [remoteURI2 isTokenURI] ^ 1;
        if (!v17)
        {
          v19 = 1;
        }

        if (v16)
        {
          v20 = v19;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          v21 = [NSError errorWithDomain:v11 code:2 userInfo:0];
          v22 = [IDSPayloadVerificationResult alloc];
          remoteURI3 = [v13 remoteURI];
          v24 = [v22 initWithURI:remoteURI3 verified:0 error:v21];

          v25 = v83[5];
          remoteURI4 = [v13 remoteURI];
          [v25 setObject:v24 forKey:remoteURI4];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v9);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v27 = obj;
  v28 = [v27 countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v28)
  {
    v29 = *v74;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v73 + 1) + 8 * j);
        v32 = v83[5];
        remoteURI5 = [v31 remoteURI];
        v34 = [v32 objectForKey:remoteURI5];

        if (!v34)
        {
          remoteURI6 = [v31 remoteURI];
          v36 = [(IDSBatchVerifier *)self _lookupEndpointFromURI:remoteURI6];

          if (v36)
          {
            [v53 setObject:v36 forKey:v31];
          }

          else
          {
            [v52 addObject:v31];
          }
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v73 objects:v93 count:16];
    }

    while (v28);
  }

  v37 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [v53 allKeys];
    *buf = 138412546;
    v90 = v52;
    v91 = 2112;
    v92 = allKeys;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found remote contexts needing query: %@, already have: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    [v53 allKeys];
    v50 = v49 = v52;
    _IDSLogEventV();
  }

  if ([v52 count])
  {
    v39 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100358D04;
    block[3] = &unk_100BD8EC8;
    v59 = v52;
    selfCopy = self;
    v64 = &v82;
    v61 = v53;
    typeCopy = type;
    v62 = queueCopy;
    v63 = completionCopy;
    dispatch_async(v39, block);

    v40 = v59;
  }

  else
  {
    v40 = objc_alloc_init(NSMutableArray);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v41 = v53;
    v42 = [v41 countByEnumeratingWithState:&v69 objects:v88 count:16];
    if (v42)
    {
      v43 = *v70;
      do
      {
        for (k = 0; k != v42; k = k + 1)
        {
          if (*v70 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v69 + 1) + 8 * k);
          v46 = [v41 objectForKey:v45];
          v47 = [(IDSBatchVerifier *)self _verifySignedDataWithContext:v45 endpoint:v46 forType:type onQueue:queueCopy];
          [v40 addObject:v47];
        }

        v42 = [v41 countByEnumeratingWithState:&v69 objects:v88 count:16];
      }

      while (v42);
    }

    v48 = [CUTUnsafePromise all:v40];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100358BB8;
    v66[3] = &unk_100BD8E38;
    v68 = &v82;
    v67 = completionCopy;
    [v48 registerResultBlock:v66];
  }

  _Block_object_dispose(&v82, 8);
}

- (id)_lookupEndpointFromURI:(id)i
{
  iCopy = i;
  prefixedURI = [iCopy prefixedURI];
  v15 = 0;
  v6 = [prefixedURI _stripPotentialTokenURIWithToken:&v15];
  v7 = v15;

  peerIDManager = [(IDSBatchVerifier *)self peerIDManager];
  v9 = [IDSPushToken pushTokenWithData:v7 withServiceLoggingHint:self->_service];

  tokenFreeURI = [iCopy tokenFreeURI];

  service = [(IDSBatchVerifier *)self service];
  localURI = [(IDSBatchVerifier *)self localURI];
  v13 = [peerIDManager endpointForPushToken:v9 URI:tokenFreeURI service:service fromURI:localURI];

  return v13;
}

+ (id)getItemToNoteForRemoteURI:(id)i
{
  iCopy = i;
  prefixedURI = [iCopy prefixedURI];
  if ([prefixedURI _appearsToBePseudonymID])
  {
    [iCopy prefixedURI];
  }

  else
  {
    [iCopy pushToken];
  }
  v5 = ;

  return v5;
}

- (id)lastResortCacheIdentityForURI:(id)i
{
  iCopy = i;
  publicIdentityCache = [(IDSBatchVerifier *)self publicIdentityCache];
  pushToken = [iCopy pushToken];
  rawToken = [pushToken rawToken];
  service = [(IDSBatchVerifier *)self service];
  v18 = 0;
  v9 = [publicIdentityCache identityForToken:rawToken uri:iCopy service:service error:&v18];
  v10 = v18;
  ngmPublicDeviceIdentity = [v9 ngmPublicDeviceIdentity];

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    pushToken2 = [iCopy pushToken];
    service2 = [(IDSBatchVerifier *)self service];
    *buf = 138413314;
    v20 = pushToken2;
    v21 = 2112;
    v22 = iCopy;
    v23 = 2112;
    v24 = service2;
    v25 = 2112;
    v26 = ngmPublicDeviceIdentity;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Last resort cache query for { token: %@, URI: %@, service: %@ } returned: { identity: %@, error: %@ }", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    pushToken3 = [iCopy pushToken];
    service3 = [(IDSBatchVerifier *)self service];
    _IDSLogEventV();
  }

  return ngmPublicDeviceIdentity;
}

@end