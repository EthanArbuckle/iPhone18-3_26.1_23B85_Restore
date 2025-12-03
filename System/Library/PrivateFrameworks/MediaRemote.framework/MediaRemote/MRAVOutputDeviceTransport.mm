@interface MRAVOutputDeviceTransport
+ (id)_createConnectionWith:(id)with groupID:(id)d connectionType:(int64_t)type shouldUseSystemAuthenticationPrompt:(BOOL)prompt userInfo:(id)info;
- (BOOL)shouldUseSystemAuthenticationPrompt;
- (MRAVOutputDeviceTransport)initWithOutputDevice:(id)device groupID:(id)d connectionType:(int64_t)type;
- (MRAVOutputDeviceTransport)initWithOutputDeviceUID:(id)d;
- (id)createConnectionWithUserInfo:(id)info;
- (id)debugDescription;
- (id)description;
- (id)error;
- (void)resetWithError:(id)error;
- (void)setError:(id)error;
- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)prompt;
@end

@implementation MRAVOutputDeviceTransport

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  outputDeviceUID = selfCopy->_outputDeviceUID;
  groupID = selfCopy->_groupID;
  connection = selfCopy->_connection;
  v8 = NSStringFromMRAVEndpointConnectionType(selfCopy->super._connectionType);
  v9 = [v3 stringWithFormat:@"<%@: %p OutputDeviceUID=%@ groupID=%@ connection:%@ connectionType=%@>", v4, selfCopy, outputDeviceUID, groupID, connection, v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (MRAVOutputDeviceTransport)initWithOutputDevice:(id)device groupID:(id)d connectionType:(int64_t)type
{
  deviceCopy = device;
  dCopy = d;
  if (!deviceCopy)
  {
    [MRAVOutputDeviceTransport initWithOutputDevice:a2 groupID:self connectionType:?];
  }

  primaryID = [deviceCopy primaryID];
  v12 = [(MRAVOutputDeviceTransport *)self initWithOutputDeviceUID:primaryID];

  if (v12)
  {
    v13 = [dCopy copy];
    groupID = v12->_groupID;
    v12->_groupID = v13;

    v12->super._connectionType = type;
    v12->_useSystemAuthenticationPrompt = 1;
  }

  return v12;
}

- (MRAVOutputDeviceTransport)initWithOutputDeviceUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MRAVOutputDeviceTransport;
  v6 = [(MRAVOutputDeviceTransport *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceUID, d);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.externalDeviceTransport/workerQueue", v8);
    workerQueue = v7->_workerQueue;
    v7->_workerQueue = v9;

    v7->super._connectionType = 2;
  }

  return v7;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  outputDeviceUID = selfCopy->_outputDeviceUID;
  groupID = selfCopy->_groupID;
  avOutputDevice = selfCopy->_avOutputDevice;
  v8 = NSStringFromMRAVEndpointConnectionType(selfCopy->super._connectionType);
  v9 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_connection);
  v10 = [v3 stringWithFormat:@"<%@: %p {\n   OutputDeviceUID=%@\n   groupID=%@\n   AVOutputDevice=%@\n   connectionType=%@\n   connection=%@\n}>", v4, selfCopy, outputDeviceUID, groupID, avOutputDevice, v8, v9];

  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)shouldUseSystemAuthenticationPrompt
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  useSystemAuthenticationPrompt = selfCopy->_useSystemAuthenticationPrompt;
  objc_sync_exit(selfCopy);

  return useSystemAuthenticationPrompt;
}

- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)prompt
{
  obj = self;
  objc_sync_enter(obj);
  obj->_useSystemAuthenticationPrompt = prompt;
  objc_sync_exit(obj);
}

- (id)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  error = obj->_error;
  obj->_error = errorCopy;

  objc_sync_exit(obj);
}

- (id)createConnectionWithUserInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  first2 = selfCopy->_connection;
  useSystemAuthenticationPrompt = selfCopy->_useSystemAuthenticationPrompt;
  objc_sync_exit(selfCopy);

  if (!first2)
  {
    v8 = [objc_opt_class() _createConnectionWith:selfCopy->_outputDeviceUID groupID:selfCopy->_groupID connectionType:selfCopy->super._connectionType shouldUseSystemAuthenticationPrompt:useSystemAuthenticationPrompt userInfo:infoCopy];
    v9 = selfCopy;
    objc_sync_enter(v9);
    first = [v8 first];
    connection = selfCopy->_connection;
    selfCopy->_connection = first;

    second = [v8 second];
    error = v9->_error;
    v9->_error = second;

    objc_sync_exit(v9);
    first2 = [v8 first];
  }

  return first2;
}

+ (id)_createConnectionWith:(id)with groupID:(id)d connectionType:(int64_t)type shouldUseSystemAuthenticationPrompt:(BOOL)prompt userInfo:(id)info
{
  promptCopy = prompt;
  v87[5] = *MEMORY[0x1E69E9840];
  withCopy = with;
  dCopy = d;
  infoCopy = info;
  v12 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionReasonUserInfoKey"];
  v13 = v12;
  v14 = @"unknown";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
  v17 = v16;
  if (v16)
  {
    uUIDString = v16;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v20 = dispatch_group_create();
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__2;
  v84 = __Block_byref_object_dispose__2;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__2;
  v78 = __Block_byref_object_dispose__2;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__2;
  v72 = __Block_byref_object_dispose__2;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__2;
  v21 = MEMORY[0x1E6958760];
  v66 = __Block_byref_object_dispose__2;
  v67 = 0;
  if (type != 3)
  {
    v21 = MEMORY[0x1E6958758];
  }

  v22 = *v21;
  v86[0] = *MEMORY[0x1E6958778];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:!promptCopy];
  v24 = *MEMORY[0x1E6958780];
  v87[0] = v23;
  v87[1] = v22;
  v25 = *MEMORY[0x1E6958788];
  v86[1] = v24;
  v86[2] = v25;
  v26 = *MEMORY[0x1E6958790];
  v87[2] = uUIDString;
  v87[3] = v15;
  v27 = *MEMORY[0x1E6958798];
  v86[3] = v26;
  v86[4] = v27;
  v87[4] = MEMORY[0x1E695E118];
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:5];

  dispatch_group_enter(v20);
  v29 = [[MRAVDiscoverySessionHelper alloc] initWithFeatures:8];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke;
  v54[3] = &unk_1E769A5A8;
  v58 = &v68;
  v30 = v20;
  v55 = v30;
  v59 = &v80;
  v31 = v28;
  v56 = v31;
  v32 = uUIDString;
  v57 = v32;
  v60 = &v74;
  v61 = &v62;
  [(MRAVDiscoverySessionHelper *)v29 searchAVOutputDeviceForUID:withCopy timeout:v32 identifier:v15 reason:v54 completion:5.0];
  if (promptCopy)
  {
    v33 = 60.0;
  }

  else
  {
    v33 = 33.0;
  }

  v34 = dispatch_time(0, (v33 * 1000000000.0));
  v35 = dispatch_group_wait(v30, v34);
  v36 = v69[5];
  if (v36 || !v75[5])
  {
    if (v35)
    {
      v37 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 format:{@"Timed out after <%lf> waiting to open remote control communication channel", *&v33}];
LABEL_24:
      v41 = v37;
      v40 = 0;
      goto LABEL_25;
    }

    if (v63[5] == *MEMORY[0x1E6958770])
    {
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = @"Skipped creating remote control communication channel. CancelIfAuthRequired was used";
      v47 = 119;
    }

    else
    {
      if (v36)
      {
        v37 = v36;
        goto LABEL_24;
      }

      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = @"Failed to create remote control communication channel with no underlying error";
      v47 = 100;
    }

    v37 = [v45 initWithMRError:v47 description:v46];
    goto LABEL_24;
  }

  v38 = [MRAirPlayTransportConnection alloc];
  v39 = [(MRAirPlayTransportConnection *)v38 initWithOutputDeviceCommunicationChannel:v75[5]];
  v40 = v39;
  v41 = 0;
  if (dCopy && v39)
  {
    v51 = [[MRConfigureConnectionMessage alloc] initWithGroupID:dCopy];
    protobufData = [(MRProtocolMessage *)v51 protobufData];
    [v40 sendTransportData:protobufData options:0];

    v43 = objc_alloc_init(MRDeviceInfo);
    [(MRDeviceInfo *)v43 setDeviceUID:withCopy];
    [(MRDeviceInfo *)v43 setName:v81[5]];
    v44 = +[MRProtocolMessageLogger sharedLogger];
    [v44 logMessage:@"Message Sent:" label:@"RemoteControl" deviceInfo:v43 protocolMessage:v51];

    v41 = 0;
  }

LABEL_25:
  v48 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v40 second:v41];

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

void __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = v6;
    if (!v6)
    {
      v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
    if (!v7)
    {
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [v5 name];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *MEMORY[0x1E6958768];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke_2;
    v16[3] = &unk_1E769A580;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v17 = v13;
    v19 = v14;
    v20 = *(a1 + 72);
    v18 = *(a1 + 32);
    [v5 openCommunicationChannelToDestination:v11 options:v12 completionHandler:v16];
  }
}

void __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = MRLogCategoryConnections();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_ERROR, "AVOutputDevice.openCommunicationChannelWithOptions<%@> -> %@", &v22, 0x16u);
    }
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
  v17 = v7;

  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v9;
  v20 = v9;

  dispatch_group_leave(*(a1 + 40));
  v21 = *MEMORY[0x1E69E9840];
}

- (void)resetWithError:(id)error
{
  errorCopy = error;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MRAVOutputDeviceTransport_resetWithError___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(workerQueue, v7);
}

void __44__MRAVOutputDeviceTransport_resetWithError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) closeWithError:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

- (void)initWithOutputDevice:(uint64_t)a1 groupID:(uint64_t)a2 connectionType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVOutputDeviceTransport.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"outputDevice"}];
}

@end