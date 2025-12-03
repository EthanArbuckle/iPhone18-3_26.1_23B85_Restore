@interface IMDContactCache
+ (BOOL)vCardCoordinateForMapURL:(id)l outLatitude:(float *)latitude outLongitude:(float *)longitude;
+ (id)contactsForVCardAtPath:(id)path;
+ (id)sharedInstance;
+ (id)vCardMapURLForContact:(id)contact;
+ (id)vCardNameForContact:(id)contact;
+ (void)updateAttributes:(id)attributes withAddressFromContact:(id)contact;
- (IMDContactCache)init;
- (id)_handlesMatchingContactIdentifier:(id)identifier;
- (id)cachedContactForKey:(id)key;
- (id)fullNameForContact:(id)contact;
- (void)_contactStoreDidChange;
- (void)cacheAndReindexAcceptedContactUpdates:(id)updates deletions:(id)deletions;
- (void)cacheContact:(id)contact forKey:(id)key;
- (void)cacheContactsFromFetchResults:(id)results forAliases:(id)aliases;
- (void)contactStoreDidChange:(id)change;
- (void)removeCachedContactForKey:(id)key;
- (void)removeCachedContactsForKeys:(id)keys;
- (void)resetCache;
- (void)updateCacheForAliases:(id)aliases;
@end

@implementation IMDContactCache

+ (id)sharedInstance
{
  if (qword_1EDBE62C0 != -1)
  {
    sub_1B7CEB3B0();
  }

  v3 = qword_1EDBE7920;

  return v3;
}

- (IMDContactCache)init
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v19.receiver = self;
    v19.super_class = IMDContactCache;
    v3 = [(IMDContactCache *)&v19 init];
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      cache = v3->_cache;
      v3->_cache = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      fullNameCache = v3->_fullNameCache;
      v3->_fullNameCache = v6;

      v10 = objc_msgSend_data(MEMORY[0x1E695DEF0], v8, v9);
      currentHistoryToken = v3->_currentHistoryToken;
      v3->_currentHistoryToken = v10;

      v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
      objc_msgSend_addObserver_selector_name_object_(v14, v15, v3, sel_contactStoreDidChange_, *MEMORY[0x1E695C3D8], 0);
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB3C4(v17);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)resetCache
{
  v5 = objc_msgSend_cache(self, a2, v2);
  objc_msgSend_removeAllObjects(v5, v3, v4);
}

- (void)removeCachedContactForKey:(id)key
{
  v15 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = IMOSLoggingEnabled();
  if (keyCopy)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = keyCopy;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Removing cached contact for key %@", &v13, 0xCu);
      }
    }

    v9 = objc_msgSend_cache(self, v6, v7);
    objc_msgSend_removeObjectForKey_(v9, v10, keyCopy);
  }

  else if (v5)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDContactCache - asked to remove cached contact for nil key %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeCachedContactsForKeys:(id)keys
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v5, &v12, v16, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(keysCopy);
        }

        objc_msgSend_removeCachedContactForKey_(self, v7, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cacheContactsFromFetchResults:(id)results forAliases:(id)aliases
{
  v46 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  aliasesCopy = aliases;
  v10 = objc_msgSend_count(aliasesCopy, v8, v9);
  if ((!resultsCopy || !v10) && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = aliasesCopy;
      v44 = 2112;
      v45 = resultsCopy;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDContactCache - not caching fetchResults as aliases: %@, fetchResults: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Caching contacts for Spotlight Contacts cache", buf, 2u);
    }
  }

  v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v12, v13);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = aliasesCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v37, v41, 16);
  if (v19)
  {
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = objc_msgSend_objectForKey_(resultsCopy, v18, v22);
        if (objc_msgSend_count(v23, v24, v25))
        {
          v28 = objc_msgSend_firstObject(v23, v26, v27);
          objc_msgSend_setObject_forKey_(v15, v29, v28, v22);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v37, v41, 16);
    }

    while (v19);
  }

  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v30, v31))
  {
    objc_msgSend_updateCacheForAliases_(self, v32, v15);
  }

  else
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7B04758;
    v35[3] = &unk_1E7CB6770;
    v35[4] = self;
    v36 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v35);
  }

  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "DONE Caching contacts for Spotlight", buf, 2u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)cacheAndReindexAcceptedContactUpdates:(id)updates deletions:(id)deletions
{
  v31 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  deletionsCopy = deletions;
  if (objc_msgSend_count(updatesCopy, v8, v9) || objc_msgSend_count(deletionsCopy, v10, v11))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v28 = objc_msgSend_count(updatesCopy, v13, v14);
        v29 = 2048;
        v30 = objc_msgSend_count(deletionsCopy, v15, v16);
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "cacheAndReindexAcceptedContactUpdates: %lu updated, %lu deleted", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1B7B04994;
    aBlock[3] = &unk_1E7CB6798;
    v24 = updatesCopy;
    selfCopy = self;
    v26 = deletionsCopy;
    v17 = _Block_copy(aBlock);
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v18, v19))
    {
      v17[2](v17);
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1B7B04B40;
      v21[3] = &unk_1E7CB67C0;
      v22 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], v21);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updateCacheForAliases:(id)aliases
{
  v15 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  if (!aliasesCopy && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDContactCache - asked to udpate cache with %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_count(aliasesCopy, v8, v9);
      *buf = 134217984;
      v14 = v10;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Udpating cache with %lu aliases", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B04D08;
  v12[3] = &unk_1E7CB67E8;
  v12[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(aliasesCopy, v6, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cacheContact:(id)contact forKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keyCopy = key;
  if (!keyCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = contactCopy;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDContactCache - asked to cache contact for nil key %@", &v14, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!contactCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = 0;
      v16 = 2112;
      v17 = keyCopy;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Not caching nil contact:%@ for key:%@", &v14, 0x16u);
    }

    goto LABEL_11;
  }

  v10 = objc_msgSend_cache(self, v7, v8);
  objc_msgSend_setObject_forKey_(v10, v11, contactCopy, keyCopy);

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
}

- (id)cachedContactForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v7 = objc_msgSend_cache(self, v4, v5);
    v9 = objc_msgSend_objectForKey_(v7, v8, keyCopy);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "IMDContactCache - Cannot get cached contact for nil key", v12, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)fullNameForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v7 = objc_msgSend_fullNameCache(self, v4, v5);
    v10 = objc_msgSend_identifier(contactCopy, v8, v9);
    v12 = objc_msgSend_objectForKey_(v7, v11, v10);

    v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v13, v14);

    if (v12 == v15)
    {
      v16 = 0;
    }

    else if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = _IMDCoreSpotlightFullNameForContact(contactCopy, 0);
      v21 = objc_msgSend_fullNameCache(self, v17, v18);
      v22 = v16;
      if (!v16)
      {
        v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v19, v20);
      }

      v23 = objc_msgSend_identifier(contactCopy, v19, v20);
      objc_msgSend_setObject_forKey_(v21, v24, v22, v23);

      if (!v16)
      {
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_handlesMatchingContactIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_cache(self, v6, v7);
  v11 = objc_msgSend_mapTableRepresentation(v8, v9, v10);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = objc_msgSend_keyEnumerator(v11, v12, v13, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v37, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKey_(v11, v17, v21);
        v25 = objc_msgSend_identifier(v22, v23, v24);
        if (objc_msgSend_isEqualToString_(identifierCopy, v26, v25))
        {
          objc_msgSend_addObject_(v5, v27, v21);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v33, v37, 16);
    }

    while (v18);
  }

  v30 = objc_msgSend_copy(v5, v28, v29);
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contacts store reported a change", v8, 2u);
    }
  }

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v5, self, sel__contactStoreDidChange, 0);
  objc_msgSend_performSelector_withObject_afterDelay_(self, v7, sel__contactStoreDidChange, 0, 0.5);
}

- (void)_contactStoreDidChange
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contacts store reported a change, updating our contacts cache", buf, 2u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x1E695CD40]);
  objc_msgSend_setStartingToken_(v4, v5, self->_currentHistoryToken);
  v6 = *MEMORY[0x1E695C330];
  v40[0] = *MEMORY[0x1E695C208];
  v40[1] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v40, 2);
  objc_msgSend_setAdditionalContactKeyDescriptors_(v4, v9, v8);

  v10 = _IMDContactStore();
  v36 = 0;
  v12 = objc_msgSend_executeFetchRequest_error_(v10, v11, v4, &v36);
  v13 = v36;

  if (!v12 && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = objc_msgSend_description(v13, v15, v16);
      *buf = 138412290;
      v39 = v17;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Could not fetch Change History from CNContactStore error:%@", buf, 0xCu);
    }
  }

  v18 = objc_alloc_init(IMDContactChangeHandler);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = objc_msgSend_value(v12, v19, v20, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v32, v37, 16);
  if (v24)
  {
    v25 = *v33;
    do
    {
      v26 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v21);
        }

        objc_msgSend_acceptEventVisitor_(*(*(&v32 + 1) + 8 * v26++), v23, v18);
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v32, v37, 16);
    }

    while (v24);
  }

  v29 = objc_msgSend_currentHistoryToken(v12, v27, v28);
  objc_msgSend_setCurrentHistoryToken_(self, v30, v29);

  v31 = *MEMORY[0x1E69E9840];
}

+ (id)contactsForVCardAtPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v5 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v3, pathCopy, 0);
  v17 = 0;
  v7 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v6, v5, 8, &v17);
  v8 = v17;
  if (v8)
  {
    v10 = v8;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v19 = "+[IMDContactCache contactsForVCardAtPath:]";
        v20 = 2112;
        v21 = pathCopy;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "%s Couldn't read data from file %@ ; error %@", buf, 0x20u);
      }
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v16 = 0;
  v12 = objc_msgSend_contactsWithData_error_(MEMORY[0x1E695CE30], v9, v7, &v16);
  v10 = v16;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v19 = "+[IMDContactCache contactsForVCardAtPath:]";
        v20 = 2112;
        v21 = pathCopy;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "%s Failed to generate vcard summary from file %@ ; error %@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)vCardNameForContact:(id)contact
{
  contactCopy = contact;
  v7 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v4, contactCopy, 0);
  if (!v7)
  {
    v7 = objc_msgSend_organizationName(contactCopy, v5, v6);
  }

  return v7;
}

+ (void)updateAttributes:(id)attributes withAddressFromContact:(id)contact
{
  attributesCopy = attributes;
  v8 = objc_msgSend_postalAddresses(contact, v6, v7);
  v34 = objc_msgSend_firstObject(v8, v9, v10);

  v13 = objc_msgSend_value(v34, v11, v12);
  v16 = objc_msgSend_street(v13, v14, v15);
  objc_msgSend_setThoroughfare_(attributesCopy, v17, v16);

  v20 = objc_msgSend_city(v13, v18, v19);
  objc_msgSend_setCity_(attributesCopy, v21, v20);

  v24 = objc_msgSend_postalCode(v13, v22, v23);
  objc_msgSend_setPostalCode_(attributesCopy, v25, v24);

  v28 = objc_msgSend_state(v13, v26, v27);
  objc_msgSend_setStateOrProvince_(attributesCopy, v29, v28);

  v32 = objc_msgSend_country(v13, v30, v31);
  objc_msgSend_setCountry_(attributesCopy, v33, v32);
}

+ (id)vCardMapURLForContact:(id)contact
{
  v48 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = objc_msgSend_urlAddresses(contactCopy, v3, v4);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v42 = "+[IMDContactCache vCardMapURLForContact:]";
      v43 = 2117;
      v44 = v5;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "%s urls %{sensitive}@", buf, 0x16u);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v37, v47, 16);
  if (v10)
  {
    v11 = *v38;
    v12 = *MEMORY[0x1E69A70B0];
    v13 = *MEMORY[0x1E69A70B8];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = objc_msgSend_value(v15, v8, v9);
        v18 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v17, v16);
        v21 = objc_msgSend_host(v18, v19, v20);
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v42 = "+[IMDContactCache vCardMapURLForContact:]";
            v43 = 2112;
            v44 = v21;
            _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "%s url host %@", buf, 0x16u);
          }
        }

        if ((objc_msgSend_isEqualToString_(v21, v22, v12) & 1) != 0 || objc_msgSend_isEqualToString_(v21, v24, v13))
        {
          v25 = v15;

          goto LABEL_21;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v37, v47, 16);
      v25 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v31 = objc_msgSend_value(v25, v29, v30);
      *buf = 136315651;
      v42 = "+[IMDContactCache vCardMapURLForContact:]";
      v43 = 2117;
      v44 = v25;
      v45 = 2117;
      v46 = v31;
      _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "%s got mapURL %{sensitive}@ value %{sensitive}@", buf, 0x20u);
    }
  }

  v32 = objc_msgSend_value(v25, v26, v27);

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (BOOL)vCardCoordinateForMapURL:(id)l outLatitude:(float *)latitude outLongitude:(float *)longitude
{
  lCopy = l;
  if (objc_msgSend_length(lCopy, v8, v9))
  {
    v11 = objc_msgSend_coordinatesFromString_(MEMORY[0x1E69A80F8], v10, lCopy);
    v14 = objc_msgSend_count(v11, v12, v13);
    v16 = v14 == 2;
    if (v14 == 2)
    {
      if (latitude)
      {
        v17 = objc_msgSend_objectAtIndex_(v11, v15, 0);
        objc_msgSend_doubleValue(v17, v18, v19);
        *&v20 = v20;
        *latitude = *&v20;
      }

      if (longitude)
      {
        v21 = objc_msgSend_objectAtIndex_(v11, v15, 1);
        objc_msgSend_doubleValue(v21, v22, v23);
        *&v24 = v24;
        *longitude = *&v24;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end