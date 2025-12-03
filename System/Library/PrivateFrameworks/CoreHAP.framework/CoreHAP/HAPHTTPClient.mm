@interface HAPHTTPClient
+ (id)dnsNameForHTTPHeaderFromDNSNames:(id)names;
+ (id)logCategory;
- (BOOL)_debugDelegateRespondsToSelector:(SEL)selector;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_supportsWoL;
- (BOOL)enableUAPSessionSecurityWithReadKey:(unsigned __int8)key[32] writeKey:(unsigned __int8)writeKey[32] error:(id *)error;
- (HAPHTTPClientDebugDelegate)debugDelegate;
- (HAPHTTPClientDelegate)delegate;
- (HAPSocketInfo)peerSocketInfo;
- (HMFNetAddress)peerAddressEx;
- (NSString)peerEndpointDescription;
- (OS_dispatch_queue)debugDelegateQueue;
- (OS_dispatch_queue)delegateQueue;
- (id)_connectionDestination;
- (id)_deserializeUAPJSONData:(id)data error:(id *)error;
- (id)_serializeUAPJSONObject:(id)object error:(id *)error;
- (id)clientRequestIdentifier;
- (id)logIdentifier;
- (int)_initializeCoreUtilsHTTPClientWithPort:(int64_t)port withEventsEnabled:(BOOL)enabled factory:(id)factory;
- (int)getHttpClientPeerAddress:(sockaddr_storage *)address;
- (unsigned)clientID;
- (void)_handleHTTPResponseForMessage:(HTTPMessagePrivate *)message completionHandler:(id)handler;
- (void)_sendHTTPRequestToURL:(id)l withMethod:(int)method requestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout activity:(id)activity completionHandler:(id)handler;
- (void)dealloc;
- (void)httpClient:(id)client didReceiveHTTPMessageWithHeaders:(id)headers body:(id)body;
- (void)httpClient:(id)client willSendHTTPMessageWithHeaders:(id)headers body:(id)body;
- (void)invalidateWithError:(id)error;
- (void)sendDELETERequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler;
- (void)sendGETRequestToURL:(id)l timeout:(double)timeout completionHandler:(id)handler;
- (void)sendPOSTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler;
- (void)sendPUTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout completionHandler:(id)handler;
- (void)setDebugDelegate:(id)delegate queue:(id)queue;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation HAPHTTPClient

- (OS_dispatch_queue)debugDelegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_debugDelegateQueue);

  return WeakRetained;
}

- (HAPHTTPClientDebugDelegate)debugDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_debugDelegate);

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateQueue);

  return WeakRetained;
}

- (HAPHTTPClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)clientRequestIdentifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04lX", -[HAPHTTPClient requestCounter](self, "requestCounter")];
  v4 = MEMORY[0x277CCACA8];
  uniqueClientIdentifier = [(HAPHTTPClient *)self uniqueClientIdentifier];
  v6 = uniqueClientIdentifier;
  v7 = @"0000";
  if (uniqueClientIdentifier)
  {
    v7 = uniqueClientIdentifier;
  }

  v8 = [v4 stringWithFormat:@"0x%@%@", v7, v3];

  return v8;
}

- (id)logIdentifier
{
  dnsName = [(HAPHTTPClient *)self dnsName];

  v4 = MEMORY[0x277CCACA8];
  if (dnsName)
  {
    dnsName2 = [(HAPHTTPClient *)self dnsName];
    port = [(HAPHTTPClient *)self port];
    delegate = [(HAPHTTPClient *)self delegate];
    identifier = [delegate identifier];
    v9 = [v4 stringWithFormat:@"dns:%@(%tu)%@", dnsName2, port, identifier];
  }

  else
  {
    dnsName2 = [(HAPHTTPClient *)self pendingConnectionSocketInfo];
    delegate = [dnsName2 ipAddressString];
    port2 = [(HAPHTTPClient *)self port];
    identifier = [(HAPHTTPClient *)self delegate];
    v8Identifier = [identifier identifier];
    v9 = [v4 stringWithFormat:@"ip:%@(%tu)%@", delegate, port2, v8Identifier];
  }

  return v9;
}

- (unsigned)clientID
{
  httpClient = self->_httpClient;
  if (httpClient)
  {
    LODWORD(httpClient) = [(HAPCoreUtilsHTTPClient *)httpClient getClientID];
  }

  return httpClient;
}

- (void)httpClient:(id)client willSendHTTPMessageWithHeaders:(id)headers body:(id)body
{
  v24 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  headersCopy = headers;
  bodyCopy = body;
  if ([headersCopy length])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = headersCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Sending headers: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  if ([bodyCopy length])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = bodyCopy;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Sending body: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)httpClient:(id)client didReceiveHTTPMessageWithHeaders:(id)headers body:(id)body
{
  v24 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  headersCopy = headers;
  bodyCopy = body;
  if ([headersCopy length])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = headersCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Received headers: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  if ([bodyCopy length])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = bodyCopy;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Received body: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_debugDelegateRespondsToSelector:(SEL)selector
{
  debugDelegate = [(HAPHTTPClient *)self debugDelegate];
  if (debugDelegate)
  {
    debugDelegateQueue = [(HAPHTTPClient *)self debugDelegateQueue];
    if (debugDelegateQueue)
    {
      debugDelegate2 = [(HAPHTTPClient *)self debugDelegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPHTTPClient *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPHTTPClient *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPHTTPClient *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_deserializeUAPJSONData:(id)data error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v20 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v20];
  v7 = v20;
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse JSON response with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = objc_opt_class();
      *buf = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v16 = v15;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Request did not return a dictionary and instead returned a %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v8 = HMErrorFromOSStatus(4294960540);
LABEL_11:

    v6 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = 0;
  if (error)
  {
LABEL_12:
    v17 = v8;
    *error = v8;
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_serializeUAPJSONObject:(id)object error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (![MEMORY[0x277CCAAA0] isValidJSONObject:objectCopy])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = objectCopy;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Object is not valid JSON: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
LABEL_8:
    v7 = HMErrorFromOSStatus(4294960540);
    v6 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:objectCopy options:0 error:&v16];
  v7 = v16;
  if (error)
  {
LABEL_9:
    v11 = v7;
    *error = v7;
  }

LABEL_10:
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_handleHTTPResponseForMessage:(HTTPMessagePrivate *)message completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  [currentActivity markWithReason:@"Received response"];
  delegate = [(HAPHTTPClient *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = delegate;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [v10 incrementHAPIPHTTPResponsesCount];
  }

  var21 = message->var21;
  if (var21)
  {
    v12 = 0;
    var12 = 1000;
  }

  else
  {
    var12 = message->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      v12 = 0;
      var21 = (var12 + 200000);
    }

    else if (message->var7)
    {
      if (message->var6)
      {
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
        var1 = message->var2.var1;
        v21 = HTTPGetHeaderField();
        if (v21)
        {
          var21 = v21;
        }

        else
        {
          var21 = 4294960569;
        }
      }

      else
      {
        v12 = 0;
        var21 = 4294960559;
      }
    }

    else
    {
      v12 = 0;
      var21 = 0;
    }
  }

  CFRelease(message);
  v14 = HMErrorFromOSStatus(var21);
  [currentActivity markWithReason:{@"Completed request", v22}];
  if ([(HAPHTTPClient *)self _supportsWoL])
  {
    [v14 domain];

    [v14 code];
    v15 = [HAPMetricsPowerManagementLogEvent alloc];
    primaryAccessory = [v10 primaryAccessory];
    v17 = [(HAPMetricsPowerManagementLogEvent *)v15 initForHAPAccessory:primaryAccessory withLogType:1];

    v18 = +[HAPMetricsDispatcher sharedInstance];
    [v18 submitLogEvent:v17 error:v14];
  }

  handlerCopy[2](handlerCopy, 0, 4, var12, v14);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendHTTPRequestToURL:(id)l withMethod:(int)method requestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout activity:(id)activity completionHandler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
  lCopy = l;
  objectCopy = object;
  activityCopy = activity;
  handlerCopy = handler;
  v68 = 0;
  delegate = [(HAPHTTPClient *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = delegate;
  }

  else
  {
    v20 = 0;
  }

  v56 = v20;

  [(HAPHTTPClient *)self setRequestCounter:[(HAPHTTPClient *)self requestCounter]+ 1];
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v67[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__HAPHTTPClient__sendHTTPRequestToURL_withMethod_requestObject_serializationType_timeout_activity_completionHandler___block_invoke;
  block[3] = &unk_2786D4CB0;
  v21 = activityCopy;
  v63 = v21;
  selfCopy = self;
  v66 = v67;
  v22 = handlerCopy;
  v65 = v22;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __117__HAPHTTPClient__sendHTTPRequestToURL_withMethod_requestObject_serializationType_timeout_activity_completionHandler___block_invoke_2;
  v59[3] = &unk_2786D4CD8;
  v61 = v67;
  v53 = v23;
  v60 = v53;
  v54 = MEMORY[0x231885210](v59);
  v24 = 0;
  inited = 4294960591;
  v26 = 0;
  if (!lCopy || !v22)
  {
    goto LABEL_26;
  }

  inited = HTTPMessageCreate();
  if (inited)
  {
    goto LABEL_25;
  }

  HTTPMessageSetCompletionBlock();
  v27 = v68;
  *(v68 + 9640) = 15;
  timeoutCopy = 30.0;
  if (timeout > 0.0)
  {
    timeoutCopy = timeout;
  }

  *(v27 + 9644) = timeoutCopy;
  if (method <= 2)
  {
    if (method != 1)
    {
      if (method == 2)
      {
        *(v58 + 3) = 84;
        v29 = 1414745936;
        goto LABEL_24;
      }

LABEL_16:
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v70 = v33;
        v71 = 1024;
        LODWORD(v72) = method;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid HTTP Request Method: %ud", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v30);
      v24 = 0;
      goto LABEL_19;
    }

    *(v58 + 3) = 0;
    v34 = 17735;
    goto LABEL_23;
  }

  if (method == 3)
  {
    *(v58 + 3) = 0;
    v34 = 21840;
LABEL_23:
    v29 = v34 | 0x540000;
    goto LABEL_24;
  }

  if (method != 4)
  {
    goto LABEL_16;
  }

  strcpy(v58 + 3, "ETE");
  v29 = 1162626372;
LABEL_24:
  v58[0] = v29;
  v35 = lCopy;
  [lCopy UTF8String];
  inited = HTTPHeader_InitRequest();
  if (inited)
  {
LABEL_25:
    v24 = 0;
    v26 = 0;
    goto LABEL_26;
  }

  dnsName = [(HAPHTTPClient *)self dnsName];
  v24 = [HAPHTTPClient dnsNameForHTTPHeaderFromDNSNames:dnsName];

  v48 = v24;
  uTF8String = [v24 UTF8String];
  HTTPHeader_SetField();
  if (!objectCopy || type != 1)
  {
    if (objectCopy && type == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_45:
        v51 = objectCopy;
        [objectCopy bytes];
        [objectCopy length];
        inited = HTTPMessageSetBody();
        v26 = 0;
        if (inited)
        {
          goto LABEL_26;
        }

LABEL_48:
        [v21 markWithReason:{@"Sending request", uTF8String}];
        inited = [(HAPCoreUtilsHTTPClient *)self->_httpClient sendMessage:v68];
        if (!inited)
        {
          [v56 incrementHAPIPHTTPRequestsCount];
          v37 = 0;
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (!objectCopy || type != 3)
      {
        v26 = 0;
        if (!objectCopy)
        {
          goto LABEL_48;
        }

LABEL_20:
        inited = 4294960591;
        goto LABEL_26;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_45;
      }
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v57 = 0;
  v26 = [(HAPHTTPClient *)self _serializeUAPJSONObject:objectCopy error:&v57, uTF8String];
  v49 = v57;
  if (v49)
  {
    v36 = v49;
    v37 = v36;
    goto LABEL_27;
  }

  v50 = v26;
  [v26 bytes];
  [v26 length];
  inited = HTTPMessageSetBody();
  if (!inited)
  {
    goto LABEL_48;
  }

LABEL_26:
  v36 = HMErrorFromOSStatus(inited);
  v37 = 0;
LABEL_27:
  if ([(HAPHTTPClient *)self _supportsWoL])
  {
    v38 = v21;
    [v36 domain];

    [v36 code];
    v39 = [HAPMetricsPowerManagementLogEvent alloc];
    primaryAccessory = [v56 primaryAccessory];
    v41 = [(HAPMetricsPowerManagementLogEvent *)v39 initForHAPAccessory:primaryAccessory withLogType:0];

    v42 = +[HAPMetricsDispatcher sharedInstance];
    [v42 submitLogEvent:v41 error:v36];
  }

  v43 = objc_autoreleasePoolPush();
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543874;
    v70 = v45;
    v71 = 2112;
    v72 = v36;
    v73 = 2112;
    v74 = lCopy;
    _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_ERROR, "%{public}@[HAP HTTP Client] Encountered error %@ for sending HTTP request to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v43);
  (*(v22 + 2))(v22, 0, 4, 1000, v36);
  [v21 end];
  [v21 invalidate];

LABEL_32:
  _Block_object_dispose(v67, 8);

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __117__HAPHTTPClient__sendHTTPRequestToURL_withMethod_requestObject_serializationType_timeout_activity_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _handleHTTPResponseForMessage:*(*(*(a1 + 56) + 8) + 24) completionHandler:*(a1 + 48)];
  [*(a1 + 32) end];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)sendDELETERequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler
{
  lCopy = l;
  objectCopy = object;
  handlerCopy = handler;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x231884350](self, a2);
  v17 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 520];
  v18 = [v14 initWithName:v17];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:4 requestObject:objectCopy serializationType:type timeout:v18 activity:handlerCopy completionHandler:0.0];
  __HMFActivityScopeLeave();
}

- (void)sendPOSTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler
{
  lCopy = l;
  objectCopy = object;
  handlerCopy = handler;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x231884350](self, a2);
  v17 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 500];
  v18 = [v14 initWithName:v17];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:2 requestObject:objectCopy serializationType:type timeout:v18 activity:handlerCopy completionHandler:0.0];
  __HMFActivityScopeLeave();
}

- (void)sendPUTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout completionHandler:(id)handler
{
  lCopy = l;
  objectCopy = object;
  handlerCopy = handler;
  v16 = objc_alloc(MEMORY[0x277D0F770]);
  v17 = MEMORY[0x277CCACA8];
  v18 = MEMORY[0x231884350](self, a2);
  v19 = [v17 stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 480];
  v20 = [v16 initWithName:v19];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:3 requestObject:objectCopy serializationType:type timeout:v20 activity:handlerCopy completionHandler:timeout];
  __HMFActivityScopeLeave();
}

- (void)sendGETRequestToURL:(id)l timeout:(double)timeout completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x231884350](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 459];
  v15 = [v11 initWithName:v14];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:1 requestObject:0 serializationType:0 timeout:v15 activity:handlerCopy completionHandler:timeout];
  __HMFActivityScopeLeave();
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  [(HAPHTTPClient *)self setInvalidateRequested:1];
  [(HAPHTTPClient *)self setInvalidateReason:errorCopy];

  [(HAPCoreUtilsHTTPClient *)self->_httpClient invalidate];
  httpClient = self->_httpClient;
  self->_httpClient = 0;
}

- (BOOL)enableUAPSessionSecurityWithReadKey:(unsigned __int8)key[32] writeKey:(unsigned __int8)writeKey[32] error:(id *)error
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = NetTransportChaCha20Poly1305Configure();
  if (!v7)
  {
    [(HAPCoreUtilsHTTPClient *)self->_httpClient setTransportDelegate:v9];
  }

  if (error)
  {
    *error = HMErrorFromOSStatus(v7);
  }

  return v7 == 0;
}

- (BOOL)_supportsWoL
{
  wakeAddress = [(HAPHTTPClient *)self wakeAddress];
  v3 = wakeAddress != 0;

  return v3;
}

- (id)_connectionDestination
{
  v27 = *MEMORY[0x277D85DE8];
  dnsName = [(HAPHTTPClient *)self dnsName];
  wakeAddress = [(HAPHTTPClient *)self wakeAddress];
  if (wakeAddress)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"wake://%@%s%@", wakeAddress, "\x1E", dnsName];
    goto LABEL_14;
  }

  pendingConnectionSocketInfo = [(HAPHTTPClient *)self pendingConnectionSocketInfo];
  ipAddressStringWithScope = [pendingConnectionSocketInfo ipAddressStringWithScope];

  if (ipAddressStringWithScope)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = ipAddressStringWithScope;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Creating socket connection using address with scope %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (+[HAPAccessoryServerIP useDeferredResolutionStrategy])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\x1E%@", dnsName, ipAddressStringWithScope];
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138544130;
        v20 = v15;
        v21 = 2112;
        v22 = ipAddressStringWithScope;
        v23 = 2112;
        v24 = dnsName;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Creating socket connection using both IP and DNS Name: %@ ... %@ with output string: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_13;
    }

    v16 = ipAddressStringWithScope;
  }

  else
  {
    v16 = dnsName;
  }

  v5 = v16;
LABEL_13:

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int)_initializeCoreUtilsHTTPClientWithPort:(int64_t)port withEventsEnabled:(BOOL)enabled factory:(id)factory
{
  enabledCopy = enabled;
  v37 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  _connectionDestination = [(HAPHTTPClient *)self _connectionDestination];
  if (!_connectionDestination)
  {
    goto LABEL_15;
  }

  if (self->_httpClient)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  queue = [(HAPHTTPClient *)self queue];
  v11 = [factoryCopy createHTTPClientWithQueue:queue];
  httpClient = self->_httpClient;
  self->_httpClient = v11;

  v13 = self->_httpClient;
  if (!v13)
  {
LABEL_15:
    v22 = -6718;
    goto LABEL_14;
  }

  getClientID = [(HAPCoreUtilsHTTPClient *)v13 getClientID];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04X", HIWORD(getClientID)];
  [(HAPHTTPClient *)self setUniqueClientIdentifier:v15];

  [(HAPCoreUtilsHTTPClient *)self->_httpClient setConnectionProgressHandler:_HandleConnectionProgress context:self];
  [(HAPCoreUtilsHTTPClient *)self->_httpClient setProperty:@"ipv6DelayNanos" value:&unk_283EA97E8];
  if (enabledCopy)
  {
    v16 = 126992;
  }

  else
  {
    v16 = 126976;
  }

  [(HAPCoreUtilsHTTPClient *)self->_httpClient setFlags:v16 mask:v16];
  [(HAPCoreUtilsHTTPClient *)self->_httpClient setTimeoutInSeconds:30];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:port];
    *buf = 138544130;
    v30 = v20;
    v31 = 2112;
    v32 = _connectionDestination;
    v33 = 2112;
    v34 = v21;
    v35 = 1024;
    clientID = [(HAPHTTPClient *)selfCopy clientID];
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@[HAP HTTP Client] Setting destination to %@:%@ with CID 0x%X", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = -[HAPCoreUtilsHTTPClient setDestination:port:](self->_httpClient, "setDestination:port:", [_connectionDestination UTF8String], port);
  if (!v22)
  {
    v28[2] = 0;
    systemInfo = [MEMORY[0x277D0F910] systemInfo];
    productVariant = [systemInfo productVariant];

    if (productVariant == 3)
    {
      [(HAPHTTPClient *)selfCopy setDebugDelegate:selfCopy queue:selfCopy->_queue];
    }

    v25 = selfCopy;
    v28[3] = _HandleEvent_f;
    v28[0] = v25;
    v28[1] = _Invalidated_f;
    v28[4] = _HandleSocketEvent_f;
    [(HAPCoreUtilsHTTPClient *)self->_httpClient setDelegate:v28];
    [(HAPCoreUtilsHTTPClient *)self->_httpClient setContext:v25];
    goto LABEL_13;
  }

LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)setDebugDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  [(HAPHTTPClient *)self setDebugDelegate:delegate];
  [(HAPHTTPClient *)self setDebugDelegateQueue:queueCopy];

  v7[2] = _HandleDidReceiveMessage_f;
  v7[0] = self;
  v7[1] = _HandleWillSendMessage_f;
  [(HAPCoreUtilsHTTPClient *)self->_httpClient setDebugDelegate:v7];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  [(HAPHTTPClient *)self setDelegate:delegate];
  [(HAPHTTPClient *)self setDelegateQueue:queueCopy];
}

- (NSString)peerEndpointDescription
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v2 = [(HAPCoreUtilsHTTPClient *)self->_httpClient getPeerAddress:v6 maxLength:28 outLength:0];
  v3 = 0;
  if (!v2)
  {
    if (SockAddrToString())
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1];
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HAPSocketInfo)peerSocketInfo
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  if ([(HAPHTTPClient *)self getHttpClientPeerAddress:v5])
  {
    v2 = 0;
  }

  else
  {
    v2 = [[HAPSocketInfo alloc] initWithSocket:v5];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HMFNetAddress)peerAddressEx
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v3 = [(HAPHTTPClient *)self getHttpClientPeerAddress:v19];
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      httpClient = selfCopy->_httpClient;
      v13 = 138543874;
      v14 = v8;
      v15 = 1024;
      v16 = v4;
      v17 = 2048;
      v18 = httpClient;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@[IP Accessory Server HTTP Client] Failed to get peer address %d client ref %p", &v13, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:v19];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int)getHttpClientPeerAddress:(sockaddr_storage *)address
{
  *&v3 = 0xDEDEDEDEDEDEDEDELL;
  *(&v3 + 1) = 0xDEDEDEDEDEDEDEDELL;
  *&address->__ss_pad2[80] = v3;
  *&address->__ss_pad2[96] = v3;
  *&address->__ss_pad2[48] = v3;
  *&address->__ss_pad2[64] = v3;
  *&address->__ss_pad2[16] = v3;
  *&address->__ss_pad2[32] = v3;
  *&address->ss_len = v3;
  *address->__ss_pad2 = v3;
  return [HAPCoreUtilsHTTPClient getPeerAddress:"getPeerAddress:maxLength:outLength:" maxLength:? outLength:?];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_httpClient)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      dnsName = self->_dnsName;
      *buf = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = dnsName;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[IP Accessory Server HTTP Client %@] HTTPClient not invalidated - invalidating....", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [(HAPHTTPClient *)self invalidate];
  }

  v8.receiver = self;
  v8.super_class = HAPHTTPClient;
  [(HAPHTTPClient *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_13338);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __28__HAPHTTPClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v26 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)dnsNameForHTTPHeaderFromDNSNames:(id)names
{
  if (names)
  {
    v3 = MEMORY[0x277CCACA8];
    namesCopy = names;
    v5 = [v3 stringWithFormat:@"%c", 30];
    v6 = [namesCopy componentsSeparatedByString:v5];

    firstObject = [v6 firstObject];
    v8 = [firstObject rangeOfString:@".%" options:4];

    firstObject2 = [v6 firstObject];
    v10 = firstObject2;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(__CFString *)firstObject2 substringWithRange:0, v8];

      v10 = v11;
    }
  }

  else
  {
    v10 = &stru_283E79C60;
  }

  return v10;
}

@end