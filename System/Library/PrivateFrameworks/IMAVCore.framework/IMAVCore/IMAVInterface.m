@interface IMAVInterface
+ (id)sharedInstance;
- (BOOL)startPreviewWithError:(id *)a3;
- (BOOL)systemSupportsBackFacingCamera;
- (BOOL)systemSupportsFrontFacingCamera;
- (id)delegate;
- (unsigned)overallChatState;
- (void)chatStateUpdated;
- (void)dealloc;
- (void)unsetDelegate:(id)a3;
@end

@implementation IMAVInterface

+ (id)sharedInstance
{
  if (qword_28134A400 != -1)
  {
    sub_25477F864();
  }

  v3 = qword_28134A3D0;

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = IMAVInterface;
  [(IMAVInterface *)&v3 dealloc];
}

- (unsigned)overallChatState
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend__callState(v5, v6, v7, v8, v9);

  return v10;
}

- (void)chatStateUpdated
{
  v9 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  objc_msgSend__updateOverallChatState(v9, v5, v6, v7, v8);
}

- (void)unsetDelegate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_delegate(self, v5, v6, v7, v8);

  if (v9 == v4)
  {
    v10 = sub_254761764();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = v4;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Unsetting %p as the delegate on %@", &v15, 0x16u);
    }

    objc_msgSend_setDelegate_(self, v11, 0, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)systemSupportsFrontFacingCamera
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, v2, v3, v4);
  v10 = objc_msgSend_supportsFrontFacingCamera(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)systemSupportsBackFacingCamera
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, v2, v3, v4);
  v10 = objc_msgSend_supportsBackFacingCamera(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)startPreviewWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end