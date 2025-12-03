@interface IDSBaseMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (IDSBaseMessage)init;
- (IDSEventTracingOperation)currentSendEventTracingOperation;
- (NSDictionary)messageBody;
- (NSDictionary)messageBodyUsingCache;
- (NSString)uniqueIDString;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)dualModeConfig;
- (void)_cacheBody;
- (void)_clearCache;
- (void)addSubEventTracingOperation:(id)operation;
- (void)handleResponseDictionary:(id)dictionary;
- (void)setRetryCount:(id)count;
- (void)startSendEventTracing;
- (void)stopCurrentEventTracingOperationWithError:(id)error;
- (void)stopEventTracingWithError:(id)error;
@end

@implementation IDSBaseMessage

- (NSDictionary)messageBodyUsingCache
{
  [(IDSBaseMessage *)self _cacheBody];
  cachedBody = self->_cachedBody;
  if (cachedBody)
  {
    messageBody = cachedBody;
  }

  else
  {
    messageBody = [(IDSBaseMessage *)self messageBody];
  }

  return messageBody;
}

- (void)_cacheBody
{
  if (!self->_cachedBody)
  {
    messageBody = [(IDSBaseMessage *)self messageBody];
    cachedBody = self->_cachedBody;
    self->_cachedBody = messageBody;
  }
}

- (IDSBaseMessage)init
{
  v10.receiver = self;
  v10.super_class = IDSBaseMessage;
  v2 = [(IDSBaseMessage *)&v10 init];
  if (v2)
  {
    v2->_uniqueID = FastRandomUInt();
    date = [MEMORY[0x1E695DF00] date];
    [(IDSBaseMessage *)v2 setCreationDate:date];

    [(IDSBaseMessage *)v2 setTimeout:20.0];
    [(IDSBaseMessage *)v2 setHighPriority:1];
    v4 = [IDSEventTracingOperation alloc];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(IDSEventTracingOperation *)v4 initWithName:v6 uniqueIdentifier:0];

    overallEventTracingOperation = v2->_overallEventTracingOperation;
    v2->_overallEventTracingOperation = v7;
  }

  return v2;
}

- (void)_clearCache
{
  cachedBody = self->_cachedBody;
  self->_cachedBody = 0;
}

- (void)startSendEventTracing
{
  [(IDSEventTracingOperation *)self->_currentSendEventTracingOperation stop];
  currentSendEventTracingOperation = self->_currentSendEventTracingOperation;
  self->_currentSendEventTracingOperation = 0;

  currentSendEventTracingOperation = [(IDSBaseMessage *)self currentSendEventTracingOperation];
}

- (IDSEventTracingOperation)currentSendEventTracingOperation
{
  currentSendEventTracingOperation = self->_currentSendEventTracingOperation;
  if (!currentSendEventTracingOperation)
  {
    v4 = [[IDSEventTracingOperation alloc] initWithName:@"Message Send" uniqueIdentifier:0];
    [(IDSEventTracingOperation *)self->_overallEventTracingOperation addSubOperationWithOperation:v4];
    v5 = self->_currentSendEventTracingOperation;
    self->_currentSendEventTracingOperation = v4;

    currentSendEventTracingOperation = self->_currentSendEventTracingOperation;
  }

  return currentSendEventTracingOperation;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  dsAuthID = [(IDSBaseMessage *)self dsAuthID];
  [v4 setDSAuthID:dsAuthID];

  topic = [(IDSBaseMessage *)self topic];
  [v4 setTopic:topic];

  [v4 setUniqueID:FastRandomUInt()];
  [v4 setForceCellular:{-[IDSBaseMessage forceCellular](self, "forceCellular")}];
  [v4 setTimeoutRetries:{-[IDSBaseMessage timeoutRetries](self, "timeoutRetries")}];
  [v4 setHighPriority:{-[IDSBaseMessage highPriority](self, "highPriority")}];
  userInfo = [(IDSBaseMessage *)self userInfo];
  [v4 setUserInfo:userInfo];

  serviceData = [(IDSBaseMessage *)self serviceData];
  [v4 setServiceData:serviceData];

  clientInfo = [(IDSBaseMessage *)self clientInfo];
  [v4 setClientInfo:clientInfo];

  [v4 setWantsResponse:{-[IDSBaseMessage wantsResponse](self, "wantsResponse")}];
  [v4 setWantsMultipleResponses:{-[IDSBaseMessage wantsMultipleResponses](self, "wantsMultipleResponses")}];
  [v4 setHttpDoNotDecodeData:{-[IDSBaseMessage httpDoNotDecodeData](self, "httpDoNotDecodeData")}];
  [v4 setWantsBinaryPush:{-[IDSBaseMessage wantsBinaryPush](self, "wantsBinaryPush")}];
  [v4 setWantsIntegerUniqueIDs:{-[IDSBaseMessage wantsIntegerUniqueIDs](self, "wantsIntegerUniqueIDs")}];
  creationDate = [(IDSBaseMessage *)self creationDate];
  [v4 setCreationDate:creationDate];

  context = [(IDSBaseMessage *)self context];
  [v4 setContext:context];

  [(IDSBaseMessage *)self timeSent];
  [v4 setTimeSent:?];
  completionBlock = [(IDSBaseMessage *)self completionBlock];
  [v4 setCompletionBlock:completionBlock];

  deliveryAcknowledgementBlock = [(IDSBaseMessage *)self deliveryAcknowledgementBlock];
  [v4 setDeliveryAcknowledgementBlock:deliveryAcknowledgementBlock];

  [(IDSBaseMessage *)self timeout];
  [v4 setTimeout:?];
  responseAlertInfo = [(IDSBaseMessage *)self responseAlertInfo];
  [v4 setResponseAlertInfo:responseAlertInfo];

  retryCount = [(IDSBaseMessage *)self retryCount];
  [v4 setRetryCount:retryCount];

  originalTimestamp = [(IDSBaseMessage *)self originalTimestamp];
  [v4 setOriginalTimestamp:originalTimestamp];

  [v4 setImportanceLevel:{-[IDSBaseMessage importanceLevel](self, "importanceLevel")}];
  [v4 setDeliveryMechanism:{-[IDSBaseMessage deliveryMechanism](self, "deliveryMechanism")}];
  service = [(IDSBaseMessage *)self service];
  [v4 setService:service];

  subService = [(IDSBaseMessage *)self subService];
  [v4 setSubService:subService];

  underlyingService = [(IDSBaseMessage *)self underlyingService];
  [v4 setUnderlyingService:underlyingService];

  [v4 setHasAttemptedAPSDelivery:{-[IDSBaseMessage hasAttemptedAPSDelivery](self, "hasAttemptedAPSDelivery")}];
  signingSession = [(IDSBaseMessage *)self signingSession];
  [v4 setSigningSession:signingSession];

  uRLOverride = [(IDSBaseMessage *)self URLOverride];
  [v4 setURLOverride:uRLOverride];

  [v4 setIgnoreMaxRetryCount:{-[IDSBaseMessage ignoreMaxRetryCount](self, "ignoreMaxRetryCount")}];
  pushAckTimestamp = [(IDSBaseMessage *)self pushAckTimestamp];
  [v4 setPushAckTimestamp:pushAckTimestamp];

  baaSigningDigest = [(IDSBaseMessage *)self baaSigningDigest];
  [v4 setBaaSigningDigest:baaSigningDigest];

  baaSigningError = [(IDSBaseMessage *)self baaSigningError];
  [v4 setBaaSigningError:baaSigningError];

  splunkHint = [(IDSBaseMessage *)self splunkHint];
  [v4 setSplunkHint:splunkHint];

  requestStart = [(IDSBaseMessage *)self requestStart];
  [v4 setRequestStart:requestStart];

  requestEnd = [(IDSBaseMessage *)self requestEnd];
  [v4 setRequestEnd:requestEnd];

  overallEventTracingOperation = [(IDSBaseMessage *)self overallEventTracingOperation];
  [v4 setOverallEventTracingOperation:overallEventTracingOperation];

  objc_storeStrong(v4 + 39, self->_currentSendEventTracingOperation);
  sendReasonContainer = [(IDSBaseMessage *)self sendReasonContainer];
  [v4 setSendReasonContainer:sendReasonContainer];

  return v4;
}

- (void)stopCurrentEventTracingOperationWithError:(id)error
{
  errorCopy = error;
  splunkHint = [(IDSBaseMessage *)self splunkHint];

  if (splunkHint)
  {
    currentSendEventTracingOperation = self->_currentSendEventTracingOperation;
    splunkHint2 = [(IDSBaseMessage *)self splunkHint];
    [(IDSEventTracingOperation *)currentSendEventTracingOperation addStringSubfieldWithName:@"Splunk Hint" value:splunkHint2];
  }

  [(IDSEventTracingOperation *)self->_currentSendEventTracingOperation stopWithError:errorCopy];
  v7 = self->_currentSendEventTracingOperation;
  self->_currentSendEventTracingOperation = 0;
}

- (void)addSubEventTracingOperation:(id)operation
{
  operationCopy = operation;
  currentSendEventTracingOperation = [(IDSBaseMessage *)self currentSendEventTracingOperation];
  [currentSendEventTracingOperation addSubOperationWithOperation:operationCopy];
}

- (void)stopEventTracingWithError:(id)error
{
  errorCopy = error;
  [(IDSBaseMessage *)self stopCurrentEventTracingOperationWithError:0];
  overallEventTracingOperation = [(IDSBaseMessage *)self overallEventTracingOperation];
  [overallEventTracingOperation stopWithError:errorCopy];
}

- (NSString)uniqueIDString
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSBaseMessage uniqueID](self, "uniqueID")}];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (unint64_t)dualModeConfig
{
  topic = [(IDSBaseMessage *)self topic];
  v4 = [topic isEqualToString:@"com.apple.private.alloy.lightrose"];

  if (v4)
  {
    return 2;
  }

  else
  {
    return [(IDSBaseMessage *)self allowDualDelivery];
  }
}

- (void)setRetryCount:(id)count
{
  countCopy = count;
  if (self->_retryCount != countCopy)
  {
    v6 = countCopy;
    [(IDSBaseMessage *)self _clearCache];
    objc_storeStrong(&self->_retryCount, count);
    countCopy = v6;
  }
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  v34 = *MEMORY[0x1E69E9840];
  if (-[IDSBaseMessage requiresPushTokenKeys](self, "requiresPushTokenKeys") && (-[IDSBaseMessage pushToken](self, "pushToken"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, !v5))
  {
    if (keys)
    {
      [MEMORY[0x1E695DEC8] arrayWithObject:@"push token"];
      *keys = v13 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    requiredKeys = [(IDSBaseMessage *)self requiredKeys];
    if ([requiredKeys count])
    {
      messageBodyUsingCache = [(IDSBaseMessage *)self messageBodyUsingCache];
      selfCopy = self;
      v7 = requiredKeys;
      v8 = messageBodyUsingCache;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = v7;
      v10 = 0;
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v11)
      {
        v12 = *v26;
        v13 = 1;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [v8 objectForKey:v15];
            if (!v16)
            {
              v17 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v30 = v15;
                v31 = 2112;
                v32 = selfCopy;
                _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Missing message key: %@   (Message: %@)", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  v20 = v15;
                  v21 = selfCopy;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  v20 = v15;
                  v21 = selfCopy;
                  IMLogString();
                }
              }

              if (MarcoShouldLogCheckpoints())
              {
                v20 = v15;
                v21 = selfCopy;
                MarcoNoteCheckpoint();
              }

              if (!v10)
              {
                v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v10 addObject:{v15, v20, v21}];
              v13 = 0;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = 1;
      }

      if (keys)
      {
        v18 = v10;
        *keys = v10;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (NSDictionary)messageBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  serviceData = [(IDSBaseMessage *)self serviceData];
  if (serviceData)
  {
    CFDictionarySetValue(v3, @"service-data", serviceData);
  }

  clientInfo = [(IDSBaseMessage *)self clientInfo];
  if (clientInfo)
  {
    CFDictionarySetValue(v3, @"client-data", clientInfo);
  }

  retryCount = [(IDSBaseMessage *)self retryCount];
  if (retryCount)
  {
    CFDictionarySetValue(v3, [(IDSBaseMessage *)self retryCountKey], retryCount);
  }

  originalTimestamp = [(IDSBaseMessage *)self originalTimestamp];
  if (originalTimestamp)
  {
    CFDictionarySetValue(v3, @"oe", originalTimestamp);
  }

  if (![(IDSBaseMessage *)self wantsResponse])
  {
    CFDictionarySetValue(v3, @"nr", &unk_1F1B20390);
  }

  sendReasonContainer = [(IDSBaseMessage *)self sendReasonContainer];

  if (sendReasonContainer)
  {
    sendReasonContainer2 = [(IDSBaseMessage *)self sendReasonContainer];
    reasonString = [sendReasonContainer2 reasonString];

    if (reasonString)
    {
      CFDictionarySetValue(v3, @"mrc", reasonString);
    }
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"alert"];
  [(IDSBaseMessage *)self setResponseAlertInfo:v4];
}

@end