@interface HAPSRPPairSetupSession
+ (BOOL)isValidSetupCode:(id)code;
+ (id)logCategory;
+ (void)initialize;
- (BOOL)_initializeSession;
- (BOOL)handleSavePeerRequestWithPeerIdentity:(id)identity error:(id *)error;
- (BOOL)isSecureSession;
- (HAPPairSetupSessionDelegate)delegate;
- (HAPSRPPairSetupSession)init;
- (HAPSRPPairSetupSession)initWithRole:(int64_t)role pairSetupType:(unint64_t)type delegate:(id)delegate;
- (id)_handleLocalPairingIdentityRequestWithStatus:(int *)status;
- (id)_showSetupCodeWithError:(id *)error;
- (id)decryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)encryptData:(id)data additionalAuthenticatedData:(id)authenticatedData error:(id *)error;
- (id)getCertificate;
- (id)logIdentifier;
- (id)shortDescription;
- (void)_handleBackoffExpiration;
- (void)_handlePairSetupExchangeComplete;
- (void)_handleProductData:(id)data;
- (void)_initializeServer;
- (void)_initiateClientPairSetupExchange;
- (void)_invalidate;
- (void)_processSetupCode:(id)code error:(id)error;
- (void)_processSetupExchangeData:(id)data error:(id)error;
- (void)_stopWithError:(id)error;
- (void)dealloc;
- (void)generateSessionKeys;
- (void)handleBackoffRequestWithTimeout:(double)timeout;
- (void)handleInvalidSetupCodeAndRestart:(BOOL)restart;
- (void)handleSetupCodeRequest;
- (void)receivedSetupExchangeData:(id)data error:(id)error;
- (void)start;
- (void)stopWithError:(id)error;
- (void)timerDidFire:(id)fire;
@end

@implementation HAPSRPPairSetupSession

- (HAPPairSetupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  delegate = [(HAPSRPPairSetupSession *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  identifier = [v5 identifier];

  state = [(HAPSRPPairSetupSession *)self state];
  if (state > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_2786D50C0[state];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPSRPPairSetupSession pairSetupType](self, "pairSetupType")}];
  v12 = [v6 stringWithFormat:@"%@ %@(%@ %@)", v7, identifier, v10, v11];

  return v12;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  backoffTimer = [(HAPSRPPairSetupSession *)self backoffTimer];

  if (backoffTimer == fireCopy)
  {

    [(HAPSRPPairSetupSession *)self _handleBackoffExpiration];
  }
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
  v31 = __Block_byref_object_copy__15106;
  v32 = __Block_byref_object_dispose__15107;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__15106;
  v28 = __Block_byref_object_dispose__15107;
  v29 = 0;
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HAPSRPPairSetupSession_decryptData_additionalAuthenticatedData_error___block_invoke;
  block[3] = &unk_2786D50A0;
  block[4] = self;
  v22 = &v24;
  v20 = dataCopy;
  v23 = buf;
  v21 = authenticatedDataCopy;
  dispatch_sync(clientQueue, block);

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

void __72__HAPSRPPairSetupSession_decryptData_additionalAuthenticatedData_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sessionWriteKey];
  if (v2 && (v3 = v2, [*(a1 + 32) sessionReadKey], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v34 = [*(a1 + 40) subdataWithRange:{objc_msgSend(*(a1 + 40), "length") - 16, 16}];
    v5 = [*(a1 + 40) subdataWithRange:{0, objc_msgSend(*(a1 + 40), "length") - 16}];
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v5, "length")}];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) sessionReadKey];
    [v9 bytes];
    v10 = [*(a1 + 32) sessionReadNonce];
    [v10 bytes];
    [*(a1 + 48) bytes];
    [*(a1 + 48) length];
    [v5 bytes];
    [v5 length];
    [*(*(*(a1 + 64) + 8) + 40) mutableBytes];
    v11 = v34;
    [v34 bytes];
    v12 = chacha20_poly1305_decrypt_all_64x64();

    v13 = [*(a1 + 32) sessionReadNonce];
    v14 = [v13 mutableBytes];
    v15 = [*(a1 + 32) sessionReadNonce];
    v16 = [v15 length];
    if (v16)
    {
      v17 = v16 - 1;
      do
      {
        if (++*v14++)
        {
          v19 = 1;
        }

        else
        {
          v19 = v17 == 0;
        }

        --v17;
      }

      while (!v19);
    }

    if (v12)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v12 userInfo:0];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }

    v23 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 32) sessionReadKey];
      v29 = [*(a1 + 32) sessionWriteKey];
      *buf = 138543874;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      v39 = 2112;
      v40 = v29;
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil Session keys: readKey: %@, writeKey: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6709 userInfo:0];
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v33 = *MEMORY[0x277D85DE8];
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
    v27 = __Block_byref_object_copy__15106;
    v28 = __Block_byref_object_dispose__15107;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__15106;
    v22 = __Block_byref_object_dispose__15107;
    v23 = 0;
    clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HAPSRPPairSetupSession_encryptData_additionalAuthenticatedData_error___block_invoke;
    block[3] = &unk_2786D50A0;
    block[4] = self;
    v16 = &v18;
    v17 = &v24;
    v14 = dataCopy;
    v15 = authenticatedDataCopy;
    dispatch_sync(clientQueue, block);

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

void __72__HAPSRPPairSetupSession_encryptData_additionalAuthenticatedData_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sessionWriteKey];
  if (v2 && (v3 = v2, [*(a1 + 32) sessionReadKey], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(*(a1 + 40), "length")}];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) sessionWriteKey];
    [v8 bytes];
    v9 = [*(a1 + 32) sessionWriteNonce];
    [v9 bytes];
    [*(a1 + 48) bytes];
    [*(a1 + 48) length];
    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    [*(*(*(a1 + 64) + 8) + 40) mutableBytes];
    chacha20_poly1305_encrypt_all_64x64();

    [*(*(*(a1 + 64) + 8) + 40) appendBytes:&v27 length:16];
    v10 = [*(a1 + 32) sessionWriteNonce];
    v11 = [v10 mutableBytes];
    v12 = [*(a1 + 32) sessionWriteNonce];
    v13 = [v12 length];
    if (v13)
    {
      v14 = v13 - 1;
      do
      {
        if (++*v11++)
        {
          v16 = 1;
        }

        else
        {
          v16 = v14 == 0;
        }

        --v14;
      }

      while (!v16);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 32) sessionReadKey];
      v22 = [*(a1 + 32) sessionWriteKey];
      v27 = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil Session keys: readKey: %@, writeKey: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6709 userInfo:0];
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSecureSession
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__HAPSRPPairSetupSession_isSecureSession__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(clientQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __41__HAPSRPPairSetupSession_isSecureSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionWriteKey];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) sessionReadKey];

    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (id)getCertificate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15106;
  v11 = __Block_byref_object_dispose__15107;
  v12 = 0;
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HAPSRPPairSetupSession_getCertificate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(clientQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__HAPSRPPairSetupSession_getCertificate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) certificate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)generateSessionKeys
{
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HAPSRPPairSetupSession_generateSessionKeys__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __45__HAPSRPPairSetupSession_generateSessionKeys__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Split pair setup done.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) pairingSession];
  if (PairingSessionDeriveKey() || ([*(a1 + 32) pairingSession], PairingSessionDeriveKey()))
  {
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:6 description:@"Failed to generate session keys" reason:0 suggestion:0 underlyingError:0];
    [*(a1 + 32) _stopWithError:v6];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
    [v8 setSessionReadKey:v9];

    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:32];
    [v10 setSessionWriteKey:v11];

    memset_s(__s, 8uLL, 0, 8uLL);
    memset_s(v28, 8uLL, 0, 8uLL);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CBEB28] dataWithBytes:__s length:8];
    [v12 setSessionReadNonce:v13];

    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CBEB28] dataWithBytes:v28 length:8];
    [v14 setSessionWriteNonce:v15];

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) sessionReadKey];
      v21 = [*(a1 + 32) sessionWriteKey];
      v22 = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Generated read key: %@, write key: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    v9 = 0;
    if ([(HAPSRPPairSetupSession *)self pairSetupType]!= 5)
    {
      v9 = [(HAPSRPPairSetupSession *)self pairSetupType]!= 6;
    }

    if ([(HAPSRPPairSetupSession *)self pairingSession]&& !v9)
    {
      [(HAPSRPPairSetupSession *)self pairingSession];
      v10 = PairingSessionCopyProperty();
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543874;
        v16 = v14;
        v17 = 1024;
        v18 = 0;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Pair Setup completed with err: %d,  MFi Cert %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v11);
      if (v10)
      {
        [(HAPSRPPairSetupSession *)selfCopy setCertificate:v10];
        CFRelease(v10);
      }
    }
  }

  [(HAPSRPPairSetupSession *)self setHandlingInvalidSetupCode:0];
  if ([(HAPSRPPairSetupSession *)self pairSetupType]!= 3)
  {
    [(HAPSRPPairSetupSession *)self _invalidate];
  }

  [(HAPSRPPairSetupSession *)self setState:2];
  delegate = [(HAPSRPPairSetupSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HAPSRPPairSetupSession *)self delegate];
    [delegate2 pairSetupSession:self didStopWithError:errorCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HAPSRPPairSetupSession_stopWithError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(clientQueue, v7);
}

- (void)start
{
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HAPSRPPairSetupSession_start__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __31__HAPSRPPairSetupSession_start__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  if (v5)
  {
    [*(a1 + 32) setState:1];
    v2 = [*(a1 + 32) role];
    if (v2 == 1)
    {
      [*(a1 + 32) _initializeServer];
    }

    else if (!v2)
    {
      [*(a1 + 32) _initiateClientPairSetupExchange];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 pairSetupSessionDidStart:*(a1 + 32)];
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"A delegate is required for this session." reason:0 suggestion:0 underlyingError:0];
    [*(a1 + 32) _stopWithError:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_handleProductData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  delegate = [(HAPSRPPairSetupSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_283EBEC68])
  {
    delegate2 = [(HAPSRPPairSetupSession *)self delegate];

    if (delegate2)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate2 pairSetupSession:self didReceiveProductData:dataCopy];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle product data, the delegate is missing", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  delegate2 = 0;
LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_showSetupCodeWithError:(id *)error
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)handleSavePeerRequestWithPeerIdentity:(id)identity error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v10;
    v29 = 2112;
    v30 = identityCopy;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Received request to save peer '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  delegate = [(HAPSRPPairSetupSession *)selfCopy delegate];
  v12 = delegate;
  if (delegate)
  {
    v26 = 0;
    v13 = [delegate pairSetupSession:selfCopy didPairWithPeer:identityCopy error:&v26];
    v14 = v26;
    if (v13)
    {
      v15 = 1;
      goto LABEL_15;
    }

    v20 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@The delegate failed to save the peer with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to save the peer, the delegate is missing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to save peer" reason:@"The delegate is mising" suggestion:0 underlyingError:0];
  }

  [(HAPSRPPairSetupSession *)v17 stopWithError:v14];
  if (error)
  {
    v23 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_handleBackoffExpiration
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
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@The Pair Setup backoff did expire, requesting setup code", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPSRPPairSetupSession *)selfCopy setBackoffTimer:0];
  [(HAPSRPPairSetupSession *)selfCopy handleSetupCodeRequest];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleBackoffRequestWithTimeout:(double)timeout
{
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HAPSRPPairSetupSession_handleBackoffRequestWithTimeout___block_invoke;
  v6[3] = &unk_2786D63C8;
  v6[4] = self;
  *&v6[5] = timeout;
  dispatch_async(clientQueue, v6);
}

void __58__HAPSRPPairSetupSession_handleBackoffRequestWithTimeout___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v20 = 138543618;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Peer requested a backoff of %g seconds", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if ([v7 conformsToProtocol:&unk_283EBEC68])
  {
    v8 = [*(a1 + 32) delegate];
  }

  else
  {
    v8 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v8 pairSetupSession:*(a1 + 32) didReceiveBackoffRequestWithTimeInterval:*(a1 + 40)])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Client requested that no backoff be performed, requesting setup code", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 32) handleSetupCodeRequest];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting Pair Setup backoff timer", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:*(a1 + 40)];
    [v13 setDelegate:*(a1 + 32)];
    v14 = [*(a1 + 32) clientQueue];
    [v13 setDelegateQueue:v14];

    [*(a1 + 32) setBackoffTimer:v13];
    [v13 resume];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleInvalidSetupCodeAndRestart:(BOOL)restart
{
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HAPSRPPairSetupSession_handleInvalidSetupCodeAndRestart___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  restartCopy = restart;
  dispatch_async(clientQueue, v6);
}

void __59__HAPSRPPairSetupSession_handleInvalidSetupCodeAndRestart___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@The Pair Setup session received an invalid setup code", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegate];
  if ([v6 conformsToProtocol:&unk_283EBEC68])
  {
    v7 = [*(a1 + 32) delegate];
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 pairSetupSessionDidReceiveInvalidSetupCode:*(a1 + 32)];
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setHandlingInvalidSetupCode:1];
    [*(a1 + 32) _processSetupExchangeData:0 error:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processSetupCode:(id)code error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v11;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get setup code with error: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pair Setup failed." reason:@"An error occurred getting the setup code." suggestion:0 underlyingError:errorCopy];
    [(HAPSRPPairSetupSession *)selfCopy _stopWithError:v12];
LABEL_5:

    goto LABEL_17;
  }

  [(HAPSRPPairSetupSession *)self setHandlingInvalidSetupCode:0];
  v13 = [HAPSRPPairSetupSession isValidSetupCode:codeCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = codeCopy;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Processing received setup code: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HAPSRPPairSetupSession *)selfCopy2 pairingSession];
    [codeCopy UTF8String];
    v19 = PairingSessionSetSetupCode();
    if (!v19)
    {
      [(HAPSRPPairSetupSession *)selfCopy2 _processSetupExchangeData:0 error:0];
      goto LABEL_17;
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v19];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy2;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to set setup code with error: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pair Setup failed." reason:@"Failed to handle setup code." suggestion:0 underlyingError:v12];
    [(HAPSRPPairSetupSession *)v21 _stopWithError:v24];

    goto LABEL_5;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v25;
    v29 = 2112;
    v30 = codeCopy;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received invalid setup code '%@'", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  [(HAPSRPPairSetupSession *)selfCopy2 handleInvalidSetupCodeAndRestart:0];
  [(HAPSRPPairSetupSession *)selfCopy2 handleSetupCodeRequest];
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleSetupCodeRequest
{
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HAPSRPPairSetupSession_handleSetupCodeRequest__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __48__HAPSRPPairSetupSession_handleSetupCodeRequest__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  if ([v2 conformsToProtocol:&unk_283EBEC68])
  {
    v3 = [*(a1 + 32) delegate];

    if (v3)
    {
      v9 = *(a1 + 32);
      [v3 pairSetupSession:? didReceiveSetupCodeRequestWithCompletionHandler:?];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to request setup code, invalid delegate.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to request setup code." reason:@"The delegate is missing." suggestion:0 underlyingError:0];
  [*(a1 + 32) _stopWithError:v3];
LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
}

void __48__HAPSRPPairSetupSession_handleSetupCodeRequest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HAPSRPPairSetupSession_handleSetupCodeRequest__block_invoke_3;
  block[3] = &unk_2786D7078;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

- (void)_handlePairSetupExchangeComplete
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
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Pair setup session did complete successfully", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HAPSRPPairSetupSession *)selfCopy _stopWithError:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processSetupExchangeData:(id)data error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  if ([(HAPSRPPairSetupSession *)self state]!= 1)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      state = [(HAPSRPPairSetupSession *)selfCopy3 state];
      if (state > 2)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_2786D50C0[state];
      }

      *buf = 138543618;
      v34 = v15;
      v35 = 2112;
      v36 = v17;
      v19 = "%{public}@Unable to handle setup exchange data in state '%@'";
      v20 = v14;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 22;
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v12);
    goto LABEL_17;
  }

  if (errorCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v11;
      v35 = 2112;
      v36 = errorCopy;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Closing session due to exchange error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HAPSRPPairSetupSession *)selfCopy2 _stopWithError:errorCopy];
    goto LABEL_17;
  }

  [(HAPSRPPairSetupSession *)self pairingSession];
  [dataCopy bytes];
  [dataCopy length];
  v18 = PairingSessionExchange();
  if (v18)
  {
    if (v18 == -6771)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v15;
        v19 = "%{public}@The session is waiting for a client to handle an operation";
        v20 = v14;
        v21 = OS_LOG_TYPE_INFO;
        v22 = 12;
LABEL_15:
        _os_log_impl(&dword_22AADC000, v20, v21, v19, buf, v22);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v18];
    v26 = [v24 hapErrorWithCode:12 description:@"Failed to process exchange data" reason:0 suggestion:0 underlyingError:v25];

    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v30;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to process exchange data with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    [(HAPSRPPairSetupSession *)selfCopy4 _stopWithError:v26];
  }

  v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:0 length:0];
  if ([v31 length])
  {
    delegate = [(HAPSRPPairSetupSession *)self delegate];
    [delegate pairSetupSession:self didReceiveSetupExchangeData:v31];
  }

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)receivedSetupExchangeData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  clientQueue = [(HAPSRPPairSetupSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HAPSRPPairSetupSession_receivedSetupExchangeData_error___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = dataCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = dataCopy;
  dispatch_async(clientQueue, block);
}

void __58__HAPSRPPairSetupSession_receivedSetupExchangeData_error___block_invoke(uint64_t a1)
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
    [*(a1 + 48) _processSetupExchangeData:*(a1 + 32) error:*(a1 + 40)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid setup exchange data: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Exchange data or an error is required" reason:0 suggestion:0 underlyingError:0];
    [*(a1 + 48) _stopWithError:v12];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initializeServer
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

- (void)_initiateClientPairSetupExchange
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
  [(HAPSRPPairSetupSession *)selfCopy _processSetupExchangeData:0 error:0];
  v7 = *MEMORY[0x277D85DE8];
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
  delegate = [(HAPSRPPairSetupSession *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    v23 = 0;
    v11 = [delegate pairSetupSession:selfCopy didReceiveLocalPairingIdentityRequestWithError:&v23];
    v12 = v23;
    if (!v11)
    {
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
    }
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
    v11 = 0;
    if (status)
    {
      *status = -6705;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_initializeSession
{
  v20 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[2] = 0;
  v15 = 0u;
  v13 = 0u;
  v14[1] = _CopyPairingIdentityDelegateCallback_f_15205;
  v14[3] = _SavePairedPeerDelegateCallback_f_15196;
  role = [(HAPSRPPairSetupSession *)self role];
  v4 = _PromptForSetupCodeDelegateCallback_f;
  if (role)
  {
    if (role != 1)
    {
      goto LABEL_6;
    }

    v5 = &v13;
    v4 = _PairingShowSetupCode_f;
  }

  else
  {
    v5 = v14;
  }

  *v5 = v4;
LABEL_6:
  [(HAPSRPPairSetupSession *)self role];
  v6 = PairingSessionCreate();
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create pairing session with error: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [(HAPSRPPairSetupSession *)self setSessionReadKey:0];
    [(HAPSRPPairSetupSession *)self setSessionWriteKey:0];
    [(HAPSRPPairSetupSession *)self setSessionReadNonce:0];
    [(HAPSRPPairSetupSession *)self setSessionWriteNonce:0];
    if ([(HAPSRPPairSetupSession *)self pairSetupType]== 1 || [(HAPSRPPairSetupSession *)self pairSetupType]== 3 || [(HAPSRPPairSetupSession *)self pairSetupType]== 4 || [(HAPSRPPairSetupSession *)self pairSetupType]== 6 || [(HAPSRPPairSetupSession *)self pairSetupType]== 5 || [(HAPSRPPairSetupSession *)self pairSetupType]== 7)
    {
      [(HAPSRPPairSetupSession *)self pairingSession];
      PairingSessionSetFlags();
    }

    [(HAPSRPPairSetupSession *)self pairingSession];
    PairingSessionSetEventHandler();
  }

  result = v6 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPSRPPairSetupSession *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  role = [(HAPSRPPairSetupSession *)self role];
  v9 = @"unknown";
  v10 = @"server";
  if (role != 1)
  {
    v10 = @"unknown";
  }

  if (!role)
  {
    v10 = @"client";
  }

  v11 = v10;
  state = [(HAPSRPPairSetupSession *)self state];
  if (state <= 2)
  {
    v9 = off_2786D50C0[state];
  }

  v13 = [v5 stringWithFormat:@"<%@%@, Role = %@, State = %@, Type: %tu>", shortDescription, v7, v11, v9, -[HAPSRPPairSetupSession pairSetupType](self, "pairSetupType")];

  if (pointerCopy)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_invalidate
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }
}

- (void)dealloc
{
  [(HAPSRPPairSetupSession *)self _invalidate];
  v3.receiver = self;
  v3.super_class = HAPSRPPairSetupSession;
  [(HAPSRPPairSetupSession *)&v3 dealloc];
}

- (HAPSRPPairSetupSession)initWithRole:(int64_t)role pairSetupType:(unint64_t)type delegate:(id)delegate
{
  v34 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (delegateCopy)
  {
    if (role)
    {
      if (role != 1)
      {
        v15 = 0;
LABEL_11:
        if ([delegateCopy conformsToProtocol:v15])
        {
          v29.receiver = self;
          v29.super_class = HAPSRPPairSetupSession;
          v16 = [(HAPSRPPairSetupSession *)&v29 init];
          selfCopy2 = v16;
          if (!v16)
          {
            goto LABEL_14;
          }

          v17 = HAPDispatchQueueName(v16, 0);
          v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v19 = dispatch_queue_create(v17, v18);
          clientQueue = selfCopy2->_clientQueue;
          selfCopy2->_clientQueue = v19;

          selfCopy2->_role = role;
          selfCopy2->_handlingInvalidSetupCode = 0;
          selfCopy2->_pairSetupType = type;
          objc_storeWeak(&selfCopy2->_delegate, delegateCopy);
          if ([(HAPSRPPairSetupSession *)selfCopy2 _initializeSession])
          {
LABEL_14:
            selfCopy2 = selfCopy2;
            v14 = selfCopy2;
LABEL_23:

            goto LABEL_24;
          }
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = v23;
            v25 = @"unknown";
            if (role == 1)
            {
              v25 = @"server";
            }

            if (!role)
            {
              v25 = @"client";
            }

            *buf = 138543618;
            v31 = v23;
            v32 = 2112;
            v33 = v25;
            v26 = v25;
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Delegate must conform to the %@ delegate", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
        }

        v14 = 0;
        goto LABEL_23;
      }

      v9 = &protocolRef_HAPPairSetupSessionServerDelegate;
    }

    else
    {
      v9 = &protocolRef_HAPPairSetupSessionClientDelegate;
    }

    v15 = *v9;
    goto LABEL_11;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v13;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@A valid delegate is required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = 0;
LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HAPSRPPairSetupSession)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t42 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42, &__block_literal_global_15229);
  }

  v3 = logCategory__hmf_once_v43;

  return v3;
}

uint64_t __37__HAPSRPPairSetupSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v43 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isValidSetupCode:(id)code
{
  v19 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v14 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[0-9]{3}-[0-9]{2}-[0-9]{3}$" options:0 error:&v14];
  v6 = v14;
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup code regex with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_7;
  }

  if ([v5 numberOfMatchesInString:codeCopy options:0 range:{0, objc_msgSend(codeCopy, "length")}] != 1)
  {
LABEL_7:
    LOBYTE(v7) = 0;
    goto LABEL_8;
  }

  v7 = [_denylistedSetupCodes containsObject:codeCopy] ^ 1;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)initialize
{
  v2 = _denylistedSetupCodes;
  _denylistedSetupCodes = &unk_283EA9BC0;
}

@end