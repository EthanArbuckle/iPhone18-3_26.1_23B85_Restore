@interface DUXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name;
+ (BOOL)checkForAndLogTrueCStringEntitlement:(const char *)entitlement connection:(id)connection;
+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0;
+ (void)logFalseEntitlement:(id)entitlement serviceName:(id)name processName:(id)processName;
@end

@implementation DUXPCServerHelper

+ (void)logFalseEntitlement:(id)entitlement serviceName:(id)name processName:(id)processName
{
  v29 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  nameCopy = name;
  processNameCopy = processName;
  v14 = objc_msgSend_length(processNameCopy, v10, v11, v12, v13);
  v15 = sub_232CCAA1C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (v16)
    {
      v27 = 138412802;
      *v28 = processNameCopy;
      *&v28[8] = 2112;
      *&v28[10] = nameCopy;
      *&v28[18] = 2112;
      *&v28[20] = entitlementCopy;
      _os_log_error_impl(&dword_232B02000, v15, OS_LOG_TYPE_ERROR, "Connection from %@ to %@ is missing entitlement: %@", &v27, 0x20u);
    }
  }

  else if (v16)
  {
    v22 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v17, v18, v19, v20);
    v27 = 67109634;
    *v28 = objc_msgSend_processIdentifier(v22, v23, v24, v25, v26);
    *&v28[4] = 2112;
    *&v28[6] = nameCopy;
    *&v28[14] = 2112;
    *&v28[16] = entitlementCopy;
    _os_log_error_impl(&dword_232B02000, v15, OS_LOG_TYPE_ERROR, "Connection from %d to %@ failed entitlement check %@.", &v27, 0x1Cu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)checkForAndLogTrueCStringEntitlement:(const char *)entitlement connection:(id)connection
{
  v6 = xpc_connection_copy_entitlement_value();
  v11 = v6;
  if (v6 && xpc_BOOL_get_value(v6))
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v7, v8, v9, v10);
    v18 = objc_msgSend_processName(v13, v14, v15, v16, v17);

    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_initWithCString_encoding_(v19, v20, entitlement, 4, v21);
    objc_msgSend_logFalseEntitlement_serviceName_processName_(self, v23, v22, v22, v18);

    v12 = 0;
  }

  return v12;
}

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name
{
  v36 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  nameCopy = name;
  hasTrueBooleanEntitlement_connection_logHandle = objc_msgSend_hasTrueBooleanEntitlement_connection_logHandle_(MEMORY[0x277D42660], v11, entitlementCopy, connectionCopy, MEMORY[0x277D86220]);
  if ((hasTrueBooleanEntitlement_connection_logHandle & 1) == 0)
  {
    __errnum = 0;
    v17 = objc_msgSend_processIdentifier(connectionCopy, v12, v13, v14, v15);
    v19 = sub_232CE3EF8(v17, &__errnum);
    if (__errnum)
    {
      v20 = sub_232CCAA1C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_msgSend_processIdentifier(connectionCopy, v21, v22, v23, v24);
        v28 = strerror(__errnum);
        *buf = 67109634;
        v31 = v27;
        v32 = 2112;
        v33 = nameCopy;
        v34 = 2080;
        v35 = v28;
        _os_log_error_impl(&dword_232B02000, v20, OS_LOG_TYPE_ERROR, "Connection from %d to %@ failed entitlement check (proc_name error: %s).", buf, 0x1Cu);
      }
    }

    else
    {
      objc_msgSend_logFalseEntitlement_serviceName_processName_(self, v18, entitlementCopy, nameCopy, v19);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return hasTrueBooleanEntitlement_connection_logHandle;
}

+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)interruptionHandler invalidationHandler:(id)self0
{
  v89 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  nameCopy = name;
  interfaceCopy = interface;
  handlerCopy = handler;
  validateConnectionCopy = validateConnection;
  proxyCopy = proxy;
  interruptionHandlerCopy = interruptionHandler;
  invalidationHandlerCopy = invalidationHandler;
  v82 = 0;
  v22 = objc_msgSend_processIdentifier(connectionCopy, v18, v19, v20, v21);
  v23 = sub_232CE3EF8(v22, &v82);
  if (objc_msgSend_length(v23, v24, v25, v26, v27))
  {
    v28 = sub_232CCAA1C();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v33 = objc_msgSend_processIdentifier(connectionCopy, v29, v30, v31, v32, proxyCopy);
    *buf = 138412802;
    v84 = nameCopy;
    v85 = 2112;
    v86 = v23;
    v87 = 2048;
    v88 = v33;
    v34 = "New connection to %@ from %@ (%lu).";
LABEL_7:
    v43 = v28;
    v44 = 32;
LABEL_8:
    _os_log_impl(&dword_232B02000, v43, OS_LOG_TYPE_DEFAULT, v34, buf, v44);
    goto LABEL_9;
  }

  v35 = v82;
  v28 = sub_232CCAA1C();
  v36 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_9;
    }

    v41 = objc_msgSend_processIdentifier(connectionCopy, v37, v38, v39, v40, proxyCopy);
    v42 = strerror(v82);
    *buf = 138412802;
    v84 = nameCopy;
    v85 = 2048;
    v86 = v41;
    v87 = 2080;
    v88 = v42;
    v34 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v36)
  {
    v66 = objc_msgSend_processIdentifier(connectionCopy, v37, v38, v39, v40, proxyCopy);
    *buf = 138412546;
    v84 = nameCopy;
    v85 = 2048;
    v86 = v66;
    v34 = "New connection to %@ from unknown process (%lu).";
    v43 = v28;
    v44 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v48 = validateConnectionCopy[2](validateConnectionCopy, connectionCopy, v23);
  if (v48)
  {
    objc_msgSend_setExportedInterface_(connectionCopy, v45, interfaceCopy, v46, v47);
    objc_msgSend_setExportedObject_(connectionCopy, v49, handlerCopy, v50, v51);
    objc_initWeak(buf, connectionCopy);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_232CE43E8;
    v77[3] = &unk_2789A7D68;
    objc_copyWeak(&v81, buf);
    v52 = nameCopy;
    v78 = v52;
    v53 = v23;
    v79 = v53;
    v80 = interruptionHandlerCopy;
    objc_msgSend_setInterruptionHandler_(connectionCopy, v54, v77, v55, v56);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_232CE44EC;
    v72[3] = &unk_2789A7D68;
    objc_copyWeak(&v76, buf);
    v73 = v52;
    v74 = v53;
    v75 = invalidationHandlerCopy;
    objc_msgSend_setInvalidationHandler_(connectionCopy, v57, v72, v58, v59);
    objc_msgSend_resume(connectionCopy, v60, v61, v62, v63);

    objc_destroyWeak(&v76);
    objc_destroyWeak(&v81);
    objc_destroyWeak(buf);
  }

  v64 = *MEMORY[0x277D85DE8];
  return v48;
}

@end