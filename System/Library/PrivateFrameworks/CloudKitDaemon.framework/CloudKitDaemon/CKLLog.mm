@interface CKLLog
+ (id)preparedLiveStreamFromLiveStore:(id)store;
+ (id)preparedStreamFromStore:(id)store;
- (CKLLog)initWithArchiveAtURL:(id)l;
- (id)initForHostStream;
- (id)initInternal;
- (void)addStreamObserver:(id)observer;
- (void)streamLogsWithCompletion:(id)completion;
@end

@implementation CKLLog

+ (id)preparedStreamFromStore:(id)store
{
  storeCopy = store;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_225073FB0;
  v17 = sub_225073564;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  objc_msgSend_setUpgradeConfirmationHandler_(storeCopy, v5, &unk_28385CF40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225197CF8;
  v10[3] = &unk_278548468;
  v12 = &v13;
  v6 = v4;
  v11 = v6;
  objc_msgSend_prepareWithCompletionHandler_(storeCopy, v7, v10);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

+ (id)preparedLiveStreamFromLiveStore:(id)store
{
  storeCopy = store;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_225073FB0;
  v16 = sub_225073564;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225197EE0;
  v9[3] = &unk_278548490;
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  objc_msgSend_prepareWithCompletionHandler_(storeCopy, v6, v9);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)initInternal
{
  v6.receiver = self;
  v6.super_class = CKLLog;
  v2 = [(CKLLog *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    streamObservers = v2->_streamObservers;
    v2->_streamObservers = v3;
  }

  return v2;
}

- (id)initForHostStream
{
  inited = objc_msgSend_initInternal(self, a2, v2);
  v6 = inited;
  if (inited)
  {
    *(inited + 40) = 0;
    v7 = objc_msgSend_localStore(MEMORY[0x277D24438], v4, v5);
    v9 = objc_msgSend_preparedStreamFromStore_(CKLLog, v8, v7);
    v10 = v6[6];
    v6[6] = v9;

    v13 = objc_msgSend_liveLocalStore(MEMORY[0x277D24418], v11, v12);
    v15 = objc_msgSend_preparedLiveStreamFromLiveStore_(CKLLog, v14, v13);
    v16 = v6[7];
    v6[7] = v15;
  }

  return v6;
}

- (CKLLog)initWithArchiveAtURL:(id)l
{
  lCopy = l;
  inited = objc_msgSend_initInternal(self, v5, v6);
  v9 = inited;
  if (inited)
  {
    *(inited + 40) = 1;
    v10 = objc_msgSend_storeWithArchiveURL_(MEMORY[0x277D24438], v8, lCopy);
    v12 = objc_msgSend_preparedStreamFromStore_(CKLLog, v11, v10);
    logEventStream = v9->_logEventStream;
    v9->_logEventStream = v12;
  }

  return v9;
}

- (void)addStreamObserver:(id)observer
{
  observerCopy = observer;
  v8 = objc_msgSend_streamObservers(self, v5, v6);
  objc_msgSend_addObject_(v8, v7, observerCopy);
}

- (void)streamLogsWithCompletion:(id)completion
{
  v98 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  v6 = objc_msgSend_copy(completionCopy, v4, v5);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  v10 = objc_msgSend_wantsSimulatorLogs(self, v8, v9);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v13 = objc_msgSend_streamObservers(self, v11, v12);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v93, v97, 16);
  if (v16)
  {
    v17 = *v94;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v94 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v93 + 1) + 8 * i);
        objc_msgSend_setSimulatorOnly_(v19, v15, v10);
        v22 = objc_msgSend_onlyTestLogs(self, v20, v21);
        objc_msgSend_setOnlyTestLogs_(v19, v23, v22);
        v26 = objc_msgSend_colorOutput(self, v24, v25);
        objc_msgSend_setColorOutput_(v19, v27, v26);
        v30 = objc_msgSend_processName(self, v28, v29);
        objc_msgSend_setProcessName_(v19, v31, v30);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v93, v97, 16);
    }

    while (v16);
  }

  objc_initWeak(&location, self);
  v34 = objc_msgSend_logEventStream(self, v32, v33);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_2251986E4;
  v90[3] = &unk_2785484B8;
  objc_copyWeak(&v91, &location);
  objc_msgSend_setEventHandler_(v34, v35, v90);

  v38 = objc_msgSend_liveStream(self, v36, v37);
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = sub_225198810;
  v88[3] = &unk_2785484B8;
  objc_copyWeak(&v89, &location);
  objc_msgSend_setEventHandler_(v38, v39, v88);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22519893C;
  aBlock[3] = &unk_2785484E0;
  objc_copyWeak(&v87, &location);
  v40 = _Block_copy(aBlock);
  v43 = objc_msgSend_logEventStream(self, v41, v42);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = sub_225198ABC;
  v83[3] = &unk_278548508;
  objc_copyWeak(&v85, &location);
  v44 = v40;
  v84 = v44;
  objc_msgSend_setInvalidationHandler_(v43, v45, v83);

  v48 = objc_msgSend_liveStream(self, v46, v47);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_225198B60;
  v81[3] = &unk_278548530;
  v49 = v44;
  v82 = v49;
  objc_msgSend_setInvalidationHandler_(v48, v50, v81);

  v55 = objc_msgSend_absoluteStartDate(self, v51, v52);
  if (v55)
  {
    goto LABEL_9;
  }

  objc_msgSend_startTimeOffset(self, v53, v54);
  if (v59 != 0.0)
  {
    v60 = objc_msgSend_logEventStream(self, v53, v54);
    v63 = objc_msgSend_source(v60, v61, v62);
    v66 = objc_msgSend_newestDate(v63, v64, v65);
    objc_msgSend_startTimeOffset(self, v67, v68);
    v55 = objc_msgSend_dateByAddingTimeInterval_(v66, v69, v70);

    if (v55)
    {
      goto LABEL_9;
    }
  }

  if (objc_msgSend_source(self, v53, v54) != 1)
  {
    goto LABEL_15;
  }

  v71 = objc_msgSend_logEventStream(self, v53, v54);
  v74 = objc_msgSend_source(v71, v72, v73);
  v55 = objc_msgSend_oldestDate(v74, v75, v76);

  if (v55)
  {
LABEL_9:
    v56 = objc_msgSend_logEventStream(self, v53, v54);
    objc_msgSend_activateStreamFromDate_(v56, v57, v55);
  }

  else
  {
LABEL_15:
    v55 = objc_msgSend_liveStream(self, v53, v54);
    objc_msgSend_activate(v55, v77, v78);
  }

  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(context);

  v58 = *MEMORY[0x277D85DE8];
}

@end