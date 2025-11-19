@interface MBPeerMessenger
+ (Class)_requestClassForTask:(id)a3;
+ (Class)_responseClassForTask:(id)a3;
+ (id)_taskForRequestClass:(Class)a3;
+ (id)sendRequestSync:(id)a3 session:(id)a4 error:(id *)a5;
+ (void)_initializeState;
+ (void)_registerRequestHandlerTask:(id)a3;
+ (void)registerRequestClass:(Class)a3 responseClass:(Class)a4 forTask:(id)a5;
+ (void)registerRequestHandler:(id)a3 forTask:(id)a4 session:(id)a5;
+ (void)sendRequest:(id)a3 session:(id)a4 responseHandler:(id)a5;
+ (void)unregisterAllMessages;
+ (void)unregisterAllRequestHandlersForSession:(id)a3;
@end

@implementation MBPeerMessenger

+ (void)_initializeState
{
  if (qword_1004219B8 != -1)
  {
    dispatch_once(&qword_1004219B8, &stru_1003C0CE8);
  }
}

+ (void)registerRequestClass:(Class)a3 responseClass:(Class)a4 forTask:(id)a5
{
  v9 = a5;
  if (([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___MBPeerMessagable]& 1) == 0)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestClass:responseClass:forTask:]", "MBPeerMessenger.m", 46, "[requestClass conformsToProtocol: @protocol(MBPeerMessagable)]");
  }

  if (([(objc_class *)a4 conformsToProtocol:&OBJC_PROTOCOL___MBPeerMessagable]& 1) == 0)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestClass:responseClass:forTask:]", "MBPeerMessenger.m", 47, "[responseClass conformsToProtocol: @protocol(MBPeerMessagable)]");
  }

  [a1 _initializeState];
  v8 = [a1 _taskForRequestClass:a3];

  if (!v8)
  {
    os_unfair_lock_lock(&dword_1004219C0);
    [qword_1004219D0 setObject:a3 forKeyedSubscript:v9];
    [qword_1004219D8 setObject:a4 forKeyedSubscript:v9];
    os_unfair_lock_unlock(&dword_1004219C0);
  }
}

+ (void)unregisterAllMessages
{
  [a1 _initializeState];
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

+ (Class)_responseClassForTask:(id)a3
{
  v4 = a3;
  [a1 _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v5 = [qword_1004219D8 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&dword_1004219C0);

  return v5;
}

+ (Class)_requestClassForTask:(id)a3
{
  v4 = a3;
  [a1 _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v5 = [qword_1004219D0 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&dword_1004219C0);

  return v5;
}

+ (id)_taskForRequestClass:(Class)a3
{
  [a1 _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [qword_1004219D0 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([qword_1004219D0 objectForKeyedSubscript:v9] == a3)
        {
          os_unfair_lock_unlock(&dword_1004219C0);
          v10 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (void)sendRequest:(id)a3 session:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v27 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v10 = [a1 _taskForRequestClass:objc_opt_class()];
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

    v13 = [v8 dictionaryRepresentation];
    v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

    v15 = +[NSUUID UUID];
    v25 = [v15 UUIDString];

    [v14 setObject:v25 forKeyedSubscript:@"MBPeerMessengerTransactionID"];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001B23F8;
    v48[3] = &unk_1003C0D10;
    v49 = v9;
    v50 = a1;
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
    v17 = v8;
    v36 = v17;
    v18 = v27;
    v41 = a1;
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
    (*(v9 + 2))(v9, 0, v23);
  }

  objc_autoreleasePoolPop(context);
}

+ (id)sendRequestSync:(id)a3 session:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  [a1 sendRequest:v8 session:v9 responseHandler:v14];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    v11 = v19[5];
    if (v11)
    {
      *a5 = v11;
    }
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

+ (void)_registerRequestHandlerTask:(id)a3
{
  v4 = a3;
  [a1 _initializeState];
  os_unfair_lock_lock(&dword_1004219C0);
  [qword_1004219C8 addObject:v4];

  os_unfair_lock_unlock(&dword_1004219C0);
}

+ (void)registerRequestHandler:(id)a3 forTask:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [a1 _initializeState];
  v11 = [a1 _requestClassForTask:v9];
  v12 = [a1 _responseClassForTask:v9];
  if (!v11)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestHandler:forTask:session:]", "MBPeerMessenger.m", 230, "requestClass != nil");
  }

  if (!v12)
  {
    __assert_rtn("+[MBPeerMessenger registerRequestHandler:forTask:session:]", "MBPeerMessenger.m", 231, "responseClass != nil");
  }

  v13 = [a1 _eventIDForTask:v9];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001B2E1C;
  v18 = &unk_1003C0E00;
  v21 = v11;
  v22 = a1;
  v19 = v9;
  v20 = v8;
  v14 = v8;
  [v10 registerRequestID:v13 options:0 handler:&v15];

  [a1 _registerRequestHandlerTask:{v9, v15, v16, v17, v18, v19}];
}

+ (void)unregisterAllRequestHandlersForSession:(id)a3
{
  v4 = a3;
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

        v10 = [a1 _eventIDForTask:{*(*(&v11 + 1) + 8 * v9), v11}];
        [v4 deregisterRequestID:v10];

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