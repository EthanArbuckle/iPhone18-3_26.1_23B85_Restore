@interface CHIDSPeerDevice
- (BOOL)_sendBootstrapDataStoreWithService:(id)a3;
- (BOOL)downgradeDatabaseAtLocation:(id)a3;
- (CHIDSPeerDevice)initWithDevice:(id)a3 withPairedSyncCoordinator:(id)a4 withConfiguration:(int)a5;
- (int64_t)getSchemaVersionToDowngradeTo;
- (void)flushTransactionsWithService:(id)a3;
- (void)removeTemporaryBootstrapDataStore;
- (void)sendBootstrapDataStoreWithService:(id)a3;
- (void)sendMessage:(id)a3 withService:(id)a4;
- (void)sendTransactions:(id)a3 withService:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
@end

@implementation CHIDSPeerDevice

- (CHIDSPeerDevice)initWithDevice:(id)a3 withPairedSyncCoordinator:(id)a4 withConfiguration:(int)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = CHIDSPeerDevice;
  v11 = [(CHIDSPeerDevice *)&v18 initWithName:"IDSPeerDevice"];
  if (v11)
  {
    if ([v9 isNearby])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v11->_status = v12;
    objc_storeStrong(&v11->_device, a3);
    v13 = [TransactionLog alloc];
    v14 = [v9 uniqueIDOverride];
    v15 = [(TransactionLog *)v13 initWithFileName:v14 withDescription:"TransactionLog-IDS"];
    txLog = v11->_txLog;
    v11->_txLog = v15;

    v11->_configuration = a5;
    objc_storeStrong(&v11->_coordinator, a4);
  }

  return v11;
}

- (void)sendTransactions:(id)a3 withService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHIDSPeerDevice *)self status]!= 2)
  {
    v9 = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CHIDSPeerDevice *)self device];
      v12 = [v11 uniqueIDOverride];
      v22 = 138543618;
      v23 = v12;
      v24 = 2082;
      v25 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
      v13 = "Queueing transactions for device %{public}@ until status(%{public}s) is available";
      v14 = v9;
      v15 = 22;
      goto LABEL_7;
    }

LABEL_8:

    v16 = [(CHIDSPeerDevice *)self txLog];
    [v16 append:v6];
    goto LABEL_9;
  }

  v8 = [(CHIDSPeerDevice *)self pendingTransactions];

  v9 = [(CHIDSPeerDevice *)self logHandle];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [(CHIDSPeerDevice *)self device];
      v12 = [v11 uniqueIDOverride];
      v22 = 138543362;
      v23 = v12;
      v13 = "Queueing transactions for device %{public}@ until previous send has completed";
      v14 = v9;
      v15 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v22, v15);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v17 = [(CHIDSPeerDevice *)self device];
    v18 = [v17 uniqueIDOverride];
    v22 = 138543618;
    v23 = v18;
    v24 = 2082;
    v25 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@ status is %{public}s", &v22, 0x16u);
  }

  [(CHIDSPeerDevice *)self setPendingTransactions:v6];
  v16 = sub_10001CE68(v6);
  v19 = objc_opt_new();
  v20 = [v16 data];
  [v19 setObject:v20 forKey:@"ProtobufTransactions"];

  v21 = [NSNumber numberWithInt:[(CHIDSPeerDevice *)self configuration]];
  [v19 setObject:v21 forKey:@"Configuration"];

  [(CHIDSPeerDevice *)self sendMessage:v19 withService:v7];
LABEL_9:
}

- (void)sendMessage:(id)a3 withService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHIDSPeerDevice *)self device];
  v9 = IDSCopyIDForDevice();
  v10 = [NSSet setWithObject:v9];
  v20 = 0;
  v21 = 0;
  v11 = [v6 sendMessage:v7 fromAccount:0 toDestinations:v10 priority:300 options:0 identifier:&v21 error:&v20];

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

    v16 = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(CHIDSPeerDevice *)self device];
      v18 = [v17 uniqueIDOverride];
      *buf = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sent message to %{public}@ with identifier %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v16 = [(CHIDSPeerDevice *)self logHandle];
    v19 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
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

- (void)flushTransactionsWithService:(id)a3
{
  v4 = a3;
  if ([(CHIDSPeerDevice *)self status]!= 2)
  {
    v6 = [(CHIDSPeerDevice *)self logHandle];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v9 = [(CHIDSPeerDevice *)self device];
    v10 = [v9 uniqueIDOverride];
    v19 = 138543618;
    v20 = v10;
    v21 = 2082;
    v22 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delaying flush for device %{public}@ until we are available (%{public}s)", &v19, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  v5 = [(CHIDSPeerDevice *)self pendingTransactions];

  if (!v5)
  {
    v11 = [(CHIDSPeerDevice *)self txLog];
    v6 = [v11 getTransactions];

    v12 = [v6 count];
    v9 = [(CHIDSPeerDevice *)self logHandle];
    v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v13)
      {
        v14 = [v6 count];
        v15 = [(CHIDSPeerDevice *)self device];
        v16 = [v15 uniqueIDOverride];
        v19 = 134218242;
        v20 = v14;
        v21 = 2114;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Flushing %lu transactions for device %{public}@", &v19, 0x16u);
      }

      [(CHIDSPeerDevice *)self sendTransactions:v6 withService:v4];
      v9 = [(CHIDSPeerDevice *)self txLog];
      [v9 clear];
    }

    else if (v13)
    {
      v17 = [(CHIDSPeerDevice *)self device];
      v18 = [v17 uniqueIDOverride];
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No transactions to flush for device %{public}@", &v19, 0xCu);
    }

    goto LABEL_13;
  }

  v6 = [(CHIDSPeerDevice *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CHIDSPeerDevice *)self device];
    v8 = [v7 uniqueIDOverride];
    v19 = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delaying flush for device %{public}@ until previous send has completed", &v19, 0xCu);
  }

LABEL_14:
}

- (int64_t)getSchemaVersionToDowngradeTo
{
  CurrentVersion = CHSchemaGetCurrentVersion();
  v4 = [(CHIDSPeerDevice *)self device];
  v5 = [v4 productVersion];

  v6 = [(CHIDSPeerDevice *)self logHandle];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Gizmo has software version %{public}@.", &v13, 0xCu);
    }

    v7 = [v5 componentsSeparatedByString:@"."];
    if ([v7 count])
    {
      v8 = [v7 firstObject];
      v9 = [v8 integerValue];

      v10 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Gizmo has major software version %ld.", &v13, 0xCu);
      }

      if (v9 > 6)
      {
        if (v9 > 9)
        {
          switch(v9)
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

        else if (v9 == 7)
        {
          CurrentVersion = 21;
        }

        else if (v9 == 8)
        {
          CurrentVersion = 22;
        }

        else
        {
          CurrentVersion = 24;
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          CurrentVersion = 17;
        }

        else
        {
          CurrentVersion = 20;
        }
      }

      else if ((v9 - 1) < 2)
      {
        CurrentVersion = 5;
      }

      else if ((v9 - 3) < 2)
      {
        CurrentVersion = 13;
      }
    }

    else
    {
      v11 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000338D4();
      }
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100033914();
  }

  return CurrentVersion;
}

- (BOOL)downgradeDatabaseAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(CHIDSPeerDevice *)self getSchemaVersionToDowngradeTo];
  v6 = [(CHIDSPeerDevice *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Downgrading data store to schema version %ld.", &v11, 0xCu);
  }

  v7 = [CallDBManagerServer downgradeDatabaseAtLocation:v4 toVersion:v5];

  v8 = [v7 errorCode];
  if (!v8)
  {
    v9 = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downgraded temporary data store to schema version %ld.", &v11, 0xCu);
    }
  }

  return v8 == 0;
}

- (void)sendBootstrapDataStoreWithService:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  [(CHIDSPeerDevice *)self setOsTransaction:v5];

  LOBYTE(v5) = [(CHIDSPeerDevice *)self _sendBootstrapDataStoreWithService:v4];
  if ((v5 & 1) == 0)
  {

    [(CHIDSPeerDevice *)self setOsTransaction:0];
  }
}

- (BOOL)_sendBootstrapDataStoreWithService:(id)a3
{
  v4 = a3;
  if ([(CHIDSPeerDevice *)self configuration]== 1)
  {
    v33 = 0;
    v5 = [CallDBManager getDBLocationIsSandboxed:0 isTemporary:0 error:&v33];
    v6 = [(CHIDSPeerDevice *)self logHandle];
    v7 = v6;
    if (!v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100033B6C(&v33);
      }

      v12 = [(CHIDSPeerDevice *)self coordinator];
      [v12 syncFailedWithError:0];
      v17 = 0;
      goto LABEL_33;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CHIDSPeerDevice *)self device];
      v9 = [v8 uniqueIDOverride];
      *buf = 138543618;
      v35 = v5;
      v36 = 2114;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending bootstrap database %{public}@ to %{public}@", buf, 0x16u);
    }

    v10 = [(CHIDSPeerDevice *)self device];
    v11 = [v10 uniqueIDOverride];
    v12 = [v5 URLByAppendingPathExtension:v11];

    if (([DBManager replacePersistentStore:v12 withURL:v5]& 1) != 0)
    {
      if (([DBManager makeDatabaseAtURLClassCDataProtected:v12]& 1) == 0)
      {
        v13 = [(CHIDSPeerDevice *)self logHandle];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v35 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to make database at location: %{public}@ class C data protected", buf, 0xCu);
        }
      }

      if ([(CHIDSPeerDevice *)self downgradeDatabaseAtLocation:v12])
      {
        [(CHIDSPeerDevice *)self setStatus:1];
        v14 = [(CHIDSPeerDevice *)self device];
        v15 = IDSCopyIDForDevice();
        v16 = [NSSet setWithObject:v15];
        v31 = 0;
        v32 = 0;
        v17 = [v4 sendResourceAtURL:v12 metadata:0 toDestinations:v16 priority:200 options:0 identifier:&v32 error:&v31];
        v18 = v32;
        v19 = v31;

        if (v17)
        {
          [(CHIDSPeerDevice *)self setSendIdentifier:v18];
          v20 = [(CHIDSPeerDevice *)self logHandle];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [(CHIDSPeerDevice *)self device];
            v22 = [v21 uniqueIDOverride];
            v23 = [(CHIDSPeerDevice *)self sendIdentifier];
            *buf = 138543618;
            v35 = v22;
            v36 = 2114;
            v37 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sent bootstrap database successfully to %{public}@ with identifier: %{public}@", buf, 0x16u);
          }

          ct_green_tea_logger_create_static();
          v24 = getCTGreenTeaOsLogHandle();
          v25 = v24;
          if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Transmit over IDS", buf, 2u);
          }
        }

        else
        {
          [(CHIDSPeerDevice *)self setStatus:0];
          v29 = [(CHIDSPeerDevice *)self logHandle];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100033AFC();
          }

          v25 = [(CHIDSPeerDevice *)self coordinator];
          [v25 syncFailedWithError:v19];
        }

        goto LABEL_32;
      }

      v28 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100033A7C();
      }
    }

    else
    {
      v28 = [(CHIDSPeerDevice *)self logHandle];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000339F8();
      }
    }

    v19 = [(CHIDSPeerDevice *)self coordinator];
    [v19 syncFailedWithError:0];
    v17 = 0;
LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  v26 = [(CHIDSPeerDevice *)self logHandle];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100033954(self);
  }

  v27 = [(CHIDSPeerDevice *)self coordinator];
  [v27 syncFailedWithError:0];

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
    v4 = [(CHIDSPeerDevice *)self device];
    v5 = [v4 uniqueIDOverride];
    v6 = [v3 URLByAppendingPathExtension:v5];

    v7 = +[CallDBManager modelURL];
    [DBManager destroyDBAtLocation:v6 withModelAtLocation:v7];
  }

  else
  {
    v6 = [(CHIDSPeerDevice *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100033B6C(&v8);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v13)
  {
    v15 = [(CHIDSPeerDevice *)self sendIdentifier];
    v16 = [v13 isEqualToString:v15];

    if (v16)
    {
      [(CHIDSPeerDevice *)self setSendIdentifier:0];
      if ([(CHIDSPeerDevice *)self status]== 1)
      {
        v17 = [(CHIDSPeerDevice *)self coordinator];
        v18 = v17;
        if (v14)
        {
          [v17 syncFailedWithError:v14];

          v19 = [(CHIDSPeerDevice *)self logHandle];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [(CHIDSPeerDevice *)self device];
            v21 = [v20 uniqueIDOverride];
            v40 = 138543618;
            v41 = v21;
            v42 = 2114;
            v43 = v14;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending bootstrap data store to device %{public}@ failed: %{public}@", &v40, 0x16u);
          }

LABEL_11:

          goto LABEL_18;
        }

        [v17 syncComplete];

        [(CHIDSPeerDevice *)self setStatus:2];
        v33 = [(CHIDSPeerDevice *)self logHandle];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [(CHIDSPeerDevice *)self device];
          v35 = [v34 uniqueIDOverride];
          v40 = 138412546;
          v41 = v35;
          v42 = 2082;
          v43 = sub_10001D0E0([(CHIDSPeerDevice *)self status]);
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Device %@ bootstrapped successfully, changing status to %{public}s", &v40, 0x16u);
        }

        [(CHIDSPeerDevice *)self flushTransactionsWithService:v11];
        [(CHIDSPeerDevice *)self removeTemporaryBootstrapDataStore];
        [(CHIDSPeerDevice *)self setOsTransaction:0];
      }

      else
      {
        v22 = [(CHIDSPeerDevice *)self logHandle];
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v23)
          {
            v24 = [(CHIDSPeerDevice *)self pendingTransactions];
            v25 = [v24 count];
            v26 = [(CHIDSPeerDevice *)self device];
            v27 = [v26 uniqueIDOverride];
            v40 = 134218498;
            v41 = v25;
            v42 = 2114;
            v43 = v27;
            v44 = 2112;
            v45 = v14;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending %lu transactions to device %{public}@ failed: %@", &v40, 0x20u);
          }

          v28 = [(CHIDSPeerDevice *)self pendingTransactions];
          v19 = [NSMutableArray arrayWithArray:v28];

          v29 = [(CHIDSPeerDevice *)self txLog];
          v30 = [v29 getTransactions];
          [v19 addObjectsFromArray:v30];

          v31 = [(CHIDSPeerDevice *)self txLog];
          [v31 clear];

          v32 = [(CHIDSPeerDevice *)self txLog];
          [v32 append:v19];

          [(CHIDSPeerDevice *)self setPendingTransactions:0];
          goto LABEL_11;
        }

        if (v23)
        {
          v36 = [(CHIDSPeerDevice *)self pendingTransactions];
          v37 = [v36 count];
          v38 = [(CHIDSPeerDevice *)self device];
          v39 = [v38 uniqueIDOverride];
          v40 = 134218498;
          v41 = v37;
          v42 = 2114;
          v43 = v39;
          v44 = 2114;
          v45 = v13;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully sent %lu transactions to device %{public}@ with identifier %{public}@", &v40, 0x20u);
        }

        [(CHIDSPeerDevice *)self setPendingTransactions:0];
        [(CHIDSPeerDevice *)self flushTransactionsWithService:v11];
      }
    }
  }

LABEL_18:
}

@end