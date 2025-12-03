@interface IDSDeliveryController
+ (id)sharedInstance;
+ (id)tokenURINegativeCacheItemForTokenURI:(id)i service:(id)service;
- (BOOL)_sendAsAttachmentForMessage:(id)message payloadData:(id)data;
- (IDSDeliveryController)init;
- (id)_constructDeliveryPipeline;
- (id)_constructOfflineDeliveryPipeline;
- (id)_keyForURIs:(id)is service:(id)service;
- (id)_stringFromQueryReasonExtensionSet:(id)set;
- (id)_tokenURIForToken:(id)token uri:(id)uri;
- (int64_t)_maxPayloadSizeForMessage:(id)message;
- (int64_t)effectiveMaxPayloadSizeIfCanUseLargePayload:(BOOL)payload;
- (int64_t)groupCryptoMinVersionNumber;
- (unint64_t)_destinationCountForURIsAndTokens:(id)tokens;
- (void)_checkFastDormancy;
- (void)_discardMessage:(id)message forURIs:(id)is service:(id)service;
- (void)_emptyMessagesForURIs:(id)is service:(id)service;
- (void)_handleAccessoryMessageForID:(id)d msg:(id)msg service:(id)service fromID:(id)iD fromIdentity:(id)identity completionBlock:(id)block;
- (void)_handleMessagesForURIs:(id)is originalURIs:(id)rIs service:(id)service fromID:(id)d fromCoalesceQueue:(BOOL)queue withQueryCompletion:(id)completion;
- (void)_pipelineHandleMessage:(id)message forURIs:(id)is service:(id)service;
- (void)_pipelineHandleMessage:(id)message forURIs:(id)is service:(id)service withCompletion:(id)completion;
- (void)_pipelinesHandleMessagesToCoalesce:(id)coalesce forService:(id)service sendMode:(id)mode;
- (void)_processMessageResponse:(id)response error:(id)error resultCode:(int64_t)code toURI:(id)i fromURI:(id)rI service:(id)service fromIdentity:(id)identity;
- (void)_queueMessage:(id)message service:(id)service dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes fromID:(id)d fromShortHandle:(id)handle fromIdentity:(id)identity toID:(id)self0 toURIs:(id)self1 originallyToURIs:(id)self2 ktURIVerificationMap:(id)self3 canUseLargePayload:(BOOL)self4 sendOnePerToken:(BOOL)self5 registrationProperties:(id)self6 fakeMessage:(BOOL)self7 alwaysSkipSelf:(BOOL)self8 alwaysIncludeSelf:(BOOL)self9 forceQuery:(int64_t)query disallowRefresh:(BOOL)refresh prioritizedTokenList:(id)list wantsFirewallDonation:(BOOL)donation destinationObject:(id)object willSendBlock:(id)block completionBlock:(id)completionBlock fromCoalesceQueue:(BOOL)queue;
- (void)_sendAttachmentWithGuid:(id)guid service:(id)service topic:(id)topic originalCommand:(id)command additionalDictionary:(id)dictionary encryptedData:(id)data toToken:(id)token toID:(id)self0 fromID:(id)self1 fromIdentity:(id)self2 canUseLargePayload:(BOOL)self3 expirationDate:(id)self4 destinationObject:(id)self5 ackBlock:(id)self6 completionBlock:(id)self7;
- (void)_sendErrorDictionary:(id)dictionary onService:(id)service fromID:(id)d fromIdentity:(id)identity toID:(id)iD toToken:(id)token topic:(id)topic sendCompletionBlock:(id)self0;
- (void)_sendFTFanoutMessage:(id)message service:(id)service fromID:(id)d toURIs:(id)is fromIdentity:(id)identity completionBlock:(id)block;
- (void)_sendFTMessage:(id)message service:(id)service fromID:(id)d toID:(id)iD toToken:(id)token toSessionToken:(id)sessionToken toURIs:(id)is fromIdentity:(id)self0 completionBlock:(id)self1;
- (void)_sendMessage:(id)message dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes onService:(id)service fromID:(id)d fromShortHandle:(id)handle fromIdentity:(id)identity toID:(id)self0 toURIs:(id)self1 canUseLargePayload:(BOOL)self2 sendOnePerToken:(BOOL)self3 allowPartialSendsToSucceed:(BOOL)self4 registrationProperties:(id)self5 fakeMessage:(BOOL)self6 alwaysSkipSelf:(BOOL)self7 alwaysIncludeSelf:(BOOL)self8 forceQuery:(int64_t)self9 disallowRefresh:(BOOL)refresh prioritizedTokenList:(id)list wantsFirewallDonation:(BOOL)donation destinationObject:(id)object willSendBlock:(id)block completionBlock:(id)completionBlock firstAttemptDate:(id)date ktURIVerificationMap:(id)map fromCoalesceQueue:(BOOL)queue withQueryCompletion:(id)completion;
- (void)_sendMessageDictionary:(id)dictionary lastRetryInterval:(double)interval dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes onService:(id)service wantsResponse:(BOOL)response canUseLargePayload:(BOOL)payload sendOnePerToken:(BOOL)self0 allowPartialSendsToSucceed:(BOOL)self1 highPriority:(BOOL)self2 fireAndForget:(BOOL)self3 expirationDate:(id)self4 enforceRemoteTimeouts:(BOOL)self5 messageID:(id)self6 fromID:(id)self7 fromShortHandle:(id)self8 fromIdentity:(id)self9 toID:(id)toID toURIs:(id)is accessToken:(id)accessToken topic:(id)topic registrationProperties:(id)properties fakeMessage:(BOOL)message alwaysSkipSelf:(BOOL)self alwaysIncludeSelf:(BOOL)includeSelf forceQuery:(int64_t)query pushPriority:(id)pushPriority ignoreMaxRetryCount:(BOOL)dictionary0 disallowRefresh:(BOOL)dictionary1 originalTimestamp:(id)dictionary2 prioritizedTokenList:(id)dictionary3 wantsFirewallDonation:(BOOL)dictionary4 destinationObject:(id)dictionary5 deliveryMinimumTimeDelay:(id)dictionary6 deliveryMinimumTime:(id)dictionary7 sendMode:(id)dictionary8 KTURIVerificationMap:(id)dictionary9 sendReasonContainer:(id)interval0 sendMetric:(id)interval1 ackBlock:(id)interval2 willSendBlock:(id)interval3 sendCompletionBlock:(id)interval4;
- (void)addTokenURINegativeCacheClearBlock;
- (void)dealloc;
- (void)handler:(id)handler isConnectedChanged:(BOOL)changed;
- (void)queueManager:(id)manager receivedMessagesToSend:(id)send forTopic:(id)topic sendMode:(id)mode;
- (void)sendIDSMessage:(id)message service:(id)service topic:(id)topic completionBlock:(id)block;
- (void)sendMessageDictionary:(id)dictionary messageID:(id)d dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes onService:(id)service wantsResponse:(BOOL)response expirationDate:(id)date enforceRemoteTimeouts:(BOOL)self0 canUseLargePayload:(BOOL)self1 sendOnePerToken:(BOOL)self2 allowPartialSendsToSucceed:(BOOL)self3 priority:(int64_t)self4 fireAndForget:(BOOL)self5 fromID:(id)self6 fromShortHandle:(id)self7 fromIdentity:(id)self8 toURIs:(id)self9 accessToken:(id)accessToken topic:(id)topic registrationProperties:(id)properties fakeMessage:(BOOL)message alwaysSkipSelf:(BOOL)self alwaysIncludeSelf:(BOOL)includeSelf forceQuery:(int64_t)query pushPriority:(id)pushPriority ignoreMaxRetryCount:(BOOL)count disallowRefresh:(BOOL)refresh originalTimestamp:(id)dictionary0 prioritizedTokenList:(id)dictionary1 wantsFirewallDonation:(BOOL)dictionary2 destinationObject:(id)dictionary3 deliveryMinimumTimeDelay:(id)dictionary4 deliveryMinimumTime:(id)dictionary5 sendMode:(id)dictionary6 KTURIVerificationMap:(id)dictionary7 sendReasonContainer:(id)dictionary8 sendMetric:(id)dictionary9 ackBlock:(id)d0 willSendBlock:(id)d1 sendCompletionBlock:(id)d2;
- (void)sendRTCMetricWithStartDate:(id)date endDate:(id)endDate endpointCount:(int64_t)count usedPipeline:(BOOL)pipeline usedMMCS:(BOOL)s responseCode:(int64_t)code;
- (void)setSenderKeyDistributionManager:(id)manager;
- (void)setServerRateLimitConfiguration:(id)configuration;
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

- (void)setSenderKeyDistributionManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_senderKeyDistributionManager, manager);
    managerCopy = v6;
  }
}

- (void)setServerRateLimitConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_serverRateLimitConfiguration, configuration);
    configurationCopy = v6;
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
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)addTokenURINegativeCacheClearBlock
{
  objc_initWeak(&location, self);
  peerIDManager = [(IDSDeliveryController *)self peerIDManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004B864C;
  v4[3] = &unk_100BDE1F8;
  objc_copyWeak(&v5, &location);
  [peerIDManager addClientDataUpdateBlock:v4 forToken:@"ratelimiter-clear-on-success"];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (id)tokenURINegativeCacheItemForTokenURI:(id)i service:(id)service
{
  serviceCopy = 0;
  if (i && service)
  {
    serviceCopy = service;
    prefixedURI = [i prefixedURI];
    serviceCopy = [NSString stringWithFormat:@"%@-%@", prefixedURI, serviceCopy];
  }

  return serviceCopy;
}

- (void)handler:(id)handler isConnectedChanged:(BOOL)changed
{
  changedCopy = changed;
  handlerCopy = handler;
  if (changedCopy && [(NSMutableArray *)self->_pendingOfflineMessages count])
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

- (int64_t)effectiveMaxPayloadSizeIfCanUseLargePayload:(BOOL)payload
{
  payloadCopy = payload;
  maxLargeMessageSize = [(FTMessageDelivery *)self->_messageDelivery maxLargeMessageSize];
  v6 = maxLargeMessageSize & ~(maxLargeMessageSize >> 63);
  maxMessageSize = [(FTMessageDelivery *)self->_messageDelivery maxMessageSize];
  v8 = maxMessageSize & ~(maxMessageSize >> 63);
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

  if (!payloadCopy)
  {
    v11 = v8;
  }

  v12 = 0.6;
  if (payloadCopy)
  {
    v12 = 0.9;
  }

  v13 = (v12 * v11);
  if ((payloadCopy & v9) != 0)
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
    if (payloadCopy)
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

- (void)_processMessageResponse:(id)response error:(id)error resultCode:(int64_t)code toURI:(id)i fromURI:(id)rI service:(id)service fromIdentity:(id)identity
{
  responseCopy = response;
  errorCopy = error;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  identityCopy = identity;
  if (code == 7000)
  {
    v40 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = rICopy;
      v50 = 2112;
      v51 = iCopy;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Message was rate limited from the server, failing message (%@ -> %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  else if (code == 5032)
  {
    v43 = identityCopy;
    selfCopy = self;
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = responseCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bad signature for message: %@    blowing peer tokens", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      targetPeerID2 = responseCopy;
      _IDSLogV();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        targetPeerID = [responseCopy targetPeerID];
        *buf = 138412290;
        v49 = targetPeerID;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " targetPeerID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetPeerID2 = [responseCopy targetPeerID];
        _IDSLogV();
      }

      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sourcePeerID = [responseCopy sourcePeerID];
        *buf = 138412290;
        v49 = sourcePeerID;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " sourcePeerID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetPeerID2 = [responseCopy sourcePeerID];
        _IDSLogV();
      }

      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        targetToken = [responseCopy targetToken];
        *buf = 138412290;
        v49 = targetToken;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "  targetToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetPeerID2 = [responseCopy targetToken];
        _IDSLogV();
      }

      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        targetSessionToken = [responseCopy targetSessionToken];
        *buf = 138412290;
        v49 = targetSessionToken;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " sessionToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetPeerID2 = [responseCopy targetSessionToken];
        _IDSLogV();
      }

      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "      service: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetPeerID2 = serviceCopy;
        _IDSLogV();
      }

      peerIDManager = [(IDSDeliveryController *)self peerIDManager];
      targetPeerID3 = [responseCopy targetPeerID];
      v30 = [IDSURI URIWithPrefixedURI:targetPeerID3 withServiceLoggingHint:serviceCopy];
      targetToken2 = [responseCopy targetToken];
      v32 = [IDSPushToken pushTokenWithData:targetToken2 withServiceLoggingHint:serviceCopy];
      sourcePeerID2 = [responseCopy sourcePeerID];
      v34 = [IDSURI URIWithPrefixedURI:sourcePeerID2 withServiceLoggingHint:serviceCopy];
      LOBYTE(v42) = 0;
      v35 = [peerIDManager sessionTokenForURI:v30 pushToken:v32 fromURI:v34 service:serviceCopy expirationDate:0 refreshDate:0 fromIdentity:v43 includeSelfDevice:v42];

      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " current sessionToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetPeerID2 = v35;
        _IDSLogV();
      }
    }

    peerIDManager2 = [(IDSDeliveryController *)selfCopy peerIDManager];
    v38 = [IDSURI URIWithPrefixedURI:iCopy withServiceLoggingHint:serviceCopy];
    v39 = [IDSURI URIWithPrefixedURI:rICopy withServiceLoggingHint:serviceCopy];
    [peerIDManager2 forgetPeerTokensForURI:v38 fromURI:v39 service:serviceCopy reason:7];

    identityCopy = v43;
  }
}

- (id)_keyForURIs:(id)is service:(id)service
{
  serviceCopy = service;
  v6 = [NSMutableSet setWithArray:is];
  [v6 addObject:serviceCopy];

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

- (void)_handleAccessoryMessageForID:(id)d msg:(id)msg service:(id)service fromID:(id)iD fromIdentity:(id)identity completionBlock:(id)block
{
  dCopy = d;
  msgCopy = msg;
  serviceCopy = service;
  iDCopy = iD;
  identityCopy = identity;
  blockCopy = block;
  firstObject = [dCopy firstObject];
  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = firstObject;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Message is destined for an accessory with uri %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v28 = firstObject;
    _IDSLogV();
  }

  accessToken = [msgCopy accessToken];

  if (accessToken)
  {
    prefixedURI = [firstObject prefixedURI];
    v21 = [prefixedURI hasPrefix:@"accessory:"];

    if (v21)
    {
      unprefixedURI = [firstObject unprefixedURI];
    }

    else
    {
      prefixedURI2 = [firstObject prefixedURI];
      unprefixedURI = [prefixedURI2 copy];
    }

    [msgCopy setTargetPeerID:unprefixedURI];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1004B9CEC;
    v32[3] = &unk_100BDE220;
    v24 = msgCopy;
    v33 = v24;
    v25 = firstObject;
    v34 = v25;
    v35 = blockCopy;
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

    [(IDSDeliveryController *)self _sendFTMessage:v24 service:serviceCopy fromID:iDCopy toID:unprefixedURI toToken:0 toSessionToken:0 toURIs:0 fromIdentity:identityCopy completionBlock:v26];
  }
}

- (void)_handleMessagesForURIs:(id)is originalURIs:(id)rIs service:(id)service fromID:(id)d fromCoalesceQueue:(BOOL)queue withQueryCompletion:(id)completion
{
  queueCopy = queue;
  isCopy = is;
  rIsCopy = rIs;
  serviceCopy = service;
  dCopy = d;
  completionCopy = completion;
  value = isCopy;
  if ([isCopy count])
  {
    selfCopy = self;
    v35 = [(IDSDeliveryController *)self _keyForURIs:rIsCopy service:serviceCopy];
    v16 = [(NSMutableDictionary *)self->_messageQueue objectForKey:v35];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v50 = isCopy;
      v51 = 2112;
      v52 = rIsCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Handling message queue With Fanout for display IDs: %@  (originalURIs: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      allKeys2 = isCopy;
      v34 = rIsCopy;
      _IDSLogV();
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [(NSMutableDictionary *)self->_messageQueue allKeys];
      *buf = 138412290;
      v50 = allKeys;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "   Queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      allKeys2 = [(NSMutableDictionary *)self->_messageQueue allKeys];
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
          if (dCopy && ([*(*(&v44 + 1) + 8 * i) objectForKeyedSubscript:v22], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(dCopy, "isEqualToString:", v26), v26, (v27 & 1) == 0))
          {
            [v38 addObject:v25];
          }

          else if (queueCopy)
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
            [(IDSDeliveryController *)selfCopy _pipelineHandleMessage:v25 forURIs:value service:serviceCopy];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v20);
    }

    completionCopy[2](completionCopy, v39);
    if (obj)
    {
      if ([v38 count])
      {
        v30 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v50 = dCopy;
          v51 = 2112;
          v52 = v38;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " FromID didn't match some messages, keeping some messages in queue {fromID: %@, toKeep: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          allKeys2 = dCopy;
          v34 = v38;
          _IDSLogV();
        }

        [(NSMutableDictionary *)selfCopy->_messageQueue setObject:v38 forKey:v35, allKeys2, v34];
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

        [(NSMutableDictionary *)selfCopy->_messageQueue removeObjectForKey:v35, allKeys2];
        if (![(NSMutableDictionary *)selfCopy->_messageQueue count])
        {
          messageQueue = selfCopy->_messageQueue;
          selfCopy->_messageQueue = 0;
        }
      }
    }

    [(IDSDeliveryController *)selfCopy _checkFastDormancy];
  }
}

- (BOOL)_sendAsAttachmentForMessage:(id)message payloadData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v8 = [messageCopy objectForKey:IDSDeliveryMessageKey];
  messageBody = [v8 messageBody];
  v10 = [messageBody objectForKey:IDSCommandKey];
  v11 = [(IDSDeliveryController *)self _maxPayloadSizeForMessage:messageCopy];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v21) = [messageBody count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Checking the estimated payload size for message not requesting encryption... %d B", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = [messageBody count];
    _IDSLogV();
  }

  v13 = [(IDSDeliveryController *)self _forceAttachmentForMessage:messageCopy, v19];
  if (dataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [dataCopy length];
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

- (int64_t)_maxPayloadSizeForMessage:(id)message
{
  v4 = [message objectForKey:IDSDeliveryCanUseLargePayloadKey];
  bOOLValue = [v4 BOOLValue];

  return [(IDSDeliveryController *)self effectiveMaxPayloadSizeIfCanUseLargePayload:bOOLValue];
}

- (unint64_t)_destinationCountForURIsAndTokens:(id)tokens
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tokensCopy = tokens;
  v4 = 0;
  v5 = [tokensCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(tokensCopy);
        }

        v8 = [tokensCopy objectForKey:*(*(&v15 + 1) + 8 * v7)];
        v9 = [v8 objectForKey:@"push-tokens"];
        v10 = [v9 count];

        v4 += v10;
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [tokensCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
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

- (void)_emptyMessagesForURIs:(id)is service:(id)service
{
  isCopy = is;
  serviceCopy = service;
  if ([isCopy count])
  {
    messageQueue = self->_messageQueue;
    v9 = [(IDSDeliveryController *)self _keyForURIs:isCopy service:serviceCopy];
    v10 = [(NSMutableDictionary *)messageQueue objectForKey:v9];

    if (v10)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = isCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Emptying message queue for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = isCopy;
        _IDSLogV();
      }

      v12 = self->_messageQueue;
      v13 = [(IDSDeliveryController *)self _keyForURIs:isCopy service:serviceCopy, v16];
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
        v18 = isCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No queued items to remove for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = isCopy;
        _IDSLogV();
      }
    }

    [(IDSDeliveryController *)self _checkFastDormancy];
  }
}

- (void)_discardMessage:(id)message forURIs:(id)is service:(id)service
{
  messageCopy = message;
  isCopy = is;
  serviceCopy = service;
  if ([isCopy count])
  {
    messageQueue = self->_messageQueue;
    v12 = [(IDSDeliveryController *)self _keyForURIs:isCopy service:serviceCopy];
    v13 = [(NSMutableDictionary *)messageQueue objectForKey:v12];

    if (v13 && (v14 = [v13 indexOfObjectIdenticalTo:messageCopy], v14 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v16 = v14;
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = isCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing message from queue for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v21 = isCopy;
        _IDSLogV();
      }

      [v13 removeObjectAtIndex:{v16, v21}];
      if (![v13 count])
      {
        v18 = self->_messageQueue;
        v19 = [(IDSDeliveryController *)self _keyForURIs:isCopy service:serviceCopy];
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
        v23 = isCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No queued message matched for removal for URIs: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v21 = isCopy;
        _IDSLogV();
      }
    }

    [(IDSDeliveryController *)self _checkFastDormancy];
  }
}

- (void)_queueMessage:(id)message service:(id)service dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes fromID:(id)d fromShortHandle:(id)handle fromIdentity:(id)identity toID:(id)self0 toURIs:(id)self1 originallyToURIs:(id)self2 ktURIVerificationMap:(id)self3 canUseLargePayload:(BOOL)self4 sendOnePerToken:(BOOL)self5 registrationProperties:(id)self6 fakeMessage:(BOOL)self7 alwaysSkipSelf:(BOOL)self8 alwaysIncludeSelf:(BOOL)self9 forceQuery:(int64_t)query disallowRefresh:(BOOL)refresh prioritizedTokenList:(id)list wantsFirewallDonation:(BOOL)donation destinationObject:(id)object willSendBlock:(id)block completionBlock:(id)completionBlock fromCoalesceQueue:(BOOL)queue
{
  messageCopy = message;
  serviceCopy = service;
  value = encrypt;
  attributesCopy = attributes;
  dCopy = d;
  handleCopy = handle;
  v34 = serviceCopy;
  identityCopy = identity;
  iDCopy = iD;
  isCopy = is;
  rIsCopy = rIs;
  mapCopy = map;
  propertiesCopy = properties;
  listCopy = list;
  objectCopy = object;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v38 = [isCopy count];
  if (messageCopy && v38)
  {
    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v84 = messageCopy;
      v85 = 2112;
      v86 = isCopy;
      v87 = 2112;
      v88 = v34;
      v89 = 2112;
      v90 = rIsCopy;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Enqueuing message: %@  to people: %@ service: %@ (original: %@)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v67 = v34;
      v68 = rIsCopy;
      v65 = messageCopy;
      v66 = isCopy;
      _IDSLogV();
    }

    if ([rIsCopy count])
    {
      v40 = rIsCopy;
    }

    else
    {
      v40 = isCopy;
    }

    v41 = v40;
    messageQueue = self->_messageQueue;
    v69 = v41;
    v43 = [IDSDeliveryController _keyForURIs:"_keyForURIs:service:" service:?];
    v44 = [(NSMutableDictionary *)messageQueue objectForKey:v43];

    if (!v44)
    {
      v44 = objc_alloc_init(NSMutableArray);
      selfCopy2 = self;
      v46 = self->_messageQueue;
      if (!v46)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v48 = self->_messageQueue;
        self->_messageQueue = Mutable;

        v46 = self->_messageQueue;
        selfCopy2 = self;
      }

      v49 = [(IDSDeliveryController *)selfCopy2 _keyForURIs:v69 service:v34];
      [(NSMutableDictionary *)v46 setObject:v44 forKey:v49];
    }

    if (completionBlockCopy)
    {
      v50 = [completionBlockCopy copy];
      v51 = objc_retainBlock(v50);
    }

    else
    {
      v51 = 0;
    }

    if (blockCopy)
    {
      v52 = [blockCopy copy];
      v70 = objc_retainBlock(v52);
    }

    else
    {
      v70 = 0;
    }

    v53 = objc_alloc_init(NSMutableDictionary);
    CFDictionarySetValue(v53, IDSDeliveryMessageKey, messageCopy);
    if (value)
    {
      CFDictionarySetValue(v53, IDSDeliveryDataToEncryptKey, value);
    }

    if (attributesCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryEncryptionAttributesKey, attributesCopy);
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

    if (dCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromIDKey, dCopy);
    }

    if (handleCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromShortHandle, handleCopy);
    }

    if (identityCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromIdentityKey, identityCopy);
    }

    if (iDCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryToIDKey, iDCopy);
    }

    if (rIsCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryOriginalURIsKey, rIsCopy);
    }

    if (v34)
    {
      CFDictionarySetValue(v53, IDSDeliveryServiceKey, v34);
    }

    v56 = [NSNumber numberWithBool:payload];
    if (v56)
    {
      CFDictionarySetValue(v53, IDSDeliveryCanUseLargePayloadKey, v56);
    }

    v57 = [NSNumber numberWithBool:token];
    if (v57)
    {
      CFDictionarySetValue(v53, IDSDeliverySendOnePerTokenKey, v57);
    }

    if (propertiesCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryRegistrationPropertiesKey, propertiesCopy);
    }

    v58 = [NSNumber numberWithBool:fakeMessage];
    if (v58)
    {
      CFDictionarySetValue(v53, IDSDeliveryFakeMessageKey, v58);
    }

    v59 = [NSNumber numberWithBool:self];
    if (v59)
    {
      CFDictionarySetValue(v53, IDSDeliveryAlwaysSkipSelfKey, v59);
    }

    v60 = [NSNumber numberWithBool:includeSelf];
    if (v60)
    {
      CFDictionarySetValue(v53, IDSDeliveryAlwaysIncludeSelfKey, v60);
    }

    v61 = [NSNumber numberWithInteger:query];
    if (v61)
    {
      CFDictionarySetValue(v53, IDSDeliveryForceQueryKey, v61);
    }

    v62 = [NSNumber numberWithBool:refresh];
    if (v62)
    {
      CFDictionarySetValue(v53, IDSDeliveryDisallowQueryRefreshKey, v62);
    }

    if (listCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryPrioritizedTokenListKey, listCopy);
    }

    v63 = [NSNumber numberWithBool:donation];
    if (v63)
    {
      CFDictionarySetValue(v53, IDSDeliveryWantsFirewallDonation, v63);
    }

    if (objectCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryIDSDestinationKey, objectCopy);
    }

    if (mapCopy)
    {
      CFDictionarySetValue(v53, IDSDeliveryKeyTransparencyURIVerificationMapKey, mapCopy);
    }

    v64 = [NSNumber numberWithBool:queue];
    if (v64)
    {
      CFDictionarySetValue(v53, IDSDeliveryFromCoalesceQueueKey, v64);
    }

    [v44 addObject:v53];
    [(IDSDeliveryController *)self _checkFastDormancy];
  }
}

- (void)_sendFTMessage:(id)message service:(id)service fromID:(id)d toID:(id)iD toToken:(id)token toSessionToken:(id)sessionToken toURIs:(id)is fromIdentity:(id)self0 completionBlock:(id)self1
{
  messageCopy = message;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  sessionTokenCopy = sessionToken;
  isCopy = is;
  identityCopy = identity;
  blockCopy = block;
  v55 = [dCopy isEqualToString:iDCopy];
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = serviceCopy;
    if (v55)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    wantsDeliveryStatus = [messageCopy wantsDeliveryStatus];
    intValue = [wantsDeliveryStatus intValue];
    wantsCertifiedDelivery = [messageCopy wantsCertifiedDelivery];
    *buf = 138414082;
    if (intValue)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v70 = messageCopy;
    if (wantsCertifiedDelivery)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v71 = 2112;
    v72 = dCopy;
    v73 = 2112;
    v74 = iDCopy;
    v75 = 2112;
    v76 = tokenCopy;
    v77 = 2112;
    v78 = isCopy;
    v79 = 2112;
    v80 = v22;
    v81 = 2112;
    v82 = v26;
    v83 = 2112;
    v84 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "send FTMessage: %@   fromID: %@   toID: %@  toToken: %@  toURIs: %@  toMe: %@  delivery status: %@ certified delivery: %@", buf, 0x52u);

    serviceCopy = v21;
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

    wantsDeliveryStatus2 = [messageCopy wantsDeliveryStatus];
    if ([wantsDeliveryStatus2 intValue])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    if ([messageCopy wantsCertifiedDelivery])
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v52 = v30;
    v53 = v31;
    v50 = isCopy;
    v51 = v28;
    v48 = iDCopy;
    v49 = tokenCopy;
    v46 = messageCopy;
    v47 = dCopy;
    _IDSLogV();
  }

  if (tokenCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!sessionTokenCopy)
      {
        peerIDManager = [(IDSDeliveryController *)self peerIDManager];
        v33 = [IDSURI URIWithPrefixedURI:iDCopy withServiceLoggingHint:serviceCopy];
        v34 = [IDSPushToken pushTokenWithData:tokenCopy withServiceLoggingHint:serviceCopy];
        v35 = [IDSURI URIWithPrefixedURI:dCopy withServiceLoggingHint:serviceCopy];
        LOBYTE(v47) = 0;
        sessionTokenCopy = [peerIDManager sessionTokenForURI:v33 pushToken:v34 fromURI:v35 service:serviceCopy expirationDate:0 refreshDate:0 fromIdentity:identityCopy includeSelfDevice:v47];
      }

      [messageCopy setTargetToken:{tokenCopy, v46, v47, v48, v49, v50, v51, v52, v53}];
      [messageCopy setSourcePeerID:dCopy];
      [messageCopy setTargetSessionToken:sessionTokenCopy];
      [messageCopy setTargetPeerID:iDCopy];
      if (v55)
      {
        wantsDeliveryStatus3 = [messageCopy wantsDeliveryStatus];
        v37 = [wantsDeliveryStatus3 intValue] == 0;

        if (!v37)
        {
          v38 = [NSNumber numberWithBool:0];
          [messageCopy setWantsDeliveryStatus:v38];
        }
      }
    }
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1004BBD7C;
  v61[3] = &unk_100BDE248;
  v62 = iDCopy;
  v63 = dCopy;
  selfCopy = self;
  v65 = serviceCopy;
  v67 = isCopy;
  v68 = blockCopy;
  v66 = identityCopy;
  v39 = isCopy;
  v40 = serviceCopy;
  v41 = blockCopy;
  v42 = identityCopy;
  v43 = v40;
  v44 = dCopy;
  v45 = iDCopy;
  [messageCopy setCompletionBlock:v61];
  [(FTMessageDelivery *)self->_messageDelivery sendMessage:messageCopy];
  [(IDSDeliveryController *)self _checkFastDormancy];
}

- (void)_sendFTFanoutMessage:(id)message service:(id)service fromID:(id)d toURIs:(id)is fromIdentity:(id)identity completionBlock:(id)block
{
  messageCopy = message;
  serviceCopy = service;
  dCopy = d;
  isCopy = is;
  identityCopy = identity;
  blockCopy = block;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    messageID = [messageCopy messageID];
    service = [messageCopy groupPayload];
    if (service)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    chunkNumber = [messageCopy chunkNumber];
    if ([messageCopy isFinalMessage])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138413314;
    v82 = messageCopy;
    v83 = 2112;
    v84 = messageID;
    v85 = 2112;
    v86 = v15;
    v87 = 2112;
    v88 = chunkNumber;
    v89 = 2112;
    v90 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "    Told to send Fanout Message: %@ GUID: %@ isEngram? %@ Chunk: %@ isFinal?: %@ ", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    messageID2 = [messageCopy messageID];
    groupPayload = [messageCopy groupPayload];
    if (groupPayload)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    service = [messageCopy chunkNumber];
    if ([messageCopy isFinalMessage])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    serviceCopy2 = service;
    v53 = v21;
    encryptionType6 = messageID2;
    v51 = v20;
    v49 = messageCopy;
    _IDSLogV();
  }

  v63 = objc_alloc_init(NSMutableDictionary);
  v62 = objc_alloc_init(NSMutableSet);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [messageCopy individualPeerMessages];
  v22 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (!v22)
  {

LABEL_37:
    [messageCopy setWantsCertifiedDelivery:{1, v49, encryptionType6, v51}];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    individualPeerMessages = [messageCopy individualPeerMessages];
    v33 = [individualPeerMessages countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v33)
    {
      v34 = *v72;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v72 != v34)
          {
            objc_enumerationMutation(individualPeerMessages);
          }

          [*(*(&v71 + 1) + 8 * i) setWantsCertifiedDelivery:0];
        }

        v33 = [individualPeerMessages countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v33);
    }

    goto LABEL_45;
  }

  v23 = *v76;
  wantsCertifiedDelivery = 1;
  do
  {
    for (j = 0; j != v22; j = j + 1)
    {
      if (*v76 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v75 + 1) + 8 * j);
      dictionaryRepresentation = [v26 dictionaryRepresentation];
      [v62 addObject:dictionaryRepresentation];

      encryptionType = [v26 encryptionType];
      v29 = encryptionType;
      if (!encryptionType)
      {
        encryptionType2 = [messageCopy encryptionType];
        service = encryptionType2;
        if (encryptionType2)
        {
          v29 = encryptionType2;
        }

        else
        {
          v29 = @"none";
        }
      }

      targetToken = [v26 targetToken];
      [(__CFString *)v63 setObject:v29 forKey:targetToken];

      if (!encryptionType)
      {
      }

      if (wantsCertifiedDelivery)
      {
        wantsCertifiedDelivery = [v26 wantsCertifiedDelivery];
      }

      else
      {
        wantsCertifiedDelivery = 0;
      }
    }

    v22 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  }

  while (v22);

  if (wantsCertifiedDelivery)
  {
    goto LABEL_37;
  }

LABEL_45:
  encryptionType3 = [messageCopy encryptionType];
  if (encryptionType3)
  {
    encryptionType4 = [messageCopy encryptionType];
    v38 = [encryptionType4 isEqualToString:@"none"];

    if ((v38 & 1) == 0)
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        messageID3 = [messageCopy messageID];
        encryptionType5 = [messageCopy encryptionType];
        *buf = 138412802;
        v82 = messageID3;
        v83 = 2112;
        v84 = encryptionType5;
        v85 = 2112;
        v86 = v63;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Sending %@ with top-level encryption type %@ and dtls: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        messageID4 = [messageCopy messageID];
        encryptionType6 = [messageCopy encryptionType];
        v51 = v63;
        v49 = messageID4;
        _IDSLogV();
      }
    }
  }

  if ([messageCopy isFinalMessage])
  {
    individualPeerMessages2 = [messageCopy individualPeerMessages];
    v44 = [individualPeerMessages2 count] == 1;
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
  v66 = dCopy;
  v70 = v44;
  v67 = isCopy;
  selfCopy = self;
  v69 = blockCopy;
  v45 = isCopy;
  v46 = blockCopy;
  v47 = dCopy;
  v48 = v62;
  [messageCopy setCompletionBlock:v64];
  [(FTMessageDelivery *)self->_messageDelivery sendMessage:messageCopy];
  [(IDSDeliveryController *)self _checkFastDormancy];
}

- (void)_sendAttachmentWithGuid:(id)guid service:(id)service topic:(id)topic originalCommand:(id)command additionalDictionary:(id)dictionary encryptedData:(id)data toToken:(id)token toID:(id)self0 fromID:(id)self1 fromIdentity:(id)self2 canUseLargePayload:(BOOL)self3 expirationDate:(id)self4 destinationObject:(id)self5 ackBlock:(id)self6 completionBlock:(id)self7
{
  guidCopy = guid;
  serviceCopy = service;
  topicCopy = topic;
  commandCopy = command;
  dictionaryCopy = dictionary;
  dataCopy = data;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  identityCopy = identity;
  dateCopy = date;
  objectCopy = object;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v23 = OSLogHandleForIDSCategory();
  v24 = serviceCopy;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v76 = guidCopy;
    v77 = 2112;
    v78 = topicCopy;
    v79 = 2112;
    v80 = tokenCopy;
    v81 = 2112;
    v82 = dCopy;
    v83 = 2112;
    v84 = iDCopy;
    v85 = 2112;
    v86 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Asked to sendAttachmentWithGUID %@  topic %@ toToken %@ toID %@ fromID %@ service: %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v42 = iDCopy;
    v43 = serviceCopy;
    v40 = tokenCopy;
    v41 = dCopy;
    v37 = guidCopy;
    v39 = topicCopy;
    _IDSLogV();
  }

  v25 = [NSFileManager defaultManager:v37];
  v26 = [v25 _randomTemporaryPathWithSuffix:0];

  if (v26 && [dataCopy writeToFile:v26 atomically:1])
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

    v28 = [completionBlockCopy copy];

    v29 = [[IDSServiceProperties alloc] initWithServiceIdentifier:serviceCopy];
    dataUsageBundleID = [v29 dataUsageBundleID];
    v31 = [IDSDaemon _IMTransferServiceController]_0();
    stringByResolvingAndStandardizingPath = [v26 stringByResolvingAndStandardizingPath];
    v33 = [NSString stringGUIDForObject:v26];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1004BE350;
    v58[3] = &unk_100BDE300;
    v59 = dictionaryCopy;
    v60 = commandCopy;
    v61 = guidCopy;
    v72 = v28;
    v62 = v26;
    selfCopy = self;
    v64 = serviceCopy;
    payloadCopy = payload;
    v65 = dateCopy;
    v66 = iDCopy;
    v67 = identityCopy;
    v68 = dCopy;
    v69 = tokenCopy;
    v70 = topicCopy;
    v71 = objectCopy;
    v73 = blockCopy;
    v34 = v28;
    v24 = serviceCopy;
    [v31 sendFilePath:stringByResolvingAndStandardizingPath topic:v70 userInfo:0 transferID:v33 sourceAppID:dataUsageBundleID encryptFile:0 progressBlock:&stru_100BDE2B0 completionBlock:v58];

    v35 = v59;
    goto LABEL_16;
  }

  v34 = [completionBlockCopy copy];

  if (v34)
  {
    v29 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Failed uploading attachment file transfer", NSLocalizedDescriptionKey, 0}];
    v36 = [NSError alloc];
    dataUsageBundleID = [v36 initWithDomain:IDSSendErrorDomain code:4 userInfo:v29];
    v35 = [[IDSDeliveryContext alloc] initWithResponseCode:objc_msgSend(dataUsageBundleID error:"code") lastCall:{dataUsageBundleID, 1}];
    v34[2](v34, v35);
LABEL_16:
  }
}

- (id)_tokenURIForToken:(id)token uri:(id)uri
{
  v4 = _IDSCopyIDForTokenWithURI();
  v5 = [IDSURI URIWithPrefixedURI:v4];

  return v5;
}

- (void)_sendMessage:(id)message dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes onService:(id)service fromID:(id)d fromShortHandle:(id)handle fromIdentity:(id)identity toID:(id)self0 toURIs:(id)self1 canUseLargePayload:(BOOL)self2 sendOnePerToken:(BOOL)self3 allowPartialSendsToSucceed:(BOOL)self4 registrationProperties:(id)self5 fakeMessage:(BOOL)self6 alwaysSkipSelf:(BOOL)self7 alwaysIncludeSelf:(BOOL)self8 forceQuery:(int64_t)self9 disallowRefresh:(BOOL)refresh prioritizedTokenList:(id)list wantsFirewallDonation:(BOOL)donation destinationObject:(id)object willSendBlock:(id)block completionBlock:(id)completionBlock firstAttemptDate:(id)date ktURIVerificationMap:(id)map fromCoalesceQueue:(BOOL)queue withQueryCompletion:(id)completion
{
  messageCopy = message;
  encryptCopy = encrypt;
  attributesCopy = attributes;
  serviceCopy = service;
  dCopy = d;
  handleCopy = handle;
  identityCopy = identity;
  iDCopy = iD;
  isCopy = is;
  propertiesCopy = properties;
  listCopy = list;
  objectCopy = object;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  dateCopy = date;
  mapCopy = map;
  completionCopy = completion;
  v227 = _os_activity_create(&_mh_execute_header, "IDSDeliveryController sendMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v227, &state);
  v159 = dateCopy;
  if (!dateCopy)
  {
    v159 = +[NSDate date];
  }

  sendMode = [messageCopy sendMode];
  v160 = sendMode;
  if (sendMode)
  {
    v45 = [sendMode integerValue] == 0;
  }

  else
  {
    v45 = 1;
  }

  v180 = v45;
  obj = [(IDSCoalesceMessageQueueManager *)self->_coalesceMessageQueueManager coalesceQueueExistsForTopic:serviceCopy];
  if (completionBlockCopy)
  {
    v46 = [completionBlockCopy copy];
    v162 = objc_retainBlock(v46);
  }

  else
  {
    v162 = 0;
  }

  if (blockCopy)
  {
    v47 = [blockCopy copy];
    v163 = objc_retainBlock(v47);
  }

  else
  {
    v163 = 0;
  }

  theDict = objc_alloc_init(NSMutableDictionary);
  v48 = messageCopy;
  if (v48)
  {
    CFDictionarySetValue(theDict, IDSDeliveryMessageKey, v48);
  }

  v164 = v48;

  v49 = encryptCopy;
  if (v49)
  {
    CFDictionarySetValue(theDict, IDSDeliveryDataToEncryptKey, v49);
  }

  v157 = v49;

  v50 = attributesCopy;
  if (v50)
  {
    CFDictionarySetValue(theDict, IDSDeliveryEncryptionAttributesKey, v50);
  }

  v156 = v50;

  v51 = serviceCopy;
  if (v51)
  {
    v52 = v51;
    CFDictionarySetValue(theDict, IDSDeliveryServiceKey, v51);
    v51 = v52;
  }

  v183 = v51;

  v53 = dCopy;
  if (v53)
  {
    CFDictionarySetValue(theDict, IDSDeliveryFromIDKey, v53);
  }

  v174 = v53;

  v54 = handleCopy;
  if (v54)
  {
    CFDictionarySetValue(theDict, IDSDeliveryFromShortHandle, v54);
  }

  v155 = v54;

  v55 = identityCopy;
  if (v55)
  {
    v56 = v55;
    CFDictionarySetValue(theDict, IDSDeliveryFromIdentityKey, v55);
    v55 = v56;
  }

  v154 = v55;

  v57 = iDCopy;
  if (v57)
  {
    v58 = v57;
    CFDictionarySetValue(theDict, IDSDeliveryToIDKey, v57);
    v57 = v58;
  }

  v153 = v57;

  v59 = isCopy;
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

  v62 = propertiesCopy;
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

  v69 = listCopy;
  if (v69)
  {
    v70 = v69;
    CFDictionarySetValue(theDict, IDSDeliveryPrioritizedTokenListKey, v69);
    v69 = v70;
  }

  v151 = v69;

  v71 = objectCopy;
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

  if (!v180 && !queue)
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

  if (obj && !queue)
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
    if (completionCopy)
    {
      completionCopy[2](completionCopy, &__NSArray0__struct);
    }

    goto LABEL_138;
  }

  LOBYTE(v145) = queue;
  LOBYTE(v143) = donation;
  LOBYTE(v141) = refresh;
  BYTE2(v139) = includeSelf;
  LOWORD(v139) = __PAIR16__(self, fakeMessage);
  LOWORD(v137) = __PAIR16__(token, payload);
  [IDSDeliveryController _queueMessage:"_queueMessage:service:dataToEncrypt:withEncryptedAttributes:fromID:fromShortHandle:fromIdentity:toID:toURIs:originallyToURIs:ktURIVerificationMap:canUseLargePayload:sendOnePerToken:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:fromCoalesceQueue:" service:v48 dataToEncrypt:v183 withEncryptedAttributes:v157 fromID:v156 fromShortHandle:v174 fromIdentity:v155 toID:v154 toURIs:v153 originallyToURIs:v169 ktURIVerificationMap:v169 canUseLargePayload:mapCopy sendOnePerToken:v137 registrationProperties:v152 fakeMessage:v139 alwaysSkipSelf:query alwaysIncludeSelf:v141 forceQuery:v151 disallowRefresh:v143 prioritizedTokenList:v150 wantsFirewallDonation:blockCopy destinationObject:completionBlockCopy willSendBlock:v145 completionBlock:? fromCoalesceQueue:?];
  sendMetric = [v48 sendMetric];
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
      pushToken = [v82 pushToken];
      v84 = [IDSDeliveryController tokenURINegativeCacheItemForTokenURI:v82 service:v183];
      v85 = v84;
      *buf = 10000000;
      if (pushToken)
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

      if (query == 1 || (-[IDSDeliveryController peerIDManager](self, "peerIDManager"), v90 = objc_claimAutoreleasedReturnValue(), +[IDSURI URIWithPrefixedURI:withServiceLoggingHint:](IDSURI, "URIWithPrefixedURI:withServiceLoggingHint:", v174, v183), v91 = objc_claimAutoreleasedReturnValue(), v92 = [v90 hasPeerTokensForURI:v82 fromURI:v91 service:v183 validThrough:v173 outReason:buf], v91, v90, (v92 & 1) == 0))
      {
        if (v87)
        {
          [(IDSRateLimiter *)self->_tokenURINegativeCache noteItem:v85];
        }

        v89 = v181;
        if (query != 1)
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

    if (v104 || !succeed)
    {
      if (v94 != 0 && (v95 == 0 || succeed))
      {
        v184[0] = _NSConcreteStackBlock;
        v184[1] = 3221225472;
        v184[2] = sub_1004C0810;
        v184[3] = &unk_100BDE390;
        v185 = obja;
        succeedCopy = succeed;
        v109 = v164;
        v186 = v109;
        v201 = completionCopy;
        selfCopy = self;
        objb = v183;
        v188 = objb;
        v202 = completionBlockCopy;
        v189 = v159;
        v190 = v157;
        v191 = v156;
        v148 = v174;
        v192 = v148;
        v193 = v155;
        v147 = v154;
        v194 = v147;
        v195 = v153;
        payloadCopy = payload;
        tokenCopy = token;
        fakeMessageCopy = fakeMessage;
        selfCopy2 = self;
        includeSelfCopy = includeSelf;
        v196 = v152;
        queryCopy = query;
        refreshCopy = refresh;
        v197 = v151;
        donationCopy = donation;
        v198 = v150;
        v203 = blockCopy;
        v199 = mapCopy;
        queueCopy = queue;
        v110 = sendMetric;
        v200 = v110;
        v161 = objc_retainBlock(v184);
        currentServerTime = [(IDSDeliveryController *)self currentServerTime];
        [currentServerTime currentServerTimeInterval];
        v112 = [NSNumber numberWithDouble:?];
        v113 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingQueryStartKey];
        [v110 addEntry:v112 forKey:v113];

        v114 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          allObjects = [v181 allObjects];
          *buf = 138412546;
          *&buf[4] = allObjects;
          v229 = 2112;
          v230 = v148;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Issuing query for: %@   from: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          allObjects2 = [v181 allObjects];
          v136 = v148;
          _IDSLogV();
        }

        v136 = [[IDSPeerIDQueryContext alloc] initWithSending:1 forceToServer:query == 1 messaging:1 resultExpected:1 preventNewQuery:0 clientRequestedForceQuery:query == 1 requiredValidThroughDate:v173, v136];
        if ([v109 command])
        {
          command = [v109 command];
        }

        else
        {
          additionalDictionary = [v109 additionalDictionary];
          v125 = [additionalDictionary objectForKey:@"c"];
          command = [v125 integerValue];
        }

        v126 = [(IDSDeliveryController *)self _stringFromQueryReasonExtensionSet:v172];
        v127 = v126;
        if (command)
        {
          v126 = [NSNumber numberWithInteger:command];
          v127 = [NSString stringWithFormat:@"%@[%@][%@]", @"MessageSend", v126, v127];
        }

        else
        {
          v126 = [NSString stringWithFormat:@"%@[%@][%@]", @"MessageSend", &off_100C3C820, v126];
          v127 = v126;
        }

        peerIDManager = [(IDSDeliveryController *)self peerIDManager];
        allObjects3 = [v181 allObjects];
        v132 = [IDSURI URIWithPrefixedURI:v148 withServiceLoggingHint:objb];
        [peerIDManager startQueryForURIs:allObjects3 fromIdentity:v147 fromURI:v132 fromService:objb context:v136 reason:v127 completionBlock:v161];

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
        if (completionCopy)
        {
          completionCopy[2](completionCopy, &__NSArray0__struct);
        }

        if (completionBlockCopy)
        {
          v120 = [[IDSDeliveryContext alloc] initWithResponseCode:1 error:v105 lastCall:1];
          [v120 setDisplayURIs:obja];
          (*(completionBlockCopy + 2))(completionBlockCopy, v120);
        }
      }
    }

    else
    {
      v105 = [[NSMutableSet alloc] initWithArray:obja];
      [v105 minusSet:v175];
      allObjects4 = [v105 allObjects];
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
        LOBYTE(v146) = queue;
        LOBYTE(v144) = donation;
        LOBYTE(v142) = refresh;
        BYTE2(v140) = includeSelf;
        BYTE1(v140) = self;
        LOBYTE(v140) = fakeMessage;
        BYTE1(v138) = token;
        LOBYTE(v138) = payload;
        [IDSDeliveryController _queueMessage:"_queueMessage:service:dataToEncrypt:withEncryptedAttributes:fromID:fromShortHandle:fromIdentity:toID:toURIs:originallyToURIs:ktURIVerificationMap:canUseLargePayload:sendOnePerToken:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:fromCoalesceQueue:" service:v108 dataToEncrypt:v183 withEncryptedAttributes:v157 fromID:v156 fromShortHandle:v174 fromIdentity:v155 toID:v154 toURIs:v153 originallyToURIs:allObjects4 ktURIVerificationMap:obja canUseLargePayload:mapCopy sendOnePerToken:v138 registrationProperties:v152 fakeMessage:v140 alwaysSkipSelf:query alwaysIncludeSelf:v142 forceQuery:v151 disallowRefresh:v144 prioritizedTokenList:v150 wantsFirewallDonation:blockCopy destinationObject:completionBlockCopy willSendBlock:v146 completionBlock:? fromCoalesceQueue:?];
      }

      [(IDSDeliveryController *)self _handleMessagesForURIs:allObjects4 originalURIs:obja service:v183 fromID:v174 fromCoalesceQueue:queue withQueryCompletion:completionCopy];
    }
  }

  else
  {
    [(IDSDeliveryController *)self _handleMessagesForURIs:obja originalURIs:obja service:v183 fromID:v174 fromCoalesceQueue:queue withQueryCompletion:completionCopy];
  }

LABEL_138:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_stringFromQueryReasonExtensionSet:(id)set
{
  setCopy = set;
  if ([setCopy count])
  {
    allObjects = [setCopy allObjects];
    v5 = [allObjects sortedArrayUsingComparator:&stru_100BDE3D0];

    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_100C06028;
  }

  return v6;
}

- (void)sendIDSMessage:(id)message service:(id)service topic:(id)topic completionBlock:(id)block
{
  messageCopy = message;
  serviceCopy = service;
  topicCopy = topic;
  blockCopy = block;
  im_assert_primary_base_queue();
  if (messageCopy)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = messageCopy;
      v20 = 2112;
      v21 = topicCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending IDSMessage: %@  topic: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v16 = messageCopy;
      v17 = topicCopy;
      _IDSLogEventV();
    }

    [messageCopy setTopic:{topicCopy, v16, v17}];
    [(IDSDeliveryController *)self _sendFTMessage:messageCopy service:serviceCopy fromID:0 toID:0 toToken:0 toSessionToken:0 toURIs:0 fromIdentity:0 completionBlock:blockCopy];
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

- (void)_sendMessageDictionary:(id)dictionary lastRetryInterval:(double)interval dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes onService:(id)service wantsResponse:(BOOL)response canUseLargePayload:(BOOL)payload sendOnePerToken:(BOOL)self0 allowPartialSendsToSucceed:(BOOL)self1 highPriority:(BOOL)self2 fireAndForget:(BOOL)self3 expirationDate:(id)self4 enforceRemoteTimeouts:(BOOL)self5 messageID:(id)self6 fromID:(id)self7 fromShortHandle:(id)self8 fromIdentity:(id)self9 toID:(id)toID toURIs:(id)is accessToken:(id)accessToken topic:(id)topic registrationProperties:(id)properties fakeMessage:(BOOL)message alwaysSkipSelf:(BOOL)self alwaysIncludeSelf:(BOOL)includeSelf forceQuery:(int64_t)query pushPriority:(id)pushPriority ignoreMaxRetryCount:(BOOL)dictionary0 disallowRefresh:(BOOL)dictionary1 originalTimestamp:(id)dictionary2 prioritizedTokenList:(id)dictionary3 wantsFirewallDonation:(BOOL)dictionary4 destinationObject:(id)dictionary5 deliveryMinimumTimeDelay:(id)dictionary6 deliveryMinimumTime:(id)dictionary7 sendMode:(id)dictionary8 KTURIVerificationMap:(id)dictionary9 sendReasonContainer:(id)interval0 sendMetric:(id)interval1 ackBlock:(id)interval2 willSendBlock:(id)interval3 sendCompletionBlock:(id)interval4
{
  responseCopy = response;
  dictionaryCopy = dictionary;
  encryptCopy = encrypt;
  attributesCopy = attributes;
  serviceCopy = service;
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  identityCopy = identity;
  toIDCopy = toID;
  isCopy = is;
  accessTokenCopy = accessToken;
  topicCopy = topic;
  propertiesCopy = properties;
  pushPriorityCopy = pushPriority;
  timestampCopy = timestamp;
  listCopy = list;
  objectCopy = object;
  delayCopy = delay;
  timeCopy = time;
  modeCopy = mode;
  mapCopy = map;
  containerCopy = container;
  metricCopy = metric;
  blockCopy = block;
  sendBlockCopy = sendBlock;
  completionBlockCopy = completionBlock;
  v90 = accessTokenCopy;
  if (accessTokenCopy)
  {
    v51 = [(IDSPeerMessage *)[IDSPeerAccessoryMessage alloc] initWithHighPriority:priority];
    [(IDSPeerAccessoryMessage *)v51 setAccessToken:accessTokenCopy];
  }

  else
  {
    v51 = [[IDSPeerMessage alloc] initWithHighPriority:priority];
  }

  v91 = [[IDSServerRateLimitConfigurationOptions alloc] initWithService:serviceCopy];
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
      v120 = dCopy;
      v121 = 2112;
      v122 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ on service %@ is rate limited due to server bag configuration", buf, 0x16u);
    }

    serviceCopy = [NSString stringWithFormat:@"Message send on the service %@ is being rate limited.", serviceCopy];
    v135 = NSLocalizedDescriptionKey;
    v136 = serviceCopy;
    v55 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v56 = [NSError errorWithDomain:IDSSendErrorDomain code:42 userInfo:v55];

    v57 = [[IDSDeliveryContext alloc] initWithResponseCode:42 error:v56 lastCall:1];
    completionBlockCopy[2](completionBlockCopy, v57);

    goto LABEL_64;
  }

  serviceCopy = [dictionaryCopy mutableCopy];
  v58 = IDSWantsDeliveryStatusKey;
  v59 = [serviceCopy objectForKey:IDSWantsDeliveryStatusKey];
  [(IDSPeerAccessoryMessage *)v51 setWantsDeliveryStatus:v59];

  [serviceCopy removeObjectForKey:v58];
  v60 = IDSCertifiedDeliveryVersionKey;
  v61 = [serviceCopy objectForKey:IDSCertifiedDeliveryVersionKey];
  integerValue = [v61 integerValue];

  if (integerValue >= 1)
  {
    [(IDSPeerAccessoryMessage *)v51 setWantsCertifiedDelivery:1];
    [serviceCopy removeObjectForKey:v60];
  }

  if (priority)
  {
    v56 = toIDCopy;
    if (pushPriorityCopy)
    {
      [pushPriorityCopy integerValue];
      if (_IDSIsValidPushPriority())
      {
        [(IDSPeerMessage *)v51 setPriority:pushPriorityCopy];
      }
    }
  }

  else
  {
    v63 = [NSNumber numberWithInt:5];
    [(IDSPeerMessage *)v51 setPriority:v63];

    v56 = toIDCopy;
  }

  [(IDSPeerMessage *)v51 setAdditionalDictionary:serviceCopy];
  [(IDSPeerMessage *)v51 setSourcePeerID:iDCopy];
  [(IDSPeerMessage *)v51 setSourceShortHandle:handleCopy];
  [(IDSPeerMessage *)v51 setTargetPeerID:v56];
  if (dCopy)
  {
    [(IDSPeerMessage *)v51 setMessageID:?];
  }

  else
  {
    v64 = +[NSString stringGUID];
    [(IDSPeerMessage *)v51 setMessageID:v64];

    v56 = toIDCopy;
  }

  [(IDSPeerMessage *)v51 setFireAndForget:forget];
  [(IDSPeerAccessoryMessage *)v51 setIgnoreMaxRetryCount:count];
  [(IDSPeerAccessoryMessage *)v51 setOriginalTimestamp:timestampCopy];
  [(IDSPeerMessage *)v51 setDeliveryMinimumTimeDelay:delayCopy];
  [(IDSPeerMessage *)v51 setDeliveryMinimumTime:timeCopy];
  [(IDSPeerMessage *)v51 setSendMode:modeCopy];
  [(IDSPeerAccessoryMessage *)v51 setSendReasonContainer:containerCopy];
  [(IDSPeerMessage *)v51 setSendMetric:metricCopy];
  if (v56)
  {
    v65 = [v56 _stripPotentialTokenURIWithToken:0];
    v56 = v65;
    v66 = 0;
    if (iDCopy && v65)
    {
      v66 = [iDCopy isEqualToIgnoringCase:v65];
    }
  }

  else
  {
    v66 = 0;
  }

  if ([isCopy count] <= 1)
  {
    lastObject = [isCopy lastObject];
    tokenFreeURI = [lastObject tokenFreeURI];
    prefixedURI = [tokenFreeURI prefixedURI];
    v66 |= [prefixedURI isEqualToIgnoringCase:iDCopy];
  }

  [(IDSPeerAccessoryMessage *)v51 setWantsResponse:responseCopy];
  [(IDSPeerAccessoryMessage *)v51 setTopic:topicCopy];
  if (blockCopy)
  {
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_1004C24A0;
    v117[3] = &unk_100BDE3F8;
    v118 = blockCopy;
    [(IDSPeerAccessoryMessage *)v51 setDeliveryAcknowledgementBlock:v117];
  }

  if (dateCopy)
  {
    [dateCopy timeIntervalSinceNow];
    v71 = v70;
    if (v70 > 2.22044605e-16)
    {
      [(IDSPeerAccessoryMessage *)v51 setTimeout:v70];
      serviceCopy2 = [NSString stringWithFormat:@"service-max-timeout-%@", serviceCopy];
      if (serviceCopy2)
      {
        v73 = [IDSServerBag sharedInstanceForBagType:1];
        v74 = [v73 objectForKey:serviceCopy2];
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
          v120 = serviceCopy;
          v121 = 2112;
          v122 = v74;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Server has overridden service maximum timeout: %@, capping message timeout with %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v82 = serviceCopy;
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

    if (v71 < IDSMaxMessageTimeout + -60.0 && timeouts)
    {
      [(IDSPeerMessage *)v51 setExpirationDate:dateCopy];
    }
  }

  if (!isCopy)
  {
    v77 = [IDSURI URIWithPrefixedURI:toIDCopy];
    isCopy = IMSingleObjectArray();
  }

  v78 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v79 = @"NO";
    *buf = 138414082;
    v120 = v51;
    if (responseCopy)
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
    v124 = dateCopy;
    v125 = 2112;
    v126 = iDCopy;
    v127 = 2112;
    v128 = toIDCopy;
    v129 = 2112;
    v130 = isCopy;
    v131 = 2112;
    v132 = topicCopy;
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
    v85 = isCopy;
    v84 = iDCopy;
    _IDSLogEventV();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(IDSDeliveryController *)self _handleAccessoryMessageForID:isCopy msg:v51 service:serviceCopy fromID:iDCopy fromIdentity:identityCopy completionBlock:completionBlockCopy];
  }

  else
  {
    LOBYTE(v88) = 0;
    LOBYTE(v87) = donation;
    LOBYTE(v86) = refresh;
    *(&v85 + 1) = __PAIR16__(includeSelf, self);
    LOBYTE(v85) = message;
    *(&v84 + 1) = __PAIR16__(succeed, token);
    LOBYTE(v84) = payload;
    [IDSDeliveryController _sendMessage:"_sendMessage:dataToEncrypt:withEncryptedAttributes:onService:fromID:fromShortHandle:fromIdentity:toID:toURIs:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:firstAttemptDate:ktURIVerificationMap:fromCoalesceQueue:withQueryCompletion:" dataToEncrypt:v51 withEncryptedAttributes:encryptCopy onService:attributesCopy fromID:serviceCopy fromShortHandle:iDCopy fromIdentity:handleCopy toID:identityCopy toURIs:toIDCopy canUseLargePayload:isCopy sendOnePerToken:v84 allowPartialSendsToSucceed:propertiesCopy registrationProperties:v85 fakeMessage:query alwaysSkipSelf:v86 alwaysIncludeSelf:listCopy forceQuery:v87 disallowRefresh:objectCopy prioritizedTokenList:sendBlockCopy wantsFirewallDonation:completionBlockCopy destinationObject:0 willSendBlock:mapCopy completionBlock:v88 firstAttemptDate:&stru_100BDE418 ktURIVerificationMap:? fromCoalesceQueue:? withQueryCompletion:?];
  }

LABEL_64:
}

- (void)_sendErrorDictionary:(id)dictionary onService:(id)service fromID:(id)d fromIdentity:(id)identity toID:(id)iD toToken:(id)token topic:(id)topic sendCompletionBlock:(id)self0
{
  dictionaryCopy = dictionary;
  serviceCopy = service;
  dCopy = d;
  identityCopy = identity;
  iDCopy = iD;
  tokenCopy = token;
  topicCopy = topic;
  blockCopy = block;
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v40 = dictionaryCopy;
    v41 = 2112;
    v42 = serviceCopy;
    v43 = 2112;
    v44 = dCopy;
    v45 = 2112;
    v46 = identityCopy;
    v47 = 2112;
    v48 = iDCopy;
    v49 = 2112;
    v50 = tokenCopy;
    v51 = 2112;
    v52 = topicCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_sendErrorMessage %@ onService %@ fromID %@ fromIdentity %@ toID %@ toToken %@ topic %@", buf, 0x48u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = tokenCopy;
    v34 = topicCopy;
    v31 = identityCopy;
    v32 = iDCopy;
    v28 = serviceCopy;
    v29 = dCopy;
    v26 = dictionaryCopy;
    _IDSLogV();
  }

  v24 = [(IDSDeliveryController *)self _tokenURIForToken:tokenCopy uri:iDCopy, v26, v28, v29, v31, v32, v33, v34];
  v25 = IMSingleObjectArray();
  LOBYTE(v37) = 0;
  LOWORD(v36) = 0;
  BYTE2(v35) = 0;
  LOWORD(v35) = 0;
  LOBYTE(v30) = 0;
  LODWORD(v27) = 0x10000;
  [IDSDeliveryController _sendMessageDictionary:"_sendMessageDictionary:lastRetryInterval:dataToEncrypt:withEncryptedAttributes:onService:wantsResponse:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:highPriority:fireAndForget:expirationDate:enforceRemoteTimeouts:messageID:fromID:fromShortHandle:fromIdentity:toID:toURIs:accessToken:topic:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:pushPriority:ignoreMaxRetryCount:disallowRefresh:originalTimestamp:prioritizedTokenList:wantsFirewallDonation:destinationObject:deliveryMinimumTimeDelay:deliveryMinimumTime:sendMode:KTURIVerificationMap:sendReasonContainer:sendMetric:ackBlock:willSendBlock:sendCompletionBlock:" lastRetryInterval:dictionaryCopy dataToEncrypt:0 withEncryptedAttributes:0 onService:serviceCopy wantsResponse:1 canUseLargePayload:0 sendOnePerToken:0.0 allowPartialSendsToSucceed:v27 highPriority:0 fireAndForget:v30 expirationDate:0 enforceRemoteTimeouts:dCopy messageID:0 fromID:identityCopy fromShortHandle:iDCopy fromIdentity:v25 toID:0 toURIs:topicCopy accessToken:0 topic:v35 registrationProperties:0 fakeMessage:0 alwaysSkipSelf:v36 alwaysIncludeSelf:0 forceQuery:0 pushPriority:v37 ignoreMaxRetryCount:0 disallowRefresh:0 originalTimestamp:0 prioritizedTokenList:0 wantsFirewallDonation:0 destinationObject:0 deliveryMinimumTimeDelay:0 deliveryMinimumTime:0 sendMode:0 KTURIVerificationMap:blockCopy sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];
}

- (void)sendMessageDictionary:(id)dictionary messageID:(id)d dataToEncrypt:(id)encrypt withEncryptedAttributes:(id)attributes onService:(id)service wantsResponse:(BOOL)response expirationDate:(id)date enforceRemoteTimeouts:(BOOL)self0 canUseLargePayload:(BOOL)self1 sendOnePerToken:(BOOL)self2 allowPartialSendsToSucceed:(BOOL)self3 priority:(int64_t)self4 fireAndForget:(BOOL)self5 fromID:(id)self6 fromShortHandle:(id)self7 fromIdentity:(id)self8 toURIs:(id)self9 accessToken:(id)accessToken topic:(id)topic registrationProperties:(id)properties fakeMessage:(BOOL)message alwaysSkipSelf:(BOOL)self alwaysIncludeSelf:(BOOL)includeSelf forceQuery:(int64_t)query pushPriority:(id)pushPriority ignoreMaxRetryCount:(BOOL)count disallowRefresh:(BOOL)refresh originalTimestamp:(id)dictionary0 prioritizedTokenList:(id)dictionary1 wantsFirewallDonation:(BOOL)dictionary2 destinationObject:(id)dictionary3 deliveryMinimumTimeDelay:(id)dictionary4 deliveryMinimumTime:(id)dictionary5 sendMode:(id)dictionary6 KTURIVerificationMap:(id)dictionary7 sendReasonContainer:(id)dictionary8 sendMetric:(id)dictionary9 ackBlock:(id)d0 willSendBlock:(id)d1 sendCompletionBlock:(id)d2
{
  responseCopy = response;
  completionBlockCopy = completionBlock;
  sendBlockCopy = sendBlock;
  blockCopy = block;
  metricCopy = metric;
  containerCopy = container;
  mapCopy = map;
  modeCopy = mode;
  timeCopy = time;
  delayCopy = delay;
  objectCopy = object;
  listCopy = list;
  timestampCopy = timestamp;
  pushPriorityCopy = pushPriority;
  propertiesCopy = properties;
  topicCopy = topic;
  accessTokenCopy = accessToken;
  isCopy = is;
  identityCopy = identity;
  handleCopy = handle;
  iDCopy = iD;
  dateCopy = date;
  serviceCopy = service;
  attributesCopy = attributes;
  encryptCopy = encrypt;
  dCopy = d;
  dictionaryCopy = dictionary;
  im_assert_primary_base_queue();
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1004C2BC8;
  v81[3] = &unk_100BDB638;
  v82 = completionBlockCopy;
  v59 = completionBlockCopy;
  LOBYTE(v53) = donation;
  LOWORD(v52) = __PAIR16__(refresh, count);
  *(&v51 + 1) = __PAIR16__(includeSelf, self);
  LOBYTE(v51) = message;
  LOBYTE(v50) = timeouts;
  BYTE3(v49) = forget;
  BYTE2(v49) = priority == 300;
  LOWORD(v49) = __PAIR16__(succeed, token);
  [IDSDeliveryController _sendMessageDictionary:"_sendMessageDictionary:lastRetryInterval:dataToEncrypt:withEncryptedAttributes:onService:wantsResponse:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:highPriority:fireAndForget:expirationDate:enforceRemoteTimeouts:messageID:fromID:fromShortHandle:fromIdentity:toID:toURIs:accessToken:topic:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:pushPriority:ignoreMaxRetryCount:disallowRefresh:originalTimestamp:prioritizedTokenList:wantsFirewallDonation:destinationObject:deliveryMinimumTimeDelay:deliveryMinimumTime:sendMode:KTURIVerificationMap:sendReasonContainer:sendMetric:ackBlock:willSendBlock:sendCompletionBlock:" lastRetryInterval:dictionaryCopy dataToEncrypt:encryptCopy withEncryptedAttributes:attributesCopy onService:serviceCopy wantsResponse:responseCopy canUseLargePayload:payload sendOnePerToken:0.0 allowPartialSendsToSucceed:v49 highPriority:dateCopy fireAndForget:v50 expirationDate:dCopy enforceRemoteTimeouts:iDCopy messageID:handleCopy fromID:identityCopy fromShortHandle:0 fromIdentity:isCopy toID:accessTokenCopy toURIs:topicCopy accessToken:propertiesCopy topic:v51 registrationProperties:query fakeMessage:pushPriorityCopy alwaysSkipSelf:v52 alwaysIncludeSelf:timestampCopy forceQuery:listCopy pushPriority:v53 ignoreMaxRetryCount:objectCopy disallowRefresh:delayCopy originalTimestamp:timeCopy prioritizedTokenList:modeCopy wantsFirewallDonation:mapCopy destinationObject:containerCopy deliveryMinimumTimeDelay:metricCopy deliveryMinimumTime:blockCopy sendMode:sendBlockCopy KTURIVerificationMap:v81 sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];
}

- (void)_pipelinesHandleMessagesToCoalesce:(id)coalesce forService:(id)service sendMode:(id)mode
{
  coalesceCopy = coalesce;
  serviceCopy = service;
  modeCopy = mode;
  v42 = objc_alloc_init(NSMutableArray);
  v39 = objc_alloc_init(NSMutableDictionary);
  v31 = _os_activity_create(&_mh_execute_header, "All sends complete", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v38 = objc_alloc_init(NSMutableDictionary);
  v37 = objc_alloc_init(NSMutableDictionary);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = coalesceCopy;
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
        messageID = [v14 messageID];

        v16 = [v12 objectForKey:v10];
        deliveryAcknowledgementBlock = [v16 deliveryAcknowledgementBlock];

        v18 = [v12 objectForKey:v35];
        v19 = objc_retainBlock(deliveryAcknowledgementBlock);
        [v38 setObject:v19 forKey:messageID];

        v20 = objc_retainBlock(v18);
        [v37 setObject:v20 forKey:messageID];

        v21 = [v12 objectForKey:v34];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1004C3014;
        v51[3] = &unk_100BDE440;
        v52 = v39;
        v53 = v13;
        v22 = v13;
        [(IDSDeliveryController *)self _pipelineHandleMessage:v12 forURIs:v21 service:serviceCopy withCompletion:v51];

        promise = [v22 promise];
        [v42 addObject:promise];

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
  v44 = serviceCopy;
  selfCopy = self;
  v46 = v31;
  v47 = v39;
  v48 = v38;
  v49 = v37;
  v50 = modeCopy;
  v25 = modeCopy;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v31;
  v30 = serviceCopy;
  [v24 registerResultBlock:v43];
}

- (void)_pipelineHandleMessage:(id)message forURIs:(id)is service:(id)service
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004C334C;
  v10[3] = &unk_100BDE490;
  messageCopy = message;
  serviceCopy = service;
  selfCopy = self;
  v8 = serviceCopy;
  v9 = messageCopy;
  [(IDSDeliveryController *)self _pipelineHandleMessage:v9 forURIs:is service:v8 withCompletion:v10];
}

- (void)_pipelineHandleMessage:(id)message forURIs:(id)is service:(id)service withCompletion:(id)completion
{
  messageCopy = message;
  isCopy = is;
  serviceCopy = service;
  completionCopy = completion;
  v36 = +[NSDate date];
  v12 = [messageCopy objectForKey:IDSDeliveryCanUseLargePayloadKey];
  v13 = -[IDSDeliveryController effectiveMaxPayloadSizeIfCanUseLargePayload:](self, "effectiveMaxPayloadSizeIfCanUseLargePayload:", [v12 BOOLValue]);

  v40 = [[IDSDeliveryPipelineParameter alloc] initWithInfo:messageCopy uris:isCopy service:serviceCopy maxSize:v13];
  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IDSDeliveryPipelineParameter *)v40 guid];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = guid;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending guid %@ through delivery pipeline", &buf, 0xCu);
  }

  guid2 = [(IDSDeliveryPipelineParameter *)v40 guid];
  v17 = [guid2 copy];

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
  messageToSend = [(IDSDeliveryPipelineParameter *)v40 messageToSend];
  messageBody = [messageToSend messageBody];
  v23 = sub_10001B5D4(v20, messageBody, IDSCommandKey);

  LODWORD(messageToSend) = [v23 integerValue] != 133;
  v24 = [[IDSServiceProperties alloc] initWithServiceIdentifier:serviceCopy];
  if (([v24 supportsOfflineDelivery] & messageToSend) == 1)
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

  v25 = [messageCopy objectForKey:IDSDeliveryCompletionBlockKey];
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
  selfCopy = self;
  v29 = serviceCopy;
  v44 = v29;
  v30 = isCopy;
  v45 = v30;
  v31 = v25;
  v47 = v31;
  p_buf = &buf;
  v32 = v36;
  v46 = v32;
  v33 = completionCopy;
  v48 = v33;
  [v26 registerResultBlock:v41];

  _Block_object_dispose(&buf, 8);
}

- (id)_constructDeliveryPipeline
{
  v3 = [IDSMMCSUploader alloc];
  encryptionController = [(IDSDeliveryController *)self encryptionController];
  v5 = objc_alloc_init(IDSTransferServicesController);
  v6 = [(IDSMMCSUploader *)v3 initWithEncryptionController:encryptionController transferServicesController:v5];

  v7 = [IDSEndpointResolverComponent alloc];
  peerIDManager = [(IDSDeliveryController *)self peerIDManager];
  v9 = [(IDSEndpointResolverComponent *)v7 initWithQueryCache:peerIDManager];

  v10 = objc_alloc_init(IDSMadridEndpointFilterComponent);
  v11 = [IDSKeyTransparencyEndpointFilterComponent alloc];
  v12 = +[IDSKeyTransparencyVerifier sharedInstance];
  v13 = [(IDSKeyTransparencyEndpointFilterComponent *)v11 initWithTransparencyVerifier:v12];

  v14 = [IDSEncryptionComponent alloc];
  encryptionController2 = [(IDSDeliveryController *)self encryptionController];
  pinnedIdentityController = [(IDSDeliveryController *)self pinnedIdentityController];
  v17 = [(IDSEncryptionComponent *)v14 initWithEncryptionController:encryptionController2 pinnedIdentityController:pinnedIdentityController];

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
  peerIDManager = [(IDSDeliveryController *)self peerIDManager];
  v5 = [(IDSEndpointResolverComponent *)v3 initWithQueryCache:peerIDManager];

  v6 = objc_alloc_init(IDSMadridEndpointFilterComponent);
  v7 = [IDSIMLEncryptionComponent alloc];
  encryptionController = [(IDSDeliveryController *)self encryptionController];
  v9 = [(IDSIMLEncryptionComponent *)v7 initWithEncryptionController:encryptionController];

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

- (void)sendRTCMetricWithStartDate:(id)date endDate:(id)endDate endpointCount:(int64_t)count usedPipeline:(BOOL)pipeline usedMMCS:(BOOL)s responseCode:(int64_t)code
{
  sCopy = s;
  pipelineCopy = pipeline;
  endDateCopy = endDate;
  dateCopy = date;
  v15 = [[IDSDeliveryControllerTimeMetric alloc] initWithStartDate:dateCopy endDate:endDateCopy endpointCount:count usedPipeline:pipelineCopy usedMMCS:sCopy responseCode:code];

  v16 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [v15 timeToSend];
    v18 = v17;
    endpointCount = [v15 endpointCount];
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
    v26 = endpointCount;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    v31 = 2048;
    codeCopy = code;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Submitting metric { sendTime: %.4f, endpointCount: %ld, pipeline: %@, mmcs: %@ responseCode: %ld }", &v23, 0x34u);
  }

  v22 = [IDSRTCLogger loggerWithCategory:2000];
  [v22 logMetric:v15];
}

- (void)queueManager:(id)manager receivedMessagesToSend:(id)send forTopic:(id)topic sendMode:(id)mode
{
  sendCopy = send;
  topicCopy = topic;
  modeCopy = mode;
  v10 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v97 = topicCopy;
    v98 = 2048;
    v99 = [sendCopy count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDeliveryController received messages to coalesce for topic %@ count %lu", buf, 0x16u);
  }

  v31 = topicCopy;

  v56 = objc_alloc_init(NSMutableArray);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = sendCopy;
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
        bOOLValue = [v80 BOOLValue];
        v79 = [v12 objectForKey:v44];
        bOOLValue2 = [v79 BOOLValue];
        v76 = [v12 objectForKey:v45];
        bOOLValue3 = [v76 BOOLValue];
        v65 = [v12 objectForKey:v43];
        v74 = [v12 objectForKey:v42];
        bOOLValue4 = [v74 BOOLValue];
        v71 = [v12 objectForKey:v41];
        bOOLValue5 = [v71 BOOLValue];
        v69 = [v12 objectForKey:v40];
        bOOLValue6 = [v69 BOOLValue];
        v66 = [v12 objectForKey:v39];
        integerValue = [v66 integerValue];
        v63 = [v12 objectForKey:v38];
        bOOLValue7 = [v63 BOOLValue];
        v15 = [v12 objectForKey:v37];
        v16 = [v12 objectForKey:v36];
        v17 = [v12 objectForKey:v35];
        v18 = [v12 objectForKey:v34];
        v19 = [v12 objectForKey:v33];
        bOOLValue8 = [v19 BOOLValue];
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_1004C53D0;
        v89[3] = &unk_100BDE4E0;
        v90 = v13;
        v67 = v13;
        LOBYTE(v29) = bOOLValue8;
        LOBYTE(v28) = 0;
        LOBYTE(v27) = bOOLValue7;
        BYTE2(v26) = bOOLValue6;
        BYTE1(v26) = bOOLValue5;
        LOBYTE(v26) = bOOLValue4;
        BYTE2(v25) = bOOLValue3;
        BYTE1(v25) = bOOLValue2;
        LOBYTE(v25) = bOOLValue;
        [IDSDeliveryController _sendMessage:"_sendMessage:dataToEncrypt:withEncryptedAttributes:onService:fromID:fromShortHandle:fromIdentity:toID:toURIs:canUseLargePayload:sendOnePerToken:allowPartialSendsToSucceed:registrationProperties:fakeMessage:alwaysSkipSelf:alwaysIncludeSelf:forceQuery:disallowRefresh:prioritizedTokenList:wantsFirewallDonation:destinationObject:willSendBlock:completionBlock:firstAttemptDate:ktURIVerificationMap:fromCoalesceQueue:withQueryCompletion:" dataToEncrypt:v85 withEncryptedAttributes:v84 onService:v83 fromID:v78 fromShortHandle:v77 fromIdentity:v75 toID:v82 toURIs:v59 canUseLargePayload:v73 sendOnePerToken:v25 allowPartialSendsToSucceed:v65 registrationProperties:v26 fakeMessage:integerValue alwaysSkipSelf:v27 alwaysIncludeSelf:v15 forceQuery:v28 disallowRefresh:v16 prioritizedTokenList:v17 wantsFirewallDonation:v18 destinationObject:0 willSendBlock:0 completionBlock:v29 firstAttemptDate:v89 ktURIVerificationMap:? fromCoalesceQueue:? withQueryCompletion:?];

        promise = [v67 promise];
        [v56 addObject:promise];

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
  v88 = modeCopy;
  v23 = modeCopy;
  v24 = v31;
  [v22 registerResultBlock:v86];
}

@end