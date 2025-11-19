@interface IDSDeliveryController
+ (id)sharedInstance;
+ (id)tokenURINegativeCacheItemForTokenURI:(id)a3 service:(id)a4;
- (BOOL)_sendAsAttachmentForMessage:(id)a3 payloadData:(id)a4;
- (IDSDeliveryController)init;
- (id)_constructDeliveryPipeline;
- (id)_constructOfflineDeliveryPipeline;
- (id)_keyForURIs:(id)a3 service:(id)a4;
- (id)_stringFromQueryReasonExtensionSet:(id)a3;
- (id)_tokenURIForToken:(id)a3 uri:(id)a4;
- (int64_t)_maxPayloadSizeForMessage:(id)a3;
- (int64_t)effectiveMaxPayloadSizeIfCanUseLargePayload:(BOOL)a3;
- (int64_t)groupCryptoMinVersionNumber;
- (unint64_t)_destinationCountForURIsAndTokens:(id)a3;
- (void)_checkFastDormancy;
- (void)_discardMessage:(id)a3 forURIs:(id)a4 service:(id)a5;
- (void)_emptyMessagesForURIs:(id)a3 service:(id)a4;
- (void)_handleAccessoryMessageForID:(id)a3 msg:(id)a4 service:(id)a5 fromID:(id)a6 fromIdentity:(id)a7 completionBlock:(id)a8;
- (void)_handleMessagesForURIs:(id)a3 originalURIs:(id)a4 service:(id)a5 fromID:(id)a6 fromCoalesceQueue:(BOOL)a7 withQueryCompletion:(id)a8;
- (void)_pipelineHandleMessage:(id)a3 forURIs:(id)a4 service:(id)a5;
- (void)_pipelineHandleMessage:(id)a3 forURIs:(id)a4 service:(id)a5 withCompletion:(id)a6;
- (void)_pipelinesHandleMessagesToCoalesce:(id)a3 forService:(id)a4 sendMode:(id)a5;
- (void)_processMessageResponse:(id)a3 error:(id)a4 resultCode:(int64_t)a5 toURI:(id)a6 fromURI:(id)a7 service:(id)a8 fromIdentity:(id)a9;
- (void)_queueMessage:(id)a3 service:(id)a4 dataToEncrypt:(id)a5 withEncryptedAttributes:(id)a6 fromID:(id)a7 fromShortHandle:(id)a8 fromIdentity:(id)a9 toID:(id)a10 toURIs:(id)a11 originallyToURIs:(id)a12 ktURIVerificationMap:(id)a13 canUseLargePayload:(BOOL)a14 sendOnePerToken:(BOOL)a15 registrationProperties:(id)a16 fakeMessage:(BOOL)a17 alwaysSkipSelf:(BOOL)a18 alwaysIncludeSelf:(BOOL)a19 forceQuery:(int64_t)a20 disallowRefresh:(BOOL)a21 prioritizedTokenList:(id)a22 wantsFirewallDonation:(BOOL)a23 destinationObject:(id)a24 willSendBlock:(id)a25 completionBlock:(id)a26 fromCoalesceQueue:(BOOL)a27;
- (void)_sendAttachmentWithGuid:(id)a3 service:(id)a4 topic:(id)a5 originalCommand:(id)a6 additionalDictionary:(id)a7 encryptedData:(id)a8 toToken:(id)a9 toID:(id)a10 fromID:(id)a11 fromIdentity:(id)a12 canUseLargePayload:(BOOL)a13 expirationDate:(id)a14 destinationObject:(id)a15 ackBlock:(id)a16 completionBlock:(id)a17;
- (void)_sendErrorDictionary:(id)a3 onService:(id)a4 fromID:(id)a5 fromIdentity:(id)a6 toID:(id)a7 toToken:(id)a8 topic:(id)a9 sendCompletionBlock:(id)a10;
- (void)_sendFTFanoutMessage:(id)a3 service:(id)a4 fromID:(id)a5 toURIs:(id)a6 fromIdentity:(id)a7 completionBlock:(id)a8;
- (void)_sendFTMessage:(id)a3 service:(id)a4 fromID:(id)a5 toID:(id)a6 toToken:(id)a7 toSessionToken:(id)a8 toURIs:(id)a9 fromIdentity:(id)a10 completionBlock:(id)a11;
- (void)_sendMessage:(id)a3 dataToEncrypt:(id)a4 withEncryptedAttributes:(id)a5 onService:(id)a6 fromID:(id)a7 fromShortHandle:(id)a8 fromIdentity:(id)a9 toID:(id)a10 toURIs:(id)a11 canUseLargePayload:(BOOL)a12 sendOnePerToken:(BOOL)a13 allowPartialSendsToSucceed:(BOOL)a14 registrationProperties:(id)a15 fakeMessage:(BOOL)a16 alwaysSkipSelf:(BOOL)a17 alwaysIncludeSelf:(BOOL)a18 forceQuery:(int64_t)a19 disallowRefresh:(BOOL)a20 prioritizedTokenList:(id)a21 wantsFirewallDonation:(BOOL)a22 destinationObject:(id)a23 willSendBlock:(id)a24 completionBlock:(id)a25 firstAttemptDate:(id)a26 ktURIVerificationMap:(id)a27 fromCoalesceQueue:(BOOL)a28 withQueryCompletion:(id)a29;
- (void)_sendMessageDictionary:(id)a3 lastRetryInterval:(double)a4 dataToEncrypt:(id)a5 withEncryptedAttributes:(id)a6 onService:(id)a7 wantsResponse:(BOOL)a8 canUseLargePayload:(BOOL)a9 sendOnePerToken:(BOOL)a10 allowPartialSendsToSucceed:(BOOL)a11 highPriority:(BOOL)a12 fireAndForget:(BOOL)a13 expirationDate:(id)a14 enforceRemoteTimeouts:(BOOL)a15 messageID:(id)a16 fromID:(id)a17 fromShortHandle:(id)a18 fromIdentity:(id)a19 toID:(id)a20 toURIs:(id)a21 accessToken:(id)a22 topic:(id)a23 registrationProperties:(id)a24 fakeMessage:(BOOL)a25 alwaysSkipSelf:(BOOL)a26 alwaysIncludeSelf:(BOOL)a27 forceQuery:(int64_t)a28 pushPriority:(id)a29 ignoreMaxRetryCount:(BOOL)a30 disallowRefresh:(BOOL)a31 originalTimestamp:(id)a32 prioritizedTokenList:(id)a33 wantsFirewallDonation:(BOOL)a34 destinationObject:(id)a35 deliveryMinimumTimeDelay:(id)a36 deliveryMinimumTime:(id)a37 sendMode:(id)a38 KTURIVerificationMap:(id)a39 sendReasonContainer:(id)a40 sendMetric:(id)a41 ackBlock:(id)a42 willSendBlock:(id)a43 sendCompletionBlock:(id)a44;
- (void)addTokenURINegativeCacheClearBlock;
- (void)dealloc;
- (void)handler:(id)a3 isConnectedChanged:(BOOL)a4;
- (void)queueManager:(id)a3 receivedMessagesToSend:(id)a4 forTopic:(id)a5 sendMode:(id)a6;
- (void)sendIDSMessage:(id)a3 service:(id)a4 topic:(id)a5 completionBlock:(id)a6;
- (void)sendMessageDictionary:(id)a3 messageID:(id)a4 dataToEncrypt:(id)a5 withEncryptedAttributes:(id)a6 onService:(id)a7 wantsResponse:(BOOL)a8 expirationDate:(id)a9 enforceRemoteTimeouts:(BOOL)a10 canUseLargePayload:(BOOL)a11 sendOnePerToken:(BOOL)a12 allowPartialSendsToSucceed:(BOOL)a13 priority:(int64_t)a14 fireAndForget:(BOOL)a15 fromID:(id)a16 fromShortHandle:(id)a17 fromIdentity:(id)a18 toURIs:(id)a19 accessToken:(id)a20 topic:(id)a21 registrationProperties:(id)a22 fakeMessage:(BOOL)a23 alwaysSkipSelf:(BOOL)a24 alwaysIncludeSelf:(BOOL)a25 forceQuery:(int64_t)a26 pushPriority:(id)a27 ignoreMaxRetryCount:(BOOL)a28 disallowRefresh:(BOOL)a29 originalTimestamp:(id)a30 prioritizedTokenList:(id)a31 wantsFirewallDonation:(BOOL)a32 destinationObject:(id)a33 deliveryMinimumTimeDelay:(id)a34 deliveryMinimumTime:(id)a35 sendMode:(id)a36 KTURIVerificationMap:(id)a37 sendReasonContainer:(id)a38 sendMetric:(id)a39 ackBlock:(id)a40 willSendBlock:(id)a41 sendCompletionBlock:(id)a42;
- (void)sendRTCMetricWithStartDate:(id)a3 endDate:(id)a4 endpointCount:(int64_t)a5 usedPipeline:(BOOL)a6 usedMMCS:(BOOL)a7 responseCode:(int64_t)a8;
- (void)setSenderKeyDistributionManager:(id)a3;
- (void)setServerRateLimitConfiguration:(id)a3;
@end

@implementation IDSDeliveryController

+ (id)sharedInstance
{
  if (qword_100CBD590 != -1)
  {
    sub_100922198();
  }

  v3 = qword_100CBD598;

  return v3;
}

- (IDSDeliveryController)init
{
  v17.receiver = self;
  v17.super_class = IDSDeliveryController;
  v2 = [(IDSDeliveryController *)&v17 init];
  if (v2)
  {
    v3 = sub_1004A52E4();
    messageDelivery = v2->_messageDelivery;
    v2->_messageDelivery = v3;

    v5 = [[IDSRateLimiter alloc] initWithLimit:10 timeLimit:1800.0];
    tokenURINegativeCache = v2->_tokenURINegativeCache;
    v2->_tokenURINegativeCache = v5;

    v7 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    v8 = im_primary_queue();
    [v7 addListener:v2 topics:0 commands:0 queue:v8];

    v9 = [IDSCoalesceMessageQueueManager alloc];
    v10 = +[IDSServerBag sharedInstance];
    v11 = [(IDSCoalesceMessageQueueManager *)v9 initWithBag:v10];
    coalesceMessageQueueManager = v2->_coalesceMessageQueueManager;
    v2->_coalesceMessageQueueManager = v11;

    [(IDSCoalesceMessageQueueManager *)v2->_coalesceMessageQueueManager setDelegate:v2];
    [(FTMessageDelivery *)v2->_messageDelivery setDisallowRetry:0];
    if ([(IDSDeliveryController *)v2 shouldMinimizeBagCacheTime])
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Forcing a bag fetch to refresh EN versioning", v16, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v14 = +[IDSServerBag sharedInstance];
      [v14 forceBagLoad];
    }

    [(IDSDeliveryController *)v2 addTokenURINegativeCacheClearBlock];
  }

  return v2;
}

- (void)setSenderKeyDistributionManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_senderKeyDistributionManager, a3);
    v5 = v6;
  }
}

- (void)setServerRateLimitConfiguration:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_serverRateLimitConfiguration, a3);
    v5 = v6;
  }
}

- (void)dealloc
{
  v3 = +[IMMobileNetworkManager sharedInstance];
  [v3 removeFastDormancyDisableToken:@"IDSDeliveryManager"];

  v4 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  [v4 removeListener:self];

  v5.receiver = self;
  v5.super_class = IDSDeliveryController;
  [(IDSDeliveryController *)&v5 dealloc];
}

- (int64_t)groupCryptoMinVersionNumber
{
  if ([(IDSDeliveryController *)self shouldMinimizeBagCacheTime])
  {
    v2 = +[IDSServerBag sharedInstance];
    [v2 startBagLoad];
  }

  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"gc-min-version"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addTokenURINegativeCacheClearBlock
{
  objc_initWeak(&location, self);
  v3 = [(IDSDeliveryController *)self peerIDManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004B864C;
  v4[3] = &unk_100BDE1F8;
  objc_copyWeak(&v5, &location);
  [v3 addClientDataUpdateBlock:v4 forToken:@"ratelimiter-clear-on-success"];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (id)tokenURINegativeCacheItemForTokenURI:(id)a3 service:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = [a3 prefixedURI];
    v4 = [NSString stringWithFormat:@"%@-%@", v7, v6];
  }

  return v4;
}

- (void)handler:(id)a3 isConnectedChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && [(NSMutableArray *)self->_pendingOfflineMessages count])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSMutableArray *)self->_pendingOfflineMessages count];
      *buf = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = 0x4024000000000000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSDelivery has %lu pending offline messages and sees that push is now connected - scheduling a send attempt in %f seconds.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [(NSMutableArray *)self->_pendingOfflineMessages count];
      _IDSLogV();
    }

    v9 = self->_pendingOfflineMessages;
    pendingOfflineMessages = self->_pendingOfflineMessages;
    self->_pendingOfflineMessages = 0;

    v11 = v9;
    im_dispatch_after_primary_queue();
  }
}

- (int64_t)effectiveMaxPayloadSizeIfCanUseLargePayload:(BOOL)a3
{
  v3 = a3;
  v5 = [(FTMessageDelivery *)self->_messageDelivery maxLargeMessageSize];
  v6 = v5 & ~(v5 >> 63);
  v7 = [(FTMessageDelivery *)self->_messageDelivery maxMessageSize];
  v8 = v7 & ~(v7 >> 63);
  v9 = _os_feature_enabled_impl();
  v10 = v9;
  if (v6 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (!v3)
  {
    v11 = v8;
  }

  v12 = 0.6;
  if (v3)
  {
    v12 = 0.9;
  }

  v13 = (v12 * v11);
  if ((v3 & v9) != 0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.8;
  }

  v15 = v11 - 1000;
  if (v15 >= v13)
  {
    v15 = v13;
  }

  v16 = (v14 * v15);
  v17 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    v21 = 134219010;
    v22 = v16;
    if (v3)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v23 = 2112;
    v24 = v19;
    if (v10)
    {
      v18 = @"YES";
    }

    v25 = 2112;
    v26 = v18;
    v27 = 2048;
    v28 = v6;
    v29 = 2048;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "-effectiveMaxPayloadSizeIfCanUseLargePayload: {effectiveSizeToReturn: %ld, canUseLargePayload: %@, ReducedLargePayloadSizeOverhead: %@, courierAllowedLargeSize: %ld, courierAllowedNormalSize: %ld}", &v21, 0x34u);
  }

  return v16;
}

- (void)_processMessageResponse:(id)a3 error:(id)a4 resultCode:(int64_t)a5 toURI:(id)a6 fromURI:(id)a7 service:(id)a8 fromIdentity:(id)a9
{
  v15 = a3;
  v45 = a4;
  v46 = a6;
  v47 = a7;
  v16 = a8;
  v17 = a9;
  if (a5 == 7000)
  {
    v40 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v47;
      v50 = 2112;
      v51 = v46;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Message was rate limited from the server, failing message (%@ -> %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  else if (a5 == 5032)
  {
    v43 = v17;
    v44 = self;
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bad signature for message: %@    blowing peer tokens", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v41 = v15;
      _IDSLogV();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v15 targetPeerID];
        *buf = 138412290;
        v49 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " targetPeerID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = [v15 targetPeerID];
        _IDSLogV();
      }

      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v15 sourcePeerID];
        *buf = 138412290;
        v49 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " sourcePeerID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = [v15 sourcePeerID];
        _IDSLogV();
      }

      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v15 targetToken];
        *buf = 138412290;
        v49 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "  targetToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = [v15 targetToken];
        _IDSLogV();
      }

      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v15 targetSessionToken];
        *buf = 138412290;
        v49 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " sessionToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = [v15 targetSessionToken];
        _IDSLogV();
      }

      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "      service: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = v16;
        _IDSLogV();
      }

      v28 = [(IDSDeliveryController *)self peerIDManager];
      v29 = [v15 targetPeerID];
      v30 = [IDSURI URIWithPrefixedURI:v29 withServiceLoggingHint:v16];
      v31 = [v15 targetToken];
      v32 = [IDSPushToken pushTokenWithData:v31 withServiceLoggingHint:v16];
      v33 = [v15 sourcePeerID];
      v34 = [IDSURI URIWithPrefixedURI:v33 withServiceLoggingHint:v16];
      LOBYTE(v42) = 0;
      v35 = [v28 sessionTokenForURI:v30 pushToken:v32 fromURI:v34 service:v16 expirationDate:0 refreshDate:0 fromIdentity:v43 includeSelfDevice:v42];

      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " current sessionToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = v35;
        _IDSLogV();
      }
    }

    v37 = [(IDSDeliveryController *)v44 peerIDManager];
    v38 = [IDSURI URIWithPrefixedURI:v46 withServiceLoggingHint:v16];
    v39 = [IDSURI URIWithPrefixedURI:v47 withServiceLoggingHint:v16];
    [v37 forgetPeerTokensForURI:v38 fromURI:v39 service:v16 reason:7];

    v17 = v43;
  }
}

- (id)_keyForURIs:(id)a3 service:(id)a4
{
  v5 = a4;
  v6 = [NSMutableSet setWithArray:a3];
  [v6 addObject:v5];

  return v6;
}

- (void)_checkFastDormancy
{
  v2 = [(NSMutableDictionary *)self->_messageQueue count];
  v3 = +[IMMobileNetworkManager sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 addFastDormancyDisableToken:@"IDSDeliveryManager"];
  }

  else
  {
    [v3 removeFastDormancyDisableToken:@"IDSDeliveryManager"];
  }
}

- (void)_handleAccessoryMessageForID:(id)a3 msg:(id)a4 service:(id)a5 fromID:(id)a6 fromIdentity:(id)a7 completionBlock:(id)a8
{
  v13 = a3;
  v14 = a4;
  v30 = a5;
  v31 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [v13 firstObject];
  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Message is destined for an accessory with uri %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v28 = v17;
    _IDSLogV();
  }

  v19 = [v14 accessToken];

  if (v19)
  {
    v20 = [v17 prefixedURI];
    v21 = [v20 hasPrefix:@"accessory:"];

    if (v21)
    {
      v22 = [v17 unprefixedURI];
    }

    else
    {
      v23 = [v17 prefixedURI];
      v22 = [v23 copy];
    }

    [v14 setTargetPeerID:v22];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1004B9CEC;
    v32[3] = &unk_100BDE220;
    v24 = v14;
    v33 = v24;
    v25 = v17;
    v34 = v25;
    v35 = v16;
    v26 = objc_retainBlock(v32);
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending To %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [(IDSDeliveryController *)self _sendFTMessage:v24 service:v30 fromID:v31 toID:v22 toToken:0 toSessionToken:0 toURIs:0 fromIdentity:v15 completionBlock:v26];
  }
}

- (void)_handleMessagesForURIs:(id)a3 originalURIs:(id)a4 service:(id)a5 fromID:(id)a6 fromCoalesceQueue:(BOOL)a7 withQueryCompletion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v37 = a4;
  v40 = a5;
  v15 = a6;
  v36 = a8;
  value = v14;
  if ([v14 count])
  {
    v41 = self;
    v35 = [(IDSDeliveryController *)self _keyForURIs:v37 service:v40];
    v16 = [(NSMutableDictionary *)self->_messageQueue objectForKey:v35];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v50 = v14;
      v51 = 2112;
      v52 = v37;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handling message queue With Fanout for display IDs: %@  (originalURIs: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v33 = v14;
      v34 = v37;
      _IDSLogV();
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NSMutableDictionary *)self->_messageQueue allKeys];
      *buf = 138412290;
      v50 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "   Queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v33 = [(NSMutableDictionary *)self->_messageQueue allKeys];
      _IDSLogV();
    }

    v39 = objc_alloc_init(NSMutableArray);
    v38 = objc_alloc_init(NSMutableArray);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v16;
    v20 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v20)
    {
      v21 = *v45;
      v22 = IDSDeliveryFromIDKey;
      v23 = IDSDeliveryFinalURIsKey;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v44 + 1) + 8 * i);
          if (v15 && ([*(*(&v44 + 1) + 8 * i) objectForKeyedSubscript:v22], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v15, "isEqualToString:", v26), v26, (v27 & 1) == 0))
          {
            [v38 addObject:v25];
          }

          else if (v9)
          {
            v28 = [v25 mutableCopy];
            v29 = v28;
            if (value)
            {
              CFDictionarySetValue(v28, v23, value);
            }

            [v39 addObject:v29];
          }

          else
          {
            [(IDSDeliveryController *)v41 _pipelineHandleMessage:v25 forURIs:value service:v40];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    v36[2](v36, v39);
    if (obj)
    {
      if ([v38 count])
      {
        v30 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v50 = v15;
          v51 = 2112;
          v52 = v38;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " FromID didn't match some messages, keeping some messages in queue {fromID: %@, toKeep: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v33 = v15;
          v34 = v38;
          _IDSLogV();
        }

        [(NSMutableDictionary *)v41->_messageQueue setObject:v38 forKey:v35, v33, v34];
      }

      else
      {
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " Flushing message queue", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        [(NSMutableDictionary *)v41->_messageQueue removeObjectForKey:v35, v33];
        if (![(NSMutableDictionary *)v41->_messageQueue count])
        {
          messageQueue = v41->_messageQueue;
          v41->_messageQueue = 0;
        }
      }
    }

    [(IDSDeliveryController *)v41 _checkFastDormancy];
  }
}

- (BOOL)_sendAsAttachmentForMessage:(id)a3 payloadData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:IDSDeliveryMessageKey];
  v9 = [v8 messageBody];
  v10 = [v9 objectForKey:IDSCommandKey];
  v11 = [(IDSDeliveryController *)self _maxPayloadSizeForMessage:v6];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v21) = [v9 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Checking the estimated payload size for message not requesting encryption... %d B", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = [v9 count];
    _IDSLogV();
  }

  v13 = [(IDSDeliveryController *)self _forceAttachmentForMessage:v6, v19];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v7 length];
    v13 |= v14 >= v11;
  }

  else
  {
    v14 = 0;
  }

  if ([v10 integerValue] == 104)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attachment commands must not be forced to send as attachments", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v13 = 0;
  }

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (v13)
    {
      v17 = @"YES";
    }

    *buf = 138412546;
    v21 = v17;
    v22 = 2048;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " sendAsAttachment? %@ The payload is %lu bytes.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return v13 & 1;
}

- (int64_t)_maxPayloadSizeForMessage:(id)a3
{
  v4 = [a3 objectForKey:IDSDeliveryCanUseLargePayloadKey];
  v5 = [v4 BOOLValue];

  return [(IDSDeliveryController *)self effectiveMaxPayloadSizeIfCanUseLargePayload:v5];
}

- (unint64_t)_destinationCountForURIsAndTokens:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKey:*(*(&v15 + 1) + 8 * v7)];
        v9 = [v8 objectForKey:@"push-tokens"];
        v10 = [v9 count];

        v4 += v10;
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [NSNumber numberWithUnsignedInteger:v4];
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We will send %@ individual messages", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = [NSNumber numberWithUnsignedInteger:v4];
    _IDSLogV();
  }

  return v4;
}

- (void)_emptyMessagesForURIs:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    messageQueue = self->_messageQueue;
    v9 = [(IDSDeliveryController *)self _keyForURIs:v6 service:v7];
    v10 = [(NSMutableDictionary *)messageQueue objectForKey:v9];

    if (v10)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Emptying message queue for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = v6;
        _IDSLogV();
      }

      v12 = self->_messageQueue;
      v13 = [(IDSDeliveryController *)self _keyForURIs:v6 service:v7, v16];
      [(NSMutableDictionary *)v12 removeObjectForKey:v13];

      if (![(NSMutableDictionary *)self->_messageQueue count])
      {
        v14 = self->_messageQueue;
        self->_messageQueue = 0;
      }
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No queued items to remove for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = v6;
        _IDSLogV();
      }
    }

    [(IDSDeliveryController *)self _checkFastDormancy];
  }
}

- (void)_discardMessage:(id)a3 forURIs:(id)a4 service:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    messageQueue = self->_messageQueue;
    v12 = [(IDSDeliveryController *)self _keyForURIs:v9 service:v10];
    v13 = [(NSMutableDictionary *)messageQueue objectForKey:v12];

    if (v13 && (v14 = [v13 indexOfObjectIdenticalTo:v8], v14 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v16 = v14;
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing message from queue for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v21 = v9;
        _IDSLogV();
      }

      [v13 removeObjectAtIndex:{v16, v21}];
      if (![v13 count])
      {
        v18 = self->_messageQueue;
        v19 = [(IDSDeliveryController *)self _keyForURIs:v9 service:v10];
        [(NSMutableDictionary *)v18 removeObjectForKey:v19];

        if (![(NSMutableDictionary *)self->_messageQueue count])
        {
          v20 = self->_messageQueue;
          self->_messageQueue = 0;
        }
      }
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No queued message matched for removal for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v21 = v9;
        _IDSLogV();
      }
    }

    [(IDSDeliveryController *)self _checkFastDormancy];
  }
}

- (void)_queueMessage:(id)a3 service:(id)a4 dataToEncrypt:(id)a5 withEncryptedAttributes:(id)a6 fromID:(id)a7 fromShortHandle:(id)a8 fromIdentity:(id)a9 toID:(id)a10 toURIs:(id)a11 originallyToURIs:(id)a12 ktURIVerificationMap:(id)a13 canUseLargePayload:(BOOL)a14 sendOnePerToken:(BOOL)a15 registrationProperties:(id)a16 fakeMessage:(BOOL)a17 alwaysSkipSelf:(BOOL)a18 alwaysIncludeSelf:(BOOL)a19 forceQuery:(int64_t)a20 disallowRefresh:(BOOL)a21 prioritizedTokenList:(id)a22 wantsFirewallDonation:(BOOL)a23 destinationObject:(id)a24 willSendBlock:(id)a25 completionBlock:(id)a26 fromCoalesceQueue:(BOOL)a27
{
  v32 = a3;
  v33 = a4;
  value = a5;
  v82 = a6;
  v77 = a7;
  v78 = a8;
  v34 = v33;
  v79 = a9;
  v80 = a10;
  v35 = a11;
  v36 = a12;
  v73 = a13;
  v76 = a16;
  v75 = a22;
  v74 = a24;
  v72 = a25;
  v37 = a26;
  v38 = [v35 count];
  if (v32 && v38)
  {
    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v84 = v32;
      v85 = 2112;
      v86 = v35;
      v87 = 2112;
      v88 = v34;
      v89 = 2112;
      v90 = v36;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Enqueuing message: %@  to people: %@ service: %@ (original: %@)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v67 = v34;
      v68 = v36;
      v65 = v32;
      v66 = v35;
      _IDSLogV();
    }

    if ([v36 count])
    {
      v40 = v36;
    }

    else
    {
      v40 = v35;
    }

    v41 = v40;
    messageQueue = self->_messageQueue;
    v69 = v41;
    v43 = [IDSDeliveryController _keyForURIs:"_keyForURIs:service:" service:?];
    v44 = [(NSMutableDictionary *)messageQueue objectForKey:v43];

    if (!v44)
    {
      v44 = objc_alloc_init(NSMutableArray);
      v45 = self;
      v46 = self->_messageQueue;
      if (!v46)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v48 = self->_messageQueue;
        self->_messageQueue = Mutable;

        v46 = self->_messageQueue;
        v45 = self;
      }

      v49 = [(IDSDeliveryController *)v45 _keyForURIs:v69 service:v34];
      [(NSMutableDictionary *)v46 setObject:v44 forKey:v49];
    }

    if (v37)
    {
      v50 = [v37 copy];
      v51 = objc_retainBlock(v50);
    }

    else
    {
      v51 = 0;
    }

    if (v72)
    {
      v52 = [v72 copy];
      v70 = objc_retainBlock(v52);
    }

    else
    {
      v70 = 0;
    }

    v53 = objc_alloc_init(NSMutableDictionary);
    CFDictionarySetValue(v53, IDSDeliveryMessageKey, v32);
    if (value)
    {
      CFDictionarySetValue(v53, IDSDeliveryDataToEncryptKey, value);
    }

    if (v82)
    {
      CFDictionarySetValue(v53, IDSDeliveryEncryptionAttributesKey, v82);
    }

    v54 = objc_retainBlock(v51);
    if (v54)
    {
      CFDictionarySetValue(v53, IDSDeliveryCompletionBlockKey, v54);
    }

    v55 = objc_retainBlock(v70);
    if (v55)
    {
      CFDictionarySetValue(v53, IDSDeliveryWillSendBlockKey, v55);
    }

    if (v77)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromIDKey, v77);
    }

    if (v78)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromShortHandle, v78);
    }

    if (v79)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromIdentityKey, v79);
    }

    if (v80)
    {
      CFDictionarySetValue(v53, IDSDeliveryToIDKey, v80);
    }

    if (v36)
    {
      CFDictionarySetValue(v53, IDSDeliveryOriginalURIsKey, v36);
    }

    if (v34)
    {
      CFDictionarySetValue(v53, IDSDeliveryServiceKey, v34);
    }

    v56 = [NSNumber numberWithBool:a14];
    if (v56)
    {
      CFDictionarySetValue(v53, IDSDeliveryCanUseLargePayloadKey, v56);
    }

    v57 = [NSNumber numberWithBool:a15];
    if (v57)
    {
      CFDictionarySetValue(v53, IDSDeliverySendOnePerTokenKey, v57);
    }

    if (v76)
    {
      CFDictionarySetValue(v53, IDSDeliveryRegistrationPropertiesKey, v76);
    }

    v58 = [NSNumber numberWithBool:a17];
    if (v58)
    {
      CFDictionarySetValue(v53, IDSDeliveryFakeMessageKey, v58);
    }

    v59 = [NSNumber numberWithBool:a18];
    if (v59)
    {
      CFDictionarySetValue(v53, IDSDeliveryAlwaysSkipSelfKey, v59);
    }

    v60 = [NSNumber numberWithBool:a19];
    if (v60)
    {
      CFDictionarySetValue(v53, IDSDeliveryAlwaysIncludeSelfKey, v60);
    }

    v61 = [NSNumber numberWithInteger:a20];
    if (v61)
    {
      CFDictionarySetValue(v53, IDSDeliveryForceQueryKey, v61);
    }

    v62 = [NSNumber numberWithBool:a21];
    if (v62)
    {
      CFDictionarySetValue(v53, IDSDeliveryDisallowQueryRefreshKey, v62);
    }

    if (v75)
    {
      CFDictionarySetValue(v53, IDSDeliveryPrioritizedTokenListKey, v75);
    }

    v63 = [NSNumber numberWithBool:a23];
    if (v63)
    {
      CFDictionarySetValue(v53, IDSDeliveryWantsFirewallDonation, v63);
    }

    if (v74)
    {
      CFDictionarySetValue(v53, IDSDeliveryIDSDestinationKey, v74);
    }

    if (v73)
    {
      CFDictionarySetValue(v53, IDSDeliveryKeyTransparencyURIVerificationMapKey, v73);
    }

    v64 = [NSNumber numberWithBool:a27];
    if (v64)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromCoalesceQueueKey, v64);
    }

    [v44 addObject:v53];
    [(IDSDeliveryController *)self _checkFastDormancy];
  }
}

- (void)_sendFTMessage:(id)a3 service:(id)a4 fromID:(id)a5 toID:(id)a6 toToken:(id)a7 toSessionToken:(id)a8 toURIs:(id)a9 fromIdentity:(id)a10 completionBlock:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v60 = a7;
  v57 = a8;
  v58 = a9;
  v56 = a10;
  v54 = a11;
  v55 = [v18 isEqualToString:v19];
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v17;
    if (v55)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = [v16 wantsDeliveryStatus];
    v24 = [v23 intValue];
    v25 = [v16 wantsCertifiedDelivery];
    *buf = 138414082;
    if (v24)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v70 = v16;
    if (v25)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v71 = 2112;
    v72 = v18;
    v73 = 2112;
    v74 = v19;
    v75 = 2112;
    v76 = v60;
    v77 = 2112;
    v78 = v58;
    v79 = 2112;
    v80 = v22;
    v81 = 2112;
    v82 = v26;
    v83 = 2112;
    v84 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "send FTMessage: %@   fromID: %@   toID: %@  toToken: %@  toURIs: %@  toMe: %@  delivery status: %@ certified delivery: %@", buf, 0x52u);

    v17 = v21;
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (v55)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = [v16 wantsDeliveryStatus];
    if ([v29 intValue])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    if ([v16 wantsCertifiedDelivery])
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v52 = v30;
    v53 = v31;
    v50 = v58;
    v51 = v28;
    v48 = v19;
    v49 = v60;
    v46 = v16;
    v47 = v18;
    _IDSLogV();
  }

  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v57)
      {
        v32 = [(IDSDeliveryController *)self peerIDManager];
        v33 = [IDSURI URIWithPrefixedURI:v19 withServiceLoggingHint:v17];
        v34 = [IDSPushToken pushTokenWithData:v60 withServiceLoggingHint:v17];
        v35 = [IDSURI URIWithPrefixedURI:v18 withServiceLoggingHint:v17];
        LOBYTE(v47) = 0;
        v57 = [v32 sessionTokenForURI:v33 pushToken:v34 fromURI:v35 service:v17 expirationDate:0 refreshDate:0 fromIdentity:v56 includeSelfDevice:v47];
      }

      [v16 setTargetToken:{v60, v46, v47, v48, v49, v50, v51, v52, v53}];
      [v16 setSourcePeerID:v18];
      [v16 setTargetSessionToken:v57];
      [v16 setTargetPeerID:v19];
      if (v55)
      {
        v36 = [v16 wantsDeliveryStatus];
        v37 = [v36 intValue] == 0;

        if (!v37)
        {
          v38 = [NSNumber numberWithBool:0];
          [v16 setWantsDeliveryStatus:v38];
        }
      }
    }
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1004BBD7C;
  v61[3] = &unk_100BDE248;
  v62 = v19;
  v63 = v18;
  v64 = self;
  v65 = v17;
  v67 = v58;
  v68 = v54;
  v66 = v56;
  v39 = v58;
  v40 = v17;
  v41 = v54;
  v42 = v56;
  v43 = v40;
  v44 = v18;
  v45 = v19;
  [v16 setCompletionBlock:v61];
  [(FTMessageDelivery *)self->_messageDelivery sendMessage:v16];
  [(IDSDeliveryController *)self _checkFastDormancy];
}

- (void)_sendFTFanoutMessage:(id)a3 service:(id)a4 fromID:(id)a5 toURIs:(id)a6 fromIdentity:(id)a7 completionBlock:(id)a8
{
  v60 = a3;
  v54 = a4;
  v58 = a5;
  v57 = a6;
  v55 = a7;
  v56 = a8;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v60 messageID];
    a4 = [v60 groupPayload];
    if (a4)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [v60 chunkNumber];
    if ([v60 isFinalMessage])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138413314;
    v82 = v60;
    v83 = 2112;
    v84 = v14;
    v85 = 2112;
    v86 = v15;
    v87 = 2112;
    v88 = v16;
    v89 = 2112;
    v90 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "    Told to send Fanout Message: %@ GUID: %@ isEngram? %@ Chunk: %@ isFinal?: %@ ", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = [v60 messageID];
    v19 = [v60 groupPayload];
    if (v19)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    a4 = [v60 chunkNumber];
    if ([v60 isFinalMessage])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v52 = a4;
    v53 = v21;
    v50 = v18;
    v51 = v20;
    v49 = v60;
    _IDSLogV();
  }

  v63 = objc_alloc_init(NSMutableDictionary);
  v62 = objc_alloc_init(NSMutableSet);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [v60 individualPeerMessages];
  v22 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (!v22)
  {

LABEL_37:
    [v60 setWantsCertifiedDelivery:{1, v49, v50, v51}];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v32 = [v60 individualPeerMessages];
    v33 = [v32 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v33)
    {
      v34 = *v72;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v72 != v34)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v71 + 1) + 8 * i) setWantsCertifiedDelivery:0];
        }

        v33 = [v32 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v33);
    }

    goto LABEL_45;
  }

  v23 = *v76;
  v24 = 1;
  do
  {
    for (j = 0; j != v22; j = j + 1)
    {
      if (*v76 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v75 + 1) + 8 * j);
      v27 = [v26 dictionaryRepresentation];
      [v62 addObject:v27];

      v28 = [v26 encryptionType];
      v29 = v28;
      if (!v28)
      {
        v30 = [v60 encryptionType];
        a4 = v30;
        if (v30)
        {
          v29 = v30;
        }

        else
        {
          v29 = @"none";
        }
      }

      v31 = [v26 targetToken];
      [(__CFString *)v63 setObject:v29 forKey:v31];

      if (!v28)
      {
      }

      if (v24)
      {
        v24 = [v26 wantsCertifiedDelivery];
      }

      else
      {
        v24 = 0;
      }
    }

    v22 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  }

  while (v22);

  if (v24)
  {
    goto LABEL_37;
  }

LABEL_45:
  v36 = [v60 encryptionType];
  if (v36)
  {
    v37 = [v60 encryptionType];
    v38 = [v37 isEqualToString:@"none"];

    if ((v38 & 1) == 0)
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v60 messageID];
        v41 = [v60 encryptionType];
        *buf = 138412802;
        v82 = v40;
        v83 = 2112;
        v84 = v41;
        v85 = 2112;
        v86 = v63;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Sending %@ with top-level encryption type %@ and dtls: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v42 = [v60 messageID];
        v50 = [v60 encryptionType];
        v51 = v63;
        v49 = v42;
        _IDSLogV();
      }
    }
  }

  if ([v60 isFinalMessage])
  {
    v43 = [v60 individualPeerMessages];
    v44 = [v43 count] == 1;
  }

  else
  {
    v44 = 0;
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1004BD0D4;
  v64[3] = &unk_100BDE270;
  v65 = v62;
  v66 = v58;
  v70 = v44;
  v67 = v57;
  v68 = self;
  v69 = v56;
  v45 = v57;
  v46 = v56;
  v47 = v58;
  v48 = v62;
  [v60 setCompletionBlock:v64];
  [(FTMessageDelivery *)self->_messageDelivery sendMessage:v60];
  [(IDSDeliveryController *)self _checkFastDormancy];
}

- (void)_sendAttachmentWithGuid:(id)a3 service:(id)a4 topic:(id)a5 originalCommand:(id)a6 additionalDictionary:(id)a7 encryptedData:(id)a8 toToken:(id)a9 toID:(id)a10 fromID:(id)a11 fromIdentity:(id)a12 canUseLargePayload:(BOOL)a13 expirationDate:(id)a14 destinationObject:(id)a15 ackBlock:(id)a16 completionBlock:(id)a17
{
  v45 = a3;
  v53 = a4;
  v54 = a5;
  v46 = a6;
  v47 = a7;
  v52 = a8;
  v55 = a9;
  v56 = a10;
  v57 = a11;
  v48 = a12;
  v49 = a14;
  v50 = a15;
  v51 = a16;
  v22 = a17;
  v23 = OSLogHandleForIDSCategory();
  v24 = v53;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v76 = v45;
    v77 = 2112;
    v78 = v54;
    v79 = 2112;
    v80 = v55;
    v81 = 2112;
    v82 = v56;
    v83 = 2112;
    v84 = v57;
    v85 = 2112;
    v86 = v53;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Asked to sendAttachmentWithGUID %@  topic %@ toToken %@ toID %@ fromID %@ service: %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v42 = v57;
    v43 = v53;
    v40 = v55;
    v41 = v56;
    v37 = v45;
    v39 = v54;
    _IDSLogV();
  }

  v25 = [NSFileManager defaultManager:v37];
  v26 = [v25 _randomTemporaryPathWithSuffix:0];

  if (v26 && [v52 writeToFile:v26 atomically:1])
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = @"YES";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "    Wrote data to path: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v38 = @"YES";
      _IDSLogV();
    }

    v28 = [v22 copy];

    v29 = [[IDSServiceProperties alloc] initWithServiceIdentifier:v53];
    v30 = [v29 dataUsageBundleID];
    v31 = [IDSDaemon _IMTransferServiceController]_0();
    v32 = [v26 stringByResolvingAndStandardizingPath];
    v33 = [NSString stringGUIDForObject:v26];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1004BE350;
    v58[3] = &unk_100BDE300;
    v59 = v47;
    v60 = v46;
    v61 = v45;
    v72 = v28;
    v62 = v26;
    v63 = self;
    v64 = v53;
    v74 = a13;
    v65 = v49;
    v66 = v57;
    v67 = v48;
    v68 = v56;
    v69 = v55;
    v70 = v54;
    v71 = v50;
    v73 = v51;
    v34 = v28;
    v24 = v53;
    [v31 sendFilePath:v32 topic:v70 userInfo:0 transferID:v33 sourceAppID:v30 encryptFile:0 progressBlock:&stru_100BDE2B0 completionBlock:v58];

    v35 = v59;
    goto LABEL_16;
  }

  v34 = [v22 copy];

  if (v34)
  {
    v29 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Failed uploading attachment file transfer", NSLocalizedDescriptionKey, 0}];
    v36 = [NSError alloc];
    v30 = [v36 initWithDomain:IDSSendErrorDomain code:4 userInfo:v29];
    v35 = [[IDSDeliveryContext alloc] initWithResponseCode:objc_msgSend(v30 error:"code") lastCall:{v30, 1}];
    v34[2](v34, v35);
LABEL_16:
  }
}

- (id)_tokenURIForToken:(id)a3 uri:(id)a4
{
  v4 = _IDSCopyIDForTokenWithURI();
  v5 = [IDSURI URIWithPrefixedURI:v4];

  return v5;
}

- (void)_sendMessage:(id)a3 dataToEncrypt:(id)a4 withEncryptedAttributes:(id)a5 onService:(id)a6 fromID:(id)a7 fromShortHandle:(id)a8 fromIdentity:(id)a9 toID:(id)a10 toURIs:(id)a11 canUseLargePayload:(BOOL)a12 sendOnePerToken:(BOOL)a13 allowPartialSendsToSucceed:(BOOL)a14 registrationProperties:(id)a15 fakeMessage:(BOOL)a16 alwaysSkipSelf:(BOOL)a17 alwaysIncludeSelf:(BOOL)a18 forceQuery:(int64_t)a19 disallowRefresh:(BOOL)a20 prioritizedTokenList:(id)a21 wantsFirewallDonation:(BOOL)a22 destinationObject:(id)a23 willSendBlock:(id)a24 completionBlock:(id)a25 firstAttemptDate:(id)a26 ktURIVerificationMap:(id)a27 fromCoalesceQueue:(BOOL)a28 withQueryCompletion:(id)a29
{
  v182 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v171 = a7;
  v37 = a8;
  v168 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a15;
  v41 = a21;
  v42 = a23;
  v165 = a24;
  v166 = a25;
  v43 = a26;
  v158 = a27;
  v167 = a29;
  v227 = _os_activity_create(&_mh_execute_header, "IDSDeliveryController sendMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v227, &state);
  v159 = v43;
  if (!v43)
  {
    v159 = +[NSDate date];
  }

  v44 = [v182 sendMode];
  v160 = v44;
  if (v44)
  {
    v45 = [v44 integerValue] == 0;
  }

  else
  {
    v45 = 1;
  }

  v180 = v45;
  obj = [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager coalesceQueueExistsForTopic:v36];
  if (v166)
  {
    v46 = [v166 copy];
    v162 = objc_retainBlock(v46);
  }

  else
  {
    v162 = 0;
  }

  if (v165)
  {
    v47 = [v165 copy];
    v163 = objc_retainBlock(v47);
  }

  else
  {
    v163 = 0;
  }

  theDict = objc_alloc_init(NSMutableDictionary);
  v48 = v182;
  if (v48)
  {
    CFDictionarySetValue(theDict, IDSDeliveryMessageKey, v48);
  }

  v164 = v48;

  v49 = v34;
  if (v49)
  {
    CFDictionarySetValue(theDict, IDSDeliveryDataToEncryptKey, v49);
  }

  v157 = v49;

  v50 = v35;
  if (v50)
  {
    CFDictionarySetValue(theDict, IDSDeliveryEncryptionAttributesKey, v50);
  }

  v156 = v50;

  v51 = v36;
  if (v51)
  {
    v52 = v51;
    CFDictionarySetValue(theDict, IDSDeliveryServiceKey, v51);
    v51 = v52;
  }

  v183 = v51;

  v53 = v171;
  if (v53)
  {
    CFDictionarySetValue(theDict, IDSDeliveryFromIDKey, v53);
  }

  v174 = v53;

  v54 = v37;
  if (v54)
  {
    CFDictionarySetValue(theDict, IDSDeliveryFromShortHandle, v54);
  }

  v155 = v54;

  v55 = v168;
  if (v55)
  {
    v56 = v55;
    CFDictionarySetValue(theDict, IDSDeliveryFromIdentityKey, v55);
    v55 = v56;
  }

  v154 = v55;

  v57 = v38;
  if (v57)
  {
    v58 = v57;
    CFDictionarySetValue(theDict, IDSDeliveryToIDKey, v57);
    v57 = v58;
  }

  v153 = v57;

  v59 = v39;
  v169 = v59;
  if (v59)
  {
    CFDictionarySetValue(theDict, IDSDeliveryOriginalURIsKey, v59);
    v59 = v169;
  }

  v60 = [NSNumber numberWithBool:?];
  if (v60)
  {
    CFDictionarySetValue(theDict, IDSDeliveryCanUseLargePayloadKey, v60);
  }

  v61 = [NSNumber numberWithBool:?];
  if (v61)
  {
    CFDictionarySetValue(theDict, IDSDeliverySendOnePerTokenKey, v61);
  }

  v62 = v40;
  if (v62)
  {
    v63 = v62;
    CFDictionarySetValue(theDict, IDSDeliveryRegistrationPropertiesKey, v62);
    v62 = v63;
  }

  v152 = v62;

  v64 = [NSNumber numberWithBool:?];
  if (v64)
  {
    CFDictionarySetValue(theDict, IDSDeliveryFakeMessageKey, v64);
  }

  v65 = [NSNumber numberWithBool:?];
  if (v65)
  {
    CFDictionarySetValue(theDict, IDSDeliveryAlwaysSkipSelfKey, v65);
  }

  v66 = [NSNumber numberWithBool:?];
  if (v66)
  {
    CFDictionarySetValue(theDict, IDSDeliveryAlwaysIncludeSelfKey, v66);
  }

  v67 = [NSNumber numberWithInteger:?];
  if (v67)
  {
    CFDictionarySetValue(theDict, IDSDeliveryForceQueryKey, v67);
  }

  v68 = [NSNumber numberWithBool:?];
  if (v68)
  {
    CFDictionarySetValue(theDict, IDSDeliveryDisallowQueryRefreshKey, v68);
  }

  v69 = v41;
  if (v69)
  {
    v70 = v69;
    CFDictionarySetValue(theDict, IDSDeliveryPrioritizedTokenListKey, v69);
    v69 = v70;
  }

  v151 = v69;

  v71 = v42;
  if (v71)
  {
    v72 = v71;
    CFDictionarySetValue(theDict, IDSDeliveryIDSDestinationKey, v71);
    v71 = v72;
  }

  v150 = v71;

  v73 = objc_retainBlock(v163);
  if (v73)
  {
    CFDictionarySetValue(theDict, IDSDeliveryWillSendBlockKey, v73);
  }

  v74 = objc_retainBlock(v162);
  if (v74)
  {
    CFDictionarySetValue(theDict, IDSDeliveryCompletionBlockKey, v74);
  }

  v75 = [NSNumber numberWithBool:?];
  if (v75)
  {
    CFDictionarySetValue(theDict, IDSDeliveryFromCoalesceQueueKey, v75);
  }

  if (!v180 && !a28)
  {
    [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager handleMessageToCoalesce:theDict forTopic:v183 sendMode:v160];
    v77 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager loggableOverviewForTopic:v183];
      *buf = 138412290;
      *&buf[4] = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "  Coalesce queue view : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v133 = [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager loggableOverviewForTopic:v183];
      _IDSLogV();
    }

    goto LABEL_70;
  }

  if (obj && !a28)
  {
    v76 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Incoming urgent message for a topic with coalesce messages in queue", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager enqueueMessage:theDict forTopic:v183 sendMode:&off_100C3C808];
    [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager flushCoalesceQueueForTopic:v183];
LABEL_70:
    if (v167)
    {
      v167[2](v167, &__NSArray0__struct);
    }

    goto LABEL_138;
  }

  LOBYTE(v145) = a28;
  LOBYTE(v143) = a22;
  LOBYTE(v141) = a20;
  BYTE2(v139) = a18;
  LOWORD(v139) = __PAIR16__(a17, a16);
  LOWORD(v137) = __PAIR16__(a13, a12);
  [IDSDeliveryController _queueMessage:"_queueMessage:service:dataToEncrypt:withEncryptedAttributes:fromID:fromShortHandle:fromIdentity:toID:toURIs:originallyToURIs:ktURIVerificationMap:canUseLargePayload:sendOnePerToken:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:fromCoalesceQueue:" service:v48 dataToEncrypt:v183 withEncryptedAttributes:v157 fromID:v156 fromShortHandle:v174 fromIdentity:v155 toID:v154 toURIs:v153 originallyToURIs:v169 ktURIVerificationMap:v169 canUseLargePayload:v158 sendOnePerToken:v137 registrationProperties:v152 fakeMessage:v139 alwaysSkipSelf:a19 alwaysIncludeSelf:v141 forceQuery:v151 disallowRefresh:v143 prioritizedTokenList:v150 wantsFirewallDonation:v165 destinationObject:v166 willSendBlock:v145 completionBlock:? fromCoalesceQueue:?];
  v149 = [v48 sendMetric];
  [v48 timeout];
  v173 = [NSDate dateWithTimeIntervalSinceNow:?];
  v181 = objc_alloc_init(NSMutableSet);
  v175 = objc_alloc_init(NSMutableSet);
  v172 = objc_alloc_init(NSMutableSet);
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  obja = v169;
  v79 = [obja countByEnumeratingWithState:&v222 objects:v231 count:16];
  if (!v79)
  {
    goto LABEL_95;
  }

  v80 = *v223;
  do
  {
    for (i = 0; i != v79; i = i + 1)
    {
      if (*v223 != v80)
      {
        objc_enumerationMutation(obja);
      }

      v82 = *(*(&v222 + 1) + 8 * i);
      v83 = [v82 pushToken];
      v84 = [IDSDeliveryController tokenURINegativeCacheItemForTokenURI:v82 service:v183];
      v85 = v84;
      *buf = 10000000;
      if (v83)
      {
        v86 = v84 == 0;
      }

      else
      {
        v86 = 1;
      }

      v87 = !v86;
      if (!v86)
      {
        v88 = [(IDSRateLimiter *)self->_tokenURINegativeCache underLimitForItem:v84];
        v89 = v175;
        if ((v88 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      if (a19 == 1 || (-[IDSDeliveryController peerIDManager](self, "peerIDManager"), v90 = objc_claimAutoreleasedReturnValue(), +[IDSURI URIWithPrefixedURI:withServiceLoggingHint:](IDSURI, "URIWithPrefixedURI:withServiceLoggingHint:", v174, v183), v91 = objc_claimAutoreleasedReturnValue(), v92 = [v90 hasPeerTokensForURI:v82 fromURI:v91 service:v183 validThrough:v173 outReason:buf], v91, v90, (v92 & 1) == 0))
      {
        if (v87)
        {
          [(IDSRateLimiter *)self->_tokenURINegativeCache noteItem:v85];
        }

        v89 = v181;
        if (a19 != 1)
        {
          v89 = v181;
          if (*buf != 10000000)
          {
            v93 = [NSNumber numberWithUnsignedInteger:?];
            [v172 addObject:v93];

            v89 = v181;
          }
        }

LABEL_92:
        [v89 addObject:v82];
      }
    }

    v79 = [obja countByEnumeratingWithState:&v222 objects:v231 count:16];
  }

  while (v79);
LABEL_95:

  v94 = [v181 count];
  v95 = [v175 count];
  v96 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v97 = [obja count];
    *buf = 138412546;
    *&buf[4] = v164;
    v229 = 2048;
    v230 = v97;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Preparing to send message: %@ looking up %lu people", buf, 0x16u);
  }

  v98 = [v164 description];
  v99 = [obja description];
  v100 = [v181 description];
  v214 = _NSConcreteStackBlock;
  v215 = 3221225472;
  v216 = sub_1004C0724;
  v217 = &unk_100BD8DE8;
  v101 = v98;
  v218 = v101;
  v102 = v99;
  v219 = v102;
  v221 = v94 == 0;
  v103 = v100;
  v220 = v103;
  cut_dispatch_log_queue();
  if (v94 | v95)
  {
    if (v95)
    {
      v104 = v94 != 0;
    }

    else
    {
      v104 = 1;
    }

    if (v104 || !a14)
    {
      if (v94 != 0 && (v95 == 0 || a14))
      {
        v184[0] = _NSConcreteStackBlock;
        v184[1] = 3221225472;
        v184[2] = sub_1004C0810;
        v184[3] = &unk_100BDE390;
        v185 = obja;
        v205 = a14;
        v109 = v164;
        v186 = v109;
        v201 = v167;
        v187 = self;
        objb = v183;
        v188 = objb;
        v202 = v166;
        v189 = v159;
        v190 = v157;
        v191 = v156;
        v148 = v174;
        v192 = v148;
        v193 = v155;
        v147 = v154;
        v194 = v147;
        v195 = v153;
        v206 = a12;
        v207 = a13;
        v208 = a16;
        v209 = a17;
        v210 = a18;
        v196 = v152;
        v204 = a19;
        v211 = a20;
        v197 = v151;
        v212 = a22;
        v198 = v150;
        v203 = v165;
        v199 = v158;
        v213 = a28;
        v110 = v149;
        v200 = v110;
        v161 = objc_retainBlock(v184);
        v111 = [(IDSDeliveryController *)self currentServerTime];
        [v111 currentServerTimeInterval];
        v112 = [NSNumber numberWithDouble:?];
        v113 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingQueryStartKey];
        [v110 addEntry:v112 forKey:v113];

        v114 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = [v181 allObjects];
          *buf = 138412546;
          *&buf[4] = v115;
          v229 = 2112;
          v230 = v148;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Issuing query for: %@   from: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v135 = [v181 allObjects];
          v136 = v148;
          _IDSLogV();
        }

        v116 = [[IDSPeerIDQueryContext alloc] initWithSending:1 forceToServer:a19 == 1 messaging:1 resultExpected:1 preventNewQuery:0 clientRequestedForceQuery:a19 == 1 requiredValidThroughDate:v173, v136];
        if ([v109 command])
        {
          v117 = [v109 command];
        }

        else
        {
          v124 = [v109 additionalDictionary];
          v125 = [v124 objectForKey:@"c"];
          v117 = [v125 integerValue];
        }

        v126 = [(IDSDeliveryController *)self _stringFromQueryReasonExtensionSet:v172];
        v127 = v126;
        if (v117)
        {
          v128 = [NSNumber numberWithInteger:v117];
          v129 = [NSString stringWithFormat:@"%@[%@][%@]", @"MessageSend", v128, v127];
        }

        else
        {
          v128 = [NSString stringWithFormat:@"%@[%@][%@]", @"MessageSend", &off_100C3C820, v126];
          v129 = v128;
        }

        v130 = [(IDSDeliveryController *)self peerIDManager];
        v131 = [v181 allObjects];
        v132 = [IDSURI URIWithPrefixedURI:v148 withServiceLoggingHint:objb];
        [v130 startQueryForURIs:v131 fromIdentity:v147 fromURI:v132 fromService:objb context:v116 reason:v129 completionBlock:v161];

        v105 = v185;
      }

      else
      {
        v118 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v164;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Tokens are being ignored, failing message {msg: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v119 = [NSError alloc];
        v105 = [v119 initWithDomain:IDSSendErrorDomain code:1 userInfo:0];
        if (v167)
        {
          v167[2](v167, &__NSArray0__struct);
        }

        if (v166)
        {
          v120 = [[IDSDeliveryContext alloc] initWithResponseCode:1 error:v105 lastCall:1];
          [v120 setDisplayURIs:obja];
          (*(v166 + 2))(v166, v120);
        }
      }
    }

    else
    {
      v105 = [[NSMutableSet alloc] initWithArray:obja];
      [v105 minusSet:v175];
      v106 = [v105 allObjects];
      v107 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v105;
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Found messagable people: %@", buf, 0xCu);
      }

      v108 = v164;
      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v134 = v105;
        _IDSLogV();
      }

      if ([v105 count] > 1 || objc_msgSend(v105, "count") == 1 && (objc_msgSend(v105, "anyObject"), v121 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v121, "prefixedURI"), v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v122, "isEqualToString:", v174), v122, v121, v108 = v164, (v123 & 1) == 0))
      {
        [(IDSDeliveryController *)self _emptyMessagesForURIs:obja service:v183];
        LOBYTE(v146) = a28;
        LOBYTE(v144) = a22;
        LOBYTE(v142) = a20;
        BYTE2(v140) = a18;
        BYTE1(v140) = a17;
        LOBYTE(v140) = a16;
        BYTE1(v138) = a13;
        LOBYTE(v138) = a12;
        [IDSDeliveryController _queueMessage:"_queueMessage:service:dataToEncrypt:withEncryptedAttributes:fromID:fromShortHandle:fromIdentity:toID:toURIs:originallyToURIs:ktURIVerificationMap:canUseLargePayload:sendOnePerToken:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:fromCoalesceQueue:" service:v108 dataToEncrypt:v183 withEncryptedAttributes:v157 fromID:v156 fromShortHandle:v174 fromIdentity:v155 toID:v154 toURIs:v153 originallyToURIs:v106 ktURIVerificationMap:obja canUseLargePayload:v158 sendOnePerToken:v138 registrationProperties:v152 fakeMessage:v140 alwaysSkipSelf:a19 alwaysIncludeSelf:v142 forceQuery:v151 disallowRefresh:v144 prioritizedTokenList:v150 wantsFirewallDonation:v165 destinationObject:v166 willSendBlock:v146 completionBlock:? fromCoalesceQueue:?];
      }

      [(IDSDeliveryController *)self _handleMessagesForURIs:v106 originalURIs:obja service:v183 fromID:v174 fromCoalesceQueue:a28 withQueryCompletion:v167];
    }
  }

  else
  {
    [(IDSDeliveryController *)self _handleMessagesForURIs:obja originalURIs:obja service:v183 fromID:v174 fromCoalesceQueue:a28 withQueryCompletion:v167];
  }

LABEL_138:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_stringFromQueryReasonExtensionSet:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 allObjects];
    v5 = [v4 sortedArrayUsingComparator:&stru_100BDE3D0];

    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_100C06028;
  }

  return v6;
}

- (void)sendIDSMessage:(id)a3 service:(id)a4 topic:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  im_assert_primary_base_queue();
  if (v10)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending IDSMessage: %@  topic: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v16 = v10;
      v17 = v12;
      _IDSLogEventV();
    }

    [v10 setTopic:{v12, v16, v17}];
    [(IDSDeliveryController *)self _sendFTMessage:v10 service:v11 fromID:0 toID:0 toToken:0 toSessionToken:0 toURIs:0 fromIdentity:0 completionBlock:v13];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sendIDSMessage called with nil message -- returning", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSLogEventV();
    }
  }
}

- (void)_sendMessageDictionary:(id)a3 lastRetryInterval:(double)a4 dataToEncrypt:(id)a5 withEncryptedAttributes:(id)a6 onService:(id)a7 wantsResponse:(BOOL)a8 canUseLargePayload:(BOOL)a9 sendOnePerToken:(BOOL)a10 allowPartialSendsToSucceed:(BOOL)a11 highPriority:(BOOL)a12 fireAndForget:(BOOL)a13 expirationDate:(id)a14 enforceRemoteTimeouts:(BOOL)a15 messageID:(id)a16 fromID:(id)a17 fromShortHandle:(id)a18 fromIdentity:(id)a19 toID:(id)a20 toURIs:(id)a21 accessToken:(id)a22 topic:(id)a23 registrationProperties:(id)a24 fakeMessage:(BOOL)a25 alwaysSkipSelf:(BOOL)a26 alwaysIncludeSelf:(BOOL)a27 forceQuery:(int64_t)a28 pushPriority:(id)a29 ignoreMaxRetryCount:(BOOL)a30 disallowRefresh:(BOOL)a31 originalTimestamp:(id)a32 prioritizedTokenList:(id)a33 wantsFirewallDonation:(BOOL)a34 destinationObject:(id)a35 deliveryMinimumTimeDelay:(id)a36 deliveryMinimumTime:(id)a37 sendMode:(id)a38 KTURIVerificationMap:(id)a39 sendReasonContainer:(id)a40 sendMetric:(id)a41 ackBlock:(id)a42 willSendBlock:(id)a43 sendCompletionBlock:(id)a44
{
  v99 = a8;
  v110 = a3;
  v92 = a5;
  v93 = a6;
  v115 = a7;
  v114 = a14;
  v109 = a16;
  v116 = a17;
  v111 = a18;
  v101 = a19;
  v47 = a20;
  v48 = a21;
  v49 = a22;
  v113 = a23;
  v94 = a24;
  v100 = a29;
  v102 = a32;
  v95 = a33;
  v96 = a35;
  v103 = a36;
  v104 = a37;
  v105 = a38;
  v97 = a39;
  v106 = a40;
  v107 = a41;
  v112 = a42;
  v98 = a43;
  v50 = a44;
  v90 = v49;
  if (v49)
  {
    v51 = [(IDSPeerMessage *)[IDSPeerAccessoryMessage alloc] initWithHighPriority:a12];
    [(IDSPeerAccessoryMessage *)v51 setAccessToken:v49];
  }

  else
  {
    v51 = [[IDSPeerMessage alloc] initWithHighPriority:a12];
  }

  v91 = [[IDSServerRateLimitConfigurationOptions alloc] initWithService:v115];
  v52 = [(IDSServerRateLimitConfiguration *)self->_serverRateLimitConfiguration rateLimitActionWithOptions:?];
  if (v52 == 2)
  {
    [(IDSPeerMessage *)v51 setLastBeforeRateLimit:1];
  }

  else if (v52 == 1)
  {
    v53 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v120 = v109;
      v121 = 2112;
      v122 = v115;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ on service %@ is rate limited due to server bag configuration", buf, 0x16u);
    }

    v54 = [NSString stringWithFormat:@"Message send on the service %@ is being rate limited.", v115];
    v135 = NSLocalizedDescriptionKey;
    v136 = v54;
    v55 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v56 = [NSError errorWithDomain:IDSSendErrorDomain code:42 userInfo:v55];

    v57 = [[IDSDeliveryContext alloc] initWithResponseCode:42 error:v56 lastCall:1];
    v50[2](v50, v57);

    goto LABEL_64;
  }

  v54 = [v110 mutableCopy];
  v58 = IDSWantsDeliveryStatusKey;
  v59 = [v54 objectForKey:IDSWantsDeliveryStatusKey];
  [(IDSPeerAccessoryMessage *)v51 setWantsDeliveryStatus:v59];

  [v54 removeObjectForKey:v58];
  v60 = IDSCertifiedDeliveryVersionKey;
  v61 = [v54 objectForKey:IDSCertifiedDeliveryVersionKey];
  v62 = [v61 integerValue];

  if (v62 >= 1)
  {
    [(IDSPeerAccessoryMessage *)v51 setWantsCertifiedDelivery:1];
    [v54 removeObjectForKey:v60];
  }

  if (a12)
  {
    v56 = v47;
    if (v100)
    {
      [v100 integerValue];
      if (_IDSIsValidPushPriority())
      {
        [(IDSPeerMessage *)v51 setPriority:v100];
      }
    }
  }

  else
  {
    v63 = [NSNumber numberWithInt:5];
    [(IDSPeerMessage *)v51 setPriority:v63];

    v56 = v47;
  }

  [(IDSPeerMessage *)v51 setAdditionalDictionary:v54];
  [(IDSPeerMessage *)v51 setSourcePeerID:v116];
  [(IDSPeerMessage *)v51 setSourceShortHandle:v111];
  [(IDSPeerMessage *)v51 setTargetPeerID:v56];
  if (v109)
  {
    [(IDSPeerMessage *)v51 setMessageID:?];
  }

  else
  {
    v64 = +[NSString stringGUID];
    [(IDSPeerMessage *)v51 setMessageID:v64];

    v56 = v47;
  }

  [(IDSPeerMessage *)v51 setFireAndForget:a13];
  [(IDSPeerAccessoryMessage *)v51 setIgnoreMaxRetryCount:a30];
  [(IDSPeerAccessoryMessage *)v51 setOriginalTimestamp:v102];
  [(IDSPeerMessage *)v51 setDeliveryMinimumTimeDelay:v103];
  [(IDSPeerMessage *)v51 setDeliveryMinimumTime:v104];
  [(IDSPeerMessage *)v51 setSendMode:v105];
  [(IDSPeerAccessoryMessage *)v51 setSendReasonContainer:v106];
  [(IDSPeerMessage *)v51 setSendMetric:v107];
  if (v56)
  {
    v65 = [v56 _stripPotentialTokenURIWithToken:0];
    v56 = v65;
    v66 = 0;
    if (v116 && v65)
    {
      v66 = [v116 isEqualToIgnoringCase:v65];
    }
  }

  else
  {
    v66 = 0;
  }

  if ([v48 count] <= 1)
  {
    v67 = [v48 lastObject];
    v68 = [v67 tokenFreeURI];
    v69 = [v68 prefixedURI];
    v66 |= [v69 isEqualToIgnoringCase:v116];
  }

  [(IDSPeerAccessoryMessage *)v51 setWantsResponse:v99];
  [(IDSPeerAccessoryMessage *)v51 setTopic:v113];
  if (v112)
  {
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_1004C24A0;
    v117[3] = &unk_100BDE3F8;
    v118 = v112;
    [(IDSPeerAccessoryMessage *)v51 setDeliveryAcknowledgementBlock:v117];
  }

  if (v114)
  {
    [v114 timeIntervalSinceNow];
    v71 = v70;
    if (v70 > 2.22044605e-16)
    {
      [(IDSPeerAccessoryMessage *)v51 setTimeout:v70];
      v72 = [NSString stringWithFormat:@"service-max-timeout-%@", v115];
      if (v72)
      {
        v73 = [IDSServerBag sharedInstanceForBagType:1];
        v74 = [v73 objectForKey:v72];
      }

      else
      {
        v74 = 0;
      }

      if ([(__CFString *)v74 unsignedIntegerValue])
      {
        v75 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v120 = v115;
          v121 = 2112;
          v122 = v74;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Server has overridden service maximum timeout: %@, capping message timeout with %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v82 = v115;
          v83 = v74;
          _IDSLogV();
        }

        v76 = [(__CFString *)v74 unsignedIntegerValue:v82];
        if (v71 < v76)
        {
          v76 = v71;
        }

        [(IDSPeerAccessoryMessage *)v51 setTimeout:v76];
      }
    }

    if (v71 < IDSMaxMessageTimeout + -60.0 && a15)
    {
      [(IDSPeerMessage *)v51 setExpirationDate:v114];
    }
  }

  if (!v48)
  {
    v77 = [IDSURI URIWithPrefixedURI:v47];
    v48 = IMSingleObjectArray();
  }

  v78 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v79 = @"NO";
    *buf = 138414082;
    v120 = v51;
    if (v99)
    {
      v80 = @"YES";
    }

    else
    {
      v80 = @"NO";
    }

    v122 = v80;
    v121 = 2112;
    if (v66)
    {
      v79 = @"YES";
    }

    v123 = 2112;
    v124 = v114;
    v125 = 2112;
    v126 = v116;
    v127 = 2112;
    v128 = v47;
    v129 = 2112;
    v130 = v48;
    v131 = 2112;
    v132 = v113;
    v133 = 2112;
    v134 = v79;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Sending messageDictionary: {suppressed} peerMessage %@  wantsResponse %@ timeout %@ fromID: %@ toID %@ toPeople %@ topic %@ toMyself: %@", buf, 0x52u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (v66)
    {
      v81 = @"YES";
    }

    else
    {
      v81 = @"NO";
    }

    v86 = v81;
    v85 = v48;
    v84 = v116;
    _IDSLogEventV();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(IDSDeliveryController *)self _handleAccessoryMessageForID:v48 msg:v51 service:v115 fromID:v116 fromIdentity:v101 completionBlock:v50];
  }

  else
  {
    LOBYTE(v88) = 0;
    LOBYTE(v87) = a34;
    LOBYTE(v86) = a31;
    *(&v85 + 1) = __PAIR16__(a27, a26);
    LOBYTE(v85) = a25;
    *(&v84 + 1) = __PAIR16__(a11, a10);
    LOBYTE(v84) = a9;
    [IDSDeliveryController _sendMessage:"_sendMessage:dataToEncrypt:withEncryptedAttributes:onService:fromID:fromShortHandle:fromIdentity:toID:toURIs:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:firstAttemptDate:ktURIVerificationMap:fromCoalesceQueue:withQueryCompletion:" dataToEncrypt:v51 withEncryptedAttributes:v92 onService:v93 fromID:v115 fromShortHandle:v116 fromIdentity:v111 toID:v101 toURIs:v47 canUseLargePayload:v48 sendOnePerToken:v84 allowPartialSendsToSucceed:v94 registrationProperties:v85 fakeMessage:a28 alwaysSkipSelf:v86 alwaysIncludeSelf:v95 forceQuery:v87 disallowRefresh:v96 prioritizedTokenList:v98 wantsFirewallDonation:v50 destinationObject:0 willSendBlock:v97 completionBlock:v88 firstAttemptDate:&stru_100BDE418 ktURIVerificationMap:? fromCoalesceQueue:? withQueryCompletion:?];
  }

LABEL_64:
}

- (void)_sendErrorDictionary:(id)a3 onService:(id)a4 fromID:(id)a5 fromIdentity:(id)a6 toID:(id)a7 toToken:(id)a8 topic:(id)a9 sendCompletionBlock:(id)a10
{
  v38 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v40 = v38;
    v41 = 2112;
    v42 = v16;
    v43 = 2112;
    v44 = v17;
    v45 = 2112;
    v46 = v18;
    v47 = 2112;
    v48 = v19;
    v49 = 2112;
    v50 = v20;
    v51 = 2112;
    v52 = v21;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_sendErrorMessage %@ onService %@ fromID %@ fromIdentity %@ toID %@ toToken %@ topic %@", buf, 0x48u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = v20;
    v34 = v21;
    v31 = v18;
    v32 = v19;
    v28 = v16;
    v29 = v17;
    v26 = v38;
    _IDSLogV();
  }

  v24 = [(IDSDeliveryController *)self _tokenURIForToken:v20 uri:v19, v26, v28, v29, v31, v32, v33, v34];
  v25 = IMSingleObjectArray();
  LOBYTE(v37) = 0;
  LOWORD(v36) = 0;
  BYTE2(v35) = 0;
  LOWORD(v35) = 0;
  LOBYTE(v30) = 0;
  LODWORD(v27) = 0x10000;
  [IDSDeliveryController _sendMessageDictionary:"_sendMessageDictionary:lastRetryInterval:dataToEncrypt:withEncryptedAttributes:onService:wantsResponse:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:highPriority:fireAndForget:expirationDate:enforceRemoteTimeouts:messageID:fromID:fromShortHandle:fromIdentity:toID:toURIs:accessToken:topic:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:pushPriority:ignoreMaxRetryCount:disallowRefresh:originalTimestamp:prioritizedTokenList:wantsFirewallDonation:destinationObject:deliveryMinimumTimeDelay:deliveryMinimumTime:sendMode:KTURIVerificationMap:sendReasonContainer:sendMetric:ackBlock:willSendBlock:sendCompletionBlock:" lastRetryInterval:v38 dataToEncrypt:0 withEncryptedAttributes:0 onService:v16 wantsResponse:1 canUseLargePayload:0 sendOnePerToken:0.0 allowPartialSendsToSucceed:v27 highPriority:0 fireAndForget:v30 expirationDate:0 enforceRemoteTimeouts:v17 messageID:0 fromID:v18 fromShortHandle:v19 fromIdentity:v25 toID:0 toURIs:v21 accessToken:0 topic:v35 registrationProperties:0 fakeMessage:0 alwaysSkipSelf:v36 alwaysIncludeSelf:0 forceQuery:0 pushPriority:v37 ignoreMaxRetryCount:0 disallowRefresh:0 originalTimestamp:0 prioritizedTokenList:0 wantsFirewallDonation:0 destinationObject:0 deliveryMinimumTimeDelay:0 deliveryMinimumTime:0 sendMode:0 KTURIVerificationMap:v22 sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];
}

- (void)sendMessageDictionary:(id)a3 messageID:(id)a4 dataToEncrypt:(id)a5 withEncryptedAttributes:(id)a6 onService:(id)a7 wantsResponse:(BOOL)a8 expirationDate:(id)a9 enforceRemoteTimeouts:(BOOL)a10 canUseLargePayload:(BOOL)a11 sendOnePerToken:(BOOL)a12 allowPartialSendsToSucceed:(BOOL)a13 priority:(int64_t)a14 fireAndForget:(BOOL)a15 fromID:(id)a16 fromShortHandle:(id)a17 fromIdentity:(id)a18 toURIs:(id)a19 accessToken:(id)a20 topic:(id)a21 registrationProperties:(id)a22 fakeMessage:(BOOL)a23 alwaysSkipSelf:(BOOL)a24 alwaysIncludeSelf:(BOOL)a25 forceQuery:(int64_t)a26 pushPriority:(id)a27 ignoreMaxRetryCount:(BOOL)a28 disallowRefresh:(BOOL)a29 originalTimestamp:(id)a30 prioritizedTokenList:(id)a31 wantsFirewallDonation:(BOOL)a32 destinationObject:(id)a33 deliveryMinimumTimeDelay:(id)a34 deliveryMinimumTime:(id)a35 sendMode:(id)a36 KTURIVerificationMap:(id)a37 sendReasonContainer:(id)a38 sendMetric:(id)a39 ackBlock:(id)a40 willSendBlock:(id)a41 sendCompletionBlock:(id)a42
{
  v61 = a8;
  v55 = a42;
  v42 = a41;
  v43 = a40;
  v44 = a39;
  v45 = a38;
  v58 = a37;
  v46 = a36;
  v47 = a35;
  v48 = a34;
  v57 = a33;
  v56 = a31;
  v80 = a30;
  v54 = a27;
  v79 = a22;
  v78 = a21;
  v77 = a20;
  v76 = a19;
  v75 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a9;
  v71 = a7;
  v69 = a6;
  v67 = a5;
  v65 = a4;
  v63 = a3;
  im_assert_primary_base_queue();
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1004C2BC8;
  v81[3] = &unk_100BDB638;
  v82 = v55;
  v59 = v55;
  LOBYTE(v53) = a32;
  LOWORD(v52) = __PAIR16__(a29, a28);
  *(&v51 + 1) = __PAIR16__(a25, a24);
  LOBYTE(v51) = a23;
  LOBYTE(v50) = a10;
  BYTE3(v49) = a15;
  BYTE2(v49) = a14 == 300;
  LOWORD(v49) = __PAIR16__(a13, a12);
  [IDSDeliveryController _sendMessageDictionary:"_sendMessageDictionary:lastRetryInterval:dataToEncrypt:withEncryptedAttributes:onService:wantsResponse:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:highPriority:fireAndForget:expirationDate:enforceRemoteTimeouts:messageID:fromID:fromShortHandle:fromIdentity:toID:toURIs:accessToken:topic:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:pushPriority:ignoreMaxRetryCount:disallowRefresh:originalTimestamp:prioritizedTokenList:wantsFirewallDonation:destinationObject:deliveryMinimumTimeDelay:deliveryMinimumTime:sendMode:KTURIVerificationMap:sendReasonContainer:sendMetric:ackBlock:willSendBlock:sendCompletionBlock:" lastRetryInterval:v63 dataToEncrypt:v67 withEncryptedAttributes:v69 onService:v71 wantsResponse:v61 canUseLargePayload:a11 sendOnePerToken:0.0 allowPartialSendsToSucceed:v49 highPriority:v72 fireAndForget:v50 expirationDate:v65 enforceRemoteTimeouts:v73 messageID:v74 fromID:v75 fromShortHandle:0 fromIdentity:v76 toID:v77 toURIs:v78 accessToken:v79 topic:v51 registrationProperties:a26 fakeMessage:v54 alwaysSkipSelf:v52 alwaysIncludeSelf:v80 forceQuery:v56 pushPriority:v53 ignoreMaxRetryCount:v57 disallowRefresh:v48 originalTimestamp:v47 prioritizedTokenList:v46 wantsFirewallDonation:v58 destinationObject:v45 deliveryMinimumTimeDelay:v44 deliveryMinimumTime:v43 sendMode:v42 KTURIVerificationMap:v81 sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];
}

- (void)_pipelinesHandleMessagesToCoalesce:(id)a3 forService:(id)a4 sendMode:(id)a5
{
  v7 = a3;
  v41 = a4;
  v32 = a5;
  v42 = objc_alloc_init(NSMutableArray);
  v39 = objc_alloc_init(NSMutableDictionary);
  v31 = _os_activity_create(&_mh_execute_header, "All sends complete", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v38 = objc_alloc_init(NSMutableDictionary);
  v37 = objc_alloc_init(NSMutableDictionary);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v36 = *v55;
    v10 = IDSDeliveryMessageKey;
    v35 = IDSDeliveryCompletionBlockKey;
    v34 = IDSDeliveryFinalURIsKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        v13 = objc_alloc_init(CUTUnsafePromiseSeal);
        v14 = [v12 objectForKey:v10];
        v15 = [v14 messageID];

        v16 = [v12 objectForKey:v10];
        v17 = [v16 deliveryAcknowledgementBlock];

        v18 = [v12 objectForKey:v35];
        v19 = objc_retainBlock(v17);
        [v38 setObject:v19 forKey:v15];

        v20 = objc_retainBlock(v18);
        [v37 setObject:v20 forKey:v15];

        v21 = [v12 objectForKey:v34];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1004C3014;
        v51[3] = &unk_100BDE440;
        v52 = v39;
        v53 = v13;
        v22 = v13;
        [(IDSDeliveryController *)self _pipelineHandleMessage:v12 forURIs:v21 service:v41 withCompletion:v51];

        v23 = [v22 promise];
        [v42 addObject:v23];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v9);
  }

  v24 = [CUTUnsafePromise all:v42];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1004C313C;
  v43[3] = &unk_100BDE468;
  v44 = v41;
  v45 = self;
  v46 = v31;
  v47 = v39;
  v48 = v38;
  v49 = v37;
  v50 = v32;
  v25 = v32;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v31;
  v30 = v41;
  [v24 registerResultBlock:v43];
}

- (void)_pipelineHandleMessage:(id)a3 forURIs:(id)a4 service:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004C334C;
  v10[3] = &unk_100BDE490;
  v11 = a3;
  v12 = a5;
  v13 = self;
  v8 = v12;
  v9 = v11;
  [(IDSDeliveryController *)self _pipelineHandleMessage:v9 forURIs:a4 service:v8 withCompletion:v10];
}

- (void)_pipelineHandleMessage:(id)a3 forURIs:(id)a4 service:(id)a5 withCompletion:(id)a6
{
  v39 = a3;
  v10 = a4;
  v11 = a5;
  v37 = a6;
  v36 = +[NSDate date];
  v12 = [v39 objectForKey:IDSDeliveryCanUseLargePayloadKey];
  v13 = -[IDSDeliveryController effectiveMaxPayloadSizeIfCanUseLargePayload:](self, "effectiveMaxPayloadSizeIfCanUseLargePayload:", [v12 BOOLValue]);

  v40 = [[IDSDeliveryPipelineParameter alloc] initWithInfo:v39 uris:v10 service:v11 maxSize:v13];
  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(IDSDeliveryPipelineParameter *)v40 guid];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending guid %@ through delivery pipeline", &buf, 0xCu);
  }

  v16 = [(IDSDeliveryPipelineParameter *)v40 guid];
  v17 = [v16 copy];

  v18 = [(IDSDeliveryPipelineParameter *)v40 description];
  v50 = _NSConcreteStackBlock;
  v51 = 3221225472;
  v52 = sub_1004C3F80;
  v53 = &unk_100BD6E40;
  v19 = v17;
  v54 = v19;
  v34 = v18;
  v55 = v34;
  cut_dispatch_log_queue();
  v20 = objc_opt_class();
  v21 = [(IDSDeliveryPipelineParameter *)v40 messageToSend];
  v22 = [v21 messageBody];
  v23 = sub_10001B5D4(v20, v22, IDSCommandKey);

  LODWORD(v21) = [v23 integerValue] != 133;
  v24 = [[IDSServiceProperties alloc] initWithServiceIdentifier:v11];
  if (([v24 supportsOfflineDelivery] & v21) == 1)
  {
    [(IDSDeliveryController *)self _constructOfflineDeliveryPipeline];
  }

  else
  {
    [(IDSDeliveryController *)self _constructDeliveryPipeline];
  }
  v38 = ;
  if (_os_feature_enabled_impl() && IDSCommandIsGroupSessionCommand())
  {
    [v23 integerValue];
    kdebug_trace();
  }

  v25 = [v39 objectForKey:IDSDeliveryCompletionBlockKey];
  v26 = [v38 runWithInput:v40];
  v27 = v19;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_10000A9D4;
  v59 = sub_10000BC5C;
  v60 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1004C403C;
  v41[3] = &unk_100BDE4B8;
  v28 = v23;
  v42 = v28;
  v43 = self;
  v29 = v11;
  v44 = v29;
  v30 = v10;
  v45 = v30;
  v31 = v25;
  v47 = v31;
  p_buf = &buf;
  v32 = v36;
  v46 = v32;
  v33 = v37;
  v48 = v33;
  [v26 registerResultBlock:v41];

  _Block_object_dispose(&buf, 8);
}

- (id)_constructDeliveryPipeline
{
  v3 = [IDSMMCSUploader alloc];
  v4 = [(IDSDeliveryController *)self encryptionController];
  v5 = objc_alloc_init(IDSTransferServicesController);
  v6 = [(IDSMMCSUploader *)v3 initWithEncryptionController:v4 transferServicesController:v5];

  v7 = [IDSEndpointResolverComponent alloc];
  v8 = [(IDSDeliveryController *)self peerIDManager];
  v9 = [(IDSEndpointResolverComponent *)v7 initWithQueryCache:v8];

  v10 = objc_alloc_init(IDSMadridEndpointFilterComponent);
  v11 = [IDSKeyTransparencyEndpointFilterComponent alloc];
  v12 = +[IDSKeyTransparencyVerifier sharedInstance];
  v13 = [(IDSKeyTransparencyEndpointFilterComponent *)v11 initWithTransparencyVerifier:v12];

  v14 = [IDSEncryptionComponent alloc];
  v15 = [(IDSDeliveryController *)self encryptionController];
  v16 = [(IDSDeliveryController *)self pinnedIdentityController];
  v17 = [(IDSEncryptionComponent *)v14 initWithEncryptionController:v15 pinnedIdentityController:v16];

  v18 = [[IDSMessageFactoryComponent alloc] initWithMMCSUploader:v6];
  v19 = objc_alloc_init(IDSFanoutFactoryComponent);
  if ((_os_feature_enabled_impl() & 1) != 0 || +[IMUserDefaults isFirewallEnabled])
  {
    v20 = [IDSFirewallEndpointDonationComponent alloc];
    v21 = +[IDSDServiceController sharedInstance];
    v22 = +[IDSFirewallStore sharedInstance];
    v23 = [(IDSFirewallEndpointDonationComponent *)v20 initWithServiceController:v21 firewallStore:v22];

    v28[0] = v9;
    v28[1] = v10;
    v28[2] = v13;
    v28[3] = v23;
    v28[4] = v17;
    v28[5] = v18;
    v28[6] = v19;
    v24 = [NSArray arrayWithObjects:v28 count:7];
  }

  else
  {
    v27[0] = v9;
    v27[1] = v10;
    v27[2] = v13;
    v27[3] = v17;
    v27[4] = v18;
    v27[5] = v19;
    v24 = [NSArray arrayWithObjects:v27 count:6];
  }

  v25 = [IDSPipelineComponent pipelineFromComponents:v24];

  return v25;
}

- (id)_constructOfflineDeliveryPipeline
{
  v3 = [IDSEndpointResolverComponent alloc];
  v4 = [(IDSDeliveryController *)self peerIDManager];
  v5 = [(IDSEndpointResolverComponent *)v3 initWithQueryCache:v4];

  v6 = objc_alloc_init(IDSMadridEndpointFilterComponent);
  v7 = [IDSIMLEncryptionComponent alloc];
  v8 = [(IDSDeliveryController *)self encryptionController];
  v9 = [(IDSIMLEncryptionComponent *)v7 initWithEncryptionController:v8];

  v10 = objc_alloc_init(IDSIMLMessageFactoryComponent);
  v11 = objc_alloc_init(IDSIMLFanoutFactoryComponent);
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:5];
  v13 = [IDSPipelineComponent pipelineFromComponents:v12];

  return v13;
}

- (void)sendRTCMetricWithStartDate:(id)a3 endDate:(id)a4 endpointCount:(int64_t)a5 usedPipeline:(BOOL)a6 usedMMCS:(BOOL)a7 responseCode:(int64_t)a8
{
  v9 = a7;
  v10 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[IDSDeliveryControllerTimeMetric alloc] initWithStartDate:v14 endDate:v13 endpointCount:a5 usedPipeline:v10 usedMMCS:v9 responseCode:a8];

  v16 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [v15 timeToSend];
    v18 = v17;
    v19 = [v15 endpointCount];
    if ([v15 usedPipeline])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v23 = 134219010;
    if ([v15 usedMMCS])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v24 = v18;
    v25 = 2048;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    v31 = 2048;
    v32 = a8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Submitting metric { sendTime: %.4f, endpointCount: %ld, pipeline: %@, mmcs: %@ responseCode: %ld }", &v23, 0x34u);
  }

  v22 = [IDSRTCLogger loggerWithCategory:2000];
  [v22 logMetric:v15];
}

- (void)queueManager:(id)a3 receivedMessagesToSend:(id)a4 forTopic:(id)a5 sendMode:(id)a6
{
  v8 = a4;
  v9 = a5;
  v30 = a6;
  v10 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v97 = v9;
    v98 = 2048;
    v99 = [v8 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDeliveryController received messages to coalesce for topic %@ count %lu", buf, 0x16u);
  }

  v31 = v9;

  v56 = objc_alloc_init(NSMutableArray);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v8;
  v58 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v58)
  {
    v55 = *v92;
    v54 = IDSDeliveryMessageKey;
    v53 = IDSDeliveryDataToEncryptKey;
    v52 = IDSDeliveryEncryptionAttributesKey;
    v51 = IDSDeliveryServiceKey;
    v50 = IDSDeliveryFromIDKey;
    v49 = IDSDeliveryFromShortHandle;
    v48 = IDSDeliveryFromIdentityKey;
    v47 = IDSDeliveryToIDKey;
    v46 = IDSDeliveryOriginalURIsKey;
    v45 = IDSDeliveryCanUseLargePayloadKey;
    v44 = IDSDeliverySendOnePerTokenKey;
    v43 = IDSDeliveryRegistrationPropertiesKey;
    v42 = IDSDeliveryFakeMessageKey;
    v41 = IDSDeliveryAlwaysSkipSelfKey;
    v40 = IDSDeliveryAlwaysIncludeSelfKey;
    v39 = IDSDeliveryForceQueryKey;
    v38 = IDSDeliveryDisallowQueryRefreshKey;
    v37 = IDSDeliveryPrioritizedTokenListKey;
    v36 = IDSDeliveryIDSDestinationKey;
    v35 = IDSDeliveryWillSendBlockKey;
    v34 = IDSDeliveryCompletionBlockKey;
    v33 = IDSDeliveryFromCoalesceQueueKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v92 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v91 + 1) + 8 * v11);
        v13 = objc_alloc_init(CUTUnsafePromiseSeal);
        v85 = [v12 objectForKey:v54];
        v84 = [v12 objectForKey:v53];
        v83 = [v12 objectForKey:v52];
        v78 = [v12 objectForKey:v51];
        v77 = [v12 objectForKey:v50];
        v75 = [v12 objectForKey:v49];
        v82 = [v12 objectForKey:v48];
        v59 = [v12 objectForKey:v47];
        v73 = [v12 objectForKey:v46];
        v81 = v11;
        v80 = [v12 objectForKey:v45];
        v72 = [v80 BOOLValue];
        v79 = [v12 objectForKey:v44];
        v70 = [v79 BOOLValue];
        v76 = [v12 objectForKey:v45];
        v68 = [v76 BOOLValue];
        v65 = [v12 objectForKey:v43];
        v74 = [v12 objectForKey:v42];
        v64 = [v74 BOOLValue];
        v71 = [v12 objectForKey:v41];
        v62 = [v71 BOOLValue];
        v69 = [v12 objectForKey:v40];
        v61 = [v69 BOOLValue];
        v66 = [v12 objectForKey:v39];
        v60 = [v66 integerValue];
        v63 = [v12 objectForKey:v38];
        v14 = [v63 BOOLValue];
        v15 = [v12 objectForKey:v37];
        v16 = [v12 objectForKey:v36];
        v17 = [v12 objectForKey:v35];
        v18 = [v12 objectForKey:v34];
        v19 = [v12 objectForKey:v33];
        v20 = [v19 BOOLValue];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_1004C53D0;
        v89[3] = &unk_100BDE4E0;
        v90 = v13;
        v67 = v13;
        LOBYTE(v29) = v20;
        LOBYTE(v28) = 0;
        LOBYTE(v27) = v14;
        BYTE2(v26) = v61;
        BYTE1(v26) = v62;
        LOBYTE(v26) = v64;
        BYTE2(v25) = v68;
        BYTE1(v25) = v70;
        LOBYTE(v25) = v72;
        [IDSDeliveryController _sendMessage:"_sendMessage:dataToEncrypt:withEncryptedAttributes:onService:fromID:fromShortHandle:fromIdentity:toID:toURIs:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:firstAttemptDate:ktURIVerificationMap:fromCoalesceQueue:withQueryCompletion:" dataToEncrypt:v85 withEncryptedAttributes:v84 onService:v83 fromID:v78 fromShortHandle:v77 fromIdentity:v75 toID:v82 toURIs:v59 canUseLargePayload:v73 sendOnePerToken:v25 allowPartialSendsToSucceed:v65 registrationProperties:v26 fakeMessage:v60 alwaysSkipSelf:v27 alwaysIncludeSelf:v15 forceQuery:v28 disallowRefresh:v16 prioritizedTokenList:v17 wantsFirewallDonation:v18 destinationObject:0 willSendBlock:0 completionBlock:v29 firstAttemptDate:v89 ktURIVerificationMap:? fromCoalesceQueue:? withQueryCompletion:?];

        v21 = [v67 promise];
        [v56 addObject:v21];

        v11 = v81 + 1;
      }

      while (v58 != (v81 + 1));
      v58 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v58);
  }

  v22 = [CUTUnsafePromise all:v56];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_1004C53DC;
  v86[3] = &unk_100BDD188;
  v86[4] = self;
  v87 = v31;
  v88 = v30;
  v23 = v30;
  v24 = v31;
  [v22 registerResultBlock:v86];
}

@end