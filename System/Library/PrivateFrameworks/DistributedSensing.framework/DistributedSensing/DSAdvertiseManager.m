@interface DSAdvertiseManager
- (BOOL)_getAdvertisementFields;
- (void)_setDSActionFieldsInAdvertiser:(id)a3;
- (void)_setDSInfoFieldsInAdvertiser:(id)a3;
- (void)startAdvertising;
- (void)stopAdvertising;
@end

@implementation DSAdvertiseManager

- (void)startAdvertising
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (onceTokenDSAdvertiseManager != -1)
  {
    [DSAdvertiseManager startAdvertising];
  }

  v3 = logObjDSAdvertiseManager;
  if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Start Advertising", buf, 2u);
  }

  v4 = self->_bleAdvertiser;
  if (v4)
  {
    goto LABEL_12;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBDFF0]);
  [(CBAdvertiser *)v4 setDispatchQueue:self->_dispatchQueue];
  if ([(DSAdvertiseManager *)self _getAdvertisementFields])
  {
    [(DSAdvertiseManager *)self _setDSInfoFieldsInAdvertiser:v4];
    [(DSAdvertiseManager *)self _setDSActionFieldsInAdvertiser:v4];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __38__DSAdvertiseManager_startAdvertising__block_invoke;
    v12 = &unk_278F85A50;
    v5 = v4;
    v13 = v5;
    v14 = self;
    [(CBAdvertiser *)v5 activateWithCompletion:&v9];
    objc_storeStrong(&self->_bleAdvertiser, v4);
    if (onceTokenDSAdvertiseManager != -1)
    {
      [DSAdvertiseManager startAdvertising];
    }

    v6 = logObjDSAdvertiseManager;
    if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "Starting Advertiser", buf, 2u);
    }

    v4 = v5;
LABEL_12:
    if ([(DSAdvertiseManager *)self _getAdvertisementFields:v9])
    {
      [(DSAdvertiseManager *)self _setDSInfoFieldsInAdvertiser:v4];
      [(DSAdvertiseManager *)self _setDSActionFieldsInAdvertiser:v4];
    }

    else
    {
      if (onceTokenDSAdvertiseManager != -1)
      {
        [DSAdvertiseManager startAdvertising];
      }

      v7 = logObjDSAdvertiseManager;
      if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "Advertisement fields not set", buf, 2u);
      }

      [(DSAdvertiseManager *)self stopAdvertising];
    }

    goto LABEL_19;
  }

  if (onceTokenDSAdvertiseManager != -1)
  {
    [DSAdvertiseManager startAdvertising];
  }

  v8 = logObjDSAdvertiseManager;
  if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "Advertisement fields not set", buf, 2u);
  }

LABEL_19:
}

void __38__DSAdvertiseManager_startAdvertising__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      if (onceTokenDSAdvertiseManager != -1)
      {
        [DSAdvertiseManager startAdvertising];
      }

      v5 = logObjDSAdvertiseManager;
      if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_ERROR, "Failed to activate CBAdvertiser", buf, 2u);
      }

      [*(a1 + 32) invalidate];
    }

    else
    {
      if (onceTokenDSAdvertiseManager != -1)
      {
        [DSAdvertiseManager startAdvertising];
      }

      v6 = logObjDSAdvertiseManager;
      if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "CBAdvertiser Activated", v7, 2u);
      }
    }
  }
}

- (BOOL)_getAdvertisementFields
{
  v3 = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 coordinationStatus];
    v6 = 0x100802040100uLL >> (8 * v5);
    if (v5 >= 6)
    {
      LOBYTE(v6) = 0;
    }

    self->_cbDSActionFlags = v6;
    self->_cbTieBreaker = [v4 tiebreaker];
    v7 = [v4 vehicleState];
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 == 1;
    }

    self->_cbVehicleState = v8;
    v9 = [v4 vehicleConfidence];
    if (v9 == 15)
    {
      v10 = 15;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 11)
    {
      v10 = 11;
    }

    if (v9 == 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = 0;
    }

    if (v9 == 4)
    {
      v11 = 4;
    }

    if (v9 <= 10)
    {
      v10 = v11;
    }

    self->_cbVehicleConfidence = v10;
  }

  return v4 != 0;
}

- (void)_setDSActionFieldsInAdvertiser:(id)a3
{
  if ((self->_dsAdvertiseFlags & 4) != 0)
  {
    [a3 setDsActionFlags:self->_cbDSActionFlags];
    cbTieBreaker = self->_cbTieBreaker;
    v4 = 54;
  }

  else
  {
    [a3 setDsActionFlags:0];
    cbTieBreaker = 0;
    v4 = 0;
  }

  [a3 setDsActionTieBreaker:cbTieBreaker];
  [a3 setNearbyActionType:v4];
}

- (void)_setDSInfoFieldsInAdvertiser:(id)a3
{
  if ((self->_dsAdvertiseFlags & 2) != 0)
  {
    [a3 setDsInfoVehicleState:self->_cbVehicleState];
    cbVehicleConfidence = self->_cbVehicleConfidence;
  }

  else
  {
    [a3 setDsInfoVehicleState:0];
    cbVehicleConfidence = 0;
  }

  [a3 setDsInfoVehicleConfidence:cbVehicleConfidence];
}

- (void)stopAdvertising
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (onceTokenDSAdvertiseManager != -1)
  {
    [DSAdvertiseManager startAdvertising];
  }

  v3 = logObjDSAdvertiseManager;
  if (os_log_type_enabled(logObjDSAdvertiseManager, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Stop Advertising", v5, 2u);
  }

  [(CBAdvertiser *)self->_bleAdvertiser invalidate];
  bleAdvertiser = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;
}

@end