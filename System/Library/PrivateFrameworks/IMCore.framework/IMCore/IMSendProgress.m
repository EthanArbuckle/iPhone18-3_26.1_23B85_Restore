@interface IMSendProgress
- (IMSendProgress)initWithDelegate:(id)a3 context:(id)a4;
- (IMSendProgressDelegate)delegate;
- (double)_getEstimatedSendTimeOverStewieInSeconds;
- (id)context;
- (unint64_t)_sGetEstimatedNumberOfRetries:(unint64_t)a3;
- (unint64_t)_sGetNumberOfDataGrams:(unint64_t)a3;
- (void)_resetSendProgress;
- (void)_scheduleSendProgressTimerIfNeeded;
- (void)_sendProgressTimerFired:(id)a3;
- (void)_updateSendProgress;
- (void)dealloc;
- (void)invalidate;
- (void)updateForItems:(id)a3 forced:(BOOL)a4;
- (void)updateForPendingComposition;
@end

@implementation IMSendProgress

- (unint64_t)_sGetNumberOfDataGrams:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 >= 0xD)
  {
    return (ceil((a3 - 11) / 17.0) + 1.0);
  }

  return 1;
}

- (unint64_t)_sGetEstimatedNumberOfRetries:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 + -1.0) / 0.7 + 2.04081633 - a3;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return vcvtpd_u64_f64(v3);
}

- (double)_getEstimatedSendTimeOverStewieInSeconds
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = objc_msgSend_sendingItems(self, a2, v2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A8362CF0;
  v11[3] = &unk_1E78136B0;
  v11[4] = &v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v11);

  NumberOfDataGrams = objc_msgSend__sGetNumberOfDataGrams_(self, v6, *(v13 + 6));
  v9 = ceil(((2 * objc_msgSend__sGetEstimatedNumberOfRetries_(self, v8, NumberOfDataGrams)) + NumberOfDataGrams * 2.0) * 2.56) + 2.56;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_sendProgressTimer, a2, v2);
  v4.receiver = self;
  v4.super_class = IMSendProgress;
  [(IMSendProgress *)&v4 dealloc];
}

- (IMSendProgress)initWithDelegate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = IMSendProgress;
  v8 = [(IMSendProgress *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_context, v7);
    v10 = objc_opt_class();
    v13 = objc_alloc_init(objc_msgSend__timeDataSourceClass(v10, v11, v12));
    timeDataSource = v9->_timeDataSource;
    v9->_timeDataSource = v13;
  }

  return v9;
}

- (void)updateForItems:(id)a3 forced:(BOOL)a4
{
  v75 = a4;
  v112 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v76 = self;
  v78 = self->_sendingItems;
  v6 = v5;
  v77 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v90, buf, 16);
  if (v10)
  {
    v11 = *v91;
    do
    {
      v12 = 0;
      do
      {
        if (*v91 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v90 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_msgSend_isTypingOrCancelTypingMessage(v13, v14, v15) ^ 1;
        }

        else
        {
          v16 = 0;
        }

        v17 = objc_msgSend_sharedInstance(IMChorosMonitor, v14, v15);
        isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v17, v18, v19);

        if (!(isSatelliteConnectionActive & 1 | ((v16 & 1) == 0)))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            goto LABEL_28;
          }

LABEL_13:
          v24 = objc_msgSend_guid(v13, v21, v22);
          v27 = objc_msgSend__senderHandle(v13, v25, v26);
          v30 = objc_msgSend_service(v27, v28, v29);

          v31 = v13;
          v33 = objc_msgSend_objectForKey_(v78, v32, v24);

          if (objc_msgSend_isFromMe(v31, v34, v35) && !objc_msgSend_errorCode(v31, v36, v37))
          {
            v40 = objc_msgSend_isSent(v31, v38, v39) ^ 1;
          }

          else
          {
            LOBYTE(v40) = 0;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v33)
            {
              v46 = 1;
            }

            else
            {
              v46 = v40;
            }

            if ((v46 & 1) == 0)
            {
              objc_msgSend_isLocatingMessage(v31, v41, v42);
            }

            goto LABEL_27;
          }

          isDiscontinued = objc_msgSend_isDiscontinued(v30, v41, v42);
          if (v40 & 1 | (v33 != 0))
          {
            if (isDiscontinued)
            {
              goto LABEL_27;
            }

LABEL_26:
            objc_msgSend_setObject_forKey_(v77, v44, v31, v24);
          }

          else if (!(isDiscontinued & 1 | ((objc_msgSend_isLocatingMessage(v31, v44, v45) & 1) == 0)))
          {
            goto LABEL_26;
          }

LABEL_27:

          goto LABEL_28;
        }

        if ((isSatelliteConnectionActive & v16) != 0)
        {
          goto LABEL_13;
        }

LABEL_28:
        ++v12;
      }

      while (v10 != v12);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v90, buf, 16);
      v10 = v47;
    }

    while (v47);
  }

  *&v90 = 0;
  *(&v90 + 1) = &v90;
  *&v91 = 0x2020000000;
  BYTE8(v91) = 0;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = sub_1A83C8FFC;
  v87[3] = &unk_1E7814638;
  v48 = v77;
  v88 = v48;
  v89 = &v90;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v78, v49, v87);
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = sub_1A83C9058;
  v80[3] = &unk_1E7814638;
  v50 = v78;
  v81 = v50;
  v82 = &v83;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v48, v51, v80);
  v54 = self;
  if (*(v84 + 24) == 1 && (objc_msgSend_waitingForComposition(self, v52, v53) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (*(*(&v90 + 1) + 24) != 1)
  {
    goto LABEL_38;
  }

  if (self->_cachedSendProgress <= 0.0 || objc_msgSend_count(v48, v52, v53))
  {
LABEL_37:
    self->_cachedSendProgress = 0.0;
  }

  else
  {
    self->_cachedSendProgress = 1.0;
  }

LABEL_38:
  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v58 = objc_loadWeakRetained(&self->_context);
      v61 = objc_msgSend_allKeys(self->_sendingItems, v59, v60);
      v64 = objc_msgSend_allKeys(v48, v62, v63);
      v65 = *(*(&v90 + 1) + 24);
      v66 = *(v84 + 24);
      hasSendingMessages = objc_msgSend__hasSendingMessages(v76, v67, v68);
      *buf = 134220034;
      v95 = v76;
      v96 = 2048;
      v97 = WeakRetained;
      v98 = 2048;
      v99 = v58;
      v100 = 2112;
      v101 = v61;
      v102 = 2112;
      v103 = v64;
      v104 = 1024;
      v105 = v65;
      v106 = 1024;
      v107 = v66;
      v108 = 1024;
      v109 = v75;
      v110 = 1024;
      v111 = hasSendingMessages;
      _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_INFO, "IMSendProgress: %p (delegate: %p, context: %p) is updating sending items from %@ to %@. (removed? %d, inserted? %d, forced? %d, hasSendingMessages? %d)", buf, 0x4Cu);
    }

    v54 = v76;
  }

  objc_msgSend_setSendingItems_(v54, v55, v48);
  objc_msgSend__scheduleSendProgressTimerIfNeeded(v54, v70, v71);
  if ((*(*(&v90 + 1) + 24) & 1) != 0 || (v84[3] & 1) != 0 || (objc_msgSend__hasSendingMessages(v54, v72, v73) | v75) == 1)
  {
    objc_msgSend__updateSendProgress(v54, v72, v73);
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v90, 8);

  v74 = *MEMORY[0x1E69E9840];
}

- (void)updateForPendingComposition
{
  objc_msgSend_setWaitingForComposition_(self, a2, 1);
  v5 = objc_msgSend_timeDataSource(self, v3, v4);
  objc_msgSend_timeIntervalSinceReferenceDate(v5, v6, v7);
  objc_msgSend_setTranslationStartTime_(self, v8, v9);

  objc_msgSend__scheduleSendProgressTimerIfNeeded(self, v10, v11);

  objc_msgSend__updateSendProgress(self, v12, v13);
}

- (void)invalidate
{
  objc_msgSend_invalidate(self->_sendProgressTimer, a2, v2);
  sendProgressTimer = self->_sendProgressTimer;
  self->_sendProgressTimer = 0;
}

- (void)_resetSendProgress
{
  self->_cachedSendProgress = 0.0;
  self->_wasShowing = 0;
  objc_msgSend_setSendingItems_(self, a2, 0);
}

- (void)_updateSendProgress
{
  v88 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v56 = 0;
  v4 = objc_msgSend_timeDataSource(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(v4, v5, v6);
  v8 = v7;

  v54 = v8;
  v11 = objc_msgSend_sharedInstance(IMChorosMonitor, v9, v10);
  v12 = v8;
  isSatelliteConnectionActive = objc_msgSend_isSatelliteConnectionActive(v11, v13, v14);

  started = objc_msgSend_startSendProgressImmediately(self, v16, v17);
  if (objc_msgSend_count(self->_sendingItems, v19, v20))
  {
    objc_msgSend_setWaitingForComposition_(self, v21, 0);
    if (isSatelliteConnectionActive)
    {
      objc_msgSend__getEstimatedSendTimeOverStewieInSeconds(self, v23, v24);
      v26 = IMSendProgressProgressForSatellite(self->_sendingItems, &v56, &v55, &v54, v25);
      v12 = v54;
    }

    else
    {
      sendingItems = self->_sendingItems;
      v32 = objc_msgSend_timeDataSource(self, v23, v24);
      v33 = sendingItems;
      v34 = v32;
      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v80 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0;
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 0;
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1A83C9988;
      v82 = &unk_1E7814660;
      *&v83[8] = &v57;
      *&v83[16] = &v77;
      v84 = &v73;
      v85 = &v69;
      v35 = v34;
      *v83 = v35;
      v86 = &v61;
      v87 = &v65;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v33, v36, buf);
      v37 = v74[3] + v78[3];
      v38 = v66[3] + v70[3];
      v39 = v38 + v37;
      if (v38)
      {
        v26 = ((v62[6] / v38) + v37) / v39;
      }

      else
      {
        if (v39)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v39 = 0;
      }

      if (v39 >= v37 + 1)
      {
        v40 = v37 + 1;
      }

      else
      {
        v40 = v39;
      }

      v55 = v39;
      v56 = v40;
      v41 = v58[3];
      if (v41 > 0.0)
      {
        v54 = v58[3];
        v12 = v41;
      }

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(&v61, 8);
      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(&v77, 8);
    }
  }

  else
  {
    v26 = 1.0;
    if (objc_msgSend_waitingForComposition(self, v21, v22))
    {
      translationStartTime = self->_translationStartTime;
      v28 = fmin(v8 - translationStartTime, 5.0) / 5.0 * 0.5;
      v29 = translationStartTime == 0.0;
      v30 = 0.0;
      if (!v29)
      {
        v30 = v28;
      }

      v26 = v30;
    }
  }

  if (v8 - v12 > 5.0)
  {
    v42 = 1;
  }

  else
  {
    v42 = started;
  }

  cachedSendProgress = self->_cachedSendProgress;
  if (v26 > cachedSendProgress)
  {
    cachedSendProgress = v26;
  }

  self->_cachedSendProgress = cachedSendProgress;
  if (v42)
  {
    goto LABEL_28;
  }

  if (cachedSendProgress != 1.0)
  {
    goto LABEL_34;
  }

  if (self->_wasShowing)
  {
LABEL_28:
    v44 = cachedSendProgress == 1.0;
    self->_wasShowing = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *&v46 = self->_cachedSendProgress;
    objc_msgSend_sendProgress_progressDidChange_sendingMessages_sendCount_totalCount_finished_(WeakRetained, v47, self, self->_sendingItems, v56, v55, v44, v46);

    if (!v44)
    {
      goto LABEL_34;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = objc_loadWeakRetained(&self->_delegate);
      v52 = objc_loadWeakRetained(&self->_context);
      *buf = 134219008;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v51;
      *&buf[22] = 2048;
      v82 = v52;
      *v83 = 2048;
      *&v83[2] = v56;
      *&v83[10] = 2048;
      *&v83[12] = v55;
      _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "IMSendProgress: %p (delegate: %p, context: %p) finished! (sendCount = %tu, totalCount = %tu)", buf, 0x34u);
    }
  }

  objc_msgSend__resetSendProgress(self, v48, v49);
LABEL_34:
  v53 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleSendProgressTimerIfNeeded
{
  if (!self->_sendProgressTimer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      if (objc_msgSend__hasSendingMessages(self, v4, v5))
      {
      }

      else
      {
        v10 = objc_msgSend_waitingForComposition(self, v7, v8);

        if (!v10)
        {
          return;
        }
      }

      v11 = objc_msgSend_timerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], v9, self, sel__sendProgressTimerFired_, 0, 1, 0.0166666667);
      sendProgressTimer = self->_sendProgressTimer;
      self->_sendProgressTimer = v11;

      objc_msgSend_setTolerance_(self->_sendProgressTimer, v13, v14, 0.0333333333);
      v18 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v15, v16);
      objc_msgSend_addTimer_forMode_(v18, v17, self->_sendProgressTimer, *MEMORY[0x1E695DA28]);
    }
  }
}

- (void)_sendProgressTimerFired:(id)a3
{
  if ((objc_msgSend__hasSendingMessages(self, a2, a3) & 1) != 0 || objc_msgSend_waitingForComposition(self, v4, v5))
  {

    objc_msgSend__updateSendProgress(self, v4, v5);
  }

  else
  {
    objc_msgSend_invalidate(self->_sendProgressTimer, v4, v5);
    sendProgressTimer = self->_sendProgressTimer;
    self->_sendProgressTimer = 0;
  }
}

- (IMSendProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end