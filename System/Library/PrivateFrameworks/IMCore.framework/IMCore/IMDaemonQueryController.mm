@interface IMDaemonQueryController
- (IMDaemonController)daemonController;
- (IMDaemonQueryController)initWithDaemonController:(id)controller;
- (void)_daemonDisconnected:(id)disconnected;
- (void)_validateOutstandingQueries;
- (void)performQueryWithKey:(id)key expectsSynchronousResult:(BOOL)result block:(id)block completionHandler:(id)handler;
@end

@implementation IMDaemonQueryController

- (void)_validateOutstandingQueries
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_queries(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = objc_msgSend_queries(self, v11, v12);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Outstanding queries: %@", &buf, 0xCu);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = sub_1A8259B80;
    v41 = sub_1A825AEEC;
    v42 = 0;
    v14 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
    v17 = objc_msgSend_queries(self, v15, v16);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1A8258B70;
    v34[3] = &unk_1E7811F50;
    v18 = v14;
    v35 = v18;
    p_buf = &buf;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v17, v19, v34);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = *(*(&buf + 1) + 40);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v37, 16);
    if (v23)
    {
      v24 = *v31;
      do
      {
        v25 = 0;
        do
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v30 + 1) + 8 * v25);
          v27 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v22, @"com.apple.Messages.IMDaemonQueryErrorDomain", 3, 0, v30);
          objc_msgSend_failQuery_error_(self, v28, v26, v27);

          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v30, v37, 16);
      }

      while (v23);
    }

    _Block_object_dispose(&buf, 8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (IMDaemonQueryController)initWithDaemonController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = IMDaemonQueryController;
  v5 = [(IMDaemonQueryController *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queries = v5->_queries;
    v5->_queries = v6;

    objc_storeWeak(&v5->_daemonController, controllerCopy);
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend_addObserver_selector_name_object_(v10, v11, v5, sel__daemonDisconnected_, @"__kIMDaemonDidDisconnectNotification", 0);
  }

  return v5;
}

- (void)performQueryWithKey:(id)key expectsSynchronousResult:(BOOL)result block:(id)block completionHandler:(id)handler
{
  resultCopy = result;
  v53 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  blockCopy = block;
  handlerCopy = handler;
  objc_msgSend__validateOutstandingQueries(self, v13, v14);
  if (blockCopy)
  {
    v17 = objc_msgSend_length(keyCopy, v15, v16);
    v18 = @"anonymous";
    if (v17)
    {
      v18 = keyCopy;
    }

    v19 = v18;
    v20 = MEMORY[0x1E696AEC0];
    v23 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v21, v22);
    v25 = objc_msgSend_stringWithFormat_(v20, v24, @"%@-%@", v19, v23);

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = @"NO";
        if (resultCopy)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *buf = 138412802;
        v48 = v25;
        v50 = v28;
        v49 = 2112;
        if (handlerCopy)
        {
          v27 = @"YES";
        }

        v51 = 2112;
        v52 = v27;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Initiating query: %@ expectsSynchronousResult: %@ hasCompletionHandler: %@", buf, 0x20u);
      }
    }

    v29 = [IMDaemonQuery alloc];
    v31 = objc_msgSend_initWithID_key_completionHandler_(v29, v30, v25, v19, handlerCopy);
    v34 = objc_msgSend_queries(self, v32, v33);
    objc_msgSend_setObject_forKey_(v34, v35, v31, v25);

    blockCopy[2](blockCopy, v25);
    if (resultCopy)
    {
      v38 = objc_msgSend_queries(self, v36, v37);
      v40 = objc_msgSend_objectForKeyedSubscript_(v38, v39, v25);
      v41 = v40 == 0;

      if (!v41)
      {
        v43 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v42, @"com.apple.Messages.IMDaemonQueryErrorDomain", 2, 0);
        objc_msgSend_failQuery_error_(self, v44, v25, v43);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v48 = "[IMDaemonQueryController performQueryWithKey:expectsSynchronousResult:block:completionHandler:]";
      _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "%s: No execute block for query!", buf, 0xCu);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)_daemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Daemon disconnected, failing all queries", buf, 2u);
    }
  }

  v8 = objc_msgSend_queries(self, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82FA9C4;
  v10[3] = &unk_1E7811F28;
  v10[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v9, v10);
}

- (IMDaemonController)daemonController
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonController);

  return WeakRetained;
}

@end