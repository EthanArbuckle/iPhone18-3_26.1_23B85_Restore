@interface MRRapportTransportConnection
- (BOOL)_targetDeviceMatch:(id)a3 deviceUID:(id)a4;
- (MRRapportTransportConnection)initWithCompanionLinkClient:(id)a3 device:(id)a4 sessionUID:(id)a5;
- (MRRapportTransportConnection)initWithDeviceUID:(id)a3 sessionUID:(id)a4 targetDevice:(id *)a5 error:(id *)a6;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)_registerCallbacks;
- (void)closeWithError:(id)a3;
@end

@implementation MRRapportTransportConnection

- (MRRapportTransportConnection)initWithCompanionLinkClient:(id)a3 device:(id)a4 sessionUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MRRapportTransportConnection;
  v12 = [(MRExternalDeviceTransportConnection *)&v17 initWithDataSource:self];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUID, a5);
    objc_storeStrong(&v13->_connection, a3);
    [(RPCompanionLinkClient *)v13->_connection setDestinationDevice:v10];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.remotecontrol.event.%@", v13->_sessionUID];
    eventID = v13->_eventID;
    v13->_eventID = v14;

    [(MRRapportTransportConnection *)v13 _registerCallbacks];
  }

  return v13;
}

- (MRRapportTransportConnection)initWithDeviceUID:(id)a3 sessionUID:(id)a4 targetDevice:(id *)a5 error:(id *)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v33 = a4;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__50;
  v59 = __Block_byref_object_dispose__50;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__50;
  v53 = __Block_byref_object_dispose__50;
  v54 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69C6B70]);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.mediaremote.MRRapportTransportConnection.rapport", v8);
  [v7 setDispatchQueue:v9];

  v10 = dispatch_semaphore_create(0);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke;
  v46[3] = &unk_1E769A2F0;
  v48 = &v55;
  v11 = v10;
  v47 = v11;
  [v7 activateWithCompletion:v46];
  v12 = dispatch_time(0, 7000000000);
  if (dispatch_semaphore_wait(v11, v12) >= 1)
  {
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 format:{@"Failed to activate companionLinkClient in %d seconds", 7}];
    v14 = v56[5];
    v56[5] = v13;
  }

  if (v56[5])
  {
    goto LABEL_16;
  }

  v15 = dispatch_semaphore_create(0);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke_2;
  v41[3] = &unk_1E76A47A0;
  v16 = self;
  v42 = v16;
  v17 = v36;
  v43 = v17;
  v45 = &v49;
  v18 = v15;
  v44 = v18;
  [v7 setDeviceFoundHandler:v41];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = [v7 activeDevices];
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v65 count:16];
  if (v20)
  {
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        if ([(MRRapportTransportConnection *)v16 _targetDeviceMatch:v23 deviceUID:v17])
        {
          objc_storeStrong(v50 + 5, v23);
          dispatch_semaphore_signal(v18);
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v37 objects:v65 count:16];
    }

    while (v20);
  }

  v24 = dispatch_time(0, 7000000000);
  if (dispatch_semaphore_wait(v18, v24) >= 1)
  {
    v25 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 format:{@"Failed to discover companionLinkDevice for %@ in %d seconds", v17, 7}];
    v26 = v56[5];
    v56[5] = v25;
  }

  if (v56[5])
  {
LABEL_16:
    v27 = MRLogCategoryConnections();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v56[5];
      *buf = 138543618;
      v62 = v28;
      v63 = 2112;
      v64 = v36;
      _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_ERROR, "[MRRapportTransportConnection] Error %{public}@ creating rapportTransportConnection for %@", buf, 0x16u);
    }

    v29 = 0;
    if (a6)
    {
      *a6 = v56[5];
    }
  }

  else
  {
    if (a5)
    {
      *a5 = v50[5];
    }

    v29 = [(MRRapportTransportConnection *)v16 initWithCompanionLinkClient:v7 device:v50[5] sessionUID:v33];
    self = v29;
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

void __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = v4;
  if ([*(a1 + 32) _targetDeviceMatch:? deviceUID:?])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

- (unint64_t)sendTransportData:(id)a3 options:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:@"data"];
  v8 = MRLogCategoryConnections();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 length];
    v22 = [(RPCompanionLinkClient *)self->_connection destinationDevice];
    v10 = [v22 effectiveIdentifier];
    v11 = [(RPCompanionLinkClient *)self->_connection destinationDevice];
    v12 = [v11 name];
    v13 = [(MRExternalDeviceTransportConnection *)self destinationOutputDeviceUID];
    v14 = [(MRRapportTransportConnection *)self sessionUID];
    *buf = 134219010;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRRapportTransportConnection] Writing %llu bytes to device=%{public}@(%{public}@) destination=%{public}@, session=%{public}@", buf, 0x34u);
  }

  objc_initWeak(buf, self);
  connection = self->_connection;
  v16 = [(MRRapportTransportConnection *)self eventID];
  v17 = [(RPCompanionLinkClient *)self->_connection destinationDevice];
  v18 = [v17 effectiveIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__MRRapportTransportConnection_sendTransportData_options___block_invoke;
  v24[3] = &unk_1E769D2F8;
  objc_copyWeak(&v25, buf);
  [(RPCompanionLinkClient *)connection sendEventID:v16 event:v7 destinationID:v18 options:0 completion:v24];

  v19 = [v6 length];
  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __58__MRRapportTransportConnection_sendTransportData_options___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 format:{@"companionLinkClient.sendEvent error %@", v5}];
    [WeakRetained closeWithError:v4];
  }
}

- (void)closeWithError:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  [(RPCompanionLinkClient *)connection invalidate];
  [(MRExternalDeviceTransportConnection *)self _notifyDelegateDidCloseWithError:v5];
}

- (BOOL)_targetDeviceMatch:(id)a3 deviceUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 effectiveIdentifier];
  if ([v7 isEqualToString:v6])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 mediaRouteIdentifier];
    v8 = [v9 isEqualToString:v6];
  }

  return v8;
}

- (void)_registerCallbacks
{
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__MRRapportTransportConnection__registerCallbacks__block_invoke;
  v9[3] = &unk_1E769B178;
  objc_copyWeak(&v10, &location);
  [(RPCompanionLinkClient *)self->_connection setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MRRapportTransportConnection__registerCallbacks__block_invoke_2;
  v7[3] = &unk_1E76A47C8;
  objc_copyWeak(&v8, &location);
  [(RPCompanionLinkClient *)self->_connection setDeviceLostHandler:v7];
  connection = self->_connection;
  v4 = [(MRRapportTransportConnection *)self eventID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRRapportTransportConnection__registerCallbacks__block_invoke_3;
  v5[3] = &unk_1E76A47F0;
  objc_copyWeak(&v6, &location);
  [(RPCompanionLinkClient *)connection registerEventID:v4 options:0 handler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__MRRapportTransportConnection__registerCallbacks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 description:@"companionLinkClient.invalidation"];
    [v3 closeWithError:v2];

    WeakRetained = v3;
  }
}

void __50__MRRapportTransportConnection__registerCallbacks__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[10] destinationDevice];
    v6 = [v5 effectiveIdentifier];
    v7 = [v4 _targetDeviceMatch:v9 deviceUID:v6];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 description:@"companionLinkClient.deviceLost"];
      [v4 closeWithError:v8];
    }
  }
}

void __50__MRRapportTransportConnection__registerCallbacks__block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 objectForKeyedSubscript:@"data"];
    if (v5)
    {
      v6 = MRLogCategoryConnections();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 length];
        v14 = [WeakRetained[10] destinationDevice];
        v8 = [v14 effectiveIdentifier];
        v9 = [WeakRetained[10] destinationDevice];
        v10 = [v9 name];
        v11 = [WeakRetained destinationOutputDeviceUID];
        v12 = [WeakRetained sessionUID];
        *buf = 134219010;
        v16 = v7;
        v17 = 2114;
        v18 = v8;
        v19 = 2114;
        v20 = v10;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRRapportTransportConnection] Reading %llu bytes from device=%{public}@(%{public}@) destination=%{public}@, session=%{public}@", buf, 0x34u);
      }

      [WeakRetained _notifyDelegateDidReceiveData:v5];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end