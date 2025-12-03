@interface IMHandleStatusObserverAssertion
- (IMHandle)handle;
- (IMHandleStatusObserverAssertion)initWithHandle:(id)handle;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IMHandleStatusObserverAssertion

- (IMHandleStatusObserverAssertion)initWithHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = IMHandleStatusObserverAssertion;
  v5 = [(IMHandleStatusObserverAssertion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handle, handleCopy);
    v6->_valid = 1;
  }

  return v6;
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_handle(self, v6, v7);
      v11 = objc_msgSend_ID(v8, v9, v10);
      v15 = 134218242;
      selfCopy = self;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Status observer %p for handle %@ is being invalidated", &v15, 0x16u);
    }
  }

  v12 = objc_msgSend_sharedInstance(IMHandleStatusManager, v3, v4);
  objc_msgSend_invalidateObserver_(v12, v13, self);

  self->_valid = 0;
  v14 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = objc_msgSend_handle(self, v4, v5);
      v9 = objc_msgSend_ID(v6, v7, v8);
      *buf = 134218242;
      selfCopy2 = self;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Status observer %p for handle %@ is being deallocated", buf, 0x16u);
    }
  }

  if (self->_valid)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Status observer %p being dealloced without having been invalidated, this is likely a bug", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8356954;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    if (qword_1EB2E90F0 != -1)
    {
      dispatch_once(&qword_1EB2E90F0, block);
    }
  }

  v12.receiver = self;
  v12.super_class = IMHandleStatusObserverAssertion;
  [(IMHandleStatusObserverAssertion *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (IMHandle)handle
{
  WeakRetained = objc_loadWeakRetained(&self->_handle);

  return WeakRetained;
}

@end