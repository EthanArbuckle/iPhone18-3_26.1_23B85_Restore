@interface IDSDaemonListener
- (BOOL)_hidingDisconnect;
- (BOOL)hasPostedSetupComplete;
- (BOOL)isSetupComplete;
- (IDSDaemonListener)init;
- (IDSDaemonListener)initWithQueueController:(id)a3 ivarQueue:(id)a4;
- (NSString)deviceIdentifier;
- (id)_uniqueIDForDevice:(id)a3;
- (id)_updateService:(id)a3 withTinkerDevice:(id)a4 shouldAdd:(BOOL)a5 shouldSwitch:(BOOL)a6;
- (id)accountDictionariesForService:(id)a3;
- (id)dependentDevicesForAccount:(id)a3;
- (id)enabledAccountsForService:(id)a3;
- (id)familyInfoForService:(id)a3;
- (id)getDirectMessagingMetadataDictionary;
- (id)latestPrivateLoggingSalt;
- (id)linkedDevicesForService:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)pendingInvitationsForService:(id)a3;
- (id)receivedInvitationsForService:(id)a3;
- (int64_t)maxEffectivePayloadSizeForService:(id)a3;
- (int64_t)maxIMLPayloadSize;
- (unint64_t)restrictionReasonForService:(id)a3;
- (void)__postSetupComplete;
- (void)_callHandlersAsyncWithBlock:(id)a3;
- (void)_callHandlersWithBlock:(id)a3;
- (void)_callHandlersWithBlockOnIvarQueue:(id)a3 cleanup:(id)a4;
- (void)_internalDidSwitchActivePairedDevice:(id)a3 forService:(id)a4;
- (void)_internalSwitchActivePairedDevice:(id)a3 forAccount:(id)a4;
- (void)_internalSwitchActivePairedDevice:(id)a3 forService:(id)a4;
- (void)_noteDisconnected;
- (void)_performSyncBlock:(id)a3;
- (void)_removeAccountOnIvarQueue:(id)a3;
- (void)_setHidingDisconnect:(BOOL)a3;
- (void)account:(id)a3 accountInfoChanged:(id)a4;
- (void)account:(id)a3 aliasesChanged:(id)a4;
- (void)account:(id)a3 dependentDevicesUpdated:(id)a4;
- (void)account:(id)a3 displayNameChanged:(id)a4;
- (void)account:(id)a3 localDeviceAdded:(id)a4;
- (void)account:(id)a3 localDeviceRemoved:(id)a4;
- (void)account:(id)a3 loginChanged:(id)a4;
- (void)account:(id)a3 profileChanged:(id)a4;
- (void)account:(id)a3 registrationStatusInfoChanged:(id)a4;
- (void)account:(id)a3 vettedAliasesChanged:(id)a4;
- (void)accountAdded:(id)a3;
- (void)accountDisabled:(id)a3 onService:(id)a4;
- (void)accountEnabled:(id)a3 onService:(id)a4;
- (void)accountRemoved:(id)a3;
- (void)addHandler:(id)a3;
- (void)connectionComplete:(BOOL)a3 withResponse:(id)a4;
- (void)continuityDidConnectToPeer:(id)a3 withError:(id)a4;
- (void)continuityDidDisconnectFromPeer:(id)a3 withError:(id)a4;
- (void)continuityDidDiscoverPeerWithData:(id)a3 fromPeer:(id)a4;
- (void)continuityDidDiscoverType:(int64_t)a3 withData:(id)a4 fromPeer:(id)a5;
- (void)continuityDidFailToStartAdvertisingOfType:(int64_t)a3 withError:(id)a4;
- (void)continuityDidFailToStartScanningForType:(int64_t)a3 withError:(id)a4;
- (void)continuityDidLosePeer:(id)a3;
- (void)continuityDidStartAdvertisingOfType:(int64_t)a3;
- (void)continuityDidStartScanningForType:(int64_t)a3;
- (void)continuityDidStopAdvertisingOfType:(int64_t)a3;
- (void)continuityDidStopAdvertisingOfType:(int64_t)a3 withError:(id)a4;
- (void)continuityDidStopScanningForType:(int64_t)a3;
- (void)continuityDidUpdateStateToState:(int64_t)a3;
- (void)deactivatePairedDevices;
- (void)device:(id)a3 nsuuidChanged:(id)a4;
- (void)deviceIdentifierDidChange:(id)a3;
- (void)didGetIdentities:(id)a3 error:(id)a4;
- (void)didSwitchActivePairedDevice:(id)a3;
- (void)familyDevicesForService:(id)a3 listenerID:(id)a4 withCompletion:(id)a5;
- (void)forwardInvocation:(id)a3;
- (void)refreshRegistrationForAccount:(id)a3;
- (void)registrationFailedForAccount:(id)a3 needsDeletion:(id)a4;
- (void)removeHandler:(id)a3;
- (void)service:(id)a3 familyInfoUpdated:(id)a4;
- (void)service:(id)a3 restrictionReasonChanged:(unint64_t)a4;
- (void)service:(id)a3 tinkerDeviceAdded:(id)a4;
- (void)service:(id)a3 tinkerDeviceRemoved:(id)a4;
- (void)service:(id)a3 tinkerDeviceUpdated:(id)a4;
- (void)setupCompleteWithInfo:(id)a3;
- (void)switchActivePairedDevice:(id)a3 forAccount:(id)a4;
- (void)switchActivePairedDevice:(id)a3 forService:(id)a4;
- (void)updateAccount:(id)a3 withAccountInfo:(id)a4;
- (void)xpcObject:(id)a3 objectContext:(id)a4;
@end

@implementation IDSDaemonListener

- (BOOL)isSetupComplete
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A0121C;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (IDSDaemonListener)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    v4 = 0;
  }

  else
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IDSDaemonListener-ivarQueue: %@", self];
    v7 = dispatch_queue_create([v6 UTF8String], v5);

    v8 = +[IDSInternalQueueController sharedInstance];
    self = [(IDSDaemonListener *)self initWithQueueController:v8 ivarQueue:v7];

    v4 = self;
  }

  return v4;
}

- (void)_noteDisconnected
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A03CB0;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_async(ivarQueue, block);
}

- (BOOL)_hidingDisconnect
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A04500;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)__postSetupComplete
{
  if (!self->_setupInfoComplete)
  {
    v2 = [MEMORY[0x1E69A6138] registration];
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v3 = "Setup info is not complete, waiting...";
LABEL_8:
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
    goto LABEL_9;
  }

  if (!self->_connectionComplete)
  {
    v2 = [MEMORY[0x1E69A6138] registration];
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v3 = "Connection is not complete, waiting...";
    goto LABEL_8;
  }

  self->_setupComplete = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A059B0;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  v2 = MEMORY[0x19A8BBEF0](v4, a2);
  (*(v2 + 16))();
LABEL_9:
}

- (NSString)deviceIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A006B4;
  v9 = sub_195A03D00;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A06394;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (IDSDaemonListener)initWithQueueController:(id)a3 ivarQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (_IDSRunningInDaemon())
  {
    v9 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    v10 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v15.receiver = self;
  v15.super_class = IDSDaemonListener;
  v11 = [(IDSDaemonListener *)&v15 init];
  v10 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_internalQueueController, a3);
    objc_storeStrong(&v10->_ivarQueue, a4);
    ivarQueue = v10->_ivarQueue;
    if (ivarQueue)
    {
      dispatch_queue_set_specific(ivarQueue, "IDSDaemonListenerContext", 1, 0);
    }

    v10->_setupComplete = 0;
    *&v10->_setupInfoComplete = 0;
    v13 = [objc_alloc(MEMORY[0x1E696AE48]) initWithProtocol:&unk_1F0A32F70];
    self = v10->_protocol;
    v10->_protocol = v13;
    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

- (BOOL)hasPostedSetupComplete
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A2B9DC;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setHidingDisconnect:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A2BA60;
  v3[3] = &unk_1E743E8C8;
  v3[4] = self;
  v4 = a3;
  [(IDSDaemonListener *)self _performSyncBlock:v3];
}

- (void)_performSyncBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    block = v4;
    if (dispatch_get_specific("IDSDaemonListenerContext"))
    {
      block[2]();
    }

    else
    {
      dispatch_sync(self->_ivarQueue, block);
    }

    v4 = block;
  }
}

- (void)addHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A2BB84;
    v6[3] = &unk_1E743EA30;
    v6[4] = self;
    v7 = v4;
    [(IDSDaemonListener *)self _performSyncBlock:v6];
  }
}

- (void)removeHandler:(id)a3
{
  if (a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195A2BC9C;
    v5[3] = &unk_1E743F468;
    v5[4] = self;
    v5[5] = a3;
    v4 = a3;
    [(IDSDaemonListener *)self _performSyncBlock:v5];
  }
}

- (void)_callHandlersWithBlockOnIvarQueue:(id)a3 cleanup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_195A006B4;
    v14[4] = sub_195A03D00;
    v15 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A2BE88;
    v13[3] = &unk_1E743E670;
    v13[4] = self;
    v13[5] = v14;
    [(IDSDaemonListener *)self _performSyncBlock:v13];
    internalQueueController = self->_internalQueueController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A2BEE4;
    v9[3] = &unk_1E743F490;
    v12 = v14;
    v10 = v6;
    v11 = v7;
    [(IDSInternalQueueController *)internalQueueController performBlock:v9];

    _Block_object_dispose(v14, 8);
  }
}

- (void)_callHandlersWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A2C1AC;
    v6[3] = &unk_1E743EAA8;
    v6[4] = self;
    v7 = v4;
    [(IDSDaemonListener *)self _performSyncBlock:v6];
  }
}

- (void)_callHandlersAsyncWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    ivarQueue = self->_ivarQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A2C260;
    v7[3] = &unk_1E743EAA8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(ivarQueue, v7);
  }
}

- (id)accountDictionariesForService:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  if (v6)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_195B28AD4();
  }

  if (!v4)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_195A006B4;
    v18 = sub_195A03D00;
    v19 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A2C400;
    v10[3] = &unk_1E743E968;
    v11 = v4;
    v12 = self;
    v13 = &v14;
    [(IDSDaemonListener *)self _performSyncBlock:v10];
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

- (id)enabledAccountsForService:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  if (v6)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ enabledAccountsForService %@", buf, 0x16u);
  }

  if (!v4)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v15 = sub_195A006B4;
    v16 = sub_195A03D00;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A2C78C;
    v11[3] = &unk_1E743E968;
    v11[4] = self;
    v12 = v4;
    v13 = buf;
    [(IDSDaemonListener *)self _performSyncBlock:v11];
    v8 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_removeAccountOnIvarQueue:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x1E69A5650]];
  v6 = [v4 objectForKey:*MEMORY[0x1E69A5640]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B28C20();
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_topicToAccountDictionaries objectForKey:v6];
    v10 = [v9 mutableCopy];

    if (v10)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = sub_195A2CAEC;
      v16 = &unk_1E743F4B8;
      v17 = v5;
      v18 = &v19;
      [v10 enumerateObjectsUsingBlock:&v13];
      if (v20[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v10 removeObjectAtIndex:v13, v14, v15, v16];
        v11 = [v10 count];
        topicToAccountDictionaries = self->_topicToAccountDictionaries;
        if (v11)
        {
          [(NSMutableDictionary *)topicToAccountDictionaries setObject:v10 forKey:v7];
        }

        else
        {
          [(NSMutableDictionary *)topicToAccountDictionaries removeObjectForKey:v7];
        }
      }

      _Block_object_dispose(&v19, 8);
    }
  }
}

- (void)accountAdded:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x1E69A5650]];
  v6 = [v4 objectForKey:*MEMORY[0x1E69A5640]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B28C88();
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[IDSDaemonListener accountAdded:]";
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A2CDA0;
    v16[3] = &unk_1E743E620;
    v16[4] = self;
    v12 = v4;
    v17 = v12;
    v18 = v7;
    [(IDSDaemonListener *)self _performSyncBlock:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A2CE34;
    v14[3] = &unk_1E743F4E0;
    v15 = v12;
    [(IDSDaemonListener *)self _callHandlersWithBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)accountRemoved:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x1E69A5650]];
  v6 = [v4 objectForKey:*MEMORY[0x1E69A5640]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B28CF0();
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[IDSDaemonListener accountRemoved:]";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A2D0BC;
    v16[3] = &unk_1E743EA30;
    v16[4] = self;
    v12 = v4;
    v17 = v12;
    [(IDSDaemonListener *)self _performSyncBlock:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A2D0C8;
    v14[3] = &unk_1E743F4E0;
    v15 = v12;
    [(IDSDaemonListener *)self _callHandlersWithBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)accountEnabled:(id)a3 onService:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Incoming account enabled: %@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A2D330;
    v17[3] = &unk_1E743E620;
    v17[4] = self;
    v10 = v8;
    v18 = v10;
    v11 = v6;
    v19 = v11;
    [(IDSDaemonListener *)self _performSyncBlock:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A2D3D0;
    v14[3] = &unk_1E743F508;
    v15 = v11;
    v16 = v10;
    [(IDSDaemonListener *)self _callHandlersWithBlock:v14];
  }

  else
  {
    v12 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B28D58();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)accountDisabled:(id)a3 onService:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Incoming account disabled: %@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A2D638;
    v17[3] = &unk_1E743E620;
    v17[4] = self;
    v10 = v8;
    v18 = v10;
    v11 = v6;
    v19 = v11;
    [(IDSDaemonListener *)self _performSyncBlock:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A2D6D8;
    v14[3] = &unk_1E743F508;
    v15 = v11;
    v16 = v10;
    [(IDSDaemonListener *)self _callHandlersWithBlock:v14];
  }

  else
  {
    v12 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B28DC0();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)restrictionReasonForService:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_serviceToRestrictionReason objectForKeyedSubscript:v4];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Restriction reason %@ for service %@", &v12, 0x16u);
  }

  v7 = [(NSMutableDictionary *)self->_serviceToRestrictionReason objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_serviceToRestrictionReason objectForKeyedSubscript:v4];
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)service:(id)a3 restrictionReasonChanged:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Service %@ received restriction reason %lu", buf, 0x16u);
  }

  if (!self->_serviceToRestrictionReason)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    serviceToRestrictionReason = self->_serviceToRestrictionReason;
    self->_serviceToRestrictionReason = v8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_serviceToRestrictionReason setObject:v10 forKeyedSubscript:v6];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A2D9E4;
  v13[3] = &unk_1E743F530;
  v14 = v6;
  v15 = a4;
  v11 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateAccount:(id)a3 withAccountInfo:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:*MEMORY[0x1E69A5650]];
  v9 = [v7 objectForKey:*MEMORY[0x1E69A5640]];
  if ([v9 isEqualToIgnoringCase:@"com.apple.private.alloy.voicemailsync"])
  {
    v10 = [MEMORY[0x1E69A6138] voicemailSync];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Account info changed %@", buf, 0xCu);
    }
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = +[IDSLogging DaemonListener];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B28E28();
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A2DC24;
    v14[3] = &unk_1E743E620;
    v14[4] = self;
    v15 = v7;
    v16 = v9;
    [(IDSDaemonListener *)self _performSyncBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)a3 accountInfoChanged:(id)a4
{
  v6 = a4;
  [(IDSDaemonListener *)self updateAccount:a3 withAccountInfo:v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A2DD6C;
  v8[3] = &unk_1E743F4E0;
  v9 = v6;
  v7 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v8];
}

- (void)account:(id)a3 registrationStatusInfoChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A2DE88;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (void)account:(id)a3 aliasesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A2DFA4;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (void)account:(id)a3 vettedAliasesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A2E0C0;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (void)account:(id)a3 profileChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A2E1DC;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (void)account:(id)a3 loginChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A2E2F8;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (void)account:(id)a3 displayNameChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A2E414;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (id)_uniqueIDForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:*MEMORY[0x1E69A4BE8]];
  if (![v4 length])
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E69A4C48]];
    v6 = [v5 _stringForKey:*MEMORY[0x1E69A4FE0]];

    v4 = v6;
  }

  return v4;
}

- (void)account:(id)a3 dependentDevicesUpdated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A2E680;
  v17[3] = &unk_1E743EEE8;
  v17[4] = self;
  v9 = v6;
  v18 = v9;
  v19 = v7;
  v10 = v8;
  v20 = v10;
  v11 = v7;
  [(IDSDaemonListener *)self _performSyncBlock:v17];
  v12 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A2EA08;
  v14[3] = &unk_1E743F508;
  v15 = v9;
  v16 = v12;
  v13 = v9;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v14];
}

- (void)account:(id)a3 localDeviceAdded:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_195A006B4;
  v44 = sub_195A03D00;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_195A006B4;
  v38 = sub_195A03D00;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_195A006B4;
  v32 = sub_195A03D00;
  v33 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A2ED88;
  v21[3] = &unk_1E743F558;
  v8 = v7;
  v22 = v8;
  v9 = v6;
  v23 = v9;
  v24 = self;
  v25 = &v40;
  v26 = &v28;
  v27 = &v34;
  [(IDSDaemonListener *)self _performSyncBlock:v21];
  v10 = v41[5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A2F4B4;
  v18[3] = &unk_1E743F508;
  v11 = v9;
  v19 = v11;
  v12 = v10;
  v20 = v12;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v18];
  v13 = v35[5];
  v14 = v29[5];
  if ([v35[5] length])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A2F514;
    v15[3] = &unk_1E743E620;
    v15[4] = self;
    v16 = v13;
    v17 = v14;
    [(IDSDaemonListener *)self _performSyncBlock:v15];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
}

- (void)account:(id)a3 localDeviceRemoved:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A2F65C;
  v15[3] = &unk_1E743E620;
  v8 = v6;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v18 = self;
  [(IDSDaemonListener *)self _performSyncBlock:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A2F8FC;
  v12[3] = &unk_1E743F508;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v12];
}

- (id)_updateService:(id)a3 withTinkerDevice:(id)a4 shouldAdd:(BOOL)a5 shouldSwitch:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_195A006B4;
  v30[4] = sub_195A03D00;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_195A006B4;
  v28 = sub_195A03D00;
  v29 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A2FB20;
  v16[3] = &unk_1E743F5A8;
  v12 = v11;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = self;
  v22 = a5;
  v23 = a6;
  v20 = v30;
  v21 = &v24;
  [(IDSDaemonListener *)self _performSyncBlock:v16];
  v14 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v30, 8);

  return v14;
}

- (void)service:(id)a3 tinkerDeviceAdded:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "tinkerDeviceAdded %@", buf, 0xCu);
  }

  v9 = [(IDSDaemonListener *)self _updateService:v6 withTinkerDevice:v7 shouldAdd:1 shouldSwitch:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A306FC;
  v16[3] = &unk_1E743F508;
  v10 = v6;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v16];
  if ([v9 length])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A3075C;
    v13[3] = &unk_1E743E620;
    v13[4] = self;
    v14 = v9;
    v15 = v10;
    [(IDSDaemonListener *)self _performSyncBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 tinkerDeviceRemoved:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "tinkerDeviceRemoved %@", buf, 0xCu);
  }

  v9 = [(IDSDaemonListener *)self _updateService:v6 withTinkerDevice:v7 shouldAdd:0 shouldSwitch:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A308D0;
  v13[3] = &unk_1E743F508;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 tinkerDeviceUpdated:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "tinkerDeviceUpdated %@", buf, 0xCu);
  }

  v9 = [(IDSDaemonListener *)self _updateService:v6 withTinkerDevice:v7 shouldAdd:1 shouldSwitch:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A30A94;
  v13[3] = &unk_1E743F508;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 familyInfoUpdated:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "familyInfoUpdated %@", buf, 0xCu);
  }

  if (v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = MEMORY[0x1E695DFD8];
    v11 = *MEMORY[0x1E69A4CB0];
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A4CB0]];
    v13 = [v10 setWithArray:v12];
    [v9 setObject:v13 forKeyedSubscript:v11];

    v14 = MEMORY[0x1E695DFD8];
    v15 = *MEMORY[0x1E69A4C90];
    v16 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A4C90]];
    v17 = [v14 setWithArray:v16];
    [v9 setObject:v17 forKeyedSubscript:v15];

    [(NSMutableDictionary *)self->_serviceToFamilyInfo setObject:v9 forKey:v6];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A30D64;
    v20[3] = &unk_1E743F508;
    v21 = v6;
    v22 = v9;
    v18 = v9;
    [(IDSDaemonListener *)self _callHandlersWithBlock:v20];
  }

  else
  {
    v18 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Family Info was nil %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)familyInfoForService:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_195A006B4;
  v15 = sub_195A03D00;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A30F08;
  v8[3] = &unk_1E743EA08;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(IDSDaemonListener *)self _performSyncBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)familyDevicesForService:(id)a3 listenerID:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A31040;
    v11[3] = &unk_1E743F318;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [(IDSDaemonListener *)self _performSyncBlock:v11];
  }
}

- (id)pendingInvitationsForService:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_195A006B4;
  v15 = sub_195A03D00;
  v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A31B58;
  v8[3] = &unk_1E743EA08;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(IDSDaemonListener *)self _performSyncBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)receivedInvitationsForService:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_195A006B4;
  v15 = sub_195A03D00;
  v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A31CEC;
  v8[3] = &unk_1E743EA08;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(IDSDaemonListener *)self _performSyncBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (int64_t)maxEffectivePayloadSizeForService:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A31E20;
  v8[3] = &unk_1E743EA08;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(IDSDaemonListener *)self _performSyncBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (int64_t)maxIMLPayloadSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A31F3C;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)latestPrivateLoggingSalt
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A006B4;
  v9 = sub_195A03D00;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A32050;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)registrationFailedForAccount:(id)a3 needsDeletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A32120;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v10];
}

- (void)refreshRegistrationForAccount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_195B28F04();
  }

  v6 = [MEMORY[0x1E69A53C0] sharedInstance];
  [v6 flushCache];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A32270;
  v8[3] = &unk_1E743F4E0;
  v9 = v4;
  v7 = v4;
  [(IDSDaemonListener *)self _callHandlersWithBlock:v8];
}

- (id)dependentDevicesForAccount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  v7 = 0;
  if (v4 && (v6 & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_195A006B4;
    v16 = sub_195A03D00;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A3242C;
    v9[3] = &unk_1E743EA08;
    v11 = &v12;
    v9[4] = self;
    v10 = v4;
    [(IDSDaemonListener *)self _performSyncBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

- (id)linkedDevicesForService:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  v7 = 0;
  if (v4 && (v6 & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_195A006B4;
    v16 = sub_195A03D00;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A325D8;
    v9[3] = &unk_1E743EA08;
    v11 = &v12;
    v9[4] = self;
    v10 = v4;
    [(IDSDaemonListener *)self _performSyncBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

- (void)device:(id)a3 nsuuidChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A3273C;
    v9[3] = &unk_1E743E620;
    v10 = v7;
    v11 = v6;
    v12 = self;
    [(IDSDaemonListener *)self _performSyncBlock:v9];

    v8 = v10;
  }

  else
  {
    v8 = [MEMORY[0x1E69A6138] NSUUID];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "No device ID: can't update nsuuid. Bailing...", buf, 2u);
    }
  }
}

- (void)didGetIdentities:(id)a3 error:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Did get identities {identities: %@, error: %@}", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didSwitchActivePairedDevice:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A32D94;
  v6[3] = &unk_1E743EA30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(IDSDaemonListener *)self _performSyncBlock:v6];
}

- (void)_internalDidSwitchActivePairedDevice:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A33084;
  v14[3] = &unk_1E743F620;
  v15 = v6;
  v16 = v7;
  v17 = v18;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A331B8;
  v10[3] = &unk_1E743F648;
  v13 = v18;
  v10[4] = self;
  v8 = v16;
  v11 = v8;
  v9 = v15;
  v12 = v9;
  [(IDSDaemonListener *)self _callHandlersWithBlockOnIvarQueue:v14 cleanup:v10];

  _Block_object_dispose(v18, 8);
}

- (void)switchActivePairedDevice:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v8 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "New active unique ID is nil";
LABEL_8:
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (![v7 length])
  {
    v8 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Account unique ID is nil, can't switch active device ID";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A335C8;
  v10[3] = &unk_1E743E620;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  [(IDSDaemonListener *)self _performSyncBlock:v10];

LABEL_10:
}

- (void)_internalSwitchActivePairedDevice:(id)a3 forService:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v28;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Switching active device to %@ for service %@", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_serviceToLinkedDevices objectForKey:v6];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v6;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Current linked devices for service %@: %@", buf, 0x16u);
  }

  v26 = v6;

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v9 mutableCopy];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    v14 = *MEMORY[0x1E69A4C00];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v16];
        [(IDSDaemonListener *)self _uniqueIDForDevice:v17];
        v19 = v18 = self;
        v20 = [v19 isEqualToIgnoringCase:v28];
        v21 = [MEMORY[0x1E696AD98] numberWithBool:v20];
        [v17 setObject:v21 forKey:v14];

        [v9 removeObject:v16];
        [v9 addObject:v17];

        self = v18;
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  if (v26 && v9)
  {
    [(NSMutableDictionary *)self->_serviceToLinkedDevices setObject:v9 forKey:v26];
    v22 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v26;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "New linked devices for service %@: %@", buf, 0x16u);
    }
  }

  if (v28 && v26)
  {
    [(NSMutableDictionary *)self->_serviceToActiveDeviceUniqueID setObject:v28 forKey:v26];
    v23 = [MEMORY[0x1E69A6138] activeID];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NSMutableDictionary *)self->_serviceToActiveDeviceUniqueID objectForKey:v26];
      *buf = 138412290;
      v35 = v24;
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "Active paired device switched, updating activeDevice ID to %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)switchActivePairedDevice:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v8 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "New active unique ID is nil";
LABEL_8:
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (![v7 length])
  {
    v8 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Account unique ID is nil, can't switch active device ID";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A33AFC;
  v10[3] = &unk_1E743E620;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  [(IDSDaemonListener *)self _performSyncBlock:v10];

LABEL_10:
}

- (void)_internalSwitchActivePairedDevice:(id)a3 forAccount:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v28;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Switching active device to %@ for account %@", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_accountToDevices objectForKey:v6];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v6;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Current devices for account %@: %@", buf, 0x16u);
  }

  v26 = v6;

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v9 mutableCopy];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    v14 = *MEMORY[0x1E69A4C00];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v16];
        [(IDSDaemonListener *)self _uniqueIDForDevice:v17];
        v19 = v18 = self;
        v20 = [v19 isEqualToIgnoringCase:v28];
        v21 = [MEMORY[0x1E696AD98] numberWithBool:v20];
        [v17 setObject:v21 forKey:v14];

        [v9 removeObject:v16];
        [v9 addObject:v17];

        self = v18;
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  if (v26 && v9)
  {
    [(NSMutableDictionary *)self->_accountToDevices setObject:v9 forKey:v26];
    v22 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v26;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "New devices for account %@", buf, 0xCu);
    }
  }

  if (v28 && v26)
  {
    [(NSMutableDictionary *)self->_accountToActiveDeviceUniqueID setObject:v28 forKey:v26];
    v23 = [MEMORY[0x1E69A6138] activeID];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NSMutableDictionary *)self->_accountToActiveDeviceUniqueID objectForKey:v26];
      *buf = 138412290;
      v35 = v24;
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "Active paired device switched, updating activeDevice ID to %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)deactivatePairedDevices
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195A33F30;
  v2[3] = &unk_1E743E878;
  v2[4] = self;
  [(IDSDaemonListener *)self _performSyncBlock:v2];
}

- (void)setupCompleteWithInfo:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Setup complete with info", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A3483C;
  v7[3] = &unk_1E743EA30;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(IDSDaemonListener *)self _performSyncBlock:v7];
}

- (id)getDirectMessagingMetadataDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A006B4;
  v9 = sub_195A03D00;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A35CDC;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonListener *)self _performSyncBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)connectionComplete:(BOOL)a3 withResponse:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A35DD4;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(IDSDaemonListener *)self _performSyncBlock:v7];
}

- (void)xpcObject:(id)a3 objectContext:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSLogging DaemonListener];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "XPC object received %@:%@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A35FBC;
  v12[3] = &unk_1E743F508;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(IDSDaemonListener *)self _callHandlersWithBlockOnIvarQueue:v12 cleanup:&unk_1F09E5DE0];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_195A006B4;
  v10 = sub_195A03D00;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A36124;
  v5[3] = &unk_1E743F670;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(IDSDaemonListener *)self _performSyncBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 retainArguments];
  v5 = +[IDSDaemonController sharedInstance];
  v6 = [v5 localObject];
  v7 = [v6 _currentMessageContext];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A36318;
  v14[3] = &unk_1E743F698;
  v14[4] = self;
  v8 = v4;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = MEMORY[0x19A8BBEF0](v14);
  if ([v9 isReply] && _os_feature_enabled_impl())
  {
    v10[2](v10, 1);
  }

  else
  {
    internalQueueController = self->_internalQueueController;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A367F8;
    v12[3] = &unk_1E743E850;
    v13 = v10;
    [(IDSInternalQueueController *)internalQueueController performBlock:v12];
  }
}

- (void)continuityDidUpdateStateToState:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A36878;
  v3[3] = &unk_1E743F6B8;
  v3[4] = a3;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v3];
}

- (void)continuityDidLosePeer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A3696C;
  v6[3] = &unk_1E743F4E0;
  v7 = v4;
  v5 = v4;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v6];
}

- (void)continuityDidStartAdvertisingOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A36A38;
  v3[3] = &unk_1E743F6B8;
  v3[4] = a3;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v3];
}

- (void)continuityDidStopAdvertisingOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A36B04;
  v3[3] = &unk_1E743F6B8;
  v3[4] = a3;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v3];
}

- (void)continuityDidStopAdvertisingOfType:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A36BFC;
  v8[3] = &unk_1E743F530;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v8];
}

- (void)continuityDidFailToStartAdvertisingOfType:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A36CF4;
  v8[3] = &unk_1E743F530;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v8];
}

- (void)continuityDidStartScanningForType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A36DC0;
  v3[3] = &unk_1E743F6B8;
  v3[4] = a3;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v3];
}

- (void)continuityDidStopScanningForType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A36E8C;
  v3[3] = &unk_1E743F6B8;
  v3[4] = a3;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v3];
}

- (void)continuityDidFailToStartScanningForType:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A36F84;
  v8[3] = &unk_1E743F530;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v8];
}

- (void)continuityDidDiscoverType:(int64_t)a3 withData:(id)a4 fromPeer:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A370A8;
  v12[3] = &unk_1E743F6E0;
  v14 = v9;
  v15 = a3;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v12];
}

- (void)continuityDidDiscoverPeerWithData:(id)a3 fromPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A371C8;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v10];
}

- (void)continuityDidConnectToPeer:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A372E4;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v10];
}

- (void)continuityDidDisconnectFromPeer:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A37400;
  v10[3] = &unk_1E743F508;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v10];
}

- (void)deviceIdentifierDidChange:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_195B29114(self);
  }

  if ([v4 isEqualToIgnoringCase:self->_deviceIdentifier])
  {
    v6 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2918C(v6);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A375DC;
    v10[3] = &unk_1E743EA30;
    v10[4] = self;
    v7 = v4;
    v11 = v7;
    [(IDSDaemonListener *)self _performSyncBlock:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195A375E8;
    v8[3] = &unk_1E743F4E0;
    v9 = v7;
    [(IDSDaemonListener *)self _callHandlersAsyncWithBlock:v8];
  }
}

@end