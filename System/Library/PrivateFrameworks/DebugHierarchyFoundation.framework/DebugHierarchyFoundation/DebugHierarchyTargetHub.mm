@interface DebugHierarchyTargetHub
+ (id)performDebugRequest:(int64_t)request;
+ (id)sharedHub;
- (BOOL)performRequestInPlaceWithRequestInBase64:(id)base64;
- (DebugHierarchyRuntimeInfo)runtimeInfo;
- (DebugHierarchyTargetHub)init;
- (NSMapTable)knownObjectsMap;
- (NSMutableDictionary)additionalKnownObjects;
- (id)performRequest:(id)request error:(id *)error;
- (id)performRequestWithRequestInBase64:(id)base64;
- (void)clearAllRequestsAndData;
- (void)handleXPCEvent:(id)event;
- (void)openXPCConnection;
- (void)registerForDarwinNotifications;
@end

@implementation DebugHierarchyTargetHub

+ (id)sharedHub
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __36__DebugHierarchyTargetHub_sharedHub__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHub_onceToken_0 != -1)
  {
    dispatch_once(&sharedHub_onceToken_0, block);
  }

  v2 = sharedHub_sharedHub_0;

  return v2;
}

uint64_t __36__DebugHierarchyTargetHub_sharedHub__block_invoke(uint64_t a1)
{
  sharedHub_sharedHub_0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (DebugHierarchyTargetHub)init
{
  v10.receiver = self;
  v10.super_class = DebugHierarchyTargetHub;
  v2 = [(DebugHierarchyTargetHub *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("DebugHierarchyAgentXPCQueue", 0);
    agentConnectionQueue = v2->_agentConnectionQueue;
    v2->_agentConnectionQueue = v3;

    v5 = +[NSMapTable strongToWeakObjectsMapTable];
    knownObjectsMap = v2->_knownObjectsMap;
    v2->_knownObjectsMap = v5;

    v7 = objc_opt_new();
    additionalKnownObjects = v2->_additionalKnownObjects;
    v2->_additionalKnownObjects = v7;
  }

  return v2;
}

- (void)clearAllRequestsAndData
{
  knownObjectsMap = self->_knownObjectsMap;
  self->_knownObjectsMap = 0;

  runtimeInfo = self->_runtimeInfo;
  self->_runtimeInfo = 0;

  response = self->_response;
  self->_response = 0;

  additionalKnownObjects = self->_additionalKnownObjects;
  self->_additionalKnownObjects = 0;

  DBGClearCachedFormatSpecifiers();
}

- (NSMapTable)knownObjectsMap
{
  knownObjectsMap = self->_knownObjectsMap;
  if (!knownObjectsMap)
  {
    v4 = +[NSMapTable strongToWeakObjectsMapTable];
    v5 = self->_knownObjectsMap;
    self->_knownObjectsMap = v4;

    knownObjectsMap = self->_knownObjectsMap;
  }

  return knownObjectsMap;
}

- (NSMutableDictionary)additionalKnownObjects
{
  additionalKnownObjects = self->_additionalKnownObjects;
  if (!additionalKnownObjects)
  {
    v4 = objc_opt_new();
    v5 = self->_additionalKnownObjects;
    self->_additionalKnownObjects = v4;

    additionalKnownObjects = self->_additionalKnownObjects;
  }

  return additionalKnownObjects;
}

- (DebugHierarchyRuntimeInfo)runtimeInfo
{
  runtimeInfo = self->_runtimeInfo;
  if (!runtimeInfo)
  {
    v4 = objc_alloc_init(DebugHierarchyRuntimeInfo);
    v5 = self->_runtimeInfo;
    self->_runtimeInfo = v4;

    runtimeInfo = self->_runtimeInfo;
  }

  return runtimeInfo;
}

- (id)performRequestWithRequestInBase64:(id)base64
{
  base64Copy = base64;
  v15 = 0;
  v5 = [DebugHierarchyRequest requestWithBase64Data:base64Copy error:&v15];
  v6 = v15;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v8 = [v6 debugHierarchyResponseDataForRequest:v5];
  }

  else
  {
    v14 = 0;
    v9 = [(DebugHierarchyTargetHub *)self performRequest:v5 error:&v14];
    v10 = v14;
    v11 = v10;
    if (v10)
    {
      v12 = [v10 debugHierarchyResponseDataForRequest:v5];
    }

    else
    {
      v12 = v9;
    }

    v8 = v12;
  }

  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)performRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = DebugHierarchyRequestsOSLog_0();
    v6 = os_signpost_id_make_with_pointer(v5, requestCopy);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      name = [requestCopy name];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = name;
      _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Perform Request", "(%{public}@)", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = __48__DebugHierarchyTargetHub_performRequest_error___block_invoke;
    v22 = &unk_24440;
    v10 = requestCopy;
    v23 = v10;
    p_buf = &buf;
    v11 = objc_retainBlock(&v19);
    if ([NSThread isMainThread:v19])
    {
      (v11[2])(v11);
    }

    else
    {
      dispatch_sync(&_dispatch_main_q, v11);
    }

    v13 = DebugHierarchyRequestsOSLog_0();
    v14 = os_signpost_id_make_with_pointer(v13, v10);
    v15 = v13;
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = [*(*(&buf + 1) + 40) length];
      *v25 = 134217984;
      v26 = v17;
      _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, v14, "Perform Request", "Completed with size: %{xcode:size-in-bytes}lu", v25, 0xCu);
    }

    v12 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __48__DebugHierarchyTargetHub_performRequest_error___block_invoke(uint64_t a1)
{
  v2 = [DebugHierarchyRequestExecutor executorWithRequest:*(a1 + 32)];
  v7 = 0;
  v3 = [v2 runWithError:&v7];
  v4 = v7;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)performRequestInPlaceWithRequestInBase64:(id)base64
{
  v4 = [(DebugHierarchyTargetHub *)self performRequestWithRequestInBase64:base64];
  response = self->_response;
  self->_response = v4;

  return 1;
}

- (void)registerForDarwinNotifications
{
  p_darwinNotificationToken = &self->_darwinNotificationToken;
  if (!self->_darwinNotificationToken)
  {
    v4 = [NSString stringWithFormat:@"com.apple.dt.ViewHierarchyTargetHub.Notification.%d", getpid()];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __57__DebugHierarchyTargetHub_registerForDarwinNotifications__block_invoke;
    handler[3] = &unk_24468;
    handler[4] = self;
    if (notify_register_dispatch([v4 cStringUsingEncoding:4], p_darwinNotificationToken, &_dispatch_main_q, handler))
    {
      [DebugHierarchyTargetHub registerForDarwinNotifications];
    }
  }
}

- (void)openXPCConnection
{
  [(DebugHierarchyTargetHub *)self clearAllRequestsAndData];
  v3 = dispatch_semaphore_create(0);
  mach_service = xpc_connection_create_mach_service("com.apple.dt.ViewHierarchyTargetHub.xpc", self->_agentConnectionQueue, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __44__DebugHierarchyTargetHub_openXPCConnection__block_invoke;
  handler[3] = &unk_24490;
  handler[4] = self;
  v5 = v3;
  v13 = v5;
  xpc_connection_set_event_handler(mach_service, handler);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__DebugHierarchyTargetHub_openXPCConnection__block_invoke_2;
  block[3] = &unk_244B8;
  v9 = mach_service;
  v10 = v5;
  selfCopy = self;
  v6 = v5;
  v7 = mach_service;
  dispatch_async(&_dispatch_main_q, block);
}

void __44__DebugHierarchyTargetHub_openXPCConnection__block_invoke_2(uint64_t a1)
{
  xpc_connection_activate(*(a1 + 32));
  empty = xpc_dictionary_create_empty();
  xpc_connection_send_message(*(a1 + 32), empty);
  while (1)
  {
    dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
    v3 = [*(a1 + 48) currentRequestInBase64];

    if (!v3)
    {
      break;
    }

    v4 = *(a1 + 48);
    v5 = [v4 currentRequestInBase64];
    [v4 performRequestAndWriteResponseToFileDescriptorWithRequestInBase64:v5 fileDescriptor:{objc_msgSend(*(a1 + 48), "currentResponseFileDescriptor")}];

    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) currentReply];
    xpc_connection_send_message(v6, v7);
  }

  xpc_connection_cancel(*(a1 + 32));
  [*(a1 + 48) clearAllRequestsAndData];
}

- (void)handleXPCEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && xpc_get_type(eventCopy) == &_xpc_type_dictionary)
  {
    length = 0;
    data = xpc_dictionary_get_data(v5, "request", &length);
    v7 = [NSData dataWithBytes:data length:length];
    v8 = [[NSString alloc] initWithData:v7 encoding:4];
    v9 = xpc_dictionary_dup_fd(v5, "fd");
    if ((v9 & 0x80000000) != 0)
    {
      [(DebugHierarchyTargetHub *)self setCurrentRequest:0 responseFileDescriptor:0xFFFFFFFFLL reply:0];
    }

    else
    {
      v10 = v9;
      reply = xpc_dictionary_create_reply(v5);
      [(DebugHierarchyTargetHub *)self setCurrentRequest:v8 responseFileDescriptor:v10 reply:reply];
    }
  }

  else
  {
    [(DebugHierarchyTargetHub *)self setCurrentRequest:0 responseFileDescriptor:0xFFFFFFFFLL reply:0];
  }
}

+ (id)performDebugRequest:(int64_t)request
{
  if (request > 1)
  {
    v8 = 0;
  }

  else
  {
    v4 = objc_alloc_init(DebugHierarchyPropertyAction);
    [(DebugHierarchyPropertyAction *)v4 setPropertyNames:&__NSArray0__struct exlusive:1];
    v10 = v4;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [DebugHierarchyRequest requestWithDiscoveryType:1 actions:v5 completion:&__block_literal_global_1];

    [v6 setTimeout:120.0];
    v7 = +[DebugHierarchyTargetHub sharedHub];
    v8 = [v7 performRequest:v6];

    if (!request)
    {

      v8 = 0;
    }
  }

  return v8;
}

@end