@interface IDSBaseMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (IDSBaseMessage)init;
- (IDSEventTracingOperation)currentSendEventTracingOperation;
- (NSDictionary)messageBody;
- (NSDictionary)messageBodyUsingCache;
- (NSString)uniqueIDString;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)dualModeConfig;
- (void)_cacheBody;
- (void)_clearCache;
- (void)addSubEventTracingOperation:(id)a3;
- (void)handleResponseDictionary:(id)a3;
- (void)setRetryCount:(id)a3;
- (void)startSendEventTracing;
- (void)stopCurrentEventTracingOperationWithError:(id)a3;
- (void)stopEventTracingWithError:(id)a3;
@end

@implementation IDSBaseMessage

- (NSDictionary)messageBodyUsingCache
{
  [(IDSBaseMessage *)self _cacheBody];
  cachedBody = self->_cachedBody;
  if (cachedBody)
  {
    v4 = cachedBody;
  }

  else
  {
    v4 = [(IDSBaseMessage *)self messageBody];
  }

  return v4;
}

- (void)_cacheBody
{
  if (!self->_cachedBody)
  {
    v4 = [(IDSBaseMessage *)self messageBody];
    cachedBody = self->_cachedBody;
    self->_cachedBody = v4;
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
    v3 = [MEMORY[0x1E695DF00] date];
    [(IDSBaseMessage *)v2 setCreationDate:v3];

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

  v4 = [(IDSBaseMessage *)self currentSendEventTracingOperation];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(IDSBaseMessage *)self dsAuthID];
  [v4 setDSAuthID:v5];

  v6 = [(IDSBaseMessage *)self topic];
  [v4 setTopic:v6];

  [v4 setUniqueID:FastRandomUInt()];
  [v4 setForceCellular:{-[IDSBaseMessage forceCellular](self, "forceCellular")}];
  [v4 setTimeoutRetries:{-[IDSBaseMessage timeoutRetries](self, "timeoutRetries")}];
  [v4 setHighPriority:{-[IDSBaseMessage highPriority](self, "highPriority")}];
  v7 = [(IDSBaseMessage *)self userInfo];
  [v4 setUserInfo:v7];

  v8 = [(IDSBaseMessage *)self serviceData];
  [v4 setServiceData:v8];

  v9 = [(IDSBaseMessage *)self clientInfo];
  [v4 setClientInfo:v9];

  [v4 setWantsResponse:{-[IDSBaseMessage wantsResponse](self, "wantsResponse")}];
  [v4 setWantsMultipleResponses:{-[IDSBaseMessage wantsMultipleResponses](self, "wantsMultipleResponses")}];
  [v4 setHttpDoNotDecodeData:{-[IDSBaseMessage httpDoNotDecodeData](self, "httpDoNotDecodeData")}];
  [v4 setWantsBinaryPush:{-[IDSBaseMessage wantsBinaryPush](self, "wantsBinaryPush")}];
  [v4 setWantsIntegerUniqueIDs:{-[IDSBaseMessage wantsIntegerUniqueIDs](self, "wantsIntegerUniqueIDs")}];
  v10 = [(IDSBaseMessage *)self creationDate];
  [v4 setCreationDate:v10];

  v11 = [(IDSBaseMessage *)self context];
  [v4 setContext:v11];

  [(IDSBaseMessage *)self timeSent];
  [v4 setTimeSent:?];
  v12 = [(IDSBaseMessage *)self completionBlock];
  [v4 setCompletionBlock:v12];

  v13 = [(IDSBaseMessage *)self deliveryAcknowledgementBlock];
  [v4 setDeliveryAcknowledgementBlock:v13];

  [(IDSBaseMessage *)self timeout];
  [v4 setTimeout:?];
  v14 = [(IDSBaseMessage *)self responseAlertInfo];
  [v4 setResponseAlertInfo:v14];

  v15 = [(IDSBaseMessage *)self retryCount];
  [v4 setRetryCount:v15];

  v16 = [(IDSBaseMessage *)self originalTimestamp];
  [v4 setOriginalTimestamp:v16];

  [v4 setImportanceLevel:{-[IDSBaseMessage importanceLevel](self, "importanceLevel")}];
  [v4 setDeliveryMechanism:{-[IDSBaseMessage deliveryMechanism](self, "deliveryMechanism")}];
  v17 = [(IDSBaseMessage *)self service];
  [v4 setService:v17];

  v18 = [(IDSBaseMessage *)self subService];
  [v4 setSubService:v18];

  v19 = [(IDSBaseMessage *)self underlyingService];
  [v4 setUnderlyingService:v19];

  [v4 setHasAttemptedAPSDelivery:{-[IDSBaseMessage hasAttemptedAPSDelivery](self, "hasAttemptedAPSDelivery")}];
  v20 = [(IDSBaseMessage *)self signingSession];
  [v4 setSigningSession:v20];

  v21 = [(IDSBaseMessage *)self URLOverride];
  [v4 setURLOverride:v21];

  [v4 setIgnoreMaxRetryCount:{-[IDSBaseMessage ignoreMaxRetryCount](self, "ignoreMaxRetryCount")}];
  v22 = [(IDSBaseMessage *)self pushAckTimestamp];
  [v4 setPushAckTimestamp:v22];

  v23 = [(IDSBaseMessage *)self baaSigningDigest];
  [v4 setBaaSigningDigest:v23];

  v24 = [(IDSBaseMessage *)self baaSigningError];
  [v4 setBaaSigningError:v24];

  v25 = [(IDSBaseMessage *)self splunkHint];
  [v4 setSplunkHint:v25];

  v26 = [(IDSBaseMessage *)self requestStart];
  [v4 setRequestStart:v26];

  v27 = [(IDSBaseMessage *)self requestEnd];
  [v4 setRequestEnd:v27];

  v28 = [(IDSBaseMessage *)self overallEventTracingOperation];
  [v4 setOverallEventTracingOperation:v28];

  objc_storeStrong(v4 + 39, self->_currentSendEventTracingOperation);
  v29 = [(IDSBaseMessage *)self sendReasonContainer];
  [v4 setSendReasonContainer:v29];

  return v4;
}

- (void)stopCurrentEventTracingOperationWithError:(id)a3
{
  v8 = a3;
  v4 = [(IDSBaseMessage *)self splunkHint];

  if (v4)
  {
    currentSendEventTracingOperation = self->_currentSendEventTracingOperation;
    v6 = [(IDSBaseMessage *)self splunkHint];
    [(IDSEventTracingOperation *)currentSendEventTracingOperation addStringSubfieldWithName:@"Splunk Hint" value:v6];
  }

  [(IDSEventTracingOperation *)self->_currentSendEventTracingOperation stopWithError:v8];
  v7 = self->_currentSendEventTracingOperation;
  self->_currentSendEventTracingOperation = 0;
}

- (void)addSubEventTracingOperation:(id)a3
{
  v4 = a3;
  v5 = [(IDSBaseMessage *)self currentSendEventTracingOperation];
  [v5 addSubOperationWithOperation:v4];
}

- (void)stopEventTracingWithError:(id)a3
{
  v4 = a3;
  [(IDSBaseMessage *)self stopCurrentEventTracingOperationWithError:0];
  v5 = [(IDSBaseMessage *)self overallEventTracingOperation];
  [v5 stopWithError:v4];
}

- (NSString)uniqueIDString
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSBaseMessage uniqueID](self, "uniqueID")}];
  v3 = [v2 stringValue];

  return v3;
}

- (unint64_t)dualModeConfig
{
  v3 = [(IDSBaseMessage *)self topic];
  v4 = [v3 isEqualToString:@"com.apple.private.alloy.lightrose"];

  if (v4)
  {
    return 2;
  }

  else
  {
    return [(IDSBaseMessage *)self allowDualDelivery];
  }
}

- (void)setRetryCount:(id)a3
{
  v5 = a3;
  if (self->_retryCount != v5)
  {
    v6 = v5;
    [(IDSBaseMessage *)self _clearCache];
    objc_storeStrong(&self->_retryCount, a3);
    v5 = v6;
  }
}

- (BOOL)hasRequiredKeys:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (-[IDSBaseMessage requiresPushTokenKeys](self, "requiresPushTokenKeys") && (-[IDSBaseMessage pushToken](self, "pushToken"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, !v5))
  {
    if (a3)
    {
      [MEMORY[0x1E695DEC8] arrayWithObject:@"push token"];
      *a3 = v13 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = [(IDSBaseMessage *)self requiredKeys];
    if ([v23 count])
    {
      v6 = [(IDSBaseMessage *)self messageBodyUsingCache];
      v24 = self;
      v7 = v23;
      v8 = v6;
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
                v32 = v24;
                _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Missing message key: %@   (Message: %@)", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  v20 = v15;
                  v21 = v24;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  v20 = v15;
                  v21 = v24;
                  IMLogString();
                }
              }

              if (MarcoShouldLogCheckpoints())
              {
                v20 = v15;
                v21 = v24;
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

      if (a3)
      {
        v18 = v10;
        *a3 = v10;
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
  v4 = [(IDSBaseMessage *)self serviceData];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service-data", v4);
  }

  v5 = [(IDSBaseMessage *)self clientInfo];
  if (v5)
  {
    CFDictionarySetValue(v3, @"client-data", v5);
  }

  v6 = [(IDSBaseMessage *)self retryCount];
  if (v6)
  {
    CFDictionarySetValue(v3, [(IDSBaseMessage *)self retryCountKey], v6);
  }

  v7 = [(IDSBaseMessage *)self originalTimestamp];
  if (v7)
  {
    CFDictionarySetValue(v3, @"oe", v7);
  }

  if (![(IDSBaseMessage *)self wantsResponse])
  {
    CFDictionarySetValue(v3, @"nr", &unk_1F1B20390);
  }

  v8 = [(IDSBaseMessage *)self sendReasonContainer];

  if (v8)
  {
    v9 = [(IDSBaseMessage *)self sendReasonContainer];
    v10 = [v9 reasonString];

    if (v10)
    {
      CFDictionarySetValue(v3, @"mrc", v10);
    }
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"alert"];
  [(IDSBaseMessage *)self setResponseAlertInfo:v4];
}

@end