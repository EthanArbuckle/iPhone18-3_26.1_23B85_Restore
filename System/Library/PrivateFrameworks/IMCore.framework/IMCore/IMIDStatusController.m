@interface IMIDStatusController
+ (id)sharedInstance;
- (IMIDStatusController)init;
- (int64_t)__statusForID:(id)a3 onService:(id)a4 isCanonicalized:(BOOL)a5;
- (int64_t)_idStatusForID:(id)a3 onAccount:(id)a4;
- (int64_t)statusForID:(id)a3 onService:(id)a4;
- (void)_processIDStatusResponseForURI:(id)a3 resultStatus:(int64_t)a4 forService:(id)a5;
- (void)_requestStatusForID:(id)a3 onService:(id)a4 onAccount:(id)a5;
@end

@implementation IMIDStatusController

+ (id)sharedInstance
{
  if (qword_1ED767948 != -1)
  {
    sub_1A84E21D8();
  }

  v3 = qword_1ED7678E8;

  return v3;
}

- (IMIDStatusController)init
{
  v9.receiver = self;
  v9.super_class = IMIDStatusController;
  v2 = [(IMIDStatusController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_servicesRegistered)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      servicesRegistered = v3->_servicesRegistered;
      v3->_servicesRegistered = v4;
    }

    v6 = objc_alloc_init(MEMORY[0x1E696AE68]);
    servicesLock = v3->_servicesLock;
    v3->_servicesLock = v6;
  }

  return v3;
}

- (void)_processIDStatusResponseForURI:(id)a3 resultStatus:(int64_t)a4 forService:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83664C8;
  block[3] = &unk_1E7812C40;
  v12 = v8;
  v13 = v7;
  v14 = a4;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (int64_t)__statusForID:(id)a3 onService:(id)a4 isCanonicalized:(BOOL)a5
{
  v5 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_length(v8, v10, v11) >= 2 && objc_msgSend_characterAtIndex_(v8, v12, 1) == 58)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
    if (v8 && v9)
    {
      if (v5)
      {
        v15 = objc_msgSend__bestGuessURIFromCanicalizedID(v8, v12, v13);
      }

      else
      {
        if (objc_msgSend__appearsToBePhoneNumber(v8, v12, v13) && (objc_msgSend_hasPrefix_(v8, v16, @"+") & 1) == 0)
        {
          v18 = IMCleanupPhoneNumber();

          v8 = v18;
        }

        v15 = objc_msgSend__bestGuessURI(v8, v16, v17);
      }

      v19 = v15;
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          *&buf[22] = 2112;
          v49 = v19;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEBUG, "ID %@  onService: %@   (URI: %@)", buf, 0x20u);
        }
      }

      v23 = sub_1A8366D24(v9, v20, v21);
      objc_msgSend_lock(self->_servicesLock, v24, v25);
      if ((objc_msgSend_containsObject_(self->_servicesRegistered, v26, v23) & 1) == 0)
      {
        objc_msgSend_addObject_(self->_servicesRegistered, v27, v23);
        v31 = objc_msgSend_sharedInstance(MEMORY[0x1E69A4878], v29, v30);
        objc_msgSend_addDelegate_forService_listenerID_queue_(v31, v32, self, v23, @"IMIDStatusControllerListenerID", MEMORY[0x1E69E96A0]);
      }

      objc_msgSend_unlock(self->_servicesLock, v27, v28);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v49 = 0;
      if (qword_1EB2EA410 != -1)
      {
        sub_1A84E21EC();
      }

      pthread_mutex_lock(&stru_1EB2E5670);
      v35 = objc_msgSend_sharedInstance(MEMORY[0x1E69A4878], v33, v34);
      hasCacheForService = objc_msgSend__hasCacheForService_(v35, v36, v23);

      v39 = MEMORY[0x1E69A80B0];
      if (hasCacheForService)
      {
        v40 = objc_msgSend__currentCachedIDStatusForDestination_service_listenerID_(MEMORY[0x1E69A80B0], v38, v19, v23, @"IMIDStatusControllerListenerID");
        *(*&buf[8] + 24) = v40;
      }

      else
      {
        v41 = dispatch_get_global_queue(0, 0);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = sub_1A8366DA8;
        v47[3] = &unk_1E7813708;
        v47[4] = buf;
        objc_msgSend_currentIDStatusForDestination_service_listenerID_queue_completionBlock_(v39, v42, v19, v23, @"IMIDStatusControllerListenerID", v41, v47);

        v43 = qword_1EB2EA408;
        v44 = dispatch_time(0, 5000000);
        dispatch_semaphore_wait(v43, v44);
      }

      pthread_mutex_unlock(&stru_1EB2E5670);
      v14 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int64_t)_idStatusForID:(id)a3 onAccount:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = IMCleanupPhoneNumber();
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "ID %@  onAccount: %@", &v19, 0x16u);
    }
  }

  v10 = 0;
  if (v5 && v6)
  {
    v11 = objc_msgSend_service(v5, v7, v8);
    v10 = objc_msgSend__idStatusForID_onService_(self, v12, v6, v11);

    v14 = objc_msgSend_existingIMHandleWithID_(v5, v13, v6);
    objc_msgSend__setIDStatus_(v14, v15, v10);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = v6;
        v21 = 2048;
        v22 = v10;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Status for %@ is %ld", &v19, 0x16u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_requestStatusForID:(id)a3 onService:(id)a4 onAccount:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v46 = v8;
      v47 = 2112;
      v48 = v9;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEBUG, "ID %@  onService: %@  onAccount: %@", buf, 0x20u);
    }
  }

  if (v8)
  {
    if (v9 | v10)
    {
      if (!v10)
      {
        v14 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
        v10 = objc_msgSend__bestOperationalAccountForSendingForService_(v14, v15, v9);
      }

      if (!v9)
      {
        v9 = objc_msgSend_service(v10, v11, v12);
      }

      if (objc_msgSend__isUsableForSending(v10, v11, v12) && objc_msgSend_supportsIDStatusLookup(v9, v16, v17))
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v46 = v8;
            v47 = 2112;
            v48 = v9;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Sending request to daemon for ID %@ onService %@", buf, 0x16u);
          }
        }

        if (objc_msgSend__appearsToBePhoneNumber(v8, v18, v19))
        {
          v21 = MEMORY[0x1AC56B710](v8, 0, 1);
        }

        else
        {
          v21 = MEMORY[0x1AC56B6F0](v8);
        }

        v25 = v21;
        v26 = sub_1A8366D24(v9, v22, v23);
        objc_msgSend_lock(self->_servicesLock, v27, v28);
        if ((objc_msgSend_containsObject_(self->_servicesRegistered, v29, v26) & 1) == 0)
        {
          objc_msgSend_addObject_(self->_servicesRegistered, v30, v26);
          v34 = objc_msgSend_sharedInstance(MEMORY[0x1E69A4878], v32, v33);
          objc_msgSend_addDelegate_forService_listenerID_queue_(v34, v35, self, v26, @"IMIDStatusControllerListenerID", MEMORY[0x1E69E96A0]);
        }

        objc_msgSend_unlock(self->_servicesLock, v30, v31);
        v36 = MEMORY[0x1E69A80B0];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = sub_1A836738C;
        v41[3] = &unk_1E7813730;
        v42 = v25;
        v43 = self;
        v44 = v26;
        v37 = v26;
        v38 = v25;
        objc_msgSend_refreshIDStatusForDestination_service_listenerID_queue_completionBlock_(v36, v39, v38, v37, @"IMIDStatusControllerListenerID", MEMORY[0x1E69E96A0], v41);
      }

      else if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v46 = v8;
          v47 = 2112;
          v48 = v9;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Cannot issue ID status for ID: %@   on service: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (int64_t)statusForID:(id)a3 onService:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "ID %@  onService: %@", &v13, 0x16u);
    }
  }

  v10 = objc_msgSend__idStatusForID_onService_(self, v8, v6, v7);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end