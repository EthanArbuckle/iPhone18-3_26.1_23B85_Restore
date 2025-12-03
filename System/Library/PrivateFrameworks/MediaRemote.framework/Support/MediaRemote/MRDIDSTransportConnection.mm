@interface MRDIDSTransportConnection
- (MRDIDSTransportConnection)initWithConnection:(id)connection type:(id)type destination:(id)destination session:(id)session;
- (NSString)debugDescription;
- (id)_exportDescriptorForOutputDevice:(id)device endpoint:(id)endpoint remoteControl:(BOOL)control;
- (id)error;
- (id)exportEndpoint:(id)endpoint;
- (id)exportOutputDevice:(id)device endpoint:(id)endpoint;
- (int64_t)_idsPriorityFromPriority:(int64_t)priority;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)closeWithError:(id)error;
- (void)dealloc;
@end

@implementation MRDIDSTransportConnection

- (MRDIDSTransportConnection)initWithConnection:(id)connection type:(id)type destination:(id)destination session:(id)session
{
  connectionCopy = connection;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = MRDIDSTransportConnection;
  v15 = [(MRDIDSTransportConnection *)&v22 initWithDataSource:self];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, connection);
    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v16->_destination, destination);
    objc_storeStrong(&v16->_session, session);
    objc_initWeak(&location, v16);
    connection = v16->_connection;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000BBF18;
    v19[3] = &unk_1004BA888;
    objc_copyWeak(&v20, &location);
    [(MRDIDSServiceConnection *)connection setMessageHandler:v19 forType:v16->_type destination:v16->_destination session:sessionCopy];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (void)dealloc
{
  v3 = [[NSError alloc] initWithMRError:104 description:@"MRIDSCompanionTransportConnection.dealloc"];
  [(MRDIDSTransportConnection *)self closeWithError:v3];

  v4.receiver = self;
  v4.super_class = MRDIDSTransportConnection;
  [(MRDIDSTransportConnection *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" connection = %@\n", v6];

  [v3 appendFormat:@" type = %@\n", selfCopy->_type];
  [v3 appendFormat:@" destination = %@\n", selfCopy->_destination];
  [v3 appendFormat:@" session = %@\n", selfCopy->_session];
  isValid = [(MRDIDSTransportConnection *)selfCopy isValid];
  v8 = @"NO";
  if (isValid)
  {
    v8 = @"YES";
  }

  [v3 appendFormat:@" isValid = %@\n", v8];
  [v3 appendFormat:@" error = %@\n", selfCopy->_error];
  objc_sync_exit(selfCopy);

  [v3 appendString:@"}>"];

  return v3;
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
  optionsCopy = options;
  dataCopy = data;
  v8 = -[MRDIDSTransportConnection _idsPriorityFromPriority:](self, "_idsPriorityFromPriority:", [optionsCopy priority]);
  isWaking = [optionsCopy isWaking];

  if (isWaking)
  {
    v10 = 0;
  }

  else
  {
    v13 = IDSSendMessageOptionNonWakingKey;
    v14 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  [(MRDIDSServiceConnection *)self->_connection sendMessage:dataCopy type:self->_type destination:self->_destination session:self->_session options:v10 priority:v8];
  v11 = [dataCopy length];

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
    [(MRDIDSServiceConnection *)connection removeMessageHandlerForType:selfCopy->_type destination:selfCopy->_destination session:selfCopy->_session];
    v6 = errorCopy;
    if (!errorCopy)
    {
      v6 = [[NSError alloc] initWithMRError:104];
    }

    errorCopy = v6;
    objc_storeStrong(&selfCopy->_error, v6);
    v7 = selfCopy->_connection;
    selfCopy->_connection = 0;

    objc_sync_exit(selfCopy);
    [(MRDIDSTransportConnection *)selfCopy _notifyDelegateDidCloseWithError:errorCopy];
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
    v6 = [(MRDIDSTransportConnection *)self _exportDescriptorForOutputDevice:groupLeader endpoint:endpointCopy remoteControl:1];

    if (v6)
    {
      outputDevices = [endpointCopy outputDevices];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000BC61C;
      v18 = &unk_1004B9AD0;
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

- (id)exportOutputDevice:(id)device endpoint:(id)endpoint
{
  v4 = [(MRDIDSTransportConnection *)self _exportDescriptorForOutputDevice:device endpoint:endpoint remoteControl:0];
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
    return qword_10044E8B8[priority];
  }
}

- (id)_exportDescriptorForOutputDevice:(id)device endpoint:(id)endpoint remoteControl:(BOOL)control
{
  controlCopy = control;
  deviceCopy = device;
  endpointCopy = endpoint;
  descriptor = [deviceCopy descriptor];
  [descriptor setTransportType:4];
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
    [v11 deviceClass];
    [descriptor setHostDeviceClass:_MRDeviceInfoMessageProtobuf_DeviceClassFromModel()];
    modelID = [v11 modelID];
    [descriptor setModelID:modelID];

    v15 = IDSCopyLocalDeviceUniqueID();
    [descriptor setPrimaryUID:v15];

    if (v12)
    {
      groupUID = [v11 groupUID];
      [descriptor setGroupID:groupUID];

      [descriptor setGroupContainsGroupLeader:1];
      [descriptor setIsRemoteControllable:1];
      [descriptor setIsGroupLeader:1];
      [descriptor setIsLocalDevice:0];
      outputDevices = [endpointCopy outputDevices];
      [descriptor setIsProxyGroupPlayer:{objc_msgSend(outputDevices, "mr_any:", &stru_1004BAC08)}];
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
      }
    }

    if (controlCopy)
    {
      wHAIdentifier = [v11 WHAIdentifier];
      [descriptor setUniqueIdentifier:wHAIdentifier];

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