@interface DDRTaskResetPairingDevices
- (double)estimatedTimeOfCompletion;
- (void)configure;
- (void)run;
@end

@implementation DDRTaskResetPairingDevices

- (void)configure
{
  v3 = objc_alloc_init(CUPairingManager);
  pairingManager = self->_pairingManager;
  self->_pairingManager = v3;

  objc_initWeak(&location, self);
  v5 = dispatch_semaphore_create(0);
  v6 = self->_pairingManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000060D0;
  v11[3] = &unk_100014778;
  objc_copyWeak(&v13, &location);
  v7 = v5;
  v12 = v7;
  [(CUPairingManager *)v6 getPairedPeersWithOptions:4 completion:v11];
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = [[NSError alloc] initWithDomain:@"DeviceDataResetError" code:0 userInfo:0];
    fetchError = self->_fetchError;
    self->_fetchError = v9;
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)run
{
  if (self->_fetchError || ![(NSArray *)self->_pairedDevice count])
  {
    v3 = DDRLogForCategory(0);
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      fetchError = self->_fetchError;
      v5 = [(NSArray *)self->_pairedDevice count];
      *buf = 138412546;
      v24 = fetchError;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_DEFAULT, "Fetch error: %@, pairedDeviceCount = %lu", buf, 0x16u);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = self->_pairedDevice;
    v6 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = dispatch_semaphore_create(0);
          pairingManager = self->_pairingManager;
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100006418;
          v16[3] = &unk_100014710;
          v16[4] = v10;
          v13 = v11;
          v17 = v13;
          [(CUPairingManager *)pairingManager removePairedPeer:v10 options:4 completion:v16];
          v14 = dispatch_time(0, 5000000000);
          if (dispatch_semaphore_wait(v13, v14))
          {
            v15 = DDRLogForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v10;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed removing pairedpeer %@ due to timeout", buf, 0xCu);
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }
}

- (double)estimatedTimeOfCompletion
{
  v2 = [(NSArray *)self->_pairedDevice count];
  result = 1.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

@end