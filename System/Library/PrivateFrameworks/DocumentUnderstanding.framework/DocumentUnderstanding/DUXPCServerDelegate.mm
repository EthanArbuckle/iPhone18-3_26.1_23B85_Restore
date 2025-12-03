@interface DUXPCServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DUXPCServerDelegate)initWithManager:(id)manager;
@end

@implementation DUXPCServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v11 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v8, &unk_28482E1E8, v9, v10);
  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v19 = objc_msgSend_initWithObjects_(v13, v16, v14, v17, v18, v15, 0);
  objc_autoreleasePoolPop(v12);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v11, v20, v19, sel_addOrUpdateSearchableItems_bundleID_completion_, 0, 0);

  v21 = [DUXPCServerRequestHandler alloc];
  v25 = objc_msgSend_initWithManager_(v21, v22, self->_textUnderstandingManager, v23, v24);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_232CE3384;
  aBlock[3] = &unk_2789A7C98;
  v26 = v25;
  v34 = v26;
  v27 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_232CE3428;
  v31[3] = &unk_2789A7CE0;
  v32 = v26;
  v28 = v26;
  LOBYTE(v19) = objc_msgSend_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_(DUXPCServerHelper, v29, connectionCopy, @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting", v11, v28, v27, v31, &unk_284815DF8, &unk_284815E18);

  return v19;
}

- (DUXPCServerDelegate)initWithManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = DUXPCServerDelegate;
  v6 = [(DUXPCServerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textUnderstandingManager, manager);
  }

  return v7;
}

@end