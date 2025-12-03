@interface PDSharingChannel_BLEProximityVerificationAncillaryService
- (BOOL)isRunning;
- (id)_initWithDelegate:(id)delegate;
- (id)initAdvertiserDelegate:(id)delegate completion:(id)completion;
- (id)initDetectorWithAdvertisement:(id)advertisement remoteDevice:(id)device delegate:(id)delegate completion:(id)completion;
- (void)_invalidateWithShouldNotify:(BOOL)notify;
- (void)dealloc;
- (void)start;
@end

@implementation PDSharingChannel_BLEProximityVerificationAncillaryService

- (id)_initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PDSharingChannel_BLEProximityVerificationAncillaryService;
  v5 = [(PDSharingChannel_BLEProximityVerificationAncillaryService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (id)initAdvertiserDelegate:(id)delegate completion:(id)completion
{
  completionCopy = completion;
  v7 = [(PDSharingChannel_BLEProximityVerificationAncillaryService *)self _initWithDelegate:delegate];
  if (v7)
  {
    v8 = objc_alloc_init(PKProximityAdvertiser);
    v9 = v7[6];
    v7[6] = v8;

    v7[2] = 0;
    v10 = objc_retainBlock(completionCopy);
    v11 = v7[7];
    v7[7] = v10;
  }

  return v7;
}

- (id)initDetectorWithAdvertisement:(id)advertisement remoteDevice:(id)device delegate:(id)delegate completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v11 = [(PDSharingChannel_BLEProximityVerificationAncillaryService *)self _initWithDelegate:delegate];
  if (v11)
  {
    v12 = [PKProximityDetector alloc];
    bluetoothUUID = [deviceCopy bluetoothUUID];
    v14 = [v12 initWithAdvertisingDeviceUUID:bluetoothUUID];
    v15 = v11[4];
    v11[4] = v14;

    v11[2] = 1;
    v16 = objc_retainBlock(completionCopy);
    v17 = v11[5];
    v11[5] = v16;
  }

  return v11;
}

- (void)dealloc
{
  [(PDSharingChannel_BLEProximityVerificationAncillaryService *)self invalidate];
  v3.receiver = self;
  v3.super_class = PDSharingChannel_BLEProximityVerificationAncillaryService;
  [(PDSharingChannel_BLEProximityVerificationAncillaryService *)&v3 dealloc];
}

- (BOOL)isRunning
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_isRunning && !self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)start
{
  objc_initWeak(&location, self);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_isRunning && !self->_invalidated)
  {
    self->_isRunning = 1;
    os_unfair_lock_unlock(&self->_lock);
    mode = self->_mode;
    if (mode)
    {
      if (mode != 1)
      {
        goto LABEL_4;
      }

      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting proximity verification detection", buf, 2u);
      }

      detector = self->_detector;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F7304;
      v12[3] = &unk_100845648;
      v6 = &v13;
      objc_copyWeak(&v13, &location);
      [(PKProximityDetector *)detector setHandler:v12];
      v7 = self->_detector;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F7458;
      v10[3] = &unk_100845620;
      objc_copyWeak(&v11, &location);
      [(PKProximityDetector *)v7 startDetectingWithDuration:v10 completion:30.0];
      objc_destroyWeak(&v11);
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting proximity verification advertising", buf, 2u);
      }

      advertiser = self->_advertiser;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000F71B0;
      v14[3] = &unk_100845620;
      v6 = &v15;
      objc_copyWeak(&v15, &location);
      [(PKProximityAdvertiser *)advertiser startAdvertisingForDuration:v14 completion:30.0];
    }

    objc_destroyWeak(v6);
    goto LABEL_4;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_4:
  objc_destroyWeak(&location);
}

- (void)_invalidateWithShouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    WeakRetained = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    *&self->_invalidated = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak(&self->_delegate, 0);
    v5 = objc_retainBlock(self->_advertiseCompletion);
    advertiseCompletion = self->_advertiseCompletion;
    self->_advertiseCompletion = 0;

    [(PKProximityAdvertiser *)self->_advertiser endAdvertising];
    advertiser = self->_advertiser;
    self->_advertiser = 0;

    v6 = objc_retainBlock(self->_detectionCompletion);
    detectionCompletion = self->_detectionCompletion;
    self->_detectionCompletion = 0;

    [(PKProximityDetector *)self->_detector endDetecting];
    detector = self->_detector;
    self->_detector = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (notifyCopy)
  {
    [WeakRetained ancillaryServiceDidTerminate:self];
  }

  if (v6)
  {
    v6[2](v6, 0);
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

@end