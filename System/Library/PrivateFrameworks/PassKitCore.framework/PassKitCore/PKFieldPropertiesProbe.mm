@interface PKFieldPropertiesProbe
+ (id)createProbeForProperties:(id)a3 queue:(id)a4;
- (id)_initWithProperties:(id)a3 queue:(id)a4;
- (void)_acceptSession:(id)a3;
- (void)_resolve;
- (void)beginWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)loyaltyAndPaymentSession:(id)a3 didEndTransaction:(id)a4;
- (void)loyaltyAndPaymentSession:(id)a3 didPerformValueAddedServiceTransactions:(id)a4;
- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)a3;
- (void)session:(id)a3 didEndTransaction:(id)a4;
- (void)sessionDidEndUnexpectedly:(id)a3;
@end

@implementation PKFieldPropertiesProbe

+ (id)createProbeForProperties:(id)a3 queue:(id)a4
{
  v5 = a3;
  result = a4;
  if (v5 && (v7 = result) != 0)
  {
    v8 = [[PKFieldPropertiesProbe alloc] _initWithProperties:v5 queue:result];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)_initWithProperties:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKFieldPropertiesProbe;
  v9 = [(PKFieldPropertiesProbe *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_properties, a3);
    v10->_type = [(PKFieldProperties *)v10->_properties accessTerminalSubtype]== 2;
  }

  return v10;
}

- (void)dealloc
{
  [(PKFieldPropertiesProbe *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKFieldPropertiesProbe;
  [(PKFieldPropertiesProbe *)&v3 dealloc];
}

- (void)beginWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || (v5 = v4, os_unfair_lock_lock(&self->_lock), self->_started))
  {
    __break(1u);
  }

  self->_started = 1;
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_20;
  }

  v6 = _Block_copy(v5);
  completion = self->_completion;
  self->_completion = v6;

  os_unfair_lock_unlock(&self->_lock);
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p): starting lookup session...", buf, 0xCu);
  }

  PKTimeProfileBegin(v8, @"field_detector_lookup");
  PKTimeProfileBegin(v8, @"field_detector_lookup_start");

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKFieldPropertiesProbe_beginWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79DE228;
  objc_copyWeak(&v23, buf);
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v11 = v10;
  type = self->_type;
  if (type)
  {
    if (type != 1)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v13 = [v10 startDigitalCarKeySession:v9];
  }

  else
  {
    v13 = [v10 startLoyaltyAndContactlessPaymentSession:v9];
  }

  v14 = v13;
LABEL_13:
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      [v14 endSession];
    }
  }

  else
  {
    if (!self->_session)
    {
      objc_storeStrong(&self->_startHandle, v14);
    }

    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timeout = self->_timeout;
    self->_timeout = v15;

    v17 = self->_timeout;
    v18 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v19 = self->_timeout;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46__PKFieldPropertiesProbe_beginWithCompletion___block_invoke_177;
    handler[3] = &unk_1E79C9D80;
    objc_copyWeak(&v21, buf);
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(self->_timeout);
    objc_destroyWeak(&v21);
    os_unfair_lock_unlock(&self->_lock);
    v14 = 0;
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
LABEL_20:
}

void __46__PKFieldPropertiesProbe_beginWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PKFieldPropertiesProbe_beginWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C9668;
    v11 = v5;
    v12 = v6;
    v13 = v8;
    v14 = *(a1 + 32);
    dispatch_async(v9, v10);
  }

  else
  {
    [v5 endSession];
  }
}

uint64_t __46__PKFieldPropertiesProbe_beginWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v6 = *(a1 + 48);

    return [v6 _acceptSession:?];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 56);
      v4 = *(a1 + 40);
      v7 = 134218242;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p): failed to start lookup session. Error: %@.", &v7, 0x16u);
    }

    [*(a1 + 32) endSession];
    return [*(a1 + 48) _resolve];
  }
}

void __46__PKFieldPropertiesProbe_beginWithCompletion___block_invoke_177(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resolve];
    WeakRetained = v2;
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v9 = 0;
    v3 = 0;
  }

  else
  {
    self->_invalidated = 1;
    completion = self->_completion;
    self->_completion = 0;

    v9 = self->_startHandle;
    startHandle = self->_startHandle;
    self->_startHandle = 0;

    v3 = self->_session;
    session = self->_session;
    self->_session = 0;

    timeout = self->_timeout;
    if (timeout)
    {
      dispatch_source_cancel(timeout);
      v8 = self->_timeout;
      self->_timeout = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  [(NFSession *)v9 endSession];
  if (v3)
  {
    if (self->_type <= 1uLL)
    {
      [(NFSession *)v3 setDelegate:0];
    }

    [(NFSession *)v3 endSession];
  }
}

- (void)_resolve
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_resolved)
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = 0;
    v3 = 0;
  }

  else
  {
    self->_resolved = 1;
    invalidated = self->_invalidated;
    if (invalidated)
    {
      v6 = 0;
    }

    else
    {
      v6 = _Block_copy(self->_completion);
    }

    completion = self->_completion;
    self->_completion = 0;

    os_unfair_lock_unlock(&self->_lock);
    v3 = 0;
    if (!invalidated && v6)
    {
      v3 = self;
      (v6)[2](v6, v3, v3->_properties);
    }
  }

  [(PKFieldPropertiesProbe *)self invalidate];
}

- (void)_acceptSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = self;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p): started lookup session %p.", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  startHandle = self->_startHandle;
  self->_startHandle = 0;

  if (!self->_invalidated)
  {
    objc_storeStrong(&self->_session, a3);
    os_unfair_lock_unlock(&self->_lock);
    type = self->_type;
    if (type)
    {
      if (type == 1)
      {
        [v6 setDelegate:self];
        if (PKFieldPropertiesStartSecondaryLookup(self->_properties, v6, 0))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      [v6 setDelegate:self];
      if (PKFieldPropertiesStartSecondaryLookup(self->_properties, v6, 0))
      {
LABEL_9:
        v11 = @"eventType";
        v12 = @"cardEmulationStarted";
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        [PKAnalyticsReporter subject:@"fieldDetect" sendEvent:v10];

        goto LABEL_12;
      }
    }

    [(PKFieldPropertiesProbe *)self _resolve];
    goto LABEL_12;
  }

  os_unfair_lock_unlock(&self->_lock);
  [v6 endSession];
LABEL_12:
}

- (void)loyaltyAndPaymentSession:(id)a3 didPerformValueAddedServiceTransactions:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PKFieldPropertiesProbe_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __91__PKFieldPropertiesProbe_loyaltyAndPaymentSession_didPerformValueAddedServiceTransactions___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (*(v2 + 74) & 1) != 0 || (*(v2 + 73))
  {

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    PKFieldPropertiesResolveSecondaryLookup(*(v2 + 24), *(a1 + 40));
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v7 = 134218240;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p/%p): lookup session performed VAS transaction.", &v7, 0x16u);
    }

    v6 = PKTimeProfileEnd(v3, @"field_detect_lookup", @"Field Detector Lookup Session");
    [*(a1 + 32) _resolve];
  }
}

- (void)loyaltyAndPaymentSessionDidEndUnexpectedly:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKFieldPropertiesProbe_loyaltyAndPaymentSessionDidEndUnexpectedly___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __69__PKFieldPropertiesProbe_loyaltyAndPaymentSessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p/%p): lookup session terminated.", &v6, 0x16u);
  }

  return [*(a1 + 32) _resolve];
}

- (void)loyaltyAndPaymentSession:(id)a3 didEndTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKFieldPropertiesProbe_loyaltyAndPaymentSession_didEndTransaction___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __69__PKFieldPropertiesProbe_loyaltyAndPaymentSession_didEndTransaction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (*(v2 + 74) & 1) != 0 || (*(v2 + 73))
  {

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    PKFieldPropertiesResolveSecondaryLookup(*(v2 + 24), *(a1 + 40));
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v7 = 134218240;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p/%p): lookup session performed transaction.", &v7, 0x16u);
    }

    v6 = PKTimeProfileEnd(v3, @"field_detect_lookup", @"Field Detector Lookup Session");
    [*(a1 + 32) _resolve];
  }
}

- (void)sessionDidEndUnexpectedly:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKFieldPropertiesProbe_sessionDidEndUnexpectedly___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __52__PKFieldPropertiesProbe_sessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p/%p): lookup session terminated.", &v6, 0x16u);
  }

  return [*(a1 + 32) _resolve];
}

- (void)session:(id)a3 didEndTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKFieldPropertiesProbe_session_didEndTransaction___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __52__PKFieldPropertiesProbe_session_didEndTransaction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (*(v2 + 74) & 1) != 0 || (*(v2 + 73))
  {

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    PKFieldPropertiesResolveSecondaryLookup(*(v2 + 24), *(a1 + 40));
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v7 = 134218240;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKFieldPropertiesProbe (%p/%p): lookup session performed transaction.", &v7, 0x16u);
    }

    v6 = PKTimeProfileEnd(v3, @"field_detect_lookup", @"Field Detector Lookup Session");
    [*(a1 + 32) _resolve];
  }
}

@end