@interface CHRemotePowerLogger
- (id)connection;
- (void)_teardownXPCConnection;
- (void)dealloc;
- (void)executeLoggingRequest:(id)request;
- (void)logModelInference:(unint64_t)inference startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp data:(id)data;
- (void)logModelLoaded:(unint64_t)loaded;
- (void)logModelUnloaded:(unint64_t)unloaded;
- (void)setupXPCConnectionIfNeeded;
@end

@implementation CHRemotePowerLogger

- (void)setupXPCConnectionIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->__connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = objc_msgSend_initWithMachServiceName_options_(v3, v4, @"com.apple.handwritingd.remoterecognition", 0, v5, v6);
    connection = selfCopy->__connection;
    selfCopy->__connection = v7;

    v13 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v9, &unk_1EF2155C0, v10, v11, v12);
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v20 = objc_msgSend_setWithObject_(v14, v16, v15, v17, v18, v19);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v13, v21, v20, sel_handlePowerLoggingRequest_, 0, 0);
    objc_msgSend_setRemoteObjectInterface_(selfCopy->__connection, v22, v13, v23, v24, v25);
    objc_initWeak(&location, selfCopy);
    v26 = selfCopy->__connection;
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = sub_1837B5468;
    v43 = &unk_1E6DDD110;
    objc_copyWeak(&v44, &location);
    objc_msgSend_setInterruptionHandler_(v26, v27, &v40, v28, v29, v30);
    objc_msgSend_setInvalidationHandler_(selfCopy->__connection, v31, &unk_1EF1BDE88, v32, v33, v34, v40, v41, v42, v43);
    objc_msgSend_resume(selfCopy->__connection, v35, v36, v37, v38, v39);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->__connection;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_teardownXPCConnection
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_invalidate(obj->__connection, v2, v3, v4, v5, v6);
  connection = obj->__connection;
  obj->__connection = 0;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  objc_msgSend__teardownXPCConnection(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = CHRemotePowerLogger;
  [(CHRemotePowerLogger *)&v7 dealloc];
}

- (void)logModelLoaded:(unint64_t)loaded
{
  v5 = [CHRemotePowerLoggingLoadingRequest alloc];
  v14 = objc_msgSend_initWithModel_(v5, v6, loaded, v7, v8, v9);
  objc_msgSend_executeLoggingRequest_(self, v10, v14, v11, v12, v13);
}

- (void)logModelUnloaded:(unint64_t)unloaded
{
  v5 = [CHRemotePowerLoggingUnloadingRequest alloc];
  v14 = objc_msgSend_initWithModel_(v5, v6, unloaded, v7, v8, v9);
  objc_msgSend_executeLoggingRequest_(self, v10, v14, v11, v12, v13);
}

- (void)logModelInference:(unint64_t)inference startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp data:(id)data
{
  dataCopy = data;
  v11 = [CHRemotePowerLoggingInferenceRequest alloc];
  started = objc_msgSend_initWithModel_startTime_endTime_data_(v11, v12, inference, dataCopy, v13, v14, timestamp, endTimestamp);

  objc_msgSend_executeLoggingRequest_(self, v15, started, v16, v17, v18);
}

- (void)executeLoggingRequest:(id)request
{
  requestCopy = request;
  if (qword_1EA84CFC8 != -1)
  {
    v7 = requestCopy;
    dispatch_once(&qword_1EA84CFC8, &unk_1EF1BDEA8);
    requestCopy = v7;
  }

  v5 = qword_1EA84CFC0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1837B5970;
  v8[3] = &unk_1E6DDE2B8;
  v8[4] = self;
  v9 = requestCopy;
  v6 = requestCopy;
  dispatch_async(v5, v8);
}

@end