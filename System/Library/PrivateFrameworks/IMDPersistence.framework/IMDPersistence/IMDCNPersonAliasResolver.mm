@interface IMDCNPersonAliasResolver
+ (IMDCNPersonAliasResolver)sharedResolver;
- (BOOL)isCNContactFavorited:(id)a3;
- (BOOL)isFavoritedContact:(id)a3;
- (CNContactStore)acceptedContactStore;
- (CNContactStore)contactStore;
- (IMDCNPersonAliasResolver)init;
- (id)_batchFetchContactRecordIDForAliases:(id)a3;
- (id)_fetchAliasToCNIDMapForAliases:(id)a3;
- (id)_fetchContactIdentifierForAlias:(id)a3;
- (id)_predicateForAlias:(id)a3;
- (id)_predicateForPhoneNumber:(id)a3;
- (id)_preferCuratedContactFromFetchResults:(id)a3;
- (id)_updateAcceptedContactsInAliasToCNIDMap:(id)a3;
- (id)_updateAliasToCNIDMap:(id)a3 withHistoryToken:(id)a4;
- (void)CNRecordIDForAliases:(id)a3 completionHandler:(id)a4;
@end

@implementation IMDCNPersonAliasResolver

- (IMDCNPersonAliasResolver)init
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7.receiver = self;
    v7.super_class = IMDCNPersonAliasResolver;
    v3 = [(IMDCNPersonAliasResolver *)&v7 init];
    if (v3)
    {
      sub_1B7C0BDD8();
    }

    self = v3;
    v4 = self;
  }

  else
  {
    if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Error! being called in a process that is not in IMDPersistenceAgent!", buf, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (IMDCNPersonAliasResolver)sharedResolver
{
  if (qword_1EBA53A38 != -1)
  {
    sub_1B7CFDAEC();
  }

  v3 = qword_1EBA53A30;

  return v3;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      sub_1B7C0BDD8();
      v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
      objc_msgSend_setUseInProcessMapperExclusively_(v4, v5, 1);
      v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
      isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v8, v9, v10);

      if (isIntroductionsEnabled)
      {
        objc_msgSend_setIncludeAcceptedIntroductions_(v4, v12, 1);
      }

      v13 = objc_alloc(MEMORY[0x1B8CAFAC0](@"CNContactStore", @"Contacts"));
      v15 = objc_msgSend_initWithConfiguration_(v13, v14, v4);
      v16 = self->_contactStore;
      self->_contactStore = v15;

      v19 = objc_msgSend_data(MEMORY[0x1E695DEF0], v17, v18);
      currentHistoryToken = self->_currentHistoryToken;
      self->_currentHistoryToken = v19;

      contactsEventhandler = self->_contactsEventhandler;
      self->_contactsEventhandler = 0;
    }

    contactStore = self->_contactStore;
    if (!contactStore)
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDB00();
      }

      contactStore = self->_contactStore;
    }
  }

  return contactStore;
}

- (CNContactStore)acceptedContactStore
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v4, v5, v6);

  if (isIntroductionsEnabled && !self->_acceptedContactStore)
  {
    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      sub_1B7C0BDD8();
      v8 = objc_alloc_init(MEMORY[0x1E695CE28]);
      objc_msgSend_setUseInProcessMapperExclusively_(v8, v9, 1);
      objc_msgSend_setIncludeLocalContacts_(v8, v10, 0);
      objc_msgSend_setIncludeAcceptedIntroductions_(v8, v11, 1);
      v12 = objc_alloc(MEMORY[0x1B8CAFAC0](@"CNContactStore", @"Contacts"));
      v14 = objc_msgSend_initWithConfiguration_(v12, v13, v8);
      acceptedContactStore = self->_acceptedContactStore;
      self->_acceptedContactStore = v14;
    }

    if (!self->_acceptedContactStore)
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDB40();
      }
    }
  }

  v17 = self->_acceptedContactStore;

  return v17;
}

- (id)_predicateForPhoneNumber:(id)a3
{
  v3 = qword_1EDBE5CC0;
  v4 = objc_msgSend_phoneNumberWithStringValue_(qword_1EDBE5C98, a2, a3);
  v6 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(v3, v5, v4);

  return v6;
}

- (id)_predicateForAlias:(id)a3
{
  v4 = a3;
  if (objc_msgSend__appearsToBeEmail(v4, v5, v6))
  {
    objc_msgSend__predicateForEmailAddress_(self, v7, v4);
  }

  else
  {
    objc_msgSend__predicateForPhoneNumber_(self, v7, v4);
  }
  v8 = ;

  return v8;
}

- (id)_fetchContactIdentifierForAlias:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend__predicateForAlias_(self, v7, v4);
    v9 = IMAdditionalContactsLoggingEnabled();
    if (v8)
    {
      if (v9 && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v42 = v4;
          v43 = 2112;
          v44 = v8;
          _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Requesting a CNContact from Contact Store for Alias %@ and Predicate %@", buf, 0x16u);
        }
      }

      v13 = objc_msgSend_contactStore(self, v10, v11);
      v40[0] = qword_1EDBE5C68;
      v40[1] = qword_1EDBE5C58;
      v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v40, 2);
      v39 = 0;
      v17 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v13, v16, v8, v15, &v39);
      v18 = v39;

      if (v18)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v24 = objc_msgSend_description(v18, v22, v23);
            *buf = 138412546;
            v42 = v4;
            v43 = 2112;
            v44 = v24;
            _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Error getting contact from Contact Store for alias %@ error %@", buf, 0x16u);
          }
        }

        v17 = 0;
      }

      if (objc_msgSend_count(v17, v19, v20))
      {
        v26 = objc_msgSend__preferCuratedContactFromFetchResults_(self, v25, v17);
        if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v32 = objc_msgSend_identifier(v26, v30, v31);
            *buf = 138412546;
            v42 = v32;
            v43 = 2112;
            v44 = v4;
            _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: CNContact Identifier %@ for alias %@", buf, 0x16u);
          }
        }

        v33 = objc_msgSend_identifier(v26, v27, v28);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v4;
            _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: No contact for alias %@", buf, 0xCu);
          }
        }

        v33 = 0;
      }
    }

    else
    {
      if (v9 && IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = v4;
          _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Could not get predicate for alias %@", buf, 0xCu);
        }
      }

      v33 = 0;
    }
  }

  else
  {
    if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Passed in nil email _fetchCNContactForEmail", buf, 2u);
      }
    }

    v33 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_preferCuratedContactFromFetchResults:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_firstObject(v3, v6, v7);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v3;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
    if (v11)
    {
      v12 = v11;
      v8 = 0;
      v13 = *v22;
LABEL_5:
      v14 = 0;
      v15 = v8;
      while (1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v8 = *(*(&v21 + 1) + 8 * v14);

        if (!objc_msgSend_isCoreRecentsAccepted(v8, v16, v17, v21))
        {
          break;
        }

        ++v14;
        v15 = v8;
        if (v12 == v14)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v21, v25, 16);
          if (v12)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_batchFetchContactRecordIDForAliases:(id)a3
{
  v84[2] = *MEMORY[0x1E69E9840];
  v64 = a3;
  if (objc_msgSend_count(v64, v3, v4))
  {
    v5 = [qword_1EDBE5CB8 alloc];
    v84[0] = qword_1EDBE5C68;
    v84[1] = qword_1EDBE5C58;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v84, 2);
    v63 = objc_msgSend_initWithKeysToFetch_(v5, v8, v7);

    v59 = objc_msgSend_predicateForContactsMatchingHandleStrings_(qword_1EDBE5CC0, v9, v64);
    objc_msgSend_setPredicate_(v63, v10, v59);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = objc_msgSend_count(v64, v12, v13);
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Dispatching a contacts batch query for %lu aliases.", &buf, 0xCu);
      }
    }

    v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = objc_alloc_init(MEMORY[0x1E69A6170]);
    objc_msgSend_startTimingForKey_(v14, v15, @"batchFetchForAliases");
    v60 = v14;
    v18 = objc_msgSend_contactStore(self, v16, v17);
    v75 = 0;
    v62 = objc_msgSend_executeFetchRequest_error_(v18, v19, v63, &v75);
    v58 = v75;

    v61 = objc_msgSend_value(v62, v20, v21);
    objc_msgSend_stopTimingForKey_(v60, v22, @"batchFetchForAliases");
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        objc_msgSend_totalTimeForKey_(v60, v26, @"batchFetchForAliases");
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Contacts batch fetch from Contact Store completed. Took %f seconds", &buf, 0xCu);
      }
    }

    if (v61)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v80 = 0x3032000000;
      v81 = sub_1B7AE1B60;
      v82 = sub_1B7AE25C4;
      v83 = objc_msgSend_currentHistoryToken(v62, v23, v24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1B7C0D23C;
      block[3] = &unk_1E7CBC428;
      v28 = v61;
      v72 = v28;
      v29 = v64;
      v73 = v29;
      p_buf = &buf;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v30 = v29;
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v67, v78, 16);
      if (v33)
      {
        v34 = *v68;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v68 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v67 + 1) + 8 * i);
            v37 = objc_msgSend_objectForKey_(v28, v32, v36);
            if (objc_msgSend_count(v37, v38, v39))
            {
              v41 = objc_msgSend__preferCuratedContactFromFetchResults_(self, v40, v37);
              v44 = objc_msgSend_sharedInstance(IMDContactCache, v42, v43);
              objc_msgSend_cacheContact_forKey_(v44, v45, v41, v36);

              v48 = objc_msgSend_identifier(v41, v46, v47);
              objc_msgSend_setObject_forKey_(v66, v49, v48, v36);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  *v76 = 138412290;
                  v77 = v36;
                  _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: No contact for alias %@", v76, 0xCu);
                }
              }

              objc_msgSend_setObject_forKey_(v66, v50, @"__kIMDCNPersonNotFound", v36);
            }
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v67, v78, 16);
        }

        while (v33);
      }

      objc_msgSend_setCurrentHistoryToken_(self, v52, *(*(&buf + 1) + 40));
      _Block_object_dispose(&buf, 8);
    }

    else if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v58;
        _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: No results obtained from the Contacts batch Fetchrequest. Error: %@", &buf, 0xCu);
      }
    }

    v54 = v66;
  }

  else
  {
    if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Passed in empty set of aliases", &buf, 2u);
      }
    }

    v54 = 0;
  }

  v56 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)_fetchAliasToCNIDMapForAliases:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v5, v6, @"_fetchAliasToCNIDMapForAliases");
  v8 = objc_msgSend__batchFetchContactRecordIDForAliases_(self, v7, v4);
  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: _fetchAliasToCNIDMapForAliases returning aliasIDMap", &v17, 2u);
      }
    }

    objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v10, v8);
  }

  objc_msgSend_stopTimingForKey_(v5, v9, @"_fetchAliasToCNIDMapForAliases");
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_totalTimeForKey_(v5, v13, @"_fetchAliasToCNIDMapForAliases");
      v17 = 134217984;
      v18 = v14;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Generating aliasToIDMap completed. Took %f seconds", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_updateAliasToCNIDMap:(id)a3 withHistoryToken:(id)a4
{
  v81[2] = *MEMORY[0x1E69E9840];
  v72 = a3;
  v6 = a4;
  v7 = objc_alloc_init(qword_1EDBE5CC8);
  v70 = v6;
  objc_msgSend_setStartingToken_(v7, v8, v6);
  v81[0] = qword_1EDBE5C68;
  v81[1] = qword_1EDBE5C58;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v81, 2);
  objc_msgSend_setAdditionalContactKeyDescriptors_(v7, v11, v10);

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Updating aliasToCNIDMap using Contact Change History events", buf, 2u);
    }
  }

  if (IMAdditionalContactsLoggingEnabled())
  {
    objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v13, v72);
  }

  v15 = objc_msgSend_contactStore(self, v13, v14);
  v77 = 0;
  v17 = objc_msgSend_executeFetchRequest_error_(v15, v16, v7, &v77);
  v71 = v77;

  v18 = IMOSLoggingEnabled();
  if (v17)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = MEMORY[0x1E696AD98];
        v23 = objc_msgSend_value(v17, v20, v21);
        v26 = objc_msgSend_count(v23, v24, v25);
        v28 = objc_msgSend_numberWithUnsignedInteger_(v22, v27, v26);
        *buf = 138412290;
        v80 = v28;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Updating aliasToCNIDMap using %@ Contact Change History events", buf, 0xCu);
      }
    }

    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      v31 = objc_alloc(MEMORY[0x1E69A8000]);
      v34 = objc_msgSend_mutableCopy(v72, v32, v33);
      v36 = objc_msgSend_initWithAliasToCNIDMap_(v31, v35, v34);
      contactsEventhandler = self->_contactsEventhandler;
      self->_contactsEventhandler = v36;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v38 = objc_msgSend_value(v17, v29, v30);
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v73, v78, 16);
    if (v40)
    {
      v41 = *v74;
      while (2)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v74 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v73 + 1) + 8 * i);
          v44 = objc_autoreleasePoolPush();
          objc_msgSend_acceptEventVisitor_(v43, v45, self->_contactsEventhandler);
          if (objc_msgSend_receivedDropEverythingEvent(self->_contactsEventhandler, v46, v47))
          {
            if (IMOSLoggingEnabled())
            {
              v49 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Skipping Contact change history events after the Drop Everything Event", buf, 2u);
              }
            }

            objc_autoreleasePoolPop(v44);
            goto LABEL_28;
          }

          objc_autoreleasePoolPop(v44);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v48, &v73, v78, 16);
        if (v40)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v52 = objc_msgSend_currentHistoryToken(v17, v50, v51);
    objc_msgSend_setCurrentHistoryToken_(self, v53, v52);

    v56 = objc_msgSend_getAliasToCNIDMap(self->_contactsEventhandler, v54, v55);
    if (v56)
    {
      if (IMAdditionalContactsLoggingEnabled())
      {
        if (IMOSLoggingEnabled())
        {
          v58 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: _updateAliasToCNIDMap returning aliasIDMap", buf, 2u);
          }
        }

        objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v57, v56);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v65 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v65, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Refetching CNID for ALL Aliases.", buf, 2u);
        }
      }

      v66 = objc_msgSend_allKeys(v72, v63, v64);
      v56 = objc_msgSend__fetchAliasToCNIDMapForAliases_(self, v67, v66);
    }
  }

  else
  {
    if (v18)
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v62 = objc_msgSend_description(v71, v60, v61);
        *buf = 138412290;
        v80 = v62;
        _os_log_impl(&dword_1B7AD5000, v59, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Could not fetch Change History from CNContactStore error:%@", buf, 0xCu);
      }
    }

    v56 = v72;
  }

  v68 = *MEMORY[0x1E69E9840];

  return v56;
}

- (id)_updateAcceptedContactsInAliasToCNIDMap:(id)a3
{
  v71[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v10 = [qword_1EDBE5CB8 alloc];
    v71[0] = qword_1EDBE5C68;
    v71[1] = qword_1EDBE5C58;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v71, 2);
    v67 = objc_msgSend_initWithKeysToFetch_(v10, v13, v12);

    v66 = objc_msgSend_predicateForContactsMatchingHandleStrings_(qword_1EDBE5CC0, v14, v7);
    objc_msgSend_setPredicate_(v67, v15, v66);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Updating aliasToCNIDMap with latest accepted contacts", buf, 2u);
      }
    }

    if (IMAdditionalContactsLoggingEnabled())
    {
      objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v17, v4);
    }

    v19 = objc_msgSend_acceptedContactStore(self, v17, v18);
    v68 = 0;
    v21 = objc_msgSend_executeFetchRequest_error_(v19, v20, v67, &v68);
    v65 = v68;

    if (v21)
    {
      v24 = objc_msgSend_value(v21, v22, v23);
      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        v27 = objc_alloc(MEMORY[0x1E69A8000]);
        v30 = objc_msgSend_mutableCopy(v4, v28, v29);
        v32 = objc_msgSend_initWithAliasToCNIDMap_(v27, v31, v30);
        contactsEventhandler = self->_contactsEventhandler;
        self->_contactsEventhandler = v32;
      }

      if (!objc_msgSend_count(v24, v25, v26, v65) && IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver _updateAliasToCNIDMapForAcceptedContactStoreChange: received 0 accepted contacts, which will result in any cached accepted contacts being removed. This is expected if the accepted list is actually empty.", buf, 2u);
        }
      }

      v36 = objc_msgSend_updateWithCurrentAcceptedContactsMap_(self->_contactsEventhandler, v34, v24);
      v39 = objc_msgSend_sharedInstance(IMDContactCache, v37, v38);
      v42 = objc_msgSend_updatedMap(v36, v40, v41);
      v45 = objc_msgSend_deletedCNIDs(v36, v43, v44);
      objc_msgSend_cacheAndReindexAcceptedContactUpdates_deletions_(v39, v46, v42, v45);

      v49 = objc_msgSend_getAliasToCNIDMap(self->_contactsEventhandler, v47, v48);
      if (v49)
      {
        if (IMAdditionalContactsLoggingEnabled())
        {
          if (IMOSLoggingEnabled())
          {
            v51 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: _updateAliasToCNIDMapForAcceptedContactStoreChange returning aliasIDMap", buf, 2u);
            }
          }

          objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v50, v49);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver _updateAliasToCNIDMapForAcceptedContactStoreChange: Refetching CNID for ALL Aliases.", buf, 2u);
          }
        }

        v61 = objc_msgSend_allKeys(v4, v58, v59);
        v49 = objc_msgSend__fetchAliasToCNIDMapForAliases_(self, v62, v61);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v57 = objc_msgSend_description(v65, v55, v56);
          *buf = 138412290;
          v70 = v57;
          _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Could not fetch accepted contacts with error:%@", buf, 0xCu);
        }
      }

      v49 = v4;
    }
  }

  else
  {
    v52 = IMLogHandleForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFDB80();
    }

    v53 = MEMORY[0x1E695E0F8];
    if (v4)
    {
      v53 = v4;
    }

    v49 = v53;
  }

  v63 = *MEMORY[0x1E69E9840];

  return v49;
}

- (void)CNRecordIDForAliases:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v7 = objc_msgSend__fetchAliasToCNIDMapForAliases_(self, v6, a3);
  if (v8)
  {
    v8[2](v8, v7, 0);
  }
}

- (BOOL)isFavoritedContact:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v7 = objc_msgSend_contactStore(self, v5, v6);
  v9 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v7, v8, v4, MEMORY[0x1E695E0F0], 0);

  LOBYTE(self) = objc_msgSend_isCNContactFavorited_(self, v10, v9);
  return self;
}

- (BOOL)isCNContactFavorited:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = qword_1EDBE5CA0;
  v5 = a3;
  v6 = [v4 alloc];
  v9 = objc_msgSend_contactStore(self, v7, v8);
  v11 = objc_msgSend_initWithContactStore_(v6, v10, v9);

  v13 = objc_msgSend_entriesForContact_(v11, v12, v5);

  v16 = objc_msgSend_count(v13, v14, v15) != 0;
  return v16;
}

@end