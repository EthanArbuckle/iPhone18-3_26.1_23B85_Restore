@interface CKDLogicalDeviceScopedClientProxy
- (BOOL)processIsAttached;
- (CKDLogicalDeviceScopedClientProxy)initWithClientConnection:(id)connection deviceContext:(id)context;
- (CKDXPCConnection)clientConnection;
- (id)CKPropertiesDescription;
- (id)openFileWithOpenInfo:(id)info error:(id *)error;
- (id)readBytesOfInMemoryAssetContentWithUUID:(id)d offset:(unint64_t)offset length:(unint64_t)length error:(id *)error;
- (void)addThrottle:(id)throttle;
- (void)resetThrottles;
@end

@implementation CKDLogicalDeviceScopedClientProxy

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_deviceContext(self, a2, v2);
  v6 = objc_msgSend_testDeviceReference(v3, v4, v5);

  if (v6)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"testDevice=%@", v6);
  }

  else
  {
    v8 = @"defaultDevice";
  }

  return v8;
}

- (CKDLogicalDeviceScopedClientProxy)initWithClientConnection:(id)connection deviceContext:(id)context
{
  connectionCopy = connection;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CKDLogicalDeviceScopedClientProxy;
  v8 = [(CKDLogicalDeviceScopedClientProxy *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_clientConnection, connectionCopy);
    objc_storeStrong(&v9->_deviceContext, context);
    v12 = objc_msgSend_xpcConnection(connectionCopy, v10, v11);
    v9->_pid = objc_msgSend_processIdentifier(v12, v13, v14);
  }

  return v9;
}

- (BOOL)processIsAttached
{
  v3 = objc_msgSend_pid(self, a2, v2);

  return MEMORY[0x28210E2B8](v3);
}

- (id)openFileWithOpenInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_225073F80;
  v39 = sub_22507354C;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_225073F80;
  v33 = sub_22507354C;
  v34 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = objc_autoreleasePoolPush();
  voucher_copy_without_importance();
  voucher_adopt();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22518CC4C;
  v26[3] = &unk_278548040;
  v28 = &v35;
  v27 = v7;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22518CCAC;
  v21[3] = &unk_278548090;
  v9 = infoCopy;
  v22 = v9;
  v24 = &v29;
  v25 = &v35;
  v10 = v27;
  v23 = v10;
  objc_msgSend_getLogicalDeviceScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v11, 1, v26, v21);

  objc_autoreleasePoolPop(v8);
  v12 = dispatch_time(0, 150000000000);
  if (dispatch_group_wait(v10, v12))
  {
    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1000, @"Daemon timed out waiting for adopter process to open file %@", v9);
    v15 = v36[5];
    v36[5] = v14;

    if (error)
    {
LABEL_3:
      v16 = 0;
      *error = v36[5];
      goto LABEL_10;
    }
  }

  else
  {
    v17 = v30[5];
    if (v17)
    {
      v16 = v17;
      goto LABEL_10;
    }

    if (!v36[5])
    {
      v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1000, @"Adopter failed to open file %@", v9);
      v19 = v36[5];
      v36[5] = v18;
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_10:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v16;
}

- (id)readBytesOfInMemoryAssetContentWithUUID:(id)d offset:(unint64_t)offset length:(unint64_t)length error:(id *)error
{
  dCopy = d;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_225073F80;
  v47 = sub_22507354C;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_225073F80;
  v41 = sub_22507354C;
  v42 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = objc_autoreleasePoolPush();
  voucher_copy_without_importance();
  voucher_adopt();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22518D13C;
  v34[3] = &unk_278548040;
  v36 = &v43;
  v35 = v11;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_22518D19C;
  v27 = &unk_2785480B8;
  v13 = dCopy;
  offsetCopy = offset;
  lengthCopy = length;
  v28 = v13;
  v30 = &v37;
  v31 = &v43;
  v14 = v35;
  v29 = v14;
  objc_msgSend_getLogicalDeviceScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v15, 1, v34, &v24);

  objc_autoreleasePoolPop(v12);
  v16 = dispatch_time(0, 150000000000);
  if (dispatch_group_wait(v14, v16))
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"Daemon timed out waiting for adopter to read bytes for %@", v13, v24, v25, v26, v27);
    v19 = v44[5];
    v44[5] = v18;

    v20 = 0;
    if (error)
    {
      *error = v44[5];
    }
  }

  else
  {
    if (!v38[5])
    {
      if (!v44[5])
      {
        v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"Adopter failed to read bytes for %@", v13, v24, v25, v26, v27);
        v22 = v44[5];
        v44[5] = v21;
      }

      if (error)
      {
        *error = v44[5];
      }
    }

    v20 = v38[5];
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v20;
}

- (void)resetThrottles
{
  v8 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Resetting throttles in %@", &v6, 0xCu);
  }

  objc_msgSend_getLogicalDeviceScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v4, 1, &unk_28385CD80, &unk_28385CDA0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addThrottle:(id)throttle
{
  throttleCopy = throttle;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22518D494;
  v7[3] = &unk_278548100;
  v8 = throttleCopy;
  v5 = throttleCopy;
  objc_msgSend_getLogicalDeviceScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v6, 1, &unk_28385CDC0, v7);
}

- (CKDXPCConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

@end