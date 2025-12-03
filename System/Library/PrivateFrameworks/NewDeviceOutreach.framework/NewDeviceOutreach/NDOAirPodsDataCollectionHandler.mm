@interface NDOAirPodsDataCollectionHandler
- (NDOAirPodsDataCollectionHandler)init;
- (void)handleBluetoothNotificationWithCompletion:(id)completion;
- (void)processBluetoothNotificationWithCompletion:(id)completion;
- (void)reportAirPodsDataWithCompletion:(id)completion;
@end

@implementation NDOAirPodsDataCollectionHandler

- (NDOAirPodsDataCollectionHandler)init
{
  v6.receiver = self;
  v6.super_class = NDOAirPodsDataCollectionHandler;
  v2 = [(NDOAirPodsDataCollectionHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NDOAirPodsServiceProvider);
    [(NDOAirPodsDataCollectionHandler *)v2 setAirPodsServiceProvider:v3];

    v4 = objc_alloc_init(NDOBluetoothDeviceManager);
    [(NDOAirPodsDataCollectionHandler *)v2 setBluetoothDeviceManager:v4];

    v2->_threadLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)reportAirPodsDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100072564(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  bluetoothDeviceManager = [(NDOAirPodsDataCollectionHandler *)self bluetoothDeviceManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000058C8;
  v15[3] = &unk_10009A5A8;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [bluetoothDeviceManager getBluetoothAudioDevicesWithCompletionHandler:v15];
}

- (void)processBluetoothNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_threadLock);
  if ([(NDOAirPodsDataCollectionHandler *)self isExecuting])
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[bluetooth_accessory] Already executing with a pairing event", buf, 2u);
    }

    os_unfair_lock_unlock(&self->_threadLock);
    completionCopy[2](completionCopy);
  }

  else
  {
    [(NDOAirPodsDataCollectionHandler *)self setIsExecuting:1];
    os_unfair_lock_unlock(&self->_threadLock);
    objc_initWeak(buf, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100005F5C;
    v6[3] = &unk_10009A5D0;
    v6[4] = self;
    objc_copyWeak(&v8, buf);
    v7 = completionCopy;
    [(NDOAirPodsDataCollectionHandler *)self reportAirPodsDataWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)handleBluetoothNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006080;
  v7[3] = &unk_10009A5F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

@end