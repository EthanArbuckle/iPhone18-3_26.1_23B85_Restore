@interface IDSPeerAggregateMessage
- (BOOL)addAggregatableMessage:(id)message;
- (IDSPeerAggregateMessage)init;
- (IDSPeerAggregateMessage)initWithHighPriority:(BOOL)priority;
- (IDSPeerAggregateMessage)initWithPeerMessage:(id)message service:(id)service fromIdentity:(id)identity maxSize:(unint64_t)size;
- (id)_processMessageResponseForMessage:(id)message withError:(id)error resultCode:(int64_t)code toURI:(id)i fromURI:(id)rI service:(id)service fromIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (unint64_t)sizeOfKeysWithValues;
- (void)callAllAckBlocks;
- (void)callAllIndividualCompletionBlocksWithDeliveryContext:(id)context;
- (void)clearAllPendingResponseTokens;
- (void)logFailureInfo;
- (void)noteResponseForToken:(id)token;
- (void)setGroupIdentifer:(id)identifer;
- (void)setGroupPayload:(id)payload;
@end

@implementation IDSPeerAggregateMessage

- (IDSPeerAggregateMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSPeerAggregateMessage;
  v2 = [(IDSPeerAggregateMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSPeerAggregateMessage *)v2 setWantsResponse:1];
  }

  return v3;
}

- (IDSPeerAggregateMessage)initWithHighPriority:(BOOL)priority
{
  priorityCopy = priority;
  v4 = [(IDSPeerAggregateMessage *)self init];
  v5 = v4;
  if (v4)
  {
    [(IDSPeerAggregateMessage *)v4 setHighPriority:priorityCopy];
    if (!priorityCopy)
    {
      [(IDSPeerAggregateMessage *)v5 setTimeout:1200.0];
    }

    [(IDSPeerAggregateMessage *)v5 setChunkNumber:&off_100C3BB90];
  }

  return v5;
}

- (IDSPeerAggregateMessage)initWithPeerMessage:(id)message service:(id)service fromIdentity:(id)identity maxSize:(unint64_t)size
{
  messageCopy = message;
  serviceCopy = service;
  identityCopy = identity;
  v13 = [(IDSPeerAggregateMessage *)self init];
  if (v13)
  {
    -[IDSPeerAggregateMessage setHighPriority:](v13, "setHighPriority:", [messageCopy highPriority]);
    if ([(IDSPeerAggregateMessage *)v13 highPriority])
    {
      [messageCopy timeout];
    }

    else
    {
      v14 = 1200.0;
    }

    [(IDSPeerAggregateMessage *)v13 setTimeout:v14];
    sourcePeerID = [messageCopy sourcePeerID];
    [(IDSPeerAggregateMessage *)v13 setSourcePeerID:sourcePeerID];

    sourceShortHandle = [messageCopy sourceShortHandle];
    [(IDSPeerAggregateMessage *)v13 setSourceShortHandle:sourceShortHandle];

    messageID = [messageCopy messageID];
    [(IDSPeerAggregateMessage *)v13 setMessageID:messageID];

    -[IDSPeerAggregateMessage setFireAndForget:](v13, "setFireAndForget:", [messageCopy fireAndForget]);
    -[IDSPeerAggregateMessage setHighPriority:](v13, "setHighPriority:", [messageCopy highPriority]);
    -[IDSPeerAggregateMessage setWantsResponse:](v13, "setWantsResponse:", [messageCopy wantsResponse]);
    topic = [messageCopy topic];
    [(IDSPeerAggregateMessage *)v13 setTopic:topic];

    additionalDictionary = [messageCopy additionalDictionary];
    [(IDSPeerAggregateMessage *)v13 setAdditionalDictionary:additionalDictionary];

    encryptionType = [messageCopy encryptionType];
    [(IDSPeerAggregateMessage *)v13 setEncryptionType:encryptionType];

    expirationDate = [messageCopy expirationDate];
    [(IDSPeerAggregateMessage *)v13 setExpirationDate:expirationDate];

    -[IDSPeerAggregateMessage setWantsMultipleResponses:](v13, "setWantsMultipleResponses:", [messageCopy wantsResponse]);
    [(IDSPeerAggregateMessage *)v13 setMaxSize:size];
    originalTimestamp = [messageCopy originalTimestamp];
    [(IDSPeerAggregateMessage *)v13 setOriginalTimestamp:originalTimestamp];

    priority = [messageCopy priority];
    [(IDSPeerAggregateMessage *)v13 setPriority:priority];

    deliveryStatusContext = [messageCopy deliveryStatusContext];
    [(IDSPeerAggregateMessage *)v13 setDeliveryStatusContext:deliveryStatusContext];

    userInfo = [messageCopy userInfo];
    [(IDSPeerAggregateMessage *)v13 setUserInfo:userInfo];

    serviceData = [messageCopy serviceData];
    [(IDSPeerAggregateMessage *)v13 setServiceData:serviceData];

    clientInfo = [messageCopy clientInfo];
    [(IDSPeerAggregateMessage *)v13 setClientInfo:clientInfo];

    [(IDSPeerAggregateMessage *)v13 setChunkNumber:&off_100C3BB90];
    [(IDSPeerAggregateMessage *)v13 setTargetService:serviceCopy];
    [(IDSPeerAggregateMessage *)v13 setFromIdentity:identityCopy];
    -[IDSPeerAggregateMessage setIgnoreMaxRetryCount:](v13, "setIgnoreMaxRetryCount:", [messageCopy ignoreMaxRetryCount]);
    deliveryMinimumTimeDelay = [messageCopy deliveryMinimumTimeDelay];
    [(IDSPeerAggregateMessage *)v13 setDeliveryMinimumTimeDelay:deliveryMinimumTimeDelay];

    deliveryMinimumTime = [messageCopy deliveryMinimumTime];
    [(IDSPeerAggregateMessage *)v13 setDeliveryMinimumTime:deliveryMinimumTime];

    sendReasonContainer = [messageCopy sendReasonContainer];
    [(IDSPeerAggregateMessage *)v13 setSendReasonContainer:sendReasonContainer];

    -[IDSPeerAggregateMessage setLastBeforeRateLimit:](v13, "setLastBeforeRateLimit:", [messageCopy lastBeforeRateLimit]);
    sendMetric = [messageCopy sendMetric];
    [(IDSPeerAggregateMessage *)v13 setSendMetric:sendMetric];
  }

  return v13;
}

- (BOOL)addAggregatableMessage:(id)message
{
  messageCopy = message;
  individualPeerMessages = self->_individualPeerMessages;
  if (!individualPeerMessages)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_individualPeerMessages;
    self->_individualPeerMessages = v6;

    individualPeerMessages = self->_individualPeerMessages;
  }

  [(NSMutableSet *)individualPeerMessages addObject:messageCopy];
  if ([(IDSPeerAggregateMessage *)self wantsMultipleResponses])
  {
    pendingResponseTokens = self->_pendingResponseTokens;
    if (!pendingResponseTokens)
    {
      v9 = objc_alloc_init(NSMutableSet);
      v10 = self->_pendingResponseTokens;
      self->_pendingResponseTokens = v9;

      pendingResponseTokens = self->_pendingResponseTokens;
    }

    targetToken = [messageCopy targetToken];
    [(NSMutableSet *)pendingResponseTokens addObject:targetToken];
  }

  currentSize = self->_currentSize;
  self->_currentSize = [messageCopy sizeOfKeysWithValues] + currentSize;

  return 1;
}

- (void)setGroupPayload:(id)payload
{
  objc_storeStrong(&self->_groupPayload, payload);
  payloadCopy = payload;
  v6 = [payloadCopy length];

  self->_currentSize += v6;
}

- (void)setGroupIdentifer:(id)identifer
{
  objc_storeStrong(&self->_groupIdentifer, identifer);
  identiferCopy = identifer;
  v6 = [identiferCopy length];

  self->_currentSize += v6;
}

- (void)callAllIndividualCompletionBlocksWithDeliveryContext:(id)context
{
  contextCopy = context;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_individualPeerMessages;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        completionBlock = [*(*(&v11 + 1) + 8 * v9) completionBlock];
        (completionBlock)[2](completionBlock, contextCopy);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)clearAllPendingResponseTokens
{
  v3 = [[NSMutableSet alloc] initWithSet:self->_pendingResponseTokens];
  pendingResponseTokens = self->_pendingResponseTokens;
  self->_pendingResponseTokens = v3;

  v5 = self->_pendingResponseTokens;

  [(NSMutableSet *)v5 removeAllObjects];
}

- (void)callAllAckBlocks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_individualPeerMessages;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        ackBlock = [*(*(&v9 + 1) + 8 * v7) ackBlock];
        (ackBlock)[2](ackBlock, self);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(IDSPeerAggregateMessage *)self setHasReceivedAPSDAck:1];
}

- (void)noteResponseForToken:(id)token
{
  tokenCopy = token;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    responseToken = [tokenCopy responseToken];
    pendingResponseTokens = self->_pendingResponseTokens;
    *buf = 138412546;
    v44 = responseToken;
    v45 = 2112;
    v46 = pendingResponseTokens;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing token %@ from %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    responseToken2 = [tokenCopy responseToken];
    v36 = self->_pendingResponseTokens;
    _IDSLogV();
  }

  responseToken3 = [tokenCopy responseToken];
  v9 = responseToken3 == 0;

  if (v9)
  {
    [(IDSPeerAggregateMessage *)self callAllIndividualCompletionBlocksWithDeliveryContext:tokenCopy];
    [(IDSPeerAggregateMessage *)self clearAllPendingResponseTokens];
  }

  else
  {
    if (![(IDSPeerAggregateMessage *)self hasReceivedAPSDAck])
    {
      [(IDSPeerAggregateMessage *)self callAllAckBlocks];
    }

    v10 = [[NSMutableSet alloc] initWithSet:self->_pendingResponseTokens];
    v11 = self->_pendingResponseTokens;
    self->_pendingResponseTokens = v10;

    v12 = self->_pendingResponseTokens;
    responseToken4 = [tokenCopy responseToken];
    LODWORD(v12) = [(NSMutableSet *)v12 containsObject:responseToken4];

    if (v12)
    {
      v14 = self->_pendingResponseTokens;
      responseToken5 = [tokenCopy responseToken];
      [(NSMutableSet *)v14 removeObject:responseToken5];

      v16 = [[NSMutableSet alloc] initWithSet:self->_individualPeerMessages];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v18)
      {
        v19 = *v39;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            targetToken = [v21 targetToken];
            responseToken6 = [tokenCopy responseToken];
            v24 = [targetToken isEqual:responseToken6];

            if (v24)
            {
              completionBlock = [v21 completionBlock];
              responseError = [tokenCopy responseError];
              responseCode = [tokenCopy responseCode];
              targetPeerID = [v21 targetPeerID];
              sourcePeerID = [(IDSPeerAggregateMessage *)self sourcePeerID];
              targetService = [(IDSPeerAggregateMessage *)self targetService];
              fromIdentity = [(IDSPeerAggregateMessage *)self fromIdentity];
              v31 = [(IDSPeerAggregateMessage *)self _processMessageResponseForMessage:v21 withError:responseError resultCode:responseCode toURI:targetPeerID fromURI:sourcePeerID service:targetService fromIdentity:fromIdentity];

              [tokenCopy setResponseError:v31];
              v32 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                responseTimeStamp = [tokenCopy responseTimeStamp];
                *buf = 138412290;
                v44 = responseTimeStamp;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "DeliveryContext Timestamp is %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                responseTimeStamp2 = [tokenCopy responseTimeStamp];
                _IDSLogV();
              }

              (completionBlock)[2](completionBlock, tokenCopy);
              [v17 removeObject:v21];

              goto LABEL_26;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      [(IDSPeerAggregateMessage *)self setIndividualPeerMessages:v17];
    }
  }
}

- (id)_processMessageResponseForMessage:(id)message withError:(id)error resultCode:(int64_t)code toURI:(id)i fromURI:(id)rI service:(id)service fromIdentity:(id)identity
{
  messageCopy = message;
  errorCopy = error;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  identityCopy = identity;
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    codeCopy = code;
    v59 = 2112;
    v60 = messageCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Processing response %ld for message %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    codeCopy2 = code;
    v45 = messageCopy;
    _IDSLogV();
  }

  if (code < 2 || code == 1003)
  {
    goto LABEL_13;
  }

  if (code == 1002)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      pushToken = [(IDSPeerAggregateMessage *)self pushToken];
      *buf = 138412802;
      codeCopy = rICopy;
      v59 = 2112;
      v60 = iCopy;
      v61 = 2112;
      v62 = pushToken;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Message has been removed, Add Honeybee support here to grab logs from the other side who sent this FromURI:%@ ToURI:%@ Token:%@ ", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      pushToken2 = [(IDSPeerAggregateMessage *)self pushToken];
      _IDSWarnV();

      v50 = [(IDSPeerAggregateMessage *)self pushToken:rICopy];
      _IDSLogV();

      [(IDSPeerAggregateMessage *)self pushToken:rICopy];
      v48 = v45 = iCopy;
      codeCopy2 = rICopy;
      _IDSLogTransport();
    }

LABEL_13:
    v22 = 1;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_15:
  v23 = [IDSURI URIWithPrefixedURI:rICopy withServiceLoggingHint:serviceCopy, codeCopy2, v45, v48];
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    if (code == 7000)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        codeCopy = rICopy;
        v59 = 2112;
        v60 = iCopy;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Message was rate limited from the server, failing message (%@ -> %@)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v43 = rICopy;
        v46 = iCopy;
        _IDSLogTransport();
      }

      if ([IDSAutoBugCapture isSupported:v43])
      {
        [IDSAutoBugCapture triggerCaptureWithEvent:102 context:@"NiceRateLimited" completion:&stru_100BD95D0];
      }
    }

    else if (code == 5032)
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        targetToken = [messageCopy targetToken];
        v27 = [targetToken debugDescription];
        targetSessionToken = [messageCopy targetSessionToken];
        v29 = [targetSessionToken debugDescription];
        *buf = 138413570;
        codeCopy = messageCopy;
        v59 = 2112;
        v60 = iCopy;
        v61 = 2112;
        v62 = rICopy;
        v63 = 2112;
        v64 = v27;
        v65 = 2112;
        v66 = v29;
        v67 = 2112;
        v68 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Bad signature {message: %@, localURI: %@, remoteURI: %@, remotePushToken: %@, sessionToken: %@, service: %@}", buf, 0x3Eu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        targetToken2 = [messageCopy targetToken];
        v31 = [targetToken2 debugDescription];
        targetSessionToken2 = [messageCopy targetSessionToken];
        v53 = [targetSessionToken2 debugDescription];
        v54 = serviceCopy;
        v51 = rICopy;
        v52 = v31;
        v43 = messageCopy;
        v46 = iCopy;
        _IDSLogV();
      }

      v33 = [IDSPeerIDManager sharedInstance:v43];
      targetToken3 = [messageCopy targetToken];
      LOBYTE(v47) = 0;
      v35 = [v33 sessionTokenForURI:iCopy pushToken:targetToken3 fromURI:v23 service:serviceCopy expirationDate:0 refreshDate:0 fromIdentity:identityCopy includeSelfDevice:v47];

      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        codeCopy = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " current sessionToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v44 = v35;
        _IDSLogV();
      }

      v37 = +[IDSPeerIDManager sharedInstance];
      [v37 forgetPeerTokensForURI:iCopy fromURI:v23 service:serviceCopy reason:6];
    }

    else
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unknown Error, Failing message", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    v40 = [NSDictionary dictionaryWithObjectsAndKeys:errorCopy, NSUnderlyingErrorKey, 0];
    v24 = [NSError errorWithDomain:IDSSendErrorDomain code:2 userInfo:v40];
  }

  return v24;
}

- (void)logFailureInfo
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    messageID = [(IDSPeerAggregateMessage *)self messageID];
    uniqueIDString = [(IDSPeerAggregateMessage *)self uniqueIDString];
    *buf = 138412546;
    v15 = messageID;
    v16 = 2112;
    v17 = uniqueIDString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Msg with GUID: %@ & i:%@ is missing 255s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    messageID2 = [(IDSPeerAggregateMessage *)self messageID];
    uniqueIDString2 = [(IDSPeerAggregateMessage *)self uniqueIDString];
    _IDSLogV();
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pendingResponseTokens = self->_pendingResponseTokens;
    *buf = 138412290;
    v15 = pendingResponseTokens;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    chunkNumber = self->_chunkNumber;
    *buf = 138412290;
    v15 = chunkNumber;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Chunk: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isFinalMessage)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "WasLast?: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (unint64_t)sizeOfKeysWithValues
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_individualPeerMessages;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v19 + 1) + 8 * i) sizeOfKeysWithValues];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  messageID = [(IDSPeerAggregateMessage *)self messageID];
  v10 = messageID;
  if (messageID && (v11 = [messageID UTF8String]) != 0)
  {
    memset(uu, 170, sizeof(uu));
    uuid_parse(v11, uu);
    jw_uuid_to_data();
    v12 = 0;
    v13 = [v12 length];
  }

  else
  {
    v13 = 0;
  }

  sourcePeerID = [(IDSPeerAggregateMessage *)self sourcePeerID];
  v15 = [sourcePeerID lengthOfBytesUsingEncoding:4];

  encryptionType = [(IDSPeerAggregateMessage *)self encryptionType];
  v17 = [encryptionType lengthOfBytesUsingEncoding:4];

  return v15 + v13 + v6 + v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25.receiver = self;
  v25.super_class = IDSPeerAggregateMessage;
  v4 = [(IDSPeerAggregateMessage *)&v25 copyWithZone:zone];
  sourcePeerID = [(IDSPeerAggregateMessage *)self sourcePeerID];
  [v4 setSourcePeerID:sourcePeerID];

  encryptionType = [(IDSPeerAggregateMessage *)self encryptionType];
  [v4 setEncryptionType:encryptionType];

  messageID = [(IDSPeerAggregateMessage *)self messageID];
  [v4 setMessageID:messageID];

  priority = [(IDSPeerAggregateMessage *)self priority];
  [v4 setPriority:priority];

  expirationDate = [(IDSPeerAggregateMessage *)self expirationDate];
  [v4 setExpirationDate:expirationDate];

  additionalDictionary = [(IDSPeerAggregateMessage *)self additionalDictionary];
  [v4 setAdditionalDictionary:additionalDictionary];

  individualPeerMessages = [(IDSPeerAggregateMessage *)self individualPeerMessages];
  [v4 setIndividualPeerMessages:individualPeerMessages];

  pendingResponseTokens = [(IDSPeerAggregateMessage *)self pendingResponseTokens];
  v13 = [pendingResponseTokens mutableCopy];
  [v4 setPendingResponseTokens:v13];

  [v4 setMaxSize:{-[IDSPeerAggregateMessage maxSize](self, "maxSize")}];
  [v4 setCurrentSize:{-[IDSPeerAggregateMessage currentSize](self, "currentSize")}];
  [v4 setFireAndForget:{-[IDSPeerAggregateMessage fireAndForget](self, "fireAndForget")}];
  [v4 setHasReceivedAPSDAck:{-[IDSPeerAggregateMessage hasReceivedAPSDAck](self, "hasReceivedAPSDAck")}];
  chunkNumber = [(IDSPeerAggregateMessage *)self chunkNumber];
  [v4 setChunkNumber:chunkNumber];

  [v4 setIsFinalMessage:{-[IDSPeerAggregateMessage isFinalMessage](self, "isFinalMessage")}];
  targetService = [(IDSPeerAggregateMessage *)self targetService];
  [v4 setTargetService:targetService];

  fromIdentity = [(IDSPeerAggregateMessage *)self fromIdentity];
  [v4 setFromIdentity:fromIdentity];

  groupPayload = [(IDSPeerAggregateMessage *)self groupPayload];
  [v4 setGroupPayload:groupPayload];

  groupIdentifer = [(IDSPeerAggregateMessage *)self groupIdentifer];
  [v4 setGroupIdentifer:groupIdentifer];

  deliveryMinimumTimeDelay = [(IDSPeerAggregateMessage *)self deliveryMinimumTimeDelay];
  [v4 setDeliveryMinimumTimeDelay:deliveryMinimumTimeDelay];

  deliveryMinimumTime = [(IDSPeerAggregateMessage *)self deliveryMinimumTime];
  [v4 setDeliveryMinimumTime:deliveryMinimumTime];

  sendReasonContainer = [(IDSPeerAggregateMessage *)self sendReasonContainer];
  [v4 setSendReasonContainer:sendReasonContainer];

  [v4 setLastBeforeRateLimit:{-[IDSPeerAggregateMessage lastBeforeRateLimit](self, "lastBeforeRateLimit")}];
  sendMetric = [(IDSPeerAggregateMessage *)self sendMetric];
  v23 = [sendMetric copy];
  [v4 setSendMetric:v23];

  return v4;
}

- (id)requiredKeys
{
  v5.receiver = self;
  v5.super_class = IDSPeerAggregateMessage;
  requiredKeys = [(IDSPeerAggregateMessage *)&v5 requiredKeys];
  v3 = [requiredKeys mutableCopy];

  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableArray);
  }

  [v3 addObject:@"dtl"];

  return v3;
}

- (id)messageBody
{
  v67.receiver = self;
  v67.super_class = IDSPeerAggregateMessage;
  messageBody = [(IDSPeerAggregateMessage *)&v67 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  messageID = [(IDSPeerAggregateMessage *)self messageID];
  v6 = messageID;
  if (messageID)
  {
    uTF8String = [messageID UTF8String];
    if (uTF8String)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String, uu);
      v66 = 0;
      jw_uuid_to_data();
      v8 = 0;
      if (v8)
      {
        CFDictionarySetValue(Mutable, @"U", v8);
      }
    }
  }

  additionalDictionary = self->_additionalDictionary;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100378A68;
  v64[3] = &unk_100BD95F8;
  v10 = Mutable;
  v65 = v10;
  [(NSDictionary *)additionalDictionary enumerateKeysAndObjectsUsingBlock:v64];
  sourcePeerID = [(IDSPeerAggregateMessage *)self sourcePeerID];
  if (sourcePeerID)
  {
    CFDictionarySetValue(v10, @"sP", sourcePeerID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009184F8();
  }

  sourceShortHandle = [(IDSPeerAggregateMessage *)self sourceShortHandle];
  if (sourceShortHandle)
  {
    CFDictionarySetValue(v10, @"sPs", sourceShortHandle);
  }

  if ([(IDSPeerAggregateMessage *)self fireAndForget])
  {
    CFDictionarySetValue(v10, IDSExpirationDateKey, &off_100C3BBA8);
  }

  else
  {
    expirationDate = [(IDSPeerAggregateMessage *)self expirationDate];

    if (expirationDate)
    {
      expirationDate2 = [(IDSPeerAggregateMessage *)self expirationDate];
      [expirationDate2 timeIntervalSince1970];
      v16 = [NSNumber numberWithUnsignedLong:v15];

      if (v16)
      {
        CFDictionarySetValue(v10, IDSExpirationDateKey, v16);
      }
    }
  }

  encryptionType = [(IDSPeerAggregateMessage *)self encryptionType];
  if (encryptionType)
  {
    v18 = encryptionType;
    encryptionType2 = [(IDSPeerAggregateMessage *)self encryptionType];
    v20 = IDSEncryptionTypeStringFromEncryptionType();
    v21 = [encryptionType2 isEqualToIgnoringCase:v20];

    if ((v21 & 1) == 0)
    {
      encryptionType3 = [(IDSPeerAggregateMessage *)self encryptionType];
      if (encryptionType3)
      {
        CFDictionarySetValue(v10, @"E", encryptionType3);
      }
    }
  }

  groupPayload = [(IDSPeerAggregateMessage *)self groupPayload];
  v24 = [groupPayload length];

  if (v24)
  {
    v25 = IDSEncryptionTypeStringFromEncryptionType();
    if (v25)
    {
      CFDictionarySetValue(v10, @"E", v25);
    }
  }

  additionalDictionary = [(IDSPeerAggregateMessage *)self additionalDictionary];
  v27 = [additionalDictionary objectForKey:@"c"];

  topic = [(IDSPeerAggregateMessage *)self topic];
  v29 = IDSServiceNameiMessageLite;
  if ([topic isEqualToString:IDSServiceNameiMessageLite])
  {
    unsignedIntegerValue = [v27 unsignedIntegerValue];

    if (unsignedIntegerValue != 100)
    {
      goto LABEL_34;
    }

    topic = IDSEncryptionTypeStringFromEncryptionType();
    if (topic)
    {
      CFDictionarySetValue(v10, @"E", topic);
    }
  }

LABEL_34:
  topic2 = [(IDSPeerAggregateMessage *)self topic];
  if ([topic2 isEqualToString:v29])
  {
    if ([v27 unsignedIntegerValue] == 100)
    {

LABEL_39:
      CFDictionarySetValue(v10, IDSDesiredProtocolKey, &off_100C3BBA8);
      goto LABEL_40;
    }

    unsignedIntegerValue2 = [v27 unsignedIntegerValue];

    if (unsignedIntegerValue2 == 128)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

LABEL_40:
  priority = [(IDSPeerAggregateMessage *)self priority];
  if (priority)
  {
    v34 = priority;
    priority2 = [(IDSPeerAggregateMessage *)self priority];
    intValue = [priority2 intValue];

    if (intValue != 10)
    {
      priority3 = [(IDSPeerAggregateMessage *)self priority];
      if (priority3)
      {
        CFDictionarySetValue(v10, @"pri", priority3);
      }
    }
  }

  chunkNumber = [(IDSPeerAggregateMessage *)self chunkNumber];
  if (chunkNumber)
  {
    CFDictionarySetValue(v10, @"fcn", chunkNumber);
  }

  if ([(IDSPeerAggregateMessage *)self isFinalMessage])
  {
    CFDictionarySetValue(v10, @"flc", &off_100C3BB90);
  }

  deliveryMinimumTimeDelay = [(IDSPeerAggregateMessage *)self deliveryMinimumTimeDelay];

  if (deliveryMinimumTimeDelay)
  {
    deliveryMinimumTimeDelay2 = [(IDSPeerAggregateMessage *)self deliveryMinimumTimeDelay];
    if (deliveryMinimumTimeDelay2)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeDelayKey, deliveryMinimumTimeDelay2);
    }
  }

  deliveryMinimumTime = [(IDSPeerAggregateMessage *)self deliveryMinimumTime];

  if (deliveryMinimumTime)
  {
    deliveryMinimumTime2 = [(IDSPeerAggregateMessage *)self deliveryMinimumTime];
    if (deliveryMinimumTime2)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeKey, deliveryMinimumTime2);
    }
  }

  if ([(IDSPeerAggregateMessage *)self lastBeforeRateLimit])
  {
    CFDictionarySetValue(v10, IDSLastBeforeRateLimitKey, &off_100C3BB90);
  }

  sendMetric = [(IDSPeerAggregateMessage *)self sendMetric];
  samplingID = [sendMetric samplingID];

  if (samplingID)
  {
    uTF8String2 = [samplingID UTF8String];
    if (uTF8String2)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String2, uu);
      v63 = 0;
      jw_uuid_to_data();
      v46 = 0;
      if (v46)
      {
        CFDictionarySetValue(v10, IDSSamplingUUIDKey, v46);
      }
    }
  }

  groupPayload2 = [(IDSPeerAggregateMessage *)self groupPayload];
  if (groupPayload2)
  {
    CFDictionarySetValue(v10, @"P", groupPayload2);
  }

  groupIdentifer = [(IDSPeerAggregateMessage *)self groupIdentifer];
  if (groupIdentifer)
  {
    CFDictionarySetValue(v10, @"gI", groupIdentifer);
  }

  v49 = objc_alloc_init(NSMutableArray);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v50 = self->_individualPeerMessages;
  v51 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v60;
    do
    {
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(v50);
        }

        dictionaryRepresentation = [*(*(&v59 + 1) + 8 * i) dictionaryRepresentation];
        [v49 addObject:dictionaryRepresentation];
      }

      v52 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v52);
  }

  v56 = v49;
  if (v56)
  {
    CFDictionarySetValue(v10, @"dtl", v56);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100918594();
  }

  v57 = v10;
  return v10;
}

@end