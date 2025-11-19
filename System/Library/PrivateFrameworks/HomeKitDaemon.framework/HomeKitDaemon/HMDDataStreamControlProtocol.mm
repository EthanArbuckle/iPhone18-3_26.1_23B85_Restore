@interface HMDDataStreamControlProtocol
- (BOOL)isExpectedHelloControlMessage:(id)a3 header:(id)a4;
- (HMDDataStreamControlProtocol)initWithLogIdentifier:(id)a3;
- (void)_sendHelloMessageOnDataStream:(id)a3;
- (void)_sendVersionRequestOnDataStream:(id)a3;
- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStreamDidOpen:(id)a3;
@end

@implementation HMDDataStreamControlProtocol

- (void)_sendVersionRequestOnDataStream:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HMFRandomUInt32();
  v9 = @"version";
  v10[0] = &unk_283E75EB8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDDataStreamControlProtocol__sendVersionRequestOnDataStream___block_invoke;
  v8[3] = &unk_27868A250;
  v8[4] = self;
  [v4 sendRequestForProtocol:@"control" topic:@"version" identifier:v5 payload:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __64__HMDDataStreamControlProtocol__sendVersionRequestOnDataStream___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send version control message (%@)", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendHelloMessageOnDataStream:(id)a3
{
  v4 = a3;
  v5 = HMFRandomUInt32();
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v5];
  [(HMDDataStreamControlProtocol *)self setPendingHelloMessageIdentifier:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDDataStreamControlProtocol__sendHelloMessageOnDataStream___block_invoke;
  v7[3] = &unk_27868A250;
  v7[4] = self;
  [v4 sendRequestForProtocol:@"control" topic:@"hello" identifier:v5 payload:MEMORY[0x277CBEC10] completion:v7];
}

void __62__HMDDataStreamControlProtocol__sendHelloMessageOnDataStream___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send hello control message (%@)", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(HMDDataStreamControlProtocol *)self isExpectedHelloControlMessage:v11 header:v12])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Hello control message reply received", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (![(HMDDataStreamControlProtocol *)v15 helloMessageResponseReceived])
    {
      v18 = [v13 objectForKey:@"capability-version"];

      if (v18)
      {
        [(HMDDataStreamControlProtocol *)v15 _sendVersionRequestOnDataStream:v10];
      }

      else
      {
        v15->_controlHandshakeComplete = 1;
      }
    }

    [(HMDDataStreamControlProtocol *)v15 setHelloMessageResponseReceived:1];
    [(HMDDataStreamControlProtocol *)v15 setPendingHelloMessageIdentifier:0];
  }

  else
  {
    v19 = [v11 isEqual:@"version"];
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v24;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Received Peer Request Version Response %@", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [v13 objectForKey:@"version"];

      if (v25)
      {
        v26 = [v13 objectForKey:@"version"];
        peerDataStreamProtocolVersion = v21->_peerDataStreamProtocolVersion;
        v21->_peerDataStreamProtocolVersion = v26;
      }

      v21->_controlHandshakeComplete = 1;
    }

    else
    {
      if (v23)
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v28;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Expected hello reply or Version but got something else", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExpectedHelloControlMessage:(id)a3 header:(id)a4
{
  v6 = a4;
  if (![a3 isEqual:@"hello"])
  {
    goto LABEL_5;
  }

  v7 = [(HMDDataStreamControlProtocol *)self pendingHelloMessageIdentifier];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"id"];
  v9 = [(HMDDataStreamControlProtocol *)self pendingHelloMessageIdentifier];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"status"];
    v12 = [v11 isEqual:&unk_283E75320];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 isEqual:@"hello"])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Hello control message received", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [v10 sendResponseForRequestHeader:v12 payload:MEMORY[0x277CBEC10] status:0 completion:&__block_literal_global_278185];
  }

  else
  {
    v18 = [v11 isEqual:@"version"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Version control message received", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [v13 objectForKey:@"version"];

      if (v24)
      {
        v25 = [v13 objectForKey:@"version"];
        peerDataStreamProtocolVersion = v20->_peerDataStreamProtocolVersion;
        v20->_peerDataStreamProtocolVersion = v25;
      }

      v34 = @"version";
      v35[0] = &unk_283E75EB8;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      [v10 sendResponseForRequestHeader:v12 payload:v27 status:0 completion:&__block_literal_global_3_278187];
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v28;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Control Protocol received unexpected request '%@'", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidOpen:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending hello control message", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamControlProtocol *)v6 _sendHelloMessageOnDataStream:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDDataStreamControlProtocol)initWithLogIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMDDataStreamControlProtocol;
  v5 = [(HMDDataStreamControlProtocol *)&v12 init];
  v6 = v5;
  if (v5)
  {
    pendingHelloMessageIdentifier = v5->_pendingHelloMessageIdentifier;
    v5->_pendingHelloMessageIdentifier = 0;

    *&v6->_helloMessageResponseReceived = 0;
    v8 = [v4 copy];
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = v8;

    peerDataStreamProtocolVersion = v6->_peerDataStreamProtocolVersion;
    v6->_peerDataStreamProtocolVersion = &unk_283E75FE8;
  }

  return v6;
}

@end