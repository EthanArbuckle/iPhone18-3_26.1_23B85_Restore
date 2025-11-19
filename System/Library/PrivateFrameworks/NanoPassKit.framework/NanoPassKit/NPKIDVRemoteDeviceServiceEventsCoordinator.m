@interface NPKIDVRemoteDeviceServiceEventsCoordinator
- (NPKIDVRemoteDeviceServiceEventsCoordinator)init;
- (NSString)remoteDeviceID;
- (id)remoteDeviceParingIDFor:(id)a3;
- (unint64_t)registerEvents:(unint64_t)a3 forServiceName:(id)a4;
- (unint64_t)unregisterEvents:(unint64_t)a3 forServiceName:(id)a4;
- (void)_insideLockPersistServiceContext;
- (void)_insideLockSetupBiometricAuthenticationTokenReminderForDeviceID:(id)a3 serviceNames:(id)a4;
- (void)_insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:(id)a3;
- (void)_notifyProcessWithServiceNames:(id)a3 deviceEvent:(unint64_t)a4 forDeviceID:(id)a5 eventContext:(id)a6;
- (void)handlePassDeletionForPass:(id)a3;
- (void)initializeWithDevice:(id)a3;
- (void)insideLockTeardownCurrentRemoteDeviceContextWithReason:(unint64_t)a3;
- (void)setNeedsPrearmCredential:(BOOL)a3;
- (void)teardownCurrentRemoteDeviceContextWithReason:(unint64_t)a3;
@end

@implementation NPKIDVRemoteDeviceServiceEventsCoordinator

- (NPKIDVRemoteDeviceServiceEventsCoordinator)init
{
  v9.receiver = self;
  v9.super_class = NPKIDVRemoteDeviceServiceEventsCoordinator;
  v2 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_serviceContextLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.NanoPassKit.RemoteDeviceServiceEventsCoordinator.remoteNotification", 0);
    remoteProcessNotificationQueue = v3->_remoteProcessNotificationQueue;
    v3->_remoteProcessNotificationQueue = v4;

    v6 = dispatch_queue_create("com.apple.NanoPassKit.RemoteDeviceServiceEventsCoordinator.lockStatus", 0);
    lockStatusChangeCoordinatorQueue = v3->_lockStatusChangeCoordinatorQueue;
    v3->_lockStatusChangeCoordinatorQueue = v6;
  }

  return v3;
}

- (NSString)remoteDeviceID
{
  os_unfair_lock_lock(&self->_serviceContextLock);
  v3 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  if (!v3)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Not active device initialized", v8, 2u);
      }
    }
  }

  return v3;
}

- (id)remoteDeviceParingIDFor:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_serviceContextLock);
    v5 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
    v6 = self->_pairingID;
    os_unfair_lock_unlock(&self->_serviceContextLock);
    if (v5)
    {
      if ([v5 isEqualToString:v4])
      {
        v7 = v6;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v17 = pk_Payment_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v21 = 138412546;
          v22 = v5;
          v23 = 2112;
          v24 = v4;
          v13 = "Error: NPKIDVRemoteDeviceService: Current deviceID: %@ doesn't match expectedID:%@.";
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = 22;
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = pk_Payment_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          v13 = "Warning: NPKIDVRemoteDeviceService: Not active device initialized";
          v14 = v12;
          v15 = OS_LOG_TYPE_DEFAULT;
          v16 = 2;
LABEL_15:
          _os_log_impl(&dword_25B300000, v14, v15, v13, &v21, v16);
        }

LABEL_16:
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Unexpected nil remoteDeviceID", &v21, 2u);
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)teardownCurrentRemoteDeviceContextWithReason:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceTeardownReason(a3);
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested tear down service context with reason:%@", &v13, 0xCu);
    }
  }

  if (a3)
  {
    v9 = 4 * (a3 == 1);
  }

  else
  {
    v9 = 2;
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v10 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  v11 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:v9];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self insideLockTeardownCurrentRemoteDeviceContextWithReason:a3];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v11 deviceEvent:v9 forDeviceID:v10 eventContext:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)insideLockTeardownCurrentRemoteDeviceContextWithReason:(unint64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  serviceContext = self->_serviceContext;
  if (serviceContext)
  {
    v6 = [(NPKIDVRemoteDeviceServiceContext *)serviceContext remoteDeviceID];
    v7 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:4];
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_serviceContext;
        serviceContextPath = self->_serviceContextPath;
        v13 = NSStringFromNPKIDVRemoteDeviceTeardownReason(a3);
        v23 = 138413058;
        v24 = v11;
        v25 = 2112;
        v26 = serviceContextPath;
        v27 = 2112;
        v28 = v6;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will tear down service context:%@ at path:%@ for deviceID:%@ reason:%@", &v23, 0x2Au);
      }
    }

    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
    v14 = self->_serviceContext;
    self->_serviceContext = 0;

    v15 = self->_serviceContextPath;
    self->_serviceContextPath = 0;

    pairingID = self->_pairingID;
    self->_pairingID = 0;

    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = NSStringFromNPKIDVRemoteDeviceTeardownReason(a3);
        v23 = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did tear down service context for deviceID:%@ reason:%@", &v23, 0x16u);
      }
    }

    if (a3)
    {
      v21 = 4 * (a3 == 1);
    }

    else
    {
      v21 = 2;
    }

    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:v6];
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v7 deviceEvent:v21 forDeviceID:v6 eventContext:0];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)initializeWithDevice:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x277D2BBB8]];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested initialize service context for device with ParingID:%@", buf, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  if (self->_serviceContext)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
        *buf = 138412290;
        v45 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: It seem we didn't teardown deviceID:%@. Lets make sure we start from a clean state", buf, 0xCu);
      }
    }

    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self insideLockTeardownCurrentRemoteDeviceContextWithReason:0];
    serviceContext = self->_serviceContext;
    self->_serviceContext = 0;
  }

  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v5;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will initialize context for device with ParingID:%@", buf, 0xCu);
      }
    }

    v17 = NPKHomeDirectoryPathForDevice(v4);
    v18 = [v17 stringByAppendingPathComponent:@"remoteDeviceServiceContext.npkctx"];
    serviceContextPath = self->_serviceContextPath;
    self->_serviceContextPath = v18;

    v20 = self->_serviceContextPath;
    v43 = 0;
    v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v20 options:1 error:&v43];
    v22 = v43;
    if (v22)
    {
      v23 = pk_Payment_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (!v24)
      {
LABEL_26:
        if (!self->_serviceContext)
        {
          v31 = pk_Payment_log();
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

          if (v32)
          {
            v33 = pk_Payment_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = self->_serviceContextPath;
              *buf = 138412290;
              v45 = v34;
              _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: NPKIDVRemoteDeviceServiceContext from:%@ was nil.", buf, 0xCu);
            }
          }

          v35 = objc_alloc_init(NPKIDVRemoteDeviceServiceContext);
          v36 = self->_serviceContext;
          self->_serviceContext = v35;

          [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
        }

        objc_storeStrong(&self->_pairingID, v5);
        v28 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
        v37 = pk_Payment_log();
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

        if (v38)
        {
          v39 = pk_Payment_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = self->_serviceContext;
            v41 = self->_serviceContextPath;
            *buf = 138413058;
            v45 = v40;
            v46 = 2112;
            v47 = v41;
            v48 = 2112;
            v49 = v5;
            v50 = 2112;
            v51 = v28;
            _os_log_impl(&dword_25B300000, v39, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: initialized context:%@ at path:%@ for device with ParingID:%@ and deviceID:%@", buf, 0x2Au);
          }
        }

        v27 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:1];

        goto LABEL_37;
      }

      p_super = pk_Payment_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_serviceContextPath;
        *buf = 138412546;
        v45 = v22;
        v46 = 2112;
        v47 = v26;
        _os_log_impl(&dword_25B300000, p_super, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: NPKIDVRemoteDeviceServiceContext error:%@ loading context from:%@", buf, 0x16u);
      }
    }

    else
    {
      v29 = objc_opt_class();
      v30 = NPKSecureUnarchiveObject(v21, v29);
      p_super = &self->_serviceContext->super;
      self->_serviceContext = v30;
    }

    goto LABEL_26;
  }

  if (!v15)
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_38;
  }

  v22 = pk_Payment_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: No active device is found, this could be ok but we let you know just in case", buf, 2u);
  }

  v27 = 0;
  v28 = 0;
LABEL_37:

LABEL_38:
  os_unfair_lock_unlock(&self->_serviceContextLock);
  if ([v27 count] && objc_msgSend(v28, "length"))
  {
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v27 deviceEvent:1 forDeviceID:v28 eventContext:0];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)setNeedsPrearmCredential:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = 8;
  }

  else
  {
    v5 = 16;
  }

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(v5);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested notify %@", &v13, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v10 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  v11 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:v5];
  if (v3)
  {
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockSetupBiometricAuthenticationTokenReminderForDeviceID:v10 serviceNames:v11];
  }

  else
  {
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:v10];
  }

  os_unfair_lock_unlock(&self->_serviceContextLock);
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v11 deviceEvent:v5 forDeviceID:v10 eventContext:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handlePassDeletionForPass:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(0x20uLL);
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested notify %@", &v17, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v9 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  v10 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:32];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v4 secureElementPass];
  v13 = [v12 issuerAdministrativeAreaCode];

  if ([v13 length])
  {
    [v11 setObject:v13 forKey:@"NPKIDVRemoteDeviceServiceEventContextDeletedPassState"];
  }

  v14 = [v4 secureElementPass];
  v15 = [v14 issuerCountryCode];

  if ([v15 length])
  {
    [v11 setObject:v15 forKey:@"NPKIDVRemoteDeviceServiceEventContextDeletedPassCountry"];
  }

  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v10 deviceEvent:32 forDeviceID:v9 eventContext:v11];

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)registerEvents:(unint64_t)a3 forServiceName:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a3);
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested register events:%@ forServiceName:%@", &v20, 0x16u);
    }
  }

  if (!self->_serviceContext)
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      v11 = 0xFFFFFFFF80000000;
      goto LABEL_15;
    }

    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Not active device initialized, we can't register requested events", &v20, 2u);
    }

    v11 = 0xFFFFFFFF80000000;
    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v11 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext registerEvents:a3 forServiceName:v6];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(v11);
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish register events with currentEvents:%@ forServiceName:%@", &v20, 0x16u);
    }

LABEL_13:
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)unregisterEvents:(unint64_t)a3 forServiceName:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a3);
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested unregister events:%@ forServiceName:%@", &v20, 0x16u);
    }
  }

  if (!self->_serviceContext)
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      v11 = 0xFFFFFFFF80000000;
      goto LABEL_15;
    }

    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Not active device initialized, we can't unregister requested events", &v20, 2u);
    }

    v11 = 0xFFFFFFFF80000000;
    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v11 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext unregisterEvents:a3 forServiceName:v6];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(v11);
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish unregister events with currentEvents:%@ forServiceName:%@", &v20, 0x16u);
    }

LABEL_13:
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_notifyProcessWithServiceNames:(id)a3 deviceEvent:(unint64_t)a4 forDeviceID:(id)a5 eventContext:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 count];
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a4);
        *buf = 138412802;
        v28 = v10;
        v29 = 2112;
        v30 = v17;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Found remote process with service Names:%@ event:%@ for deviceID:%@", buf, 0x20u);
      }
    }

    remoteProcessNotificationQueue = self->_remoteProcessNotificationQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke;
    v22[3] = &unk_279945958;
    v23 = v10;
    v26 = a4;
    v24 = v11;
    v25 = v12;
    dispatch_async(remoteProcessNotificationQueue, v22);

    v19 = v23;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_8;
    }

    v19 = pk_Payment_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a4);
      *buf = 138412546;
      v28 = v21;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: No service names to notify event:%@ for device with ID:%@", buf, 0x16u);
    }
  }

LABEL_8:
  v20 = *MEMORY[0x277D85DE8];
}

void __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke_2;
  v3[3] = &unk_279947FA0;
  v6 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NPKIDVRemoteDeviceServiceClient alloc] initWithRemoteServiceName:v3];

  [(NPKIDVRemoteDeviceServiceClient *)v4 didReceiveEvent:a1[6] fromRemoteDeviceWithID:a1[4] eventContext:a1[5]];
}

- (void)_insideLockPersistServiceContext
{
  os_unfair_lock_assert_owner(&self->_serviceContextLock);
  v3 = NPKSecureArchiveObject(self->_serviceContext);
  [v3 writeToFile:self->_serviceContextPath atomically:1];
}

- (void)_insideLockSetupBiometricAuthenticationTokenReminderForDeviceID:(id)a3 serviceNames:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Setup biometric authentication token reminder for deviceID:%@", buf, 0xCu);
    }
  }

  v11 = [[NPKLockStatusChangeCoordinator alloc] initWithQueue:self->_lockStatusChangeCoordinatorQueue reason:@"BiometricAuthenticationTokenReminder"];
  [(NPKLockStatusChangeCoordinator *)v11 setWipeBlocksAfterPerform:0];
  objc_initWeak(buf, self);
  v12 = [NPKLeakyBucket throttleWithEventsTimeInterval:@"BiometricAuthenticationTokenReminder" description:60.0];
  lockEventThrottle = self->_lockEventThrottle;
  self->_lockEventThrottle = v12;

  lockStatusChangeCoordinatorQueue = self->_lockStatusChangeCoordinatorQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke;
  v21[3] = &unk_279947FC8;
  v15 = v11;
  v22 = v15;
  objc_copyWeak(&v25, buf);
  v23 = v7;
  v24 = v6;
  v16 = v6;
  v17 = v7;
  dispatch_async(lockStatusChangeCoordinatorQueue, v21);
  lockStatusChangeCoordinator = self->_lockStatusChangeCoordinator;
  self->_lockStatusChangeCoordinator = v15;
  v19 = v15;

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
  v20 = *MEMORY[0x277D85DE8];
}

void __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_2;
  v3[3] = &unk_279945290;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performSubjectToEvent:1 blockToPerform:v3];

  objc_destroyWeak(&v6);
}

void __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 7);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_3;
    v5[3] = &unk_279945290;
    objc_copyWeak(&v8, a1 + 6);
    v6 = a1[4];
    v7 = a1[5];
    [v4 addEvent:v5];

    objc_destroyWeak(&v8);
  }
}

void __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_3(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Reminder: remote device Needs biometric authentication token", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _notifyProcessWithServiceNames:*(a1 + 32) deviceEvent:8 forDeviceID:*(a1 + 40) eventContext:0];
}

- (void)_insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: tear down biometric authentication token reminder for deviceID:%@", &v11, 0xCu);
    }
  }

  lockEventThrottle = self->_lockEventThrottle;
  self->_lockEventThrottle = 0;

  lockStatusChangeCoordinator = self->_lockStatusChangeCoordinator;
  self->_lockStatusChangeCoordinator = 0;

  v10 = *MEMORY[0x277D85DE8];
}

@end