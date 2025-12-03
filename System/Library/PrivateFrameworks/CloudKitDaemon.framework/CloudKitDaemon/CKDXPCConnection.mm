@interface CKDXPCConnection
- (BOOL)systemAvailabilityChanged:(unint64_t)changed;
- (CKDXPCConnection)initWithXPCConnection:(id)connection;
- (id)CKStatusReportArray;
- (id)containerProxyFromSetupInfo:(id)info containerScopedClientProxy:(id)proxy outError:(id *)error;
- (id)logicalDeviceScopedClientProxyForDeviceContext:(id)context;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)dealloc;
- (void)enumerateContainersUsingBlock:(id)block;
- (void)enumerateContainersWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler;
- (void)getContainerScopedDaemonProxyCreatorForSetupInfo:(id)info containerScopedClientProxy:(id)proxy completionHandler:(id)handler;
- (void)getDaemonTestServerManagerProxyCreatorWithCompletionHandler:(id)handler;
- (void)getLogicalDeviceScopedClientProxyCreatorForTestDeviceReference:(id)reference synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol:(id)protocol completionHandler:(id)handler;
- (void)getProcessScopedClientProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)getProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler;
- (void)getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:(id)info sessionAcquisitionClientProxy:(id)proxy completionHandler:(id)handler;
- (void)invalidate;
- (void)noteClientProcessScopedMetadata:(id)metadata;
@end

@implementation CKDXPCConnection

- (CKDXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v43.receiver = self;
  v43.super_class = CKDXPCConnection;
  v6 = [(CKDXPCConnection *)&v43 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
    v10 = objc_msgSend_now(MEMORY[0x277CBEAA8], v8, v9);
    connectionDate = v7->_connectionDate;
    v7->_connectionDate = v10;

    v12 = [CKDProcessScopedClientProxy alloc];
    v14 = objc_msgSend_initWithClientConnection_(v12, v13, v7);
    processScopedClientProxy = v7->_processScopedClientProxy;
    v7->_processScopedClientProxy = v14;

    v16 = [_TtC14CloudKitDaemon35CKDAdopterProcessScopedStateManager alloc];
    v18 = objc_msgSend_initWithClientConnection_(v16, v17, v7);
    adopterProcessScopedStateManager = v7->_adopterProcessScopedStateManager;
    v7->_adopterProcessScopedStateManager = v18;

    v20 = objc_opt_new();
    logicalDeviceScopedClientProxiesByDeviceReference = v7->_logicalDeviceScopedClientProxiesByDeviceReference;
    v7->_logicalDeviceScopedClientProxiesByDeviceReference = v20;

    v24 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v22, v23);
    sharedContainers = v7->_sharedContainers;
    v7->_sharedContainers = v24;

    v28 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v26, v27);
    containerProxies = v7->_containerProxies;
    v7->_containerProxies = v28;

    v30 = objc_opt_new();
    unlockedSinceBootQueue = v7->_unlockedSinceBootQueue;
    v7->_unlockedSinceBootQueue = v30;

    objc_msgSend_setSuspended_(v7->_unlockedSinceBootQueue, v32, 1);
    objc_msgSend_setMaxConcurrentOperationCount_(v7->_unlockedSinceBootQueue, v33, 1);
    v34 = objc_opt_new();
    containerAvailableQueue = v7->_containerAvailableQueue;
    v7->_containerAvailableQueue = v34;

    objc_msgSend_setSuspended_(v7->_containerAvailableQueue, v36, 1);
    objc_msgSend_setMaxConcurrentOperationCount_(v7->_containerAvailableQueue, v37, 1);
    v40 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v38, v39);
    objc_msgSend_registerWatcher_(v40, v41, v7);
  }

  return v7;
}

- (void)invalidate
{
  objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, a2, 4, &unk_28385CE80);
  objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, v3, 4, &unk_28385CEA0);
  processScopedClientProxy = self->_processScopedClientProxy;

  objc_msgSend_invalidate(processScopedClientProxy, v4, v5);
}

- (void)dealloc
{
  objc_msgSend_setSuspended_(self->_unlockedSinceBootQueue, a2, 0);
  objc_msgSend_setSuspended_(self->_containerAvailableQueue, v3, 0);
  v4.receiver = self;
  v4.super_class = CKDXPCConnection;
  [(CKDXPCConnection *)&v4 dealloc];
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v11 = objc_msgSend_processScopedClientProxy(self, v5, v6);
  v9 = objc_msgSend_procName(v11, v7, v8);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v10, @"client", v9, 0);
}

- (void)enumerateContainersUsingBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, blockCopy, 0, blockCopy);
  }

  else
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], 0, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDXPCConnection.m", 121, @"Invalid parameter not satisfying: %@", @"block");

    objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, 0, 0, 0);
  }
}

- (void)enumerateContainersWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKDXPCConnection.m", 126, @"Invalid parameter not satisfying: %@", @"block");
  }

  if ((options & 4) != 0)
  {
    v20 = objc_msgSend_sharedContainers(self, v7, v8);
    objc_sync_enter(v20);
    v23 = objc_msgSend_sharedContainers(self, v21, v22);
    v16 = objc_msgSend_allObjects(v23, v24, v25);

    objc_sync_exit(v20);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_225191E04;
    v32[3] = &unk_2785482D0;
    v17 = &v33;
    v33 = blockCopy;
    v26 = blockCopy;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v16, v27, options, v32);
  }

  else
  {
    v10 = objc_msgSend_containerProxies(self, v7, v8);
    objc_sync_enter(v10);
    v13 = objc_msgSend_containerProxies(self, v11, v12);
    v16 = objc_msgSend_allObjects(v13, v14, v15);

    objc_sync_exit(v10);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_225191E18;
    v30[3] = &unk_2785482F8;
    v17 = &v31;
    v31 = blockCopy;
    v18 = blockCopy;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v16, v19, options, v30);
  }
}

- (id)containerProxyFromSetupInfo:(id)info containerScopedClientProxy:(id)proxy outError:(id *)error
{
  v304 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  proxyCopy = proxy;
  v295 = 0;
  v296 = &v295;
  v297 = 0x2020000000;
  v298 = 0;
  v289 = 0;
  v290 = &v289;
  v291 = 0x3032000000;
  v292 = sub_225073FA0;
  v293 = sub_22507355C;
  v294 = 0;
  v283 = 0;
  v284 = &v283;
  v285 = 0x3032000000;
  v286 = sub_225073FA0;
  v287 = sub_22507355C;
  v288 = 0;
  v265 = infoCopy;
  v262 = objc_msgSend_containerID(infoCopy, v7, v8);
  v260 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v9, v10);
  v13 = objc_msgSend_processScopedClientProxy(self, v11, v12);
  v16 = objc_msgSend_containerOptions(infoCopy, v14, v15);
  v266 = objc_msgSend_clientEntitlementsWithContainerOptions_(v13, v17, v16);

  v20 = objc_msgSend_containerOptions(v265, v18, v19);
  v23 = objc_msgSend_fakeEntitlements(v20, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);

  if (v26)
  {
    if (objc_msgSend_hasAllowFakeEntitlementsEntitlement(v266, v27, v28))
    {
      v31 = objc_msgSend_containerOptions(v265, v29, v30);
      v34 = objc_msgSend_fakeEntitlements(v31, v32, v33);
      v36 = objc_msgSend_entitlementsByAddingOverlay_(v266, v35, v34);

      v266 = v36;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy10 = self;
        _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Client Proxy %@ is not entitled to use fake entitlements.", buf, 0xCu);
      }
    }
  }

  if (MGGetProductType() != 3348380076)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_225193560;
    aBlock[3] = &unk_278548320;
    v280 = &v295;
    aBlock[4] = self;
    v276 = v262;
    v277 = v260;
    v281 = &v283;
    v278 = v265;
    v282 = &v289;
    v279 = v266;
    v40 = _Block_copy(aBlock);
    v40[2]();
  }

  v41 = objc_msgSend_applicationBundleID(v266, v38, v39);

  if (v41)
  {
    v44 = [CKDApplicationID alloc];
    v47 = objc_msgSend_applicationBundleID(v266, v45, v46);
    v50 = objc_msgSend_containerOptions(v265, v48, v49);
    v53 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v50, v51, v52);
    v56 = objc_msgSend_containerOptions(v265, v54, v55);
    v59 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v56, v57, v58);
    v62 = objc_msgSend_containerOptions(v265, v60, v61);
    v65 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v62, v63, v64);
    v68 = objc_msgSend_containerOptions(v265, v66, v67);
    v71 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v68, v69, v70);
    v263 = objc_msgSend_initWithApplicationBundleIdentifier_applicationBundleIdentifierOverrideForContainerAccess_applicationBundleIdentifierOverrideForNetworkAttribution_applicationBundleIdentifierOverrideForPushTopicGeneration_applicationBundleIdentifierOverrideForTCC_(v44, v72, v47, v53, v59, v65, v71);
  }

  else
  {
    v263 = 0;
  }

  v73 = objc_msgSend_processScopedClientProxy(self, v42, v43);
  v76 = objc_msgSend_clientSDKVersion(v73, v74, v75);
  v78 = objc_msgSend_validateEntitlementsWithSDKVersion_error_(v266, v77, v76, error);

  if ((v78 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v92 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_error_impl(&dword_22506F000, v92, OS_LOG_TYPE_ERROR, "Connection %@ has invalid client entitlements.", buf, 0xCu);
    }

LABEL_26:
    v91 = 0;
    goto LABEL_153;
  }

  v81 = objc_msgSend_currentProcess(CKDDaemonProcess, v79, v80);
  if (objc_msgSend_processType(v81, v82, v83) == 1)
  {
    hasSystemLaunchDaemonEntitlement = objc_msgSend_hasSystemLaunchDaemonEntitlement(v266, v84, v85);

    if ((hasSystemLaunchDaemonEntitlement & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v89 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy10 = self;
        _os_log_error_impl(&dword_22506F000, v89, OS_LOG_TYPE_ERROR, "Connection %@ is not allowed to use the system cloudd.", buf, 0xCu);
      }

      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v90, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not allowed to use the system cloudd.", self);
        *error = v91 = 0;
        goto LABEL_153;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v257 = objc_msgSend_accountOverrideInfo(v265, v87, v88);
  if ((*MEMORY[0x277CBC810] & 1) == 0 && v257 && (objc_msgSend_hasCustomAccountsEntitlement(v266, v93, v94) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v200 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_error_impl(&dword_22506F000, v200, OS_LOG_TYPE_ERROR, "The application on the other end of %@ is trying to use a custom account but it doesn't have the right entitlement. Denying connection.", buf, 0xCu);
    }

    if (error)
    {
      v202 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v201, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not allowed to set custom account info", self);
LABEL_96:
      v91 = 0;
      *error = v202;
      goto LABEL_152;
    }

LABEL_107:
    v91 = 0;
    goto LABEL_152;
  }

  if (objc_msgSend_hasMasqueradingEntitlement(v266, v93, v94))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v97 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_impl(&dword_22506F000, v97, OS_LOG_TYPE_INFO, "Giving %@ blanket access to any container", buf, 0xCu);
    }

    goto LABEL_64;
  }

  v100 = objc_msgSend_array(MEMORY[0x277CBEB18], v95, v96);
  v103 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v263, v101, v102);

  if (v103)
  {
    v106 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v263, v104, v105);
    objc_msgSend_addObject_(v100, v107, v106);
  }

  v108 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v263, v104, v105);

  if (v108)
  {
    v111 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v263, v109, v110);
    objc_msgSend_addObject_(v100, v112, v111);
  }

  v113 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v263, v109, v110);

  if (v113)
  {
    v116 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v263, v114, v115);
    objc_msgSend_addObject_(v100, v117, v116);
  }

  v118 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v263, v114, v115);

  if (v118)
  {
    v121 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v263, v119, v120);
    objc_msgSend_addObject_(v100, v122, v121);
  }

  v123 = objc_msgSend_clientPrefixEntitlement(v266, v119, v120);
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  obj = v100;
  v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v124, &v271, v303, 16);
  if (!v127)
  {
    goto LABEL_63;
  }

  v128 = *v272;
  v129 = *MEMORY[0x277CBBF10];
  v130 = MEMORY[0x277CBC880];
  while (2)
  {
    v131 = 0;
    do
    {
      if (*v272 != v128)
      {
        objc_enumerationMutation(obj);
      }

      v132 = *(*(&v271 + 1) + 8 * v131);
      v133 = MEMORY[0x277CCACA8];
      v134 = objc_msgSend_applicationBundleID(v266, v125, v126);
      v136 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v133, v135, v129, @"%@", 0, v134);

      if (objc_msgSend_isEqualToString_(v136, v137, v132))
      {
        if (*v130 != -1)
        {
          dispatch_once(v130, *MEMORY[0x277CBC878]);
        }

        v140 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy10 = self;
          v141 = v140;
          v142 = "Giving %@ access to container because it's a data repair proxy";
          v143 = 12;
LABEL_60:
          _os_log_impl(&dword_22506F000, v141, OS_LOG_TYPE_INFO, v142, buf, v143);
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      if (!objc_msgSend_length(v123, v138, v139))
      {
        if (*v130 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v205 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_104;
        }

        *buf = 138412546;
        selfCopy10 = self;
        v301 = 2114;
        v302 = v132;
        v206 = "Connection %@ specified bundle identifier override '%{public}@', but it has no prefix entitlement";
        goto LABEL_125;
      }

      hasPrefix = objc_msgSend_hasPrefix_(v132, v144, v123);
      v146 = *v130;
      if (!hasPrefix)
      {
        if (*v130 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v205 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_104;
        }

        *buf = 138412546;
        selfCopy10 = self;
        v301 = 2114;
        v302 = v132;
        v206 = "Connection %@ specified bundle identifier override '%{public}@', but it didn't match the prefix";
LABEL_125:
        _os_log_fault_impl(&dword_22506F000, v205, OS_LOG_TYPE_FAULT, v206, buf, 0x16u);
LABEL_104:

        if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v207, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not allowed to set its application bundle identifier without the %@ entitlement", self, *MEMORY[0x277CBC898]);
        }

        goto LABEL_107;
      }

      if (*v130 != -1)
      {
        dispatch_once(v130, *MEMORY[0x277CBC878]);
      }

      v147 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy10 = self;
        v301 = 2114;
        v302 = v132;
        v141 = v147;
        v142 = "Allowing %@ to override bundle identifier '%{public}@' due to matching prefix";
        v143 = 22;
        goto LABEL_60;
      }

LABEL_61:

      ++v131;
    }

    while (v127 != v131);
    v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v125, &v271, v303, 16);
    if (v127)
    {
      continue;
    }

    break;
  }

LABEL_63:

LABEL_64:
  v148 = objc_msgSend_cloudServices(v266, v98, v99);
  if (objc_msgSend_containsObject_(v148, v149, *MEMORY[0x277CBC8C8]))
  {

    goto LABEL_67;
  }

  v153 = objc_msgSend_cloudServices(v266, v150, v151);
  v155 = objc_msgSend_containsObject_(v153, v154, *MEMORY[0x277CBC8C0]);

  if ((v155 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v203 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_error_impl(&dword_22506F000, v203, OS_LOG_TYPE_ERROR, "Connection %@ is not entitled to use CloudKit", buf, 0xCu);
    }

    if (error)
    {
      v202 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v204, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not entitled to use CloudKit", self);
      goto LABEL_96;
    }

    goto LABEL_107;
  }

LABEL_67:
  v156 = objc_msgSend_containerEnvironmentForContainerID_entitlements_(MEMORY[0x277CBC218], v152, v262, v266);
  v157 = objc_alloc(MEMORY[0x277CBC220]);
  v160 = objc_msgSend_containerIdentifier(v262, v158, v159);
  v162 = objc_msgSend_initWithContainerIdentifier_environment_(v157, v161, v160, v156);

  if (v263)
  {
    if (objc_msgSend_isSupported(MEMORY[0x277CBC558], v163, v164))
    {
      v165 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v166 = MEMORY[0x277CBC830];
      v167 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
      {
        v231 = objc_msgSend_ckShortDescription(v260, v168, v169);
        *buf = 138412290;
        selfCopy10 = v231;
        _os_log_debug_impl(&dword_22506F000, v167, OS_LOG_TYPE_DEBUG, "Verifying current persona %@ can access container", buf, 0xCu);
      }

      v171 = (v290 + 5);
      v170 = v290[5];
      v269 = 0;
      v270 = v170;
      ProximatePersona_error = objc_msgSend_getProximatePersona_error_(MEMORY[0x277CBC558], v172, &v270, &v269);
      objc_storeStrong(v171, v270);
      v176 = v269;
      if ((ProximatePersona_error & 1) == 0)
      {
        if (*v165 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v208 = *v166;
        if (os_log_type_enabled(*v166, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy10 = v176;
          _os_log_error_impl(&dword_22506F000, v208, OS_LOG_TYPE_ERROR, "Failed to resolve the proximate persona with error: %@", buf, 0xCu);
        }

        if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v209, *MEMORY[0x277CBBF50], 5, v176, @"Invalid persona for container");
        }

        goto LABEL_149;
      }

      v177 = objc_msgSend_containerOptions(v265, v174, v175);
      v180 = objc_msgSend_persona(v177, v178, v179);
      v181 = v180;
      if (!v180)
      {
        v181 = v290[5];
      }

      objc_storeStrong(v284 + 5, v181);

      v182 = v284[5];
      if ((CKPersonasAreEquivalent() & 1) == 0)
      {
        if (*v165 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v210 = *v166;
        if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
        {
          v234 = objc_msgSend_ckShortDescription(v284[5], v211, v212);
          *buf = 138412290;
          selfCopy10 = v234;
          _os_log_error_impl(&dword_22506F000, v210, OS_LOG_TYPE_ERROR, "Detected that the client did not adopt or propagate the persona %@", buf, 0xCu);
        }

        if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v213, *MEMORY[0x277CBBF50], 5, @"Invalid persona for container");
        }

        v214 = objc_alloc(MEMORY[0x277CBC6B0]);
        v215 = objc_alloc(MEMORY[0x277CBC6C8]);
        v217 = objc_msgSend_initWithFilePath_lineNumber_(v215, v216, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/IPCMessaging/CKDXPCConnection.m", 335);
        v220 = objc_msgSend_ckShortDescription(v162, v218, v219);
        v222 = objc_msgSend_initWithSourceCodeLocation_format_(v214, v221, v217, @"Persona failed to propagate for container %@: %@", v220, v284[5]);

        v225 = objc_msgSend_processScopedClientProxy(self, v223, v224);
        objc_msgSend_handleSignificantIssue_actions_(v225, v226, v222, 3);

        goto LABEL_149;
      }

      v185 = v284[5];
      if (!v185 || (v186 = objc_msgSend_type(v185, v183, v184), (v186 - 3) < 2))
      {
        v187 = objc_msgSend_containerOptions(v265, v183, v184);
        v190 = objc_msgSend_testDeviceReferenceProtocol(v187, v188, v189);
        v192 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, v191, v190);

        objc_msgSend_BOOLOptionForKey_(v192, v193, *MEMORY[0x277CBC110]);
        if ((CKBoolFromCKTernaryWithDefault() & 1) == 0)
        {
          v268 = v176;
          v195 = objc_msgSend_personasWithType_error_(MEMORY[0x277CBC558], v194, 1, &v268);
          v196 = v268;

          v199 = objc_msgSend_firstObject(v195, v197, v198);

          if (v199)
          {
            objc_storeStrong(v284 + 5, v199);
            v176 = v196;
            goto LABEL_135;
          }

          if (v196)
          {
            if (*v165 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v232 = *v166;
            if (os_log_type_enabled(*v166, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy10 = v196;
              _os_log_error_impl(&dword_22506F000, v232, OS_LOG_TYPE_ERROR, "Failed to fetch personal persona with error: %@", buf, 0xCu);
            }

            if (error)
            {
              *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v233, *MEMORY[0x277CBBF50], 5, @"Invalid persona for container");
            }

LABEL_148:
            v176 = v196;
LABEL_149:

LABEL_150:
            v91 = 0;
            goto LABEL_151;
          }

          v199 = 0;
          v176 = 0;
LABEL_135:
        }

        goto LABEL_136;
      }

      if (!v186)
      {
        v227 = MEMORY[0x277CBC558];
        v228 = objc_msgSend_identifier(v284[5], v183, v184);
        v192 = objc_msgSend_personaWithIdentifier_error_(v227, v229, v228, 0);

        if (v192)
        {
          v230 = v284;
          v192 = v192;
          v199 = v230[5];
          v230[5] = v192;
          goto LABEL_135;
        }

LABEL_136:
      }

      v235 = v284[5];
      if (v235)
      {
        v267 = v176;
        v236 = objc_msgSend_adopt_(v235, v183, &v267);
        v196 = v267;

        if (!v236)
        {
          if (*v165 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v252 = *v166;
          if (os_log_type_enabled(*v166, OS_LOG_TYPE_ERROR))
          {
            v256 = v284[5];
            *buf = 138412546;
            selfCopy10 = v256;
            v301 = 2112;
            v302 = v196;
            _os_log_error_impl(&dword_22506F000, v252, OS_LOG_TYPE_ERROR, "Failed to adopt persona %@ with error: %@", buf, 0x16u);
          }

          if (error)
          {
            *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v253, *MEMORY[0x277CBBF50], 5, @"Invalid persona for container");
          }

          goto LABEL_148;
        }

        v176 = v196;
      }
    }

    v237 = [CKDAppContainerTuple alloc];
    v239 = objc_msgSend_initWithApplicationID_containerID_persona_(v237, v238, v263, v162, v284[5]);
    v240 = [CKDContainerProxy alloc];
    v243 = objc_msgSend_containerOptions(v265, v241, v242);
    v91 = objc_msgSend_initWithAppContainerTuple_entitlements_options_distantContainer_connection_(v240, v244, v239, v266, v243, proxyCopy, self);

    v247 = objc_msgSend_containerProxies(self, v245, v246);
    objc_sync_enter(v247);
    v250 = objc_msgSend_containerProxies(self, v248, v249);
    objc_msgSend_addObject_(v250, v251, v91);

    objc_sync_exit(v247);
    *(v296 + 24) = 1;

    goto LABEL_151;
  }

  if (!error)
  {
    goto LABEL_150;
  }

  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v163, *MEMORY[0x277CBBF50], 8, @"Trying to initialize a container without an application ID");
  *error = v91 = 0;
LABEL_151:

LABEL_152:
LABEL_153:

  _Block_object_dispose(&v283, 8);
  _Block_object_dispose(&v289, 8);

  _Block_object_dispose(&v295, 8);
  v254 = *MEMORY[0x277D85DE8];

  return v91;
}

- (BOOL)systemAvailabilityChanged:(unint64_t)changed
{
  changedCopy = changed;
  v91 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_processScopedClientProxy(selfCopy, v5, v6);
  v10 = objc_msgSend_clientEntitlements(v7, v8, v9);
  hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v10, v11, v12);

  v16 = objc_msgSend_processScopedClientProxy(selfCopy, v14, v15);
  v19 = objc_msgSend_processBinaryName(v16, v17, v18);

  v22 = objc_msgSend_processScopedClientProxy(selfCopy, v20, v21);
  v25 = objc_msgSend_procName(v22, v23, v24);
  v26 = changedCopy | hasAllowAccessDuringBuddyEntitlement;

  if ((changedCopy | hasAllowAccessDuringBuddyEntitlement))
  {
    v29 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v27, v28);
    v31 = objc_msgSend_previousProcTearDownOperations_(v29, v30, v19);
  }

  else
  {
    v31 = 0;
  }

  if ((changedCopy & 2) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 138543362;
    v84 = v25;
    v33 = "Connection from %{public}@ not active yet because device hasn't been unlocked since boot.";
LABEL_40:
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
LABEL_41:
    v72 = 1;
    goto LABEL_42;
  }

  v34 = objc_msgSend_unlockedSinceBootQueue(selfCopy, v27, v28);
  isSuspended = objc_msgSend_isSuspended(v34, v35, v36);

  v38 = MEMORY[0x277CBC880];
  v39 = MEMORY[0x277CBC878];
  if (isSuspended)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v84 = v25;
      _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "Connection from client %{public}@ is past unlock check", buf, 0xCu);
    }

    v43 = objc_msgSend_unlockedSinceBootQueue(selfCopy, v41, v42);
    objc_msgSend_setSuspended_(v43, v44, 0);
  }

  v45 = *v39;
  v46 = *v38;
  if ((v26 & 1) == 0)
  {
    if (*v38 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v45);
    }

    v32 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 138543362;
    v84 = v25;
    v33 = "Connection from %{public}@ not active. Device is not past buddy and it lacks the entitlement to bypass.";
    goto LABEL_40;
  }

  if (*v38 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v45);
  }

  v47 = MEMORY[0x277CBC830];
  v48 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v84 = v25;
    _os_log_impl(&dword_22506F000, v48, OS_LOG_TYPE_INFO, "Connection from client %{public}@ is past buddy check", buf, 0xCu);
  }

  v49 = MEMORY[0x277CCA8C8];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_225193F14;
  v79[3] = &unk_278545898;
  v80 = v25;
  v81 = selfCopy;
  v51 = objc_msgSend_blockOperationWithBlock_(v49, v50, v79);
  if (objc_msgSend_count(v31, v52, v53))
  {
    if (*v38 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v39);
    }

    v56 = *v47;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v59 = objc_msgSend_count(v31, v57, v58);
      v62 = objc_msgSend_count(v31, v60, v61);
      v63 = @"s";
      *buf = 138413058;
      v84 = selfCopy;
      v85 = 2112;
      if (v62 == 1)
      {
        v63 = &stru_28385ED00;
      }

      v86 = v19;
      v87 = 2048;
      v88 = v59;
      v89 = 2112;
      v90 = v63;
      _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_INFO, "Incoming client %@ connection with processBinaryName %@ is waiting resume its container available queue. We have %ld existing connection%@ tearing down", buf, 0x2Au);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v64 = v31;
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v75, v82, 16);
    if (v67)
    {
      v68 = *v76;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v76 != v68)
          {
            objc_enumerationMutation(v64);
          }

          objc_msgSend_addDependency_(v51, v66, *(*(&v75 + 1) + 8 * i), v75);
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v66, &v75, v82, 16);
      }

      while (v67);
    }
  }

  v70 = objc_msgSend_unlockedSinceBootQueue(selfCopy, v54, v55, v75);
  objc_msgSend_addOperation_(v70, v71, v51);

  v72 = 0;
LABEL_42:

  objc_sync_exit(selfCopy);
  v73 = *MEMORY[0x277D85DE8];
  return v72;
}

- (void)noteClientProcessScopedMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = objc_msgSend_clientSDKVersion(metadataCopy, v5, v6);
  v10 = objc_msgSend_processScopedClientProxy(self, v8, v9);
  objc_msgSend_setClientSDKVersion_(v10, v11, v7);

  v12 = objc_opt_new();
  v15 = objc_msgSend_frameworkFingerprint(metadataCopy, v13, v14);
  isLikelyEqual = objc_msgSend_isLikelyEqual_(v15, v16, v12);

  if ((isLikelyEqual & 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x277CBC6B0]);
    v19 = objc_alloc(MEMORY[0x277CBC6C8]);
    v21 = objc_msgSend_initWithFilePath_lineNumber_(v19, v20, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/IPCMessaging/CKDXPCConnection.m", 481);
    v24 = objc_msgSend_frameworkFingerprint(metadataCopy, v22, v23);
    v26 = objc_msgSend_initWithSourceCodeLocation_format_(v18, v25, v21, @"Client and daemon processes have different versions of CloudKit.framework in memory: <%@> vs. <%@>", v24, v12);

    v27 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22519425C;
    block[3] = &unk_278545898;
    block[4] = self;
    v34 = v26;
    v28 = v26;
    dispatch_async(v27, block);

    v31 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v29, v30);
    objc_msgSend_handleSignificantIssue_actions_(v31, v32, v28, 4);
  }
}

- (void)getContainerScopedDaemonProxyCreatorForSetupInfo:(id)info containerScopedClientProxy:(id)proxy completionHandler:(id)handler
{
  infoCopy = info;
  proxyCopy = proxy;
  handlerCopy = handler;
  v13 = objc_msgSend_containerAvailableQueue(self, v11, v12);
  v16 = objc_msgSend_containerOptions(infoCopy, v14, v15);
  isCloudCoreSession = objc_msgSend_isCloudCoreSession(v16, v17, v18);

  if (isCloudCoreSession)
  {
    v22 = objc_msgSend_unlockedSinceBootQueue(self, v20, v21);

    v13 = v22;
  }

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22519443C;
  v27[3] = &unk_278545808;
  objc_copyWeak(&v31, &location);
  v23 = infoCopy;
  v28 = v23;
  v24 = proxyCopy;
  v29 = v24;
  v25 = handlerCopy;
  v30 = v25;
  objc_msgSend_addOperationWithBlock_(v13, v26, v27);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol:(id)protocol completionHandler:(id)handler
{
  protocolCopy = protocol;
  handlerCopy = handler;
  v10 = objc_msgSend_unlockedSinceBootQueue(self, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251945C4;
  v14[3] = &unk_278546550;
  v15 = protocolCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = protocolCopy;
  objc_msgSend_addOperationWithBlock_(v10, v13, v14);
}

- (void)getProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_unlockedSinceBootQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251946E8;
  v10[3] = &unk_2785456A0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_unlockedSinceBootQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225194800;
  v10[3] = &unk_2785456C8;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getDaemonTestServerManagerProxyCreatorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
  v10 = objc_msgSend_processType(v7, v8, v9);

  if (v10 == 2)
  {
    v13 = objc_msgSend_unlockedSinceBootQueue(self, v11, v12);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22519494C;
    v15[3] = &unk_2785456A0;
    v16 = handlerCopy;
    objc_msgSend_addOperationWithBlock_(v13, v14, v15);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)logicalDeviceScopedClientProxyForDeviceContext:(id)context
{
  v39[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_msgSend_testDeviceReference(contextCopy, v5, v6);
  v10 = objc_msgSend_deviceID(v7, v8, v9);
  v13 = v10;
  v14 = @"NO_DEVICE_ID";
  if (v10)
  {
    v14 = v10;
  }

  v39[0] = v14;
  v15 = objc_msgSend_testDeviceReference(contextCopy, v11, v12);
  v18 = objc_msgSend_serverReferenceProtocol(v15, v16, v17);
  v22 = objc_msgSend_dataDirectory(v18, v19, v20);
  v23 = v22;
  if (!v22)
  {
    v23 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v21, @"/dev/null");
  }

  v39[1] = v23;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v39, 2);
  if (!v22)
  {
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = objc_msgSend_logicalDeviceScopedClientProxiesByDeviceReference(selfCopy, v26, v27);
  v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v24);

  if (!v30)
  {
    v31 = [CKDLogicalDeviceScopedClientProxy alloc];
    v30 = objc_msgSend_initWithClientConnection_deviceContext_(v31, v32, selfCopy, contextCopy);
    v35 = objc_msgSend_logicalDeviceScopedClientProxiesByDeviceReference(selfCopy, v33, v34);
    objc_msgSend_setObject_forKeyedSubscript_(v35, v36, v30, v24);
  }

  objc_sync_exit(selfCopy);

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)getProcessScopedClientProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225194D34;
  aBlock[3] = &unk_278548238;
  v7 = handlerCopy;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = sub_225194D4C(self, synchronousCopy, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225194EB0;
  v12[3] = &unk_278548348;
  v13 = v7;
  v10 = v7;
  objc_msgSend_getProcessScopedClientProxyCreatorWithCompletionHandler_(v9, v11, v12);
}

- (void)getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:(id)info sessionAcquisitionClientProxy:(id)proxy completionHandler:(id)handler
{
  handlerCopy = handler;
  proxyCopy = proxy;
  infoCopy = info;
  v11 = [_TtC14CloudKitDaemon18CKDSessionAcquirer alloc];
  v15 = 0;
  v13 = objc_msgSend_initWithSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_clientConnection_error_(v11, v12, infoCopy, proxyCopy, self, &v15);

  v14 = v15;
  handlerCopy[2](handlerCopy, v13, v14);
}

- (void)getLogicalDeviceScopedClientProxyCreatorForTestDeviceReference:(id)reference synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251950C0;
  aBlock[3] = &unk_278548238;
  v9 = handlerCopy;
  v18 = v9;
  referenceCopy = reference;
  v11 = _Block_copy(aBlock);
  v12 = sub_225194D4C(self, synchronousCopy, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251950D8;
  v15[3] = &unk_278548370;
  v16 = v9;
  v13 = v9;
  objc_msgSend_getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol_completionHandler_(v12, v14, referenceCopy, v15);
}

- (id)CKStatusReportArray
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_connectionDate(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"\n connected since: %@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  objc_msgSend_addObject_(v3, v11, @"------ Containers -------");
  v14 = objc_msgSend_containerProxies(self, v12, v13);
  objc_sync_enter(v14);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = objc_msgSend_containerProxies(self, v15, v16);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v28, v32, 16);
  if (v21)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_CKStatusReportArray(*(*(&v28 + 1) + 8 * i), v19, v20);
        objc_msgSend_addObject_(v3, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v28, v32, 16);
    }

    while (v21);
  }

  objc_sync_exit(v14);
  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

@end