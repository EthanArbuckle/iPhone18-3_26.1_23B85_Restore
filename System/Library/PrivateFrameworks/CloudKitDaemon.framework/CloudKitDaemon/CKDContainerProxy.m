@interface CKDContainerProxy
- (BOOL)beginContentAccess;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isContentDiscarded;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)isMemberOfClass:(Class)a3;
- (CKDContainer)container;
- (CKDContainerProxy)initWithAppContainerTuple:(id)a3 entitlements:(id)a4 options:(id)a5 distantContainer:(id)a6 connection:(id)a7;
- (CKDXPCConnection)connection;
- (Class)class;
- (id)CKStatusReportArray;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)beginContentAccess:(id)a3;
- (void)dealloc;
- (void)discardContentIfPossible;
- (void)endContentAccess;
- (void)forwardInvocation:(id)a3;
- (void)handleMemoryPressure:(int64_t)a3;
- (void)handleMemoryPressure:(int64_t)a3 completionHandler:(id)a4;
- (void)handleMemoryPressureNotification:(id)a3;
- (void)isContentDiscarded:(id)a3;
@end

@implementation CKDContainerProxy

- (BOOL)beginContentAccess
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v4 = coalescer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225071CB8;
  v8[3] = &unk_278545678;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_coalesce_(v4, v5, v8);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CKDXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (CKDContainer)container
{
  v2 = self;
  objc_sync_enter(v2);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_225073F70;
  v22 = sub_225073544;
  WeakRetained = objc_loadWeakRetained(&v2->_container);
  v5 = v19[5];
  if (!v5)
  {
    v6 = objc_msgSend_connection(v2, v3, v4);
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v7 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Creating proxied container", buf, 2u);
      }

      v10 = objc_msgSend_appContainerTuple(v2, v8, v9);
      v13 = objc_msgSend_persona(v10, v11, v12);
      v16 = v6;
      CKPersonaPerformBlock();
    }

    v5 = v19[5];
  }

  v14 = v5;
  _Block_object_dispose(&v18, 8);

  objc_sync_exit(v2);

  return v14;
}

- (Class)class
{
  v3 = self;
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&v3->_container);
  if (WeakRetained)
  {
    v2 = objc_opt_class();
  }

  objc_sync_exit(v3);
  if (!WeakRetained)
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)endContentAccess
{
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22507448C;
  v3[3] = &unk_278545A00;
  v3[4] = self;
  objc_msgSend_coalesce_(coalescer, a2, v3);
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (self && self->_accessCount)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      accessCount = self->_accessCount;
      *buf = 134217984;
      v11 = accessCount;
      _os_log_error_impl(&dword_22506F000, v4, OS_LOG_TYPE_ERROR, "Deallocating proxy without being discardable (%tu)", buf, 0xCu);
    }
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v5, v6, self);

  v9.receiver = self;
  v9.super_class = CKDContainerProxy;
  [(CKDContainerProxy *)&v9 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (CKDContainerProxy)initWithAppContainerTuple:(id)a3 entitlements:(id)a4 options:(id)a5 distantContainer:(id)a6 connection:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v60 = a6;
  v15 = a7;
  v18 = objc_msgSend_copy(v12, v16, v17);
  appContainerTuple = self->_appContainerTuple;
  self->_appContainerTuple = v18;

  v22 = objc_msgSend_copy(v13, v20, v21);
  entitlements = self->_entitlements;
  self->_entitlements = v22;

  v26 = objc_msgSend_copy(v14, v24, v25);
  options = self->_options;
  self->_options = v26;

  objc_storeStrong(&self->_distantContainer, a6);
  objc_storeWeak(&self->_connection, v15);
  v30 = objc_msgSend_testDeviceReferenceProtocol(v14, v28, v29);
  v32 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, v31, v30);

  v34 = objc_msgSend_logicalDeviceScopedClientProxyForDeviceContext_(v15, v33, v32);
  logicalDeviceScopedClientProxy = self->_logicalDeviceScopedClientProxy;
  self->_logicalDeviceScopedClientProxy = v34;

  objc_initWeak(&location, self);
  v38 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v36, v37);
  objc_msgSend_containerProxyInactiveTimeoutWithDefaultValue_(v38, v39, v40, 60.0);
  v42 = v41;

  v43 = objc_alloc(MEMORY[0x277CBC1E8]);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_22518AF48;
  v61[3] = &unk_278547F50;
  objc_copyWeak(&v62, &location);
  v45 = objc_msgSend_initWithActivityDelay_maxActivityDelay_coalescingInterval_processingDelay_notifyBlock_(v43, v44, (v42 * 1000000000.0), 0, 0, 0, v61);
  coalescer = self->_coalescer;
  self->_coalescer = v45;

  v49 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v47, v48);
  v52 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], v50, v51);
  objc_msgSend_addObserver_selector_name_object_(v49, v53, self, sel_handleMemoryPressureNotification_, *MEMORY[0x277CBBFA8], v52);

  v56 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], v54, v55);
  self->_memoryPressure = objc_msgSend_memoryPressure(v56, v57, v58) != 0;

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

  return self;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v4 = self;
  objc_sync_enter(v4);
  WeakRetained = objc_loadWeakRetained(&v4->_container);
  if (WeakRetained)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_sync_exit(v4);
  if (!WeakRetained)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isMemberOfClass:(Class)a3
{
  v5 = self;
  objc_sync_enter(v5);
  WeakRetained = objc_loadWeakRetained(&v5->_container);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    isMemberOfClass = objc_msgSend_isMemberOfClass_(WeakRetained, v7, a3);
  }

  objc_sync_exit(v5);
  if (v8)
  {
    return isMemberOfClass & 1;
  }

  v10 = objc_opt_class();

  return objc_msgSend_isMemberOfClass_(v10, v11, a3);
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  WeakRetained = objc_loadWeakRetained(&v6->_container);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_msgSend_conformsToProtocol_(WeakRetained, v8, v5);
  }

  objc_sync_exit(v6);
  if (!v9)
  {
    v10 = objc_opt_class();
    v3 = objc_msgSend_conformsToProtocol_(v10, v11, v5);
  }

  return v3 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_retainArguments(v4, v5, v6);
  objc_msgSend_selector(v4, v7, v8);
  v9 = CKExtendedMethodSignatureForProtocolSelector();
  if (objc_msgSend_numberOfArguments(v9, v10, v11) < 3)
  {
LABEL_5:
    v20 = 0;
  }

  else
  {
    v14 = 2;
    while (1)
    {
      v15 = objc_msgSend__classForObjectAtArgumentIndex_(v9, v12, v14);
      v16 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(v15, v17, v16))
      {
        break;
      }

      if (++v14 >= objc_msgSend_numberOfArguments(v9, v18, v19))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    objc_msgSend_getArgument_atIndex_(v4, v18, buf, v14);
    v23 = objc_msgSend_callbackProxyEndpoint(*buf, v21, v22);
    v26 = objc_msgSend_interface(v23, v24, v25);

    v20 = 1;
  }

  v27 = objc_msgSend_methodSignature(v4, v12, v13);
  v30 = objc_msgSend_CK_indexesOfBlockArguments(v27, v28, v29);

  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = sub_22518B904;
  v114[3] = &unk_278547FC8;
  v31 = v4;
  v115 = v31;
  v116 = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v30, v32, v114);
  if (objc_msgSend_isSupported(MEMORY[0x277CBC558], v33, v34))
  {
    v37 = objc_msgSend_appContainerTuple(self, v35, v36);
    v40 = objc_msgSend_persona(v37, v38, v39);

    if (v40)
    {
      v43 = objc_msgSend_appContainerTuple(self, v41, v42);
      v46 = objc_msgSend_persona(v43, v44, v45);
      isCurrentPersona = objc_msgSend_isCurrentPersona(v46, v47, v48);

      if ((isCurrentPersona & 1) == 0)
      {
        v52 = objc_msgSend_appContainerTuple(self, v50, v51);
        v55 = objc_msgSend_persona(v52, v53, v54);
        v113 = 0;
        v57 = objc_msgSend_adopt_(v55, v56, &v113);
        v58 = v113;

        if (!v57)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v78 = &selRef_setHasAssetSize_;
          v79 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v101 = v79;
            v104 = objc_msgSend_selector(v31, v102, v103);
            v105 = NSStringFromSelector(v104);
            v108 = objc_msgSend_appContainerTuple(self, v106, v107);
            v111 = objc_msgSend_ckShortDescription(v108, v109, v110);
            *buf = 138412802;
            *&buf[4] = v105;
            v118 = 2112;
            v119 = v111;
            v120 = 2112;
            v121 = v58;
            _os_log_error_impl(&dword_22506F000, v101, OS_LOG_TYPE_ERROR, "Failed to adopt persona for invocation -%@ for container %@: %@", buf, 0x20u);

            v78 = &selRef_setHasAssetSize_;
          }

          v81 = objc_msgSend_errorWithDomain_code_userInfo_error_format_(MEMORY[0x277CBC560], v80, *MEMORY[0x277CBBF50], 5, 0, v58, @"Incorrect persona for container");
          objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v31, v82, v81, v78[367]);

          goto LABEL_33;
        }
      }
    }
  }

  v59 = objc_msgSend_container(self, v35, v36);
  v40 = v59;
  if (v20)
  {
    v112 = 0;
    v61 = objc_msgSend_checkSessionValidityCacheOnly_error_(v59, v60, 0, &v112);
    v62 = v112;
    v58 = v62;
    if ((v61 & 1) == 0)
    {
      isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v62, v63, v64);
      v66 = *MEMORY[0x277CBC878];
      v67 = *MEMORY[0x277CBC880];
      if (isCloudCoreSessionNoLongerValidError)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v66);
        }

        v68 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v83 = v68;
          v86 = objc_msgSend_selector(v31, v84, v85);
          v87 = NSStringFromSelector(v86);
          v90 = objc_msgSend_appContainerTuple(self, v88, v89);
          v93 = objc_msgSend_ckShortDescription(v90, v91, v92);
          *buf = 138412802;
          *&buf[4] = v87;
          v118 = 2112;
          v119 = v93;
          v120 = 2112;
          v121 = v58;
          _os_log_error_impl(&dword_22506F000, v83, OS_LOG_TYPE_ERROR, "Container found invalid for invocation -%@ for container %@: %@", buf, 0x20u);
        }

        objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v31, v69, v58, &unk_2838E3570);
LABEL_33:

        goto LABEL_27;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v66);
      }

      v70 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v94 = v70;
        v97 = objc_msgSend_appContainerTuple(self, v95, v96);
        v100 = objc_msgSend_ckShortDescription(v97, v98, v99);
        *buf = 138412546;
        *&buf[4] = v100;
        v118 = 2112;
        v119 = v58;
        _os_log_error_impl(&dword_22506F000, v94, OS_LOG_TYPE_ERROR, "Failed to validate CloudCore session for container %@: %@", buf, 0x16u);
      }
    }
  }

  objc_msgSend_setTarget_(v31, v60, v40);
  objc_msgSend_beginContentAccess(self, v71, v72);
  objc_msgSend_invoke(v31, v73, v74);
  objc_msgSend_endContentAccess(self, v75, v76);
LABEL_27:

  v77 = *MEMORY[0x277D85DE8];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(&unk_2838E3570, a3, 1, 1);
  name = MethodDescription.name;
  if (MethodDescription.name)
  {
    name = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], MethodDescription.types, MethodDescription.types);
  }

  return name;
}

- (void)handleMemoryPressureNotification:(id)a3
{
  v4 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], a2, a3);
  v7 = objc_msgSend_memoryPressure(v4, v5, v6);

  objc_msgSend_handleMemoryPressure_(self, v8, v7);
}

- (void)handleMemoryPressure:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Handling memory pressure event: %zd", buf, 0xCu);
    if (self)
    {
      goto LABEL_5;
    }

LABEL_8:
    coalescer = 0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_8;
  }

LABEL_5:
  coalescer = self->_coalescer;
LABEL_6:
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22518BC60;
  v9[3] = &unk_278546110;
  v9[4] = self;
  v9[5] = a3;
  objc_msgSend_mutate_(coalescer, v6, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleMemoryPressure:(int64_t)a3 completionHandler:(id)a4
{
  v12 = a4;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_memoryInfo(MEMORY[0x277CBC450], v6, v7);
    a3 = objc_msgSend_memoryPressure(v8, v9, v10);
  }

  objc_msgSend_handleMemoryPressure_(self, v6, a3);
  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
    v11 = v12;
  }
}

- (void)beginContentAccess:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_beginContentAccess(self, v4, v5);
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v6, 0);
    v7 = v8;
  }
}

- (void)isContentDiscarded:(id)a3
{
  if (a3)
  {
    v8 = a3;
    isContentDiscarded = objc_msgSend_isContentDiscarded(self, v5, v6);
    (*(a3 + 2))(v8, isContentDiscarded, 0);
  }
}

- (void)discardContentIfPossible
{
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22518BE9C;
  v3[3] = &unk_278545A00;
  v3[4] = self;
  objc_msgSend_mutate_(coalescer, a2, v3);
}

- (BOOL)isContentDiscarded
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v12 = 0;
  v4 = coalescer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22518BF90;
  v8[3] = &unk_278545678;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_mutate_(v4, v5, v8);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)CKStatusReportArray
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  if (self)
  {
    coalescer = self->_coalescer;
  }

  else
  {
    coalescer = 0;
  }

  v28 = 0;
  v4 = coalescer;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22518C1DC;
  v24[3] = &unk_278546448;
  v24[4] = self;
  v24[5] = &v25;
  objc_msgSend_mutate_(v4, v5, v24);

  v6 = self;
  objc_sync_enter(v6);
  WeakRetained = objc_loadWeakRetained(&v6->_container);
  objc_sync_exit(v6);

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_appContainerTuple(v6, v10, v11);
  v15 = objc_msgSend_applicationID(v12, v13, v14);
  v17 = objc_msgSend_stringWithFormat_(v9, v16, @"\n %@(accessCount: %tu)", v15, v26[3]);
  objc_msgSend_addObject_(v8, v18, v17);

  if (WeakRetained)
  {
    v21 = objc_msgSend_CKStatusReportArray(WeakRetained, v19, v20);
    objc_msgSend_addObjectsFromArray_(v8, v22, v21);
  }

  _Block_object_dispose(&v25, 8);

  return v8;
}

@end