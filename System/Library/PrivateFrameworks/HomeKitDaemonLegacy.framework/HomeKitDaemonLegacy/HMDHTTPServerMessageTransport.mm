@interface HMDHTTPServerMessageTransport
+ (id)maximumSupportedProtocolVersion;
+ (id)shortDescription;
- (HMDHTTPServerMessageTransport)init;
- (HMDHTTPServerMessageTransport)initWithServerIdentifier:(id)identifier;
- (HMDHTTPServerMessageTransportDelegate)delegate;
- (NSArray)clientConnections;
- (NSArray)devices;
- (NSDictionary)TXTRecord;
- (id)_clientConnectionForDevice:(id)device;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)shortDescription;
- (void)__registerPingHandler;
- (void)__registerReceiveMessageHandler;
- (void)__registerSendMessageHandler;
- (void)__registerSendResponseHandler;
- (void)_stopWithError:(id)error;
- (void)addClientConnection:(id)connection;
- (void)confirmDevice:(id)device completionHandler:(id)handler;
- (void)removeAllClientConnections;
- (void)removeClientConnection:(id)connection;
- (void)removeTXTRecordValueForKey:(id)key;
- (void)sendMessage:(id)message toDevices:(id)devices timeout:(double)timeout completionHandler:(id)handler;
- (void)server:(id)server didCloseConnection:(id)connection;
- (void)server:(id)server didOpenConnection:(id)connection;
- (void)setTXTRecordValue:(id)value forKey:(id)key;
- (void)startWithCompletionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHTTPServerMessageTransport

- (HMDHTTPServerMessageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDHTTPServerMessageTransport *)self debugDescription];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  clientConnections = [(HMDHTTPServerMessageTransport *)self clientConnections];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(clientConnections, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = clientConnections;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) debugDescription];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [dictionary setObject:v7 forKeyedSubscript:@"clientConnectionStates"];
  server = [(HMDHTTPServerMessageTransport *)self server];
  dumpState = [server dumpState];
  [dictionary setObject:dumpState forKeyedSubscript:@"server"];

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)timerDidFire:(id)fire
{
  v32 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  clientConnections = [(HMDHTTPServerMessageTransport *)self clientConnections];
  v6 = [clientConnections copy];

  v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        lostConnectionTimer = [v11 lostConnectionTimer];
        v13 = [lostConnectionTimer isEqual:fireCopy];

        if (v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = HMFGetLogIdentifier();
            shortDescription = [(HMDHTTPServerMessageTransport *)self shortDescription];
            *buf = 138543874;
            v26 = v16;
            v27 = 2112;
            v28 = shortDescription;
            v29 = 2112;
            v30 = v11;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Removing unreachable client connection: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          [(HMDHTTPServerMessageTransport *)self removeClientConnection:v11];
          delegate = [(HMDHTTPServerMessageTransport *)self delegate];
          device = [v11 device];
          [delegate server:self didRemoveDevice:device];

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)server didCloseConnection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connectionCopy = connection;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  clientConnections = [(HMDHTTPServerMessageTransport *)self clientConnections];
  v9 = [clientConnections countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(clientConnections);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        connection = [v13 connection];
        v15 = [connection isEqual:connectionCopy];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = HMFGetLogIdentifier();
            shortDescription = [(HMDHTTPServerMessageTransport *)self shortDescription];
            device = [v13 device];
            *buf = 138544130;
            v27 = v18;
            v28 = 2112;
            v29 = shortDescription;
            v30 = 2112;
            v31 = connectionCopy;
            v32 = 2112;
            v33 = device;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Removing closed connection, %@, from device: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
          [v13 setConnection:0];
          goto LABEL_13;
        }
      }

      v10 = [clientConnections countByEnumeratingWithState:&v22 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)server didOpenConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    shortDescription = [(HMDHTTPServerMessageTransport *)self shortDescription];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = shortDescription;
    v17 = 2112;
    v18 = connectionCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received new connection: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)__registerPingHandler
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES 'GET'"];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"path == '/ping'"];
  v5 = [objc_alloc(MEMORY[0x277D0F7D8]) initWithMethodPredicate:v3 URLPredicate:v4 matchBlock:0];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__HMDHTTPServerMessageTransport___registerPingHandler__block_invoke;
  v10 = &unk_27972AD80;
  objc_copyWeak(&v11, &location);
  [v5 setRequestBlock:&v7];
  v6 = [(HMDHTTPServerMessageTransport *)self server:v7];
  [v6 registerRequestHandler:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__HMDHTTPServerMessageTransport___registerPingHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [WeakRetained shortDescription];
    v16 = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received /ping request from connection: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v5 responseWithStatusCode:200];
  v13 = [v12 mutableCopy];

  v14 = [@"success" dataUsingEncoding:4];
  [v13 setBody:v14];

  [v6 sendResponse:v13 completionHandler:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)__registerSendMessageHandler
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES 'POST'"];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"path == '/sendMessage'"];
  v5 = [objc_alloc(MEMORY[0x277D0F7D8]) initWithMethodPredicate:v3 URLPredicate:v4 matchBlock:0];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__HMDHTTPServerMessageTransport___registerSendMessageHandler__block_invoke;
  v10 = &unk_27972AD80;
  objc_copyWeak(&v11, &location);
  [v5 setRequestBlock:&v7];
  v6 = [(HMDHTTPServerMessageTransport *)self server:v7];
  [v6 registerRequestHandler:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __61__HMDHTTPServerMessageTransport___registerSendMessageHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [WeakRetained shortDescription];
    *buf = 138544130;
    v46 = v10;
    v47 = 2112;
    v48 = v11;
    v49 = 2112;
    v50 = v5;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received /sendMessage request, %@, from connection: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v44 = 0;
  v12 = _validateClientRequest(v5, &v44);
  v13 = v44;
  if (v12)
  {
    v14 = [v5 body];
    v15 = [v14 length] == 0;

    if (v15)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = WeakRetained;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v26 shortDescription];
        *buf = 138543618;
        v46 = v28;
        v47 = 2112;
        v48 = v29;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Received invalid request body payload", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v17 = [v5 responseWithStatusCode:400];
      [v6 sendResponse:v17 completionHandler:0];
    }

    else
    {
      v16 = [v5 headerFields];
      v17 = [v16 hmf_UUIDForKey:@"Client-Identifier"];

      v38 = [[HMDHTTPDevice alloc] initWithIdentifier:v17];
      v18 = [v5 headerFields];
      v19 = [v18 hmf_stringForKey:@"Protocol-Version"];

      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v19];
      }

      else
      {
        v20 = 0;
      }

      v30 = MEMORY[0x277CCAC58];
      v31 = [v5 body];
      v32 = [v30 propertyListWithData:v31 options:0 format:0 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      v35 = [WeakRetained delegate];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __61__HMDHTTPServerMessageTransport___registerSendMessageHandler__block_invoke_167;
      v39[3] = &unk_27972ADA8;
      objc_copyWeak(&v43, (a1 + 32));
      v36 = v20;
      v40 = v36;
      v41 = v5;
      v42 = v6;
      [v35 server:WeakRetained didReceiveMessage:v34 fromDevice:v38 completionHandler:v39];

      objc_destroyWeak(&v43);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [WeakRetained shortDescription];
      *buf = 138543874;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%@] %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v17 = [v5 responseWithStatusCode:400];
    [v6 sendResponse:v17 completionHandler:0];
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __61__HMDHTTPServerMessageTransport___registerSendMessageHandler__block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([HMDHTTPMessageTransport protocolVersionSupportsExtendedMessages:*(a1 + 32)])
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v7 setObject:v5 forKeyedSubscript:@"p"];
    if (v6)
    {
      v8 = [v6 domain];
      v9 = [v8 isEqualToString:@"com.apple.HomeKit.Messaging.HTTP"];

      if (v9)
      {
        v10 = [v6 code];
      }

      else
      {
        v10 = 200;
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    [v7 setObject:v19 forKeyedSubscript:@"s"];

    v11 = [v7 copy];
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = v5;
    if (!v11)
    {
LABEL_15:
      v12 = 0;
      v14 = 200;
      goto LABEL_16;
    }
  }

  v31 = 0;
  v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:100 options:0 error:&v31];
  v13 = v31;
  if (v12)
  {
    v14 = 200;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [WeakRetained shortDescription];
      v18 = v29 = v15;
      *buf = 138543874;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to serialize response message with error: %@", buf, 0x20u);

      v15 = v29;
    }

    objc_autoreleasePoolPop(v15);
    v14 = 400;
  }

LABEL_16:
  v20 = [*(a1 + 40) responseWithStatusCode:v14];
  v21 = [v20 mutableCopy];

  v22 = +[HMDHTTPMessageTransport protocolVersion];
  v23 = [v22 versionString];
  [v21 setHeaderValue:v23 forHeaderKey:@"Protocol-Version"];

  if (v14 == 200)
  {
    [v21 setBody:v12];
  }

  v24 = objc_autoreleasePoolPush();
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [WeakRetained shortDescription];
    *buf = 138543874;
    v33 = v26;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Sending response: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
  [*(a1 + 48) sendResponse:v21 completionHandler:0];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)__registerSendResponseHandler
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES 'PUT'"];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"path == '/sendResponse'"];
  v5 = [objc_alloc(MEMORY[0x277D0F7D8]) initWithMethodPredicate:v3 URLPredicate:v4 matchBlock:0];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __62__HMDHTTPServerMessageTransport___registerSendResponseHandler__block_invoke;
  v10 = &unk_27972AD80;
  objc_copyWeak(&v11, &location);
  [v5 setRequestBlock:&v7];
  v6 = [(HMDHTTPServerMessageTransport *)self server:v7];
  [v6 registerRequestHandler:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__HMDHTTPServerMessageTransport___registerSendResponseHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [WeakRetained shortDescription];
    *buf = 138544130;
    v62 = v10;
    v63 = 2112;
    v64 = v11;
    v65 = 2112;
    v66 = v5;
    v67 = 2112;
    v68 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received /sendResponse request, %@, from connection: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v60 = 0;
  v12 = _validateClientRequest(v5, &v60);
  v13 = v60;
  if ((v12 & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [WeakRetained shortDescription];
      *buf = 138543874;
      v62 = v29;
      v63 = 2112;
      v64 = v30;
      v65 = 2112;
      v66 = v13;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

  v14 = [v5 headerFields];
  v15 = [v14 hmf_UUIDForKey:@"Transaction-Identifier"];

  if (!v15)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [WeakRetained shortDescription];
      *buf = 138543618;
      v62 = v31;
      v63 = 2112;
      v64 = v32;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] Missing the message transaction identifier", buf, 0x16u);
    }

LABEL_20:

    objc_autoreleasePoolPop(v27);
    v17 = 0;
    v25 = 400;
LABEL_34:

    goto LABEL_35;
  }

  v16 = [v5 headerFields];
  v55 = [v16 hmf_UUIDForKey:@"Client-Identifier"];

  if (v55)
  {
    v54 = [[HMDHTTPDevice alloc] initWithIdentifier:v55];
    v53 = [WeakRetained _clientConnectionForDevice:v54];
    v17 = [v53 removeCompletionHandlerForTransactionIdentifier:v15];
    v18 = [v5 body];
    v19 = [v18 length];

    if (v19)
    {
      v20 = MEMORY[0x277CCAC58];
      v21 = [v5 body];
      v59 = 0;
      v52 = [v20 propertyListWithData:v21 options:0 format:0 error:&v59];
      v51 = v59;

      if (v52)
      {
        v19 = v52;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (isKindOfClass)
        {

          goto LABEL_13;
        }

        v37 = objc_autoreleasePoolPush();
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          v48 = [WeakRetained shortDescription];
          v40 = objc_opt_class();
          *buf = 138543874;
          v62 = v50;
          v63 = 2112;
          v64 = v48;
          v65 = 2112;
          v66 = v40;
          v41 = v37;
          v42 = v40;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%@ Invalid message class type: %@", buf, 0x20u);

          v37 = v41;
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          v39 = [WeakRetained shortDescription];
          *buf = 138543874;
          v62 = v49;
          v63 = 2112;
          v64 = v39;
          v65 = 2112;
          v66 = v51;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to deserialize message payload with error: %@", buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(v37);
      v19 = 0;
      v25 = 400;
      v26 = v51;
      goto LABEL_30;
    }

LABEL_13:
    if (!v17)
    {
      v25 = 200;
LABEL_31:

      goto LABEL_32;
    }

    (v17)[2](v17, v19, 0);
    v25 = 200;
    v26 = v17;
    v17 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    v36 = [WeakRetained shortDescription];
    *buf = 138543618;
    v62 = v35;
    v63 = 2112;
    v64 = v36;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%@] Missing the message client identifier", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v17 = 0;
  v25 = 400;
LABEL_32:

  if (v17)
  {
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication Failure" reason:@"The response message was invalid." suggestion:0];
    (v17)[2](v17, 0, v13);
    goto LABEL_34;
  }

LABEL_35:
  v43 = [v5 responseWithStatusCode:v25];
  v44 = [v43 mutableCopy];

  v45 = [@"Dummy Body" dataUsingEncoding:4];
  [v44 setBody:v45];

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __62__HMDHTTPServerMessageTransport___registerSendResponseHandler__block_invoke_160;
  v56[3] = &unk_2797338E8;
  objc_copyWeak(&v58, (a1 + 32));
  v46 = v5;
  v57 = v46;
  [v6 sendResponse:v44 completionHandler:v56];

  objc_destroyWeak(&v58);
  v47 = *MEMORY[0x277D85DE8];
}

void __62__HMDHTTPServerMessageTransport___registerSendResponseHandler__block_invoke_160(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [WeakRetained shortDescription];
      v10 = *(a1 + 32);
      v17 = 138544130;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v3;
      v11 = "%{public}@[%@] Failed to response to /sendResponse request, %@, with error: %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 42;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v17, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [WeakRetained shortDescription];
    v15 = *(a1 + 32);
    v17 = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v15;
    v11 = "%{public}@[%@] Successfully sent response to /sendResponse request: %@";
    v12 = v7;
    v13 = OS_LOG_TYPE_DEBUG;
    v14 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)__registerReceiveMessageHandler
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES 'GET'"];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"path == '/receiveMessage'"];
  v5 = [objc_alloc(MEMORY[0x277D0F7D8]) initWithMethodPredicate:v3 URLPredicate:v4 matchBlock:0];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __64__HMDHTTPServerMessageTransport___registerReceiveMessageHandler__block_invoke;
  v10 = &unk_27972AD80;
  objc_copyWeak(&v11, &location);
  [v5 setRequestBlock:&v7];
  v6 = [(HMDHTTPServerMessageTransport *)self server:v7];
  [v6 registerRequestHandler:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __64__HMDHTTPServerMessageTransport___registerReceiveMessageHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [WeakRetained shortDescription];
    *buf = 138543874;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received /receiveMessage request from connection: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v29 = 0;
  v12 = _validateClientRequest(v5, &v29);
  v13 = v29;
  if (v12)
  {
    v14 = [v5 headerFields];
    v15 = [v14 hmf_UUIDForKey:@"Client-Identifier"];

    v16 = [[HMDHTTPDevice alloc] initWithIdentifier:v15];
    v17 = [WeakRetained _clientConnectionForDevice:v16];
    if (!v17)
    {
      v17 = [[_HMDHTTPServerClientConnection alloc] initWithDevice:v16];
      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          [WeakRetained shortDescription];
          v21 = v28 = v18;
          *buf = 138543874;
          v31 = v20;
          v32 = 2112;
          v33 = v21;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received new connection from device: %@", buf, 0x20u);

          v18 = v28;
        }

        objc_autoreleasePoolPop(v18);
        [(_HMDHTTPServerClientConnection *)v17 setConnection:v6];
        [WeakRetained addClientConnection:v17];
        v22 = [WeakRetained delegate];
        [v22 server:WeakRetained didAddDevice:v16];
      }
    }

    [(_HMDHTTPServerClientConnection *)v17 setConnection:v6, v28];
    [(_HMDHTTPServerClientConnection *)v17 queueRequest:v5];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [WeakRetained shortDescription];
      *buf = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%@] %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v15 = [v5 responseWithStatusCode:400];
    [(HMDHTTPDevice *)v6 sendResponse:v15 completionHandler:0];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_clientConnectionForDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientConnections = [(HMDHTTPServerMessageTransport *)self clientConnections];
  v6 = [clientConnections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(clientConnections);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        device = [v9 device];
        v11 = [device isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [clientConnections countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)sendMessage:(id)message toDevices:(id)devices timeout:(double)timeout completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  devicesCopy = devices;
  handlerCopy = handler;
  anyObject = [devicesCopy anyObject];
  v14 = [(HMDHTTPServerMessageTransport *)self _clientConnectionForDevice:anyObject];
  v15 = v14;
  if (v14)
  {
    timeoutCopy = 60.0;
    if (timeout > 0.0)
    {
      timeoutCopy = timeout;
    }

    [v14 sendMessage:messageCopy timeout:handlerCopy completionHandler:timeoutCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription = [(HMDHTTPServerMessageTransport *)self shortDescription];
      v23 = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = shortDescription;
      v27 = 2112;
      v28 = anyObject;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unable to send message to device, %@, the device is not currently connected", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (handlerCopy)
    {
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication Failure." reason:@"The device is not currently connected." suggestion:0];
      handlerCopy[2](handlerCopy, 0, v21);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)confirmDevice:(id)device completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  v8 = [(HMDHTTPServerMessageTransport *)self _clientConnectionForDevice:deviceCopy];
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__HMDHTTPServerMessageTransport_confirmDevice_completionHandler___block_invoke;
    v14[3] = &unk_27972AD58;
    v15 = handlerCopy;
    [v8 sendMessage:MEMORY[0x277CBEC10] timeout:v14 completionHandler:10.0];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@The device, %@, is not currently connected", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HMDHTTPServerMessageTransport_confirmDevice_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)_stopWithError:(id)error
{
  errorCopy = error;
  server = [(HMDHTTPServerMessageTransport *)self server];
  [server stop];

  [(HMDHTTPServerMessageTransport *)self removeAllClientConnections];
  delegate = [(HMDHTTPServerMessageTransport *)self delegate];
  [delegate server:self didStopWithError:errorCopy];
}

- (void)startWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    uUIDString = [uUID UUIDString];
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = uUIDString;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting with session identifier: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  server = [(HMDHTTPServerMessageTransport *)selfCopy server];
  netService = [server netService];
  uUIDString2 = [uUID UUIDString];
  v14 = [uUIDString2 dataUsingEncoding:4];
  [netService setTXTRecordValue:v14 forKey:@"si"];

  server2 = [(HMDHTTPServerMessageTransport *)selfCopy server];
  [server2 startWithCompletionHandler:handlerCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeTXTRecordValueForKey:(id)key
{
  keyCopy = key;
  server = [(HMDHTTPServerMessageTransport *)self server];
  netService = [server netService];
  [netService removeTXTRecordValueForKey:keyCopy];
}

- (void)setTXTRecordValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  server = [(HMDHTTPServerMessageTransport *)self server];
  netService = [server netService];
  [netService setTXTRecordValue:valueCopy forKey:keyCopy];
}

- (NSDictionary)TXTRecord
{
  server = [(HMDHTTPServerMessageTransport *)self server];
  netService = [server netService];
  tXTRecord = [netService TXTRecord];

  return tXTRecord;
}

- (void)removeAllClientConnections
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_clientConnections copy];
  [(NSMutableArray *)self->_clientConnections removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeClientConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_clientConnections removeObject:connectionCopy];
    os_unfair_lock_unlock(&self->_lock);
    [connectionCopy invalidate];
  }
}

- (void)addClientConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v6 = connectionCopy;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_clientConnections addObject:v6];
    lostConnectionTimer = [v6 lostConnectionTimer];
    [lostConnectionTimer setDelegate:self];

    os_unfair_lock_unlock(&self->_lock);
    connectionCopy = v6;
  }
}

- (NSArray)clientConnections
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_clientConnections copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)devices
{
  v19 = *MEMORY[0x277D85DE8];
  clientConnections = [(HMDHTTPServerMessageTransport *)self clientConnections];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(clientConnections, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = clientConnections;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isConnected])
        {
          device = [v9 device];
          [v3 addObject:device];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDHTTPServerMessageTransport *)self identifier];
  uUIDString = [identifier UUIDString];
  v9 = uUIDString;
  if (pointer)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v11 = [v5 stringWithFormat:@"<%@ %@, Identifier = %@>", shortDescription, v9, v10];
  }

  else
  {
    v11 = [v5 stringWithFormat:@"<%@ %@, Identifier = %@>", shortDescription, uUIDString, &stru_286509E58];
  }

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDHTTPServerMessageTransport *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (HMDHTTPServerMessageTransport)initWithServerIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v31.receiver = self;
    v31.super_class = HMDHTTPServerMessageTransport;
    v5 = [(HMDHTTPServerMessageTransport *)&v31 init];
    if (v5)
    {
      v6 = [identifierCopy copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      array = [MEMORY[0x277CBEB18] array];
      clientConnections = v5->_clientConnections;
      v5->_clientConnections = array;

      v10 = objc_alloc(MEMORY[0x277D0F7E0]);
      identifier = [(HMDHTTPServerMessageTransport *)v5 identifier];
      uUIDString = [identifier UUIDString];
      v13 = [v10 initWithServiceType:@"_homekit._tcp." name:uUIDString port:0 options:7];
      server = v5->_server;
      v5->_server = v13;

      server = [(HMDHTTPServerMessageTransport *)v5 server];
      [server setDelegate:v5];

      server2 = [(HMDHTTPServerMessageTransport *)v5 server];
      [server2 setConnectionIdleTimeout:3600.0];

      if (isInternalBuild())
      {
        server3 = [(HMDHTTPServerMessageTransport *)v5 server];
        netService = [server3 netService];

        v19 = deviceName();
        v20 = [v19 dataUsingEncoding:4];
        [netService setTXTRecordValue:v20 forKey:@"Name"];

        v21 = +[HMDHomeKitVersion currentVersion];
        versionString = [v21 versionString];
        v23 = [versionString dataUsingEncoding:4];
        [netService setTXTRecordValue:v23 forKey:@"sw"];
      }

      [(HMDHTTPServerMessageTransport *)v5 __registerReceiveMessageHandler];
      [(HMDHTTPServerMessageTransport *)v5 __registerSendResponseHandler];
      [(HMDHTTPServerMessageTransport *)v5 __registerSendMessageHandler];
      [(HMDHTTPServerMessageTransport *)v5 __registerPingHandler];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = +[HMDHTTPServerMessageTransport description];
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%@] A valid identifier is required", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    selfCopy = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDHTTPServerMessageTransport)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)maximumSupportedProtocolVersion
{
  if (maximumSupportedProtocolVersion_onceToken != -1)
  {
    dispatch_once(&maximumSupportedProtocolVersion_onceToken, &__block_literal_global_104219);
  }

  v3 = maximumSupportedProtocolVersion_maximumSupportedProtocolVersion;

  return v3;
}

uint64_t __64__HMDHTTPServerMessageTransport_maximumSupportedProtocolVersion__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:2 minorVersion:0 updateVersion:0];
  v1 = maximumSupportedProtocolVersion_maximumSupportedProtocolVersion;
  maximumSupportedProtocolVersion_maximumSupportedProtocolVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end