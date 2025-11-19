@interface IMSuggestionsService
+ (id)sharedInstance;
- (IMSuggestionsService)init;
- (id)_contactForSGContactMatch:(id)a3;
- (id)fetchCNContactForSuggestedHandle:(id)a3;
- (id)personNameComponentsForHandle:(id)a3;
- (id)suggestedNameFromCache:(id)a3 wasFound:(BOOL *)a4;
- (void)_startRequestForDisplayName:(id)a3 messageUID:(id)a4 queue:(id)a5;
- (void)_startRequestForDisplayNameCallbackWithSuggestedName:(id)a3 displayName:(id)a4 queue:(id)a5;
- (void)dealloc;
- (void)fetchSuggestedRealNameForDisplayName:(id)a3 messageUID:(id)a4 queue:(id)a5 block:(id)a6;
- (void)fetchUncachedSuggestedRealNameForDisplayName:(id)a3 prependMaybe:(BOOL)a4 queue:(id)a5 block:(id)a6;
- (void)scheduleFetchIfNecessaryForHandle:(id)a3;
- (void)startUsingLocalLookupsWithTable:(id)a3;
- (void)stopUsingLocalLookups;
@end

@implementation IMSuggestionsService

+ (id)sharedInstance
{
  if (qword_1ED767880 != -1)
  {
    sub_1A825ACE4();
  }

  v3 = qword_1EB2E9FB0;

  return v3;
}

- (IMSuggestionsService)init
{
  v45.receiver = self;
  v45.super_class = IMSuggestionsService;
  v4 = [(IMSuggestionsService *)&v45 init];
  if (v4)
  {
    if (qword_1EB2EA020 != -1)
    {
      sub_1A8241E0C();
    }

    v5 = qword_1EB2EA018;
    if (!qword_1EB2EA018)
    {
      v46 = xmmword_1E7810690;
      v47 = *off_1E78106A0;
      v48 = 32;
      v6 = MEMORY[0x1E696AEC0];
      v7 = IMFileLocationTrimFileName();
      v8 = v48;
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F1B76F98);
      v12 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", @"suggestionsServiceClass", "NSObject<SGSuggestionsServiceContactsProtocol> *_IMDSuggestionsNewConnection(void)", v7, v8, v10);

      v13 = IMGetAssertionFailureHandler();
      if (v13)
      {
        v13(v12);
      }

      else
      {
        v16 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DF284(v12, v16);
        }
      }

      v5 = qword_1EB2EA018;
    }

    v17 = objc_msgSend_serviceForContacts(v5, v2, v3);
    objc_msgSend_setQueuesRequestsIfBusy_(v17, v18, 1);
    connection = v4->_connection;
    v4->_connection = v17;

    v20 = objc_opt_new();
    cache = v4->_cache;
    v4->_cache = v20;

    v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = v24;
    v28 = objc_msgSend_UTF8String(v25, v26, v27);
    v29 = dispatch_queue_create(v28, v22);
    queue = v4->_queue;
    v4->_queue = v29;

    v31 = objc_opt_new();
    pending = v4->_pending;
    v4->_pending = v31;

    v33 = objc_alloc(MEMORY[0x1E696AC70]);
    v35 = objc_msgSend_initWithOptions_capacity_(v33, v34, 517, 0);
    handlesToRetry = v4->_handlesToRetry;
    v4->_handlesToRetry = v35;

    v37 = v4->_connection;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1A8286FB8;
    v43[3] = &unk_1E7810560;
    v38 = v4;
    v44 = v38;
    v40 = objc_msgSend_registerContactsChangeObserver_(v37, v39, v43);
    newContactNotificationToken = v38->_newContactNotificationToken;
    v38->_newContactNotificationToken = v40;
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_deregisterContactsChangeObserverWithToken_(self->_connection, a2, self->_newContactNotificationToken);
  v3.receiver = self;
  v3.super_class = IMSuggestionsService;
  [(IMSuggestionsService *)&v3 dealloc];
}

- (void)startUsingLocalLookupsWithTable:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A828727C;
  v7[3] = &unk_1E7810140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)stopUsingLocalLookups
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8287340;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)suggestedNameFromCache:(id)a3 wasFound:(BOOL *)a4
{
  v7 = a3;
  if (v7)
  {
    v10 = objc_msgSend_objectForKey_(self->_cache, v6, v7);
    v11 = v10 != 0;
    if (!v10 || (objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9), v12 = objc_claimAutoreleasedReturnValue(), v12, v10 == v12))
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    if (a4)
    {
LABEL_7:
      *a4 = v11;
    }
  }

  return v13;
}

- (void)fetchUncachedSuggestedRealNameForDisplayName:(id)a3 prependMaybe:(BOOL)a4 queue:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a5;
  v13 = a6;
  if (v13 && self->_connection)
  {
    if (v10 && ((objc_msgSend__maybePhoneNumber_(self, v12, v10) & 1) != 0 || (objc_msgSend__maybeEmailAddress_(self, v14, v10) & 1) != 0 || (objc_msgSend_isBusiness_(self, v15, v10) & 1) != 0))
    {
      queue = self->_queue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A8287664;
      v19[3] = &unk_1E78105B0;
      v19[4] = self;
      v20 = v10;
      v23 = a4;
      v21 = v11;
      v22 = v13;
      dispatch_async(queue, v19);

      v17 = v20;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8287650;
      block[3] = &unk_1E780FE90;
      v25 = v13;
      dispatch_async(v11, block);
      v17 = v25;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Unexpectedly nil parameter in fetchSuggestedRealNameForDisplayName", buf, 2u);
    }
  }
}

- (void)fetchSuggestedRealNameForDisplayName:(id)a3 messageUID:(id)a4 queue:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = a6;
  if (v14 && self->_connection)
  {
    if (v10 && ((objc_msgSend__maybePhoneNumber_(self, v13, v10) & 1) != 0 || (objc_msgSend__maybeEmailAddress_(self, v15, v10) & 1) != 0 || (objc_msgSend_isBusiness_(self, v15, v10) & 1) != 0))
    {
      v16 = objc_msgSend_objectForKey_(self->_cache, v15, v10);
      if (v16)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A8287C54;
        block[3] = &unk_1E7810230;
        v26 = v14;
        v25 = v16;
        dispatch_async(v12, block);

        v17 = v26;
      }

      else
      {
        queue = self->_queue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1A8287CD4;
        v19[3] = &unk_1E78105D8;
        v19[4] = self;
        v20 = v10;
        v21 = v12;
        v23 = v14;
        v22 = v11;
        dispatch_async(queue, v19);

        v17 = v20;
      }

LABEL_15:
      goto LABEL_16;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A8287C40;
    v27[3] = &unk_1E780FE90;
    v28 = v14;
    dispatch_async(v12, v27);
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Unexpectedly nil parameter in fetchSuggestedRealNameForDisplayName", buf, 2u);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_startRequestForDisplayName:(id)a3 messageUID:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    connection = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8288028;
    v14[3] = &unk_1E7810600;
    v15 = v8;
    v16 = self;
    v17 = v10;
    objc_msgSend_namesForDetail_limitTo_prependMaybe_withCompletion_(connection, v12, v15, 1, 1, v14);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "displayName paramater was unexpectedly nil in _startRequestForDisplayName", buf, 2u);
    }
  }
}

- (void)_startRequestForDisplayNameCallbackWithSuggestedName:(id)a3 displayName:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82882BC;
  v15[3] = &unk_1E78101E0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)scheduleFetchIfNecessaryForHandle:(id)a3
{
  objc_initWeak(&location, a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8288574;
  block[3] = &unk_1E7810450;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_contactForSGContactMatch:(id)a3
{
  v3 = objc_msgSend_sortedArrayUsingComparator_(a3, a2, &unk_1F1B6DDE0);
  v6 = objc_msgSend_firstObject(v3, v4, v5);
  v7 = MEMORY[0x1E695CD58];
  v10 = objc_msgSend_contact(v6, v8, v9);
  v12 = objc_msgSend_contactFromSuggestion_(v7, v11, v10);

  return v12;
}

- (id)fetchCNContactForSuggestedHandle:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (!v4 || !objc_msgSend_length(v4, v5, v6))
  {
    v19 = 0;
    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Fetching a suggested CNContact for displayName %@", buf, 0xCu);
    }
  }

  v10 = objc_msgSend__maybePhoneNumber_(self, v8, v7);
  v12 = objc_msgSend__maybeEmailAddress_(self, v11, v7);
  if (v10)
  {
    v15 = objc_msgSend_serviceConnection(self, v13, v14);
    v28 = 0;
    v17 = objc_msgSend_contactMatchesByPhoneNumber_error_(v15, v16, v7, &v28);
    v18 = &v28;
  }

  else
  {
    if (!v12)
    {
      v21 = 0;
      v17 = 0;
      goto LABEL_14;
    }

    v15 = objc_msgSend_serviceConnection(self, v13, v14);
    v27 = 0;
    v17 = objc_msgSend_contactMatchesByEmailAddress_error_(v15, v20, v7, &v27);
    v18 = &v27;
  }

  v21 = *v18;

LABEL_14:
  if (objc_msgSend_count(v17, v13, v14))
  {
    v23 = objc_msgSend__contactForSGContactMatch_(self, v22, v17);
  }

  else
  {
    v23 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Found suggested contact %@ with error", buf, 0xCu);
    }
  }

  v19 = v23;

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)personNameComponentsForHandle:(id)a3
{
  v4 = objc_msgSend_displayID(a3, a2, a3);
  v6 = objc_msgSend_fetchCNContactForSuggestedHandle_(self, v5, v4);

  v8 = objc_msgSend_firstNameForCNContact_(MEMORY[0x1E69A7FD0], v7, v6);
  v10 = objc_msgSend_lastNameForCNContact_(MEMORY[0x1E69A7FD0], v9, v6);
  v11 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v13 = v11;
  if (v8)
  {
    objc_msgSend_setGivenName_(v11, v12, v8);
  }

  if (v10)
  {
    objc_msgSend_setFamilyName_(v13, v12, v10);
  }

  return v13;
}

@end