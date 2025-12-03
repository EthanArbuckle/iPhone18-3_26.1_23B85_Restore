@interface MRIDSCompanionTransportConnection
- (MRIDSCompanionTransportConnection)initWithConnection:(id)connection type:(id)type destination:(id)destination session:(id)session;
- (id)_exportDescriptorForOutputDevice:(id)device endpoint:(id)endpoint remoteControl:(BOOL)control;
- (id)error;
- (id)exportEndpoint:(id)endpoint;
- (id)exportOutputDevice:(id)device endpoint:(id)endpoint;
- (int64_t)_idsPriorityFromPriority:(int64_t)priority;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)closeWithError:(id)error;
- (void)dealloc;
@end

@implementation MRIDSCompanionTransportConnection

- (MRIDSCompanionTransportConnection)initWithConnection:(id)connection type:(id)type destination:(id)destination session:(id)session
{
  connectionCopy = connection;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = MRIDSCompanionTransportConnection;
  v15 = [(MRExternalDeviceTransportConnection *)&v22 initWithDataSource:self];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, connection);
    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v16->_destination, destination);
    objc_storeStrong(&v16->_session, session);
    objc_initWeak(&location, v16);
    connection = v16->_connection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__MRIDSCompanionTransportConnection_initWithConnection_type_destination_session___block_invoke;
    v19[3] = &unk_1E769CC80;
    objc_copyWeak(&v20, &location);
    [(MRIDSCompanionConnection *)connection setMessageHandler:v19 forType:v16->_type destination:v16->_destination session:sessionCopy];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)sendTransportData:(id)data options:(id)options
{
  v15[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dataCopy = data;
  v8 = -[MRIDSCompanionTransportConnection _idsPriorityFromPriority:](self, "_idsPriorityFromPriority:", [optionsCopy priority]);
  isWaking = [optionsCopy isWaking];

  if (isWaking)
  {
    v10 = 0;
  }

  else
  {
    v14 = *MEMORY[0x1E69A47C0];
    v15[0] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  [(MRIDSCompanionConnection *)self->_connection sendMessage:dataCopy type:self->_type destination:self->_destination session:self->_session options:v10 priority:v8];
  v11 = [dataCopy length];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  if (connection)
  {
    [(MRIDSCompanionConnection *)connection removeMessageHandlerForType:selfCopy->_type destination:selfCopy->_destination session:selfCopy->_session];
    v6 = errorCopy;
    if (!errorCopy)
    {
      v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:104];
    }

    errorCopy = v6;
    objc_storeStrong(&selfCopy->_error, v6);
    v7 = selfCopy->_connection;
    selfCopy->_connection = 0;

    objc_sync_exit(selfCopy);
    [(MRExternalDeviceTransportConnection *)selfCopy _notifyDelegateDidCloseWithError:errorCopy];
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (id)exportEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if ([endpointCopy isLocalEndpoint])
  {
    groupLeader = [endpointCopy groupLeader];
    v6 = [(MRIDSCompanionTransportConnection *)self _exportDescriptorForOutputDevice:groupLeader endpoint:endpointCopy remoteControl:1];

    if (v6)
    {
      outputDevices = [endpointCopy outputDevices];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __52__MRIDSCompanionTransportConnection_exportEndpoint___block_invoke;
      v18 = &unk_1E769CCA8;
      selfCopy = self;
      v8 = endpointCopy;
      v20 = v8;
      v9 = [outputDevices mr_compactMap:&v15];
      v10 = [v9 mutableCopy];

      [v10 addObject:v6];
      descriptor = [v8 descriptor];
      [descriptor setDesignatedGroupLeader:v6];
      [descriptor setOutputDevices:v10];
      v12 = [[MRAVDistantEndpoint alloc] initWithDescriptor:descriptor];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    designatedGroupLeader = [endpointCopy designatedGroupLeader];
    v12 = [designatedGroupLeader uid];

    if (v12)
    {
      v12 = endpointCopy;
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

- (id)exportOutputDevice:(id)device endpoint:(id)endpoint
{
  v4 = [(MRIDSCompanionTransportConnection *)self _exportDescriptorForOutputDevice:device endpoint:endpoint remoteControl:0];
  v5 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v4];

  return v5;
}

- (int64_t)_idsPriorityFromPriority:(int64_t)priority
{
  if (priority > 5)
  {
    return 100;
  }

  else
  {
    return qword_1A2B80E08[priority];
  }
}

- (id)_exportDescriptorForOutputDevice:(id)device endpoint:(id)endpoint remoteControl:(BOOL)control
{
  controlCopy = control;
  deviceCopy = device;
  endpointCopy = endpoint;
  descriptor = [deviceCopy descriptor];
  [descriptor setTransportType:3];
  v10 = +[MROrigin localOrigin];
  v11 = [MRDeviceInfoRequest deviceInfoForOrigin:v10];

  if (controlCopy)
  {
    v12 = 1;
  }

  else
  {
    v13 = [deviceCopy uid];
    v12 = [endpointCopy containsOutputDeviceWithUID:v13];
  }

  if ([deviceCopy isLocalDevice])
  {
    [descriptor setHostDeviceClass:{_MRDeviceInfoMessageProtobuf_DeviceClassFromModel(objc_msgSend(v11, "deviceClass"))}];
    wHAIdentifier = [v11 WHAIdentifier];
    [descriptor setPrimaryUID:wHAIdentifier];

    if (v12)
    {
      groupUID = [v11 groupUID];
      [descriptor setGroupID:groupUID];

      [descriptor setGroupContainsGroupLeader:1];
      [descriptor setIsRemoteControllable:1];
      [descriptor setIsGroupLeader:1];
      [descriptor setIsLocalDevice:0];
      outputDevices = [endpointCopy outputDevices];
      [descriptor setIsProxyGroupPlayer:{objc_msgSend(outputDevices, "mr_any:", &__block_literal_global_28)}];
    }

    else
    {
      [descriptor setGroupID:0];
      [descriptor setGroupContainsGroupLeader:0];
      [descriptor setIsRemoteControllable:0];
      [descriptor setIsGroupLeader:0];
      [descriptor setIsLocalDevice:0];
      [descriptor setIsProxyGroupPlayer:0];
    }

    if ([deviceCopy deviceType] == 4)
    {
      sourceInfo = [deviceCopy sourceInfo];
      multipleBuiltInDevices = [sourceInfo multipleBuiltInDevices];

      if ((multipleBuiltInDevices & 1) == 0)
      {
        localizedModelName = [v11 localizedModelName];
        [descriptor setName:localizedModelName];

        modelID = [v11 modelID];
        [descriptor setModelID:modelID];
      }
    }

    if (controlCopy)
    {
      wHAIdentifier2 = [v11 WHAIdentifier];
      [descriptor setUniqueIdentifier:wHAIdentifier2];

      localizedModelName2 = [v11 localizedModelName];
      [descriptor setName:localizedModelName2];
      goto LABEL_16;
    }
  }

  else if (([endpointCopy isLocalEndpoint] & v12) == 1)
  {
    [descriptor setIsRemoteControllable:1];
    [descriptor setIsGroupLeader:0];
    groupID = [deviceCopy groupID];

    if (!groupID)
    {
      localizedModelName2 = [v11 groupUID];
      [descriptor setGroupID:localizedModelName2];
LABEL_16:
    }
  }

  return descriptor;
}

@end