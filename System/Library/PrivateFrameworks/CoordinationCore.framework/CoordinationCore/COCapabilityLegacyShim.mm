@interface COCapabilityLegacyShim
- (BOOL)_isStereoPairMember;
- (BOOL)_isStereoPeer:(id)a3;
- (BOOL)_isStereoPeerActive;
- (BOOL)_messageValidateRequest:(id)a3;
- (BOOL)_messageValidateResponse:(id)a3;
- (BOOL)_rapportEventShouldUpdateState:(id)a3;
- (COCapabilityLegacyShim)initWithDelegate:(id)a3;
- (COCapabilityLegacyShimDelegate)delegate;
- (NSSet)availableCapabilities;
- (NSSet)companionCapabilities;
- (id)_messageCreateRequest;
- (id)_messageCreateResponse;
- (id)_messageDecodeCapabilities:(id)a3;
- (id)_messageEncodeCapabilities;
- (void)_messageEncodeCapabilities;
- (void)_notifyDelegate:(id)a3;
- (void)_rapportDeregister;
- (void)_rapportProcessRequest:(id)a3 emittingResponse:(id)a4;
- (void)_rapportProcessResponse:(id)a3 error:(id)a4;
- (void)_rapportRegister;
- (void)_rapportStart;
- (void)_rapportStop;
- (void)_stateQuery;
- (void)_stateUpdate;
- (void)_withLock:(id)a3;
- (void)dealloc;
- (void)setAvailableCapabilities:(id)a3;
- (void)setCompanionCapabilities:(id)a3;
@end

@implementation COCapabilityLegacyShim

- (COCapabilityLegacyShim)initWithDelegate:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = COCapabilityLegacyShim;
  v5 = [(COCapabilityLegacyShim *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.CoordinationCore.Capabilities.LegacyShim", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    [v10 addObject:@"com.apple.SoundBoard.capability.Krono"];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    supportedCapabilities = v6->_supportedCapabilities;
    v6->_supportedCapabilities = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB98]);
    availableCapabilities = v6->_availableCapabilities;
    v6->_availableCapabilities = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB98]);
    companionCapabilities = v6->_companionCapabilities;
    v6->_companionCapabilities = v15;

    *&v6->_companionQueryInProgress = 0;
    v17 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__COCapabilityLegacyShim_initWithDelegate___block_invoke;
    block[3] = &unk_278E15AB8;
    v20 = v6;
    dispatch_async(v17, block);
  }

  return v6;
}

void __43__COCapabilityLegacyShim_initWithDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _rapportStart];
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COCapabilityLegacyShim_initWithDelegate___block_invoke_2;
  block[3] = &unk_278E15AB8;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __43__COCapabilityLegacyShim_initWithDelegate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 availableCapabilities];
  [v1 _notifyDelegate:v2];
}

- (void)dealloc
{
  [(COCapabilityLegacyShim *)self _rapportStop];
  v3.receiver = self;
  v3.super_class = COCapabilityLegacyShim;
  [(COCapabilityLegacyShim *)&v3 dealloc];
}

- (void)_stateUpdate
{
  v3 = [(COCapabilityLegacyShim *)self _isStereoPeerActive];
  v4 = COCoreLogForCategory(5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "Legacy Shim: Stereo Pair peer is active", v8, 2u);
    }

    [(COCapabilityLegacyShim *)self _stateQuery];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "Legacy Shim: Stereo Pair peer is not active", buf, 2u);
    }

    [(COCapabilityLegacyShim *)self setCompanionQueryNeeded:0];
    [(COCapabilityLegacyShim *)self setCompanionQueryUnsuccessful:0];
    v6 = [MEMORY[0x277CBEB98] set];
    [(COCapabilityLegacyShim *)self setCompanionCapabilities:v6];

    v7 = [(COCapabilityLegacyShim *)self supportedCapabilities];
    [(COCapabilityLegacyShim *)self setAvailableCapabilities:v7];
  }
}

- (void)_stateQuery
{
  if ([(COCapabilityLegacyShim *)self isCompanionQueryInProgress])
  {
    v3 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_INFO, "Legacy Shim: query already in progress", buf, 2u);
    }

    [(COCapabilityLegacyShim *)self setCompanionQueryNeeded:1];
  }

  else
  {
    [(COCapabilityLegacyShim *)self setCompanionQueryNeeded:0];
    [(COCapabilityLegacyShim *)self setCompanionQueryInProgress:1];
    [(COCapabilityLegacyShim *)self setCompanionQueryIncompatible:0];
    v4 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "Legacy Shim: issuing query", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5 = [(COCapabilityLegacyShim *)self rapport];
    v6 = [(COCapabilityLegacyShim *)self _messageCreateRequest];
    v7 = *MEMORY[0x277D44240];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__COCapabilityLegacyShim__stateQuery__block_invoke;
    v8[3] = &unk_278E15AE8;
    objc_copyWeak(&v9, buf);
    [v5 sendRequestID:@"com.apple.SoundBoard.Capabilities" request:v6 destinationID:v7 options:0 responseHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __37__COCapabilityLegacyShim__stateQuery__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__COCapabilityLegacyShim__stateQuery__block_invoke_2;
    block[3] = &unk_278E15728;
    block[4] = v9;
    v12 = v6;
    v13 = v7;
    dispatch_async(v10, block);
  }
}

- (void)_rapportStart
{
  v3 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [COCapabilityLegacyShim _rapportStart];
  }

  v4 = objc_alloc_init(MEMORY[0x277D44160]);
  rapport = self->_rapport;
  self->_rapport = v4;

  v6 = [(COCapabilityLegacyShim *)self queue];
  v7 = [(COCapabilityLegacyShim *)self rapport];
  [v7 setDispatchQueue:v6];

  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__COCapabilityLegacyShim__rapportStart__block_invoke;
  v20[3] = &unk_278E15B10;
  objc_copyWeak(&v21, &location);
  v8 = [(COCapabilityLegacyShim *)self rapport];
  [v8 setInvalidationHandler:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__COCapabilityLegacyShim__rapportStart__block_invoke_20;
  v18[3] = &unk_278E158D8;
  objc_copyWeak(&v19, &location);
  v9 = [(COCapabilityLegacyShim *)self rapport];
  [v9 setLocalDeviceUpdatedHandler:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__COCapabilityLegacyShim__rapportStart__block_invoke_22;
  v16[3] = &unk_278E158D8;
  objc_copyWeak(&v17, &location);
  v10 = [(COCapabilityLegacyShim *)self rapport];
  [v10 setDeviceFoundHandler:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__COCapabilityLegacyShim__rapportStart__block_invoke_23;
  v14[3] = &unk_278E158D8;
  objc_copyWeak(&v15, &location);
  v11 = [(COCapabilityLegacyShim *)self rapport];
  [v11 setDeviceLostHandler:v14];

  v12 = [(COCapabilityLegacyShim *)self rapport];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__COCapabilityLegacyShim__rapportStart__block_invoke_24;
  v13[3] = &unk_278E15B38;
  v13[4] = self;
  [v12 activateWithCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __39__COCapabilityLegacyShim__rapportStart__block_invoke(uint64_t a1)
{
  v2 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __39__COCapabilityLegacyShim__rapportStart__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _rapportStop];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _rapportStart];
  }
}

void __39__COCapabilityLegacyShim__rapportStart__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __39__COCapabilityLegacyShim__rapportStart__block_invoke_20_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained _rapportEventShouldUpdateState:v3])
  {
    [v6 _stateUpdate];
  }
}

void __39__COCapabilityLegacyShim__rapportStart__block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __39__COCapabilityLegacyShim__rapportStart__block_invoke_22_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained _rapportEventShouldUpdateState:v3])
  {
    [v6 _stateUpdate];
  }
}

void __39__COCapabilityLegacyShim__rapportStart__block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __39__COCapabilityLegacyShim__rapportStart__block_invoke_23_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained _rapportEventShouldUpdateState:v3])
  {
    [v6 _stateUpdate];
  }
}

void __39__COCapabilityLegacyShim__rapportStart__block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__COCapabilityLegacyShim__rapportStart__block_invoke_24_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _rapportRegister];
    [*(a1 + 32) _stateUpdate];
  }
}

- (void)_rapportStop
{
  v3 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [COCapabilityLegacyShim _rapportStop];
  }

  [(COCapabilityLegacyShim *)self _rapportDeregister];
  v4 = [(COCapabilityLegacyShim *)self rapport];
  [v4 invalidate];
}

- (void)_rapportRegister
{
  objc_initWeak(&location, self);
  v3 = [(COCapabilityLegacyShim *)self rapport];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__COCapabilityLegacyShim__rapportRegister__block_invoke;
  v4[3] = &unk_278E15B88;
  v4[4] = self;
  [v3 registerRequestID:@"com.apple.SoundBoard.Capabilities" options:0 handler:v4];

  objc_destroyWeak(&location);
}

void __42__COCapabilityLegacyShim__rapportRegister__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__COCapabilityLegacyShim__rapportRegister__block_invoke_2;
    block[3] = &unk_278E15B60;
    block[4] = v9;
    v12 = v6;
    v13 = v7;
    dispatch_async(v10, block);
  }
}

- (void)_rapportDeregister
{
  v2 = [(COCapabilityLegacyShim *)self rapport];
  [v2 deregisterRequestID:@"com.apple.SoundBoard.Capabilities"];
}

- (BOOL)_rapportEventShouldUpdateState:(id)a3
{
  v4 = a3;
  v5 = [(COCapabilityLegacyShim *)self rapport];
  v6 = [v5 localDevice];
  v7 = [v4 isEqual:v6];

  v8 = (v7 & 1) != 0 || [(COCapabilityLegacyShim *)self _isStereoPeer:v4];
  return v8;
}

- (void)_rapportProcessRequest:(id)a3 emittingResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(COCapabilityLegacyShim *)self _messageValidateRequest:v6])
  {
    v8 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityLegacyShim _rapportProcessRequest:emittingResponse:];
    }
  }

  v9 = [(COCapabilityLegacyShim *)self _messageCreateResponse];
  (*(v7 + 2))(v7, v9, 0, 0);

  v10 = [(COCapabilityLegacyShim *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__COCapabilityLegacyShim__rapportProcessRequest_emittingResponse___block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(v10, block);
}

uint64_t __66__COCapabilityLegacyShim__rapportProcessRequest_emittingResponse___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCompanionQueryNeeded] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isCompanionQueryUnsuccessful") & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "isCompanionQueryIncompatible"), result))
  {
    v3 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_INFO, "Legacy Shim: needs to query due to request", v4, 2u);
    }

    return [*(a1 + 32) _stateUpdate];
  }

  return result;
}

- (void)_rapportProcessResponse:(id)a3 error:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(COCapabilityLegacyShim *)self setCompanionQueryInProgress:0];
  if (v6 && !v7)
  {
    if ([(COCapabilityLegacyShim *)self _messageValidateResponse:v6])
    {
      v8 = [v6 objectForKey:@"supported"];
      v9 = [(COCapabilityLegacyShim *)self _messageDecodeCapabilities:v8];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        v12 = COCoreLogForCategory(5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v11;
          _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "Legacy Shim: response has Capabilities(%@)", buf, 0xCu);
        }
      }

      else
      {
        v12 = COCoreLogForCategory(5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [COCapabilityLegacyShim _rapportProcessResponse:error:];
        }
      }

      goto LABEL_25;
    }

    v16 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityLegacyShim _rapportProcessResponse:error:];
    }

LABEL_17:

    goto LABEL_18;
  }

  v13 = [v7 domain];
  if (![v13 isEqualToString:*MEMORY[0x277D44250]])
  {

LABEL_15:
    v16 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityLegacyShim _rapportProcessResponse:error:];
    }

    goto LABEL_17;
  }

  v14 = [v7 code];

  if (v14 != -6714)
  {
    goto LABEL_15;
  }

  v15 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [COCapabilityLegacyShim _rapportProcessResponse:error:];
  }

  [(COCapabilityLegacyShim *)self setCompanionQueryIncompatible:1];
  v10 = [MEMORY[0x277CBEB98] set];
LABEL_25:
  if (v10)
  {
    [(COCapabilityLegacyShim *)self setCompanionQueryUnsuccessful:0];
    [(COCapabilityLegacyShim *)self setCompanionCapabilities:v10];
    v27 = [(COCapabilityLegacyShim *)self supportedCapabilities];
    v28 = [v27 mutableCopy];

    v29 = [(COCapabilityLegacyShim *)self companionCapabilities];
    [v28 intersectSet:v29];

    [(COCapabilityLegacyShim *)self setAvailableCapabilities:v28];
    v30 = [(COCapabilityLegacyShim *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__COCapabilityLegacyShim__rapportProcessResponse_error___block_invoke;
    block[3] = &unk_278E15AB8;
    block[4] = self;
    dispatch_async(v30, block);

    goto LABEL_27;
  }

LABEL_18:
  if (![(COCapabilityLegacyShim *)self isCompanionQueryUnsuccessful])
  {
    [(COCapabilityLegacyShim *)self setCompanionQueryUnsuccessful:1];
    v17 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(COCapabilityLegacyShim *)v17 _rapportProcessResponse:v18 error:v19, v20, v21, v22, v23, v24];
    }

    objc_initWeak(buf, self);
    v25 = dispatch_walltime(0, 120000000000);
    v26 = [(COCapabilityLegacyShim *)self queue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__COCapabilityLegacyShim__rapportProcessResponse_error___block_invoke_27;
    v32[3] = &unk_278E15B10;
    objc_copyWeak(&v33, buf);
    dispatch_after(v25, v26, v32);

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

LABEL_27:

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __56__COCapabilityLegacyShim__rapportProcessResponse_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCompanionQueryNeeded];
  if (result)
  {
    v3 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_INFO, "Legacy Shim: refreshing due to pending query", v4, 2u);
    }

    return [*(a1 + 32) _stateUpdate];
  }

  return result;
}

void __56__COCapabilityLegacyShim__rapportProcessResponse_error___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (([WeakRetained isCompanionQueryNeeded] & 1) != 0 || objc_msgSend(v2, "isCompanionQueryUnsuccessful")))
  {
    v3 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_INFO, "Legacy Shim: query still needed after delay", v4, 2u);
    }

    [v2 _stateUpdate];
  }
}

- (id)_messageCreateRequest
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"version";
  v6[0] = &unk_2857C8828;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_messageCreateResponse
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"version";
  v6[1] = @"supported";
  v7[0] = &unk_2857C8828;
  v2 = [(COCapabilityLegacyShim *)self _messageEncodeCapabilities];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_messageValidateRequest:(id)a3
{
  v3 = [a3 objectForKey:@"version"];
  [v3 floatValue];
  v5 = v4;

  v6 = COCoreLogForCategory(5);
  v7 = v6;
  if (v5 == 1.0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [COCapabilityLegacyShim _messageValidateRequest:v7];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(COCapabilityLegacyShim *)v7 _messageValidateRequest:v8, v9, v10, v11, v12, v13, v14];
  }

  return v5 == 1.0;
}

- (BOOL)_messageValidateResponse:(id)a3
{
  v3 = [a3 objectForKey:@"version"];
  [v3 floatValue];
  v5 = v4;

  v6 = COCoreLogForCategory(5);
  v7 = v6;
  if (v5 == 1.0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [COCapabilityLegacyShim _messageValidateResponse:v7];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(COCapabilityLegacyShim *)v7 _messageValidateResponse:v8, v9, v10, v11, v12, v13, v14];
  }

  return v5 == 1.0;
}

- (id)_messageEncodeCapabilities
{
  v2 = [(COCapabilityLegacyShim *)self supportedCapabilities];
  v3 = [v2 copy];

  v11 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityLegacyShim _messageEncodeCapabilities];
    }

    v9 = [MEMORY[0x277CBEA90] data];

    v4 = v9;
  }

  return v4;
}

- (id)_messageDecodeCapabilities:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v6 = [v4 setWithArray:v5];

  v25 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v3 error:&v25];
  v8 = v25;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v18 = COCoreLogForCategory(5);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [COCapabilityLegacyShim _messageDecodeCapabilities:];
            }

            goto LABEL_18;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = v11;
  }

  else
  {
    v18 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityLegacyShim _messageDecodeCapabilities:];
    }

LABEL_18:

    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSSet)availableCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__COCapabilityLegacyShim_availableCapabilities__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityLegacyShim *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __47__COCapabilityLegacyShim_availableCapabilities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setAvailableCapabilities:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__COCapabilityLegacyShim_setAvailableCapabilities___block_invoke;
  v7[3] = &unk_278E15700;
  v5 = v4;
  v8 = v5;
  v9 = self;
  v10 = &v11;
  [(COCapabilityLegacyShim *)self _withLock:v7];
  if (*(v12 + 24) == 1)
  {
    v6 = [v5 copy];
    [(COCapabilityLegacyShim *)self _notifyDelegate:v6];
  }

  _Block_object_dispose(&v11, 8);
}

void __51__COCapabilityLegacyShim_setAvailableCapabilities___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToSet:*(*(a1 + 40) + 16)] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = [*(a1 + 32) copy];
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    v5 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 40) + 16);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "Legacy Shim: available Capabilities updated(%@)", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSSet)companionCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__COCapabilityLegacyShim_companionCapabilities__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityLegacyShim *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __47__COCapabilityLegacyShim_companionCapabilities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setCompanionCapabilities:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__COCapabilityLegacyShim_setCompanionCapabilities___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COCapabilityLegacyShim *)self _withLock:v6];
}

void __51__COCapabilityLegacyShim_setCompanionCapabilities___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToSet:*(*(a1 + 40) + 24)] & 1) == 0)
  {
    v2 = [*(a1 + 32) copy];
    v3 = *(a1 + 40);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    v5 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 40) + 24);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "Legacy Shim: companion Capabilities updated(%@)", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_notifyDelegate:(id)a3
{
  v4 = a3;
  v5 = [(COCapabilityLegacyShim *)self delegate];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__COCapabilityLegacyShim__notifyDelegate___block_invoke;
    block[3] = &unk_278E15728;
    v10 = v5;
    v11 = self;
    v12 = v6;
    v8 = v6;
    dispatch_async(v7, block);
  }
}

- (BOOL)_isStereoPairMember
{
  v2 = [(COCapabilityLegacyShim *)self rapport];
  v3 = [v2 localDevice];
  v4 = [v3 mediaSystemIdentifier];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_isStereoPeer:(id)a3
{
  v4 = a3;
  if ([(COCapabilityLegacyShim *)self _isStereoPairMember])
  {
    v5 = [(COCapabilityLegacyShim *)self rapport];
    v6 = [v5 localDevice];
    v7 = [v6 mediaSystemIdentifier];

    v8 = [v4 mediaSystemIdentifier];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isStereoPeerActive
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(COCapabilityLegacyShim *)self _isStereoPairMember])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [(COCapabilityLegacyShim *)self rapport];
    v4 = [v3 activeDevices];

    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [(COCapabilityLegacyShim *)self rapport];
          v11 = [v10 localDevice];
          v12 = [v9 isEqual:v11];

          if ((v12 & 1) == 0 && [(COCapabilityLegacyShim *)self _isStereoPeer:v9])
          {
            v13 = 1;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (COCapabilityLegacyShimDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__COCapabilityLegacyShim__rapportStart__block_invoke_24_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "Legacy Shim: Rapport activation failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rapportProcessRequest:emittingResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "Legacy Shim: received invalid request %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rapportProcessResponse:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "Legacy Shim: received invalid response(%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rapportProcessResponse:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "Legacy Shim: response(%@) lacks Capabilities", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rapportProcessResponse:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_244378000, v1, OS_LOG_TYPE_ERROR, "Legacy Shim: response missing(%@) or error(%@)", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_rapportProcessResponse:(uint64_t)a3 error:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_244378000, a1, a3, "Legacy Shim: retrying in %lu seconds", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_messageValidateRequest:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_244378000, a1, a3, "Legacy Shim: received request with incompatible version (%f)", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_messageValidateRequest:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 0x3FF0000000000000;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "Legacy Shim: received request (version %f)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_messageValidateResponse:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_244378000, a1, a3, "Legacy Shim: received response with incompatible version (%f)", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_messageValidateResponse:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 0x3FF0000000000000;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "Legacy Shim: received response (version %f)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_messageEncodeCapabilities
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "Legacy Shim: failed to encode: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_messageDecodeCapabilities:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_244378000, v0, v1, "Legacy Shim failed to decode: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end