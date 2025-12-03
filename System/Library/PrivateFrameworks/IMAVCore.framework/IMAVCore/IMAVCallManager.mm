@interface IMAVCallManager
+ (id)sharedInstance;
- (IMAVCallManager)init;
- (NSArray)calls;
- (id)_activeAudioCall;
- (id)_activeFaceTimeCall;
- (id)_copyMutableFTCalls;
- (id)_mutableFTCalls;
- (id)_nonRetainingChatList;
- (unsigned)_callState;
- (unsigned)callState;
- (void)_addACChatProxy:(id)proxy;
- (void)_addAVChatProxy:(id)proxy;
- (void)_addIMAVChatToChatList:(id)list;
- (void)_postStateChangeIfNecessary;
- (void)_removeIMAVChatFromChatList:(id)list;
- (void)_sendProxyUpdate;
- (void)_setACCallState:(unsigned int)state quietly:(BOOL)quietly;
- (void)_setAVCallState:(unsigned int)state quietly:(BOOL)quietly;
- (void)_updateACCallState;
- (void)_updateACChatProxyWithInfo:(id)info;
- (void)_updateAVCallState;
- (void)_updateAVChatProxyWithInfo:(id)info;
- (void)_updateOverallChatState;
@end

@implementation IMAVCallManager

+ (id)sharedInstance
{
  if (qword_28134A418 != -1)
  {
    sub_25477F8F0();
  }

  v3 = qword_28134A3E8;

  return v3;
}

- (IMAVCallManager)init
{
  v85.receiver = self;
  v85.super_class = IMAVCallManager;
  v6 = [(IMAVCallManager *)&v85 init];
  if (v6)
  {
    v7 = objc_msgSend_sharedInstance(IMAVController, v2, v3, v4, v5);
    if (objc_msgSend__shouldRunConferences(v7, v8, v9, v10, v11))
    {
      shouldRunACConferences = 1;
    }

    else
    {
      v17 = objc_msgSend_sharedInstance(IMAVController, v12, v13, v14, v15);
      shouldRunACConferences = objc_msgSend__shouldRunACConferences(v17, v18, v19, v20, v21);
    }

    v26 = objc_msgSend_sharedInstance(IMAVController, v22, v23, v24, v25);
    shouldObserveConferences = objc_msgSend__shouldObserveConferences(v26, v27, v28, v29, v30);

    if (shouldRunACConferences)
    {
      objc_msgSend_ensureHandlerSetup(IMAVHandler, v32, v33, v34, v35);
      v40 = objc_msgSend_date(MEMORY[0x277CBEAA8], v36, v37, v38, v39);
      lastCallStateChange = v6->_lastCallStateChange;
      v6->_lastCallStateChange = v40;

      v46 = objc_msgSend_sharedInstance(IMAVController, v42, v43, v44, v45);
      shouldRunConferences = objc_msgSend__shouldRunConferences(v46, v47, v48, v49, v50);

      if (shouldRunConferences)
      {
        notify_register_check("kIMAVCoreAVCallStateChanged", &v6->_avToken);
      }

      v56 = objc_msgSend_sharedInstance(IMAVController, v52, v53, v54, v55);
      v61 = objc_msgSend__shouldRunACConferences(v56, v57, v58, v59, v60);

      if (v61)
      {
        notify_register_check("kIMAVCoreACCallStateChanged", &v6->_acToken);
      }
    }

    else if ((shouldObserveConferences & 1) == 0)
    {
      v80 = MEMORY[0x277D85DD0];
      v81 = 3221225472;
      v82 = sub_25475B528;
      v83 = &unk_279783648;
      v70 = v6;
      v84 = v70;
      v71 = MEMORY[0x277D85CD0];
      im_notify_register_dispatch();
      state64[1] = MEMORY[0x277D85DD0];
      state64[2] = 3221225472;
      state64[3] = sub_25475B5A0;
      state64[4] = &unk_279783648;
      v72 = v70;
      v79 = v72;
      im_notify_register_dispatch();

      state64[0] = 0;
      notify_get_state(v6->_avToken, state64);
      objc_msgSend__setAVCallState_quietly_(v72, v73, LODWORD(state64[0]), 1, v74);
      notify_get_state(v70[17], state64);
      objc_msgSend__setACCallState_quietly_(v72, v75, LODWORD(state64[0]), 1, v76);

      guidToAVChatProxyMap = v84;
      goto LABEL_13;
    }

    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acChatProxyArray = v6->_acChatProxyArray;
    v6->_acChatProxyArray = v62;

    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    avChatProxyArray = v6->_avChatProxyArray;
    v6->_avChatProxyArray = v64;

    v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
    guidToACChatProxyMap = v6->_guidToACChatProxyMap;
    v6->_guidToACChatProxyMap = v66;

    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    guidToAVChatProxyMap = v6->_guidToAVChatProxyMap;
    v6->_guidToAVChatProxyMap = v68;
LABEL_13:
  }

  return v6;
}

- (NSArray)calls
{
  v6 = objc_msgSend__mutableFTCalls(self, a2, v2, v3, v4);
  objc_msgSend_addObjectsFromArray_(v6, v7, self->_acChatProxyArray, v8, v9);
  objc_msgSend_addObjectsFromArray_(v6, v10, self->_avChatProxyArray, v11, v12);

  return v6;
}

- (id)_mutableFTCalls
{
  v5 = objc_msgSend__copyMutableFTCalls(self, a2, v2, v3, v4);

  return v5;
}

- (id)_copyMutableFTCalls
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend__chatListLock(IMAVChat, v4, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11, v12);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = self->_chatArray;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v38, v42, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v39;
    do
    {
      v22 = 0;
      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v13);
        }

        v26 = objc_msgSend_object(*(*(&v38 + 1) + 8 * v22), v16, v17, v18, v19, v38);
        if (v26)
        {
          objc_msgSend_addObject_(v3, v23, v26, v24, v25);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v38, v42, 16);
    }

    while (v20);
  }

  v31 = objc_msgSend__chatListLock(IMAVChat, v27, v28, v29, v30);
  objc_msgSend_unlock(v31, v32, v33, v34, v35);

  v36 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_nonRetainingChatList
{
  chatArray = self->_chatArray;
  if (!chatArray)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_chatArray;
    self->_chatArray = v4;

    chatArray = self->_chatArray;
  }

  return chatArray;
}

- (void)_addIMAVChatToChatList:(id)list
{
  listCopy = list;
  v9 = objc_msgSend__chatListLock(IMAVChat, v5, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12, v13);

  if (!self->_chatArray)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    chatArray = self->_chatArray;
    self->_chatArray = v14;
  }

  v16 = objc_alloc(MEMORY[0x277D192E0]);
  inited = objc_msgSend_initRefWithObject_(v16, v17, listCopy, v18, v19);

  objc_msgSend_addObject_(self->_chatArray, v20, inited, v21, v22);
  v27 = objc_msgSend__chatListLock(IMAVChat, v23, v24, v25, v26);
  objc_msgSend_unlock(v27, v28, v29, v30, v31);
}

- (void)_removeIMAVChatFromChatList:(id)list
{
  v39 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v9 = objc_msgSend__chatListLock(IMAVChat, v5, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12, v13);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_chatArray;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v35;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v35 != v22)
      {
        objc_enumerationMutation(v14);
      }

      if (objc_msgSend_hash(*(*(&v34 + 1) + 8 * v23), v17, v18, v19, v20, v34) == listCopy)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v38, 16);
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v28 = objc_msgSend__chatListLock(IMAVChat, v24, v25, v26, v27);
  objc_msgSend_unlock(v28, v29, v30, v31, v32);

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_postStateChangeIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_callState(self, a2, v2, v3, v4);
  if (self->_globalCallState != v6)
  {
    v7 = v6;
    v8 = sub_254761764();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _NSStringDescriptionForIMAVChatState(self->_globalCallState);
      v10 = _NSStringDescriptionForIMAVChatState(v7);
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Global call state changed from %@ to %@", &v14, 0x16u);
    }

    globalCallState = self->_globalCallState;
    self->_globalCallState = v7;
    objc_msgSend__postStateChangeNamed_fromState_toState_postType_type_(self, v12, @"com.apple.avcore.callstatechanged", globalCallState, v7, 0, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unsigned)_callState
{
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19))
  {

LABEL_4:
LABEL_5:
    v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v24, v25, v26, v27);
    objc_msgSend_connectToDaemon(v28, v29, v30, v31, v32);

    goto LABEL_6;
  }

  v34 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
  shouldObserveConferences = objc_msgSend__shouldObserveConferences(v34, v35, v36, v37, v38);

  if (shouldObserveConferences)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (self->_avCallState <= self->_acCallState)
  {
    return self->_acCallState;
  }

  else
  {
    return self->_avCallState;
  }
}

- (void)_setAVCallState:(unsigned int)state quietly:(BOOL)quietly
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_avCallState != state)
  {
    v7 = sub_254761764();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _NSStringDescriptionForIMAVChatState(self->_avCallState);
      v9 = _NSStringDescriptionForIMAVChatState(state);
      v28 = 138412546;
      *v29 = v8;
      *&v29[8] = 2112;
      v30 = v9;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Setting av call state from %@ to %@", &v28, 0x16u);
    }

    v14 = objc_msgSend__callState(self, v10, v11, v12, v13);
    self->_avCallState = state;
    v19 = objc_msgSend__callState(self, v15, v16, v17, v18);
    if (!quietly)
    {
      v20 = v19;
      if (v14 != v19)
      {
        v21 = sub_254761764();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 67109376;
          *v29 = v14;
          *&v29[4] = 1024;
          *&v29[6] = v20;
          _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Posting overall non-telephony state changed from %d to %d", &v28, 0xEu);
        }

        objc_msgSend__postStateChangeNamed_fromState_toState_postType_type_(self, v22, @"com.apple.avcore._callstatechanged", v14, v20, 1, 1);
        objc_msgSend__postStateChangeIfNecessary(self, v23, v24, v25, v26);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_updateAVCallState
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = objc_msgSend_calls(self, a2, v2, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v37, 16);
  if (v8)
  {
    v13 = v8;
    v14 = 0;
    v15 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_isVideo(v17, v9, v10, v11, v12))
        {
          v18 = objc_msgSend_state(v17, v9, v10, v11, v12);
          isStateFinal = objc_msgSend_isStateFinal(v17, v19, v20, v21, v22);
          if (v14 <= v18)
          {
            v24 = v18;
          }

          else
          {
            v24 = v14;
          }

          if (isStateFinal)
          {
            v14 = v14;
          }

          else
          {
            v14 = v24;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v37, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v25 = sub_254761764();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = _NSStringDescriptionForIMAVChatState(v14);
    *buf = 138412290;
    v36 = v26;
    _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Updating AV call state to %@", buf, 0xCu);
  }

  objc_msgSend__setAVCallState_(self, v27, v14, v28, v29);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)_setACCallState:(unsigned int)state quietly:(BOOL)quietly
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_acCallState != state)
  {
    v7 = sub_254761764();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _NSStringDescriptionForIMAVChatState(self->_acCallState);
      v9 = _NSStringDescriptionForIMAVChatState(state);
      v28 = 138412546;
      *v29 = v8;
      *&v29[8] = 2112;
      v30 = v9;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Setting ac call state from %@ to %@", &v28, 0x16u);
    }

    v14 = objc_msgSend__callState(self, v10, v11, v12, v13);
    self->_acCallState = state;
    v19 = objc_msgSend__callState(self, v15, v16, v17, v18);
    if (!quietly)
    {
      v20 = v19;
      if (v14 != v19)
      {
        v21 = sub_254761764();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 67109376;
          *v29 = v14;
          *&v29[4] = 1024;
          *&v29[6] = v20;
          _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Posting overall non-telephony state changed from %d to %d", &v28, 0xEu);
        }

        objc_msgSend__postStateChangeNamed_fromState_toState_postType_type_(self, v22, @"com.apple.avcore._callstatechanged", v14, v20, 1, 2);
        objc_msgSend__postStateChangeIfNecessary(self, v23, v24, v25, v26);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_updateACCallState
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = objc_msgSend_calls(self, a2, v2, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v37, 16);
  if (v8)
  {
    v13 = v8;
    v14 = 0;
    v15 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if ((objc_msgSend_isVideo(v17, v9, v10, v11, v12) & 1) == 0)
        {
          v18 = objc_msgSend_state(v17, v9, v10, v11, v12);
          isStateFinal = objc_msgSend_isStateFinal(v17, v19, v20, v21, v22);
          if (v14 <= v18)
          {
            v24 = v18;
          }

          else
          {
            v24 = v14;
          }

          if (isStateFinal)
          {
            v14 = v14;
          }

          else
          {
            v14 = v24;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v37, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v25 = sub_254761764();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = _NSStringDescriptionForIMAVChatState(v14);
    *buf = 138412290;
    v36 = v26;
    _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Updating AC call state to %@", buf, 0xCu);
  }

  objc_msgSend__setACCallState_(self, v27, v14, v28, v29);
  v30 = *MEMORY[0x277D85DE8];
}

- (unsigned)callState
{
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19))
  {

LABEL_4:
LABEL_5:
    v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v24, v25, v26, v27);
    objc_msgSend_connectToDaemon(v28, v29, v30, v31, v32);

    goto LABEL_6;
  }

  v34 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
  shouldObserveConferences = objc_msgSend__shouldObserveConferences(v34, v35, v36, v37, v38);

  if (shouldObserveConferences)
  {
    goto LABEL_5;
  }

LABEL_6:

  return objc_msgSend__callState(self, v24, v25, v26, v27);
}

- (void)_updateOverallChatState
{
  v201 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {
  }

  else
  {
    v19 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v19, v20, v21, v22, v23);

    if (!shouldRunACConferences)
    {
      goto LABEL_68;
    }
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  selfCopy = self;
  v25 = objc_msgSend_calls(self, v15, v16, v17, v18);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v194, v200, 16);
  if (!v27)
  {
    v192 = 0;
    v193 = 0;
    v191 = 0;
    v29 = 0;
    goto LABEL_25;
  }

  v28 = v27;
  v192 = 0;
  v193 = 0;
  v191 = 0;
  v29 = 0;
  v30 = *v195;
  v31 = 0x281D46000uLL;
  do
  {
    v32 = 0;
    v190 = v28;
    do
    {
      if (*v195 != v30)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v194 + 1) + 8 * v32);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = objc_msgSend_state(v33, v34, v35, v36, v37);
        if ((objc_msgSend_isStateFinal(v33, v39, v40, v41, v42) & 1) == 0)
        {
          if (objc_msgSend_isVideo(v33, v34, v43, v44, v45))
          {
            if (v29 <= v38)
            {
              v29 = v38;
            }

            else
            {
              v29 = v29;
            }

            v50 = v192;
            v51 = v193;
            v52 = v33;
            if (v29 != objc_msgSend_state(v192, v46, v47, v48, v49))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v53 = v30;
            v54 = v31;
            v55 = v25;
            v56 = v29;
            v57 = v191;
            if (v191 <= v38)
            {
              v57 = v38;
            }

            v50 = v193;
            v51 = v33;
            v52 = v192;
            v191 = v57;
            v58 = v57 == objc_msgSend_state(v193, v46, v47, v48, v49);
            v29 = v56;
            v25 = v55;
            v31 = v54;
            v30 = v53;
            v28 = v190;
            if (!v58)
            {
LABEL_20:
              v59 = v33;

              v192 = v52;
              v193 = v51;
            }
          }
        }
      }

      ++v32;
    }

    while (v28 != v32);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v34, &v194, v200, 16);
  }

  while (v28);
LABEL_25:

  objc_msgSend__sendProxyUpdate(selfCopy, v60, v61, v62, v63);
  if (v29 == 5)
  {

    v192 = 0;
    v29 = 0;
  }

  v68 = v191;
  if (v191 == 5)
  {

    v193 = 0;
    v68 = 0;
  }

  if (!(v29 | v68))
  {
    v69 = sub_254761764();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = _NSStringDescriptionForIMAVChatState(0);
      *buf = 138412290;
      v199 = v70;
      _os_log_impl(&dword_254743000, v69, OS_LOG_TYPE_DEFAULT, "Ending logging session with state: %@", buf, 0xCu);
    }

    v71 = sub_254761764();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v76 = objc_msgSend__FTCalls(selfCopy, v72, v73, v74, v75);
      *buf = 138412290;
      v199 = v76;
      _os_log_impl(&dword_254743000, v71, OS_LOG_TYPE_DEFAULT, "Remaining chats: %@", buf, 0xCu);
    }
  }

  v77 = objc_msgSend_sharedInstance(IMAVController, v64, v65, v66, v67);
  shouldRunConferences = objc_msgSend__shouldRunConferences(v77, v78, v79, v80, v81);

  if (shouldRunConferences)
  {
    avCallState = selfCopy->_avCallState;
    v88 = MEMORY[0x277CBEAC0];
    v89 = _NSStringDescriptionForIMAVChatState(v29);
    v90 = _NSStringDescriptionForIMAVChatState(avCallState);
    v91 = MEMORY[0x277CCACA8];
    objc_msgSend_timeIntervalSinceNow(selfCopy->_lastCallStateChange, v92, v93, v94, v95);
    v100 = objc_msgSend_stringWithFormat_(v91, v97, @"%.1f", v98, v99, fabs(v96));
    v104 = objc_msgSend_dictionaryWithObjectsAndKeys_(v88, v101, v89, v102, v103, @"CurrentState", v90, @"PreviousState", v100, @"TimeSinceLastStateChange", 0);

    if (qword_28134A458 != -1)
    {
      sub_25477F904();
    }

    if (off_28134A460)
    {
      off_28134A460(8, @"VideoCallStateChange", v104, 0);
    }
  }

  v105 = objc_msgSend_sharedInstance(IMAVController, v83, v84, v85, v86);
  v110 = objc_msgSend__shouldRunACConferences(v105, v106, v107, v108, v109);

  if (v110)
  {
    acCallState = selfCopy->_acCallState;
    v116 = MEMORY[0x277CBEAC0];
    v117 = _NSStringDescriptionForIMAVChatState(v68);
    v118 = _NSStringDescriptionForIMAVChatState(acCallState);
    v119 = MEMORY[0x277CCACA8];
    objc_msgSend_timeIntervalSinceNow(selfCopy->_lastCallStateChange, v120, v121, v122, v123);
    v128 = objc_msgSend_stringWithFormat_(v119, v125, @"%.1f", v126, v127, fabs(v124));
    v132 = objc_msgSend_dictionaryWithObjectsAndKeys_(v116, v129, v117, v130, v131, @"CurrentState", v118, @"PreviousState", v128, @"TimeSinceLastStateChange", 0);

    if (qword_28134A3C0 != -1)
    {
      sub_25477F92C();
    }

    if (off_28134A3C8)
    {
      off_28134A3C8(8, @"AudioCallStateChange", v132, 0);
    }
  }

  v133 = objc_msgSend_date(MEMORY[0x277CBEAA8], v111, v112, v113, v114);
  lastCallStateChange = selfCopy->_lastCallStateChange;
  selfCopy->_lastCallStateChange = v133;

  v139 = objc_msgSend_sharedInstance(IMAVController, v135, v136, v137, v138);
  v144 = objc_msgSend__shouldRunConferences(v139, v140, v141, v142, v143);

  if (v144)
  {
    objc_msgSend__setAVCallState_(selfCopy, v145, v29, v147, v148);
    notify_set_state(selfCopy->_avToken, v29);
    notify_post("kIMAVCoreAVCallStateChanged");
  }

  v149 = objc_msgSend_sharedInstance(IMAVController, v145, v146, v147, v148);
  v154 = objc_msgSend__shouldRunACConferences(v149, v150, v151, v152, v153);

  if (v154)
  {
    objc_msgSend__setACCallState_(selfCopy, v155, v68, v157, v158);
    notify_set_state(selfCopy->_acToken, v68);
    notify_post("kIMAVCoreACCallStateChanged");
  }

  v159 = objc_msgSend_sharedInstance(IMAVController, v155, v156, v157, v158);
  v164 = objc_msgSend__shouldRunConferences(v159, v160, v161, v162, v163);

  v169 = objc_msgSend_sharedInstance(IMAVController, v165, v166, v167, v168);
  v174 = objc_msgSend__shouldRunACConferences(v169, v170, v171, v172, v173);

  if (v29)
  {
    v175 = v164;
  }

  else
  {
    v175 = 0;
  }

  if (v68)
  {
    v176 = v174;
  }

  else
  {
    v176 = 0;
  }

  powerAssertion = selfCopy->_powerAssertion;
  if (v175 & 1) != 0 || (v176)
  {
    if (!powerAssertion)
    {
      v181 = objc_alloc(MEMORY[0x277D19290]);
      v185 = objc_msgSend_initWithIdentifier_(v181, v182, @"ActiveFaceTimeConferenceAssertion", v183, v184);
      v186 = selfCopy->_powerAssertion;
      selfCopy->_powerAssertion = v185;

      v180 = sub_254761764();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
      {
        v187 = selfCopy->_powerAssertion;
        *buf = 138412290;
        v199 = v187;
        _os_log_impl(&dword_254743000, v180, OS_LOG_TYPE_DEFAULT, "Setting power assertion: %@", buf, 0xCu);
      }

LABEL_66:
    }
  }

  else if (powerAssertion)
  {
    v178 = sub_254761764();
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      v179 = selfCopy->_powerAssertion;
      *buf = 138412290;
      v199 = v179;
      _os_log_impl(&dword_254743000, v178, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: %@", buf, 0xCu);
    }

    v180 = selfCopy->_powerAssertion;
    selfCopy->_powerAssertion = 0;
    goto LABEL_66;
  }

LABEL_68:
  v188 = *MEMORY[0x277D85DE8];
}

- (void)_addAVChatProxy:(id)proxy
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if (!self->_guidToAVChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToAVChatProxyMap = self->_guidToAVChatProxyMap;
    self->_guidToAVChatProxyMap = Mutable;
  }

  if (!self->_avChatProxyArray)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    avChatProxyArray = self->_avChatProxyArray;
    self->_avChatProxyArray = v11;
  }

  v13 = self->_guidToAVChatProxyMap;
  v14 = objc_msgSend_GUID(proxyCopy, v4, v5, v6, v7);
  objc_msgSend_setObject_forKey_(v13, v15, proxyCopy, v14, v16);

  objc_msgSend_addObject_(self->_avChatProxyArray, v17, proxyCopy, v18, v19);
  v20 = sub_254761764();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_guidToAVChatProxyMap;
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "New AV proxy map after add %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addACChatProxy:(id)proxy
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if (!self->_guidToACChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToACChatProxyMap = self->_guidToACChatProxyMap;
    self->_guidToACChatProxyMap = Mutable;
  }

  if (!self->_acChatProxyArray)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acChatProxyArray = self->_acChatProxyArray;
    self->_acChatProxyArray = v11;
  }

  v13 = self->_guidToACChatProxyMap;
  v14 = objc_msgSend_GUID(proxyCopy, v4, v5, v6, v7);
  objc_msgSend_setObject_forKey_(v13, v15, proxyCopy, v14, v16);

  objc_msgSend_addObject_(self->_acChatProxyArray, v17, proxyCopy, v18, v19);
  v20 = sub_254761764();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_guidToACChatProxyMap;
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "New AC proxy map after add %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateAVChatProxyWithInfo:(id)info
{
  v127 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!self->_guidToAVChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToAVChatProxyMap = self->_guidToAVChatProxyMap;
    self->_guidToAVChatProxyMap = Mutable;
  }

  if (!self->_avChatProxyArray)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    avChatProxyArray = self->_avChatProxyArray;
    self->_avChatProxyArray = v7;
  }

  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_guidToAVChatProxyMap;
    *buf = 138412290;
    v126 = v10;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Old AV proxy map %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = infoCopy;
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v118, v124, 16);
  if (v109)
  {
    v107 = *v119;
    *&v16 = 138412290;
    v105 = v16;
    selfCopy = self;
    do
    {
      for (i = 0; i != v109; ++i)
      {
        if (*v119 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v118 + 1) + 8 * i);
        v23 = objc_msgSend_objectForKey_(v18, v13, @"GUID", v14, v15, v105);
        if (v23)
        {
          v24 = v11;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v25 = objc_msgSend__calls(self, v19, v20, v21, v22);
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v114, v123, 16);
          if (v27)
          {
            v32 = v27;
            v33 = *v115;
            while (2)
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v115 != v33)
                {
                  objc_enumerationMutation(v25);
                }

                v35 = objc_msgSend_GUID(*(*(&v114 + 1) + 8 * j), v28, v29, v30, v31);
                isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v35, v36, v23, v37, v38);

                if (isEqualToIgnoringCase)
                {
                  v53 = sub_254761764();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "Ignoring proxy update, we own the real IMAVChat object", buf, 2u);
                  }

                  v11 = v24;
                  objc_msgSend_addObject_(v24, v54, v23, v55, v56);
                  goto LABEL_41;
                }
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v114, v123, 16);
              if (v32)
              {
                continue;
              }

              break;
            }
          }

          v40 = sub_254761764();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v105;
            v126 = v18;
            _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "Updating chat proxy with info %@", buf, 0xCu);
          }

          v11 = v24;
          objc_msgSend_addObject_(v24, v41, v23, v42, v43);
          v47 = objc_msgSend_objectForKey_(selfCopy->_guidToAVChatProxyMap, v44, v23, v45, v46);
          v48 = sub_254761764();
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v47)
          {
            if (v49)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Found existing proxy, updating...", buf, 2u);
            }

            objc_msgSend_updateWithInfo_(v47, v50, v18, v51, v52);
          }

          else
          {
            if (v49)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Creating new proxy", buf, 2u);
            }

            v59 = objc_alloc_init(IMAVChatProxy);
            objc_msgSend_setObject_forKey_(selfCopy->_guidToAVChatProxyMap, v60, v59, v23, v61);
            objc_msgSend_addObject_(selfCopy->_avChatProxyArray, v62, v59, v63, v64);
            objc_msgSend_updateWithInfo_(v59, v65, v18, v66, v67);
            v68 = sub_254761764();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = selfCopy->_guidToAVChatProxyMap;
              *buf = v105;
              v126 = v69;
              _os_log_impl(&dword_254743000, v68, OS_LOG_TYPE_DEFAULT, "AV Proxy Map: %@", buf, 0xCu);
            }
          }

LABEL_41:
          self = selfCopy;
        }

        else
        {
          v57 = sub_254761764();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "No GUID in proxy update, ignoring...", buf, 2u);
          }

          v58 = sub_254761764();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v105;
            v126 = v18;
            _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v118, v124, 16);
    }

    while (v109);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v74 = objc_msgSend__copyForEnumerating(self->_avChatProxyArray, v70, v71, v72, v73);
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v110, v122, 16);
  if (v76)
  {
    v81 = v76;
    v82 = *v111;
    do
    {
      for (k = 0; k != v81; ++k)
      {
        if (*v111 != v82)
        {
          objc_enumerationMutation(v74);
        }

        v84 = *(*(&v110 + 1) + 8 * k);
        v85 = objc_msgSend_GUID(v84, v77, v78, v79, v80);
        v89 = objc_msgSend_containsObject_(v11, v86, v85, v87, v88);

        if ((v89 & 1) == 0)
        {
          v90 = self->_guidToAVChatProxyMap;
          v91 = objc_msgSend_GUID(v84, v77, v78, v79, v80);
          objc_msgSend_removeObjectForKey_(v90, v92, v91, v93, v94);

          objc_msgSend_removeObjectIdenticalTo_(self->_avChatProxyArray, v95, v84, v96, v97);
          objc_msgSend_finalUpdate(v84, v98, v99, v100, v101);
        }
      }

      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v110, v122, 16);
    }

    while (v81);
  }

  v102 = sub_254761764();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    v103 = self->_guidToAVChatProxyMap;
    *buf = 138412290;
    v126 = v103;
    _os_log_impl(&dword_254743000, v102, OS_LOG_TYPE_DEFAULT, "New AV proxy map %@", buf, 0xCu);
  }

  v104 = *MEMORY[0x277D85DE8];
}

- (void)_updateACChatProxyWithInfo:(id)info
{
  v124 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!self->_guidToACChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToACChatProxyMap = self->_guidToACChatProxyMap;
    self->_guidToACChatProxyMap = Mutable;
  }

  if (!self->_acChatProxyArray)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acChatProxyArray = self->_acChatProxyArray;
    self->_acChatProxyArray = v7;
  }

  v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = sub_254761764();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_guidToACChatProxyMap;
    *buf = 138412290;
    v123 = v10;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Old AC proxy map %@", buf, 0xCu);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = infoCopy;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v115, v121, 16);
  if (v105)
  {
    v104 = *v116;
    *&v15 = 138412290;
    v102 = v15;
    do
    {
      for (i = 0; i != v105; ++i)
      {
        if (*v116 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v115 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKey_(v17, v12, @"GUID", v13, v14, v102);
        if (v22)
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v23 = objc_msgSend__calls(self, v18, v19, v20, v21);
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v111, v120, 16);
          if (v25)
          {
            v30 = v25;
            v31 = *v112;
            while (2)
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v112 != v31)
                {
                  objc_enumerationMutation(v23);
                }

                v33 = objc_msgSend_GUID(*(*(&v111 + 1) + 8 * j), v26, v27, v28, v29);
                isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v33, v34, v22, v35, v36);

                if (isEqualToIgnoringCase)
                {
                  v51 = sub_254761764();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "Ignoring proxy update, we own the real IMAVChat object", buf, 2u);
                  }

                  objc_msgSend_addObject_(v106, v52, v22, v53, v54);
                  goto LABEL_40;
                }
              }

              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v111, v120, 16);
              if (v30)
              {
                continue;
              }

              break;
            }
          }

          v38 = sub_254761764();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v102;
            v123 = v17;
            _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, "Updating chat proxy with info %@", buf, 0xCu);
          }

          objc_msgSend_addObject_(v106, v39, v22, v40, v41);
          v45 = objc_msgSend_objectForKey_(self->_guidToACChatProxyMap, v42, v22, v43, v44);
          v46 = sub_254761764();
          v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
          if (v45)
          {
            if (v47)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v46, OS_LOG_TYPE_DEFAULT, "Found existing proxy, updating...", buf, 2u);
            }

            objc_msgSend_updateWithInfo_(v45, v48, v17, v49, v50);
          }

          else
          {
            if (v47)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v46, OS_LOG_TYPE_DEFAULT, "Creating new proxy", buf, 2u);
            }

            v56 = objc_alloc_init(IMAVChatProxy);
            objc_msgSend_setObject_forKey_(self->_guidToACChatProxyMap, v57, v56, v22, v58);
            objc_msgSend_addObject_(self->_acChatProxyArray, v59, v56, v60, v61);
            objc_msgSend_updateWithInfo_(v56, v62, v17, v63, v64);
            v65 = sub_254761764();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = self->_guidToACChatProxyMap;
              *buf = v102;
              v123 = v66;
              _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "AC Proxy Map: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v55 = sub_254761764();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v55, OS_LOG_TYPE_DEFAULT, "No GUID in proxy update, ignoring...", buf, 2u);
          }

          v45 = sub_254761764();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v102;
            v123 = v17;
            _os_log_impl(&dword_254743000, v45, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }

LABEL_40:
      }

      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v115, v121, 16);
    }

    while (v105);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v71 = objc_msgSend__copyForEnumerating(self->_acChatProxyArray, v67, v68, v69, v70);
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v107, v119, 16);
  if (v73)
  {
    v78 = v73;
    v79 = *v108;
    do
    {
      for (k = 0; k != v78; ++k)
      {
        if (*v108 != v79)
        {
          objc_enumerationMutation(v71);
        }

        v81 = *(*(&v107 + 1) + 8 * k);
        v82 = objc_msgSend_GUID(v81, v74, v75, v76, v77);
        v86 = objc_msgSend_containsObject_(v106, v83, v82, v84, v85);

        if ((v86 & 1) == 0)
        {
          v87 = self->_guidToACChatProxyMap;
          v88 = objc_msgSend_GUID(v81, v74, v75, v76, v77);
          objc_msgSend_removeObjectForKey_(v87, v89, v88, v90, v91);

          objc_msgSend_removeObjectIdenticalTo_(self->_acChatProxyArray, v92, v81, v93, v94);
          objc_msgSend_finalUpdate(v81, v95, v96, v97, v98);
        }
      }

      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v107, v119, 16);
    }

    while (v78);
  }

  v99 = sub_254761764();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v100 = self->_guidToACChatProxyMap;
    *buf = 138412290;
    v123 = v100;
    _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "New AC proxy map %@", buf, 0xCu);
  }

  v101 = *MEMORY[0x277D85DE8];
}

- (void)_sendProxyUpdate
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  shouldRunConferences = objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10);

  if (shouldRunConferences)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v21 = objc_msgSend_calls(self, v17, v18, v19, v20);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v90, v95, 16);
    if (v23)
    {
      v24 = v23;
      v25 = *v91;
      do
      {
        v26 = 0;
        do
        {
          if (*v91 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v90 + 1) + 8 * v26);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isVideo(v27, v28, v29, v30, v31))
          {
            v35 = objc_msgSend__proxyRepresentation(v27, v28, v32, v33, v34);
            objc_msgSend_addObject_(v16, v36, v35, v37, v38);
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v90, v95, 16);
      }

      while (v24);
    }

    v39 = sub_254761764();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "Sending video chat proxy update", buf, 2u);
    }

    v44 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v40, v41, v42, v43);
    objc_msgSend_setValue_ofProperty_(v44, v45, v16, @"AVChatProxy", v46);
  }

  v47 = objc_msgSend_sharedInstance(IMAVController, v12, v13, v14, v15);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v47, v48, v49, v50, v51);

  if (shouldRunACConferences)
  {
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v58 = objc_msgSend_calls(self, v54, v55, v56, v57, 0);
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v85, v94, 16);
    if (v60)
    {
      v61 = v60;
      v62 = *v86;
      do
      {
        v63 = 0;
        do
        {
          if (*v86 != v62)
          {
            objc_enumerationMutation(v58);
          }

          v64 = *(*(&v85 + 1) + 8 * v63);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isVideo(v64, v65, v66, v67, v68) & 1) == 0)
          {
            v72 = objc_msgSend__proxyRepresentation(v64, v65, v69, v70, v71);
            objc_msgSend_addObject_(v53, v73, v72, v74, v75);
          }

          ++v63;
        }

        while (v61 != v63);
        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v65, &v85, v94, 16);
      }

      while (v61);
    }

    v76 = sub_254761764();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v76, OS_LOG_TYPE_DEFAULT, "Sending audio chat proxy update", buf, 2u);
    }

    v81 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v77, v78, v79, v80);
    objc_msgSend_setValue_ofProperty_(v81, v82, v53, @"ACChatProxy", v83);
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (id)_activeFaceTimeCall
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = objc_msgSend__FTCalls(self, a2, v2, v3, v4, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_isVideo(v14, v7, v8, v9, v10))
        {
          v15 = objc_msgSend_state(v14, v7, v8, v9, v10);
          if (v15 != 5 && v15 != 0)
          {
            v11 = v14;
            goto LABEL_14;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v11);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_activeAudioCall
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = objc_msgSend__FTCalls(self, a2, v2, v3, v4, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ((objc_msgSend_isVideo(v14, v7, v8, v9, v10) & 1) == 0)
        {
          v15 = objc_msgSend_state(v14, v7, v8, v9, v10);
          if (v15 != 5 && v15 != 0)
          {
            v11 = v14;
            goto LABEL_14;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v11);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

@end