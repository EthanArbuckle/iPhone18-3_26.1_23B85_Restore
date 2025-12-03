@interface FTMessageDelivery
+ (id)_errorForTDMessageDeliveryStatus:(int64_t)status userInfo:(id)info;
+ (id)alloc;
+ (id)createAPSConnection;
- (BOOL)bagDisablesVMTraffic;
- (BOOL)isTrafficDisabledOnVMForMessage:(id)message;
- (FTMessageDelivery)initWithAPSConnection:(id)connection;
- (void)_clearRetryTimer;
- (void)_correctServerTimestampForDriftOnMessage:(id)message currentDate:(id)date;
- (void)_informDelegateAboutMessage:(id)message error:(id)error result:(id)result resultCode:(int64_t)code interface:(unint64_t)interface;
- (void)_retryTimerHit:(id)hit;
- (void)_setRetryTimer:(double)timer;
- (void)_signMessage:(id)message useDataSignatures:(BOOL)signatures authKitHeadersPresent:(BOOL)present body:(id)body queryString:(id)string completion:(id)completion;
- (void)addRequestObserver:(id)observer;
- (void)dealloc;
- (void)networkStateChanged;
- (void)signDataWithPushIdentity:(id)identity serverTimestamp:(id)timestamp withCompletion:(id)completion;
@end

@implementation FTMessageDelivery

+ (id)alloc
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {

    return [FTMessageDelivery_HTTP alloc];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___FTMessageDelivery;
    return objc_msgSendSuper2(&v5, sel_alloc);
  }
}

+ (id)createAPSConnection
{
  v17 = *MEMORY[0x1E69E9840];
  IMGetConferenceSettings();
  v2 = 0;
  v3 = MEMORY[0x19A8B8550](@"APSConnection", @"ApplePushService");
  v4 = *MEMORY[0x19A8B8560]("APSConnectionOverrideNamedDelegatePort", @"ApplePushService");
  v5 = [v3 alloc];
  v6 = im_primary_queue();
  v7 = [v5 initWithEnvironmentName:v2 namedDelegatePort:v4 queue:v6];

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v12 = v7;
    v13 = 1024;
    messageSize = [v7 messageSize];
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Created APSConnection: %p  (Max size: %d  Environment: %@)", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v7 messageSize];
    _IDSLogV();
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (FTMessageDelivery)initWithAPSConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = FTMessageDelivery;
  v5 = [(FTMessageDelivery *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_maxConcurrentMessages = 1;
    v7 = objc_alloc_init(FTMessageQueue);
    queue = v6->_queue;
    v6->_queue = v7;

    [(FTMessageQueue *)v6->_queue setDelegate:v6];
    if (connectionCopy)
    {
      createAPSConnection = connectionCopy;
    }

    else
    {
      createAPSConnection = [objc_opt_class() createAPSConnection];
    }

    connection = v6->_connection;
    v6->_connection = createAPSConnection;

    v11 = MEMORY[0x19A8B8550](@"IDSBAASigner", @"IDS");
    if (v11)
    {
      v12 = [v11 alloc];
      v13 = im_primary_queue();
      v14 = [v12 initWithQueue:v13];
      baaSigner = v6->_baaSigner;
      v6->_baaSigner = v14;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_networkStateChanged name:*MEMORY[0x1E69A5FE8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  [(FTMessageDelivery *)self _clearRetryTimer];
  [(FTMessageQueue *)self->_queue setDelegate:0];
  [(FTMessageQueue *)self->_queue removeAllMessages];
  [(NSHashTable *)self->_observerMap removeAllObjects];
  v4.receiver = self;
  v4.super_class = FTMessageDelivery;
  [(FTMessageDelivery *)&v4 dealloc];
}

- (void)addRequestObserver:(id)observer
{
  observerCopy = observer;
  observerMap = self->_observerMap;
  v8 = observerCopy;
  if (!observerMap)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observerMap;
    self->_observerMap = weakObjectsHashTable;

    observerCopy = v8;
    observerMap = self->_observerMap;
  }

  [(NSHashTable *)observerMap addObject:observerCopy];
}

+ (id)_errorForTDMessageDeliveryStatus:(int64_t)status userInfo:(id)info
{
  infoCopy = info;
  if (status)
  {
    if (status == 1)
    {
      v6 = @"FTMessageDeliveryNoResultCodeError";
      statusCopy = 1;
    }

    else
    {
      v6 = FTErrorDomain;
      statusCopy = status;
    }

    status = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:statusCopy userInfo:infoCopy];
  }

  return status;
}

- (void)_informDelegateAboutMessage:(id)message error:(id)error result:(id)result resultCode:(int64_t)code interface:(unint64_t)interface
{
  v33 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  errorCopy = error;
  resultCopy = result;
  v27 = resultCopy;
  if (errorCopy)
  {
    v15 = MEMORY[0x1E696ABC0];
    domain = [errorCopy domain];
    v26 = [v15 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), 0}];
  }

  else
  {
    v26 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:code userInfo:resultCopy];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_observerMap;
  v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v23 = [messageCopy copy];
          [v22 completedRequest:v23 resultCode:code interface:interface];
        }
      }

      v19 = [(NSHashTable *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  completionBlock = [messageCopy completionBlock];
  [messageCopy stopEventTracingWithError:v26];
  if (completionBlock)
  {
    (completionBlock)[2](completionBlock, messageCopy, v26, code, v27);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_retryTimerHit:(id)hit
{
  v21 = *MEMORY[0x1E69E9840];
  hitCopy = hit;
  [(IMTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Should retry!", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "...Should retry", buf, 2u);
    }
  }

  currentMessage = [(FTMessageQueue *)self->_queue currentMessage];
  v9 = currentMessage;
  if (currentMessage)
  {
    retryCount = [currentMessage retryCount];
    integerValue = [retryCount integerValue];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [v9 setRetryCount:v12];

    v18 = 0;
    LOBYTE(retryCount) = [(FTMessageDelivery *)self _sendMessageAsynchronously:v9 error:&v18];
    registration3 = v18;
    if ((retryCount & 1) == 0)
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = registration3;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_ERROR, "Failed retrying message: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v17 = registration3;
        _IDSLogTransport();
      }

      if ([(FTMessageDelivery *)self logToRegistration])
      {
        registration2 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "...Failed retrying", buf, 2u);
        }
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "No message to retry -- returning", buf, 2u);
    }

    goto LABEL_25;
  }

LABEL_26:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_clearRetryTimer
{
  [(IMTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_setRetryTimer:(double)timer
{
  [(FTMessageDelivery *)self _clearRetryTimer];
  v5 = objc_alloc(MEMORY[0x1E69A6168]);
  v8 = im_primary_queue();
  v6 = [v5 initWithTimeInterval:@"com.apple.imagent.http-delivery" name:1 shouldWake:self target:sel__retryTimerHit_ selector:0 userInfo:v8 queue:timer];
  timer = self->_timer;
  self->_timer = v6;
}

- (void)networkStateChanged
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "Network state changed", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_correctServerTimestampForDriftOnMessage:(id)message currentDate:(id)date
{
  v38 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dateCopy = date;
  serverTimestamp = [messageCopy serverTimestamp];
  v8 = serverTimestamp;
  if (serverTimestamp)
  {
    ftMessageDeliveryServerTimestamp = serverTimestamp;
  }

  else
  {
    ftMessageDeliveryServerTimestamp = [MEMORY[0x1E69A6180] ftMessageDeliveryServerTimestamp];
  }

  v10 = ftMessageDeliveryServerTimestamp;

  serverTimestampReceivedDate = [messageCopy serverTimestampReceivedDate];
  v12 = serverTimestampReceivedDate;
  if (serverTimestampReceivedDate)
  {
    ftMessageDeliveryServerTimestampReceivedDate = serverTimestampReceivedDate;
  }

  else
  {
    ftMessageDeliveryServerTimestampReceivedDate = [MEMORY[0x1E69A6180] ftMessageDeliveryServerTimestampReceivedDate];
  }

  v14 = ftMessageDeliveryServerTimestampReceivedDate;

  if (v10)
  {
    [dateCopy timeIntervalSince1970];
    v16 = v15;
    [v14 doubleValue];
    v18 = v16 - v17;
    if (v16 - v17 > 0.0)
    {
      v19 = v17;
      [v10 doubleValue];
      v21 = v20 / 1000.0;
      v22 = v18 + v20 / 1000.0;
      v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22 * 1000.0];
      [messageCopy setServerTimestamp:v23];

      v24 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      [messageCopy setServerTimestampReceivedDate:v24];

      nonce = [MEMORY[0x1E69A6138] nonce];
      if (os_log_type_enabled(nonce, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v19];
        v27 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v21];
        v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v22];
        v30 = 138413058;
        v31 = v26;
        v32 = 2048;
        v33 = v18;
        v34 = 2112;
        v35 = v27;
        v36 = 2112;
        v37 = v28;
        _os_log_impl(&dword_195925000, nonce, OS_LOG_TYPE_DEFAULT, "Timestamp received %@, delta %f servertimestamp %@ newServerTimestamp %@", &v30, 0x2Au);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_signMessage:(id)message useDataSignatures:(BOOL)signatures authKitHeadersPresent:(BOOL)present body:(id)body queryString:(id)string completion:(id)completion
{
  presentCopy = present;
  v78 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  bodyCopy = body;
  stringCopy = string;
  completionCopy = completion;
  if ([messageCopy wantsBodySignature])
  {
    v17 = bodyCopy;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if ([messageCopy wantsBAASigning])
  {
    v19 = bodyCopy;
  }

  else
  {
    v19 = 0;
  }

  v51 = v19;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bagKey = [messageCopy bagKey];
  date = [MEMORY[0x1E695DF00] date];
  [(FTMessageDelivery *)self _correctServerTimestampForDriftOnMessage:messageCopy currentDate:date];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19592F8D0;
  block[3] = &unk_1E7434F08;
  block[4] = self;
  v23 = messageCopy;
  v67 = v23;
  signaturesCopy = signatures;
  v24 = bagKey;
  v68 = v24;
  v52 = stringCopy;
  v69 = v52;
  v25 = v18;
  v70 = v25;
  v26 = v20;
  v71 = v26;
  v50 = completionCopy;
  v72 = v50;
  v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  signingSession = [v23 signingSession];
  if (signingSession)
  {
    v29 = signingSession;
    signingSession2 = [v23 signingSession];
    isInitializedForSigning = [signingSession2 isInitializedForSigning];

    if (isInitializedForSigning)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        v33 = @"NO";
        if (presentCopy)
        {
          v33 = @"YES";
        }

        *buf = 138412546;
        v75 = v23;
        v76 = 2112;
        v77 = v33;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Validation session signing for message %@, authKitBAAHeadersPresent? %@", buf, 0x16u);
      }

      if ([v23 wantsBodySigningOnly])
      {
        serverTimestamp = [v23 serverTimestamp];
        v65 = 0;
        _FTGenerateDigestForSigningFromPayload(2, v25, serverTimestamp, 0, &v65);
        v35 = v65;
      }

      else
      {
        serverTimestamp = [v23 pushToken];
        serverTimestamp2 = [v23 serverTimestamp];
        v64 = 0;
        _FTGenerateDigestForSigningFromComponents(2, v24, v52, serverTimestamp, v25, serverTimestamp2, 0, &v64);
        v35 = v64;
      }

      v42 = objc_alloc(MEMORY[0x1E69A51D8]);
      serverTimestamp3 = [v23 serverTimestamp];
      v44 = [v42 initWithSHA256Digest:v35 requestBody:v25 serverTimestamp:serverTimestamp3 includeIcloudBAA:!presentCopy];

      if (qword_1EAED7788 != -1)
      {
        sub_19596237C();
      }

      v45 = [objc_alloc(MEMORY[0x1E69A5260]) initWithName:@"Validation Session Signing" uniqueIdentifier:0];
      [v23 addSubEventTracingOperation:v45];
      signingSession3 = [v23 signingSession];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = sub_1959304F4;
      v59[3] = &unk_1E7434F78;
      v60 = v23;
      v61 = v26;
      v62 = v45;
      v63 = v27;
      v47 = v45;
      [signingSession3 headersBySigningData:v44 completion:v59];

      goto LABEL_26;
    }
  }

  if (![v23 wantsBAASigning] || !_os_feature_enabled_impl() || presentCopy)
  {
    v27[2](v27);
LABEL_26:
    v37 = v51;
    goto LABEL_27;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  v37 = v51;
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v75 = v23;
    v76 = 2112;
    v77 = @"NO";
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "BAA signer signing for message %@, authKitBAAHeadersPresent? %@", buf, 0x16u);
  }

  baaSigner = [(FTMessageDelivery *)self baaSigner];
  queue = [baaSigner queue];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = sub_19593078C;
  v53[3] = &unk_1E7434FC8;
  v54 = v23;
  selfCopy = self;
  v56 = v51;
  v57 = v26;
  v58 = v27;
  v40 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v53);
  dispatch_async(queue, v40);

LABEL_27:
  v48 = *MEMORY[0x1E69E9840];
}

- (void)signDataWithPushIdentity:(id)identity serverTimestamp:(id)timestamp withCompletion:(id)completion
{
  identityCopy = identity;
  timestampCopy = timestamp;
  completionCopy = completion;
  if (qword_1EAED77A0 != -1)
  {
    sub_195962848();
  }

  if (qword_1EAED7798)
  {
    registration = objc_alloc_init(qword_1EAED7798);
    [registration setData:identityCopy];
    [registration setTime:timestampCopy];
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195930BBC;
    v13[3] = &unk_1E7435018;
    v14 = completionCopy;
    [(FTMessageDeliveryAPSConnection *)connection signDataWithDeviceIdentity:registration withCompletion:v13];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_19596285C(registration);
    }
  }
}

- (BOOL)bagDisablesVMTraffic
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"VM-traffic-disabled-version"];
  v4 = v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 intValue] > 0;

  return v4;
}

- (BOOL)isTrafficDisabledOnVMForMessage:(id)message
{
  messageCopy = message;
  v5 = _os_feature_enabled_impl() && [messageCopy isIDSMessage] && IDSIsVirtualMachine() && -[FTMessageDelivery bagDisablesVMTraffic](self, "bagDisablesVMTraffic");

  return v5;
}

@end