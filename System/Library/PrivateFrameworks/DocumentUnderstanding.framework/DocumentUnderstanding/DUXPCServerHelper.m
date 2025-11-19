@interface DUXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5;
+ (BOOL)checkForAndLogTrueCStringEntitlement:(const char *)a3 connection:(id)a4;
+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 whitelistedServerInterface:(id)a5 requestHandler:(id)a6 validateConnection:(id)a7 setupClientProxy:(id)a8 interruptionHandler:(id)a9 invalidationHandler:(id)a10;
+ (void)logFalseEntitlement:(id)a3 serviceName:(id)a4 processName:(id)a5;
@end

@implementation DUXPCServerHelper

+ (void)logFalseEntitlement:(id)a3 serviceName:(id)a4 processName:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_length(v9, v10, v11, v12, v13);
  v15 = sub_232CCAA1C();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (v16)
    {
      v27 = 138412802;
      *v28 = v9;
      *&v28[8] = 2112;
      *&v28[10] = v8;
      *&v28[18] = 2112;
      *&v28[20] = v7;
      _os_log_error_impl(&dword_232B02000, v15, OS_LOG_TYPE_ERROR, "Connection from %@ to %@ is missing entitlement: %@", &v27, 0x20u);
    }
  }

  else if (v16)
  {
    v22 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v17, v18, v19, v20);
    v27 = 67109634;
    *v28 = objc_msgSend_processIdentifier(v22, v23, v24, v25, v26);
    *&v28[4] = 2112;
    *&v28[6] = v8;
    *&v28[14] = 2112;
    *&v28[16] = v7;
    _os_log_error_impl(&dword_232B02000, v15, OS_LOG_TYPE_ERROR, "Connection from %d to %@ failed entitlement check %@.", &v27, 0x1Cu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)checkForAndLogTrueCStringEntitlement:(const char *)a3 connection:(id)a4
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
    v22 = objc_msgSend_initWithCString_encoding_(v19, v20, a3, 4, v21);
    objc_msgSend_logFalseEntitlement_serviceName_processName_(a1, v23, v22, v22, v18);

    v12 = 0;
  }

  return v12;
}

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  hasTrueBooleanEntitlement_connection_logHandle = objc_msgSend_hasTrueBooleanEntitlement_connection_logHandle_(MEMORY[0x277D42660], v11, v8, v9, MEMORY[0x277D86220]);
  if ((hasTrueBooleanEntitlement_connection_logHandle & 1) == 0)
  {
    __errnum = 0;
    v17 = objc_msgSend_processIdentifier(v9, v12, v13, v14, v15);
    v19 = sub_232CE3EF8(v17, &__errnum);
    if (__errnum)
    {
      v20 = sub_232CCAA1C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_msgSend_processIdentifier(v9, v21, v22, v23, v24);
        v28 = strerror(__errnum);
        *buf = 67109634;
        v31 = v27;
        v32 = 2112;
        v33 = v10;
        v34 = 2080;
        v35 = v28;
        _os_log_error_impl(&dword_232B02000, v20, OS_LOG_TYPE_ERROR, "Connection from %d to %@ failed entitlement check (proc_name error: %s).", buf, 0x1Cu);
      }
    }

    else
    {
      objc_msgSend_logFalseEntitlement_serviceName_processName_(a1, v18, v8, v10, v19);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return hasTrueBooleanEntitlement_connection_logHandle;
}

+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 whitelistedServerInterface:(id)a5 requestHandler:(id)a6 validateConnection:(id)a7 setupClientProxy:(id)a8 interruptionHandler:(id)a9 invalidationHandler:(id)a10
{
  v89 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v68 = a5;
  v69 = a6;
  v17 = a7;
  v67 = a8;
  v71 = a9;
  v70 = a10;
  v82 = 0;
  v22 = objc_msgSend_processIdentifier(v15, v18, v19, v20, v21);
  v23 = sub_232CE3EF8(v22, &v82);
  if (objc_msgSend_length(v23, v24, v25, v26, v27))
  {
    v28 = sub_232CCAA1C();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v33 = objc_msgSend_processIdentifier(v15, v29, v30, v31, v32, v67);
    *buf = 138412802;
    v84 = v16;
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

    v41 = objc_msgSend_processIdentifier(v15, v37, v38, v39, v40, v67);
    v42 = strerror(v82);
    *buf = 138412802;
    v84 = v16;
    v85 = 2048;
    v86 = v41;
    v87 = 2080;
    v88 = v42;
    v34 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v36)
  {
    v66 = objc_msgSend_processIdentifier(v15, v37, v38, v39, v40, v67);
    *buf = 138412546;
    v84 = v16;
    v85 = 2048;
    v86 = v66;
    v34 = "New connection to %@ from unknown process (%lu).";
    v43 = v28;
    v44 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v48 = v17[2](v17, v15, v23);
  if (v48)
  {
    objc_msgSend_setExportedInterface_(v15, v45, v68, v46, v47);
    objc_msgSend_setExportedObject_(v15, v49, v69, v50, v51);
    objc_initWeak(buf, v15);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_232CE43E8;
    v77[3] = &unk_2789A7D68;
    objc_copyWeak(&v81, buf);
    v52 = v16;
    v78 = v52;
    v53 = v23;
    v79 = v53;
    v80 = v71;
    objc_msgSend_setInterruptionHandler_(v15, v54, v77, v55, v56);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_232CE44EC;
    v72[3] = &unk_2789A7D68;
    objc_copyWeak(&v76, buf);
    v73 = v52;
    v74 = v53;
    v75 = v70;
    objc_msgSend_setInvalidationHandler_(v15, v57, v72, v58, v59);
    objc_msgSend_resume(v15, v60, v61, v62, v63);

    objc_destroyWeak(&v76);
    objc_destroyWeak(&v81);
    objc_destroyWeak(buf);
  }

  v64 = *MEMORY[0x277D85DE8];
  return v48;
}

@end