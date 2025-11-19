@interface IDSPeerAggregateMessage
- (BOOL)addAggregatableMessage:(id)a3;
- (IDSPeerAggregateMessage)init;
- (IDSPeerAggregateMessage)initWithHighPriority:(BOOL)a3;
- (IDSPeerAggregateMessage)initWithPeerMessage:(id)a3 service:(id)a4 fromIdentity:(id)a5 maxSize:(unint64_t)a6;
- (id)_processMessageResponseForMessage:(id)a3 withError:(id)a4 resultCode:(int64_t)a5 toURI:(id)a6 fromURI:(id)a7 service:(id)a8 fromIdentity:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (unint64_t)sizeOfKeysWithValues;
- (void)callAllAckBlocks;
- (void)callAllIndividualCompletionBlocksWithDeliveryContext:(id)a3;
- (void)clearAllPendingResponseTokens;
- (void)logFailureInfo;
- (void)noteResponseForToken:(id)a3;
- (void)setGroupIdentifer:(id)a3;
- (void)setGroupPayload:(id)a3;
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

- (IDSPeerAggregateMessage)initWithHighPriority:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSPeerAggregateMessage *)self init];
  v5 = v4;
  if (v4)
  {
    [(IDSPeerAggregateMessage *)v4 setHighPriority:v3];
    if (!v3)
    {
      [(IDSPeerAggregateMessage *)v5 setTimeout:1200.0];
    }

    [(IDSPeerAggregateMessage *)v5 setChunkNumber:&off_100C3BB90];
  }

  return v5;
}

- (IDSPeerAggregateMessage)initWithPeerMessage:(id)a3 service:(id)a4 fromIdentity:(id)a5 maxSize:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(IDSPeerAggregateMessage *)self init];
  if (v13)
  {
    -[IDSPeerAggregateMessage setHighPriority:](v13, "setHighPriority:", [v10 highPriority]);
    if ([(IDSPeerAggregateMessage *)v13 highPriority])
    {
      [v10 timeout];
    }

    else
    {
      v14 = 1200.0;
    }

    [(IDSPeerAggregateMessage *)v13 setTimeout:v14];
    v15 = [v10 sourcePeerID];
    [(IDSPeerAggregateMessage *)v13 setSourcePeerID:v15];

    v16 = [v10 sourceShortHandle];
    [(IDSPeerAggregateMessage *)v13 setSourceShortHandle:v16];

    v17 = [v10 messageID];
    [(IDSPeerAggregateMessage *)v13 setMessageID:v17];

    -[IDSPeerAggregateMessage setFireAndForget:](v13, "setFireAndForget:", [v10 fireAndForget]);
    -[IDSPeerAggregateMessage setHighPriority:](v13, "setHighPriority:", [v10 highPriority]);
    -[IDSPeerAggregateMessage setWantsResponse:](v13, "setWantsResponse:", [v10 wantsResponse]);
    v18 = [v10 topic];
    [(IDSPeerAggregateMessage *)v13 setTopic:v18];

    v19 = [v10 additionalDictionary];
    [(IDSPeerAggregateMessage *)v13 setAdditionalDictionary:v19];

    v20 = [v10 encryptionType];
    [(IDSPeerAggregateMessage *)v13 setEncryptionType:v20];

    v21 = [v10 expirationDate];
    [(IDSPeerAggregateMessage *)v13 setExpirationDate:v21];

    -[IDSPeerAggregateMessage setWantsMultipleResponses:](v13, "setWantsMultipleResponses:", [v10 wantsResponse]);
    [(IDSPeerAggregateMessage *)v13 setMaxSize:a6];
    v22 = [v10 originalTimestamp];
    [(IDSPeerAggregateMessage *)v13 setOriginalTimestamp:v22];

    v23 = [v10 priority];
    [(IDSPeerAggregateMessage *)v13 setPriority:v23];

    v24 = [v10 deliveryStatusContext];
    [(IDSPeerAggregateMessage *)v13 setDeliveryStatusContext:v24];

    v25 = [v10 userInfo];
    [(IDSPeerAggregateMessage *)v13 setUserInfo:v25];

    v26 = [v10 serviceData];
    [(IDSPeerAggregateMessage *)v13 setServiceData:v26];

    v27 = [v10 clientInfo];
    [(IDSPeerAggregateMessage *)v13 setClientInfo:v27];

    [(IDSPeerAggregateMessage *)v13 setChunkNumber:&off_100C3BB90];
    [(IDSPeerAggregateMessage *)v13 setTargetService:v11];
    [(IDSPeerAggregateMessage *)v13 setFromIdentity:v12];
    -[IDSPeerAggregateMessage setIgnoreMaxRetryCount:](v13, "setIgnoreMaxRetryCount:", [v10 ignoreMaxRetryCount]);
    v28 = [v10 deliveryMinimumTimeDelay];
    [(IDSPeerAggregateMessage *)v13 setDeliveryMinimumTimeDelay:v28];

    v29 = [v10 deliveryMinimumTime];
    [(IDSPeerAggregateMessage *)v13 setDeliveryMinimumTime:v29];

    v30 = [v10 sendReasonContainer];
    [(IDSPeerAggregateMessage *)v13 setSendReasonContainer:v30];

    -[IDSPeerAggregateMessage setLastBeforeRateLimit:](v13, "setLastBeforeRateLimit:", [v10 lastBeforeRateLimit]);
    v31 = [v10 sendMetric];
    [(IDSPeerAggregateMessage *)v13 setSendMetric:v31];
  }

  return v13;
}

- (BOOL)addAggregatableMessage:(id)a3
{
  v4 = a3;
  individualPeerMessages = self->_individualPeerMessages;
  if (!individualPeerMessages)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_individualPeerMessages;
    self->_individualPeerMessages = v6;

    individualPeerMessages = self->_individualPeerMessages;
  }

  [(NSMutableSet *)individualPeerMessages addObject:v4];
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

    v11 = [v4 targetToken];
    [(NSMutableSet *)pendingResponseTokens addObject:v11];
  }

  currentSize = self->_currentSize;
  self->_currentSize = [v4 sizeOfKeysWithValues] + currentSize;

  return 1;
}

- (void)setGroupPayload:(id)a3
{
  objc_storeStrong(&self->_groupPayload, a3);
  v5 = a3;
  v6 = [v5 length];

  self->_currentSize += v6;
}

- (void)setGroupIdentifer:(id)a3
{
  objc_storeStrong(&self->_groupIdentifer, a3);
  v5 = a3;
  v6 = [v5 length];

  self->_currentSize += v6;
}

- (void)callAllIndividualCompletionBlocksWithDeliveryContext:(id)a3
{
  v4 = a3;
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

        v10 = [*(*(&v11 + 1) + 8 * v9) completionBlock];
        (v10)[2](v10, v4);

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

        v8 = [*(*(&v9 + 1) + 8 * v7) ackBlock];
        (v8)[2](v8, self);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(IDSPeerAggregateMessage *)self setHasReceivedAPSDAck:1];
}

- (void)noteResponseForToken:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 responseToken];
    pendingResponseTokens = self->_pendingResponseTokens;
    *buf = 138412546;
    v44 = v6;
    v45 = 2112;
    v46 = pendingResponseTokens;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing token %@ from %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v34 = [v4 responseToken];
    v36 = self->_pendingResponseTokens;
    _IDSLogV();
  }

  v8 = [v4 responseToken];
  v9 = v8 == 0;

  if (v9)
  {
    [(IDSPeerAggregateMessage *)self callAllIndividualCompletionBlocksWithDeliveryContext:v4];
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
    v13 = [v4 responseToken];
    LODWORD(v12) = [(NSMutableSet *)v12 containsObject:v13];

    if (v12)
    {
      v14 = self->_pendingResponseTokens;
      v15 = [v4 responseToken];
      [(NSMutableSet *)v14 removeObject:v15];

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
            v22 = [v21 targetToken];
            v23 = [v4 responseToken];
            v24 = [v22 isEqual:v23];

            if (v24)
            {
              v37 = [v21 completionBlock];
              v25 = [v4 responseError];
              v26 = [v4 responseCode];
              v27 = [v21 targetPeerID];
              v28 = [(IDSPeerAggregateMessage *)self sourcePeerID];
              v29 = [(IDSPeerAggregateMessage *)self targetService];
              v30 = [(IDSPeerAggregateMessage *)self fromIdentity];
              v31 = [(IDSPeerAggregateMessage *)self _processMessageResponseForMessage:v21 withError:v25 resultCode:v26 toURI:v27 fromURI:v28 service:v29 fromIdentity:v30];

              [v4 setResponseError:v31];
              v32 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [v4 responseTimeStamp];
                *buf = 138412290;
                v44 = v33;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "DeliveryContext Timestamp is %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v35 = [v4 responseTimeStamp];
                _IDSLogV();
              }

              (v37)[2](v37, v4);
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

- (id)_processMessageResponseForMessage:(id)a3 withError:(id)a4 resultCode:(int64_t)a5 toURI:(id)a6 fromURI:(id)a7 service:(id)a8 fromIdentity:(id)a9
{
  v15 = a3;
  v56 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v55 = a9;
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v58 = a5;
    v59 = 2112;
    v60 = v15;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Processing response %ld for message %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v42 = a5;
    v45 = v15;
    _IDSLogV();
  }

  if (a5 < 2 || a5 == 1003)
  {
    goto LABEL_13;
  }

  if (a5 == 1002)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(IDSPeerAggregateMessage *)self pushToken];
      *buf = 138412802;
      v58 = v17;
      v59 = 2112;
      v60 = v16;
      v61 = 2112;
      v62 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Message has been removed, Add Honeybee support here to grab logs from the other side who sent this FromURI:%@ ToURI:%@ Token:%@ ", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v49 = [(IDSPeerAggregateMessage *)self pushToken];
      _IDSWarnV();

      v50 = [(IDSPeerAggregateMessage *)self pushToken:v17];
      _IDSLogV();

      [(IDSPeerAggregateMessage *)self pushToken:v17];
      v48 = v45 = v16;
      v42 = v17;
      _IDSLogTransport();
    }

LABEL_13:
    v22 = 1;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_15:
  v23 = [IDSURI URIWithPrefixedURI:v17 withServiceLoggingHint:v18, v42, v45, v48];
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    if (a5 == 7000)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v58 = v17;
        v59 = 2112;
        v60 = v16;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Message was rate limited from the server, failing message (%@ -> %@)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v43 = v17;
        v46 = v16;
        _IDSLogTransport();
      }

      if ([IDSAutoBugCapture isSupported:v43])
      {
        [IDSAutoBugCapture triggerCaptureWithEvent:102 context:@"NiceRateLimited" completion:&stru_100BD95D0];
      }
    }

    else if (a5 == 5032)
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v15 targetToken];
        v27 = [v26 debugDescription];
        v28 = [v15 targetSessionToken];
        v29 = [v28 debugDescription];
        *buf = 138413570;
        v58 = v15;
        v59 = 2112;
        v60 = v16;
        v61 = 2112;
        v62 = v17;
        v63 = 2112;
        v64 = v27;
        v65 = 2112;
        v66 = v29;
        v67 = 2112;
        v68 = v18;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Bad signature {message: %@, localURI: %@, remoteURI: %@, remotePushToken: %@, sessionToken: %@, service: %@}", buf, 0x3Eu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v30 = [v15 targetToken];
        v31 = [v30 debugDescription];
        v32 = [v15 targetSessionToken];
        v53 = [v32 debugDescription];
        v54 = v18;
        v51 = v17;
        v52 = v31;
        v43 = v15;
        v46 = v16;
        _IDSLogV();
      }

      v33 = [IDSPeerIDManager sharedInstance:v43];
      v34 = [v15 targetToken];
      LOBYTE(v47) = 0;
      v35 = [v33 sessionTokenForURI:v16 pushToken:v34 fromURI:v23 service:v18 expirationDate:0 refreshDate:0 fromIdentity:v55 includeSelfDevice:v47];

      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " current sessionToken: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v44 = v35;
        _IDSLogV();
      }

      v37 = +[IDSPeerIDManager sharedInstance];
      [v37 forgetPeerTokensForURI:v16 fromURI:v23 service:v18 reason:6];
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

    v40 = [NSDictionary dictionaryWithObjectsAndKeys:v56, NSUnderlyingErrorKey, 0];
    v24 = [NSError errorWithDomain:IDSSendErrorDomain code:2 userInfo:v40];
  }

  return v24;
}

- (void)logFailureInfo
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSPeerAggregateMessage *)self messageID];
    v5 = [(IDSPeerAggregateMessage *)self uniqueIDString];
    *buf = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Msg with GUID: %@ & i:%@ is missing 255s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = [(IDSPeerAggregateMessage *)self messageID];
    v13 = [(IDSPeerAggregateMessage *)self uniqueIDString];
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

  v9 = [(IDSPeerAggregateMessage *)self messageID];
  v10 = v9;
  if (v9 && (v11 = [v9 UTF8String]) != 0)
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

  v14 = [(IDSPeerAggregateMessage *)self sourcePeerID];
  v15 = [v14 lengthOfBytesUsingEncoding:4];

  v16 = [(IDSPeerAggregateMessage *)self encryptionType];
  v17 = [v16 lengthOfBytesUsingEncoding:4];

  return v15 + v13 + v6 + v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25.receiver = self;
  v25.super_class = IDSPeerAggregateMessage;
  v4 = [(IDSPeerAggregateMessage *)&v25 copyWithZone:a3];
  v5 = [(IDSPeerAggregateMessage *)self sourcePeerID];
  [v4 setSourcePeerID:v5];

  v6 = [(IDSPeerAggregateMessage *)self encryptionType];
  [v4 setEncryptionType:v6];

  v7 = [(IDSPeerAggregateMessage *)self messageID];
  [v4 setMessageID:v7];

  v8 = [(IDSPeerAggregateMessage *)self priority];
  [v4 setPriority:v8];

  v9 = [(IDSPeerAggregateMessage *)self expirationDate];
  [v4 setExpirationDate:v9];

  v10 = [(IDSPeerAggregateMessage *)self additionalDictionary];
  [v4 setAdditionalDictionary:v10];

  v11 = [(IDSPeerAggregateMessage *)self individualPeerMessages];
  [v4 setIndividualPeerMessages:v11];

  v12 = [(IDSPeerAggregateMessage *)self pendingResponseTokens];
  v13 = [v12 mutableCopy];
  [v4 setPendingResponseTokens:v13];

  [v4 setMaxSize:{-[IDSPeerAggregateMessage maxSize](self, "maxSize")}];
  [v4 setCurrentSize:{-[IDSPeerAggregateMessage currentSize](self, "currentSize")}];
  [v4 setFireAndForget:{-[IDSPeerAggregateMessage fireAndForget](self, "fireAndForget")}];
  [v4 setHasReceivedAPSDAck:{-[IDSPeerAggregateMessage hasReceivedAPSDAck](self, "hasReceivedAPSDAck")}];
  v14 = [(IDSPeerAggregateMessage *)self chunkNumber];
  [v4 setChunkNumber:v14];

  [v4 setIsFinalMessage:{-[IDSPeerAggregateMessage isFinalMessage](self, "isFinalMessage")}];
  v15 = [(IDSPeerAggregateMessage *)self targetService];
  [v4 setTargetService:v15];

  v16 = [(IDSPeerAggregateMessage *)self fromIdentity];
  [v4 setFromIdentity:v16];

  v17 = [(IDSPeerAggregateMessage *)self groupPayload];
  [v4 setGroupPayload:v17];

  v18 = [(IDSPeerAggregateMessage *)self groupIdentifer];
  [v4 setGroupIdentifer:v18];

  v19 = [(IDSPeerAggregateMessage *)self deliveryMinimumTimeDelay];
  [v4 setDeliveryMinimumTimeDelay:v19];

  v20 = [(IDSPeerAggregateMessage *)self deliveryMinimumTime];
  [v4 setDeliveryMinimumTime:v20];

  v21 = [(IDSPeerAggregateMessage *)self sendReasonContainer];
  [v4 setSendReasonContainer:v21];

  [v4 setLastBeforeRateLimit:{-[IDSPeerAggregateMessage lastBeforeRateLimit](self, "lastBeforeRateLimit")}];
  v22 = [(IDSPeerAggregateMessage *)self sendMetric];
  v23 = [v22 copy];
  [v4 setSendMetric:v23];

  return v4;
}

- (id)requiredKeys
{
  v5.receiver = self;
  v5.super_class = IDSPeerAggregateMessage;
  v2 = [(IDSPeerAggregateMessage *)&v5 requiredKeys];
  v3 = [v2 mutableCopy];

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
  v3 = [(IDSPeerAggregateMessage *)&v67 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSPeerAggregateMessage *)self messageID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UTF8String];
    if (v7)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v7, uu);
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
  v11 = [(IDSPeerAggregateMessage *)self sourcePeerID];
  if (v11)
  {
    CFDictionarySetValue(v10, @"sP", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009184F8();
  }

  v12 = [(IDSPeerAggregateMessage *)self sourceShortHandle];
  if (v12)
  {
    CFDictionarySetValue(v10, @"sPs", v12);
  }

  if ([(IDSPeerAggregateMessage *)self fireAndForget])
  {
    CFDictionarySetValue(v10, IDSExpirationDateKey, &off_100C3BBA8);
  }

  else
  {
    v13 = [(IDSPeerAggregateMessage *)self expirationDate];

    if (v13)
    {
      v14 = [(IDSPeerAggregateMessage *)self expirationDate];
      [v14 timeIntervalSince1970];
      v16 = [NSNumber numberWithUnsignedLong:v15];

      if (v16)
      {
        CFDictionarySetValue(v10, IDSExpirationDateKey, v16);
      }
    }
  }

  v17 = [(IDSPeerAggregateMessage *)self encryptionType];
  if (v17)
  {
    v18 = v17;
    v19 = [(IDSPeerAggregateMessage *)self encryptionType];
    v20 = IDSEncryptionTypeStringFromEncryptionType();
    v21 = [v19 isEqualToIgnoringCase:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [(IDSPeerAggregateMessage *)self encryptionType];
      if (v22)
      {
        CFDictionarySetValue(v10, @"E", v22);
      }
    }
  }

  v23 = [(IDSPeerAggregateMessage *)self groupPayload];
  v24 = [v23 length];

  if (v24)
  {
    v25 = IDSEncryptionTypeStringFromEncryptionType();
    if (v25)
    {
      CFDictionarySetValue(v10, @"E", v25);
    }
  }

  v26 = [(IDSPeerAggregateMessage *)self additionalDictionary];
  v27 = [v26 objectForKey:@"c"];

  v28 = [(IDSPeerAggregateMessage *)self topic];
  v29 = IDSServiceNameiMessageLite;
  if ([v28 isEqualToString:IDSServiceNameiMessageLite])
  {
    v30 = [v27 unsignedIntegerValue];

    if (v30 != 100)
    {
      goto LABEL_34;
    }

    v28 = IDSEncryptionTypeStringFromEncryptionType();
    if (v28)
    {
      CFDictionarySetValue(v10, @"E", v28);
    }
  }

LABEL_34:
  v31 = [(IDSPeerAggregateMessage *)self topic];
  if ([v31 isEqualToString:v29])
  {
    if ([v27 unsignedIntegerValue] == 100)
    {

LABEL_39:
      CFDictionarySetValue(v10, IDSDesiredProtocolKey, &off_100C3BBA8);
      goto LABEL_40;
    }

    v32 = [v27 unsignedIntegerValue];

    if (v32 == 128)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

LABEL_40:
  v33 = [(IDSPeerAggregateMessage *)self priority];
  if (v33)
  {
    v34 = v33;
    v35 = [(IDSPeerAggregateMessage *)self priority];
    v36 = [v35 intValue];

    if (v36 != 10)
    {
      v37 = [(IDSPeerAggregateMessage *)self priority];
      if (v37)
      {
        CFDictionarySetValue(v10, @"pri", v37);
      }
    }
  }

  v38 = [(IDSPeerAggregateMessage *)self chunkNumber];
  if (v38)
  {
    CFDictionarySetValue(v10, @"fcn", v38);
  }

  if ([(IDSPeerAggregateMessage *)self isFinalMessage])
  {
    CFDictionarySetValue(v10, @"flc", &off_100C3BB90);
  }

  v39 = [(IDSPeerAggregateMessage *)self deliveryMinimumTimeDelay];

  if (v39)
  {
    v40 = [(IDSPeerAggregateMessage *)self deliveryMinimumTimeDelay];
    if (v40)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeDelayKey, v40);
    }
  }

  v41 = [(IDSPeerAggregateMessage *)self deliveryMinimumTime];

  if (v41)
  {
    v42 = [(IDSPeerAggregateMessage *)self deliveryMinimumTime];
    if (v42)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeKey, v42);
    }
  }

  if ([(IDSPeerAggregateMessage *)self lastBeforeRateLimit])
  {
    CFDictionarySetValue(v10, IDSLastBeforeRateLimitKey, &off_100C3BB90);
  }

  v43 = [(IDSPeerAggregateMessage *)self sendMetric];
  v44 = [v43 samplingID];

  if (v44)
  {
    v45 = [v44 UTF8String];
    if (v45)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v45, uu);
      v63 = 0;
      jw_uuid_to_data();
      v46 = 0;
      if (v46)
      {
        CFDictionarySetValue(v10, IDSSamplingUUIDKey, v46);
      }
    }
  }

  v47 = [(IDSPeerAggregateMessage *)self groupPayload];
  if (v47)
  {
    CFDictionarySetValue(v10, @"P", v47);
  }

  v48 = [(IDSPeerAggregateMessage *)self groupIdentifer];
  if (v48)
  {
    CFDictionarySetValue(v10, @"gI", v48);
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

        v55 = [*(*(&v59 + 1) + 8 * i) dictionaryRepresentation];
        [v49 addObject:v55];
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