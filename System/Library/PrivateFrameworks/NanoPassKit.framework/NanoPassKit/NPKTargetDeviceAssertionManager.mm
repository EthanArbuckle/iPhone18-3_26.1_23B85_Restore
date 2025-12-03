@interface NPKTargetDeviceAssertionManager
- (NPKTargetDeviceAssertionManager)initWithTransportationService:(id)service;
- (id)_IDSSendOptions;
- (id)_outstandingAssertionStatusUpdaterWithRequest:(id)request assertionType:(unint64_t)type assertionUUID:(id)d;
- (id)_removeOutstandingAssertionStatusUpdaterWithUUID:(id)d;
- (id)_sendAssertionRequest:(id)request;
- (id)acquireAssertionOfType:(unint64_t)type;
- (id)assertionsUUIDsOfType:(unint64_t)type;
- (void)invalidateAssertionWithUUID:(id)d;
@end

@implementation NPKTargetDeviceAssertionManager

- (NPKTargetDeviceAssertionManager)initWithTransportationService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = NPKTargetDeviceAssertionManager;
  v6 = [(NPKTargetDeviceAssertionManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transportationService, service);
    v8 = dispatch_queue_create("com.apple.NanoPassKit.TargetDevice.AssertionManager", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingAssertionStatusUpdaters = v7->_outstandingAssertionStatusUpdaters;
    v7->_outstandingAssertionStatusUpdaters = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    assertTypesUUIDsMap = v7->_assertTypesUUIDsMap;
    v7->_assertTypesUUIDsMap = dictionary2;
  }

  return v7;
}

- (id)acquireAssertionOfType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      typeCopy = type;
      v20 = 2112;
      v21 = uUID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Remote Assertion - Request acquire assertion of type:%lu with UUID:%@", buf, 0x16u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKTargetDeviceAssertionManager_acquireAssertionOfType___block_invoke;
  block[3] = &unk_279945F18;
  typeCopy2 = type;
  v10 = uUID;
  v15 = v10;
  selfCopy = self;
  dispatch_async(internalQueue, block);
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void __58__NPKTargetDeviceAssertionManager_acquireAssertionOfType___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = protobufAssertionTypeWithPKAssertionType(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v4 = objc_alloc_init(NPKProtoAssertionRequest);
    [(NPKProtoAssertionRequest *)v4 setAssertionType:v3];
    v5 = [*(a1 + 32) UUIDString];
    [(NPKProtoAssertionRequest *)v4 setRequestUUIDString:v5];

    [(NPKProtoAssertionRequest *)v4 setPending:1];
    v6 = [*(a1 + 40) _sendAssertionRequest:v4];
    if (v6)
    {
      v7 = [*(a1 + 40) _outstandingAssertionStatusUpdaterWithRequest:v4 assertionType:*(a1 + 48) assertionUUID:*(a1 + 32)];
      [*(a1 + 40) _addOutstandingAssertionStatusUpdater:v7 withAssertType:v3];
    }

    else
    {
      v10 = pk_Payment_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (v3 == 1)
          {
            v13 = @"Provisioning";
          }

          else if (v3 == 2)
          {
            v13 = @"ProvisioningRequiringUpgradedPasscode";
          }

          else
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v3];
          }

          *buf = 138412290;
          v16 = v13;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: Remote Assertion - Failed to send Assertion request type:%@", buf, 0xCu);
        }
      }
    }

LABEL_17:
    goto LABEL_18;
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(&v4->super.super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = @"Unknown";
      _os_log_impl(&dword_25B300000, &v4->super.super.super, OS_LOG_TYPE_ERROR, "Error: Remote Assertion - Unknown assertion request type:%@", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAssertionWithUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Remote Assertion - Request to invalidate assertion with UUID:%@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NPKTargetDeviceAssertionManager_invalidateAssertionWithUUID___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = dCopy;
  v9 = dCopy;
  dispatch_async(internalQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __63__NPKTargetDeviceAssertionManager_invalidateAssertionWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeOutstandingAssertionStatusUpdaterWithUUID:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = objc_alloc_init(NPKProtoAssertionRequest);
    -[NPKProtoAssertionRequest setAssertionType:](v3, "setAssertionType:", [v7 assertType]);
    v4 = [v7 assertionUUID];
    v5 = [v4 UUIDString];
    [(NPKProtoAssertionRequest *)v3 setRequestUUIDString:v5];

    [(NPKProtoAssertionRequest *)v3 setPending:0];
    v6 = [*(a1 + 32) _sendAssertionRequest:v3];

    v2 = v7;
  }
}

- (id)assertionsUUIDsOfType:(unint64_t)type
{
  v4 = protobufAssertionTypeWithPKAssertionType(type);
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_279947430[v4];
  }

  assertTypesUUIDsMap = [(NPKTargetDeviceAssertionManager *)self assertTypesUUIDsMap];
  v7 = [assertTypesUUIDsMap objectForKeyedSubscript:v5];

  if (v7)
  {
    array = [v7 copy];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v9 = array;

  return v9;
}

- (id)_sendAssertionRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assertionType = [requestCopy assertionType];
      if (assertionType >= 3)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", assertionType];
      }

      else
      {
        v9 = off_279947430[assertionType];
      }

      requestUUIDString = [requestCopy requestUUIDString];
      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = requestUUIDString;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Remote Assertion - Sending assertion request of type:%@ UUID:%@", buf, 0x16u);
    }
  }

  v11 = objc_alloc(MEMORY[0x277D189F0]);
  data = [requestCopy data];
  v13 = [v11 initWithProtobufData:data type:59 isResponse:0];

  transportationService = [(NPKTargetDeviceAssertionManager *)self transportationService];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__NPKTargetDeviceAssertionManager__sendAssertionRequest___block_invoke;
  v20[3] = &unk_279945058;
  v21 = requestCopy;
  v15 = requestCopy;
  _IDSSendOptions = [(NPKTargetDeviceAssertionManager *)self _IDSSendOptions];
  v17 = NPKProtoSendWithOptions(transportationService, v13, 200, 0, 0, v20, _IDSSendOptions);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __57__NPKTargetDeviceAssertionManager__sendAssertionRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) assertionType];
      if (v5 >= 3)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
      }

      else
      {
        v6 = off_279947430[v5];
      }

      v7 = [*(a1 + 32) requestUUIDString];
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Remote Assertion - Failed to sendAssertionrequest of type:%@ UUID:%@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_IDSSendOptions
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D185D0];
  v7[0] = *MEMORY[0x277D185A0];
  v7[1] = v2;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D18650];
  v7[2] = *MEMORY[0x277D18630];
  v7[3] = v3;
  v8[2] = @"AssertRequest";
  v8[3] = &unk_286CE77F8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_outstandingAssertionStatusUpdaterWithRequest:(id)request assertionType:(unint64_t)type assertionUUID:(id)d
{
  v8 = MEMORY[0x277D189F0];
  dCopy = d;
  requestCopy = request;
  v11 = [v8 alloc];
  data = [requestCopy data];

  v13 = [v11 initWithProtobufData:data type:59 isResponse:0];
  _IDSSendOptions = [(NPKTargetDeviceAssertionManager *)self _IDSSendOptions];
  if (type == 6)
  {
    v15 = -1;
  }

  else
  {
    v15 = 12;
  }

  v16 = [NPKOutstandingAssertionStatusUpdater alloc];
  transportationService = [(NPKTargetDeviceAssertionManager *)self transportationService];
  v18 = [(NPKIDSHeartbeat *)v16 initWithPendingStatusProtobuf:v13 service:transportationService priority:200 maxUpdates:v15 responseIdentifier:0 sendOptions:_IDSSendOptions queue:30.0 updateInterval:self->_internalQueue];

  [(NPKOutstandingAssertionStatusUpdater *)v18 setAssertType:protobufAssertionTypeWithPKAssertionType(type)];
  [(NPKOutstandingAssertionStatusUpdater *)v18 setAssertionUUID:dCopy];

  return v18;
}

- (id)_removeOutstandingAssertionStatusUpdaterWithUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_internalQueue);
  outstandingAssertionStatusUpdaters = [(NPKTargetDeviceAssertionManager *)self outstandingAssertionStatusUpdaters];
  v6 = [outstandingAssertionStatusUpdaters objectForKeyedSubscript:dCopy];

  if (v6)
  {
    [v6 invalidate];
    outstandingAssertionStatusUpdaters2 = [(NPKTargetDeviceAssertionManager *)self outstandingAssertionStatusUpdaters];
    [outstandingAssertionStatusUpdaters2 removeObjectForKey:dCopy];

    assertType = [v6 assertType];
    if (assertType >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", assertType];
    }

    else
    {
      v9 = off_279947430[assertType];
    }

    assertTypesUUIDsMap = [(NPKTargetDeviceAssertionManager *)self assertTypesUUIDsMap];
    v11 = [assertTypesUUIDsMap objectForKeyedSubscript:v9];
    [v11 removeObject:dCopy];
  }

  return v6;
}

@end