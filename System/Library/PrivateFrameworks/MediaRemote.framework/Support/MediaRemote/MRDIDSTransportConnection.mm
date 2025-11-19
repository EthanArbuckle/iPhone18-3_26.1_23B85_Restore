@interface MRDIDSTransportConnection
- (MRDIDSTransportConnection)initWithConnection:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6;
- (NSString)debugDescription;
- (id)_exportDescriptorForOutputDevice:(id)a3 endpoint:(id)a4 remoteControl:(BOOL)a5;
- (id)error;
- (id)exportEndpoint:(id)a3;
- (id)exportOutputDevice:(id)a3 endpoint:(id)a4;
- (int64_t)_idsPriorityFromPriority:(int64_t)a3;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)closeWithError:(id)a3;
- (void)dealloc;
@end

@implementation MRDIDSTransportConnection

- (MRDIDSTransportConnection)initWithConnection:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = MRDIDSTransportConnection;
  v15 = [(MRDIDSTransportConnection *)&v22 initWithDataSource:self];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, a3);
    objc_storeStrong(&v16->_type, a4);
    objc_storeStrong(&v16->_destination, a5);
    objc_storeStrong(&v16->_session, a6);
    objc_initWeak(&location, v16);
    connection = v16->_connection;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000BBF18;
    v19[3] = &unk_1004BA888;
    objc_copyWeak(&v20, &location);
    [(MRDIDSServiceConnection *)connection setMessageHandler:v19 forType:v16->_type destination:v16->_destination session:v14];
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
  v4 = self;
  objc_sync_enter(v4);
  connection = v4->_connection;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" connection = %@\n", v6];

  [v3 appendFormat:@" type = %@\n", v4->_type];
  [v3 appendFormat:@" destination = %@\n", v4->_destination];
  [v3 appendFormat:@" session = %@\n", v4->_session];
  v7 = [(MRDIDSTransportConnection *)v4 isValid];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  [v3 appendFormat:@" isValid = %@\n", v8];
  [v3 appendFormat:@" error = %@\n", v4->_error];
  objc_sync_exit(v4);

  [v3 appendString:@"}>"];

  return v3;
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
  v6 = a4;
  v7 = a3;
  v8 = -[MRDIDSTransportConnection _idsPriorityFromPriority:](self, "_idsPriorityFromPriority:", [v6 priority]);
  v9 = [v6 isWaking];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v13 = IDSSendMessageOptionNonWakingKey;
    v14 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  [(MRDIDSServiceConnection *)self->_connection sendMessage:v7 type:self->_type destination:self->_destination session:self->_session options:v10 priority:v8];
  v11 = [v7 length];

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
    [(MRDIDSServiceConnection *)connection removeMessageHandlerForType:v4->_type destination:v4->_destination session:v4->_session];
    v6 = v8;
    if (!v8)
    {
      v6 = [[NSError alloc] initWithMRError:104];
    }

    v8 = v6;
    objc_storeStrong(&v4->_error, v6);
    v7 = v4->_connection;
    v4->_connection = 0;

    objc_sync_exit(v4);
    [(MRDIDSTransportConnection *)v4 _notifyDelegateDidCloseWithError:v8];
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
    v6 = [(MRDIDSTransportConnection *)self _exportDescriptorForOutputDevice:v5 endpoint:v4 remoteControl:1];

    if (v6)
    {
      v7 = [v4 outputDevices];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000BC61C;
      v18 = &unk_1004B9AD0;
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

- (id)exportOutputDevice:(id)a3 endpoint:(id)a4
{
  v4 = [(MRDIDSTransportConnection *)self _exportDescriptorForOutputDevice:a3 endpoint:a4 remoteControl:0];
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
    return qword_10044E8B8[a3];
  }
}

- (id)_exportDescriptorForOutputDevice:(id)a3 endpoint:(id)a4 remoteControl:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 descriptor];
  [v9 setTransportType:4];
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
    [v11 deviceClass];
    [v9 setHostDeviceClass:_MRDeviceInfoMessageProtobuf_DeviceClassFromModel()];
    v14 = [v11 modelID];
    [v9 setModelID:v14];

    v15 = IDSCopyLocalDeviceUniqueID();
    [v9 setPrimaryUID:v15];

    if (v12)
    {
      v16 = [v11 groupUID];
      [v9 setGroupID:v16];

      [v9 setGroupContainsGroupLeader:1];
      [v9 setIsRemoteControllable:1];
      [v9 setIsGroupLeader:1];
      [v9 setIsLocalDevice:0];
      v17 = [v8 outputDevices];
      [v9 setIsProxyGroupPlayer:{objc_msgSend(v17, "mr_any:", &stru_1004BAC08)}];
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
      v20 = [v7 sourceInfo];
      v21 = [v20 multipleBuiltInDevices];

      if ((v21 & 1) == 0)
      {
        v22 = [v11 localizedModelName];
        [v9 setName:v22];
      }
    }

    if (v5)
    {
      v23 = [v11 WHAIdentifier];
      [v9 setUniqueIdentifier:v23];

      v19 = [v11 localizedModelName];
      [v9 setName:v19];
      goto LABEL_16;
    }
  }

  else if (([v8 isLocalEndpoint] & v12) == 1)
  {
    [v9 setIsRemoteControllable:1];
    [v9 setIsGroupLeader:0];
    v18 = [v7 groupID];

    if (!v18)
    {
      v19 = [v11 groupUID];
      [v9 setGroupID:v19];
LABEL_16:
    }
  }

  return v9;
}

@end