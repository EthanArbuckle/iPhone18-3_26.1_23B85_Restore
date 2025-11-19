@interface CKDProcessScopedClientProxy
+ (BOOL)isPlatformBinary:(id *)a3;
- (BOOL)canOpenFileAtURL:(id)a3;
- (BOOL)hasValidatedEntitlements;
- (BOOL)isClientMainBundleAppleExecutable;
- (BOOL)processIsAttached;
- (CKDProcessScopedClientProxy)initWithClientConnection:(id)a3;
- (CKDXPCConnection)clientConnection;
- (id)CKPropertiesDescription;
- (id)clientEntitlementsWithContainerOptions:(id)a3;
- (id)getFileMetadataWithFileHandle:(id)a3 openInfo:(id)a4 error:(id *)a5;
- (id)issueSandboxExtensionForItem:(id)a3 error:(id *)a4;
- (void)calculateCloudCoreClientEntitlements;
- (void)handleSignificantIssue:(id)a3 actions:(unint64_t)a4;
@end

@implementation CKDProcessScopedClientProxy

- (BOOL)processIsAttached
{
  v3 = objc_msgSend_pid(self, a2, v2);

  return MEMORY[0x28210E2B8](v3);
}

- (BOOL)isClientMainBundleAppleExecutable
{
  if (objc_msgSend_isPlatformBinary(self, a2, v2))
  {
    return 1;
  }

  if (!objc_msgSend_hasValidatedEntitlements(self, v4, v5))
  {
    return 0;
  }

  v9 = objc_msgSend_clientEntitlements(self, v7, v8);
  v12 = objc_msgSend_applicationBundleID(v9, v10, v11);
  hasPrefix = objc_msgSend_hasPrefix_(v12, v13, @"com.apple.");

  if (hasPrefix)
  {
    return 1;
  }

  v17 = objc_msgSend_clientEntitlements(self, v15, v16);
  hasSPIEntitlement = objc_msgSend_hasSPIEntitlement(v17, v18, v19);

  return (hasSPIEntitlement & 1) != 0;
}

- (CKDXPCConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

- (id)clientEntitlementsWithContainerOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_225072F00(v4);

  return v6;
}

- (void)calculateCloudCoreClientEntitlements
{
  v2 = self;
  sub_2250738B0();
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 2);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_procName(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"name=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  if (objc_msgSend_isSandboxed(self, v11, v12))
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"flags=sandboxed");
    objc_msgSend_addObject_(v3, v15, v14);
  }

  v16 = objc_msgSend_componentsJoinedByString_(v3, v13, @", ");

  return v16;
}

- (CKDProcessScopedClientProxy)initWithClientConnection:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v65.receiver = self;
  v65.super_class = CKDProcessScopedClientProxy;
  v5 = [(CKDProcessScopedClientProxy *)&v65 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_clientConnection, v4);
    v63 = 0u;
    v64 = 0u;
    v9 = objc_msgSend_xpcConnection(v4, v7, v8);
    v12 = v9;
    if (v9)
    {
      objc_msgSend_auditToken(v9, v10, v11);
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v15 = objc_msgSend_xpcConnection(v4, v13, v14);
    v6->_pid = objc_msgSend_processIdentifier(v15, v16, v17);

    v18 = objc_alloc(MEMORY[0x277CBC350]);
    pid = v6->_pid;
    buffer = v63;
    v69 = v64;
    v21 = objc_msgSend_initWithAuditToken_pid_(v18, v20, &buffer, pid);
    clientEntitlements = v6->_clientEntitlements;
    v6->_clientEntitlements = v21;

    buffer = v63;
    v69 = v64;
    v6->_sandboxed = sandbox_check_by_audit_token() != 0;
    buffer = v63;
    v69 = v64;
    v6->_platformBinary = objc_msgSend_isPlatformBinary_(CKDProcessScopedClientProxy, v23, &buffer);
    v6->_hasValidatedEntitlementsTernary = -1;
    if (proc_name(v6->_pid, &buffer, 0x40u) >= 1)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_initWithCString_encoding_(v24, v25, &buffer, 4);
      processBinaryName = v6->_processBinaryName;
      v6->_processBinaryName = v26;
    }

    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = v6->_processBinaryName;
    if (!v30)
    {
      v30 = @"???";
    }

    v31 = objc_msgSend_initWithFormat_(v28, v29, @"%@(%d)", v30, v6->_pid);
    procName = v6->_procName;
    v6->_procName = v31;

    v35 = objc_msgSend_clientEntitlements(v6, v33, v34);
    hasVFSOpenByIDEntitlement = objc_msgSend_hasVFSOpenByIDEntitlement(v35, v36, v37);

    v41 = MEMORY[0x277CBC880];
    v42 = MEMORY[0x277CBC830];
    if (hasVFSOpenByIDEntitlement)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *v42;
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v44 = v6->_procName;
        *buf = 138543362;
        v67 = v44;
        _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Client %{public}@ has entitlement to use openByID", buf, 0xCu);
      }
    }

    v45 = objc_msgSend_clientEntitlements(v6, v39, v40);
    hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v45, v46, v47);

    if (hasAllowAccessDuringBuddyEntitlement)
    {
      if (*v41 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v51 = *v42;
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v52 = v6->_procName;
        *buf = 138543362;
        v67 = v52;
        _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Client %{public}@ has entitlement to allow access during buddy.", buf, 0xCu);
      }
    }

    v53 = objc_msgSend_clientEntitlements(v6, v49, v50);
    hasAllowPackagesEntitlement = objc_msgSend_hasAllowPackagesEntitlement(v53, v54, v55);

    if (hasAllowPackagesEntitlement)
    {
      if (*v41 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v59 = *v42;
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v60 = v6->_procName;
        *buf = 138543362;
        v67 = v60;
        _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Client %{public}@ has entitlement to use packages. Good luck!", buf, 0xCu);
      }
    }

    objc_msgSend_calculateCloudCoreClientEntitlements(v6, v57, v58);
  }

  v61 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)getFileMetadataWithFileHandle:(id)a3 openInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_225073F90;
  v46 = sub_225073554;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_225073F90;
  v40 = sub_225073554;
  v41 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = objc_autoreleasePoolPush();
  voucher_copy_without_importance();
  voucher_adopt();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22518EDF8;
  v33[3] = &unk_278548040;
  v35 = &v42;
  v34 = v10;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_22518EE58;
  v27 = &unk_2785481A0;
  v12 = v8;
  v28 = v12;
  v13 = v9;
  v29 = v13;
  v31 = &v36;
  v32 = &v42;
  v14 = v34;
  v30 = v14;
  objc_msgSend_getProcessScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v15, 0, v33, &v24);

  objc_autoreleasePoolPop(v11);
  v16 = dispatch_time(0, 150000000000);
  if (dispatch_group_wait(v14, v16))
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"Daemon timed out waiting for adopter process to get metadata for %@", v13, v24, v25, v26, v27);
    v19 = v43[5];
    v43[5] = v18;

    v20 = 0;
    if (a5)
    {
      *a5 = v43[5];
    }
  }

  else
  {
    if (!v37[5])
    {
      if (!v43[5])
      {
        v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"Adopter failed to fetch metadata for %@", v13, v24, v25, v26, v27);
        v22 = v43[5];
        v43[5] = v21;
      }

      if (a5)
      {
        *a5 = v43[5];
      }
    }

    v20 = v37[5];
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v20;
}

- (void)handleSignificantIssue:(id)a3 actions:(unint64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22518F050;
  v9[3] = &unk_2785481C8;
  v10 = v6;
  v11 = a4;
  v7 = v6;
  objc_msgSend_getProcessScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v8, 1, &unk_28385CDE0, v9);
}

- (id)issueSandboxExtensionForItem:(id)a3 error:(id *)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_CKNoFollowFileURL(a3, a2, a3);
  v9 = objc_msgSend_path(v6, v7, v8);
  v10 = *MEMORY[0x277D861C0];
  objc_msgSend_fileSystemRepresentation(v9, v11, v12);
  v15 = objc_msgSend_clientConnection(self, v13, v14);
  v18 = objc_msgSend_xpcConnection(v15, v16, v17);
  v21 = v18;
  if (v18)
  {
    objc_msgSend_auditToken(v18, v19, v20);
  }

  else
  {
    memset(buf, 0, 32);
  }

  v22 = sandbox_extension_issue_file_to_process();

  if (!v22)
  {
    v34 = MEMORY[0x277CBC560];
    v35 = *MEMORY[0x277CBC120];
    v36 = objc_msgSend_clientEntitlements(self, v23, v24);
    v39 = objc_msgSend_applicationBundleID(v36, v37, v38);
    v42 = objc_msgSend_CKSanitizedPath(v9, v40, v41);
    v43 = *__error();
    v44 = __error();
    v45 = strerror(*v44);
    v33 = objc_msgSend_errorWithDomain_code_path_format_(v34, v46, v35, 1000, v9, @"Failed to issue sandbox extension for %@ at %@: %d (%s)", v39, v42, v43, v45);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v63 = v47;
      v66 = objc_msgSend_clientEntitlements(self, v64, v65);
      v69 = objc_msgSend_applicationBundleID(v66, v67, v68);
      v72 = objc_msgSend_CKSanitizedPath(v9, v70, v71);
      *buf = 138412802;
      *&buf[4] = v69;
      *&buf[12] = 2112;
      *&buf[14] = v72;
      *&buf[22] = 2112;
      *&buf[24] = v33;
      _os_log_error_impl(&dword_22506F000, v63, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension for applicationBundleID=%@ and path=%@: %@", buf, 0x20u);

      if (a4)
      {
        goto LABEL_15;
      }
    }

    else if (a4)
    {
LABEL_15:
      v48 = v33;
      v32 = 0;
      *a4 = v33;
      goto LABEL_22;
    }

LABEL_21:
    v32 = 0;
    goto LABEL_22;
  }

  v25 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = MEMORY[0x277CBC830];
  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v53 = v27;
    v56 = objc_msgSend_clientEntitlements(self, v54, v55);
    v59 = objc_msgSend_applicationBundleID(v56, v57, v58);
    v62 = objc_msgSend_CKSanitizedPath(v9, v60, v61);
    *buf = 138543618;
    *&buf[4] = v59;
    *&buf[12] = 2112;
    *&buf[14] = v62;
    _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Issued sandbox extension token for %{public}@ at %@", buf, 0x16u);
  }

  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = strlen(v22);
  v31 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v28, v30, v22, v29, 4, 1);
  if (!v31)
  {
    if (*v25 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *v26;
    if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v73 = v49;
      v76 = objc_msgSend_clientEntitlements(self, v74, v75);
      v79 = objc_msgSend_applicationBundleID(v76, v77, v78);
      v82 = objc_msgSend_CKSanitizedPath(v9, v80, v81);
      *buf = 138543618;
      *&buf[4] = v79;
      *&buf[12] = 2112;
      *&buf[14] = v82;
      _os_log_error_impl(&dword_22506F000, v73, OS_LOG_TYPE_ERROR, "Failed to allocate string for sandbox extension for applicationBundleID=%{public}@ and path=%@", buf, 0x16u);
    }

    free(v22);
    v33 = 0;
    goto LABEL_21;
  }

  v32 = v31;
  v33 = 0;
LABEL_22:
  v50 = v32;

  v51 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (BOOL)isPlatformBinary:(id *)a3
{
  v3 = *&a3->var0[4];
  *v8.val = *a3->var0;
  *&v8.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (~SecTaskGetCodeSignStatus(v4) & 0x24000001) == 0;
  CFRelease(v5);
  return v6;
}

- (BOOL)hasValidatedEntitlements
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_hasValidatedEntitlementsTernary == -1)
  {
    v5 = objc_msgSend_clientConnection(v2, v3, v4);
    v8 = objc_msgSend_xpcConnection(v5, v6, v7);
    v11 = v8;
    if (v8)
    {
      objc_msgSend_auditToken(v8, v9, v10);
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    v12 = SecTaskCreateWithAuditToken(0, &v20);

    if (v12)
    {
      v2->_hasValidatedEntitlementsTernary = SecTaskEntitlementsValidated();
      if (CKBoolFromCKTernary())
      {
        hasValidatedEntitlementsTernary = v2->_hasValidatedEntitlementsTernary;
      }

      else
      {
        v2->_hasValidatedEntitlementsTernary = (~SecTaskGetCodeSignStatus(v12) & 0x24000001) == 0;
      }

      if ((CKBoolFromCKTernary() & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v15 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v20.val[0] = 138412290;
          *&v20.val[1] = v2;
          _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Binary has invalid entitlements for %@", &v20, 0xCu);
        }
      }

      CFRelease(v12);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20.val[0]) = 0;
        _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Unable to get SecTask for connection to determine entitlement validity", &v20, 2u);
      }
    }
  }

  v16 = v2->_hasValidatedEntitlementsTernary;
  v17 = CKBoolFromCKTernary();
  objc_sync_exit(v2);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)canOpenFileAtURL:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_clientConnection(self, v5, v6);
  v10 = objc_msgSend_xpcConnection(v7, v8, v9);

  if (v10 && objc_msgSend_isFileURL(v4, v11, v12) && (objc_msgSend_path(v4, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_length(v15, v16, v17), v15, v18))
  {
    objc_msgSend_auditToken(v10, v19, v20);
    v23 = objc_msgSend_path(v4, v21, v22);
    v24 = v23;
    objc_msgSend_fileSystemRepresentation(v24, v25, v26);
    v27 = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end