@interface HAPSecuritySession
+ (id)logCategory;
- (BOOL)_initializeSetupSession:(unint64_t)a3;
- (HAPSecuritySession)initWithRole:(unint64_t)a3 resumeSessionID:(unint64_t)a4 delegate:(id)a5;
- (HAPSecuritySessionDelegate)delegate;
- (NSData)broadcastKey;
- (NSDictionary)additionalDerivedKeys;
- (NSString)debugDescription;
- (NSString)description;
- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)a3;
- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)a3 status:(int *)a4;
- (id)_inputInfo;
- (id)_outputInfo;
- (id)decryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)encryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)logIdentifier;
- (unint64_t)resumeSessionID;
- (unint64_t)state;
- (void)_closeWithError:(id)a3;
- (void)_handleSetupExchangeComplete;
- (void)_initiateClientSessionSetupExchange;
- (void)_notifyOpened;
- (void)_notifyOpening;
- (void)_processSetupExchangeData:(id)a3 error:(id)a4;
- (void)close;
- (void)closeWithError:(id)a3;
- (void)dealloc;
- (void)open;
- (void)reallyOpen;
- (void)receivedSetupExchangeData:(id)a3 error:(id)a4;
- (void)setAdditionalDerivedKeys:(id)a3;
- (void)setBroadcastKey:(id)a3;
- (void)setResumeSessionID:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation HAPSecuritySession

- (HAPSecuritySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  if (v4)
  {
    v7 = [(HAPSecuritySession *)self delegate];
    v8 = [v7 shortDescription];
    v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];
  }

  else
  {
    v10 = [(HAPSecuritySession *)self state];
    if (v10 > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_2786D3480[v10];
    }

    v9 = [v5 stringWithFormat:@"%@ %@", v6, v11];
  }

  return v9;
}

- (id)decryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if ([v8 length] <= 0xF)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = [v8 length];
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@The encrypted data has an invalid length of %tu bytes", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (a5)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6743 userInfo:0];
LABEL_9:
      v15 = 0;
      *a5 = v14;
      goto LABEL_14;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__2760;
  v32 = __Block_byref_object_dispose__2761;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2760;
  v28 = __Block_byref_object_dispose__2761;
  v29 = 0;
  v16 = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HAPSecuritySession_decryptData_additionalAuthenticatedData_error___block_invoke;
  block[3] = &unk_2786D50A0;
  block[4] = self;
  v22 = &v24;
  v23 = buf;
  v20 = v8;
  v21 = v9;
  dispatch_sync(v16, block);

  if (a5)
  {
    *a5 = v25[5];
  }

  v15 = *(*&buf[8] + 40);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

void __68__HAPSecuritySession_decryptData_additionalAuthenticatedData_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = [*(a1 + 32) encryption];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 56) + 8);
    obj = *(v5 + 40);
    v6 = [v2 decrypt:v3 additionalAuthenticatedData:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) _closeWithError:?];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6709 userInfo:0];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    MEMORY[0x2821F96F8]();
  }
}

- (id)encryptData:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2760;
    v28 = __Block_byref_object_dispose__2761;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2760;
    v22 = __Block_byref_object_dispose__2761;
    v23 = 0;
    v10 = [(HAPSecuritySession *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HAPSecuritySession_encryptData_additionalAuthenticatedData_error___block_invoke;
    block[3] = &unk_2786D50A0;
    block[4] = self;
    v16 = &v18;
    v17 = &v24;
    v14 = v8;
    v15 = v9;
    dispatch_sync(v10, block);

    if (a5)
    {
      *a5 = v19[5];
    }

    v11 = v25[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __68__HAPSecuritySession_encryptData_additionalAuthenticatedData_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    [*(a1 + 32) encryption];
    v2 = [objc_claimAutoreleasedReturnValue() encrypt:*(a1 + 40) additionalAuthenticatedData:*(a1 + 48)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6709 userInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_closeWithError:(id)a3
{
  v11 = a3;
  v4 = [(HAPSecuritySession *)self state]== 3;
  v5 = v11;
  if (!v4)
  {
    os_unfair_lock_lock_with_options();
    v6 = self;
    pairingSession = v6->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      v6->_pairingSession = 0;
    }

    v8 = objc_alloc_init(HAPSecuritySessionEncryption);
    [(HAPSecuritySession *)v6 setEncryption:v8];

    v6->_resumeSessionID = 0;
    os_unfair_lock_unlock(&self->_lock);
    [(HAPSecuritySession *)v6 setState:3];
    v9 = [(HAPSecuritySession *)v6 delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    v5 = v11;
    if (v8)
    {
      v10 = [(HAPSecuritySession *)v6 delegate];
      [v10 securitySession:v6 didCloseWithError:v11];

      v5 = v11;
    }
  }
}

- (void)closeWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPSecuritySession *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HAPSecuritySession_closeWithError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)close
{
  v3 = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HAPSecuritySession_close__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_notifyOpened
{
  v3 = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HAPSecuritySession *)self delegate];
    [v5 securitySessionDidOpen:self];
  }
}

- (void)_notifyOpening
{
  v3 = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HAPSecuritySession *)self delegate];
    [v5 securitySessionIsOpening:self];
  }
}

- (void)reallyOpen
{
  v3 = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HAPSecuritySession_reallyOpen__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __32__HAPSecuritySession_reallyOpen__block_invoke(uint64_t a1)
{
  mach_absolute_time();
  *(*(a1 + 32) + 48) = UpTicksToMilliseconds();
  result = [*(a1 + 32) role];
  if (result == 1)
  {
    v4 = *(a1 + 32);

    return [v4 _notifyOpening];
  }

  else if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _initiateClientSessionSetupExchange];
  }

  return result;
}

- (void)open
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HAPSecuritySession *)self state])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to open security session, a security session can only be opened once.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
LABEL_5:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = [(HAPSecuritySession *)self delegate];

  if (!v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Error during open security session: the delegate is missing", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    [(HAPSecuritySession *)v11 closeWithError:v14];

    goto LABEL_5;
  }

  [(HAPSecuritySession *)self setState:1];
  v9 = *MEMORY[0x277D85DE8];

  [(HAPSecuritySession *)self reallyOpen];
}

- (void)_handleSetupExchangeComplete
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Deriving session keys", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPSecuritySession *)v4 _inputInfo];
  [(HAPSecuritySession *)v4 pairingSession];
  [v7 bytes];
  [v7 length];
  v8 = PairingSessionDeriveKey();
  v48 = v8;
  if (v8)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v8 userInfo:0];
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *v53 = 138543618;
      v54 = v13;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input key with error: %@", v53, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HAPSecuritySession *)v11 _closeWithError:v9];
  }

  else
  {
    v9 = [(HAPSecuritySession *)v4 _outputInfo];
    [(HAPSecuritySession *)v4 pairingSession];
    [v9 bytes];
    [v9 length];
    v14 = PairingSessionDeriveKey();
    v48 = v14;
    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v14 userInfo:0];
      v16 = objc_autoreleasePoolPush();
      v17 = v4;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *v49 = 138543618;
        v50 = v19;
        v51 = 2112;
        v52 = v15;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create output key with error: %@", v49, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HAPSecuritySession *)v17 _closeWithError:v15];
    }

    else
    {
      v47 = 0;
      [(HAPSecuritySession *)v4 pairingSession];
      if (!PairingSessionGetResumeInfo())
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v4;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *v49 = 138543618;
          v50 = v23;
          v51 = 2048;
          v52 = v47;
          _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Got resumeSessionID: %llu", v49, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        [(HAPSecuritySession *)v21 setResumeSessionID:v47];
      }

      v15 = [(HAPSecuritySession *)v4 _broadcastInfo];
      v24 = [(HAPSecuritySession *)v4 _handleLocalPairingIdentityRequestWithStatus:&v48];
      v25 = 0x277CBE000;
      if (v48)
      {
        goto LABEL_19;
      }

      if ([(HAPSecuritySession *)v4 pairingSession])
      {
        [(HAPSecuritySession *)v4 pairingSession];
        v43 = [v24 publicKey];
        v26 = [v43 data];
        [v26 bytes];
        v27 = [v24 publicKey];
        [v27 data];
        v28 = v44 = v24;
        [v28 length];
        [v15 bytes];
        [v15 length];
        v25 = 0x277CBE000uLL;
        v48 = PairingSessionDeriveKey();

        v24 = v44;
      }

      if (v48)
      {
LABEL_19:
        [(HAPSecuritySession *)v4 setBroadcastKey:0];
      }

      else
      {
        v42 = [*(v25 + 2704) dataWithBytes:v49 length:32];
        [(HAPSecuritySession *)v4 setBroadcastKey:v42];
      }

      v29 = [(HAPSecuritySession *)v4 delegate];
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        v31 = [(HAPSecuritySession *)v4 delegate];
        v32 = [v31 securitySessionDidRequestAdditionalDerivedKeyTuples:v4];

        v33 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v32, "count")}];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __50__HAPSecuritySession__handleSetupExchangeComplete__block_invoke;
        v45[3] = &unk_2786D3460;
        v45[4] = v4;
        v46 = v33;
        v34 = v33;
        [v32 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];
        v35 = [v34 copy];
        [(HAPSecuritySession *)v4 setAdditionalDerivedKeys:v35];
      }

      pairingSession = v4->_pairingSession;
      if (pairingSession)
      {
        CFRelease(pairingSession);
      }

      v4->_pairingSession = 0;
      v37 = [HAPSecuritySessionEncryption alloc];
      v38 = [*(v25 + 2704) dataWithBytes:buf length:32];
      v39 = [*(v25 + 2704) dataWithBytes:v53 length:32];
      v40 = [(HAPSecuritySessionEncryption *)v37 initWithInputKey:v38 outputKey:v39];
      [(HAPSecuritySession *)v4 setEncryption:v40];

      [(HAPSecuritySession *)v4 setState:2];
      [(HAPSecuritySession *)v4 _notifyOpened];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __50__HAPSecuritySession__handleSetupExchangeComplete__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) pairingSession];
  v4 = [v3 saltData];
  [v4 bytes];
  v5 = [v3 saltData];
  [v5 length];
  v6 = [v3 infoData];
  [v6 bytes];
  v7 = [v3 infoData];
  [v7 length];
  v8 = PairingSessionDeriveKey();

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 name];
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive additional key '%@' with error: %ld", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:32];
    v15 = *(a1 + 40);
    v16 = [v3 name];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_outputInfo
{
  v2 = [(HAPSecuritySession *)self role];
  if (v2 == 1)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Read-Encryption-Key";
    v5 = 27;
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Write-Encryption-Key";
    v5 = 28;
  }

  v2 = [v3 dataWithBytes:v4 length:v5];
LABEL_6:

  return v2;
}

- (id)_inputInfo
{
  v2 = [(HAPSecuritySession *)self role];
  if (v2 == 1)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Write-Encryption-Key";
    v5 = 28;
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Read-Encryption-Key";
    v5 = 27;
  }

  v2 = [v3 dataWithBytes:v4 length:v5];
LABEL_6:

  return v2;
}

- (void)_processSetupExchangeData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAPSecuritySession__processSetupExchangeData_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __54__HAPSecuritySession__processSetupExchangeData_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if ([*(a1 + 32) state] == 1)
  {
    if (*(a1 + 40))
    {
      v2 = objc_autoreleasePoolPush();
      v3 = *(a1 + 32);
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = HMFGetLogIdentifier();
        v6 = *(a1 + 40);
        *buf = 138543618;
        v35 = v5;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%{public}@Closing security session due to setup exchange error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v2);
      [*(a1 + 32) _closeWithError:*(a1 + 40)];
      goto LABEL_17;
    }

    [*(a1 + 32) pairingSession];
    [*(a1 + 48) bytes];
    [*(a1 + 48) length];
    v13 = PairingSessionExchange();
    if (v13)
    {
      if (v13 == -6767)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v35 = v17;
          _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Session lookup failed, reset resumeSessionID, and retrying", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        [*(a1 + 32) _initializeSetupSession:0];
        [*(a1 + 32) setState:0];
        [*(a1 + 32) open];
        goto LABEL_17;
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v13];
      if (HAPIsHH2Enabled_onceToken != -1)
      {
        dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
      }

      if (HAPIsHH2Enabled_hh2Enabled == 1)
      {
        v21 = [*(a1 + 32) delegate];
        v22 = objc_opt_respondsToSelector();

        if (v22)
        {
          v23 = [*(a1 + 32) delegate];
          v24 = *(a1 + 48);
          v30 = v19;
          [v23 securitySessionWillCloseWithResponseData:v24 error:&v30];
          v25 = v30;

          v19 = v25;
        }
      }

      v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Operation Cancelled." reason:@"Failed to get the pairing exchange data." suggestion:0 underlyingError:v19];
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v29;
        v36 = 2112;
        v37 = v20;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to process exchange data with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      [*(a1 + 32) _closeWithError:v20];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v33 length:v32];
      if (![v19 length])
      {
LABEL_29:

        goto LABEL_17;
      }

      v20 = [*(a1 + 32) delegate];
      [(__CFString *)v20 securitySession:*(a1 + 32) didReceiveSetupExchangeData:v19];
    }

    goto LABEL_29;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) state];
    if (v11 > 3)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_2786D3480[v11];
    }

    *buf = 138543618;
    v35 = v10;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to handle setup exchange data in state '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)receivedSetupExchangeData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAPSecuritySession_receivedSetupExchangeData_error___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __54__HAPSecuritySession_receivedSetupExchangeData_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || *(a1 + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling setup exchange data", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 48) _processSetupExchangeData:*(a1 + 40) error:*(a1 + 32)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid setup exchange data: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    [*(a1 + 48) _closeWithError:v12];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initiateClientSessionSetupExchange
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Sending initial client exchange", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPSecuritySession *)v4 _notifyOpening];
  [(HAPSecuritySession *)v4 _processSetupExchangeData:0 error:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)a3 status:(int *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v10;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Received request for peer pairing identity with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HAPSecuritySession *)v8 delegate];
  v12 = v11;
  if (v11)
  {
    v25 = 0;
    v13 = [v11 securitySession:v8 didReceiveRequestForPeerPairingIdentityWithIdentifier:v6 error:&v25];
    v14 = v25;
    if (v13)
    {
      goto LABEL_15;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = v8;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@The delegate failed to retrieve the peer pairing identity with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    if (a4)
    {
      *a4 = -6727;
    }

    [(HAPSecuritySession *)v16 closeWithError:v14];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v8;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get peer pairing identity, the delegate is missing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to get peer pairing identity." reason:@"The delegate is missing." suggestion:0 underlyingError:0];
    [(HAPSecuritySession *)v20 closeWithError:v14];
    if (a4)
    {
      v13 = 0;
      *a4 = -6705;
      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request for local pairing identity", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPSecuritySession *)v6 delegate];
  v10 = v9;
  if (v9)
  {
    v23 = 0;
    v11 = [v9 securitySession:v6 didReceiveLocalPairingIdentityRequestWithError:&v23];
    v12 = v23;
    if (v11)
    {
      goto LABEL_15;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@The delegate failed to retrieve the local pairing identity with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (a3)
    {
      *a3 = -6727;
    }

    [(HAPSecuritySession *)v14 closeWithError:v12];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local pairing identity, the delegate is missing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to get local pairing identity." reason:@"The delegate is missing." suggestion:0 underlyingError:0];
    [(HAPSecuritySession *)v18 closeWithError:v12];
    if (a3)
    {
      v11 = 0;
      *a3 = -6705;
      goto LABEL_15;
    }
  }

  v11 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_initializeSetupSession:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  if (a3)
  {
    [(HAPSecuritySession *)self role];
    if (!PairingSessionCreate())
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v17;
        v22 = 2048;
        v23 = a3;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Created pairing session with resumeSessionID: %llu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = self->_pairingSession;
      PairingSessionSetResumeInfo();
      v13 = v15;
      goto LABEL_13;
    }
  }

  [(HAPSecuritySession *)self role];
  v6 = PairingSessionCreate();
  if (!v6)
  {
    v13 = self;
LABEL_13:
    [(HAPSecuritySession *)v13 pairingSession];
    PairingSessionSetFlags();
    result = 1;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v11;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create pairing session with error: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  result = 0;
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HAPSecuritySession *)self role];
  v6 = @"unknown";
  v7 = @"server";
  if (v5 != 1)
  {
    v7 = @"unknown";
  }

  if (!v5)
  {
    v7 = @"client";
  }

  v8 = v7;
  v9 = [(HAPSecuritySession *)self state];
  if (v9 <= 3)
  {
    v6 = off_2786D3480[v9];
  }

  v10 = [v3 stringWithFormat:@"<%@, Role = %@, State = %@>", v4, v8, v6];

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HAPSecuritySession *)self role];
  v6 = @"unknown";
  v7 = @"server";
  if (v5 != 1)
  {
    v7 = @"unknown";
  }

  if (!v5)
  {
    v7 = @"client";
  }

  v8 = v7;
  v9 = [(HAPSecuritySession *)self state];
  if (v9 <= 3)
  {
    v6 = off_2786D3480[v9];
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, Role = %@, State = %@>", v4, self, v8, v6];

  return v10;
}

- (void)setResumeSessionID:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_resumeSessionID = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)resumeSessionID
{
  os_unfair_lock_lock_with_options();
  resumeSessionID = self->_resumeSessionID;
  os_unfair_lock_unlock(&self->_lock);
  return resumeSessionID;
}

- (void)setAdditionalDerivedKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  additionalDerivedKeys = self->_additionalDerivedKeys;
  self->_additionalDerivedKeys = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)additionalDerivedKeys
{
  os_unfair_lock_lock_with_options();
  v3 = self->_additionalDerivedKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBroadcastKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  broadcastKey = self->_broadcastKey;
  self->_broadcastKey = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)broadcastKey
{
  os_unfair_lock_lock_with_options();
  v3 = self->_broadcastKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)dealloc
{
  v2 = self;
  pairingSession = v2->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    v2->_pairingSession = 0;
  }

  v4 = objc_alloc_init(HAPSecuritySessionEncryption);
  [(HAPSecuritySession *)v2 setEncryption:v4];

  v2->_resumeSessionID = 0;
  v5.receiver = v2;
  v5.super_class = HAPSecuritySession;
  [(HAPSecuritySession *)&v5 dealloc];
}

- (HAPSecuritySession)initWithRole:(unint64_t)a3 resumeSessionID:(unint64_t)a4 delegate:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (v8)
  {
    v24.receiver = self;
    v24.super_class = HAPSecuritySession;
    v9 = [(HAPSecuritySession *)&v24 init];
    v10 = v9;
    if (v9)
    {
      v11 = HAPDispatchQueueName(v9, 0);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create(v11, v12);
      queue = v10->_queue;
      v10->_queue = v13;

      objc_storeWeak(&v10->_delegate, v8);
      v10->_role = a3;
      v15 = objc_alloc_init(HAPSecuritySessionEncryption);
      encryption = v10->_encryption;
      v10->_encryption = v15;

      [(HAPSecuritySession *)v10 _initializeSetupSession:a4];
      v10->_state = 0;
    }

    v17 = v10;
    v18 = v17;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v17 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v21;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@A valid delegate is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t35 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t35, &__block_literal_global_2825);
  }

  v3 = logCategory__hmf_once_v36;

  return v3;
}

uint64_t __33__HAPSecuritySession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v36 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end