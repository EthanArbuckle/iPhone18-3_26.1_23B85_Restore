@interface XRLazyKVOAdapter
+ (id)observeKeyPath:(id)a3 object:(id)a4 observer:(id)a5 lazyUpdateBlock:(id)a6;
+ (id)observeKeyPathArray:(id)a3 object:(id)a4 observer:(id)a5 lazyUpdateBlock:(id)a6;
- (XRLazyKVOAdapter)init;
- (XRLazyKVOAdapter)initWithLazyKVOResponder:(id)a3;
- (id).cxx_construct;
- (void)_callbackHandler;
- (void)dealloc;
- (void)fireCallbackContext:(const void *)a3 whenKeypaths:(id)a4 changeOnClass:(Class)a5;
- (void)observeObject:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation XRLazyKVOAdapter

+ (id)observeKeyPath:(id)a3 object:(id)a4 observer:(id)a5 lazyUpdateBlock:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21[0] = v10;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v21, 1, v15);
  v18 = objc_msgSend_observeKeyPathArray_object_observer_lazyUpdateBlock_(a1, v17, v16, v11, v12, v13);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)observeKeyPathArray:(id)a3 object:(id)a4 observer:(id)a5 lazyUpdateBlock:(id)a6
{
  v104[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [_XRLazyKVOBlockToken alloc];
  v18 = objc_msgSend_initWithObject_observer_(v15, v16, v12, v13, v17);
  v19 = [a1 alloc];
  v23 = objc_msgSend_initWithLazyKVOResponder_(v19, v20, v18, v21, v22);
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  objc_msgSend_fireCallbackContext_whenKeypaths_changeOnClass_(v23, v26, v24, v11, v25);
  objc_msgSend_observeObject_(v23, v27, v12, v28, v29);
  v104[0] = *MEMORY[0x277CBE640];
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v104, 1, v31);
  objc_msgSend_setRunLoopModes_(v23, v33, v32, v34, v35);

  objc_msgSend_setStrongBlockAdapterToken_(v23, v36, v18, v37, v38);
  objc_msgSend_setSuspended_(v23, v39, 0, v40, v41);
  objc_initWeak(&location, v23);
  if (_DVTIURuntimeCheckForBlockCaptureOfObject(v14, v12))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      if (objc_opt_class() == a1)
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v89 = v48;
      v49 = objc_opt_class();
      v90 = NSStringFromClass(v49);
      v50 = v90;
      v88 = objc_msgSend_UTF8String(v90, v51, v52, v53, v54);
      Name = sel_getName(a2);
      v60 = objc_msgSend_description(v12, v56, v57, v58, v59);
      v61 = v60;
      v66 = objc_msgSend_UTF8String(v60, v62, v63, v64, v65);
      *buf = 67109890;
      v97 = v89;
      v98 = 2080;
      v99 = v88;
      v100 = 2080;
      v101 = Name;
      v102 = 2080;
      v103 = v66;
      _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "The block provided to %c[%s %s] captures the observed object (%s) which may extend its lifetime.  Use the 'object' parameter passed to the block instead.\nSet a breakpoint in '_DVTIUInvalidBlockCaptureBreak' to debug", buf, 0x26u);
    }

    _DVTIUInvalidBlockCaptureBreak(v14, v12);
  }

  if (_DVTIURuntimeCheckForBlockCaptureOfObject(v14, v13))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      if (objc_opt_class() == a1)
      {
        v67 = 43;
      }

      else
      {
        v67 = 45;
      }

      v91 = v67;
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      v70 = v69;
      v75 = objc_msgSend_UTF8String(v69, v71, v72, v73, v74);
      v76 = sel_getName(a2);
      v81 = objc_msgSend_description(v13, v77, v78, v79, v80);
      v82 = v81;
      v87 = objc_msgSend_UTF8String(v81, v83, v84, v85, v86);
      *buf = 67109890;
      v97 = v91;
      v98 = 2080;
      v99 = v75;
      v100 = 2080;
      v101 = v76;
      v102 = 2080;
      v103 = v87;
      _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "The block provided to %c[%s %s] captures the observer (%s) which could lead to a retain cycle -- possibly via 'self' or ivar usage.  Use the 'observer' parameter passed to the block instead.\nSet a breakpoint in '_DVTIUInvalidBlockCaptureBreak' to debug", buf, 0x26u);
    }

    _DVTIUInvalidBlockCaptureBreak(v14, v13);
  }

  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_2480A6844;
  v92[3] = &unk_278EFC338;
  v42 = v14;
  v93 = v42;
  objc_copyWeak(&v94, &location);
  objc_msgSend_setBlock_(v18, v43, v92, v44, v45);
  objc_destroyWeak(&v94);

  objc_destroyWeak(&location);
  v46 = *MEMORY[0x277D85DE8];

  return v23;
}

- (XRLazyKVOAdapter)init
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[XRLazyKVOAdapter init]", v2, v3);
  objc_msgSend_raise_format_(v5, v7, *MEMORY[0x277CBE660], @"Don't call %@.", v8, v6);

  return 0;
}

- (XRLazyKVOAdapter)initWithLazyKVOResponder:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = XRLazyKVOAdapter;
  v5 = [(XRLazyKVOAdapter *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_responder, v4);
    v11 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v7, v8, v9, v10);
    keyPathsByContextByClz = v6->_keyPathsByContextByClz;
    v6->_keyPathsByContextByClz = v11;

    v17 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v13, v14, v15, v16);
    keyPathsByContextByObj = v6->_keyPathsByContextByObj;
    v6->_keyPathsByContextByObj = v17;

    v27[0] = *MEMORY[0x277CBE640];
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v27, 1, v20);
    runLoopModes = v6->_runLoopModes;
    v6->_runLoopModes = v21;

    WeakRetained = objc_loadWeakRetained(&v6->_responder);
    v6->_implementsWillChangeHandler = objc_opt_respondsToSelector() & 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v6 = objc_msgSend_mainRunLoop(MEMORY[0x277CBEB88], a2, v2, v3, v4);
  objc_msgSend_cancelPerformSelectorsWithTarget_(v6, v7, self, v8, v9);

  sub_2480A6ABC(self);
  v10.receiver = self;
  v10.super_class = XRLazyKVOAdapter;
  [(XRLazyKVOAdapter *)&v10 dealloc];
}

- (void)fireCallbackContext:(const void *)a3 whenKeypaths:(id)a4 changeOnClass:(Class)a5
{
  v8 = a4;
  v9 = self->_keyPathsByContextByClz;
  v18 = v8;
  v15 = objc_msgSend_objectForKey_(v9, v10, a5, v11, v12);
  if (!v15)
  {
    v15 = objc_opt_new();
    objc_msgSend_setObject_forKey_(v9, v16, v15, a5, v17);
  }

  objc_msgSend_setObject_forIntegerKey_(v15, v13, v18, a3, v14);
}

- (void)observeObject:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v8 = objc_msgSend_objectForKey_(self->_keyPathsByContextByObj, v4, v7, v5, v6);
    if (!v8)
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_keyPathsByContextByObj, v10, v9, v7, v11);
      Superclass = objc_opt_class();
      v16 = 0;
      while (Superclass && !v16)
      {
        v16 = objc_msgSend_objectForKey_(self->_keyPathsByContextByClz, v12, Superclass, v13, v14);
        Superclass = class_getSuperclass(Superclass);
      }

      if (self->_implementsWillChangeHandler)
      {
        v17 = 13;
      }

      else
      {
        v17 = 5;
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_2480A7028;
      v21[3] = &unk_278EFC360;
      v22 = v7;
      v23 = self;
      v25 = v17;
      v8 = v9;
      v24 = v8;
      objc_msgSend_enumerateObjectsAndIntegerKeys_(v16, v18, v21, v19, v20);
    }
  }
}

- (void)_callbackHandler
{
  obj = objc_loadWeakRetained(&self->_responder);
  objc_sync_enter(obj);
  while (self->_updatedContexts.__table_.__size_)
  {
    self->_presentedContexts.__table_.__max_load_factor_ = self->_updatedContexts.__table_.__max_load_factor_;
    sub_2480A7870(&self->_presentedContexts.__table_.__bucket_list_.__ptr_, self->_updatedContexts.__table_.__first_node_.__next_, 0);
    sub_2480A7ADC(&self->_updatedContexts.__table_.__bucket_list_.__ptr_);
    WeakRetained = objc_loadWeakRetained(&self->_responder);
    objc_msgSend_handleLazyKVOUpdate_(WeakRetained, v4, self, v5, v6);

    sub_2480A7ADC(&self->_presentedContexts.__table_.__bucket_list_.__ptr_);
  }

  objc_sync_exit(obj);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16 = v12;
  v38 = a6;
  if (self->_implementsWillChangeHandler && (objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x277CCA2F8], v14, v15), v17 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_BOOLValue(v17, v18, v19, v20, v21), v17, v22))
  {
    WeakRetained = objc_loadWeakRetained(&self->_responder);
    objc_msgSend_prepareForLazyKVOUpdate_object_keyPath_context_(WeakRetained, v24, self, v11, v10, a6);
  }

  else if (self->_runLoopModes)
  {
    v25 = objc_loadWeakRetained(&self->_responder);
    objc_sync_enter(v25);
    if (!self->_updatedContexts.__table_.__size_ && !self->_suspended)
    {
      v30 = objc_msgSend_mainRunLoop(MEMORY[0x277CBEB88], v26, v27, v28, v29);
      objc_msgSend_performSelector_target_argument_order_modes_(v30, v31, sel__callbackHandler, self, 0, 0, self->_runLoopModes);
    }

    v32 = objc_msgSend_objectForKey_(self->_keyPathsByContextByObj, v26, v11, v28, v29);

    if (v32)
    {
      sub_2480A7B48(&self->_updatedContexts.__table_.__bucket_list_.__ptr_, &v38);
    }

    objc_sync_exit(v25);
  }

  else
  {
    v33 = objc_msgSend_objectForKey_(self->_keyPathsByContextByObj, v13, v11, v14, v15);

    if (v33)
    {
      sub_2480A7B48(&self->_updatedContexts.__table_.__bucket_list_.__ptr_, &v38);
    }

    objc_msgSend__callbackHandler(self, v34, v35, v36, v37);
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end