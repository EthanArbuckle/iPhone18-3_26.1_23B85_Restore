@interface CHIDSPeerDevice
- (BOOL)_sendBootstrapDataStoreWithService:(id)service;
- (BOOL)downgradeDatabaseAtLocation:(id)location;
- (CHIDSPeerDevice)initWithDevice:(id)device withPairedSyncCoordinator:(id)coordinator withConfiguration:(int)configuration;
- (int64_t)getSchemaVersionToDowngradeTo;
- (void)flushTransactionsWithService:(id)service;
- (void)removeTemporaryBootstrapDataStore;
- (void)sendBootstrapDataStoreWithService:(id)service;
- (void)sendMessage:(id)message withService:(id)service;
- (void)sendTransactions:(id)transactions withService:(id)service;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
@end

@implementation CHIDSPeerDevice

- (CHIDSPeerDevice)initWithDevice:(id)device withPairedSyncCoordinator:(id)coordinator withConfiguration:(int)configuration
{
  deviceCopy = device;
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = CHIDSPeerDevice;
  v11 = [(CHIDSPeerDevice *)&v18 initWithName:"IDSPeerDevice"];
  if (v11)
  {
    if ([deviceCopy isNearby])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v11->_status = v12;
    objc_storeStrong(&v11->_device, device);
    v13 = [TransactionLog alloc];
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    v15 = [(TransactionLog *)v13 initWithFileName:uniqueIDOverride withDescription:"TransactionLog-IDS"];
    txLog = v11->_txLog;
    v11->_txLog = v15;

    v11->_configuration = configuration;
    objc_storeStrong(&v11->_coordinator, coordinator);
  }

  return v11;
}

- (void)sendTransactions:(id)transactions withService:(id)service
{
  transactionsCopy = transactions;
  serviceCopy = service;
  if ([(CHIDSPeerDevice *)self status]!= 2)
  {
    logHandle = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      device = [(CHIDSPeerDevice *)self device];
      uniqueIDOverride = [device uniqueIDOverride];
      v22 = 138543618;
      v23 = uniqueIDOverride;
      v24 = 2082;
      v25 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
      v13 = "Queueing transactions for device %{public}@ until status(%{public}s) is available";
      v14 = logHandle;
      v15 = 22;
      goto LABEL_7;
    }

LABEL_8:

    txLog = [(CHIDSPeerDevice *)self txLog];
    [txLog append:transactionsCopy];
    goto LABEL_9;
  }

  pendingTransactions = [(CHIDSPeerDevice *)self pendingTransactions];

  logHandle = [(CHIDSPeerDevice *)self logHandle];
  v10 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (pendingTransactions)
  {
    if (v10)
    {
      device = [(CHIDSPeerDevice *)self device];
      uniqueIDOverride = [device uniqueIDOverride];
      v22 = 138543362;
      v23 = uniqueIDOverride;
      v13 = "Queueing transactions for device %{public}@ until previous send has completed";
      v14 = logHandle;
      v15 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v22, v15);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    device2 = [(CHIDSPeerDevice *)self device];
    uniqueIDOverride2 = [device2 uniqueIDOverride];
    v22 = 138543618;
    v23 = uniqueIDOverride2;
    v24 = 2082;
    v25 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Device %{public}@ status is %{public}s", &v22, 0x16u);
  }

  [(CHIDSPeerDevice *)self setPendingTransactions:transactionsCopy];
  txLog = sub_10001CE68(transactionsCopy);
  v19 = objc_opt_new();
  data = [txLog data];
  [v19 setObject:data forKey:@"ProtobufTransactions"];

  v21 = [NSNumber numberWithInt:[(CHIDSPeerDevice *)self configuration]];
  [v19 setObject:v21 forKey:@"Configuration"];

  [(CHIDSPeerDevice *)self sendMessage:v19 withService:serviceCopy];
LABEL_9:
}

- (void)sendMessage:(id)message withService:(id)service
{
  serviceCopy = service;
  messageCopy = message;
  device = [(CHIDSPeerDevice *)self device];
  v9 = IDSCopyIDForDevice();
  v10 = [NSSet setWithObject:v9];
  v20 = 0;
  v21 = 0;
  v11 = [serviceCopy sendMessage:messageCopy fromAccount:0 toDestinations:v10 priority:300 options:0 identifier:&v21 error:&v20];

  v12 = v21;
  v13 = v20;

  if (v11)
  {
    ct_green_tea_logger_create_static();
    v14 = getCTGreenTeaOsLogHandle();
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Transmit over IDS", buf, 2u);
    }

    logHandle = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      device2 = [(CHIDSPeerDevice *)self device];
      uniqueIDOverride = [device2 uniqueIDOverride];
      *buf = 138543618;
      v23 = uniqueIDOverride;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Sent message to %{public}@ with identifier %{public}@", buf, 0x16u);
    }
  }

  else
  {
    logHandle = [(CHIDSPeerDevice *)self logHandle];
    v19 = os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v19)
      {
        sub_10003377C(self);
      }
    }

    else if (v19)
    {
      sub_100033830(self);
    }
  }

  [(CHIDSPeerDevice *)self setSendIdentifier:v12];
}

- (void)flushTransactionsWithService:(id)service
{
  serviceCopy = service;
  if ([(CHIDSPeerDevice *)self status]!= 2)
  {
    logHandle = [(CHIDSPeerDevice *)self logHandle];
    if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    device = [(CHIDSPeerDevice *)self device];
    uniqueIDOverride = [device uniqueIDOverride];
    v19 = 138543618;
    v20 = uniqueIDOverride;
    v21 = 2082;
    v22 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Delaying flush for device %{public}@ until we are available (%{public}s)", &v19, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  pendingTransactions = [(CHIDSPeerDevice *)self pendingTransactions];

  if (!pendingTransactions)
  {
    txLog = [(CHIDSPeerDevice *)self txLog];
    logHandle = [txLog getTransactions];

    v12 = [logHandle count];
    device = [(CHIDSPeerDevice *)self logHandle];
    v13 = os_log_type_enabled(device, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v13)
      {
        v14 = [logHandle count];
        device2 = [(CHIDSPeerDevice *)self device];
        uniqueIDOverride2 = [device2 uniqueIDOverride];
        v19 = 134218242;
        v20 = v14;
        v21 = 2114;
        v22 = uniqueIDOverride2;
        _os_log_impl(&_mh_execute_header, device, OS_LOG_TYPE_DEFAULT, "Flushing %lu transactions for device %{public}@", &v19, 0x16u);
      }

      [(CHIDSPeerDevice *)self sendTransactions:logHandle withService:serviceCopy];
      device = [(CHIDSPeerDevice *)self txLog];
      [device clear];
    }

    else if (v13)
    {
      device3 = [(CHIDSPeerDevice *)self device];
      uniqueIDOverride3 = [device3 uniqueIDOverride];
      v19 = 138543362;
      v20 = uniqueIDOverride3;
      _os_log_impl(&_mh_execute_header, device, OS_LOG_TYPE_DEFAULT, "No transactions to flush for device %{public}@", &v19, 0xCu);
    }

    goto LABEL_13;
  }

  logHandle = [(CHIDSPeerDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    device4 = [(CHIDSPeerDevice *)self device];
    uniqueIDOverride4 = [device4 uniqueIDOverride];
    v19 = 138543362;
    v20 = uniqueIDOverride4;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Delaying flush for device %{public}@ until previous send has completed", &v19, 0xCu);
  }

LABEL_14:
}

- (int64_t)getSchemaVersionToDowngradeTo
{
  CurrentVersion = CHSchemaGetCurrentVersion();
  device = [(CHIDSPeerDevice *)self device];
  productVersion = [device productVersion];

  logHandle = [(CHIDSPeerDevice *)self logHandle];
  v7 = logHandle;
  if (productVersion)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = productVersion;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Gizmo has software version %{public}@.", &v13, 0xCu);
    }

    v7 = [productVersion componentsSeparatedByString:@"."];
    if ([v7 count])
    {
      firstObject = [v7 firstObject];
      integerValue = [firstObject integerValue];

      logHandle2 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = integerValue;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Gizmo has major software version %ld.", &v13, 0xCu);
      }

      if (integerValue > 6)
      {
        if (integerValue > 9)
        {
          switch(integerValue)
          {
            case 10:
              CurrentVersion = 27;
              break;
            case 11:
              CurrentVersion = 35;
              break;
            case 12:
              CurrentVersion = 42;
              break;
          }
        }

        else if (integerValue == 7)
        {
          CurrentVersion = 21;
        }

        else if (integerValue == 8)
        {
          CurrentVersion = 22;
        }

        else
        {
          CurrentVersion = 24;
        }
      }

      else if (integerValue > 4)
      {
        if (integerValue == 5)
        {
          CurrentVersion = 17;
        }

        else
        {
          CurrentVersion = 20;
        }
      }

      else if ((integerValue - 1) < 2)
      {
        CurrentVersion = 5;
      }

      else if ((integerValue - 3) < 2)
      {
        CurrentVersion = 13;
      }
    }

    else
    {
      logHandle3 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
      {
        sub_1000338D4();
      }
    }
  }

  else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    sub_100033914();
  }

  return CurrentVersion;
}

- (BOOL)downgradeDatabaseAtLocation:(id)location
{
  locationCopy = location;
  getSchemaVersionToDowngradeTo = [(CHIDSPeerDevice *)self getSchemaVersionToDowngradeTo];
  logHandle = [(CHIDSPeerDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = getSchemaVersionToDowngradeTo;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Downgrading data store to schema version %ld.", &v11, 0xCu);
  }

  v7 = [CallDBManagerServer downgradeDatabaseAtLocation:locationCopy toVersion:getSchemaVersionToDowngradeTo];

  errorCode = [v7 errorCode];
  if (!errorCode)
  {
    logHandle2 = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = getSchemaVersionToDowngradeTo;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Downgraded temporary data store to schema version %ld.", &v11, 0xCu);
    }
  }

  return errorCode == 0;
}

- (void)sendBootstrapDataStoreWithService:(id)service
{
  serviceCopy = service;
  v5 = os_transaction_create();
  [(CHIDSPeerDevice *)self setOsTransaction:v5];

  LOBYTE(v5) = [(CHIDSPeerDevice *)self _sendBootstrapDataStoreWithService:serviceCopy];
  if ((v5 & 1) == 0)
  {

    [(CHIDSPeerDevice *)self setOsTransaction:0];
  }
}

- (BOOL)_sendBootstrapDataStoreWithService:(id)service
{
  serviceCopy = service;
  if ([(CHIDSPeerDevice *)self configuration]== 1)
  {
    v33 = 0;
    v5 = [CallDBManager getDBLocationIsSandboxed:0 isTemporary:0 error:&v33];
    logHandle = [(CHIDSPeerDevice *)self logHandle];
    v7 = logHandle;
    if (!v5)
    {
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100033B6C(&v33);
      }

      coordinator = [(CHIDSPeerDevice *)self coordinator];
      [coordinator syncFailedWithError:0];
      v17 = 0;
      goto LABEL_33;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      device = [(CHIDSPeerDevice *)self device];
      uniqueIDOverride = [device uniqueIDOverride];
      *buf = 138543618;
      v35 = v5;
      v36 = 2114;
      v37 = uniqueIDOverride;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending bootstrap database %{public}@ to %{public}@", buf, 0x16u);
    }

    device2 = [(CHIDSPeerDevice *)self device];
    uniqueIDOverride2 = [device2 uniqueIDOverride];
    coordinator = [v5 URLByAppendingPathExtension:uniqueIDOverride2];

    if (([DBManager replacePersistentStore:coordinator withURL:v5]& 1) != 0)
    {
      if (([DBManager makeDatabaseAtURLClassCDataProtected:coordinator]& 1) == 0)
      {
        logHandle2 = [(CHIDSPeerDevice *)self logHandle];
        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v35 = coordinator;
          _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Unable to make database at location: %{public}@ class C data protected", buf, 0xCu);
        }
      }

      if ([(CHIDSPeerDevice *)self downgradeDatabaseAtLocation:coordinator])
      {
        [(CHIDSPeerDevice *)self setStatus:1];
        device3 = [(CHIDSPeerDevice *)self device];
        v15 = IDSCopyIDForDevice();
        v16 = [NSSet setWithObject:v15];
        v31 = 0;
        v32 = 0;
        v17 = [serviceCopy sendResourceAtURL:coordinator metadata:0 toDestinations:v16 priority:200 options:0 identifier:&v32 error:&v31];
        v18 = v32;
        coordinator3 = v31;

        if (v17)
        {
          [(CHIDSPeerDevice *)self setSendIdentifier:v18];
          logHandle3 = [(CHIDSPeerDevice *)self logHandle];
          if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
          {
            device4 = [(CHIDSPeerDevice *)self device];
            uniqueIDOverride3 = [device4 uniqueIDOverride];
            sendIdentifier = [(CHIDSPeerDevice *)self sendIdentifier];
            *buf = 138543618;
            v35 = uniqueIDOverride3;
            v36 = 2114;
            v37 = sendIdentifier;
            _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Sent bootstrap database successfully to %{public}@ with identifier: %{public}@", buf, 0x16u);
          }

          ct_green_tea_logger_create_static();
          v24 = getCTGreenTeaOsLogHandle();
          coordinator2 = v24;
          if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, coordinator2, OS_LOG_TYPE_INFO, "Transmit over IDS", buf, 2u);
          }
        }

        else
        {
          [(CHIDSPeerDevice *)self setStatus:0];
          logHandle4 = [(CHIDSPeerDevice *)self logHandle];
          if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
          {
            sub_100033AFC();
          }

          coordinator2 = [(CHIDSPeerDevice *)self coordinator];
          [coordinator2 syncFailedWithError:coordinator3];
        }

        goto LABEL_32;
      }

      logHandle5 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_ERROR))
      {
        sub_100033A7C();
      }
    }

    else
    {
      logHandle5 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_ERROR))
      {
        sub_1000339F8();
      }
    }

    coordinator3 = [(CHIDSPeerDevice *)self coordinator];
    [coordinator3 syncFailedWithError:0];
    v17 = 0;
LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  logHandle6 = [(CHIDSPeerDevice *)self logHandle];
  if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_ERROR))
  {
    sub_100033954(self);
  }

  coordinator4 = [(CHIDSPeerDevice *)self coordinator];
  [coordinator4 syncFailedWithError:0];

  v17 = 0;
LABEL_34:

  return v17;
}

- (void)removeTemporaryBootstrapDataStore
{
  v8 = 0;
  v3 = [CallDBManager getDBLocationIsSandboxed:0 isTemporary:0 error:&v8];
  if (v3)
  {
    device = [(CHIDSPeerDevice *)self device];
    uniqueIDOverride = [device uniqueIDOverride];
    logHandle = [v3 URLByAppendingPathExtension:uniqueIDOverride];

    v7 = +[CallDBManager modelURL];
    [DBManager destroyDBAtLocation:logHandle withModelAtLocation:v7];
  }

  else
  {
    logHandle = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_100033B6C(&v8);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (identifierCopy)
  {
    sendIdentifier = [(CHIDSPeerDevice *)self sendIdentifier];
    v16 = [identifierCopy isEqualToString:sendIdentifier];

    if (v16)
    {
      [(CHIDSPeerDevice *)self setSendIdentifier:0];
      if ([(CHIDSPeerDevice *)self status]== 1)
      {
        coordinator = [(CHIDSPeerDevice *)self coordinator];
        v18 = coordinator;
        if (errorCopy)
        {
          [coordinator syncFailedWithError:errorCopy];

          logHandle = [(CHIDSPeerDevice *)self logHandle];
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            device = [(CHIDSPeerDevice *)self device];
            uniqueIDOverride = [device uniqueIDOverride];
            v40 = 138543618;
            v41 = uniqueIDOverride;
            v42 = 2114;
            v43 = errorCopy;
            _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Sending bootstrap data store to device %{public}@ failed: %{public}@", &v40, 0x16u);
          }

LABEL_11:

          goto LABEL_18;
        }

        [coordinator syncComplete];

        [(CHIDSPeerDevice *)self setStatus:2];
        logHandle2 = [(CHIDSPeerDevice *)self logHandle];
        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
        {
          device2 = [(CHIDSPeerDevice *)self device];
          uniqueIDOverride2 = [device2 uniqueIDOverride];
          v40 = 138412546;
          v41 = uniqueIDOverride2;
          v42 = 2082;
          v43 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
          _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Device %@ bootstrapped successfully, changing status to %{public}s", &v40, 0x16u);
        }

        [(CHIDSPeerDevice *)self flushTransactionsWithService:serviceCopy];
        [(CHIDSPeerDevice *)self removeTemporaryBootstrapDataStore];
        [(CHIDSPeerDevice *)self setOsTransaction:0];
      }

      else
      {
        logHandle3 = [(CHIDSPeerDevice *)self logHandle];
        v23 = os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT);
        if (errorCopy)
        {
          if (v23)
          {
            pendingTransactions = [(CHIDSPeerDevice *)self pendingTransactions];
            v25 = [pendingTransactions count];
            device3 = [(CHIDSPeerDevice *)self device];
            uniqueIDOverride3 = [device3 uniqueIDOverride];
            v40 = 134218498;
            v41 = v25;
            v42 = 2114;
            v43 = uniqueIDOverride3;
            v44 = 2112;
            v45 = errorCopy;
            _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Sending %lu transactions to device %{public}@ failed: %@", &v40, 0x20u);
          }

          pendingTransactions2 = [(CHIDSPeerDevice *)self pendingTransactions];
          logHandle = [NSMutableArray arrayWithArray:pendingTransactions2];

          txLog = [(CHIDSPeerDevice *)self txLog];
          getTransactions = [txLog getTransactions];
          [logHandle addObjectsFromArray:getTransactions];

          txLog2 = [(CHIDSPeerDevice *)self txLog];
          [txLog2 clear];

          txLog3 = [(CHIDSPeerDevice *)self txLog];
          [txLog3 append:logHandle];

          [(CHIDSPeerDevice *)self setPendingTransactions:0];
          goto LABEL_11;
        }

        if (v23)
        {
          pendingTransactions3 = [(CHIDSPeerDevice *)self pendingTransactions];
          v37 = [pendingTransactions3 count];
          device4 = [(CHIDSPeerDevice *)self device];
          uniqueIDOverride4 = [device4 uniqueIDOverride];
          v40 = 134218498;
          v41 = v37;
          v42 = 2114;
          v43 = uniqueIDOverride4;
          v44 = 2114;
          v45 = identifierCopy;
          _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Successfully sent %lu transactions to device %{public}@ with identifier %{public}@", &v40, 0x20u);
        }

        [(CHIDSPeerDevice *)self setPendingTransactions:0];
        [(CHIDSPeerDevice *)self flushTransactionsWithService:serviceCopy];
      }
    }
  }

LABEL_18:
}

@end