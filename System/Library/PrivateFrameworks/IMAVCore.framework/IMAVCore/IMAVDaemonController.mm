@interface IMAVDaemonController
+ (id)sharedInstance;
- (BOOL)__isLocalObjectValidOnQueue:(id)queue;
- (BOOL)__isRemoteObjectValidOnQueue:(id)queue;
- (BOOL)_makeConnectionWithCompletionBlock:(id)block;
- (BOOL)addListenerID:(id)d;
- (BOOL)hasListenerForID:(id)d;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)localObjectExists;
- (BOOL)remoteObjectExists;
- (BOOL)removeListenerID:(id)d;
- (IMAVDaemonController)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_cleanUpConnection;
- (void)_connectToDaemon;
- (void)_disconnectFromDaemon;
- (void)_listenerSetUpdated;
- (void)_localObjectCleanup;
- (void)_localObjectDiedNotification:(id)notification;
- (void)_noteSetupComplete;
- (void)_remoteObjectCleanup;
- (void)_remoteObjectDiedNotification:(id)notification;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)localObjectDiedNotification:(id)notification;
- (void)remoteObjectDiedNotification:(id)notification;
@end

@implementation IMAVDaemonController

+ (id)sharedInstance
{
  if (qword_28134A428 != -1)
  {
    sub_25477F9A4();
  }

  v3 = qword_28134A3F8;

  return v3;
}

- (IMAVDaemonController)init
{
  v32 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = IMAVDaemonController;
  v2 = [(IMAVDaemonController *)&v30 init];
  if (v2)
  {
    Main = CFRunLoopGetMain();
    memset(&context, 0, 72);
    context.perform = nullsub_1;
    v2->_runLoopSource = CFRunLoopSourceCreate(0, 0, &context);
    objc_opt_class();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = *MEMORY[0x277D191A0];
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v31, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v4);
          }

          CFRunLoopAddSource(Main, v2->_runLoopSource, *(*(&v25 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v25, v31, 16);
      }

      while (v7);
    }

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v11;

    v13 = dispatch_queue_create("com.apple.IMAVDaemonControllerQueue", 0);
    remoteMessageQueue = v2->_remoteMessageQueue;
    v2->_remoteMessageQueue = v13;

    v15 = dispatch_queue_create("com.apple.IMAVDaemonControllerListenerLockQueue", 0);
    listenerLockQueue = v2->_listenerLockQueue;
    v2->_listenerLockQueue = v15;

    v17 = dispatch_queue_create("com.apple.IMAVDaemonControllerAgentLockQueue", 0);
    remoteDaemonLockQueue = v2->_remoteDaemonLockQueue;
    v2->_remoteDaemonLockQueue = v17;

    v19 = dispatch_queue_create("com.apple.IMAVDaemonControllerLocalLockQueue", 0);
    localObjectLockQueue = v2->_localObjectLockQueue;
    v2->_localObjectLockQueue = v19;

    v21 = objc_alloc_init(IMAVDaemonListener);
    daemonListener = v2->_daemonListener;
    v2->_daemonListener = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  connectionLock = self->_connectionLock;
  self->_connectionLock = 0;

  v9.receiver = self;
  v9.super_class = IMAVDaemonController;
  [(IMAVDaemonController *)&v9 dealloc];
}

- (BOOL)__isLocalObjectValidOnQueue:(id)queue
{
  queueCopy = queue;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25477AC98;
  v9[3] = &unk_279783A10;
  v9[4] = self;
  v9[5] = &v10;
  v5 = MEMORY[0x259C18E10](v9);
  v6 = v5;
  if (queueCopy)
  {
    dispatch_sync(queueCopy, v5);
  }

  else
  {
    v5[2](v5);
  }

  v7 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)__isRemoteObjectValidOnQueue:(id)queue
{
  queueCopy = queue;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25477ADD0;
  v9[3] = &unk_279783A10;
  v9[4] = self;
  v9[5] = &v10;
  v5 = MEMORY[0x259C18E10](v9);
  v6 = v5;
  if (queueCopy)
  {
    dispatch_sync(queueCopy, v5);
  }

  else
  {
    v5[2](v5);
  }

  v7 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isConnecting
{
  if (self->_acquiringDaemonConnection)
  {
    LOBYTE(isLocalObjectValidOnQueue) = 1;
  }

  else
  {
    isLocalObjectValidOnQueue = objc_msgSend___isLocalObjectValidOnQueue_(self, a2, self->_localObjectLockQueue, v2, v3);
    if (isLocalObjectValidOnQueue)
    {
      v10 = objc_msgSend_listener(self, v6, v7, v8, v9);
      isSetupComplete = objc_msgSend_isSetupComplete(v10, v11, v12, v13, v14);

      if (isSetupComplete)
      {
        LOBYTE(isLocalObjectValidOnQueue) = 0;
      }

      else
      {
        remoteDaemonLockQueue = self->_remoteDaemonLockQueue;

        LOBYTE(isLocalObjectValidOnQueue) = objc_msgSend___isRemoteObjectValidOnQueue_(self, v16, remoteDaemonLockQueue, v17, v18);
      }
    }
  }

  return isLocalObjectValidOnQueue;
}

- (BOOL)isConnected
{
  if (!objc_msgSend___isLocalObjectValidOnQueue_(self, a2, self->_localObjectLockQueue, v2, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_listener(self, v5, v6, v7, v8);
  isSetupComplete = objc_msgSend_isSetupComplete(v9, v10, v11, v12, v13);

  if (!isSetupComplete)
  {
    return 0;
  }

  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;

  return objc_msgSend___isRemoteObjectValidOnQueue_(self, v15, remoteDaemonLockQueue, v16, v17);
}

- (void)_noteSetupComplete
{
  CFRunLoopSourceSignal(self->_runLoopSource);
  Main = CFRunLoopGetMain();

  CFRunLoopWakeUp(Main);
}

- (BOOL)remoteObjectExists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;
  if (remoteDaemonLockQueue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_25477B000;
    v5[3] = &unk_279783A10;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(remoteDaemonLockQueue, v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (BOOL)localObjectExists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  localObjectLockQueue = self->_localObjectLockQueue;
  if (localObjectLockQueue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_25477B0D4;
    v5[3] = &unk_279783A10;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(localObjectLockQueue, v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (void)_localObjectCleanup
{
  localObjectLockQueue = self->_localObjectLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B164;
  block[3] = &unk_279783738;
  block[4] = self;
  dispatch_sync(localObjectLockQueue, block);
}

- (void)_remoteObjectCleanup
{
  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B270;
  block[3] = &unk_279783738;
  block[4] = self;
  dispatch_sync(remoteDaemonLockQueue, block);
}

- (void)_listenerSetUpdated
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  listenerLockQueue = self->_listenerLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B464;
  block[3] = &unk_279783A10;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(listenerLockQueue, block);
  if (*(v17 + 24) == 1)
  {
    v4 = sub_254761764();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "We have some listeners, make sure we're connected to daemon", v14, 2u);
    }

    objc_msgSend__connectToDaemon(self, v5, v6, v7, v8);
  }

  else
  {
    v9 = sub_254761764();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "No more listeners disconnecting from daemon", v14, 2u);
    }

    objc_msgSend__disconnectFromDaemon(self, v10, v11, v12, v13);
  }

  _Block_object_dispose(&v16, 8);
}

- (BOOL)addListenerID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = dCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Request to add listener with ID: %@", buf, 0xCu);
  }

  v13 = objc_msgSend_length(dCopy, v6, v7, v8, v9);
  if (v13 && (objc_msgSend_hasListenerForID_(self, v10, dCopy, v11, v12) & 1) == 0)
  {
    listenerLockQueue = self->_listenerLockQueue;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = sub_25477B5F8;
    v24 = &unk_2797832F0;
    selfCopy = self;
    v26 = dCopy;
    dispatch_sync(listenerLockQueue, &v21);
    objc_msgSend__listenerSetUpdated(self, v15, v16, v17, v18, v21, v22, v23, v24, selfCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)hasListenerForID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  listenerLockQueue = self->_listenerLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B7A0;
  block[3] = &unk_279783A38;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(listenerLockQueue, block);
  LOBYTE(listenerLockQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return listenerLockQueue;
}

- (BOOL)removeListenerID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Request to remove listener with ID: %@", &buf, 0xCu);
  }

  if (objc_msgSend_length(dCopy, v6, v7, v8, v9))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x2020000000;
    v23 = 0;
    listenerLockQueue = self->_listenerLockQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25477B964;
    block[3] = &unk_279783A60;
    block[4] = self;
    v19 = dCopy;
    p_buf = &buf;
    dispatch_sync(listenerLockQueue, block);
    objc_msgSend__listenerSetUpdated(self, v11, v12, v13, v14);
    v15 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (BOOL)_makeConnectionWithCompletionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v5, v6, v7, v8);
  IsShuttingDown = objc_msgSend_systemIsShuttingDown(v9, v10, v11, v12, v13);

  if (IsShuttingDown)
  {
    goto LABEL_8;
  }

  v15 = sub_254761764();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_hasCheckedForDaemon)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *buf = 138412290;
    v61 = v16;
    _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "  Ensuring connection to daemon (has checked: %@)", buf, 0xCu);
  }

  if (self->_hasCheckedForDaemon)
  {
LABEL_8:
    v21 = 0;
  }

  else
  {
    self->_hasCheckedForDaemon = 1;
    if (!self->_listenerID)
    {
      v22 = IMGetMainBundleIdentifier();
      if (!objc_msgSend_length(v22, v23, v24, v25, v26))
      {
        v31 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v27, v28, v29, v30);

        v22 = v31;
      }

      v32 = objc_msgSend_copy(v22, v27, v28, v29, v30);
      listenerID = self->_listenerID;
      self->_listenerID = v32;
    }

    v34 = objc_msgSend_remoteObjectExists(self, v17, v18, v19, v20);
    v35 = sub_254761764();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v36)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "Remote Object exists, not creating new remote object", buf, 2u);
      }
    }

    else
    {
      if (v36)
      {
        v37 = self->_listenerID;
        *buf = 138412290;
        v61 = v37;
        _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "  Grabbing remote daemon port (listener ID: %@)", buf, 0xCu);
      }

      v42 = objc_msgSend_listener(self, v38, v39, v40, v41);
      objc_msgSend__noteDisconnected(v42, v43, v44, v45, v46);

      v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v35 = v47;
      v48 = self->_listenerID;
      if (v48)
      {
        CFDictionarySetValue(v47, @"listenerID", v48);
      }

      if (_IMWillLog())
      {
        v53 = objc_msgSend_date(MEMORY[0x277CBEAA8], v49, v50, v51, v52);
        if (v53)
        {
          CFDictionarySetValue(v35, @"agentRequested", v53);
        }
      }

      if (objc_msgSend_remoteObjectExists(self, v49, v50, v51, v52))
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy);
        }
      }

      else
      {
        localObjectLockQueue = self->_localObjectLockQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_25477BDD4;
        block[3] = &unk_279783AB0;
        block[4] = self;
        v35 = v35;
        v58 = v35;
        v59 = blockCopy;
        dispatch_sync(localObjectLockQueue, block);

        if (qword_27F610700 != -1)
        {
          sub_25477F9B8();
        }
      }
    }

    v21 = 1;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_connectToDaemon
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], a2, v2, v3, v4);
  IsShuttingDown = objc_msgSend_systemIsShuttingDown(v6, v7, v8, v9, v10);

  if (IsShuttingDown)
  {
    v16 = sub_254761764();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v17, v18, v19, v20);
      v26 = objc_msgSend_systemIsShuttingDown(v21, v22, v23, v24, v25);
      v27 = @"NO";
      if (v26)
      {
        v27 = @"YES";
      }

      *buf = 138412290;
      v63 = v27;
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "  Connecting to avdaemon (system is shutting down: %@", buf, 0xCu);
    }
  }

  else if ((objc_msgSend_isConnected(self, v12, v13, v14, v15) & 1) != 0 || objc_msgSend_isConnecting(self, v28, v29, v30, v31))
  {
    v32 = sub_254761764();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (objc_msgSend_isConnected(self, v33, v34, v35, v36))
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      if (objc_msgSend_isConnecting(self, v37, v38, v39, v40))
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      *buf = 138412546;
      v63 = v41;
      v64 = 2112;
      v65 = v42;
      _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, "  Daemon is connected %@ is connecting %@", buf, 0x16u);
    }
  }

  else
  {
    v43 = sub_254761764();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, buf, 2u);
    }

    objc_msgSend_lock(self->_connectionLock, v44, v45, v46, v47);
    if ((!objc_msgSend_remoteObjectExists(self, v48, v49, v50, v51) || (objc_msgSend___isLocalObjectValidOnQueue_(self, v52, self->_localObjectLockQueue, v54, v55) & 1) == 0) && !self->_acquiringDaemonConnection)
    {
      objc_msgSend__cleanUpConnection(self, v52, v53, v54, v55);
      self->_acquiringDaemonConnection = 1;
      dispatch_suspend(self->_remoteMessageQueue);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_25477C75C;
      v61[3] = &unk_279783738;
      v61[4] = self;
      v56 = MEMORY[0x259C18E10](v61);
      if ((objc_msgSend__makeConnectionWithCompletionBlock_(self, v57, v56, v58, v59) & 1) == 0)
      {
        self->_acquiringDaemonConnection = 0;
      }
    }

    objc_msgSend_unlock(self->_connectionLock, v52, v53, v54, v55);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpConnection
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v33, 2u);
  }

  *&self->_hasCheckedForDaemon = 0;
  if ((objc_msgSend_localObjectExists(self, v4, v5, v6, v7) & 1) != 0 || objc_msgSend_remoteObjectExists(self, v8, v9, v10, v11))
  {
    v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9, v10, v11);
    objc_msgSend_removeObserver_name_object_(v12, v13, self, *MEMORY[0x277D19190], 0);

    v18 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v14, v15, v16, v17);
    objc_msgSend_removeObserver_name_object_(v18, v19, self, *MEMORY[0x277D19148], 0);

    objc_msgSend__remoteObjectCleanup(self, v20, v21, v22, v23);
    objc_msgSend__localObjectCleanup(self, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_listener(self, v8, v9, v10, v11);
  objc_msgSend__noteDisconnected(v28, v29, v30, v31, v32);
}

- (void)_disconnectFromDaemon
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v8, 2u);
  }

  objc_msgSend__cleanUpConnection(self, v4, v5, v6, v7);
}

- (void)_localObjectDiedNotification:(id)notification
{
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, " ... disconnection from agent (local) being handled by main thread", v13, 2u);
  }

  objc_msgSend__disconnectFromDaemon(self, v5, v6, v7, v8);
  objc_msgSend__listenerSetUpdated(self, v9, v10, v11, v12);
  byte_27F610708 = 0;
}

- (void)_remoteObjectDiedNotification:(id)notification
{
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, " ... disconnection from agent (remote) being handled by main thread", buf, 2u);
  }

  objc_msgSend__disconnectFromDaemon(self, v5, v6, v7, v8);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v9, v10, v11, v12);
  IsShuttingDown = objc_msgSend_systemIsShuttingDown(v13, v14, v15, v16, v17);

  if ((IsShuttingDown & 1) == 0)
  {
    v19 = sub_254761764();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "Will auto reconnect...", buf, 2u);
    }

    im_dispatch_after();
  }
}

- (void)localObjectDiedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Disconnected from agent (local)...", v16, 2u);
  }

  v10 = objc_msgSend_listener(self, v6, v7, v8, v9);
  objc_msgSend__noteDisconnected(v10, v11, v12, v13, v14);

  byte_27F610708 = 1;
  objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v15, sel__localObjectDiedNotification_, notificationCopy, 0);
}

- (void)remoteObjectDiedNotification:(id)notification
{
  notificationCopy = notification;
  v9 = objc_msgSend_listener(self, v5, v6, v7, v8);
  objc_msgSend__noteDisconnected(v9, v10, v11, v12, v13);

  if ((byte_27F610708 & 1) == 0)
  {
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Disconnected from agent (remote)...", v16, 2u);
    }

    objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v15, sel__remoteObjectDiedNotification_, notificationCopy, 0);
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  types = protocol_getMethodDescription(&unk_28669DFF8, selector, 1, 1).types;
  v6 = MEMORY[0x277CBEB08];

  return MEMORY[0x2821F9670](v6, sel_signatureWithObjCTypes_, types, v4, v5);
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (objc_msgSend_isConnected(self, v5, v6, v7, v8))
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_25477CF78;
    v20 = &unk_2797832F0;
    selfCopy = self;
    v9 = invocationCopy;
    v22 = v9;
    v10 = MEMORY[0x259C18E10](&v17);
    objc_msgSend_retainArguments(v9, v11, v12, v13, v14, v17, v18, v19, v20, selfCopy);
    dispatch_async(self->_remoteMessageQueue, v10);

    v15 = v22;
LABEL_5:

    goto LABEL_6;
  }

  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;
  if (remoteDaemonLockQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25477CE94;
    block[3] = &unk_2797832F0;
    v24 = invocationCopy;
    selfCopy2 = self;
    dispatch_sync(remoteDaemonLockQueue, block);
    v15 = v24;
    goto LABEL_5;
  }

LABEL_6:
}

@end