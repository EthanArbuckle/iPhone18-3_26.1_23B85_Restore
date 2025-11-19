@interface DUXPCServer
+ (id)sharedInstance;
+ (void)_registerDocumentUnderstandingListenerWithTextUnderstandingManager:(id)a3;
+ (void)registerDUXPCListenersWithManager:(id)a3;
- (DUXPCServer)init;
- (void)_newClientConnection:(id)a3 withTextUnderstandingManager:(id)a4;
- (void)_registerDocumentUpdateHandlerListenerWithTextUnderstandingManager:(id)a3;
@end

@implementation DUXPCServer

- (void)_newClientConnection:(id)a3 withTextUnderstandingManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_checkForAndLogTrueCStringEntitlement_connection_(DUXPCServerHelper, v8, "com.apple.TextUnderstanding.DocumentUpdateHandler", v6, v9))
  {
    xpc_connection_set_target_queue(v6, self->_documentUpdateQueue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_232CE27DC;
    handler[3] = &unk_2789A7C70;
    v11 = v7;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(v6);
  }
}

- (void)_registerDocumentUpdateHandlerListenerWithTextUnderstandingManager:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: Registering DocumentUpdateHandler", buf, 2u);
  }

  listener = self->_listener;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_232CE2B74;
  v7[3] = &unk_2789A7C48;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  xpc_connection_set_event_handler(listener, v7);
  xpc_connection_resume(self->_listener);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: Registered DocumentUpdateHandler", buf, 2u);
  }
}

- (DUXPCServer)init
{
  v13.receiver = self;
  v13.super_class = DUXPCServer;
  v2 = [(DUXPCServer *)&v13 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: Initializing DUXPCServer for DocumentUpdateHandler", v12, 2u);
  }

  v3 = dispatch_queue_create("com.apple.TextUnderstanding.DocumentUpdateHandler.queue", 0);
  documentUpdateQueue = v2->_documentUpdateQueue;
  v2->_documentUpdateQueue = v3;

  v5 = v2->_documentUpdateQueue;
  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    *v12 = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "DocumentUnderstanding: failed to create DocumentUpdateHandler queue";
LABEL_13:
    _os_log_error_impl(&dword_232B02000, v9, OS_LOG_TYPE_ERROR, v10, v12, 2u);
    goto LABEL_10;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.TextUnderstanding.DocumentUpdateHandler", v5, 1uLL);
  listener = v2->_listener;
  v2->_listener = mach_service;

  if (!v2->_listener)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *v12 = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "DocumentUnderstanding: could not start DocumentUpdateHandler xpc listener";
    goto LABEL_13;
  }

LABEL_6:
  v8 = v2;
LABEL_11:

  return v8;
}

+ (void)_registerDocumentUnderstandingListenerWithTextUnderstandingManager:(id)a3
{
  v3 = a3;
  v4 = [DUXPCServerDelegate alloc];
  v8 = objc_msgSend_initWithManager_(v4, v5, v3, v6, v7);

  v9 = qword_2814E3D98;
  qword_2814E3D98 = v8;

  v10 = objc_alloc(MEMORY[0x277CCAE98]);
  v14 = objc_msgSend_initWithMachServiceName_(v10, v11, @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting", v12, v13);
  v15 = qword_2814E3DA0;
  qword_2814E3DA0 = v14;

  objc_msgSend_setDelegate_(qword_2814E3DA0, v16, qword_2814E3D98, v17, v18);
  v23 = qword_2814E3DA0;

  objc_msgSend_resume(v23, v19, v20, v21, v22);
}

+ (void)registerDUXPCListenersWithManager:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_232CE3008;
  aBlock[3] = &unk_2789A7BF8;
  v12 = v4;
  v13 = a1;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE302C;
  block[3] = &unk_2789A7C20;
  v10 = v6;
  v7 = qword_2814E3D90;
  v8 = v6;
  if (v7 != -1)
  {
    dispatch_once(&qword_2814E3D90, block);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE3118;
  block[3] = &unk_2789A7E98;
  block[4] = a1;
  if (qword_27DDD4DF8 != -1)
  {
    dispatch_once(&qword_27DDD4DF8, block);
  }

  v2 = qword_27DDD4DF0;

  return v2;
}

@end