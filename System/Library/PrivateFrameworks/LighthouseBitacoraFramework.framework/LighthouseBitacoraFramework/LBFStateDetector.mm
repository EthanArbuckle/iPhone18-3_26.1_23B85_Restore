@interface LBFStateDetector
- (LBFStateDetector)init;
- (LBFStateDetector)initWithState:(int64_t)state;
- (id)processDprivacydEvent:(id)event;
- (id)processEventsStartingFromState:(int64_t)state bucketStartTime:(id)time events:(id)events;
- (id)processLighthouseEvent:(id)event;
- (id)processMLRuntimedEvent:(id)event;
- (id)processTrialdEvent:(id)event;
- (id)validateTransition:(id)transition;
@end

@implementation LBFStateDetector

- (LBFStateDetector)init
{
  v3.receiver = self;
  v3.super_class = LBFStateDetector;
  result = [(LBFStateDetector *)&v3 init];
  if (result)
  {
    result->_currentState = 0;
  }

  return result;
}

- (LBFStateDetector)initWithState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = LBFStateDetector;
  result = [(LBFStateDetector *)&v5 init];
  if (result)
  {
    result->_currentState = state;
  }

  return result;
}

- (id)processEventsStartingFromState:(int64_t)state bucketStartTime:(id)time events:(id)events
{
  v125 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  eventsCopy = events;
  self->_currentState = state;
  objc_storeStrong(&self->_currentTime, time);
  if (!objc_msgSend_count(eventsCopy, v11, v12, v13, v14))
  {
    sub_255F0AAB8();
  }

  v19 = objc_msgSend_firstObject(eventsCopy, v15, v16, v17, v18);
  objc_opt_class();
  v116 = v19;
  if (objc_opt_isKindOfClass())
  {
    v24 = objc_msgSend_timestamp(v19, v20, v21, v22, v23);
    if (objc_msgSend_compare_(v24, v25, self->_currentTime, v26, v27) == -1)
    {
      objc_storeStrong(&self->_currentTime, v24);
      v28 = LBFLogContextStateDetector;
      if (os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_ERROR))
      {
        sub_255F0AA80(v28, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = objc_msgSend_timestamp(v19, v36, v37, v38, v39);
    if (objc_msgSend_compare_(v24, v40, self->_currentTime, v41, v42) == -1)
    {
      objc_storeStrong(&self->_currentTime, v24);
      v43 = LBFLogContextStateDetector;
      if (os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_ERROR))
      {
        sub_255F0AA48(v43, v44, v45, v46, v47, v48, v49, v50);
      }
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = objc_msgSend_timestamp(v19, v51, v52, v53, v54);
    if (objc_msgSend_compare_(v24, v55, self->_currentTime, v56, v57) != -1)
    {
      goto LABEL_19;
    }

    objc_storeStrong(&self->_currentTime, v24);
    v58 = LBFLogContextStateDetector;
    if (!os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v59 = "found earlier triald event";
LABEL_18:
    _os_log_impl(&dword_255ED5000, v58, OS_LOG_TYPE_INFO, v59, buf, 2u);
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = objc_msgSend_timestamp(v19, v60, v61, v62, v63);
    if (objc_msgSend_compare_(v24, v64, self->_currentTime, v65, v66) != -1)
    {
      goto LABEL_19;
    }

    objc_storeStrong(&self->_currentTime, v24);
    v58 = LBFLogContextStateDetector;
    if (!os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v59 = "found earlier dprivacyd event";
    goto LABEL_18;
  }

  objc_storeStrong(&self->_currentTime, time);
  v108 = LBFLogContextStateDetector;
  if (os_log_type_enabled(LBFLogContextStateDetector, OS_LOG_TYPE_ERROR))
  {
    sub_255F0AA10(v108, v109, v110, v111, v112, v113, v114, v115);
  }

LABEL_20:
  v117 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v67 = eventsCopy;
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v118, v124, 16);
  if (v69)
  {
    v70 = v69;
    v71 = *v119;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v119 != v71)
        {
          objc_enumerationMutation(v67);
        }

        v73 = *(*(&v118 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = objc_msgSend_processMLRuntimedEvent_(self, v74, v73, v75, v76);
        }

        else
        {
          v77 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v81 = objc_msgSend_processLighthouseEvent_(self, v78, v73, v79, v80);

          v77 = v81;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v85 = objc_msgSend_processTrialdEvent_(self, v82, v73, v83, v84);

          v77 = v85;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v89 = objc_msgSend_validateTransition_(self, v86, v77, v87, v88);
          objc_msgSend_addObject_(v117, v90, v89, v91, v92);
        }
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v93, &v118, v124, 16);
    }

    while (v70);
  }

  v97 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v94, self->_currentState, v95, v96);
  v123[0] = v97;
  v102 = objc_msgSend_copy(v117, v98, v99, v100, v101);
  v123[1] = v102;
  v105 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v103, v123, 2, v104);

  v106 = *MEMORY[0x277D85DE8];

  return v105;
}

- (id)processMLRuntimedEvent:(id)event
{
  eventCopy = event;
  v9 = objc_msgSend_timestamp(eventCopy, v5, v6, v7, v8);
  objc_msgSend_timeIntervalSinceDate_(v9, v10, self->_currentTime, v11, v12);
  v14 = v13;

  currentState = self->_currentState;
  v20 = objc_msgSend_taskFetched(eventCopy, v16, v17, v18, v19);

  if (v20)
  {
    v25 = objc_msgSend_taskFetched(eventCopy, v21, v22, v23, v24);
    v30 = objc_msgSend_succeeded(v25, v26, v27, v28, v29);

    v35 = v30 == 0;
    v36 = 12;
    v37 = 4;
  }

  else
  {
    v38 = objc_msgSend_taskScheduled(eventCopy, v21, v22, v23, v24);

    if (v38)
    {
      v43 = objc_msgSend_taskScheduled(eventCopy, v39, v40, v41, v42);
      v48 = objc_msgSend_succeeded(v43, v44, v45, v46, v47);

      v35 = v48 == 0;
      v36 = 13;
      v37 = 5;
    }

    else
    {
      v49 = objc_msgSend_taskCompleted(eventCopy, v39, v40, v41, v42);

      if (!v49)
      {
        v56 = 8;
        goto LABEL_10;
      }

      v50 = objc_msgSend_taskCompleted(eventCopy, v31, v32, v33, v34);
      v55 = objc_msgSend_succeeded(v50, v51, v52, v53, v54);

      v35 = v55 == 0;
      v36 = 14;
      v37 = 6;
    }
  }

  if (v35)
  {
    v56 = v36;
  }

  else
  {
    v56 = v37;
  }

LABEL_10:
  v57 = objc_msgSend_timestamp(eventCopy, v31, v32, v33, v34);
  currentTime = self->_currentTime;
  self->_currentTime = v57;

  self->_currentState = v56;
  v59 = [LBFBitacoraStateTransition alloc];
  v64 = objc_msgSend_timestamp(eventCopy, v60, v61, v62, v63);
  v66 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v59, v65, v56, currentState, v64, v14);

  return v66;
}

- (id)processLighthouseEvent:(id)event
{
  eventCopy = event;
  v9 = objc_msgSend_timestamp(eventCopy, v5, v6, v7, v8);
  objc_msgSend_timeIntervalSinceDate_(v9, v10, self->_currentTime, v11, v12);
  v14 = v13;

  currentState = self->_currentState;
  v20 = objc_msgSend_performTaskStatus(eventCopy, v16, v17, v18, v19);

  if (v20)
  {
    v25 = objc_msgSend_performTaskStatus(eventCopy, v21, v22, v23, v24);
    goto LABEL_5;
  }

  v30 = objc_msgSend_performTrialTaskStatus(eventCopy, v21, v22, v23, v24);

  if (v30)
  {
    v25 = objc_msgSend_performTrialTaskStatus(eventCopy, v31, v32, v33, v34);
LABEL_5:
    v35 = v25;
    v36 = objc_msgSend_succeeded(v25, v26, v27, v28, v29);

    if (v36)
    {
      v41 = 7;
    }

    else
    {
      v41 = 15;
    }

    goto LABEL_8;
  }

  v53 = objc_msgSend_stop(eventCopy, v31, v32, v33, v34);

  if (v53)
  {
    v54 = objc_msgSend_stop(eventCopy, v37, v38, v39, v40);
    v59 = objc_msgSend_succeeded(v54, v55, v56, v57, v58);

    if (v59)
    {
      v41 = 16;
    }

    else
    {
      v41 = 17;
    }
  }

  else
  {
    v41 = 8;
  }

LABEL_8:
  v42 = objc_msgSend_timestamp(eventCopy, v37, v38, v39, v40);
  currentTime = self->_currentTime;
  self->_currentTime = v42;

  self->_currentState = v41;
  v44 = [LBFBitacoraStateTransition alloc];
  v49 = objc_msgSend_timestamp(eventCopy, v45, v46, v47, v48);
  v51 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v44, v50, v41, currentState, v49, v14);

  return v51;
}

- (id)processTrialdEvent:(id)event
{
  eventCopy = event;
  v9 = objc_msgSend_timestamp(eventCopy, v5, v6, v7, v8);
  objc_msgSend_timeIntervalSinceDate_(v9, v10, self->_currentTime, v11, v12);
  v14 = v13;

  currentState = self->_currentState;
  if (objc_msgSend_eventType(eventCopy, v16, v17, v18, v19) == 1)
  {
    if (objc_msgSend_eventSucceeded(eventCopy, v20, v21, v22, v23))
    {
      v28 = 1;
    }

    else
    {
      v28 = 9;
    }
  }

  else
  {
    if (objc_msgSend_eventType(eventCopy, v20, v21, v22, v23) == 2)
    {
      v33 = objc_msgSend_eventSucceeded(eventCopy, v29, v30, v31, v32) == 0;
      v34 = 10;
      v35 = 2;
    }

    else
    {
      if (objc_msgSend_eventType(eventCopy, v29, v30, v31, v32) != 3)
      {
        v28 = 8 * (objc_msgSend_eventType(eventCopy, v36, v37, v38, v39) != 0);
        goto LABEL_13;
      }

      v33 = objc_msgSend_eventSucceeded(eventCopy, v36, v37, v38, v39) == 0;
      v34 = 11;
      v35 = 3;
    }

    if (v33)
    {
      v28 = v34;
    }

    else
    {
      v28 = v35;
    }
  }

LABEL_13:
  v40 = objc_msgSend_timestamp(eventCopy, v24, v25, v26, v27);
  currentTime = self->_currentTime;
  self->_currentTime = v40;

  self->_currentState = v28;
  v42 = [LBFBitacoraStateTransition alloc];
  v47 = objc_msgSend_timestamp(eventCopy, v43, v44, v45, v46);
  v49 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v42, v48, v28, currentState, v47, v14);

  return v49;
}

- (id)processDprivacydEvent:(id)event
{
  eventCopy = event;
  v9 = objc_msgSend_timestamp(eventCopy, v5, v6, v7, v8);
  objc_msgSend_timeIntervalSinceDate_(v9, v10, self->_currentTime, v11, v12);
  v14 = v13;

  currentState = self->_currentState;
  v20 = objc_msgSend_event(eventCopy, v16, v17, v18, v19);
  v25 = objc_msgSend_phase(v20, v21, v22, v23, v24);

  v30 = 8;
  if (v25 <= 2)
  {
    if (v25 == 1)
    {
      v58 = objc_msgSend_event(eventCopy, v26, v27, v28, v29);
      v63 = objc_msgSend_succeeded(v58, v59, v60, v61, v62);

      v37 = v63 == 0;
      v38 = 26;
      v39 = 21;
    }

    else
    {
      if (v25 != 2)
      {
        goto LABEL_15;
      }

      v40 = objc_msgSend_event(eventCopy, v26, v27, v28, v29);
      v45 = objc_msgSend_succeeded(v40, v41, v42, v43, v44);

      v37 = v45 == 0;
      v38 = 27;
      v39 = 22;
    }
  }

  else
  {
    switch(v25)
    {
      case 3:
        v46 = objc_msgSend_event(eventCopy, v26, v27, v28, v29);
        v51 = objc_msgSend_succeeded(v46, v47, v48, v49, v50);

        v37 = v51 == 0;
        v38 = 28;
        v39 = 23;
        break;
      case 4:
        v52 = objc_msgSend_event(eventCopy, v26, v27, v28, v29);
        v57 = objc_msgSend_succeeded(v52, v53, v54, v55, v56);

        v37 = v57 == 0;
        v38 = 29;
        v39 = 24;
        break;
      case 5:
        v31 = objc_msgSend_event(eventCopy, v26, v27, v28, v29);
        v36 = objc_msgSend_succeeded(v31, v32, v33, v34, v35);

        v37 = v36 == 0;
        v38 = 30;
        v39 = 25;
        break;
      default:
        goto LABEL_15;
    }
  }

  if (v37)
  {
    v30 = v38;
  }

  else
  {
    v30 = v39;
  }

LABEL_15:
  v64 = objc_msgSend_timestamp(eventCopy, v26, v27, v28, v29);
  currentTime = self->_currentTime;
  self->_currentTime = v64;

  self->_currentState = v30;
  v66 = [LBFBitacoraStateTransition alloc];
  v71 = objc_msgSend_timestamp(eventCopy, v67, v68, v69, v70);
  v73 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v66, v72, v30, currentState, v71, v14);

  return v73;
}

- (id)validateTransition:(id)transition
{
  transitionCopy = transition;
  v12 = objc_msgSend_state(transitionCopy, v4, v5, v6, v7) - 2;
  if (v12 <= 0xE && ((0x403Du >> v12) & 1) != 0)
  {
    v13 = *(&off_279813908 + v12);
    v14 = MEMORY[0x277CCABB0];
    v15 = objc_msgSend_previousState(transitionCopy, v8, v9, v10, v11);
    v19 = objc_msgSend_numberWithInteger_(v14, v16, v15, v17, v18);
    LOBYTE(v13) = objc_msgSend_containsObject_(v13, v20, v19, v21, v22);

    if ((v13 & 1) == 0)
    {
      v23 = [LBFBitacoraStateTransition alloc];
      v28 = objc_msgSend_previousState(transitionCopy, v24, v25, v26, v27);
      v33 = objc_msgSend_timestamp(transitionCopy, v29, v30, v31, v32);
      objc_msgSend_timedelta(transitionCopy, v34, v35, v36, v37);
      v39 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v23, v38, 8, v28, v33);

      transitionCopy = v39;
    }
  }

  return transitionCopy;
}

@end