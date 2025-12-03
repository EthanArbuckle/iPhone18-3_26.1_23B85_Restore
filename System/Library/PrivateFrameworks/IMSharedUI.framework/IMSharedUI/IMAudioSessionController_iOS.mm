@interface IMAudioSessionController_iOS
- (IMAudioSessionController_iOS)init;
- (void)audioSessionInterruption:(id)interruption;
- (void)audioSessionMediaServicesWereLost:(id)lost;
- (void)audioSessionMediaServicesWereReset:(id)reset;
- (void)audioSessionRouteChange:(id)change;
- (void)configureAudioSessionWithOptions:(unint64_t)options;
- (void)dealloc;
@end

@implementation IMAudioSessionController_iOS

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = IMAudioSessionController_iOS;
  [(IMAudioSessionController_iOS *)&v6 dealloc];
}

- (IMAudioSessionController_iOS)init
{
  v11.receiver = self;
  v11.super_class = IMAudioSessionController_iOS;
  v4 = [(IMAudioSessionController_iOS *)&v11 init];
  if (v4)
  {
    v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v3);
    objc_msgSend_addObserver_selector_name_object_(v5, v6, v4, sel_audioSessionInterruption_, *MEMORY[0x277CB8068], 0);
    objc_msgSend_addObserver_selector_name_object_(v5, v7, v4, sel_audioSessionRouteChange_, *MEMORY[0x277CB8210], 0);
    objc_msgSend_addObserver_selector_name_object_(v5, v8, v4, sel_audioSessionMediaServicesWereLost_, *MEMORY[0x277CB8098], 0);
    objc_msgSend_addObserver_selector_name_object_(v5, v9, v4, sel_audioSessionMediaServicesWereReset_, *MEMORY[0x277CB80A0], 0);
  }

  return v4;
}

- (void)configureAudioSessionWithOptions:(unint64_t)options
{
  v36.receiver = self;
  v36.super_class = IMAudioSessionController_iOS;
  [(IMAudioSessionController *)&v36 configureAudioSessionWithOptions:?];
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277CB83F8], v4, v5);
  v7 = *MEMORY[0x277CB80A8];
  v35 = 0;
  v9 = objc_msgSend_setMode_error_(v6, v8, v7, &v35);
  v12 = v35;
  if ((v9 & 1) == 0)
  {
    v13 = objc_msgSend_audio(IMSharedUILogs, v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_2548059AC();
    }
  }

  v14 = options & 1;
  v15 = 44;
  if ((options & 1) == 0)
  {
    v15 = 36;
  }

  if ((options & 2) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = (options >> 1) & 2;
  v18 = MEMORY[0x277CB8020];
  if ((options & 2) == 0)
  {
    v18 = MEMORY[0x277CB8028];
  }

  v19 = *v18;

  v34 = 0;
  v21 = objc_msgSend_setCategory_withOptions_error_(v6, v20, v19, v16 | v17, &v34);
  v24 = v34;
  if ((v21 & 1) == 0)
  {
    v25 = objc_msgSend_audio(IMSharedUILogs, v22, v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_254805A14();
    }
  }

  v33 = 0;
  v27 = objc_msgSend_setActivationContext_error_(v6, v26, MEMORY[0x277CBEC10], &v33);
  v30 = v33;
  if ((v27 & 1) == 0)
  {
    v31 = objc_msgSend_audio(IMSharedUILogs, v28, v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_254805A7C();
    }
  }

  v32 = objc_msgSend_audio(IMSharedUILogs, v28, v29);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_254805AE4(v14, v6, v32);
  }
}

- (void)audioSessionRouteChange:(id)change
{
  v29 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = objc_msgSend_audio(IMSharedUILogs, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    v28 = changeCopy;
    _os_log_impl(&dword_2547F8000, v7, OS_LOG_TYPE_INFO, "audioSessionRouteChange: %@", &v27, 0xCu);
  }

  objc_msgSend_setDirty_(self, v8, 1);
  if (objc_msgSend_isActive(self, v9, v10))
  {
    v13 = objc_msgSend_userInfo(changeCopy, v11, v12);
    v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x277CB8220]);
    v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);

    if ((v18 - 1) <= 1)
    {
      v21 = objc_msgSend_audio(IMSharedUILogs, v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_2547F8000, v21, OS_LOG_TYPE_INFO, "Available audio routes changed", &v27, 2u);
      }

      v24 = objc_msgSend_options(self, v22, v23);
      objc_msgSend_activateWithOptions_completion_(self, v25, v24, 0);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInterruption:(id)interruption
{
  v12 = *MEMORY[0x277D85DE8];
  interruptionCopy = interruption;
  v7 = objc_msgSend_audio(IMSharedUILogs, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = interruptionCopy;
    _os_log_impl(&dword_2547F8000, v7, OS_LOG_TYPE_INFO, "audioSessionInterruption: %@", &v10, 0xCu);
  }

  objc_msgSend_setDirty_(self, v8, 1);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereLost:(id)lost
{
  v12 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v7 = objc_msgSend_audio(IMSharedUILogs, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = lostCopy;
    _os_log_impl(&dword_2547F8000, v7, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereLost: %@", &v10, 0xCu);
  }

  objc_msgSend_setDirty_(self, v8, 1);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereReset:(id)reset
{
  v12 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v7 = objc_msgSend_audio(IMSharedUILogs, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = resetCopy;
    _os_log_impl(&dword_2547F8000, v7, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereReset: %@", &v10, 0xCu);
  }

  objc_msgSend_setDirty_(self, v8, 1);
  v9 = *MEMORY[0x277D85DE8];
}

@end