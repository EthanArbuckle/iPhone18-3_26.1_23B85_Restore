@interface HMDDataStreamStreamProtocol
- (BOOL)isActive;
- (HMDDataStreamProtocolDelegate)dataStream;
- (HMDDataStreamStreamProtocol)initWithDataStream:(id)a3;
- (void)_closeAllSocketsWithError:(id)a3;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3;
- (void)_reevaluateTrafficClassForDataStream;
- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStreamInitiatedClose:(id)a3;
- (void)registerSocket:(id)a3;
- (void)sendData:(id)a3 socket:(id)a4 completion:(id)a5;
- (void)unregisterSocket:(id)a3;
@end

@implementation HMDDataStreamStreamProtocol

- (HMDDataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

- (void)_closeAllSocketsWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDDataStreamStreamProtocol *)self sockets];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11)
        {
          [v11 closeWithError:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(HMDDataStreamStreamProtocol *)self sockets];
  [v12 removeAllObjects];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138544130;
    v20 = v17;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support response message with topic=%@, header=%@, payload=%@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138544130;
    v20 = v17;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support request message with topic=%@, header=%@, payload=%@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDDataStreamStreamProtocol *)self sockets];
  v15 = [v14 objectForKey:v11];

  if (!v15)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v13;
      v22 = "%{public}@No active socket, dropping packet with topic=%@ payload=%@";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_229538000, v23, v24, v22, &v26, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  v16 = [v13 objectForKeyedSubscript:@"data"];

  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v13;
      v22 = "%{public}@No data field in payload, dropping packet with topic=%@ payload=%@";
      v23 = v20;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v17 = [v13 objectForKeyedSubscript:@"data"];
  [v15 handleIncomingData:v17];

LABEL_10:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamInitiatedClose:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(HMDDataStreamStreamProtocol *)self sockets:a3];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) closeInitiated];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  v2 = [(HMDDataStreamStreamProtocol *)self sockets];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)sendData:(id)a3 socket:(id)a4 completion:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDDataStreamStreamProtocol *)self dataStream];
  v12 = [v9 applicationProtocolName];

  v18 = @"data";
  v19[0] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDDataStreamStreamProtocol_sendData_socket_completion___block_invoke;
  v16[3] = &unk_278688DD0;
  v17 = v8;
  v14 = v8;
  [v11 sendEventForProtocol:@"stream" topic:v12 payload:v13 completion:v16];

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

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamStreamProtocol *)self isActive]!= a3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [(HMDDataStreamStreamProtocol *)v5 isActive];
      v8 = HMFBooleanToString();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stream protocol changes active to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMDDataStreamStreamProtocol *)v5 dataStream];
    [v9 protocolDidUpdateActiveStatus:v5];
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
  v3 = [(NSMapTable *)self->_sockets objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 trafficClass];
        if (v11 > v7)
        {
          v12 = v11;
          v13 = [v10 applicationProtocolName];

          v6 = v13;
          v7 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);

    if (v6)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
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
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (requested by: '%@')", buf, 0x20u);
      }

      goto LABEL_17;
    }
  }

  else
  {

    v7 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  v18 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v19;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (reset)", buf, 0x16u);
  }

  v6 = 0;
LABEL_17:

  objc_autoreleasePoolPop(v14);
  v20 = [(HMDDataStreamStreamProtocol *)self dataStream];
  [v20 setTrafficClass:v7];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSocket:(id)a3
{
  v10 = a3;
  v4 = [(HMDDataStreamStreamProtocol *)self isActive];
  v5 = [(HMDDataStreamStreamProtocol *)self sockets];
  v6 = [v10 applicationProtocolName];
  v7 = [v5 objectForKey:v6];

  if (v7 == v10)
  {
    v8 = [(HMDDataStreamStreamProtocol *)self sockets];
    v9 = [v10 applicationProtocolName];
    [v8 removeObjectForKey:v9];

    [(HMDDataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v4];
    [(HMDDataStreamStreamProtocol *)self _reevaluateTrafficClassForDataStream];
  }
}

- (void)registerSocket:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamStreamProtocol *)self isActive];
  v6 = [(HMDDataStreamStreamProtocol *)self sockets];
  v7 = [v4 applicationProtocolName];
  v11 = [v6 objectForKey:v7];

  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  [v11 closeWithError:v8];

  v9 = [(HMDDataStreamStreamProtocol *)self sockets];
  v10 = [v4 applicationProtocolName];
  [v9 setObject:v4 forKey:v10];

  [(HMDDataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v5];
}

- (HMDDataStreamStreamProtocol)initWithDataStream:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDDataStreamStreamProtocol;
  v5 = [(HMDDataStreamStreamProtocol *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sockets = v5->_sockets;
    v5->_sockets = v6;

    objc_storeWeak(&v5->_dataStream, v4);
  }

  return v5;
}

@end