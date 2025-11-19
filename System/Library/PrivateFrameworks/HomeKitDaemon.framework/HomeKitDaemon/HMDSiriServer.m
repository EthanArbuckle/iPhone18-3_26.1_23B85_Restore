@interface HMDSiriServer
- (BOOL)_isAudioCodecSupported:(id)a3;
- (BOOL)_isSiriInputType:(int64_t)a3 supportedOnAccessory:(id)a4 siriAudioConfiguration:(id)a5;
- (HMDSiriServer)init;
- (HMDSiriServer)initWithQueue:(id)a3;
- (id)_getBestAudioCodecConfiguration:(id)a3;
- (id)_getSiriSessionForAccessory:(id)a3;
- (void)_checkSiriSupportByAccessory:(id)a3;
- (void)_handleDisconnectForAccessory:(id)a3;
- (void)_maybeTearDownSiriPlugin;
- (void)_removeDataStreamListenerForAccessory:(id)a3;
- (void)_setupSiriPlugin;
- (void)_setupSiriUIContext;
- (void)_tearDownSiriUIContext;
- (void)accessory:(id)a3 didCloseDataStreamWithError:(id)a4;
- (void)accessory:(id)a3 didReceiveBulkSessionCandidate:(id)a4;
- (void)accessoryDidStartListening:(id)a3;
- (void)handleAccessoryConfigured:(id)a3;
- (void)handleAccessoryHasBulkSendDataStream:(id)a3;
- (void)handleAccessoryRemoved:(id)a3;
- (void)handleAccessoryUnconfigured:(id)a3;
- (void)monitor:(id)a3 needsSiriCapabilityForAccessory:(id)a4;
- (void)monitor:(id)a3 willAllowAccessoryForDragonSiri:(id)a4;
- (void)monitorHasNoAccessoriesForDragonSiri:(id)a3;
- (void)registerForMessages;
- (void)setTargetableAccessory:(id)a3 withControllers:(id)a4;
@end

@implementation HMDSiriServer

- (void)accessory:(id)a3 didCloseDataStreamWithError:(id)a4
{
  v5 = a3;
  v6 = [(HMDSiriServer *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDSiriServer_accessory_didCloseDataStreamWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __55__HMDSiriServer_accessory_didCloseDataStreamWithError___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream closed for accessory %@/%@.", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidStartListening:(id)a3
{
  v4 = a3;
  v5 = [(HMDSiriServer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDSiriServer_accessoryDidStartListening___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__HMDSiriServer_accessoryDidStartListening___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory's DataStream started.", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if ([*(a1 + 32) targetControlIdentifier])
    {
      [v8 sendTargetControlWhoAmIWithIdentifier:{objc_msgSend(*(a1 + 32), "targetControlIdentifier")}];
    }
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory provided is not a HMDHAPAccessory; cannot send targetControl identifier.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didReceiveBulkSessionCandidate:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    v11 = [(HMDSiriServer *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v18 = v10;
    v19 = v7;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Accessory provided is not a HMDHAPAccessory; cannot activate corresponding siri session.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getSiriSessionForAccessory:*(a1 + 40)];
  if (!v2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received new Siri Audio stream but unable to create local context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 48);
    v22 = 2;
    goto LABEL_12;
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) metadata];
  v5 = [v2 activateWithAccessory:v3 metadata:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v23;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received new Siri Audio stream but unable to activate Siri.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v21 = *(a1 + 48);
    v22 = 5;
LABEL_12:
    [v21 rejectBulkSendSessionWithStatus:v22];
    goto LABEL_13;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received new Siri Audio stream; setting it up.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v2 activeSessionToken];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) queue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke_22;
  v25[3] = &unk_278678AD0;
  v26 = v11;
  v14 = v2;
  v15 = *(a1 + 32);
  v27 = v14;
  v28 = v15;
  v16 = v11;
  [v12 acceptBulkSendSessionOnQueue:v13 callback:v25];

LABEL_13:
  v24 = *MEMORY[0x277D85DE8];
}

void __58__HMDSiriServer_accessory_didReceiveBulkSessionCandidate___block_invoke_22(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) activeSessionToken];

  if (v4 == v5)
  {
    [*(a1 + 40) setActiveBulkSendSession:v3];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Siri session canceled before it began; cleaning up.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [v3 cancelWithReason:2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)monitorHasNoAccessoriesForDragonSiri:(id)a3
{
  v4 = [(HMDSiriServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDSiriServer_monitorHasNoAccessoriesForDragonSiri___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)monitor:(id)a3 willAllowAccessoryForDragonSiri:(id)a4
{
  v5 = a4;
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
  if (v7)
  {
    v8 = [(HMDSiriServer *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HMDSiriServer_monitor_willAllowAccessoryForDragonSiri___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(v8, v9);
  }
}

uint64_t __57__HMDSiriServer_monitor_willAllowAccessoryForDragonSiri___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 UUIDString];
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory is ready to accept Siri; registering listener (%@/%@)", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _setupSiriPlugin];
  [*(a1 + 32) _setupSiriUIContext];
  result = [*(a1 + 40) addDataStreamBulkSendListener:*(a1 + 32) fileType:@"audio.siri"];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)monitor:(id)a3 needsSiriCapabilityForAccessory:(id)a4
{
  v5 = a4;
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
  if (v7)
  {
    v8 = [(HMDSiriServer *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HMDSiriServer_monitor_needsSiriCapabilityForAccessory___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(v8, v9);
  }
}

- (id)_getSiriSessionForAccessory:(id)a3
{
  [(HMDSiriServer *)self _setupSiriUIContext];

  return [(HMDSiriServer *)self siriUISession];
}

- (void)_removeDataStreamListenerForAccessory:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMDSiriServer *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HMDSiriServer__removeDataStreamListenerForAccessory___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

uint64_t __55__HMDSiriServer__removeDataStreamListenerForAccessory___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 UUIDString];
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory no longer able to accept Siri; deregistering listener (%@/%@)", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) removeDataStreamBulkSendListener:*(a1 + 32)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_isAudioCodecSupported:(id)a3
{
  v3 = a3;
  v4 = [v3 codecType];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 codecParameters];

  if (v6)
  {
    v7 = [v3 codecParameters];
    v6 = [v7 bitRate];
    if (v6)
    {
      v8 = [v3 codecParameters];
      v9 = [v8 sampleRate];

      if (!v9)
      {
        goto LABEL_7;
      }

      v10 = [v3 codecType];
      v11 = [v10 value];

      if (v11 != 3 || ([v3 codecParameters], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bitRate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "value"), v13, v12, v14))
      {
LABEL_7:
        LOBYTE(v6) = 0;
        goto LABEL_10;
      }

      v7 = [v3 codecParameters];
      v15 = [v7 sampleRate];
      LOBYTE(v6) = [v15 value] == 1;
    }
  }

LABEL_10:

  return v6;
}

- (id)_getBestAudioCodecConfiguration:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(HMDSiriServer *)self _isAudioCodecSupported:v9, v13])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_isSiriInputType:(int64_t)a3 supportedOnAccessory:(id)a4 siriAudioConfiguration:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9 || ([v9 supportedConfigurations], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v8 name];
      v36 = [v8 uuid];
      v37 = [v36 UUIDString];
      *buf = 138543874;
      v59 = v34;
      v60 = 2112;
      *v61 = v35;
      *&v61[8] = 2112;
      *&v61[10] = v37;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Marking accessory not ready for connection due to missing Siri/Audio ability (%@/%@)", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if ([v10 siriInputType] != a3)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = [v10 siriInputType];
      v41 = [v8 name];
      v42 = [v8 uuid];
      [v42 UUIDString];
      v43 = v56 = v31;
      *buf = 138544386;
      v59 = v39;
      v60 = 2048;
      *v61 = a3;
      *&v61[8] = 2048;
      *&v61[10] = v40;
      *&v61[18] = 2112;
      *&v61[20] = v41;
      v62 = 2112;
      v63 = v43;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Checking for input type %ld, but accessory has input type %ld (%@/%@)", buf, 0x34u);

      v31 = v56;
    }

LABEL_17:
    objc_autoreleasePoolPop(v31);
    v14 = 0;
    goto LABEL_18;
  }

  v12 = [v10 supportedConfigurations];
  v13 = [(HMDSiriServer *)self _getBestAudioCodecConfiguration:v12];

  v14 = v13 != 0;
  if (v13)
  {
    v15 = [v10 selectedConfiguration];
    v16 = [v13 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        v20 = [v8 name];
        v52 = [v8 uuid];
        v54 = v17;
        v21 = [v52 UUIDString];
        [v10 selectedConfiguration];
        *buf = 138544386;
        v59 = v50;
        v60 = 2112;
        *v61 = v20;
        *&v61[8] = 2112;
        *&v61[10] = v21;
        v22 = v21;
        *&v61[18] = 2112;
        *&v61[20] = v13;
        v63 = v62 = 2112;
        v23 = v63;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Need to set the audio configuration (%@/%@) %@ != %@", buf, 0x34u);

        v17 = v54;
      }

      objc_autoreleasePoolPop(v17);
      [v8 setSelectedSiriAudioConfiguration:v13];
    }

    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v8 name];
      v29 = [v8 uuid];
      [v29 UUIDString];
      v30 = v55 = v24;
      *buf = 138543874;
      v59 = v27;
      v60 = 2112;
      *v61 = v28;
      *&v61[8] = 2112;
      *&v61[10] = v30;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Marking accessory READY for connection (%@/%@)", buf, 0x20u);

      v24 = v55;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v46 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v57 = [v10 supportedConfigurations];
      v51 = [v57 count];
      v47 = [v8 name];
      v48 = [v8 uuid];
      [v48 UUIDString];
      *buf = 138544130;
      v59 = v53;
      v60 = 1024;
      *v61 = v51;
      *&v61[4] = 2112;
      *&v61[6] = v47;
      *&v61[16] = *&v61[14] = 2112;
      v49 = *&v61[16];
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Marking accessory not ready for connection due to none of the %u codecs allowed (%@/%@)", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v24);
LABEL_18:

  v44 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_checkSiriSupportByAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 canAcceptBulkSendListeners])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke;
    v14[3] = &unk_278678AA8;
    v14[4] = self;
    v15 = v4;
    [v15 getSupportedSiriAudioConfiguration:v14];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 name];
      v10 = [v4 uuid];
      v11 = [v10 UUIDString];
      *buf = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Marking accessory not ready for connection due to missing HDS (%@/%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = [(HMDSiriServer *)v6 siriAccessoryMonitor];
    [v12 accessory:v4 setSupportsDragonSiri:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke_2;
  block[3] = &unk_27868A010;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __46__HMDSiriServer__checkSiriSupportByAccessory___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSiriInputType:0 supportedOnAccessory:*(a1 + 40) siriAudioConfiguration:*(a1 + 48)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = HAPStringFromAccessoryServerSession();
    [v3 registerForSessionRestore:v4];
  }

  v5 = [*(a1 + 32) siriAccessoryMonitor];
  [v5 accessory:*(a1 + 40) setSupportsDragonSiri:v2];
}

- (void)_tearDownSiriUIContext
{
  v3 = [(HMDSiriServer *)self siriUISession];

  if (v3)
  {
    v5 = [(HMDSiriServer *)self siriUISession];
    [(HMDSiriServer *)self setSiriUISession:0];
    v4 = [(HMDSiriServer *)self siriInputServer];
    [v4 deregisterSiriSession:v5];

    [(HMDSiriServer *)self _maybeTearDownSiriPlugin];
  }
}

- (void)_setupSiriUIContext
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriServer *)self siriUISession];

  if (!v3)
  {
    v4 = +[HMDSiriSession siriSessionForUI];
    if (v4)
    {
      v5 = [(HMDSiriServer *)self siriInputServer];
      v6 = [v5 registerSiriSession:v4];

      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v6)
      {
        if (v10)
        {
          v11 = HMFGetLogIdentifier();
          v12 = [v4 identifier];
          v16 = 138543618;
          v17 = v11;
          v18 = 2112;
          v19 = v12;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Created UI session with session id %@", &v16, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [(HMDSiriServer *)v8 setSiriUISession:v4];
        goto LABEL_13;
      }

      if (v10)
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        v14 = "%{public}@Created UI session but it failed to register properly; aborting.";
        goto LABEL_11;
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        v14 = "%{public}@Unable to create UI session; aborting.";
LABEL_11:
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, v14, &v16, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
LABEL_13:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_maybeTearDownSiriPlugin
{
  v3 = [(HMDSiriServer *)self siriUISession];
  if (!v3)
  {
    v4 = [(HMDSiriServer *)self siriInputServer];

    if (!v4)
    {
      return;
    }

    v5 = [(HMDSiriServer *)self siriInputServer];
    [v5 invalidate];
    v3 = v5;
  }
}

- (void)_setupSiriPlugin
{
  v3 = [(HMDSiriServer *)self siriInputServer];

  if (!v3)
  {
    v4 = [HMDSiriRemoteInputServer alloc];
    v6 = [(HMDSiriServer *)self queue];
    v5 = [(HMDSiriRemoteInputServer *)v4 initWithQueue:v6];
    [(HMDSiriServer *)self setSiriInputServer:v5];
  }
}

- (void)_handleDisconnectForAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 name];
      v12 = [v6 uuid];
      *buf = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling disconnect for %@/%@.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [(HMDSiriServer *)v8 queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__HMDSiriServer__handleDisconnectForAccessory___block_invoke;
    v15[3] = &unk_27868A750;
    v15[4] = v8;
    v16 = v6;
    dispatch_async(v13, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __47__HMDSiriServer__handleDisconnectForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriAccessoryMonitor];
  [v2 accessory:*(a1 + 40) setSupportsDragonSiri:0];
}

- (void)handleAccessoryRemoved:(id)a3
{
  v4 = [a3 object];
  [(HMDSiriServer *)self _handleDisconnectForAccessory:v4];
}

- (void)handleAccessoryUnconfigured:(id)a3
{
  v4 = [a3 object];
  [(HMDSiriServer *)self _handleDisconnectForAccessory:v4];
}

- (void)handleAccessoryConfigured:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMDSiriServer *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__HMDSiriServer_handleAccessoryConfigured___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

- (void)handleAccessoryHasBulkSendDataStream:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMDSiriServer *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HMDSiriServer_handleAccessoryHasBulkSendDataStream___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

uint64_t __54__HMDSiriServer_handleAccessoryHasBulkSendDataStream___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) uuid];
    v8 = [v7 UUIDString];
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory has bulk-send Data Stream capability (%@/%@)", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _checkSiriSupportByAccessory:*(a1 + 40)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerForMessages
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for messages.", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDSiriServer *)v4 notificationRegistration];
  [v7 addObserver:sel_handleAccessoryHasBulkSendDataStream_ name:@"HMDAccessoryDoesSupportBulkSendDataStreamNotification" object:0];

  v8 = [(HMDSiriServer *)v4 notificationRegistration];
  [v8 addObserver:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  v9 = [(HMDSiriServer *)v4 notificationRegistration];
  [v9 addObserver:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:0];

  v10 = [(HMDSiriServer *)v4 notificationRegistration];
  [v10 addObserver:sel_handleAccessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setTargetableAccessory:(id)a3 withControllers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDSiriServer_setTargetableAccessory_withControllers___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__HMDSiriServer_setTargetableAccessory_withControllers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriAccessoryMonitor];
  [v2 setTargetableAccessory:*(a1 + 40) withControllers:*(a1 + 48)];

  if (![*(a1 + 32) targetControlIdentifier])
  {
    v5 = [*(a1 + 40) uuid];
    v3 = [*(a1 + 40) home];
    v4 = [v3 uuid];
    [*(a1 + 32) setTargetControlIdentifier:{identifierForTargetWithUUID(v5, v4)}];
  }
}

- (HMDSiriServer)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDSiriServer;
  v6 = [(HMDSiriServer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [[HMDNotificationRegistration alloc] initWithRegisterer:v7];
    notificationRegistration = v7->_notificationRegistration;
    v7->_notificationRegistration = v8;

    v10 = [[HMDSiriAccessoryMonitor alloc] initWithDelegate:v7];
    siriAccessoryMonitor = v7->_siriAccessoryMonitor;
    v7->_siriAccessoryMonitor = v10;

    v7->_targetControlIdentifier = 0;
  }

  return v7;
}

- (HMDSiriServer)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  inactive = dispatch_workloop_create_inactive("HMDSiriServer-Audio");
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_workloop_set_scheduler_priority();
  dispatch_workloop_set_cpupercent();
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);
  v5 = dispatch_queue_create_with_target_V2("HMDSiriServer", v3, inactive);

  v6 = [(HMDSiriServer *)self initWithQueue:v5];
  return v6;
}

@end