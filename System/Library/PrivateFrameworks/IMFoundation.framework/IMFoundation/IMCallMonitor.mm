@interface IMCallMonitor
+ (id)sharedInstance;
- (BOOL)isOnCall;
- (BOOL)isOnTelephonyCall;
- (IMCallMonitor)init;
- (void)callObserver:(id)a3 callChanged:(id)a4;
@end

@implementation IMCallMonitor

- (BOOL)isOnCall
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_calls(self->_callCenter, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_hasEnded(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)sharedInstance
{
  if (qword_1ED517648 != -1)
  {
    sub_1959D6074();
  }

  v3 = qword_1ED517600;

  return v3;
}

- (IMCallMonitor)init
{
  v13.receiver = self;
  v13.super_class = IMCallMonitor;
  v2 = [(IMCallMonitor *)&v13 init];
  v3 = v2;
  if (v2)
  {
    lastCallDate = v2->_lastCallDate;
    v2->_lastCallDate = 0;

    v3->_wasOnCall = 0;
    callCenter = v3->_callCenter;
    v3->_callCenter = 0;

    v6 = IMWeakLinkClass();
    if (v6)
    {
      v7 = objc_alloc_init(v6);
      v8 = v3->_callCenter;
      v3->_callCenter = v7;

      objc_msgSend_setDelegate_queue_(v3->_callCenter, v9, v3, MEMORY[0x1E69E96A0]);
      v3->_wasOnCall = objc_msgSend_isOnCall(v3, v10, v11);
    }
  }

  return v3;
}

- (BOOL)isOnTelephonyCall
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = objc_msgSend_calls(self->_callCenter, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ((objc_msgSend_hasEnded(v10, v5, v6) & 1) == 0)
        {
          v11 = objc_msgSend_providerIdentifier(v10, v5, v6);
          isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"com.apple.coretelephony");

          if (isEqualToString)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v16, v20, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v5 = objc_msgSend_isOnCall(self, a2, a3, a4);
  if (self->_wasOnCall != v5)
  {
    self->_wasOnCall = v5;
    if ((v5 & 1) == 0)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
      lastCallDate = self->_lastCallDate;
      self->_lastCallDate = v8;
    }

    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v11, v10, @"__kIMCallMonitorCallStatusChanged", 0, 0);
  }
}

@end