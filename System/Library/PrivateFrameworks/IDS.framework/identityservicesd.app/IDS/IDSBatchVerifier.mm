@interface IDSBatchVerifier
+ (id)getItemToNoteForRemoteURI:(id)a3;
- (IDSBatchVerifier)initWithPeerIDManager:(id)a3 rateLimiter:(id)a4 localURI:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)a9 publicIdentityCache:(id)a10 builder:(id)a11;
- (IDSBatchVerifier)initWithPeerIDManager:(id)a3 rateLimiter:(id)a4 localURI:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)a9 publicIdentityCache:(id)a10 builder:(id)a11 queue:(id)a12;
- (id)_lookupEndpointFromURI:(id)a3;
- (id)_verifySignedDataWithContext:(id)a3 endpoint:(id)a4 forType:(int64_t)a5 onQueue:(id)a6;
- (id)_verifySignedDataWithContext:(id)a3 forType:(int64_t)a4 withPublicDeviceIdentity:(id)a5 onQueue:(id)a6;
- (id)lastResortCacheIdentityForURI:(id)a3;
- (void)verifyPayloadsFromContexts:(id)a3 forType:(int64_t)a4 onQueue:(id)a5 withCompletion:(id)a6;
@end

@implementation IDSBatchVerifier

- (IDSBatchVerifier)initWithPeerIDManager:(id)a3 rateLimiter:(id)a4 localURI:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)a9 publicIdentityCache:(id)a10 builder:(id)a11
{
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [IDSBatchVerifier alloc];
  v25 = im_primary_queue();
  v26 = [(IDSBatchVerifier *)v24 initWithPeerIDManager:v23 rateLimiter:v22 localURI:v21 service:v20 cert:v19 keyType:a8 keyDiversifier:v18 publicIdentityCache:v17 builder:v16 queue:v25];

  return v26;
}

- (IDSBatchVerifier)initWithPeerIDManager:(id)a3 rateLimiter:(id)a4 localURI:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)a9 publicIdentityCache:(id)a10 builder:(id)a11 queue:(id)a12
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a9;
  v24 = a10;
  v23 = a11;
  v18 = a12;
  v31.receiver = self;
  v31.super_class = IDSBatchVerifier;
  v19 = [(IDSBatchVerifier *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_peerIDManager, a3);
    objc_storeStrong(&v20->_publicIdentityCache, a10);
    objc_storeStrong(&v20->_rateLimiter, a4);
    objc_storeStrong(&v20->_localURI, a5);
    objc_storeStrong(&v20->_service, a6);
    objc_storeStrong(&v20->_cert, a7);
    v20->_keyType = a8;
    objc_storeStrong(&v20->_keyDiversifier, a9);
    objc_storeStrong(&v20->_builder, a11);
    objc_storeStrong(&v20->_queue, a12);
  }

  return v20;
}

- (id)_verifySignedDataWithContext:(id)a3 endpoint:(id)a4 forType:(int64_t)a5 onQueue:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(CUTUnsafePromiseSeal);
  v14 = [(IDSBatchVerifier *)self builder];
  v15 = [(IDSBatchVerifier *)self keyType];
  v16 = [(IDSBatchVerifier *)self keyDiversifier];
  v17 = [v14 verifierWithEndpoint:v12 keyType:v15 keyDiversifier:v16];

  v18 = [v10 signedPayload];
  v19 = [v10 payloadData];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100357FB8;
  v24[3] = &unk_100BD6FB8;
  v24[4] = self;
  v25 = v10;
  v26 = v13;
  v20 = v13;
  v21 = v10;
  [v17 verifySignedData:v18 matchesData:v19 forType:a5 onQueue:v11 withCompletion:v24];

  v22 = [v20 promise];

  return v22;
}

- (id)_verifySignedDataWithContext:(id)a3 forType:(int64_t)a4 withPublicDeviceIdentity:(id)a5 onQueue:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(CUTUnsafePromiseSeal);
  v14 = [(IDSBatchVerifier *)self builder];
  v15 = [v14 fullDeviceIdentitySigner];

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100358290;
  v25 = &unk_100BD8E10;
  v26 = v15;
  v27 = v10;
  v28 = v11;
  v29 = self;
  v30 = v13;
  v31 = a4;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  v19 = v15;
  [v12 performAsyncBlock:&v22];

  v20 = [v16 promise];

  return v20;
}

- (void)verifyPayloadsFromContexts:(id)a3 forType:(int64_t)a4 onQueue:(id)a5 withCompletion:(id)a6
{
  v8 = a3;
  v55 = a5;
  v51 = a6;
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
  obj = v8;
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
        v14 = [v13 remoteURI];
        v15 = [v14 prefixedURI];
        v77 = 0;
        v16 = [v15 _stripPotentialTokenURIWithToken:&v77];
        v17 = v77;

        v18 = [v13 remoteURI];
        v19 = [v18 isTokenURI] ^ 1;
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
          v23 = [v13 remoteURI];
          v24 = [v22 initWithURI:v23 verified:0 error:v21];

          v25 = v83[5];
          v26 = [v13 remoteURI];
          [v25 setObject:v24 forKey:v26];
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
        v33 = [v31 remoteURI];
        v34 = [v32 objectForKey:v33];

        if (!v34)
        {
          v35 = [v31 remoteURI];
          v36 = [(IDSBatchVerifier *)self _lookupEndpointFromURI:v35];

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
    v38 = [v53 allKeys];
    *buf = 138412546;
    v90 = v52;
    v91 = 2112;
    v92 = v38;
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
    v60 = self;
    v64 = &v82;
    v61 = v53;
    v65 = a4;
    v62 = v55;
    v63 = v51;
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
          v47 = [(IDSBatchVerifier *)self _verifySignedDataWithContext:v45 endpoint:v46 forType:a4 onQueue:v55];
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
    v67 = v51;
    [v48 registerResultBlock:v66];
  }

  _Block_object_dispose(&v82, 8);
}

- (id)_lookupEndpointFromURI:(id)a3
{
  v4 = a3;
  v5 = [v4 prefixedURI];
  v15 = 0;
  v6 = [v5 _stripPotentialTokenURIWithToken:&v15];
  v7 = v15;

  v8 = [(IDSBatchVerifier *)self peerIDManager];
  v9 = [IDSPushToken pushTokenWithData:v7 withServiceLoggingHint:self->_service];

  v10 = [v4 tokenFreeURI];

  v11 = [(IDSBatchVerifier *)self service];
  v12 = [(IDSBatchVerifier *)self localURI];
  v13 = [v8 endpointForPushToken:v9 URI:v10 service:v11 fromURI:v12];

  return v13;
}

+ (id)getItemToNoteForRemoteURI:(id)a3
{
  v3 = a3;
  v4 = [v3 prefixedURI];
  if ([v4 _appearsToBePseudonymID])
  {
    [v3 prefixedURI];
  }

  else
  {
    [v3 pushToken];
  }
  v5 = ;

  return v5;
}

- (id)lastResortCacheIdentityForURI:(id)a3
{
  v4 = a3;
  v5 = [(IDSBatchVerifier *)self publicIdentityCache];
  v6 = [v4 pushToken];
  v7 = [v6 rawToken];
  v8 = [(IDSBatchVerifier *)self service];
  v18 = 0;
  v9 = [v5 identityForToken:v7 uri:v4 service:v8 error:&v18];
  v10 = v18;
  v11 = [v9 ngmPublicDeviceIdentity];

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 pushToken];
    v14 = [(IDSBatchVerifier *)self service];
    *buf = 138413314;
    v20 = v13;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Last resort cache query for { token: %@, URI: %@, service: %@ } returned: { identity: %@, error: %@ }", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v15 = [v4 pushToken];
    v17 = [(IDSBatchVerifier *)self service];
    _IDSLogEventV();
  }

  return v11;
}

@end