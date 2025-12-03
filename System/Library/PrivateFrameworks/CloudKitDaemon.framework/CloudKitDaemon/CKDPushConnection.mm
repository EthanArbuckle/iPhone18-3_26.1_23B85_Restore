@interface CKDPushConnection
+ (id)sharedConnectionForAPSEnvironmentString:(id)string;
- (CKDPushConnection)initWithEnvironment:(id)environment;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connectionDidReconnect:(id)reconnect;
- (void)dealloc;
- (void)getToken:(id)token;
@end

@implementation CKDPushConnection

+ (id)sharedConnectionForAPSEnvironmentString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (qword_280D58590 == -1)
  {
    if (stringCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_280D58590, &unk_28385E380);
  if (!v5)
  {
LABEL_3:
    v5 = *MEMORY[0x277CEE9F0];
  }

LABEL_4:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_objectForKeyedSubscript_(qword_280D58588, v7, v5);
  if (!v8)
  {
    v9 = [CKDPushConnection alloc];
    v8 = objc_msgSend_initWithEnvironment_(v9, v10, v5);
    objc_msgSend_setObject_forKeyedSubscript_(qword_280D58588, v11, v8, v5);
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (CKDPushConnection)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v26.receiver = self;
  v26.super_class = CKDPushConnection;
  v6 = [(CKDPushConnection *)&v26 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v6->_queue;
    v6->_queue = v13;

    objc_storeStrong(&v6->_apsEnvironmentString, environment);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v6->_completionBlocks;
    v6->_completionBlocks = v15;

    v17 = objc_alloc(MEMORY[0x277CEEA10]);
    v19 = objc_msgSend_initWithEnvironmentName_namedDelegatePort_queue_(v17, v18, environmentCopy, *MEMORY[0x277CEE9D8], v6->_queue);
    apsConnection = v6->_apsConnection;
    v6->_apsConnection = v19;

    objc_msgSend_setDelegate_(v6->_apsConnection, v21, v6);
    v24 = objc_msgSend_publicToken(v6->_apsConnection, v22, v23);
  }

  return v6;
}

- (void)dealloc
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B0660;
  block[3] = &unk_278547098;
  objc_copyWeak(&v6, &location);
  dispatch_sync(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  v4.receiver = self;
  v4.super_class = CKDPushConnection;
  [(CKDPushConnection *)&v4 dealloc];
}

- (void)getToken:(id)token
{
  tokenCopy = token;
  v7 = objc_msgSend_queue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2253B0760;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = tokenCopy;
  v8 = tokenCopy;
  dispatch_async(v7, v9);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  v8 = _os_activity_create(&dword_22506F000, "CKDPushConnection/didReceivePublicToken", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = connectionCopy;
    v21 = 2114;
    v22 = tokenCopy;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Received public token from connection %@: %{public}@", buf, 0x16u);
  }

  v10 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B0B4C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(v10, block);

  if (tokenCopy)
  {
    v13 = objc_msgSend_queue(self, v11, v12);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2253B0BCC;
    v15[3] = &unk_278545898;
    v15[4] = self;
    v16 = tokenCopy;
    dispatch_async(v13, v15);
  }

  os_activity_scope_leave(&state);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v11 = objc_msgSend_apsEnvironmentString(self, v9, v10);
    v12 = v11;
    v13 = @"disconnected";
    if (statusCopy)
    {
      v13 = @"connected";
    }

    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Push connection for environment %{public}@ changed status: %{public}@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Did reconnect to push daemon", v5, 2u);
  }
}

@end