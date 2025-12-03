@interface CLIndoorXPCProvider
+ (id)newConnectionFor:(id)for;
- (CLIndoorXPCProvider)init;
- (CLIndoorXPCProvider)initWithConnection:(id)connection;
- (CLIndoorXPCProvider)initWithEndpoint:(id)endpoint;
- (id)_defaultErrHandler:(id)handler forCaller:(id)caller;
- (id)_defaultErrHandlerForCaller:(id)caller;
- (int)withinQueueShouldReinitializeRemote:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock;
- (void)dealloc;
- (void)invalidate;
- (void)withinQueueHandleReconnect:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock;
- (void)withinQueueInitializeConnection;
- (void)withinQueueInterruptionHandler;
- (void)withinQueueInvalidate;
- (void)withinQueueReinitializeRemoteState;
- (void)withinQueueScheduleReconnect:(duration<long)long reason:()std:(1000000000>>)std :(id)a4 ratio<1;
@end

@implementation CLIndoorXPCProvider

- (void)withinQueueInitializeConnection
{
  v6 = MEMORY[0x277CCAE90];
  v7 = objc_msgSend_impl(self, a2, v2, v3, v4);
  v12 = objc_msgSend_remoteObjectProtocol(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_interfaceWithProtocol_(v6, v13, v14, v15, v16, v12);
  objc_msgSend_setRemoteObjectInterface_(self->_connection, v18, v19, v20, v21, v17);

  objc_initWeak(&location, self);
  objc_copyWeak(&to, &location);
  v40 = MEMORY[0x277D85DD0];
  v41 = 3321888768;
  v42 = sub_245A74104;
  v43 = &unk_28589FCD8;
  objc_copyWeak(&v44, &to);
  v22 = MEMORY[0x245D78D90](&v40);
  objc_destroyWeak(&v44);
  objc_msgSend_setInterruptionHandler_(self->_connection, v23, v24, v25, v26, v22);

  objc_destroyWeak(&to);
  objc_initWeak(&from, self);
  objc_copyWeak(&v36, &from);
  v40 = MEMORY[0x277D85DD0];
  v41 = 3321888768;
  v42 = sub_245A741B0;
  v43 = &unk_28589FD08;
  objc_copyWeak(&v44, &v36);
  v27 = MEMORY[0x245D78D90](&v40);
  objc_destroyWeak(&v44);
  objc_msgSend_setInvalidationHandler_(self->_connection, v28, v29, v30, v31, v27);

  objc_destroyWeak(&v36);
  objc_msgSend_resume(self->_connection, v32, v33, v34, v35);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (CLIndoorXPCProvider)init
{
  v6 = objc_msgSend_impl(self, a2, v2, v3, v4);
  v11 = objc_msgSend_newConnectionFor_(CLIndoorXPCProvider, v7, v8, v9, v10, v6);

  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
    v12 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v19 = 0;
    _os_log_impl(&dword_245A2E000, v12, OS_LOG_TYPE_INFO, "CLIndoorXPCProvider, init", v19, 2u);
  }

LABEL_4:
  v17 = objc_msgSend_initWithConnection_(self, v13, v14, v15, v16, v11);

  return v17;
}

+ (id)newConnectionFor:(id)for
{
  forCopy = for;
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v4, v5, v6, v7);
  v9 = objc_alloc(MEMORY[0x277CCAE80]);
  v14 = objc_msgSend_endpointName(forCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_persistentDomainForName_(v8, v15, v16, v17, v18, @"com.apple.pipelined.framework");
  v24 = objc_msgSend_objectForKey_(v19, v20, v21, v22, v23, @"UnprivilegedDaemon");
  v29 = objc_msgSend_BOOLValue(v24, v25, v26, v27, v28);

  if (!v29)
  {
    v31 = 4096;
    goto LABEL_7;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
    v30 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v30 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    *v38 = 0;
    _os_log_impl(&dword_245A2E000, v30, OS_LOG_TYPE_INFO, "UnprivilegedDaemon default found.  Connecting to service launched manually (i.e. not via launchd)", v38, 2u);
  }

LABEL_5:
  v31 = 0;
LABEL_7:

  v36 = objc_msgSend_initWithMachServiceName_options_(v9, v32, v33, v34, v35, v14, v31);
  return v36;
}

- (CLIndoorXPCProvider)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = objc_alloc(MEMORY[0x277CCAE80]);
  v10 = objc_msgSend_initWithListenerEndpoint_(v5, v6, v7, v8, v9, endpointCopy);
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
    v11 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v18 = 0;
    _os_log_impl(&dword_245A2E000, v11, OS_LOG_TYPE_INFO, "CLIndoorXPCProvider, initWithEndpoint", v18, 2u);
  }

LABEL_4:
  v16 = objc_msgSend_initWithConnection_(self, v12, v13, v14, v15, v10);

  return v16;
}

- (CLIndoorXPCProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v54.receiver = self;
  v54.super_class = CLIndoorXPCProvider;
  v6 = [(CLIndoorXPCProvider *)&v54 init];
  v11 = v6;
  v12 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!objc_msgSend_conformsToProtocol_(v6, v7, v8, v9, v10, &unk_2858A5990))
  {
    objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v13, v14, v15, v16, *MEMORY[0x277CBE660], @"Concrete implementation of CLIndoorXPCProvider must conform to CLIndoorXPCProviderImplementation", 0);
    goto LABEL_15;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v25 = objc_msgSend_stringWithFormat_(v18, v21, v22, v23, v24, @"com.apple.CoreIndoor.%@", v20);

  v26 = v25;
  v31 = objc_msgSend_UTF8String(v26, v27, v28, v29, v30);
  v32 = dispatch_queue_create(v31, 0);
  frameworkQueue = v12->_frameworkQueue;
  v12->_frameworkQueue = v32;

  v34 = v12->_frameworkQueue;
  objc_autoreleasePoolPop(v17);
  if (!v34)
  {
LABEL_9:
    v47 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v11->_connection, connection);
  if (!v12->_connection)
  {
    objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v35, v36, v37, v38, *MEMORY[0x277CBE660], @"Must provide a connection", 0);
    v49 = LABEL_15:;
    objc_exception_throw(v49);
  }

  dispatch_queue_set_specific(v12->_frameworkQueue, &unk_245A9CD18, v12, 0);
  v39 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12->_frameworkQueue);
  interruptReconnection = v12->_interruptReconnection;
  v12->_interruptReconnection = v39;

  objc_initWeak(&location, v12);
  v41 = v12->_interruptReconnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = sub_245A72F28;
  handler[3] = &unk_28589FBD8;
  objc_copyWeak(to, &location);
  objc_copyWeak(&v52, to);
  dispatch_source_set_event_handler(v41, handler);
  objc_destroyWeak(to);
  dispatch_resume(v12->_interruptReconnection);
  if (qword_28144B270 != -1)
  {
    sub_245A8E5DC();
    v42 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v42 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_7:
    LOWORD(to[0]) = 0;
    _os_log_impl(&dword_245A2E000, v42, OS_LOG_TYPE_INFO, "CLIndoorXPCProvider, initWithConnection, re-initializing", to, 2u);
  }

LABEL_8:
  objc_msgSend_withinQueueInitializeConnection(v12, v43, v44, v45, v46);
  v47 = v12;
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
LABEL_10:

  return v47;
}

- (void)dealloc
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_impl(self, a2, v2, v3, v4);
  v11 = objc_msgSend_endpointName(v6, v7, v8, v9, v10);
  v12 = v11;
  v17 = objc_msgSend_UTF8String(v12, v13, v14, v15, v16);

  if (dispatch_get_specific(&unk_245A9CD18) == self || !self->_frameworkQueue)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E5C8();
    }

    v21 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v31 = v17;
      _os_log_impl(&dword_245A2E000, v21, OS_LOG_TYPE_INFO, "dealloc connection to %{public}s", buf, 0xCu);
    }

    objc_msgSend_withinQueueInvalidate(self, v22, v23, v24, v25);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E5C8();
    }

    v18 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_245A2E000, v18, OS_LOG_TYPE_DEBUG, "dealloc begins", buf, 2u);
    }

    frameworkQueue = self->_frameworkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_245A731EC;
    block[3] = &unk_28589FC08;
    selfCopy = self;
    v20 = selfCopy;
    dispatch_sync(frameworkQueue, block);
  }

  v27.receiver = self;
  v27.super_class = CLIndoorXPCProvider;
  [(CLIndoorXPCProvider *)&v27 dealloc];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  frameworkQueue = self->_frameworkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_245A73354;
  block[3] = &unk_28589FC38;
  selfCopy = self;
  v3 = selfCopy;
  dispatch_sync(frameworkQueue, block);
}

- (void)withinQueueInvalidate
{
  v43 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
  }

  v3 = qword_28144B278;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    v9 = objc_msgSend_impl(self, v4, v5, v6, v7);
    v14 = objc_msgSend_endpointName(v9, v10, v11, v12, v13);
    v39 = 134349314;
    v40 = connection;
    v41 = 2114;
    v42 = v14;
    _os_log_impl(&dword_245A2E000, v3, OS_LOG_TYPE_INFO, "About to invalidate connection %{public}p to %{public}@", &v39, 0x16u);
  }

  objc_msgSend_setInterruptionHandler_(self->_connection, v15, v16, v17, v18, 0);
  objc_msgSend_setInvalidationHandler_(self->_connection, v19, v20, v21, v22, 0);
  objc_msgSend_invalidate(self->_connection, v23, v24, v25, v26);
  interruptReconnection = self->_interruptReconnection;
  if (interruptReconnection)
  {
    dispatch_source_cancel(interruptReconnection);
  }

  v28 = self->_connection;
  self->_connection = 0;

  v33 = objc_msgSend_impl(self, v29, v30, v31, v32);
  objc_msgSend_withinQueueInvalidateState(v33, v34, v35, v36, v37);

  v38 = *MEMORY[0x277D85DE8];
}

- (void)withinQueueInterruptionHandler
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_impl(self, a2, v2, v3, v4);
  v11 = objc_msgSend_withinQueuePermanentShutdownReason(v6, v7, v8, v9, v10);

  if (v11)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E5C8();
    }

    v12 = qword_28144B278;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = objc_msgSend_impl(self, v13, v14, v15, v16);
      v22 = objc_msgSend_endpointName(v17, v18, v19, v20, v21);
      v27 = objc_msgSend_description(v11, v23, v24, v25, v26);
      v49 = 138543618;
      v50 = v22;
      v51 = 2114;
      v52 = v27;
      _os_log_impl(&dword_245A2E000, v12, OS_LOG_TYPE_INFO, "XPC connection invalidated by daemon to %{public}@: %{public}@", &v49, 0x16u);
    }

    objc_msgSend_withinQueueInvalidate(self, v28, v29, v30, v31);
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E5C8();
    }

    v32 = qword_28144B278;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v37 = objc_msgSend_impl(self, v33, v34, v35, v36);
      v42 = objc_msgSend_endpointName(v37, v38, v39, v40, v41);
      v49 = 138543362;
      v50 = v42;
      _os_log_impl(&dword_245A2E000, v32, OS_LOG_TYPE_INFO, "pipelined interruption handler for %{public}@", &v49, 0xCu);
    }

    v43.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    objc_msgSend_withinQueueHandleReconnect_(self, v44, v45, v46, v47, v43.__d_.__rep_);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)withinQueueHandleReconnect:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock
{
  ShouldReinitializeRemote = objc_msgSend_withinQueueShouldReinitializeRemote_(self, a2, v3, v4, v5);
  if (ShouldReinitializeRemote == 1)
  {
    objc_msgSend_withinQueueReinitializeRemoteState(self, v9, v10, v11, v12);
    if (self->_lastReconnectTime.m_initialized)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (ShouldReinitializeRemote == 2)
  {
    objc_msgSend_withinQueueScheduleReconnect_reason_(self, v9, v10, v11, v12, *(&self->_lastReconnectTime.m_storage.dummy_.aligner_ + 7) - std.var0.__rep_ + 10000000000, @"deferred re-initialization");
  }

  if (!self->_lastReconnectTime.m_initialized)
  {
LABEL_5:
    self->_lastReconnectTime.m_initialized = 1;
  }

LABEL_6:
  *(&self->_lastReconnectTime.m_storage.dummy_.aligner_ + 7) = std;
}

- (int)withinQueueShouldReinitializeRemote:()time_point<std:(std:()std:(1000000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::steady_clock
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_impl(self, a2, v3, v4, v5);
  CanReinitializeRemoteState = objc_msgSend_withinQueueCanReinitializeRemoteState(v8, v9, v10, v11, v12);

  if (CanReinitializeRemoteState)
  {
    if (self->_lastReconnectTime.m_initialized && std.var0.__rep_ - *(&self->_lastReconnectTime.m_storage.dummy_.aligner_ + 7) < 10000000000)
    {
      result = 2;
      v28 = *MEMORY[0x277D85DE8];
    }

    else
    {
      result = 1;
      v15 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E5C8();
    }

    v16 = qword_28144B278;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = objc_msgSend_impl(self, v17, v18, v19, v20);
      v26 = objc_msgSend_endpointName(v21, v22, v23, v24, v25);
      v29 = 138543362;
      v30 = v26;
      _os_log_impl(&dword_245A2E000, v16, OS_LOG_TYPE_INFO, "Already invalidated/no remote state - ignoring request to re-initialize %{public}@", &v29, 0xCu);
    }

    result = 0;
    v27 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)withinQueueReinitializeRemoteState
{
  v26 = *MEMORY[0x277D85DE8];
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
  }

  v3 = qword_28144B278;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_msgSend_impl(self, v4, v5, v6, v7);
    v13 = objc_msgSend_endpointName(v8, v9, v10, v11, v12);
    v24 = 138543362;
    v25 = v13;
    _os_log_impl(&dword_245A2E000, v3, OS_LOG_TYPE_DEBUG, "re-initializing pipelined connection to %{public}@ with existing state", &v24, 0xCu);
  }

  v18 = objc_msgSend_impl(self, v14, v15, v16, v17);
  objc_msgSend_withinQueueReinitializeRemoteState(v18, v19, v20, v21, v22);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)withinQueueScheduleReconnect:(duration<long)long reason:()std:(1000000000>>)std :(id)a4 ratio<1
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (qword_28144B270 != -1)
  {
    sub_245A8E5C8();
  }

  v7 = qword_28144B278;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = objc_msgSend_impl(self, v8, v9, v10, v11);
    v17 = objc_msgSend_endpointName(v12, v13, v14, v15, v16);
    v20 = 138543874;
    v21 = v17;
    v22 = 2114;
    v23 = v6;
    v24 = 2048;
    v25 = std.__rep_ / 1000000;
    _os_log_impl(&dword_245A2E000, v7, OS_LOG_TYPE_INFO, "Connection to %{public}@ %{public}@ - retrying in %lld milliseconds", &v20, 0x20u);
  }

  v18 = dispatch_time(0, std.__rep_);
  dispatch_source_set_timer(self->_interruptReconnection, v18, 0xFFFFFFFFFFFFFFFFLL, 0x77359400uLL);

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_defaultErrHandlerForCaller:(id)caller
{
  v6 = objc_msgSend__defaultErrHandler_forCaller_(self, a2, v3, v4, v5, &unk_28589FC68, caller);

  return v6;
}

- (id)_defaultErrHandler:(id)handler forCaller:(id)caller
{
  callerCopy = caller;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_245A73EA8;
  v12[3] = &unk_28589FC88;
  v6 = callerCopy;
  v7 = MEMORY[0x245D78D90](handler);
  v8 = v6;
  v13 = v8;
  v14 = MEMORY[0x245D78D90](v7);
  v9 = MEMORY[0x245D78D90](v12);

  v10 = MEMORY[0x245D78D90](v9);

  return v10;
}

@end