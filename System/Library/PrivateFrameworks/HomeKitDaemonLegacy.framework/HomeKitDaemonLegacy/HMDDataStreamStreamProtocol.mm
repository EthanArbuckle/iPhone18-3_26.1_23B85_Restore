@interface HMDDataStreamStreamProtocol
- (BOOL)isActive;
- (HMDDataStreamProtocolDelegate)dataStream;
- (HMDDataStreamStreamProtocol)initWithDataStream:(id)stream;
- (void)_closeAllSocketsWithError:(id)error;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value;
- (void)_reevaluateTrafficClassForDataStream;
- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload;
- (void)dataStreamInitiatedClose:(id)close;
- (void)registerSocket:(id)socket;
- (void)sendData:(id)data socket:(id)socket completion:(id)completion;
- (void)unregisterSocket:(id)socket;
@end

@implementation HMDDataStreamStreamProtocol

- (HMDDataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

- (void)_closeAllSocketsWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  objectEnumerator = [sockets objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11)
        {
          [v11 closeWithError:errorCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  sockets2 = [(HMDDataStreamStreamProtocol *)self sockets];
  [sockets2 removeAllObjects];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  responseCopy = response;
  headerCopy = header;
  payloadCopy = payload;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138544130;
    v20 = v17;
    v21 = 2112;
    v22 = responseCopy;
    v23 = 2112;
    v24 = headerCopy;
    v25 = 2112;
    v26 = payloadCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support response message with topic=%@, header=%@, payload=%@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  requestCopy = request;
  headerCopy = header;
  payloadCopy = payload;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138544130;
    v20 = v17;
    v21 = 2112;
    v22 = requestCopy;
    v23 = 2112;
    v24 = headerCopy;
    v25 = 2112;
    v26 = payloadCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support request message with topic=%@, header=%@, payload=%@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload
{
  v32 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  eventCopy = event;
  headerCopy = header;
  payloadCopy = payload;
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  v15 = [sockets objectForKey:eventCopy];

  if (!v15)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = eventCopy;
      v30 = 2112;
      v31 = payloadCopy;
      v22 = "%{public}@No active socket, dropping packet with topic=%@ payload=%@";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v23, v24, v22, &v26, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  v16 = [payloadCopy objectForKeyedSubscript:@"data"];

  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = eventCopy;
      v30 = 2112;
      v31 = payloadCopy;
      v22 = "%{public}@No data field in payload, dropping packet with topic=%@ payload=%@";
      v23 = v20;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v17 = [payloadCopy objectForKeyedSubscript:@"data"];
  [v15 handleIncomingData:v17];

LABEL_10:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamInitiatedClose:(id)close
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(HMDDataStreamStreamProtocol *)self sockets:close];
  objectEnumerator = [v3 objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v8++) closeInitiated];
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  v3 = [sockets count] != 0;

  return v3;
}

- (void)sendData:(id)data socket:(id)socket completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  socketCopy = socket;
  dataCopy = data;
  dataStream = [(HMDDataStreamStreamProtocol *)self dataStream];
  applicationProtocolName = [socketCopy applicationProtocolName];

  v18 = @"data";
  v19[0] = dataCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDDataStreamStreamProtocol_sendData_socket_completion___block_invoke;
  v16[3] = &unk_279735558;
  v17 = completionCopy;
  v14 = completionCopy;
  [dataStream sendEventForProtocol:@"stream" topic:applicationProtocolName payload:v13 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HMDDataStreamStreamProtocol_sendData_socket_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamStreamProtocol *)self isActive]!= value)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [(HMDDataStreamStreamProtocol *)selfCopy isActive];
      v8 = HMFBooleanToString();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stream protocol changes active to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    dataStream = [(HMDDataStreamStreamProtocol *)selfCopy dataStream];
    [dataStream protocolDidUpdateActiveStatus:selfCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateTrafficClassForDataStream
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  objectEnumerator = [(NSMapTable *)self->_sockets objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        trafficClass = [v10 trafficClass];
        if (trafficClass > v7)
        {
          v12 = trafficClass;
          applicationProtocolName = [v10 applicationProtocolName];

          v6 = applicationProtocolName;
          v7 = v12;
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);

    if (v6)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v17;
        v28 = 2048;
        v29 = v7;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (requested by: '%@')", buf, 0x20u);
      }

      goto LABEL_17;
    }
  }

  else
  {

    v7 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v19;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (reset)", buf, 0x16u);
  }

  v6 = 0;
LABEL_17:

  objc_autoreleasePoolPop(v14);
  dataStream = [(HMDDataStreamStreamProtocol *)self dataStream];
  [dataStream setTrafficClass:v7];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSocket:(id)socket
{
  socketCopy = socket;
  isActive = [(HMDDataStreamStreamProtocol *)self isActive];
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  applicationProtocolName = [socketCopy applicationProtocolName];
  v7 = [sockets objectForKey:applicationProtocolName];

  if (v7 == socketCopy)
  {
    sockets2 = [(HMDDataStreamStreamProtocol *)self sockets];
    applicationProtocolName2 = [socketCopy applicationProtocolName];
    [sockets2 removeObjectForKey:applicationProtocolName2];

    [(HMDDataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
    [(HMDDataStreamStreamProtocol *)self _reevaluateTrafficClassForDataStream];
  }
}

- (void)registerSocket:(id)socket
{
  socketCopy = socket;
  isActive = [(HMDDataStreamStreamProtocol *)self isActive];
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  applicationProtocolName = [socketCopy applicationProtocolName];
  v11 = [sockets objectForKey:applicationProtocolName];

  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  [v11 closeWithError:v8];

  sockets2 = [(HMDDataStreamStreamProtocol *)self sockets];
  applicationProtocolName2 = [socketCopy applicationProtocolName];
  [sockets2 setObject:socketCopy forKey:applicationProtocolName2];

  [(HMDDataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
}

- (HMDDataStreamStreamProtocol)initWithDataStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = HMDDataStreamStreamProtocol;
  v5 = [(HMDDataStreamStreamProtocol *)&v9 init];
  if (v5)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sockets = v5->_sockets;
    v5->_sockets = strongToWeakObjectsMapTable;

    objc_storeWeak(&v5->_dataStream, streamCopy);
  }

  return v5;
}

@end