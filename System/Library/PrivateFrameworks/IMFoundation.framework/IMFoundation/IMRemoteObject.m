@interface IMRemoteObject
+ (id)_remoteObjects;
+ (void)_registerIMRemoteObject:(id)a3;
+ (void)_unregisterIMRemoteObject:(id)a3;
+ (void)initialize;
- (BOOL)isValid;
- (id)_initWithConnection:(id)a3 portName:(id)a4 protocol:(id)a5 alreadyConfigured:(BOOL)a6 forceSecureCoding:(BOOL)a7;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (int)pid;
- (unint64_t)forwardXPCObject:(id)a3 messageContext:(id)a4 locked:(BOOL)a5;
- (void)_portDidBecomeInvalid;
- (void)_systemShutdown:(id)a3;
- (void)blockUntilSendQueueIsEmpty;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)invalidate;
- (void)setPid:(int)a3;
- (void)setPortName:(id)a3;
- (void)setProcessName:(id)a3;
@end

@implementation IMRemoteObject

- (BOOL)isValid
{
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  v4 = 0;
  v5 = self->_internal;
  if ((*(v5 + 60) & 1) == 0)
  {
    v4 = v5[1] != 0;
  }

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (int)pid
{
  v2 = self;
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  LODWORD(v2) = *(v2->_internal + 14);
  os_unfair_recursive_lock_unlock();
  return v2;
}

+ (void)initialize
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    qword_1ED517548 = objc_alloc_init(MEMORY[0x1E696AD10]);
    qword_1ED517538 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v4, v5);
    objc_msgSend_sharedInstance(IMSystemMonitor, v6, v7);
  }

  objc_autoreleasePoolPop(v2);
}

+ (id)_remoteObjects
{
  objc_msgSend_lock(qword_1ED517548, a2, v2);
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = objc_msgSend_initWithArray_(v3, v4, qword_1ED517538);
  objc_msgSend_unlock(qword_1ED517548, v6, v7);

  return v5;
}

- (void)invalidate
{
  v19 = self;
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
    self = v19;
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    internal = self->_internal;
    v18 = internal[1];
    _IMLog(@"* Invalidating IMRemoteObject: %@ (connection=%p)", a2, v2, v3, v4, v5, v6, v7, internal[4]);
    self = v19;
  }

LABEL_4:
  v9 = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  v10 = v19;
  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  objc_msgSend_removeObserver_name_object_(v13, v14, v19, @"IMSystemShuttingDownNotification", 0);
  v15 = *(v19->_internal + 1);
  if (v15)
  {
    xpc_connection_cancel(v15);
    xpc_release(*(v19->_internal + 1));
    *(v19->_internal + 1) = 0;
    v16 = v19->_internal;
  }

  os_unfair_recursive_lock_unlock();
  objc_msgSend__cleanupMachBitsCanPost_locked_(v19, v17, 1, 0);
}

- (void)dealloc
{
  objc_msgSend__unregisterIMRemoteObject_(IMRemoteObject, a2, self);
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
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v24 = *(self->_internal + 4);
    _IMLog(@"* Dealloc %@ with name: %@", v7, v8, v9, v10, v11, v12, v13, v6);
  }

LABEL_4:
  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  objc_msgSend_removeObserver_name_object_(v14, v15, self, 0, 0);
  internal = self->_internal;
  if (internal)
  {
    os_unfair_recursive_lock_lock_with_options();
    objc_msgSend__cleanupMachBitsCanPost_locked_(self, v17, 0, 1);
    v18 = self->_internal;
    v19 = v18[3];
    if (v19)
    {
      CFRelease(v19);
      v18 = self->_internal;
    }

    v20 = v18[4];
    if (v20)
    {
      CFRelease(v20);
      v18 = self->_internal;
    }

    v21 = v18[5];
    if (v21)
    {
      CFRelease(v21);
      v18 = self->_internal;
    }

    v22 = v18[2];
    if (v22)
    {
      dispatch_release(v22);
      *(self->_internal + 2) = 0;
      v23 = self->_internal;
    }

    os_unfair_recursive_lock_unlock();
    internal = self->_internal;
  }

  self->_internal = 0;
  v25.receiver = self;
  v25.super_class = IMRemoteObject;
  [(IMRemoteObject *)&v25 dealloc];
}

+ (void)_registerIMRemoteObject:(id)a3
{
  if (a3)
  {
    objc_msgSend_lock(qword_1ED517548, a2, a3);
    objc_msgSend_addObject_(qword_1ED517538, v4, a3);
    v7 = qword_1ED517548;

    objc_msgSend_unlock(v7, v5, v6);
  }
}

+ (void)_unregisterIMRemoteObject:(id)a3
{
  if (a3)
  {
    objc_msgSend_lock(qword_1ED517548, a2, a3);
    objc_msgSend_removeObjectIdenticalTo_(qword_1ED517538, v4, a3);
    v7 = qword_1ED517548;

    objc_msgSend_unlock(v7, v5, v6);
  }
}

- (id)_initWithConnection:(id)a3 portName:(id)a4 protocol:(id)a5 alreadyConfigured:(BOOL)a6 forceSecureCoding:(BOOL)a7
{
  if (!a3 && !objc_msgSend_length(a4, a2, 0) || (v13 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, a3), objc_msgSend_systemIsShuttingDown(v13, v14, v15)) || !a7)
  {
    objc_msgSend_dealloc(self, a2, a3);
    return 0;
  }

  v39.receiver = self;
  v39.super_class = IMRemoteObject;
  v18 = [(IMRemoteObject *)&v39 init];
  if (!v18)
  {
    objc_msgSend_dealloc(0, v16, v17);
    return v18;
  }

  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_1959D57C0();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (dword_1ED517080)
  {
LABEL_8:
    NSStringFromProtocol(a5);
    _IMLog(@"* Creating IMRemoteObject with connection: %p  protocol: %@", v19, v20, v21, v22, v23, v24, v25, a3);
  }

LABEL_9:
  v18->_internal = objc_alloc_init(IMRemoteObjectInternal);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1959B72DC;
  v38[3] = &unk_1E74394F8;
  v38[4] = v18;
  if (a3)
  {
    *(v18->_internal + 1) = xpc_retain(a3);
    if (!a6)
    {
      IMXPCConfigureConnection(a3, v38, 0);
    }
  }

  else
  {
    v29 = objc_msgSend_UTF8String(a4, v26, v27);
    *(v18->_internal + 1) = IMXPCCreateConnectionForService(1, v29, v38, 0);
  }

  *(v18->_internal + 3) = a5;
  v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  if (_os_feature_enabled_impl() && im_primary_base_queue())
  {
    v31 = im_primary_base_queue();
    v32 = dispatch_queue_create_with_target_V2(0, v30, v31);
  }

  else
  {
    v32 = dispatch_queue_create(0, v30);
  }

  *(v18->_internal + 2) = v32;
  *(v18->_internal + 6) = 0;
  objc_msgSend__registerIMRemoteObject_(IMRemoteObject, v33, v18);
  v36 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v34, v35);
  objc_msgSend_addObserver_selector_name_object_(v36, v37, v18, sel__systemShutdown_, @"IMSystemShuttingDownNotification", 0);
  return v18;
}

- (void)_portDidBecomeInvalid
{
  v10 = self;
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
    self = v10;
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* IMRemoteObject invalidation callback: %@", a2, v2, v3, v4, v5, v6, v7, *(self->_internal + 4));
  }

LABEL_4:
  v8 = v10;
  objc_msgSend__cleanupMachBitsCanPost_locked_(v10, v9, 1, 0);
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
    v10 = internal[1];
    _IMLog(@"* Received shutdown notice for IMLocalObject: %@ (connection=%p)", a2, a3, v3, v4, v5, v6, v7, internal[4]);
  }

LABEL_4:

  objc_msgSend_invalidate(self, a2, a3);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (sel_terminated != a3)
  {
    v4 = *(self->_internal + 3);
    MethodDescription = protocol_getMethodDescription(v4, a3, 1, 1);
    types = MethodDescription.types;
    if (MethodDescription.name)
    {
      if (MethodDescription.types)
      {
LABEL_4:
        v7 = MEMORY[0x1E695DF68];

        return objc_msgSend_signatureWithObjCTypes_(v7, types, types);
      }
    }

    else
    {
      types = protocol_getMethodDescription(v4, a3, 0, 1).types;
      if (types)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return MEMORY[0x1EEE66B58](IMLocalObject, sel_instanceMethodSignatureForSelector_, a3);
}

- (void)blockUntilSendQueueIsEmpty
{
  if (objc_msgSend__queue(self, a2, v2))
  {
    v6 = objc_msgSend__queue(self, v4, v5);

    dispatch_sync(v6, &unk_1F09D2360);
  }
}

- (unint64_t)forwardXPCObject:(id)a3 messageContext:(id)a4 locked:(BOOL)a5
{
  if (!a3)
  {
    return 0;
  }

  if (!a5)
  {
    internal = self->_internal;
    os_unfair_recursive_lock_lock_with_options();
  }

  v10 = *(self->_internal + 1);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (!a4 || !objc_msgSend_shouldBoost(a4, a2, a3))
  {
    xpc_connection_send_notification();
LABEL_12:
    if (a5)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (objc_msgSend_isSync(a4, v11, v12))
  {
    v15 = xpc_connection_send_message_with_reply_sync(v10, a3);
    if (!a5)
    {
      v16 = self->_internal;
      os_unfair_recursive_lock_unlock();
    }

    im_local_object_peer_event_handler_is_syncReply(v10, v15, 1);
    xpc_release(v15);
    return 0;
  }

  if (objc_msgSend_needReply(a4, v13, v14))
  {
    if (qword_1EAED90F0 != -1)
    {
      sub_1959D5814();
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1959B794C;
    handler[3] = &unk_1E7439570;
    handler[4] = v10;
    xpc_connection_send_message_with_reply(v10, a3, qword_1EAED90E8, handler);
  }

  else if (objc_msgSend_isReply(a4, v19, v20) && objc_msgSend_xpcMessage(a4, v21, v22) && (v25 = objc_msgSend_localObject(a4, v23, v24), objc_msgSend_isSameConnection_(v25, v26, v10)))
  {
    v29 = objc_msgSend_xpcMessage(a4, v27, v28);
    reply = xpc_dictionary_create_reply(v29);
    if (reply)
    {
      v31 = reply;
      value = xpc_dictionary_get_value(a3, "invocation");
      xpc_dictionary_set_value(v31, "invocation", value);
      int64 = xpc_dictionary_get_int64(a3, "priority");
      xpc_dictionary_set_int64(v31, "priority", int64);
      xpc_connection_send_message(v10, v31);
      xpc_release(v31);
    }
  }

  else
  {
    xpc_connection_send_message(v10, a3);
  }

  kdebug_trace();
  if (!a5)
  {
LABEL_13:
    v17 = self->_internal;
    os_unfair_recursive_lock_unlock();
  }

  return 0;
}

- (void)forwardInvocation:(id)a3
{
  if (!*(self->_internal + 1))
  {
    if (dword_1ED517080 < 0)
    {
      if (qword_1ED517528 != -1)
      {
        sub_19598C678();
      }

      if (dword_1ED517080 <= 0)
      {
        goto LABEL_11;
      }
    }

    else if (!dword_1ED517080)
    {
LABEL_11:
      v34 = objc_msgSend_callStackSymbols(MEMORY[0x1E696AF00], a2, a3);
      NSLog(&cfstr_Imremoteobject_4.isa, v34);
      return;
    }

    v23 = objc_msgSend_selector(a3, a2, a3);
    v24 = NSStringFromSelector(v23);
    _IMLog(@"Messaging invalid remote port: %@", v25, v26, v27, v28, v29, v30, v31, v24);
    goto LABEL_11;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_5;
    }
  }

  else if (!dword_1ED517080)
  {
    goto LABEL_5;
  }

  v7 = objc_msgSend_selector(a3, v5, v6);
  v8 = NSStringFromSelector(v7);
  _IMLog(@"*** Forwarding invocation: %@", v9, v10, v11, v12, v13, v14, v15, v8);
LABEL_5:
  v16 = IMCreateXPCObjectFromInvocation(a3);
  if (v16)
  {
    v18 = v16;
    v19 = objc_msgSend_forwardXPCObject_messageContext_locked_(self, v17, v16, 0, 1);
    xpc_release(v18);
    internal = self->_internal;
    os_unfair_recursive_lock_unlock();
    if (v19 == 1)
    {
      v33 = objc_msgSend_callStackSymbols(MEMORY[0x1E696AF00], v21, v22);
      NSLog(&cfstr_Imremoteobject_5.isa, v33);
    }
  }

  else
  {
    v32 = self->_internal + 48;

    os_unfair_recursive_lock_unlock();
  }
}

- (void)setPid:(int)a3
{
  internal = self->_internal;
  os_unfair_recursive_lock_lock_with_options();
  *(self->_internal + 14) = a3;
  v6 = self->_internal + 48;

  os_unfair_recursive_lock_unlock();
}

- (void)setProcessName:(id)a3
{
  v3 = *(self->_internal + 5);
  if (v3 != a3)
  {

    *(self->_internal + 5) = a3;
  }
}

- (void)setPortName:(id)a3
{
  v3 = *(self->_internal + 4);
  if (v3 != a3)
  {

    *(self->_internal + 4) = a3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_portName(self, v6, v7);
  v11 = objc_msgSend_pid(self, v9, v10);
  v14 = objc_msgSend_processName(self, v12, v13);
  return objc_msgSend_stringWithFormat_(v3, v15, @"[%@] Port Name: %@  Pid: %d   Process: %@", v5, v8, v11, v14);
}

@end