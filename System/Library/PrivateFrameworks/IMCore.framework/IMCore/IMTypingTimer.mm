@interface IMTypingTimer
- (BOOL)isValid;
- (IMTypingTimer)initWithHandle:(id)handle beginDate:(id)date timeoutInterval:(double)interval delegate:(id)delegate;
- (IMTypingTimerDelegate)delegate;
- (void)invalidate;
- (void)timerCallback;
- (void)triggerTimeout;
@end

@implementation IMTypingTimer

- (IMTypingTimer)initWithHandle:(id)handle beginDate:(id)date timeoutInterval:(double)interval delegate:(id)delegate
{
  handleCopy = handle;
  dateCopy = date;
  delegateCopy = delegate;
  v34.receiver = self;
  v34.super_class = IMTypingTimer;
  v14 = [(IMTypingTimer *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_handle, handle);
    objc_storeStrong(&v15->_beginDate, date);
    v15->_timeoutInterval = interval;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    if (objc_msgSend_shouldAdjustTimeoutIntervalForBeginDate(IMTypingTimer, v16, v17) && v15->_beginDate)
    {
      v20 = objc_msgSend_date(MEMORY[0x1E695DF00], v18, v19);
      v23 = v20;
      if (v20)
      {
        objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22);
        v25 = v24;
        objc_msgSend_timeIntervalSinceReferenceDate(v15->_beginDate, v26, v27);
        interval = interval - (v25 - v28);
      }
    }

    if (interval <= 0.0)
    {
      objc_msgSend_triggerTimeout(v15, v18, v19);
    }

    else
    {
      v29 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], v18, v15, sel_timerCallback, 0, 0, interval);
      timer = v15->_timer;
      v15->_timer = v29;

      objc_msgSend_setTolerance_(v15->_timer, v31, v32, 5.0);
    }
  }

  return v15;
}

- (void)timerCallback
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isValid(self, a2, v2))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = objc_msgSend_handle(self, v7, v8);
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Timer callback was called for valid typing timeout with handle %@", &v13, 0xCu);
      }
    }

    objc_msgSend_invalidate(self, v4, v5);
    objc_msgSend_triggerTimeout(self, v10, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)triggerTimeout
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_handle(self, v6, v7);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Triggering typing timeout for handle %@", &v12, 0xCu);
    }
  }

  v9 = objc_msgSend_delegate(self, v3, v4);
  objc_msgSend_typingTimeoutDidTriggerWithTimer_(v9, v10, self);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v4 = objc_msgSend_timer(self, a2, v2);
  objc_msgSend_invalidate(v4, v5, v6);

  MEMORY[0x1EEE66B58](self, sel_setTimer_, 0);
}

- (BOOL)isValid
{
  v3 = objc_msgSend_timer(self, a2, v2);
  isValid = objc_msgSend_isValid(v3, v4, v5);

  return isValid;
}

- (IMTypingTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end