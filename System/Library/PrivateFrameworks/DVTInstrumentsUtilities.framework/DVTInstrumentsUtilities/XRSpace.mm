@interface XRSpace
+ (void)runWhenOperationFinishes:(id)a3 block:(id)a4;
- (BOOL)currentlyInThisSpace;
- (XRSpace)init;
- (XRSpace)initWithQueue:(id)a3;
- (id)_scheduleOperationFromCurrentQueue:(id)a3;
- (id)afterOperation:(id)a3 block:(id)a4;
- (id)afterOperation:(id)a3 priority:(int64_t)a4 spaceBlock:(id)a5;
- (id)afterOperation:(id)a3 spaceBlock:(id)a4;
- (id)afterOperations:(id)a3 priority:(int64_t)a4 spaceBlock:(id)a5;
- (id)afterOperationsRunBlock:(id)a3;
- (id)storeUserData:(id)a3;
- (id)userDataForToken:(id)a3;
- (void)_postQueueStateChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)receiveMobileAgent:(id)a3;
- (void)removeUserDataForToken:(id)a3;
- (void)replaceUserData:(id)a3 forToken:(id)a4;
- (void)requestLocalNotification:(id)a3 object:(id)a4 observer:(id)a5 block:(id)a6;
- (void)stopObservationsOfObject:(id)a3 forObserver:(id)a4;
@end

@implementation XRSpace

+ (void)runWhenOperationFinishes:(id)a3 block:(id)a4
{
  v18 = a3;
  v9 = a4;
  if (v18 && !objc_msgSend_isFinished(v18, v5, v6, v7, v8))
  {
    v11 = [XRFollowUpBlock alloc];
    v10 = objc_msgSend_initWithBlock_operation_(v11, v12, v9, v18, v13);
    objc_msgSend_go(v10, v14, v15, v16, v17);
  }

  else
  {
    v10 = dispatch_get_global_queue(21, 0);
    dispatch_async(v10, v9);
  }
}

- (XRSpace)initWithQueue:(id)a3
{
  v5 = a3;
  v51.receiver = self;
  v51.super_class = XRSpace;
  v6 = [(XRSpace *)&v51 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v6->_supportsOpNames = objc_msgSend_instancesRespondToSelector_(v7, v8, sel_name, v9, v10);
    v11 = objc_opt_class();
    v6->_overridesQoS = objc_msgSend_instancesRespondToSelector_(v11, v12, sel_setQualityOfService_, v13, v14);
    objc_storeStrong(&v6->_queue, a3);
    objc_msgSend_addObserver_forKeyPath_options_context_(v6->_queue, v15, v6, @"operationCount", 1, 0);
    v24 = objc_msgSend_spaceName(v6, v16, v17, v18, v19);
    if (v24)
    {
      objc_msgSend_setName_(v6->_queue, v20, v24, v22, v23);
    }

    if (objc_msgSend_isSerial(v6, v20, v21, v22, v23))
    {
      objc_msgSend_setMaxConcurrentOperationCount_(v6->_queue, v25, 1, v27, v28);
    }

    if (v6->_overridesQoS)
    {
      objc_msgSend_setQualityOfService_(v6->_queue, v25, -1, v27, v28);
    }

    v29 = objc_msgSend_mutableCopy(v24, v25, v26, v27, v28);
    tag = v6->_tag;
    v6->_tag = v29;

    v31 = objc_alloc(MEMORY[0x277CBEB38]);
    v35 = objc_msgSend_initWithCapacity_(v31, v32, 5, v33, v34);
    userDataByToken = v6->_userDataByToken;
    v6->_userDataByToken = v35;

    v37 = objc_opt_new();
    notificationShims = v6->_notificationShims;
    v6->_notificationShims = v37;

    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v44 = objc_msgSend_spaceName(v6, v40, v41, v42, v43);
    v48 = objc_msgSend_initWithFormat_(v39, v45, @"%@ op", v46, v47, v44);
    opName = v6->_opName;
    v6->_opName = v48;
  }

  return v6;
}

- (XRSpace)init
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_initWithQueue_(self, v4, v3, v5, v6);

  return v7;
}

- (void)dealloc
{
  objc_msgSend_removeObserver_forKeyPath_(self->_queue, a2, self, @"operationCount", v2);
  v4.receiver = self;
  v4.super_class = XRSpace;
  [(XRSpace *)&v4 dealloc];
}

- (void)_postQueueStateChanged
{
  v19 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], a2, v2, v3, v4);
  v10 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v6, v7, v8, v9);

  if (v19 != v10)
  {
    DVTIUAssertMainThread("[XRSpace _postQueueStateChanged]", 0x62, v12, v13, v14);
  }

  if (qword_27EE86718 != -1)
  {
    sub_2480B3588();
  }

  v20 = objc_msgSend_defaultQueue(MEMORY[0x277CCABA0], v11, v12, v13, v14);
  v17 = objc_msgSend_notificationWithName_object_(MEMORY[0x277CCAB88], v15, @"XRSpaceQueueCountChangedNotification", self, v16);
  objc_msgSend_enqueueNotification_postingStyle_coalesceMask_forModes_(v20, v18, v17, 1, 3, qword_27EE86720);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_msgSend_isEqual_(v10, v13, @"operationCount", v14, v15) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v16, sel__postQueueStateChanged, 0, 0);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = XRSpace;
    [(XRSpace *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)_scheduleOperationFromCurrentQueue:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_isOpValidForSpace_(self, v5, v4, v6, v7) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v8, @"XRInvalidOperationForSpaceException", @"%@ is invalid in %@", v11, v4, self);
  }

  if (self->_supportsOpNames)
  {
    v12 = objc_msgSend_name(v4, v8, v9, v10, v11);

    if (!v12)
    {
      objc_msgSend_setName_(v4, v8, self->_opName, v10, v11);
    }
  }

  objc_msgSend_addOperation_(self->_queue, v8, v4, v10, v11);

  return v4;
}

- (id)afterOperation:(id)a3 block:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24808B880;
  v11[3] = &unk_278EFA348;
  v12 = v6;
  v7 = v6;
  v9 = objc_msgSend_afterOperation_priority_spaceBlock_(self, v8, a3, 0, v11);

  return v9;
}

- (id)afterOperation:(id)a3 spaceBlock:(id)a4
{
  v4 = objc_msgSend_afterOperation_priority_spaceBlock_(self, a2, a3, 0, a4);

  return v4;
}

- (id)afterOperations:(id)a3 priority:(int64_t)a4 spaceBlock:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [XRSpaceBlockOp alloc];
  v14 = objc_msgSend_initWithSpaceBlock_(v10, v11, v9, v12, v13);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v8;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v32, v36, 16);
  if (v20)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addDependency_(v14, v17, *(*(&v32 + 1) + 8 * i), v18, v19, v32);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v32, v36, 16);
    }

    while (v20);
  }

  objc_msgSend_setQueuePriority_(v14, v23, a4, v24, v25);
  v29 = objc_msgSend__scheduleOperationFromCurrentQueue_(self, v26, v14, v27, v28);

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)afterOperation:(id)a3 priority:(int64_t)a4 spaceBlock:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v11 = a5;
  if (v8)
  {
    v17[0] = v8;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v17, 1, v10);
    objc_msgSend_afterOperations_priority_spaceBlock_(self, v13, v12, a4, v11);
  }

  else
  {
    v12 = 0;
    objc_msgSend_afterOperations_priority_spaceBlock_(self, v9, 0, a4, v11);
  }
  v14 = ;
  if (v8)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)afterOperationsRunBlock:(id)a3
{
  v4 = a3;
  v34 = 0;
  objc_opt_class();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_24808BE74;
  v32 = sub_24808BE84;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  if (!NSClassFromString(&cfstr_Nsblock.isa))
  {
    __assert_rtn("[XRSpace afterOperationsRunBlock:]", "XRSpace.mm", 182, "MyBlockClass != nil");
  }

  v34 = &v36;
  v5 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  v6 = v29[5];
  v29[5] = v5;

  v7 = v4;
  v11 = v7;
  v12 = v7;
  if (*(v25 + 24) == 1)
  {
    v13 = v7;
    while (1)
    {
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addDependency_(v29[5], v14, v13, v15, v16);
        }

        else if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addExecutionBlock_(v29[5], v17, v13, v18, v19);
          *(v25 + 24) = 0;
        }

        else
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = sub_24808BE8C;
          v23[3] = &unk_278EFA370;
          v23[4] = &v24;
          v23[5] = &v28;
          DVTIUAssertRecover("[XRSpace afterOperationsRunBlock:]", 212, v23);
        }
      }

      if (*(v25 + 24) != 1)
      {
        break;
      }

      v20 = v34++;
      v12 = *v20;

      v13 = v12;
      if ((v25[3] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v12 = v13;
  }

LABEL_14:
  v21 = objc_msgSend__scheduleOperationFromCurrentQueue_(self, v8, v29[5], v9, v10);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v21;
}

- (id)storeUserData:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if ((objc_msgSend_currentlyInThisSpace(self, v5, v6, v7, v8) & 1) == 0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_24808C03C;
    v19[3] = &unk_278EFA398;
    v19[4] = &v20;
    DVTIUAssertRecover("[XRSpace storeUserData:]", 231, v19);
  }

  if (*(v21 + 24) == 1)
  {
    v9 = self->_userDataByToken;
    objc_sync_enter(v9);
    v10 = [XRSpaceDataToken alloc];
    tag = self->_tag;
    seqNum = self->_seqNum;
    self->_seqNum = seqNum + 1;
    v15 = objc_msgSend_initWithSpaceTag_sequenceID_(v10, v13, tag, seqNum, v14);
    objc_msgSend_setObject_forKey_(self->_userDataByToken, v16, v4, v15, v17);
    objc_sync_exit(v9);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (void)replaceUserData:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  if ((objc_msgSend_currentlyInThisSpace(self, v8, v9, v10, v11) & 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_24808C1C8;
    v15[3] = &unk_278EFA398;
    v15[4] = &v16;
    DVTIUAssertRecover("[XRSpace replaceUserData:forToken:]", 253, v15);
  }

  if (*(v17 + 24) == 1)
  {
    v12 = self->_userDataByToken;
    objc_sync_enter(v12);
    if (v7)
    {
      objc_msgSend_setObject_forKey_(self->_userDataByToken, v13, v6, v7, v14);
    }

    objc_sync_exit(v12);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)removeUserDataForToken:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  if ((objc_msgSend_currentlyInThisSpace(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_24808C33C;
    v13[3] = &unk_278EFA398;
    v13[4] = &v14;
    DVTIUAssertRecover("[XRSpace removeUserDataForToken:]", 272, v13);
  }

  if (*(v15 + 24) == 1)
  {
    v9 = self->_userDataByToken;
    objc_sync_enter(v9);
    if (v4)
    {
      objc_msgSend_removeObjectForKey_(self->_userDataByToken, v10, v4, v11, v12);
    }

    objc_sync_exit(v9);
  }

  _Block_object_dispose(&v14, 8);
}

- (id)userDataForToken:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  if ((objc_msgSend_currentlyInThisSpace(self, v5, v6, v7, v8) & 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_24808C4DC;
    v15[3] = &unk_278EFA398;
    v15[4] = &v16;
    DVTIUAssertRecover("[XRSpace userDataForToken:]", 289, v15);
  }

  if (*(v17 + 24) == 1)
  {
    v9 = self->_userDataByToken;
    objc_sync_enter(v9);
    if (v4)
    {
      v13 = objc_msgSend_objectForKey_(self->_userDataByToken, v10, v4, v11, v12);
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(v9);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (BOOL)currentlyInThisSpace
{
  v6 = objc_msgSend_currentQueue(MEMORY[0x277CCABD8], a2, v2, v3, v4);
  LOBYTE(self) = v6 == self->_queue;

  return self;
}

- (void)requestLocalNotification:(id)a3 object:(id)a4 observer:(id)a5 block:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (_DVTIURuntimeCheckForBlockCaptureOfObject(v12, v11))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_2480B359C();
    }

    _DVTIUInvalidBlockCaptureBreak(v12, v11);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v17 = objc_msgSend_copy(self->_notificationShims, v13, v14, v15, v16, v58);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v64, v68, 16);
  if (v23)
  {
    v24 = *v65;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v65 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v64 + 1) + 8 * i);
        if (objc_msgSend_targetIsSet(v26, v19, v20, v21, v22))
        {
          v28 = objc_msgSend_target(v26, v19, v27, v21, v22);
          v29 = v28 == 0;

          if (v29)
          {
            goto LABEL_13;
          }
        }

        v30 = objc_msgSend_observer(v26, v19, v27, v21, v22);
        v31 = v30 == 0;

        if (v31)
        {
LABEL_13:
          objc_msgSend__removeNotificationShim_(self, v19, v26, v21, v22);
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v64, v68, 16);
    }

    while (v23);
  }

  v32 = objc_opt_new();
  objc_msgSend_setObserver_(v32, v33, v11, v34, v35);
  if (v10)
  {
    objc_msgSend_setTarget_(v32, v36, v10, v37, v38);
    objc_msgSend_setTargetIsSet_(v32, v39, 1, v40, v41);
  }

  objc_initWeak(&location, v32);
  v46 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v42, v43, v44, v45);
  queue = self->_queue;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_24808C908;
  v60[3] = &unk_278EFA3C0;
  objc_copyWeak(&v62, &location);
  v48 = v12;
  v61 = v48;
  v50 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v46, v49, v59, v10, queue, v60);
  objc_msgSend_setToken_(v32, v51, v50, v52, v53);

  objc_msgSend_addObject_(self->_notificationShims, v54, v32, v55, v56);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

  v57 = *MEMORY[0x277D85DE8];
}

- (void)stopObservationsOfObject:(id)a3 forObserver:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_set(MEMORY[0x277CBEB58], v8, v9, v10, v11);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = self->_notificationShims;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v40, v45, 16);
  if (v19)
  {
    v20 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        v23 = objc_msgSend_observer(v22, v15, v16, v17, v18);
        v24 = v23 == v7;

        if (v24)
        {
          if (!v6 || objc_msgSend_targetIsSet(v22, v15, v16, v17, v18) && (objc_msgSend_target(v22, v15, v16, v17, v18), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == v6, v25, v26))
          {
            objc_msgSend_addObject_(v12, v15, v22, v17, v18);
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v40, v45, 16);
    }

    while (v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v12;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v36, v44, 16);
  if (v32)
  {
    v33 = *v37;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend__removeNotificationShim_(self, v29, *(*(&v36 + 1) + 8 * j), v30, v31, v36);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v36, v44, 16);
    }

    while (v32);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)receiveMobileAgent:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_ticket(v4, v5, v6, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24808CD64;
  v14[3] = &unk_278EFA3E8;
  v10 = v4;
  v15 = v10;
  v13 = objc_msgSend_afterOperation_block_(self, v11, v9, v14, v12);
}

@end