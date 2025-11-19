@interface IMLocalObject
+ (id)_imLocalObjectQueue;
+ (id)_imLocalObjectQueueTargetingWorkloop;
+ (void)_registerIMLocalObject:(id)a3;
+ (void)_unregisterIMLocalObject:(id)a3;
+ (void)initialize;
- (BOOL)_handleInvocation:(id)a3 processingComponentQueue:(BOOL)a4;
- (BOOL)handleInvocation:(id)a3;
- (BOOL)isSameConnection:(id)a3;
- (BOOL)isValid;
- (BOOL)isValidSelector:(SEL)a3;
- (BOOL)wasInterrupted;
- (IMLocalObject)initWithTarget:(id)a3 connection:(id)a4 protocol:(id)a5 forceSecureCoding:(BOOL)a6 offMainThread:(BOOL)a7;
- (IMLocalObject)initWithTarget:(id)a3 portName:(id)a4 protocol:(id)a5;
- (NSArray)allowlistedClasses;
- (id)_peekInvocation;
- (id)description;
- (void)_clearPort:(BOOL)a3 signalRunLoopIfNeeded:(BOOL)a4;
- (void)_handleNewInvocations;
- (void)_noteNewInvocation:(BOOL)a3;
- (void)_popInvocation;
- (void)_portDidBecomeInvalid;
- (void)_portInterrupted;
- (void)_systemShutdown:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setAllowlistedClasses:(id)a3;
- (void)setPortName:(id)a3;
- (void)setProcessName:(id)a3;
- (void)terminated;
@end

@implementation IMLocalObject

- (BOOL)isValid
{
  v2 = self;
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(v2) = *(v2->_internal + 4) != 0;
  os_unfair_recursive_lock_unlock();
  return v2;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    qword_1ED517530 = objc_alloc_init(MEMORY[0x1E696AD10]);
    qword_1ED517540 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v3, v4);
    IMRemoteObjectsRunLoopModes = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v5, *MEMORY[0x1E695DA28], *MEMORY[0x1E695D918], @"IMRemoteObjectsRunLoopMode", 0);
    objc_msgSend_sharedInstance(IMSystemMonitor, v6, v7);
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }
  }
}

- (BOOL)wasInterrupted
{
  v2 = self;
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(v2) = *(v2->_internal + 103);
  os_unfair_recursive_lock_unlock();
  return v2;
}

- (void)invalidate
{
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  v11 = self->_internal;
  if ((v11[101] & 1) != 0 || v11[100] == 1)
  {
    if (v11[102] == 1)
    {
      if (_os_feature_enabled_impl() && im_primary_base_queue())
      {
        v12 = objc_opt_class();
        v15 = objc_msgSend__imLocalObjectQueueTargetingWorkloop(v12, v13, v14);
      }

      else
      {
        v24 = objc_opt_class();
        v15 = objc_msgSend__imLocalObjectQueue(v24, v25, v26);
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_1959B6EB8;
      v34[3] = &unk_1E74394F8;
      v34[4] = self;
      dispatch_async(v15, v34);
    }

    else
    {
      v16 = qos_class_self();
      if (v16 <= QOS_CLASS_DEFAULT)
      {
        v17 = QOS_CLASS_DEFAULT;
      }

      else
      {
        v17 = v16;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959B6EC0;
      block[3] = &unk_1E74394F8;
      block[4] = self;
      v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v17, 0, block);
      v19 = OSLogHandleForIDSCategory("IMLocalObject");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v19, OS_LOG_TYPE_DEFAULT, "******* trying to invalidate connection. Let's signal the runloop in case there is a pending history query", buf, 2u);
      }

      Main = CFRunLoopGetMain();
      CFRunLoopPerformBlock(Main, IMRemoteObjectsRunLoopModes, v18);
      CFRunLoopSourceSignal(*(self->_internal + 10));
      v21 = CFRunLoopGetMain();
      CFRunLoopWakeUp(v21);
      objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v22, self, sel_invalidate, 0);
      objc_msgSend_performSelector_withObject_afterDelay_inModes_(self, v23, sel_invalidate, 0, IMRemoteObjectsRunLoopModes, 0.0);
    }

    v27 = self->_internal;
    os_unfair_recursive_lock_unlock();
    return;
  }

  *(v11 + 3) = 0;
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (dword_1ED517080)
  {
LABEL_18:
    v28 = self->_internal;
    v30 = v28[4];
    v31 = *(v28 + 101);
    _IMLog(@"* Invalidating IMLocalObject: %@ (connection=%p) busy: %d", v4, v5, v6, v7, v8, v9, v10, v28[6]);
  }

LABEL_19:
  objc_msgSend__clearPort_signalRunLoopIfNeeded_(self, v4, 0, 1);
  v29 = self->_internal + 16;

  os_unfair_recursive_lock_unlock();
}

+ (id)_imLocalObjectQueue
{
  if (qword_1ED5174B0 != -1)
  {
    sub_1959908DC();
  }

  return qword_1ED5174A8;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);
  internal = self->_internal;
  if (!internal)
  {
    goto LABEL_18;
  }

  v14 = &unk_1ED517000;
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
      v14 = &unk_1ED517000;
    }

    internal = self->_internal;
    if (v14[32] <= 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (dword_1ED517080)
  {
LABEL_4:
    _IMLog(@"* Dealloc IMLocalObject: %@", v6, v7, v8, v9, v10, v11, v12, internal[6]);
    v15 = self->_internal;
  }

LABEL_5:
  os_unfair_recursive_lock_lock_with_options();
  objc_msgSend__clearPort_(self, v16, 0);
  v17 = self->_internal;
  v18 = v17[7];
  if (v18)
  {
    CFRelease(v18);
    v17 = self->_internal;
  }

  v19 = v17[6];
  if (v19)
  {
    CFRelease(v19);
    v17 = self->_internal;
  }

  v20 = v17[8];
  if (v20)
  {
    CFRelease(v20);
    v17 = self->_internal;
  }

  v21 = v17[9];
  if (v21)
  {
    CFRelease(v21);
    v17 = self->_internal;
  }

  v22 = v17[10];
  if (v22)
  {
    CFRunLoopSourceInvalidate(v22);
    CFRelease(*(self->_internal + 10));
    v17 = self->_internal;
  }

  v23 = v17[5];
  if (v23)
  {
    dispatch_release(v23);
    v24 = self->_internal;
  }

  os_unfair_recursive_lock_unlock();

  self->_internal = 0;
LABEL_18:
  v25.receiver = self;
  v25.super_class = IMLocalObject;
  [(IMLocalObject *)&v25 dealloc];
}

- (void)_portDidBecomeInvalid
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* IMLocalObject invalidation callback: %@", a2, v2, v3, v4, v5, v6, v7, *(self->_internal + 6));
  }

LABEL_4:

  objc_msgSend__clearPort_(self, a2, 0);
}

- (void)_portInterrupted
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* IMLocalObject interrupted callback: %@", a2, v2, v3, v4, v5, v6, v7, *(self->_internal + 6));
  }

LABEL_4:
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  *(self->_internal + 103) = 1;
  objc_msgSend_invalidate(self, v10, v11);
  v12 = self->_internal + 16;

  os_unfair_recursive_lock_unlock();
}

- (id)_peekInvocation
{
  os_unfair_lock_lock(self->_internal + 24);
  if (objc_msgSend_count(*(self->_internal + 11), v3, v4))
  {
    v6 = objc_msgSend_objectAtIndex_(*(self->_internal + 11), v5, 0);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(self->_internal + 24);

  return v6;
}

- (void)_popInvocation
{
  os_unfair_lock_lock(self->_internal + 24);
  if (objc_msgSend_count(*(self->_internal + 11), v3, v4))
  {
    objc_msgSend_removeObjectAtIndex_(*(self->_internal + 11), v5, 0);
    if (!objc_msgSend_count(*(self->_internal + 11), v6, v7))
    {

      *(self->_internal + 11) = 0;
    }
  }

  v8 = (self->_internal + 96);

  os_unfair_lock_unlock(v8);
}

- (void)_handleNewInvocations
{
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (dword_1ED517080)
  {
LABEL_3:
    _IMLog(@"** Begin Handling available components (Local object: %@)", a2, v2, v3, v4, v5, v6, v7, self);
  }

LABEL_4:
  v9 = objc_msgSend__peekInvocation(self, a2, v2);
  v17 = v9 == 0;
  if (!v9)
  {
    goto LABEL_23;
  }

  v18 = v9;
  while (1)
  {
    objc_msgSend__popInvocation(self, v10, v11);
    if ((dword_1ED517080 & 0x80000000) == 0)
    {
      if (!dword_1ED517080)
      {
        goto LABEL_9;
      }

LABEL_8:
      v21 = objc_msgSend_first(v18, v19, v20);
      v24 = objc_msgSend_selector(v21, v22, v23);
      v25 = NSStringFromSelector(v24);
      _IMLog(@"** Incoming Invocation: %@ (Local object: %@)", v26, v27, v28, v29, v30, v31, v32, v25);
      goto LABEL_9;
    }

    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 > 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    if ((objc_msgSend_handleInvocation_(self, v19, v18) & 1) == 0)
    {
      break;
    }

    v18 = objc_msgSend__peekInvocation(self, v33, v34);
    v17 = v18 == 0;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  os_unfair_lock_lock(self->_internal + 24);
  v36 = *(self->_internal + 11);
  if (!v36)
  {
    *(self->_internal + 11) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v36 = *(self->_internal + 11);
  }

  objc_msgSend_insertObject_atIndex_(v36, v35, v18, 0);
  os_unfair_lock_unlock(self->_internal + 24);
  v39 = objc_msgSend_first(v18, v37, v38);
  v42 = objc_msgSend_selector(v39, v40, v41);
  v43 = NSStringFromSelector(v42);
  _IMLog(@"**** FAILED DELIVERY (Will retry) Incoming Invocation: %@ (Local object: %@)", v44, v45, v46, v47, v48, v49, v50, v43);

LABEL_23:
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 > 0)
    {
LABEL_25:
      _IMLog(@"** End Handling available components (Local object: %@)", v10, v11, v12, v13, v14, v15, v16, self);
    }
  }

  else if (dword_1ED517080)
  {
    goto LABEL_25;
  }

  *(self->_internal + 100) = 0;
  if (!v17)
  {

    objc_msgSend__noteNewInvocation_(self, v10, 0);
  }
}

- (NSArray)allowlistedClasses
{
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(self->_internal + 9);
  os_unfair_recursive_lock_unlock();
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_portName(self, v6, v7);
  v11 = objc_msgSend_processName(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"[%@] Port Name: %@ Process Name: %@", v5, v8, v11);
}

+ (id)_imLocalObjectQueueTargetingWorkloop
{
  if (qword_1EAED90D8 != -1)
  {
    sub_1959D57AC();
  }

  return qword_1EAED90E0;
}

+ (void)_registerIMLocalObject:(id)a3
{
  objc_msgSend_lock(qword_1ED517530, a2, a3);
  objc_msgSend_addObject_(qword_1ED517540, v4, a3);
  v7 = qword_1ED517530;

  objc_msgSend_unlock(v7, v5, v6);
}

+ (void)_unregisterIMLocalObject:(id)a3
{
  objc_msgSend_lock(qword_1ED517530, a2, a3);
  objc_msgSend_removeObjectIdenticalTo_(qword_1ED517540, v4, a3);
  v7 = qword_1ED517530;

  objc_msgSend_unlock(v7, v5, v6);
}

- (IMLocalObject)initWithTarget:(id)a3 connection:(id)a4 protocol:(id)a5 forceSecureCoding:(BOOL)a6 offMainThread:(BOOL)a7
{
  v13 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  if (!objc_msgSend_systemIsShuttingDown(v13, v14, v15) && a6)
  {
    v46.receiver = self;
    v46.super_class = IMLocalObject;
    v19 = [(IMLocalObject *)&v46 init];
    if (!v19)
    {
      objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v18, 0);
      objc_msgSend_dealloc(0, v37, v38);
      return v19;
    }

    objc_msgSend__registerIMLocalObject_(IMLocalObject, v18, v19);
    v19->_internal = objc_alloc_init(IMLocalObjectInternal);
    if (dword_1ED517080 < 0)
    {
      if (qword_1ED517528 != -1)
      {
        sub_1959D57C0();
      }

      if (dword_1ED517080 <= 0)
      {
        goto LABEL_7;
      }
    }

    else if (!dword_1ED517080)
    {
LABEL_7:
      *(v19->_internal + 102) = a7;
      v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v30 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v28, v29);
      v33 = objc_msgSend_UTF8String(v30, v31, v32);
      *(v19->_internal + 5) = dispatch_queue_create(v33, v27);
      if (a4)
      {
        v35 = xpc_retain(a4);
      }

      else
      {
        v35 = 0;
      }

      *(v19->_internal + 4) = v35;
      if (!a7)
      {
        context.version = 0;
        context.info = v19;
        memset(&context.retain, 0, 64);
        *(v19->_internal + 10) = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, *(v19->_internal + 10), @"IMRemoteObjectsRunLoopMode");
      }

      v40 = *(v19->_internal + 4);
      if (v40)
      {
        im_configure_connection_with_local_object(v40, v19);
        *(v19->_internal + 3) = a3;
        v41 = objc_alloc(MEMORY[0x1E696AE48]);
        *(v19->_internal + 8) = objc_msgSend_initWithProtocol_(v41, v42, a5);
        *(v19->_internal + 6) = 0;
        *(v19->_internal + 2) = 0;
        *(v19->_internal + 24) = 0;
        os_unfair_lock_lock(v19->_internal + 24);
        *(v19->_internal + 11) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        os_unfair_lock_unlock(v19->_internal + 24);
        return v19;
      }

      objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v34, v19);
      internal = v19->_internal;
      v44 = internal[5];
      if (v44)
      {
        dispatch_release(v44);
        internal = v19->_internal;
      }

      v19->_internal = 0;
      return 0;
    }

    NSStringFromProtocol(a5);
    _IMLog(@"* Creating IMLocalObject with target: %@  protocol: %@", v20, v21, v22, v23, v24, v25, v26, a3);
    goto LABEL_7;
  }

  objc_msgSend_dealloc(self, v16, v17);
  return 0;
}

- (IMLocalObject)initWithTarget:(id)a3 portName:(id)a4 protocol:(id)a5
{
  v9 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3);
  if (objc_msgSend_systemIsShuttingDown(v9, v10, v11))
  {
    goto LABEL_2;
  }

  v43.receiver = self;
  v43.super_class = IMLocalObject;
  self = [(IMLocalObject *)&v43 init];
  if (!self)
  {
    objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v14, 0);
    objc_msgSend_dealloc(0, v36, v37);
    return self;
  }

  objc_msgSend__registerIMLocalObject_(IMLocalObject, v14, self);
  self->_internal = objc_alloc_init(IMLocalObjectInternal);
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_1959D57C0();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (dword_1ED517080)
  {
LABEL_6:
    NSStringFromProtocol(a5);
    _IMLog(@"* Creating IMLocalObject with target: %@  protocol: %@", v15, v16, v17, v18, v19, v20, v21, a3);
  }

LABEL_7:
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1959B5D40;
  v42[3] = &unk_1E74394F8;
  v42[4] = self;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1959B5DE4;
  v41[3] = &unk_1E7439520;
  v41[4] = self;
  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v23, v24);
  v28 = objc_msgSend_UTF8String(v25, v26, v27);
  *(self->_internal + 5) = dispatch_queue_create(v28, v22);
  v31 = objc_msgSend_UTF8String(a4, v29, v30);
  *(self->_internal + 4) = IMXPCCreateServerConnection(v31, v42, 0, v41, *(self->_internal + 5));
  v33 = *(self->_internal + 4);
  if (v33)
  {
    im_configure_connection_with_local_object(v33, self);
    xpc_connection_resume(*(self->_internal + 4));
    *(self->_internal + 3) = a3;
    v34 = objc_alloc(MEMORY[0x1E696AE48]);
    *(self->_internal + 8) = objc_msgSend_initWithProtocol_(v34, v35, a5);
    *(self->_internal + 6) = a4;
    *(self->_internal + 2) = 0;
    *(self->_internal + 24) = 0;
    os_unfair_lock_lock(self->_internal + 24);
    *(self->_internal + 11) = 0;
    os_unfair_lock_unlock(self->_internal + 24);
    return self;
  }

  objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v32, self);
  internal = self->_internal;
  v40 = internal[5];
  if (v40)
  {
    dispatch_release(v40);
    internal = self->_internal;
  }

  self->_internal = 0;
LABEL_2:
  objc_msgSend_dealloc(self, v12, v13);
  return 0;
}

- (void)_clearPort:(BOOL)a3 signalRunLoopIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  *(self->_internal + 3) = 0;
  v8 = self->_internal;
  v9 = *(v8 + 4);
  if (!v9)
  {
LABEL_4:

    os_unfair_recursive_lock_unlock();
    return;
  }

  v10 = v8[102];
  xpc_connection_cancel(v9);
  xpc_release(*(self->_internal + 4));
  *(self->_internal + 4) = 0;
  objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v11, self);
  if (v5)
  {
    v19 = self->_internal;
    goto LABEL_4;
  }

  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_10;
    }
  }

  else if (!dword_1ED517080)
  {
    goto LABEL_10;
  }

  _IMLog(@"* IMLocalObject posting death notification: %@", v12, v13, v14, v15, v16, v17, v18, self);
LABEL_10:
  v20 = self->_internal;
  os_unfair_recursive_lock_unlock();
  if (v10)
  {
    if (_os_feature_enabled_impl() && im_primary_base_queue())
    {
      v21 = objc_opt_class();
      v24 = objc_msgSend__imLocalObjectQueueTargetingWorkloop(v21, v22, v23);
    }

    else
    {
      v39 = objc_opt_class();
      v24 = objc_msgSend__imLocalObjectQueue(v39, v40, v41);
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1959B61BC;
    v44[3] = &unk_1E74394F8;
    v44[4] = self;
    dispatch_async(v24, v44);
  }

  else
  {
    Main = CFRunLoopGetMain();
    if (v4 && (v28 = Main, CFRunLoopIsWaiting(Main)) && (v29 = CFRunLoopCopyCurrentMode(v28), objc_msgSend_isEqualToString_(v29, v30, @"IMRemoteObjectsRunLoopMode")))
    {
      v31 = qos_class_self();
      if (v31 <= QOS_CLASS_DEFAULT)
      {
        v32 = QOS_CLASS_DEFAULT;
      }

      else
      {
        v32 = v31;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959B6204;
      block[3] = &unk_1E74394F8;
      block[4] = self;
      v33 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v32, 0, block);
      v34 = OSLogHandleForIDSCategory("IMLocalObject");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v34, OS_LOG_TYPE_DEFAULT, "_clearPort trying to wake up main thread", buf, 2u);
      }

      v35 = CFRunLoopGetMain();
      CFRunLoopPerformBlock(v35, IMRemoteObjectsRunLoopModes, v33);
      CFRunLoopSourceSignal(*(self->_internal + 10));
      v36 = CFRunLoopGetMain();
      CFRunLoopWakeUp(v36);
    }

    else
    {
      v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v26, v27);

      objc_msgSend___mainThreadPostNotificationName_object_(v37, v38, @"IMLocalObjectDidDisconnect", self);
    }
  }
}

- (void)terminated
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    internal = self->_internal;
    v10 = internal[4];
    v11 = *(internal + 101);
    _IMLog(@"* Received termination notice for IMLocalObject: %@ (connection=%p) busy: %d", a2, v2, v3, v4, v5, v6, v7, internal[6]);
  }

LABEL_4:

  objc_msgSend__clearPort_(self, a2, 0);
}

- (void)_systemShutdown:(id)a3
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    internal = self->_internal;
    v10 = internal[4];
    v11 = *(internal + 101);
    _IMLog(@"* Received shutdown notice for IMLocalObject: %@ (connection=%p) busy: %d", a2, a3, v3, v4, v5, v6, v7, internal[6]);
  }

LABEL_4:

  objc_msgSend__clearPort_(self, a2, 1);
}

- (void)setPortName:(id)a3
{
  v3 = *(self->_internal + 6);
  if (v3 != a3)
  {

    *(self->_internal + 6) = a3;
  }
}

- (void)setProcessName:(id)a3
{
  v3 = *(self->_internal + 7);
  if (v3 != a3)
  {

    *(self->_internal + 7) = a3;
  }
}

- (BOOL)_handleInvocation:(id)a3 processingComponentQueue:(BOOL)a4
{
  v4 = a4;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = sub_1959968D0;
  v51 = sub_195996EC8;
  v52 = objc_msgSend_first(a3, a2, a3);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3052000000;
  v44 = sub_1959968D0;
  v45 = sub_195996EC8;
  v46 = objc_msgSend_second(a3, v7, v8);
  internal = self->_internal;
  if (!internal[3])
  {
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  if ((*(internal + 101) & 1) == 0)
  {
    if (objc_msgSend_selector(v48[5], v9, v10) != sel_terminated)
    {
LABEL_6:
      CFRetain(self);
      v17 = objc_msgSend_selector(v48[5], v15, v16);
      if (objc_msgSend_isValidSelector_(self, v18, v17) && objc_msgSend_isValid(self, v19, v20))
      {
        if (v4)
        {
          *(self->_internal + 101) = 1;
          *(self->_internal + 1) = v42[5];
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v35 = sub_1959B6754;
        v36 = &unk_1E7439548;
        v37 = self;
        v38 = &v47;
        v39 = &v41;
        v40 = v4;
        if (v4)
        {
          objc_msgSend_voucher(v42[5], v19, v20);
          voucher_adopt();
        }

        v35(v34);
        if (v4)
        {
          v31 = v42[5];
          v32 = voucher_adopt();
          objc_msgSend_setVoucher_(v31, v33, v32);
          *(self->_internal + 101) = 0;
        }
      }

      else
      {
        v21 = v48[5];
        v22 = objc_msgSend_selector(v21, v19, v20);
        NSStringFromSelector(v22);
        _IMLog(@"Incoming invocation [%@:%@] does not conform to protocol", v23, v24, v25, v26, v27, v28, v29, v21);
      }

      CFRelease(self);
      goto LABEL_14;
    }

    objc_msgSend_terminated(self, v13, v14);
LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
  return v12;
}

- (BOOL)handleInvocation:(id)a3
{
  v3 = *(self->_internal + 101);
  if ((v3 & 1) == 0)
  {
    objc_msgSend__handleInvocation_(self, a2, a3);
  }

  return v3 ^ 1;
}

- (void)_noteNewInvocation:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    internal = self->_internal;
    if (internal[100])
    {
      return;
    }

    internal[100] = 1;
  }

  v6 = qos_class_self();
  if (v6 <= QOS_CLASS_DEFAULT)
  {
    v7 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v7 = v6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959B6A88;
  block[3] = &unk_1E74394F8;
  block[4] = self;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7, 0, block);
  v9 = v8;
  if (*(self->_internal + 102) == 1)
  {
    if (_os_feature_enabled_impl() && im_primary_base_queue())
    {
      v10 = objc_opt_class();
      v13 = objc_msgSend__imLocalObjectQueueTargetingWorkloop(v10, v11, v12);
    }

    else
    {
      v14 = objc_opt_class();
      v13 = objc_msgSend__imLocalObjectQueue(v14, v15, v16);
    }

    v17 = v13;
    if (v3 && _os_feature_enabled_impl())
    {
      dispatch_sync(v17, v9);
    }

    else
    {
      dispatch_async(v17, v9);
    }
  }

  else if (v3)
  {
    (*(v8 + 2))(v8);
  }

  else
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, IMRemoteObjectsRunLoopModes, v9);
    CFRunLoopSourceSignal(*(self->_internal + 10));
    v19 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v19);
  }

  _Block_release(v9);
}

- (BOOL)isValidSelector:(SEL)a3
{
  if (sel_terminated == a3 || sel_respondsToSelector_ == a3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v6 = objc_msgSend_protocol(*(self->_internal + 8), a2, a3);
    name = protocol_getMethodDescription(v6, a3, 1, 1).name;
    if (name || (v4 = protocol_getMethodDescription(v6, a3, 0, 1).name) != 0)
    {
      if (protocol_getMethodDescription(&unk_1F09E56A8, a3, 1, 1).name)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = protocol_getMethodDescription(&unk_1F09E56A8, a3, 0, 1).name == 0;
      }
    }
  }

  return v4;
}

- (BOOL)isSameConnection:(id)a3
{
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(a3) = *(self->_internal + 4) == a3;
  os_unfair_recursive_lock_unlock();
  return a3;
}

- (void)setAllowlistedClasses:(id)a3
{
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(self->_internal + 9);
  if (v6 != a3)
  {

    *(self->_internal + 9) = a3;
    v7 = self->_internal;
  }

  os_unfair_recursive_lock_unlock();
}

@end