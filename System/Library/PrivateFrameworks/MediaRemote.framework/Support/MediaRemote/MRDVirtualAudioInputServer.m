@interface MRDVirtualAudioInputServer
- (MRDVirtualAudioInputServer)init;
- (MRDVirtualAudioInputServerDelegate)delegate;
- (NSArray)recordingEndpointClients;
- (NSArray)registeredDevices;
- (id)registeredDeviceWithID:(unsigned int)a3;
- (void)_handleGetDevicesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleInputDeviceConnectedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleInputDeviceDisconnectedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRecordingEndpointAvailabilityMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRecordingStateChangedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleVoiceDataReceivedMessage:(id)a3 fromClient:(id)a4;
- (void)clearRecordingEndpointsForClient:(id)a3;
- (void)clearRegisteredDevicesForClient:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
@end

@implementation MRDVirtualAudioInputServer

- (MRDVirtualAudioInputServer)init
{
  v13.receiver = self;
  v13.super_class = MRDVirtualAudioInputServer;
  v2 = [(MRDVirtualAudioInputServer *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    recordingEndpointClients = v2->_recordingEndpointClients;
    v2->_recordingEndpointClients = v3;

    v5 = objc_alloc_init(NSMutableArray);
    registeredDevices = v2->_registeredDevices;
    v2->_registeredDevices = v5;

    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(Name, v9);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v10;
  }

  return v2;
}

- (NSArray)recordingEndpointClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003521C;
  v10 = sub_100035AC4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100176324;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)registeredDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003521C;
  v10 = sub_100035AC4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100176460;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)registeredDeviceWithID:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003521C;
  v12 = sub_100035AC4;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001765A0;
  block[3] = &unk_1004BFE28;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)clearRegisteredDevicesForClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017675C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)clearRecordingEndpointsForClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017692C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 > 0x900000000000003)
  {
    switch(uint64)
    {
      case 0x900000000000004:
        [(MRDVirtualAudioInputServer *)self _handleRecordingStateChangedMessage:xdict fromClient:v6];
        break;
      case 0x900000000000005:
        [(MRDVirtualAudioInputServer *)self _handleVoiceDataReceivedMessage:xdict fromClient:v6];
        break;
      case 0x900000000000006:
        [(MRDVirtualAudioInputServer *)self _handleRecordingEndpointAvailabilityMessage:xdict fromClient:v6];
        break;
    }
  }

  else
  {
    switch(uint64)
    {
      case 0x900000000000001:
        [(MRDVirtualAudioInputServer *)self _handleGetDevicesMessage:xdict fromClient:v6];
        break;
      case 0x900000000000002:
        [(MRDVirtualAudioInputServer *)self _handleInputDeviceConnectedMessage:xdict fromClient:v6];
        break;
      case 0x900000000000003:
        [(MRDVirtualAudioInputServer *)self _handleInputDeviceDisconnectedMessage:xdict fromClient:v6];
        break;
    }
  }
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100176C1C;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)_handleGetDevicesMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  serialQueue = self->_serialQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100176D58;
  v13 = &unk_1004B68F0;
  v14 = self;
  v15 = v6;
  v8 = v6;
  dispatch_sync(serialQueue, &v10);
  v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0, v10, v11, v12, v13, v14];
  sub_10001673C(v5, "MRXPC_VOICE_INPUT_DEVICES_DATA_KEY", v9, 0);
}

- (void)_handleInputDeviceConnectedMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreateDataFromXPCMessage();
  if (v8)
  {
    v9 = MRVirtualVoiceInputDeviceDescriptorCreateFromExternalRepresentation();
    v10 = [[MRDVirtualAudioInputServerDevice alloc] initWithOwningClient:v7];
    [(MRDVirtualAudioInputServerDevice *)v10 setDescriptor:v9];
    v25 = [(MRDVirtualAudioInputServerDevice *)v10 deviceID];
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1003ABD88(v9, v11);
    }

    v12 = [(MRDVirtualAudioInputServer *)self recordingEndpointClients];
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1003ABE00(v12, v13);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v28 + 1) + 8 * i) relayXPCMessage:v6 andReply:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100177168;
    block[3] = &unk_1004B68F0;
    block[4] = self;
    v27 = v10;
    v20 = v10;
    dispatch_sync(serialQueue, block);

    v21 = v25;
  }

  else
  {
    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1003ABE8C();
    }

    v21 = 0;
  }

  v23 = xpc_dictionary_get_remote_connection(v6);
  if (v23)
  {
    reply = xpc_dictionary_create_reply(v6);
    xpc_dictionary_set_uint64(reply, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY", v21);
    MRAddErrorToXPCMessage();
    xpc_connection_send_message(v23, reply);
  }
}

- (void)_handleInputDeviceDisconnectedMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
  v9 = _MRLogForCategory();
  v10 = v9;
  if (uint64)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1003ABECC();
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100177448;
    block[3] = &unk_1004BFE28;
    v24 = uint64;
    block[4] = self;
    block[5] = &v25;
    dispatch_sync(serialQueue, block);
    if (*(v26 + 24) == 1)
    {
      v12 = [(MRDVirtualAudioInputServer *)self recordingEndpointClients];
      v13 = _MRLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1003ABFB0(buf, [v12 count], v13);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v15)
      {
        v16 = *v20;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v19 + 1) + 8 * i) relayXPCMessage:v6 andReply:{0, v19}];
          }

          v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
        }

        while (v15);
      }

      v18 = 0;
    }

    else
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1003ABF40();
      }

      v18 = 22;
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003ABFF8();
    }

    v18 = 22;
  }

  sub_10000F9E4(v6, v18);
}

- (void)_handleRecordingStateChangedMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [(MRDVirtualAudioInputServer *)self registeredDeviceWithID:xpc_dictionary_get_uint64(v5, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY")];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AC038();
  }

  if (v6)
  {
    uint64 = xpc_dictionary_get_uint64(v5, "MRXPC_VOICE_RECORDING_STATE");
    [v6 setRecordingState:uint64];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 virtualAudioInputServer:self didUpdateRecordingState:uint64 forDevice:v6];
    v12 = 0;
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003AC0AC();
    }

    v12 = 22;
  }

LABEL_11:
  sub_10000F9E4(v5, v12);
}

- (void)_handleVoiceDataReceivedMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [(MRDVirtualAudioInputServer *)self recordingEndpointClients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) relayXPCMessage:v5 andReply:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_handleRecordingEndpointAvailabilityMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = xpc_dictionary_get_BOOL(v7, "MRXPC_VOICE_RECORDING_ENDPOINT_AVAILABLE_KEY");
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001778AC;
  block[3] = &unk_1004B8870;
  v13 = v8;
  block[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_sync(serialQueue, block);
  sub_10000F9E4(v7, 0);
}

- (MRDVirtualAudioInputServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end