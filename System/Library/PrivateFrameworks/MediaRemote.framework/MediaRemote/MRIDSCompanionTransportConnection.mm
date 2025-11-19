@interface MRIDSCompanionTransportConnection
- (MRIDSCompanionTransportConnection)initWithConnection:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6;
- (id)_exportDescriptorForOutputDevice:(id)a3 endpoint:(id)a4 remoteControl:(BOOL)a5;
- (id)error;
- (id)exportEndpoint:(id)a3;
- (id)exportOutputDevice:(id)a3 endpoint:(id)a4;
- (int64_t)_idsPriorityFromPriority:(int64_t)a3;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)closeWithError:(id)a3;
- (void)dealloc;
@end

@implementation MRIDSCompanionTransportConnection

- (MRIDSCompanionTransportConnection)initWithConnection:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = MRIDSCompanionTransportConnection;
  v15 = [(MRExternalDeviceTransportConnection *)&v22 initWithDataSource:self];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, a3);
    objc_storeStrong(&v16->_type, a4);
    objc_storeStrong(&v16->_destination, a5);
    objc_storeStrong(&v16->_session, a6);
    objc_initWeak(&location, v16);
    connection = v16->_connection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__MRIDSCompanionTransportConnection_initWithConnection_type_destination_session___block_invoke;
    v19[3] = &unk_1E769CC80;
    objc_copyWeak(&v20, &location);
    [(MRIDSCompanionConnection *)connection setMessageHandler:v19 forType:v16->_type destination:v16->_destination session:v14];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __81__MRIDSCompanionTransportConnection_initWithConnection_type_destination_session___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 data];

  [WeakRetained ingestData:v4];
}

- (void)dealloc
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:104 description:@"MRIDSCompanionTransportConnection.dealloc"];
  [(MRIDSCompanionTransportConnection *)self closeWithError:v3];

  v4.receiver = self;
  v4.super_class = MRIDSCompanionTransportConnection;
  [(MRIDSCompanionTransportConnection *)&v4 dealloc];
}

- (id)error
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSError *)v2->_error copy];
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)sendTransportData:(id)a3 options:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = -[MRIDSCompanionTransportConnection _idsPriorityFromPriority:](self, "_idsPriorityFromPriority:", [v6 priority]);
  v9 = [v6 isWaking];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v14 = *MEMORY[0x1E69A47C0];
    v15[0] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  [(MRIDSCompanionConnection *)self->_connection sendMessage:v7 type:self->_type destination:self->_destination session:self->_session options:v10 priority:v8];
  v11 = [v7 length];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)closeWithError:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  connection = v4->_connection;
  if (connection)
  {
    [(MRIDSCompanionConnection *)connection removeMessageHandlerForType:v4->_type destination:v4->_destination session:v4->_session];
    v6 = v8;
    if (!v8)
    {
      v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:104];
    }

    v8 = v6;
    objc_storeStrong(&v4->_error, v6);
    v7 = v4->_connection;
    v4->_connection = 0;

    objc_sync_exit(v4);
    [(MRExternalDeviceTransportConnection *)v4 _notifyDelegateDidCloseWithError:v8];
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (id)exportEndpoint:(id)a3
{
  v4 = a3;
  if ([v4 isLocalEndpoint])
  {
    v5 = [v4 groupLeader];
    v6 = [(MRIDSCompanionTransportConnection *)self _exportDescriptorForOutputDevice:v5 endpoint:v4 remoteControl:1];

    if (v6)
    {
      v7 = [v4 outputDevices];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __52__MRIDSCompanionTransportConnection_exportEndpoint___block_invoke;
      v18 = &unk_1E769CCA8;
      v19 = self;
      v8 = v4;
      v20 = v8;
      v9 = [v7 mr_compactMap:&v15];
      v10 = [v9 mutableCopy];

      [v10 addObject:v6];
      v11 = [v8 descriptor];
      [v11 setDesignatedGroupLeader:v6];
      [v11 setOutputDevices:v10];
      v12 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [v4 designatedGroupLeader];
    v12 = [v13 uid];

    if (v12)
    {
      v12 = v4;
    }
  }

  return v12;
}

id __52__MRIDSCompanionTransportConnection_exportEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalDevice])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) _exportDescriptorForOutputDevice:v3 endpoint:*(a1 + 40) remoteControl:1];
  }

  return v4;
}

- (id)exportOutputDevice:(id)a3 endpoint:(id)a4
{
  v4 = [(MRIDSCompanionTransportConnection *)self _exportDescriptorForOutputDevice:a3 endpoint:a4 remoteControl:0];
  v5 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v4];

  return v5;
}

- (int64_t)_idsPriorityFromPriority:(int64_t)a3
{
  if (a3 > 5)
  {
    return 100;
  }

  else
  {
    return qword_1A2B80E08[a3];
  }
}

- (id)_exportDescriptorForOutputDevice:(id)a3 endpoint:(id)a4 remoteControl:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 descriptor];
  [v9 setTransportType:3];
  v10 = +[MROrigin localOrigin];
  v11 = [MRDeviceInfoRequest deviceInfoForOrigin:v10];

  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v13 = [v7 uid];
    v12 = [v8 containsOutputDeviceWithUID:v13];
  }

  if ([v7 isLocalDevice])
  {
    [v9 setHostDeviceClass:{_MRDeviceInfoMessageProtobuf_DeviceClassFromModel(objc_msgSend(v11, "deviceClass"))}];
    v14 = [v11 WHAIdentifier];
    [v9 setPrimaryUID:v14];

    if (v12)
    {
      v15 = [v11 groupUID];
      [v9 setGroupID:v15];

      [v9 setGroupContainsGroupLeader:1];
      [v9 setIsRemoteControllable:1];
      [v9 setIsGroupLeader:1];
      [v9 setIsLocalDevice:0];
      v16 = [v8 outputDevices];
      [v9 setIsProxyGroupPlayer:{objc_msgSend(v16, "mr_any:", &__block_literal_global_28)}];
    }

    else
    {
      [v9 setGroupID:0];
      [v9 setGroupContainsGroupLeader:0];
      [v9 setIsRemoteControllable:0];
      [v9 setIsGroupLeader:0];
      [v9 setIsLocalDevice:0];
      [v9 setIsProxyGroupPlayer:0];
    }

    if ([v7 deviceType] == 4)
    {
      v19 = [v7 sourceInfo];
      v20 = [v19 multipleBuiltInDevices];

      if ((v20 & 1) == 0)
      {
        v21 = [v11 localizedModelName];
        [v9 setName:v21];

        v22 = [v11 modelID];
        [v9 setModelID:v22];
      }
    }

    if (v5)
    {
      v23 = [v11 WHAIdentifier];
      [v9 setUniqueIdentifier:v23];

      v18 = [v11 localizedModelName];
      [v9 setName:v18];
      goto LABEL_16;
    }
  }

  else if (([v8 isLocalEndpoint] & v12) == 1)
  {
    [v9 setIsRemoteControllable:1];
    [v9 setIsGroupLeader:0];
    v17 = [v7 groupID];

    if (!v17)
    {
      v18 = [v11 groupUID];
      [v9 setGroupID:v18];
LABEL_16:
    }
  }

  return v9;
}

@end