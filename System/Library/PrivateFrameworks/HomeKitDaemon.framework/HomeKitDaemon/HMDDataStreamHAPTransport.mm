@interface HMDDataStreamHAPTransport
- (BOOL)_isRunning;
- (HMDDataStreamHAPTransport)initWithAccessory:(id)a3 sessionIdentifier:(int64_t)a4 maxControllerTransportMTU:(unint64_t)a5 workQueue:(id)a6 logIdentifier:(id)a7;
- (HMDDataStreamTransportDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)_buildWriteRequestWithError:(id *)a3 shouldForceClose:(BOOL)a4;
- (id)_getPendingWritesUpToLength:(unint64_t)a3;
- (void)_cancelAllPendingWritesWithError:(id)a3;
- (void)_deregisterForMessages;
- (void)_doNextWriteOperation;
- (void)_handleCharacteristicsValueUpdated:(id)a3;
- (void)_handleCompletionWithResponseTuples:(id)a3;
- (void)_handleInterruptCharacteristicValue:(id)a3;
- (void)_handleReceivedData:(id)a3;
- (void)_notifyDelegateDidClose;
- (void)_notifyDelegateDidFailWithError:(id)a3;
- (void)_notifyDelegateDidOpen;
- (void)_notifyDelegateDidReceiveFrame:(id)a3;
- (void)_notifyWriteOperation:(id)a3 didCompleteWithError:(id)a4;
- (void)_registerForMessages;
- (void)_removeAndMarkCompleteAllCompletedWrites;
- (void)_stopTransportForWriteFailureError:(id)a3;
- (void)_stopWithError:(id)a3;
- (void)_teardownSessionWithError:(id)a3;
- (void)_writeCharacteristicRequests:(id)a3 completion:(id)a4;
- (void)close;
- (void)connect;
- (void)dealloc;
- (void)sendRawFrame:(id)a3 completion:(id)a4;
@end

@implementation HMDDataStreamHAPTransport

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDDataStreamTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_handleInterruptCharacteristicValue:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamHAPTransport *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = v4;
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
    v30 = 0;
    v9 = [MEMORY[0x277CFEB10] parsedFromData:v8 error:&v30];
    v10 = v30;
    if (v10 || !v9)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v27;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Interrupt] The interrupt value could not be parsed (error=%@)", buf, 0x16u);
      }
    }

    else
    {
      v11 = [v9 requestToSendIdentifiers];
      v12 = [v11 bytes];

      v13 = [v9 requestToSendIdentifiers];
      v14 = [v13 length];

      v15 = [(HMDDataStreamHAPTransport *)self sessionIdentifier];
      v16 = [v15 intValue];

      v17 = memchr(v12, v16, v14);
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      v21 = v20;
      if (v17)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v22;
          v33 = 1024;
          LODWORD(v34) = v16;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Interrupt] The interrupt value contains valid accessory Request To Send (0x%x)", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDDataStreamHAPTransport *)v19 setLastAccessoryRequestToSendFlag:1];
        [(HMDDataStreamHAPTransport *)v19 _doNextWriteOperation];
        goto LABEL_19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v28;
        v33 = 1024;
        LODWORD(v34) = v16;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@[Interrupt] The interrupt value does not contain any Request To Send (0x%x)", buf, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v18);
LABEL_19:

    goto LABEL_20;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Interrupt] Received interrupt value but it was not of the expected type; IGNORING.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicsValueUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamHAPTransport *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDDataStreamHAPTransport__handleCharacteristicsValueUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__HMDDataStreamHAPTransport__handleCharacteristicsValueUpdated___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = [v2 isEqualToString:@"HMDAccessoryCharacteristicsChangedNotification"];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = &HMDModifiedCharacteristicsKey;
LABEL_5:
    v8 = [v4 userInfo];
    v9 = [v8 hmf_arrayForKey:*v5];

    goto LABEL_7;
  }

  v6 = [v4 name];
  v7 = [v6 isEqualToString:@"HMDNotificationCharacteristicValueUpdated"];

  if (v7)
  {
    v4 = *(a1 + 32);
    v5 = &HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_156181];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling characteristics value updated notification: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 40);
    v17 = [v10 value];
    [v16 _handleInterruptCharacteristicValue:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMDDataStreamHAPTransport__handleCharacteristicsValueUpdated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000139-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)_handleReceivedData:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = dispatch_data_create([v4 bytes], objc_msgSend(v4, "length"), 0, 0);
  v7 = [(HMDDataStreamHAPTransport *)self byteReader];
  [v7 pushFrameData:v6];

  v8 = [(HMDDataStreamHAPTransport *)self byteReader];
  v9 = [v8 hasFailed];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@DataStream has encountered irrecoverable framing issue. Closing stream.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052];
    [(HMDDataStreamHAPTransport *)v11 _teardownSessionWithError:v14];
  }

  else
  {
    v15 = [(HMDDataStreamHAPTransport *)self byteReader];
    v16 = [v15 hasCompleteFrame];

    if (v16)
    {
      do
      {
        v17 = [(HMDDataStreamHAPTransport *)self byteReader];
        v18 = [v17 popRawFrame];

        if (v18)
        {
          [(HMDDataStreamHAPTransport *)self _notifyDelegateDidReceiveFrame:v18];
        }

        v19 = [(HMDDataStreamHAPTransport *)self byteReader];
        v20 = [v19 hasCompleteFrame];
      }

      while ((v20 & 1) != 0);
    }
  }

  objc_autoreleasePoolPop(v5);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWriteOperation:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a4;
  v7 = [a3 completion];
  v8 = [(HMDDataStreamHAPTransport *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMDDataStreamHAPTransport__notifyWriteOperation_didCompleteWithError___block_invoke;
  v11[3] = &unk_27868A7A0;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

- (void)_cancelAllPendingWritesWithError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HMDDataStreamHAPTransport *)self pendingWrites];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMDDataStreamHAPTransport *)self _notifyWriteOperation:*(*(&v12 + 1) + 8 * v9++) didCompleteWithError:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(HMDDataStreamHAPTransport *)self pendingWrites];
  [v10 removeAllObjects];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_removeAndMarkCompleteAllCompletedWrites
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(HMDDataStreamHAPTransport *)self pendingWrites];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  while (2)
  {
    v8 = 0;
    v9 = v6;
    v6 += v5;
    do
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v12 + 1) + 8 * v8);
      if (![v10 isComplete])
      {
        v6 = v9;
        goto LABEL_11;
      }

      [(HMDDataStreamHAPTransport *)self _notifyWriteOperation:v10 didCompleteWithError:0];
      ++v9;
      ++v8;
    }

    while (v5 != v8);
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (v6)
  {
    v3 = [(HMDDataStreamHAPTransport *)self pendingWrites];
    [v3 removeObjectsInRange:{0, v6}];
LABEL_13:
  }

  [(HMDDataStreamHAPTransport *)self setIsWriteInProgress:0];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopTransportForWriteFailureError:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061 underlyingError:a3];
  [(HMDDataStreamHAPTransport *)self _teardownSessionWithError:v4];
}

- (void)_handleCompletionWithResponseTuples:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamHAPTransport *)self isWriteInProgress];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v10;
      v59 = 2112;
      v60 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[Transport] Handling responses: %@", buf, 0x16u);
    }

    v49 = v7;
    objc_autoreleasePoolPop(v6);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = v4;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v53;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v52 + 1) + 8 * v15);
        v17 = [v16 request];
        v18 = [v17 characteristic];
        v19 = [v18 type];
        v20 = [v19 isEqualToString:@"00000138-0000-1000-8000-0026BB765291"];

        if (v20)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v22 = v16;

      if (!v22)
      {
        goto LABEL_21;
      }

      v23 = [v22 error];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v49;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [v22 error];
          *buf = 138543618;
          v58 = v27;
          v59 = 2112;
          v60 = v28;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write response errored out: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v29 = [v22 error];
        [(HMDDataStreamHAPTransport *)v25 _stopTransportForWriteFailureError:v29];

        goto LABEL_24;
      }

      v35 = MEMORY[0x277CFEAF8];
      v36 = [v22 value];
      v51 = 0;
      v37 = [v35 parsedFromData:v36 error:&v51];
      v38 = v51;

      if (v38 || !v37)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v49;
        v44 = HMFGetOSLogHandle();
        v4 = v50;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v45;
          v59 = 2112;
          v60 = v38;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply could not be parsed (error=%@)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
        v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
        [(HMDDataStreamHAPTransport *)v43 _stopTransportForWriteFailureError:v46];
      }

      else
      {
        v39 = [v37 accessoryRequestToSend];

        v4 = v50;
        if (v39)
        {
          v40 = [v37 accessoryRequestToSend];
          v41 = [v40 value];
          -[HMDDataStreamHAPTransport setLastAccessoryRequestToSendFlag:](v49, "setLastAccessoryRequestToSendFlag:", [v41 BOOLValue]);
        }

        else
        {
          [(HMDDataStreamHAPTransport *)v49 setLastAccessoryRequestToSendFlag:0];
        }

        [(HMDDataStreamHAPTransport *)v49 _removeAndMarkCompleteAllCompletedWrites];
        v47 = [v37 payload];

        if (v47)
        {
          v48 = [v37 payload];
          [(HMDDataStreamHAPTransport *)v49 _handleReceivedData:v48];
        }

        [(HMDDataStreamHAPTransport *)v49 _doNextWriteOperation];
      }
    }

    else
    {
LABEL_12:

LABEL_21:
      v30 = objc_autoreleasePoolPush();
      v31 = v49;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write-response contained no response; weird. Erroring out.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDDataStreamHAPTransport *)v31 _stopTransportForWriteFailureError:v22];
LABEL_24:
      v4 = v50;
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v21;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Write-response returned but nothing in progress; stale reply? Ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_doNextWriteOperation
{
  v29 = *MEMORY[0x277D85DE8];
  if (![(HMDDataStreamHAPTransport *)self isWriteInProgress])
  {
    v3 = [(HMDDataStreamHAPTransport *)self pendingWrites];
    if ([v3 hmf_isEmpty])
    {
      v4 = [(HMDDataStreamHAPTransport *)self lastAccessoryRequestToSendFlag];

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    if ([(HMDDataStreamHAPTransport *)self _isRunning])
    {
      v5 = [(HMDDataStreamHAPTransport *)self accessory];
      if (v5)
      {
        [(HMDDataStreamHAPTransport *)self setIsWriteInProgress:1];
        v25 = 0;
        v6 = [(HMDDataStreamHAPTransport *)self _buildWriteRequestWithError:&v25 shouldForceClose:0];
        v7 = v25;
        if (v7)
        {
          v8 = objc_autoreleasePoolPush();
          v9 = self;
          v10 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = HMFGetLogIdentifier();
            *buf = 138543362;
            v28 = v11;
            _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: building next payload failed and should not do that; closing.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v8);
          v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1052 underlyingError:v7];
          [(HMDDataStreamHAPTransport *)v9 _stopTransportForWriteFailureError:v12];
        }

        else if (v6)
        {
          objc_initWeak(buf, self);
          v26 = v6;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __50__HMDDataStreamHAPTransport__doNextWriteOperation__block_invoke;
          v23[3] = &unk_2786895F0;
          objc_copyWeak(&v24, buf);
          [(HMDDataStreamHAPTransport *)self _writeCharacteristicRequests:v21 completion:v23];

          objc_destroyWeak(&v24);
          objc_destroyWeak(buf);
        }

        else
        {
          [(HMDDataStreamHAPTransport *)self _removeAndMarkCompleteAllCompletedWrites];
          [(HMDDataStreamHAPTransport *)self _doNextWriteOperation];
        }
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v28 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: HAPAccessory is no longer active; closing.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v7 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2100];
        [(HMDDataStreamHAPTransport *)v18 _stopTransportForWriteFailureError:v7];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: transport already closed.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v5 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
      [(HMDDataStreamHAPTransport *)v14 _cancelAllPendingWritesWithError:v5];
    }
  }

LABEL_24:
  v22 = *MEMORY[0x277D85DE8];
}

void __50__HMDDataStreamHAPTransport__doNextWriteOperation__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v5);

    [v4 _handleCompletionWithResponseTuples:v6];
  }
}

- (void)_writeCharacteristicRequests:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamHAPTransport *)self accessory];
  v9 = [v8 home];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v13;
    v23 = 2048;
    v24 = [v6 count];
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@write characteristic requests size: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277CCAD78] UUID];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HMDDataStreamHAPTransport__writeCharacteristicRequests_completion___block_invoke;
  v18[3] = &unk_2786862C0;
  v19 = v6;
  v20 = v7;
  v18[4] = v11;
  v15 = v6;
  v16 = v7;
  [v9 writeCharacteristicValues:v15 source:1090 biomeSource:0 identifier:v14 transport:0 qualityOfService:-1 withCompletionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __69__HMDDataStreamHAPTransport__writeCharacteristicRequests_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDDataStreamHAPTransport__writeCharacteristicRequests_completion___block_invoke_2;
  v10[3] = &unk_278689AB8;
  v11 = v5;
  v14 = a1[6];
  v12 = a1[5];
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __69__HMDDataStreamHAPTransport__writeCharacteristicRequests_completion___block_invoke_2(void *a1)
{
  v1 = a1[7];
  v2 = a1[5];
  if (a1[4])
  {
    [HMDCharacteristicResponse responsesWithRequests:v2 error:?];
  }

  else
  {
    [HMDCharacteristicResponse responsesWithRequests:v2 characteristicUpdateDictionary:a1[6]];
  }
  v3 = ;
  (*(v1 + 16))(v1);
}

- (id)_buildWriteRequestWithError:(id *)a3 shouldForceClose:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [(HMDDataStreamHAPTransport *)self _getPendingWritesUpToLength:[(HMDDataStreamHAPTransport *)self maxControllerTransportMTU]];
  if ([v7 length] || -[HMDDataStreamHAPTransport lastAccessoryRequestToSendFlag](self, "lastAccessoryRequestToSendFlag"))
  {
LABEL_5:
    v8 = objc_alloc(MEMORY[0x277CFEC98]);
    v9 = [(HMDDataStreamHAPTransport *)self sessionIdentifier];
    v10 = [v8 initWithValue:v9];

    if (v4)
    {
      v11 = objc_alloc(MEMORY[0x277CFEC98]);
      v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v13 = [v11 initWithValue:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_alloc(MEMORY[0x277CFEB00]) initWithPayload:v7 sessionIdentifier:v10 forceClose:v13];
    v15 = [v14 serializeWithError:a3];
    v16 = *a3;
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error: failed to serialize Controller Payload; should not happen!", &v31, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v22 = 0;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        v31 = 138543874;
        v32 = v23;
        v33 = 1024;
        v34 = [v7 length];
        v35 = 1024;
        v36 = [(HMDDataStreamHAPTransport *)v18 lastAccessoryRequestToSendFlag];
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Writing: %u bytes (rts=%d)", &v31, 0x18u);
      }

      objc_autoreleasePoolPop(v17);
      v24 = [(HMDDataStreamHAPTransport *)v18 transportCharacteristic];
      v22 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v24 value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    }

    goto LABEL_16;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v30;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Writing: nothing to write", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v22 = 0;
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_getPendingWritesUpToLength:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(HMDDataStreamHAPTransport *)self pendingWrites];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v19;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) popNextFrameUpToMaxLength:a3];
        if (![v11 length])
        {
          goto LABEL_13;
        }

        if (v7)
        {
          v12 = v7;
LABEL_11:
          [v12 appendData:v11];
          goto LABEL_12;
        }

        if (v8)
        {
          v12 = [MEMORY[0x277CBEB28] dataWithData:v8];
          v7 = v12;
          goto LABEL_11;
        }

        v8 = v11;
        v7 = 0;
LABEL_12:
        a3 -= [v11 length];
        if (!a3)
        {

          goto LABEL_20;
        }

LABEL_13:

        ++v10;
      }

      while (v6 != v10);
      v13 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_20:

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)sendRawFrame:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[HMDDataStreamHAPPendingWrite alloc] initWithData:v7 completion:v6];

  v8 = [(HMDDataStreamHAPTransport *)self pendingWrites];
  [v8 addObject:v9];

  [(HMDDataStreamHAPTransport *)self _doNextWriteOperation];
}

- (void)_notifyDelegateDidReceiveFrame:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamHAPTransport *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDDataStreamHAPTransport__notifyDelegateDidReceiveFrame___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__HMDDataStreamHAPTransport__notifyDelegateDidReceiveFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transport:*(a1 + 32) didReceiveRawFrame:*(a1 + 40)];
}

- (void)_notifyDelegateDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamHAPTransport *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDDataStreamHAPTransport__notifyDelegateDidFailWithError___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMDDataStreamHAPTransport__notifyDelegateDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transport:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_notifyDelegateDidClose
{
  v3 = [(HMDDataStreamHAPTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDDataStreamHAPTransport__notifyDelegateDidClose__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __52__HMDDataStreamHAPTransport__notifyDelegateDidClose__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transportDidClose:*(a1 + 32)];
}

- (void)_notifyDelegateDidOpen
{
  v3 = [(HMDDataStreamHAPTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDDataStreamHAPTransport__notifyDelegateDidOpen__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __51__HMDDataStreamHAPTransport__notifyDelegateDidOpen__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transportDidOpen:*(a1 + 32)];
}

- (void)_deregisterForMessages
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HMDDataStreamHAPTransport *)self accessory];
  if (v4)
  {
    v5 = [(HMDDataStreamHAPTransport *)self interruptCharacteristic];
    v13 = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v7 = [(HMDDataStreamHAPTransport *)self notificationClientIdentifier];
    [v4 setNotificationsEnabled:0 forCharacteristics:v6 clientIdentifier:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error: unable to deregister from event notifications on accessory (its weak pointer went to nil)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamHAPTransport *)self accessory];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__handleCharacteristicsValueUpdated_ name:@"HMDNotificationCharacteristicValueUpdated" object:v3];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__handleCharacteristicsValueUpdated_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v3];

  v6 = [(HMDDataStreamHAPTransport *)self interruptCharacteristic];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(HMDDataStreamHAPTransport *)self notificationClientIdentifier];
  [v3 setNotificationsEnabled:1 forCharacteristics:v7 clientIdentifier:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_teardownSessionWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDDataStreamHAPTransport *)self _isRunning])
  {
    v16 = 0;
    v5 = [(HMDDataStreamHAPTransport *)self _buildWriteRequestWithError:&v16 shouldForceClose:1];
    v6 = v16;
    if (v5)
    {
      objc_initWeak(location, self);
      v17 = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__HMDDataStreamHAPTransport__teardownSessionWithError___block_invoke;
      v13[3] = &unk_278689618;
      objc_copyWeak(&v15, location);
      v14 = v4;
      [(HMDDataStreamHAPTransport *)self _writeCharacteristicRequests:v7 completion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v11;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Transport] Unable to write: Closing after session force close failed; error=%@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDDataStreamHAPTransport *)v9 _stopWithError:v4];
    }
  }

  else
  {
    [(HMDDataStreamHAPTransport *)self _stopWithError:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HMDDataStreamHAPTransport__teardownSessionWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v3);

    [v4 _stopWithError:*(a1 + 32)];
    WeakRetained = v4;
  }
}

- (void)_stopWithError:(id)a3
{
  v4 = a3;
  if ([(HMDDataStreamHAPTransport *)self _isRunning])
  {
    [(HMDDataStreamHAPTransport *)self _deregisterForMessages];
  }

  [(HMDDataStreamHAPTransport *)self setTransportCharacteristic:0];
  [(HMDDataStreamHAPTransport *)self setInterruptCharacteristic:0];
  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
  }

  [(HMDDataStreamHAPTransport *)self _cancelAllPendingWritesWithError:v5];
  [(HMDDataStreamHAPTransport *)self setIsWriteInProgress:0];
  if (v6)
  {
    [(HMDDataStreamHAPTransport *)self _notifyDelegateDidFailWithError:v6];
  }

  else
  {
    [(HMDDataStreamHAPTransport *)self _notifyDelegateDidClose];
  }
}

- (void)close
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamHAPTransport *)self _isRunning];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@DataStream transport closing.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDDataStreamHAPTransport *)v5 _teardownSessionWithError:0];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket invoked closed but nothing to clean up.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamHAPTransport *)self _isRunning])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Connect called on an already-running transport", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = [(HMDDataStreamHAPTransport *)self accessory];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 findCharacteristicType:@"00000138-0000-1000-8000-0026BB765291" forServiceType:@"00000129-0000-1000-8000-0026BB765291"];
      if (v9)
      {
        v10 = [v8 findCharacteristicType:@"00000139-0000-1000-8000-0026BB765291" forServiceType:@"00000129-0000-1000-8000-0026BB765291"];
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        v14 = v13;
        if (v10)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v27 = 138543362;
            v28 = v15;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Connect] All good; connected!", &v27, 0xCu);
          }

          objc_autoreleasePoolPop(v11);
          [(HMDDataStreamHAPTransport *)v12 setTransportCharacteristic:v9];
          [(HMDDataStreamHAPTransport *)v12 setInterruptCharacteristic:v10];
          [(HMDDataStreamHAPTransport *)v12 _registerForMessages];
          [(HMDDataStreamHAPTransport *)v12 _notifyDelegateDidOpen];
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v24 = HMFGetLogIdentifier();
            v27 = 138543362;
            v28 = v24;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Connect] Missing characteristics to create transport for HDS over HAP (Interrupt Characteristic does not exist)", &v27, 0xCu);
          }

          objc_autoreleasePoolPop(v11);
          v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [(HMDDataStreamHAPTransport *)v12 _teardownSessionWithError:v25];

          v10 = 0;
        }
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Connect] Missing characteristics to create transport for HDS over HAP (Transport Characteristic does not exist)", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        [(HMDDataStreamHAPTransport *)v21 _teardownSessionWithError:v10];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Connect called but accessory is no longer valid", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
      [(HMDDataStreamHAPTransport *)v17 _teardownSessionWithError:v9];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRunning
{
  v2 = [(HMDDataStreamHAPTransport *)self transportCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = HMDDataStreamHAPTransport;
  [(HMDDataStreamHAPTransport *)&v2 dealloc];
}

- (HMDDataStreamHAPTransport)initWithAccessory:(id)a3 sessionIdentifier:(int64_t)a4 maxControllerTransportMTU:(unint64_t)a5 workQueue:(id)a6 logIdentifier:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v31.receiver = self;
  v31.super_class = HMDDataStreamHAPTransport;
  v15 = [(HMDDataStreamHAPTransport *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a6);
    objc_storeWeak(&v16->_accessory, v12);
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    sessionIdentifier = v16->_sessionIdentifier;
    v16->_sessionIdentifier = v17;

    v16->_maxControllerTransportMTU = a5;
    v19 = objc_opt_new();
    byteReader = v16->_byteReader;
    v16->_byteReader = v19;

    v21 = [v14 copy];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v21;

    v23 = [MEMORY[0x277CBEB18] array];
    pendingWrites = v16->_pendingWrites;
    v16->_pendingWrites = v23;

    v25 = MEMORY[0x277CCACA8];
    v26 = [MEMORY[0x277CCAD78] UUID];
    v27 = [v26 UUIDString];
    v28 = [v25 stringWithFormat:@"%@.HMDDataStreamHAPTransport.%@", @"com.apple.HomeKitDaemon", v27];
    notificationClientIdentifier = v16->_notificationClientIdentifier;
    v16->_notificationClientIdentifier = v28;
  }

  return v16;
}

@end