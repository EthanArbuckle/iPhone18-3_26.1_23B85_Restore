@interface HAPSecuritySession
+ (id)logCategory;
- (BOOL)_initializeSetupSession:(unint64_t)session;
- (HAPSecuritySession)initWithRole:(unint64_t)role resumeSessionID:(unint64_t)d delegate:(id)delegate;
- (HAPSecuritySessionDelegate)delegate;
- (NSData)broadcastKey;
- (NSDictionary)additionalDerivedKeys;
- (NSString)debugDescription;
- (NSString)description;
- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)status;
- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)identifier status:(int *)status;
- (id)_inputInfo;
- (id)_outputInfo;
- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)logIdentifier;
- (unint64_t)resumeSessionID;
- (unint64_t)state;
- (void)_closeWithError:(id)error;
- (void)_handleSetupExchangeComplete;
- (void)_initiateClientSessionSetupExchange;
- (void)_notifyOpened;
- (void)_notifyOpening;
- (void)_processSetupExchangeData:(id)data error:(id)error;
- (void)close;
- (void)closeWithError:(id)error;
- (void)dealloc;
- (void)open;
- (void)reallyOpen;
- (void)receivedSetupExchangeData:(id)data error:(id)error;
- (void)setAdditionalDerivedKeys:(id)keys;
- (void)setBroadcastKey:(id)key;
- (void)setResumeSessionID:(unint64_t)d;
- (void)setState:(unint64_t)state;
@end

@implementation HAPSecuritySession

- (HAPSecuritySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  delegate = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  if (v4)
  {
    delegate2 = [(HAPSecuritySession *)self delegate];
    shortDescription = [delegate2 shortDescription];
    v9 = [v5 stringWithFormat:@"%@ %@", v6, shortDescription];
  }

  else
  {
    state = [(HAPSecuritySession *)self state];
    if (state > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_2786D3480[state];
    }

    v9 = [v5 stringWithFormat:@"%@ %@", v6, v11];
  }

  return v9;
}

- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  if (!dataCopy)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if ([dataCopy length] <= 0xF)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = [dataCopy length];
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@The encrypted data has an invalid length of %tu bytes", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6743 userInfo:0];
LABEL_9:
      v15 = 0;
      *error = v14;
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
  queue = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HAPSecuritySession_decryptData_additionalAuthenticatedData_error___block_invoke;
  block[3] = &unk_2786D50A0;
  block[4] = self;
  v22 = &v24;
  v23 = buf;
  v20 = dataCopy;
  v21 = authenticatedDataCopy;
  dispatch_sync(queue, block);

  if (error)
  {
    *error = v25[5];
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

- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  if (dataCopy)
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
    queue = [(HAPSecuritySession *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HAPSecuritySession_encryptData_additionalAuthenticatedData_error___block_invoke;
    block[3] = &unk_2786D50A0;
    block[4] = self;
    v16 = &v18;
    v17 = &v24;
    v14 = dataCopy;
    v15 = authenticatedDataCopy;
    dispatch_sync(queue, block);

    if (error)
    {
      *error = v19[5];
    }

    v11 = v25[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6705 userInfo:0];
    *error = v11 = 0;
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

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  v4 = [(HAPSecuritySession *)self state]== 3;
  v5 = errorCopy;
  if (!v4)
  {
    os_unfair_lock_lock_with_options();
    selfCopy = self;
    pairingSession = selfCopy->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      selfCopy->_pairingSession = 0;
    }

    v8 = objc_alloc_init(HAPSecuritySessionEncryption);
    [(HAPSecuritySession *)selfCopy setEncryption:v8];

    selfCopy->_resumeSessionID = 0;
    os_unfair_lock_unlock(&self->_lock);
    [(HAPSecuritySession *)selfCopy setState:3];
    delegate = [(HAPSecuritySession *)selfCopy delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    v5 = errorCopy;
    if (v8)
    {
      delegate2 = [(HAPSecuritySession *)selfCopy delegate];
      [delegate2 securitySession:selfCopy didCloseWithError:errorCopy];

      v5 = errorCopy;
    }
  }
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  queue = [(HAPSecuritySession *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HAPSecuritySession_closeWithError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)close
{
  queue = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HAPSecuritySession_close__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_notifyOpened
{
  delegate = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HAPSecuritySession *)self delegate];
    [delegate2 securitySessionDidOpen:self];
  }
}

- (void)_notifyOpening
{
  delegate = [(HAPSecuritySession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HAPSecuritySession *)self delegate];
    [delegate2 securitySessionIsOpening:self];
  }
}

- (void)reallyOpen
{
  queue = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HAPSecuritySession_reallyOpen__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(queue, block);
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
    selfCopy = self;
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

  delegate = [(HAPSecuritySession *)self delegate];

  if (!delegate)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    [(HAPSecuritySession *)selfCopy2 closeWithError:v14];

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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Deriving session keys", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  _inputInfo = [(HAPSecuritySession *)selfCopy _inputInfo];
  [(HAPSecuritySession *)selfCopy pairingSession];
  [_inputInfo bytes];
  [_inputInfo length];
  v8 = PairingSessionDeriveKey();
  v48 = v8;
  if (v8)
  {
    _outputInfo = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v8 userInfo:0];
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *v53 = 138543618;
      v54 = v13;
      v55 = 2112;
      v56 = _outputInfo;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input key with error: %@", v53, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HAPSecuritySession *)v11 _closeWithError:_outputInfo];
  }

  else
  {
    _outputInfo = [(HAPSecuritySession *)selfCopy _outputInfo];
    [(HAPSecuritySession *)selfCopy pairingSession];
    [_outputInfo bytes];
    [_outputInfo length];
    v14 = PairingSessionDeriveKey();
    v48 = v14;
    if (v14)
    {
      _broadcastInfo = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v14 userInfo:0];
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *v49 = 138543618;
        v50 = v19;
        v51 = 2112;
        v52 = _broadcastInfo;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create output key with error: %@", v49, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HAPSecuritySession *)v17 _closeWithError:_broadcastInfo];
    }

    else
    {
      v47 = 0;
      [(HAPSecuritySession *)selfCopy pairingSession];
      if (!PairingSessionGetResumeInfo())
      {
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
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

      _broadcastInfo = [(HAPSecuritySession *)selfCopy _broadcastInfo];
      v24 = [(HAPSecuritySession *)selfCopy _handleLocalPairingIdentityRequestWithStatus:&v48];
      v25 = 0x277CBE000;
      if (v48)
      {
        goto LABEL_19;
      }

      if ([(HAPSecuritySession *)selfCopy pairingSession])
      {
        [(HAPSecuritySession *)selfCopy pairingSession];
        publicKey = [v24 publicKey];
        data = [publicKey data];
        [data bytes];
        publicKey2 = [v24 publicKey];
        [publicKey2 data];
        v28 = v44 = v24;
        [v28 length];
        [_broadcastInfo bytes];
        [_broadcastInfo length];
        v25 = 0x277CBE000uLL;
        v48 = PairingSessionDeriveKey();

        v24 = v44;
      }

      if (v48)
      {
LABEL_19:
        [(HAPSecuritySession *)selfCopy setBroadcastKey:0];
      }

      else
      {
        v42 = [*(v25 + 2704) dataWithBytes:v49 length:32];
        [(HAPSecuritySession *)selfCopy setBroadcastKey:v42];
      }

      delegate = [(HAPSecuritySession *)selfCopy delegate];
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        delegate2 = [(HAPSecuritySession *)selfCopy delegate];
        v32 = [delegate2 securitySessionDidRequestAdditionalDerivedKeyTuples:selfCopy];

        v33 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v32, "count")}];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __50__HAPSecuritySession__handleSetupExchangeComplete__block_invoke;
        v45[3] = &unk_2786D3460;
        v45[4] = selfCopy;
        v46 = v33;
        v34 = v33;
        [v32 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];
        v35 = [v34 copy];
        [(HAPSecuritySession *)selfCopy setAdditionalDerivedKeys:v35];
      }

      pairingSession = selfCopy->_pairingSession;
      if (pairingSession)
      {
        CFRelease(pairingSession);
      }

      selfCopy->_pairingSession = 0;
      v37 = [HAPSecuritySessionEncryption alloc];
      v38 = [*(v25 + 2704) dataWithBytes:buf length:32];
      v39 = [*(v25 + 2704) dataWithBytes:v53 length:32];
      v40 = [(HAPSecuritySessionEncryption *)v37 initWithInputKey:v38 outputKey:v39];
      [(HAPSecuritySession *)selfCopy setEncryption:v40];

      [(HAPSecuritySession *)selfCopy setState:2];
      [(HAPSecuritySession *)selfCopy _notifyOpened];
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
  role = [(HAPSecuritySession *)self role];
  if (role == 1)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Read-Encryption-Key";
    v5 = 27;
  }

  else
  {
    if (role)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Write-Encryption-Key";
    v5 = 28;
  }

  role = [v3 dataWithBytes:v4 length:v5];
LABEL_6:

  return role;
}

- (id)_inputInfo
{
  role = [(HAPSecuritySession *)self role];
  if (role == 1)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Write-Encryption-Key";
    v5 = 28;
  }

  else
  {
    if (role)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x277CBEA90];
    v4 = "Control-Read-Encryption-Key";
    v5 = 27;
  }

  role = [v3 dataWithBytes:v4 length:v5];
LABEL_6:

  return role;
}

- (void)_processSetupExchangeData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  queue = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAPSecuritySession__processSetupExchangeData_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = errorCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
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

- (void)receivedSetupExchangeData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  queue = [(HAPSecuritySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HAPSecuritySession_receivedSetupExchangeData_error___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = errorCopy;
  v13 = dataCopy;
  selfCopy = self;
  v9 = dataCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Sending initial client exchange", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPSecuritySession *)selfCopy _notifyOpening];
  [(HAPSecuritySession *)selfCopy _processSetupExchangeData:0 error:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_handlePeerPairingIdentityRequestWithIdentifier:(id)identifier status:(int *)status
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v10;
    v28 = 2112;
    v29 = identifierCopy;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Received request for peer pairing identity with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  delegate = [(HAPSecuritySession *)selfCopy delegate];
  v12 = delegate;
  if (delegate)
  {
    v25 = 0;
    v13 = [delegate securitySession:selfCopy didReceiveRequestForPeerPairingIdentityWithIdentifier:identifierCopy error:&v25];
    v14 = v25;
    if (v13)
    {
      goto LABEL_15;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
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
    if (status)
    {
      *status = -6727;
    }

    [(HAPSecuritySession *)v16 closeWithError:v14];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
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
    if (status)
    {
      v13 = 0;
      *status = -6705;
      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)status
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request for local pairing identity", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HAPSecuritySession *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    v23 = 0;
    v11 = [delegate securitySession:selfCopy didReceiveLocalPairingIdentityRequestWithError:&v23];
    v12 = v23;
    if (v11)
    {
      goto LABEL_15;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
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
    if (status)
    {
      *status = -6727;
    }

    [(HAPSecuritySession *)v14 closeWithError:v12];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
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
    if (status)
    {
      v11 = 0;
      *status = -6705;
      goto LABEL_15;
    }
  }

  v11 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_initializeSetupSession:(unint64_t)session
{
  v24 = *MEMORY[0x277D85DE8];
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  if (session)
  {
    [(HAPSecuritySession *)self role];
    if (!PairingSessionCreate())
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v17;
        v22 = 2048;
        sessionCopy = session;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Created pairing session with resumeSessionID: %llu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = self->_pairingSession;
      PairingSessionSetResumeInfo();
      selfCopy2 = selfCopy;
      goto LABEL_13;
    }
  }

  [(HAPSecuritySession *)self role];
  v6 = PairingSessionCreate();
  if (!v6)
  {
    selfCopy2 = self;
LABEL_13:
    [(HAPSecuritySession *)selfCopy2 pairingSession];
    PairingSessionSetFlags();
    result = 1;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v11;
    v22 = 2048;
    sessionCopy = v7;
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
  role = [(HAPSecuritySession *)self role];
  v6 = @"unknown";
  v7 = @"server";
  if (role != 1)
  {
    v7 = @"unknown";
  }

  if (!role)
  {
    v7 = @"client";
  }

  v8 = v7;
  state = [(HAPSecuritySession *)self state];
  if (state <= 3)
  {
    v6 = off_2786D3480[state];
  }

  v10 = [v3 stringWithFormat:@"<%@, Role = %@, State = %@>", v4, v8, v6];

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  role = [(HAPSecuritySession *)self role];
  v6 = @"unknown";
  v7 = @"server";
  if (role != 1)
  {
    v7 = @"unknown";
  }

  if (!role)
  {
    v7 = @"client";
  }

  v8 = v7;
  state = [(HAPSecuritySession *)self state];
  if (state <= 3)
  {
    v6 = off_2786D3480[state];
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, Role = %@, State = %@>", v4, self, v8, v6];

  return v10;
}

- (void)setResumeSessionID:(unint64_t)d
{
  os_unfair_lock_lock_with_options();
  self->_resumeSessionID = d;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)resumeSessionID
{
  os_unfair_lock_lock_with_options();
  resumeSessionID = self->_resumeSessionID;
  os_unfair_lock_unlock(&self->_lock);
  return resumeSessionID;
}

- (void)setAdditionalDerivedKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock_with_options();
  additionalDerivedKeys = self->_additionalDerivedKeys;
  self->_additionalDerivedKeys = keysCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)additionalDerivedKeys
{
  os_unfair_lock_lock_with_options();
  v3 = self->_additionalDerivedKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBroadcastKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  broadcastKey = self->_broadcastKey;
  self->_broadcastKey = keyCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)broadcastKey
{
  os_unfair_lock_lock_with_options();
  v3 = self->_broadcastKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

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
  selfCopy = self;
  pairingSession = selfCopy->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    selfCopy->_pairingSession = 0;
  }

  v4 = objc_alloc_init(HAPSecuritySessionEncryption);
  [(HAPSecuritySession *)selfCopy setEncryption:v4];

  selfCopy->_resumeSessionID = 0;
  v5.receiver = selfCopy;
  v5.super_class = HAPSecuritySession;
  [(HAPSecuritySession *)&v5 dealloc];
}

- (HAPSecuritySession)initWithRole:(unint64_t)role resumeSessionID:(unint64_t)d delegate:(id)delegate
{
  v27 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (delegateCopy)
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

      objc_storeWeak(&v10->_delegate, delegateCopy);
      v10->_role = role;
      v15 = objc_alloc_init(HAPSecuritySessionEncryption);
      encryption = v10->_encryption;
      v10->_encryption = v15;

      [(HAPSecuritySession *)v10 _initializeSetupSession:d];
      v10->_state = 0;
    }

    selfCopy = v10;
    v18 = selfCopy;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
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