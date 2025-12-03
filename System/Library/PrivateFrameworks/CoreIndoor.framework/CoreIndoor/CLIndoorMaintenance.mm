@interface CLIndoorMaintenance
- (void)doSynchronousXPC:(id)c description:(const char *)description waitForever:(BOOL)forever;
- (void)eraseEverything;
- (void)numFloors:(id)floors;
- (void)onQueueEraseEverything:(id)everything;
- (void)onQueueNumFloors:(id)floors;
- (void)onQueueShutdown;
- (void)prefetch:(id)prefetch;
- (void)prefetchSynchronous:(id)synchronous;
- (void)retrieveLocationRelevancyDurationWithCompletionHandler:(id)handler;
- (void)shutdown;
- (void)withinQueueReinitializeRemoteState;
@end

@implementation CLIndoorMaintenance

- (void)withinQueueReinitializeRemoteState
{
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, v2, v3, v4, *MEMORY[0x277CBE660], @"Cannot re-initialize remote state", 0);
  objc_exception_throw(v5);
}

- (void)retrieveLocationRelevancyDurationWithCompletionHandler:(id)handler
{
  frameworkQueue = self->super._frameworkQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = sub_245A716A4;
  v8[3] = &unk_28589FA68;
  selfCopy = self;
  v6 = MEMORY[0x245D78D90](handler);
  v9 = selfCopy;
  v7 = selfCopy;
  v10 = MEMORY[0x245D78D90](v6);
  dispatch_async(frameworkQueue, v8);
}

- (void)prefetch:(id)prefetch
{
  v24 = *MEMORY[0x277D85DE8];
  prefetchCopy = prefetch;
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
  }

  v5 = qword_28144B278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v23 = objc_msgSend_count(prefetchCopy, v6, v7, v8, v9);
    _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_DEBUG, "Sending request to prefetch %{public}zu venues", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = sub_245A719C0;
  v19[3] = &unk_28589FA98;
  selfCopy = self;
  v11 = prefetchCopy;
  v12 = selfCopy;
  v20 = v12;
  v21 = v11;
  objc_msgSend_doSynchronousXPC_description_waitForever_(v12, v13, v14, v15, v16, v19, "prefetch:", 0);

  if (qword_28144B270 != -1)
  {
    sub_245A8E5A0();
  }

  v17 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v17, OS_LOG_TYPE_DEBUG, "Prefetch request finished", buf, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)prefetchSynchronous:(id)synchronous
{
  v24 = *MEMORY[0x277D85DE8];
  synchronousCopy = synchronous;
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
  }

  v5 = qword_28144B278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v23 = objc_msgSend_count(synchronousCopy, v6, v7, v8, v9);
    _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_DEBUG, "Sending request to prefetch %zu venues synchronously", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = sub_245A71D48;
  v19[3] = &unk_28589FAC8;
  selfCopy = self;
  v11 = synchronousCopy;
  v12 = selfCopy;
  v20 = v12;
  v21 = v11;
  objc_msgSend_doSynchronousXPC_description_waitForever_(v12, v13, v14, v15, v16, v19, "prefetch:", 1);

  if (qword_28144B270 != -1)
  {
    sub_245A8E5A0();
  }

  v17 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v17, OS_LOG_TYPE_DEBUG, "Synchronous prefetch request finished", buf, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)doSynchronousXPC:(id)c description:(const char *)description waitForever:(BOOL)forever
{
  v21 = *MEMORY[0x277D85DE8];
  cCopy = c;
  v9 = dispatch_semaphore_create(0);
  frameworkQueue = self->super._frameworkQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_245A71F84;
  v16[3] = &unk_278E8AA20;
  v11 = cCopy;
  v18 = v11;
  v12 = v9;
  v17 = v12;
  dispatch_async(frameworkQueue, v16);
  if (forever)
  {
    if (!dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v12, v13))
    {
      goto LABEL_9;
    }
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8E5A0();
  }

  v14 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    descriptionCopy = description;
    _os_log_impl(&dword_245A2E000, v14, OS_LOG_TYPE_ERROR, "Timeout trying to do XPC %{publci}s", buf, 0xCu);
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)eraseEverything
{
  if (qword_28144B270 == -1)
  {
    v3 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_245A8E58C();
  v3 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v3, OS_LOG_TYPE_INFO, "Erasing all indoor tiles", buf, 2u);
  }

LABEL_4:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_245A72204;
  v10[3] = &unk_28589FB28;
  selfCopy = self;
  v11 = selfCopy;
  objc_msgSend_doSynchronousXPC_description_waitForever_(selfCopy, v5, v6, v7, v8, v10, "eraseEverything", 0);

  if (qword_28144B270 != -1)
  {
    sub_245A8E5A0();
    v9 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_6:
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v9, OS_LOG_TYPE_INFO, "Erase all indoor tile request finished", buf, 2u);
  }

LABEL_7:
}

- (void)onQueueEraseEverything:(id)everything
{
  everythingCopy = everything;
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
    v5 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v21 = 0;
    _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_DEBUG, "Sending request to erase all indoor tiles", v21, 2u);
  }

LABEL_4:
  connection = self->super._connection;
  v11 = objc_msgSend__defaultErrHandlerForCaller_(self, v6, v7, v8, v9, @"eraseAllData");
  v16 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, v12, v13, v14, v15, v11);
  objc_msgSend_eraseAllData_(v16, v17, v18, v19, v20, everythingCopy);
}

- (void)shutdown
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
    v3 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v3, OS_LOG_TYPE_INFO, "Requesting shutdown of daemon", buf, 2u);
  }

LABEL_4:
  frameworkQueue = self->super._frameworkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_245A72484;
  block[3] = &unk_28589FB58;
  selfCopy = self;
  v5 = selfCopy;
  dispatch_sync(frameworkQueue, block);
}

- (void)onQueueShutdown
{
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
    v3 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v19 = 0;
    _os_log_impl(&dword_245A2E000, v3, OS_LOG_TYPE_DEBUG, "Sending shutdown request to daemon", v19, 2u);
  }

LABEL_4:
  connection = self->super._connection;
  v9 = objc_msgSend__defaultErrHandlerForCaller_(self, v4, v5, v6, v7, @"shutdown");
  v14 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, v10, v11, v12, v13, v9);
  objc_msgSend_shutdown(v14, v15, v16, v17, v18);
}

- (void)numFloors:(id)floors
{
  floorsCopy = floors;
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
    v5 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_INFO, "Requesting number of floors from daemon", buf, 2u);
  }

LABEL_4:
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_245A72740;
  v13[3] = &unk_28589FB88;
  selfCopy = self;
  v7 = MEMORY[0x245D78D90](floorsCopy);
  v8 = selfCopy;
  v14 = v8;
  v15 = MEMORY[0x245D78D90](v7);
  objc_msgSend_doSynchronousXPC_description_waitForever_(v8, v9, v10, v11, v12, v13, "numFloors", 0);
}

- (void)onQueueNumFloors:(id)floors
{
  floorsCopy = floors;
  if (qword_28144B270 != -1)
  {
    sub_245A8E58C();
    v5 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v21 = 0;
    _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_DEBUG, "Sending request to find the number of floors in the Db", v21, 2u);
  }

LABEL_4:
  connection = self->super._connection;
  v11 = objc_msgSend__defaultErrHandlerForCaller_(self, v6, v7, v8, v9, @"numFloors");
  v16 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, v12, v13, v14, v15, v11);
  objc_msgSend_numFloors_(v16, v17, v18, v19, v20, floorsCopy);
}

@end