@interface PKProximityAdvertiser
- (PKProximityAdvertiser)init;
- (id)_createAdvertisingActivationBlockWithName:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)_queue_endAdvertising;
- (void)dealloc;
- (void)endAdvertising;
- (void)startAdvertisingForDuration:(double)a3 completion:(id)a4;
@end

@implementation PKProximityAdvertiser

- (PKProximityAdvertiser)init
{
  v8.receiver = self;
  v8.super_class = PKProximityAdvertiser;
  v2 = [(PKProximityAdvertiser *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PKProximityAdvertiserTimerQueue", 0);
    timerQueue = v2->_timerQueue;
    v2->_timerQueue = v3;

    v5 = dispatch_queue_create("PKProximityAdvertiserQueue", 0);
    advertiserQueue = v2->_advertiserQueue;
    v2->_advertiserQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(PKProximityAdvertiser *)self endAdvertising];
  v3.receiver = self;
  v3.super_class = PKProximityAdvertiser;
  [(PKProximityAdvertiser *)&v3 dealloc];
}

- (void)startAdvertisingForDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  if (self->_isAdvertising)
  {
    [(PKProximityAdvertiser *)self endAdvertising];
  }

  advertiserQueue = self->_advertiserQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKProximityAdvertiser_startAdvertisingForDuration_completion___block_invoke;
  block[3] = &unk_1E79C4EA0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(advertiserQueue, block);
}

void __64__PKProximityAdvertiser_startAdvertisingForDuration_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 1;
  v2 = objc_alloc_init(_MergedGlobals_171());
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) setAdvertiseRate:60];
  v5 = *(*(a1 + 32) + 8);
  v6 = off_1ED6D10A0();
  [v5 setIdentifier:v6];

  [*(*(a1 + 32) + 8) setOverrideScreenOff:1];
  v7 = *(a1 + 32);
  v8 = v7[1];
  v9 = [v7 _createAdvertisingActivationBlockWithName:@"NearbyInfo" duration:*(a1 + 40) completion:*(a1 + 48)];
  [v8 activateWithCompletion:v9];
}

- (id)_createAdvertisingActivationBlockWithName:(id)a3 duration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke;
  v18 = &unk_1E79D1FA8;
  v19 = self;
  v20 = v8;
  v22 = a4;
  v21 = v9;
  v10 = v9;
  v11 = v8;
  v12 = _Block_copy(&v15);
  v13 = [v12 copy];

  return v13;
}

void __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke_2;
  block[3] = &unk_1E79D1F80;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 56);
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_sync(v4, block);
}

void __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(9uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [v2 localizedDescription];
      *buf = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Error activating %@ sharing broadcast: %@", buf, 0x16u);
    }

    [*(a1 + 48) _queue_endAdvertising];
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Activated %@ sharing broadcast", buf, 0xCu);
    }

    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 48) + 24));
    v9 = *(a1 + 48);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    v11 = *(*(a1 + 48) + 16);
    if (v11)
    {
      v12 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
      objc_initWeak(buf, *(a1 + 48));
      v13 = *(*(a1 + 48) + 16);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke_18;
      handler[3] = &unk_1E79C9D80;
      objc_copyWeak(&v20, buf);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_resume(*(*(a1 + 48) + 16));
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke_2_19;
    block[3] = &unk_1E79C44A0;
    v18 = v14;
    v17 = *(a1 + 32);
    dispatch_async(v15, block);
  }
}

void __87__PKProximityAdvertiser__createAdvertisingActivationBlockWithName_duration_completion___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained endAdvertising];
    WeakRetained = v2;
  }
}

- (void)_queue_endAdvertising
{
  dispatch_assert_queue_V2(self->_advertiserQueue);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  self->_isAdvertising = 0;
  [(SFService *)self->_nearbyInfoSharingService invalidate];
  v5 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Invalidated sharing broadcast", v6, 2u);
  }
}

- (void)endAdvertising
{
  advertiserQueue = self->_advertiserQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PKProximityAdvertiser_endAdvertising__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_sync(advertiserQueue, block);
}

@end