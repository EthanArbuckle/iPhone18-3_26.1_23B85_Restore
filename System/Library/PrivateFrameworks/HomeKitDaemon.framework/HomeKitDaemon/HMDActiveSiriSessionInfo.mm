@interface HMDActiveSiriSessionInfo
- (BOOL)_handleFrame:(id)a3;
- (BOOL)_maybeHandleFrame:(id)a3 error:(id)a4;
- (BOOL)isBulkSendActive;
- (BOOL)isSiriSessionActive;
- (HMDActiveSiriSessionInfo)initWithIdentifier:(id)a3 delegate:(id)a4;
- (HMDActiveSiriSessionInfoDelegate)delegate;
- (NSString)description;
- (void)_bulkSendDidComplete;
- (void)_bulkSendDidFail;
- (void)_doReadAudioFrames;
- (void)invalidate;
- (void)markSiriPluginReady;
- (void)markSiriPluginStopped;
- (void)readFirstFrame;
- (void)setActiveBulkSendSession:(id)a3;
@end

@implementation HMDActiveSiriSessionInfo

- (HMDActiveSiriSessionInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_handleFrame:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HMDActiveSiriSessionInfo *)self delegate];
    v12 = [v10 objectForKeyedSubscript:@"firstPassResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 && ![v7 length])
    {
      v37 = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [(HMDActiveSiriSessionInfo *)v38 identifier];
        *buf = 138543618;
        v54 = v40;
        v55 = 2112;
        v56 = v41;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@First pass metadata packet observed (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      [v11 activeSiriSession:v38 didReceiveFirstPassMetadata:v14];
      v21 = 1;
    }

    else if ([v7 length])
    {
      v15 = [v10 objectForKeyedSubscript:@"sequenceNumber"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = [v10 objectForKeyedSubscript:@"rms"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v21 = v20 != 0;
        if (v20)
        {
          context = v17;
          [v10 objectForKeyedSubscript:@"holdTimeMs"];
          v23 = v22 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          v11 = v22;
          if (v25)
          {
            [v22 activeSiriSession:self didReceiveButtonUpWithDuration:v25];
          }

          v26 = v22;
          v17 = context;
          [v26 activeSiriSession:self didCreateAudioFrame:v7 sequenceNumber:context gain:v20];
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v46 = self;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v54 = v50;
            _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Audio received packet but no Gain", buf, 0xCu);
          }

          objc_autoreleasePoolPop(contexta);
        }
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v45;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Audio received packet but no sequence number", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v42);
        v21 = 0;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [(HMDActiveSiriSessionInfo *)v33 identifier];
        *buf = 138543618;
        v54 = v35;
        v55 = 2112;
        v56 = v36;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Received packet, but no audio was included (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v21 = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [(HMDActiveSiriSessionInfo *)v28 identifier];
      *buf = 138543618;
      v54 = v30;
      v55 = 2112;
      v56 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Received packet, but no metadata was included (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v21 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_bulkSendDidComplete
{
  if ([(HMDActiveSiriSessionInfo *)self isBulkSendActive])
  {
    [(HMDActiveSiriSessionInfo *)self setDidBulkSendSessionComplete:1];
  }

  if ([(HMDActiveSiriSessionInfo *)self isSiriSessionActive])
  {
    v3 = [(HMDActiveSiriSessionInfo *)self delegate];
    [v3 activeSiriSessionDidStop:self];
  }
}

- (void)_bulkSendDidFail
{
  if ([(HMDActiveSiriSessionInfo *)self isBulkSendActive])
  {
    [(HMDActiveSiriSessionInfo *)self setDidBulkSendSessionFail:1];
    [(HMDActiveSiriSessionInfo *)self setBulkSendSession:0];
  }

  if ([(HMDActiveSiriSessionInfo *)self isSiriSessionActive])
  {
    v3 = [(HMDActiveSiriSessionInfo *)self delegate];
    [v3 activeSiriSessionDidStop:self];
  }
}

- (void)_doReadAudioFrames
{
  v3 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];

  if (v3)
  {
    v4 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__HMDActiveSiriSessionInfo__doReadAudioFrames__block_invoke;
    v5[3] = &unk_278689230;
    v5[4] = self;
    [v4 read:v5];
  }
}

void __46__HMDActiveSiriSessionInfo__doReadAudioFrames__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _maybeHandleFrame:v5 error:v6])
  {
    v7 = [*(a1 + 32) bulkSendSession];
    v8 = [v7 isActive];

    if (v8)
    {
      [*(a1 + 32) _doReadAudioFrames];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Audio receive channel is complete", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [*(a1 + 32) _bulkSendDidComplete];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_maybeHandleFrame:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    self = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Audio receive channel has error; closing. (%@)", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (!v6 || [(HMDActiveSiriSessionInfo *)self _handleFrame:v6])
    {
      v11 = 1;
      goto LABEL_9;
    }

    v14 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];
    [v14 cancelWithReason:5];
  }

  [(HMDActiveSiriSessionInfo *)self _bulkSendDidFail];
  v11 = 0;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)readFirstFrame
{
  v3 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HMDActiveSiriSessionInfo_readFirstFrame__block_invoke;
  v4[3] = &unk_278689230;
  v4[4] = self;
  [v3 read:v4];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMDActiveSiriSessionInfo *)self isBulkSendActive])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Plugin removed before all audio was received; cancelling (%@)", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [(HMDActiveSiriSessionInfo *)v4 bulkSendSession];
    [v7 cancelWithReason:3];

    [(HMDActiveSiriSessionInfo *)v4 setBulkSendSession:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setActiveBulkSendSession:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Siri active session got two send sessions? Canceling the latter one.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [v4 cancelWithReason:2];
  }

  else
  {
    [(HMDActiveSiriSessionInfo *)self setBulkSendSession:v4];
    if ([(HMDActiveSiriSessionInfo *)self isSiriSessionActive])
    {
      [(HMDActiveSiriSessionInfo *)self _doReadAudioFrames];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)markSiriPluginStopped
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMDActiveSiriSessionInfo *)self didBulkSendSessionComplete];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Plugin stopped and all audio was received; closing as complete (%@)", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v10 = [(HMDActiveSiriSessionInfo *)v7 bulkSendSession];
      [v10 cancelWithReason:0];

      [(HMDActiveSiriSessionInfo *)v7 setBulkSendSession:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markSiriPluginReady
{
  [(HMDActiveSiriSessionInfo *)self setDidSiriSessionStart:1];
  if ([(HMDActiveSiriSessionInfo *)self isBulkSendActive])
  {

    [(HMDActiveSiriSessionInfo *)self _doReadAudioFrames];
  }
}

- (BOOL)isSiriSessionActive
{
  v3 = [(HMDActiveSiriSessionInfo *)self didSiriSessionStart];
  if (v3)
  {
    LOBYTE(v3) = ![(HMDActiveSiriSessionInfo *)self didSiriSessionStop];
  }

  return v3;
}

- (BOOL)isBulkSendActive
{
  v3 = [(HMDActiveSiriSessionInfo *)self bulkSendSession];
  if (v3 && ![(HMDActiveSiriSessionInfo *)self didBulkSendSessionFail])
  {
    v4 = ![(HMDActiveSiriSessionInfo *)self didBulkSendSessionComplete];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDActiveSiriSessionInfo *)self identifier];
  v5 = [v3 stringWithFormat:@"(id=%@, bsFail=%d, bsDone=%d, ssStart=%d, ssStop=%d)", v4, -[HMDActiveSiriSessionInfo didBulkSendSessionFail](self, "didBulkSendSessionFail"), -[HMDActiveSiriSessionInfo didBulkSendSessionComplete](self, "didBulkSendSessionComplete"), -[HMDActiveSiriSessionInfo didSiriSessionStart](self, "didSiriSessionStart"), -[HMDActiveSiriSessionInfo didSiriSessionStop](self, "didSiriSessionStop")];

  return v5;
}

- (HMDActiveSiriSessionInfo)initWithIdentifier:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDActiveSiriSessionInfo;
  v9 = [(HMDActiveSiriSessionInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end