@interface HAPNameResolver
+ (id)sharedWorkQueue;
- (HAPNameResolver)initWithDeviceName:(id)name serviceType:(id)type domain:(id)domain;
- (id)_nwCreateConnection;
- (id)shortDescription;
- (int64_t)resolutionState;
- (void)_cancelTimer;
- (void)_doCompletionWithErrorCode:(int64_t)code socketInfo:(id)info state:(int64_t)state;
- (void)_doCompletionWithErrorCode:(int64_t)code state:(int64_t)state;
- (void)_nwConnectionStart;
- (void)_setStateChangedHandler;
- (void)_startTimerWithTimeout:(double)timeout;
- (void)_updateSocketInfo:(id)info;
- (void)invalidate;
- (void)resolveWithTimeout:(double)timeout completion:(id)completion;
- (void)setResolutionState:(int64_t)state;
- (void)timerDidFire:(id)fire;
@end

@implementation HAPNameResolver

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(HAPNameResolver *)self name];
  serviceType = [(HAPNameResolver *)self serviceType];
  domain = [(HAPNameResolver *)self domain];
  v8 = [v3 stringWithFormat:@"%@ %@/%@/%@", v4, name, serviceType, domain];

  return v8;
}

- (void)invalidate
{
  workQueue = [(HAPNameResolver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HAPNameResolver_invalidate__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __29__HAPNameResolver_invalidate__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) name];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Name resolution time out for %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) connection];
  if (v7)
  {
    v8 = v7;
    if ([*(a1 + 32) resolutionState] == 1)
    {

LABEL_7:
      [*(a1 + 32) _cancelTimer];
      [*(a1 + 32) _doCompletionWithErrorCode:2 state:4];
      goto LABEL_8;
    }

    v9 = [*(a1 + 32) resolutionState];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)resolveWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HAPNameResolver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPNameResolver_resolveWithTimeout_completion___block_invoke;
  block[3] = &unk_2786D43A8;
  timeoutCopy = timeout;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

void __49__HAPNameResolver_resolveWithTimeout_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) name];
    v7 = *(a1 + 48);
    v21 = 138543874;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting name resolution for %@ with timeout of %f", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) resolutionState])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v11;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Attempt to initiate name resolution on stale object", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:4 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) setCompletion:*(a1 + 40)];
    v13 = [*(a1 + 32) _nwCreateConnection];
    [*(a1 + 32) setConnection:v13];

    v14 = [*(a1 + 32) connection];

    if (v14)
    {
      [*(a1 + 32) setResolutionState:1];
      [*(a1 + 32) _setStateChangedHandler];
      [*(a1 + 32) _startTimerWithTimeout:*(a1 + 48)];
      [*(a1 + 32) _nwConnectionStart];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) shortDescription];
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@nw_connection_create failed for %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) _doCompletionWithErrorCode:9 state:3];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_nwConnectionStart
{
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  connection = [(HAPNameResolver *)self connection];
  nw_connection_start(connection);
}

- (id)_nwCreateConnection
{
  v25 = *MEMORY[0x277D85DE8];
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], &__block_literal_global_10);
  v5 = nw_interface_create_with_name();
  nw_parameters_prohibit_interface(secure_tcp, v5);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [(HAPNameResolver *)selfCopy shortDescription];
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = shortDescription;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@nw_connection_create with %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  name = [(HAPNameResolver *)selfCopy name];
  uTF8String = [name UTF8String];
  serviceType = [(HAPNameResolver *)selfCopy serviceType];
  uTF8String2 = [serviceType UTF8String];
  domain = [(HAPNameResolver *)selfCopy domain];
  bonjour_service = nw_endpoint_create_bonjour_service(uTF8String, uTF8String2, [domain UTF8String]);
  v17 = nw_connection_create(bonjour_service, secure_tcp);

  if (v17)
  {
    workQueue2 = [(HAPNameResolver *)selfCopy workQueue];
    nw_connection_set_queue(v17, workQueue2);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_setStateChangedHandler
{
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  connection = [(HAPNameResolver *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HAPNameResolver__setStateChangedHandler__block_invoke;
  v5[3] = &unk_2786D34C8;
  objc_copyWeak(&v6, &location);
  nw_connection_set_state_changed_handler(connection, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__HAPNameResolver__setStateChangedHandler__block_invoke(uint64_t a1, int a2, void *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_8;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v8 name];
    *buf = 138544130;
    v82 = v10;
    v83 = 2112;
    v84 = v11;
    v85 = 1024;
    v86 = a2;
    v87 = 2112;
    v88 = v5;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@nw_connection state changed %@ %d error %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = [v8 connection];
    nw_connection_cancel_current_endpoint(v12);

    v13 = v8;
    v14 = 1;
    goto LABEL_6;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        if (a2 != 5)
        {
          goto LABEL_8;
        }

        v25 = objc_autoreleasePoolPush();
        v26 = v8;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v29 = [v26 name];
          *buf = 138543618;
          v82 = v28;
          v83 = 2112;
          v84 = v29;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@nw_connection_state cancelled %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v13 = v26;
        v14 = 2;
        v15 = 4;
        goto LABEL_7;
      }

      v53 = objc_autoreleasePoolPush();
      v54 = v8;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [v54 name];
        *buf = 138543618;
        v82 = v56;
        v83 = 2112;
        v84 = v57;
        _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_INFO, "%{public}@nw_connection_state failed %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      v58 = [v54 connection];
      nw_connection_cancel(v58);

      v13 = v54;
      v14 = 8;
LABEL_6:
      v15 = 3;
LABEL_7:
      [v13 _doCompletionWithErrorCode:v14 state:v15];
      goto LABEL_8;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v8;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [v36 name];
      *buf = 138543618;
      v82 = v38;
      v83 = 2112;
      v84 = v39;
      _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_INFO, "%{public}@nw_connection_state ready %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v40 = [v36 connection];
    v41 = nw_connection_copy_current_path(v40);

    if (v41)
    {
      v42 = nw_path_copy_endpoint();
      v43 = v42;
      if (v42 && nw_endpoint_get_address(v42))
      {
        v44 = SockAddrToString();
        if (!v44)
        {
          Port = SockAddrGetPort();
          v61 = [HAPSocketInfo alloc];
          v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
          v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:Port];
          v64 = [(HAPSocketInfo *)v61 initWithIPAddressString:v62 port:v63];

          v65 = objc_autoreleasePoolPush();
          v66 = v36;
          v67 = HMFGetOSLogHandle();
          v68 = v67;
          if (v64)
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v69 = HMFGetLogIdentifier();
              [v66 name];
              v70 = v73 = v65;
              *v75 = 138544130;
              v76 = v69;
              v77 = 2080;
              *v78 = buf;
              *&v78[8] = 1024;
              *&v78[10] = Port;
              v79 = 2112;
              v80 = v70;
              _os_log_impl(&dword_22AADC000, v68, OS_LOG_TYPE_INFO, "%{public}@nw_connection Address resolved:  %s   port: %d for %@", v75, 0x26u);

              v65 = v73;
            }

            objc_autoreleasePoolPop(v65);
            [v66 _updateSocketInfo:v64];
          }

          else
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v71 = v74 = v65;
              v72 = [v66 name];
              *v75 = 138544130;
              v76 = v71;
              v77 = 2080;
              *v78 = buf;
              *&v78[8] = 1024;
              *&v78[10] = Port;
              v79 = 2112;
              v80 = v72;
              _os_log_impl(&dword_22AADC000, v68, OS_LOG_TYPE_ERROR, "%{public}@nw_connection Address resolved:  %s   port: %d for %@, but address type could not be determined", v75, 0x26u);

              v65 = v74;
            }

            objc_autoreleasePoolPop(v65);
          }

          goto LABEL_43;
        }

        v45 = v44;
        v46 = objc_autoreleasePoolPush();
        v47 = v36;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [v47 name];
          *v75 = 138543874;
          v76 = v49;
          v77 = 1024;
          *v78 = v45;
          *&v78[4] = 2112;
          *&v78[6] = v50;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_ERROR, "%{public}@nw_connection sock addr to string failed: %d %@", v75, 0x1Cu);
        }

        objc_autoreleasePoolPop(v46);
        v51 = v47;
        v52 = 8;
LABEL_42:
        [v51 _doCompletionWithErrorCode:v52 state:3];
LABEL_43:

        goto LABEL_8;
      }
    }

    else
    {
      v43 = 0;
    }

    v59 = [v36 connection];
    nw_connection_cancel_current_endpoint(v59);

    v51 = v36;
    v52 = 15;
    goto LABEL_42;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v18 name];
        *buf = 138543618;
        v82 = v20;
        v83 = 2112;
        v84 = v21;
        v22 = "%{public}@nw_connection_state waiting %@";
        v23 = v19;
        v24 = OS_LOG_TYPE_DEBUG;
        goto LABEL_35;
      }
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_8;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v18 name];
        *buf = 138543618;
        v82 = v20;
        v83 = 2112;
        v84 = v21;
        v22 = "%{public}@nw_connection_state preparing %@";
        v23 = v19;
        v24 = OS_LOG_TYPE_INFO;
LABEL_35:
        _os_log_impl(&dword_22AADC000, v23, v24, v22, buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v17);
    [v18 setResolutionState:1];
    goto LABEL_8;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = v8;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [v31 name];
    *buf = 138543618;
    v82 = v33;
    v83 = 2112;
    v84 = v34;
    _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEBUG, "%{public}@nw_connection_state invalid %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateSocketInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([infoCopy ipAddressType] <= 4)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      name = [(HAPNameResolver *)selfCopy name];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = name;
      v16 = 2112;
      v17 = infoCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@IP received address %@ %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HAPNameResolver *)selfCopy _cancelTimer];
    [(HAPNameResolver *)selfCopy _doCompletionWithErrorCode:0 socketInfo:infoCopy state:2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_doCompletionWithErrorCode:(int64_t)code state:(int64_t)state
{
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HAPNameResolver *)self _doCompletionWithErrorCode:code socketInfo:0 state:state];
}

- (void)_doCompletionWithErrorCode:(int64_t)code socketInfo:(id)info state:(int64_t)state
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HAPNameResolver *)self _cancelTimer];
  if (code)
  {
    code = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:code userInfo:0];
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    name = [(HAPNameResolver *)selfCopy name];
    v24 = 138543874;
    v25 = v13;
    v26 = 2112;
    v27 = name;
    v28 = 2112;
    codeCopy = code;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Name resolution completed for %@ error %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HAPNameResolver *)selfCopy setResolutionState:state];
  connection = [(HAPNameResolver *)selfCopy connection];

  if (connection)
  {
    connection2 = [(HAPNameResolver *)selfCopy connection];
    nw_connection_cancel(connection2);

    [(HAPNameResolver *)selfCopy setConnection:0];
  }

  completion = [(HAPNameResolver *)selfCopy completion];

  if (completion)
  {
    completion2 = [(HAPNameResolver *)selfCopy completion];
    (completion2)[2](completion2, code, infoCopy);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@No completion routine for name resolution", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  [(HAPNameResolver *)selfCopy setCompletion:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (int64_t)resolutionState
{
  os_unfair_lock_lock_with_options();
  resolutionState = self->_resolutionState;
  os_unfair_lock_unlock(&self->_lock);
  return resolutionState;
}

- (void)setResolutionState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_resolutionState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_startTimerWithTimeout:(double)timeout
{
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:timeout];
  [(HAPNameResolver *)self setTimer:v6];

  timer = [(HAPNameResolver *)self timer];
  [timer setDelegate:self];

  workQueue2 = [(HAPNameResolver *)self workQueue];
  timer2 = [(HAPNameResolver *)self timer];
  [timer2 setDelegateQueue:workQueue2];

  timer3 = [(HAPNameResolver *)self timer];
  [timer3 resume];
}

- (void)_cancelTimer
{
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HAPNameResolver *)self timer];
  [timer cancel];

  [(HAPNameResolver *)self setTimer:0];
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HAPNameResolver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HAPNameResolver *)self timer];

  if (timer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      name = [(HAPNameResolver *)selfCopy name];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = name;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Name resolution timed out for %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HAPNameResolver *)selfCopy _doCompletionWithErrorCode:24 state:3];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HAPNameResolver)initWithDeviceName:(id)name serviceType:(id)type domain:(id)domain
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v17.receiver = self;
  v17.super_class = HAPNameResolver;
  v12 = [(HAPNameResolver *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_serviceType, type);
    objc_storeStrong(&v13->_domain, domain);
    v14 = +[HAPNameResolver sharedWorkQueue];
    workQueue = v13->_workQueue;
    v13->_workQueue = v14;

    v13->_resolutionState = 0;
  }

  return v13;
}

+ (id)sharedWorkQueue
{
  if (sharedWorkQueue_onceToken != -1)
  {
    dispatch_once(&sharedWorkQueue_onceToken, &__block_literal_global_3774);
  }

  v3 = sharedWorkQueue_workQueue;

  return v3;
}

uint64_t __34__HAPNameResolver_sharedWorkQueue__block_invoke()
{
  sharedWorkQueue_workQueue = dispatch_queue_create("com.apple.HAPNameResolution", 0);

  return MEMORY[0x2821F96F8]();
}

@end