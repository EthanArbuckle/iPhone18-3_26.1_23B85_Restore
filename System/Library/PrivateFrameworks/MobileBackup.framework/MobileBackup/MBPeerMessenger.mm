@interface MBPeerMessenger
+ (Class)_requestClassForTask:(id)task;
+ (Class)_responseClassForTask:(id)task;
+ (id)_taskForRequestClass:(Class)class;
+ (id)sendRequestSync:(id)sync session:(id)session error:(id *)error;
+ (void)_initializeState;
+ (void)_registerRequestHandlerTask:(id)task;
+ (void)registerRequestClass:(Class)class responseClass:(Class)responseClass forTask:(id)task;
+ (void)registerRequestHandler:(id)handler forTask:(id)task session:(id)session;
+ (void)sendRequest:(id)request session:(id)session responseHandler:(id)handler;
+ (void)unregisterAllMessages;
+ (void)unregisterAllRequestHandlersForSession:(id)session;
@end

@implementation MBPeerMessenger

+ (void)_initializeState
{
  if (qword_1004219B8 != -1)
  {
    dispatch_once(&qword_1004219B8, &stru_1003C0CE8);
  }
}

+ (void)registerRequestClass:(Class)class responseClass:(Class)responseClass forTask:(id)task
{
  taskCopy = task;
  if (([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___MBPeerMessagable]& 1) == 0)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestClass:responseClass:forTask:]", "MBPeerMessenger.m", 46, "[requestClass conformsToProtocol: @protocol(MBPeerMessagable)]");
  }

  if (([(objc_class *)responseClass conformsToProtocol:&OBJC_PROTOCOL___MBPeerMessagable]& 1) == 0)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestClass:responseClass:forTask:]", "MBPeerMessenger.m", 47, "[responseClass conformsToProtocol: @protocol(MBPeerMessagable)]");
  }

  [self _initializeState];
  v8 = [self _taskForRequestClass:class];

  if (!v8)
  {
    os_unfair_lock_lock(&dword_1004219C0);
    [qword_1004219D0 setObject:class forKeyedSubscript:taskCopy];
    [qword_1004219D8 setObject:responseClass forKeyedSubscript:taskCopy];
    os_unfair_lock_unlock(&dword_1004219C0);
  }
}

+ (void)unregisterAllMessages
{
  [self _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v2 = objc_opt_new();
  v3 = qword_1004219D0;
  qword_1004219D0 = v2;

  v4 = objc_opt_new();
  v5 = qword_1004219D8;
  qword_1004219D8 = v4;

  [qword_1004219E0 reset];

  os_unfair_lock_unlock(&dword_1004219C0);
}

+ (Class)_responseClassForTask:(id)task
{
  taskCopy = task;
  [self _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v5 = [qword_1004219D8 objectForKeyedSubscript:taskCopy];

  os_unfair_lock_unlock(&dword_1004219C0);

  return v5;
}

+ (Class)_requestClassForTask:(id)task
{
  taskCopy = task;
  [self _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v5 = [qword_1004219D0 objectForKeyedSubscript:taskCopy];

  os_unfair_lock_unlock(&dword_1004219C0);

  return v5;
}

+ (id)_taskForRequestClass:(Class)class
{
  [self _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [qword_1004219D0 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([qword_1004219D0 objectForKeyedSubscript:v9] == class)
        {
          os_unfair_lock_unlock(&dword_1004219C0);
          v10 = v9;

          goto LABEL_11;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&dword_1004219C0);
  v10 = 0;
LABEL_11:

  return v10;
}

+ (void)sendRequest:(id)request session:(id)session responseHandler:(id)handler
{
  requestCopy = request;
  sessionCopy = session;
  handlerCopy = handler;
  context = objc_autoreleasePoolPush();
  v10 = [self _taskForRequestClass:objc_opt_class()];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"MBPeerTaskInit"])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = objc_opt_class();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting the %@ cache", &buf, 0xCu);
        v24 = objc_opt_class();
        _MBLog();
      }

      [qword_1004219E0 reset];
    }

    dictionaryRepresentation = [requestCopy dictionaryRepresentation];
    v14 = [NSMutableDictionary dictionaryWithDictionary:dictionaryRepresentation];

    v15 = +[NSUUID UUID];
    uUIDString = [v15 UUIDString];

    [v14 setObject:uUIDString forKeyedSubscript:@"MBPeerMessengerTransactionID"];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001B23F8;
    v48[3] = &unk_1003C0D10;
    v49 = handlerCopy;
    selfCopy = self;
    v48[4] = v11;
    v16 = objc_retainBlock(v48);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = sub_1001B2524;
    v54 = sub_1001B2550;
    v55 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1001B2524;
    v46 = sub_1001B2550;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001B2558;
    v35[3] = &unk_1003C0D38;
    v17 = requestCopy;
    v36 = v17;
    v18 = sessionCopy;
    selfCopy2 = self;
    v37 = v18;
    v38 = v11;
    v19 = v14;
    v39 = v19;
    p_buf = &buf;
    v47 = objc_retainBlock(v35);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0x4024000000000000;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001B2674;
    v28[3] = &unk_1003C0D60;
    v29 = v17;
    v32 = v34;
    v30 = v18;
    v33 = &v42;
    v20 = v16;
    v31 = v20;
    v21 = [v28 copy];
    v22 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v21;

    (*(v43[5] + 16))();
    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = [MBError errorWithCode:10 description:@"Failed to encode request for class"];
    (*(handlerCopy + 2))(handlerCopy, 0, v23);
  }

  objc_autoreleasePoolPop(context);
}

+ (id)sendRequestSync:(id)sync session:(id)session error:(id *)error
{
  syncCopy = sync;
  sessionCopy = session;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1001B2BA0;
  v28 = sub_1001B2BB0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1001B2BA0;
  v22 = sub_1001B2BB0;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001B2BB8;
  v14[3] = &unk_1003C0D88;
  v16 = &v24;
  v17 = &v18;
  v10 = dispatch_semaphore_create(0);
  v15 = v10;
  [self sendRequest:syncCopy session:sessionCopy responseHandler:v14];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v11 = v19[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

+ (void)_registerRequestHandlerTask:(id)task
{
  taskCopy = task;
  [self _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  [qword_1004219C8 addObject:taskCopy];

  os_unfair_lock_unlock(&dword_1004219C0);
}

+ (void)registerRequestHandler:(id)handler forTask:(id)task session:(id)session
{
  handlerCopy = handler;
  taskCopy = task;
  sessionCopy = session;
  [self _initializeState];
  v11 = [self _requestClassForTask:taskCopy];
  v12 = [self _responseClassForTask:taskCopy];
  if (!v11)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestHandler:forTask:session:]", "MBPeerMessenger.m", 230, "requestClass != nil");
  }

  if (!v12)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestHandler:forTask:session:]", "MBPeerMessenger.m", 231, "responseClass != nil");
  }

  v13 = [self _eventIDForTask:taskCopy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001B2E1C;
  v18 = &unk_1003C0E00;
  v21 = v11;
  selfCopy = self;
  v19 = taskCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  [sessionCopy registerRequestID:v13 options:0 handler:&v15];

  [self _registerRequestHandlerTask:{taskCopy, v15, v16, v17, v18, v19}];
}

+ (void)unregisterAllRequestHandlersForSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&dword_1004219C0);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = qword_1004219C8;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [self _eventIDForTask:{*(*(&v11 + 1) + 8 * v9), v11}];
        [sessionCopy deregisterRequestID:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&dword_1004219C0);
}

@end