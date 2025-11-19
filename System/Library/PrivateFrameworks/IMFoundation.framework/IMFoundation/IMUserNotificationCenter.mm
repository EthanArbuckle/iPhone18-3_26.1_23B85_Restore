@interface IMUserNotificationCenter
+ (id)sharedInstance;
- (id)_dequeueBlockForIdentifier:(id)a3;
- (id)_dequeueListenerForIdentifier:(id)a3;
- (id)_dequeueUserNotificationForIdentifier:(id)a3;
- (id)_frontBlockForIdentifier:(id)a3;
- (id)_frontListenerForIdentifier:(id)a3;
- (id)_frontUserNotificationForIdentifier:(id)a3;
- (unint64_t)countForIdentifier:(id)a3;
- (void)_cancelActiveUserNotificationForIdentifier:(id)a3;
- (void)_displayNextUserNotificationForIdentifier:(id)a3;
- (void)_enqueueBlock:(id)a3 forIdentifier:(id)a4;
- (void)_enqueueListener:(id)a3 forIdentifier:(id)a4;
- (void)_enqueueUserNotification:(id)a3 forIdentifier:(id)a4;
- (void)_handleUserNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4;
- (void)addUserNotification:(id)a3 listener:(id)a4 completionHandler:(id)a5;
- (void)removeAllListeners;
- (void)removeListener:(id)a3;
- (void)removeNotificationsForServiceIdentifier:(id)a3;
@end

@implementation IMUserNotificationCenter

+ (id)sharedInstance
{
  if (qword_1ED517628 != -1)
  {
    sub_1959D55A4();
  }

  v3 = qword_1ED5175E0;

  return v3;
}

- (id)_frontUserNotificationForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, a2, a3);
    v6 = objc_msgSend___imFirstObject(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_frontListenerForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, a2, a3);
    v6 = objc_msgSend___imFirstObject(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_frontBlockForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, a2, a3);
    v6 = objc_msgSend___imFirstObject(v3, v4, v5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_dequeueUserNotificationForIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, v4, v5);
    v11 = objc_msgSend___imFirstObject(v6, v7, v8);
    if (v11)
    {
      objc_msgSend_removeFirstObject(v6, v9, v10);
    }

    if (!objc_msgSend_count(v6, v9, v10))
    {
      objc_msgSend_removeObjectForKey_(self->_identifierToIMUserNotificationQueueMap, v12, v5);
    }

    if (!objc_msgSend_count(self->_identifierToIMUserNotificationQueueMap, v12, v13))
    {
      identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
      self->_identifierToIMUserNotificationQueueMap = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_dequeueListenerForIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, v4, v5);
    v11 = objc_msgSend___imFirstObject(v6, v7, v8);
    if (v11)
    {
      objc_msgSend_removeFirstObject(v6, v9, v10);
    }

    if (!objc_msgSend_count(v6, v9, v10))
    {
      objc_msgSend_removeObjectForKey_(self->_identifierToListenerQueueMap, v12, v5);
    }

    if (!objc_msgSend_count(self->_identifierToListenerQueueMap, v12, v13))
    {
      identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
      self->_identifierToListenerQueueMap = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_dequeueBlockForIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, v4, v5);
    if (objc_msgSend_count(v6, v7, v8))
    {
      v10 = objc_msgSend_objectAtIndex_(v6, v9, 0);
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v15 = _Block_copy(v12);
    if (v10)
    {
      objc_msgSend_removeFirstObject(v6, v13, v14);
    }

    if (!objc_msgSend_count(v6, v13, v14))
    {
      objc_msgSend_removeObjectForKey_(self->_identifierToBlockQueueMap, v16, v5);
    }

    if (!objc_msgSend_count(self->_identifierToBlockQueueMap, v16, v17))
    {
      identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
      self->_identifierToBlockQueueMap = 0;
    }

    v11 = _Block_copy(v15);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enqueueUserNotification:(id)a3 forIdentifier:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (v7)
  {
    v9 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, v6, v7);
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
      if (!identifierToIMUserNotificationQueueMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v13 = self->_identifierToIMUserNotificationQueueMap;
        self->_identifierToIMUserNotificationQueueMap = Mutable;

        identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
      }

      objc_msgSend_setObject_forKey_(identifierToIMUserNotificationQueueMap, v10, v9, v7);
    }

    objc_msgSend_addObject_(v9, v8, v14);
  }
}

- (void)_enqueueListener:(id)a3 forIdentifier:(id)a4
{
  v17 = a3;
  v7 = a4;
  if (v7)
  {
    v10 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, v6, v7);
    if (!v10)
    {
      v10 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v8, v9);
      identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
      if (!identifierToListenerQueueMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_identifierToListenerQueueMap;
        self->_identifierToListenerQueueMap = Mutable;

        identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
      }

      objc_msgSend_setObject_forKey_(identifierToListenerQueueMap, v11, v10, v7);
    }

    if (v17)
    {
      objc_msgSend_addObject_(v10, v8, v17);
    }

    else
    {
      v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, 0);
      objc_msgSend_addObject_(v10, v16, v15);
    }
  }
}

- (void)_enqueueBlock:(id)a3 forIdentifier:(id)a4
{
  v18 = a3;
  v7 = a4;
  if (v7)
  {
    v10 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, v6, v7);
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
      if (!identifierToBlockQueueMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_identifierToBlockQueueMap;
        self->_identifierToBlockQueueMap = Mutable;

        identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
      }

      objc_msgSend_setObject_forKey_(identifierToBlockQueueMap, v11, v10, v7);
    }

    if (v18)
    {
      v15 = objc_msgSend_copy(v18, v8, v9);
    }

    else
    {
      v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
    }

    v17 = v15;
    objc_msgSend_addObject_(v10, v16, v15);
  }
}

- (void)_cancelActiveUserNotificationForIdentifier:(id)a3
{
  v22 = a3;
  v5 = objc_msgSend_objectForKey_(self->_identifierToCFUserNotificationMap, v4, v22);
  v8 = objc_msgSend_objectForKey_(self->_identifierToRunLoopSourcesMap, v6, v22);
  if (v5)
  {
    CFUserNotificationCancel(v5);
  }

  if (v8)
  {
    CFRunLoopSourceInvalidate(v8);
  }

  v9 = objc_msgSend__dequeueUserNotificationForIdentifier_(self, v7, v22);
  v11 = objc_msgSend__dequeueListenerForIdentifier_(self, v10, v22);
  v13 = objc_msgSend__dequeueBlockForIdentifier_(self, v12, v22);
  objc_msgSend_removeObjectForKey_(self->_identifierToCFUserNotificationMap, v14, v22);
  objc_msgSend_removeObjectForKey_(self->_identifierToRunLoopSourcesMap, v15, v22);
  if (!objc_msgSend_count(self->_identifierToCFUserNotificationMap, v16, v17))
  {
    identifierToCFUserNotificationMap = self->_identifierToCFUserNotificationMap;
    self->_identifierToCFUserNotificationMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToRunLoopSourcesMap, v18, v19))
  {
    identifierToRunLoopSourcesMap = self->_identifierToRunLoopSourcesMap;
    self->_identifierToRunLoopSourcesMap = 0;
  }
}

- (void)_displayNextUserNotificationForIdentifier:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend__frontUserNotificationForIdentifier_(self, v5, v4);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_timeout(v6, v7, v8);
    v11 = v10;
    v14 = objc_msgSend_displayFlags(v9, v12, v13);
    v17 = objc_msgSend_displayInformation(v9, v15, v16);
    v20 = objc_msgSend_mutableCopy(v17, v18, v19);

    v23 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v21, v22);
    v26 = objc_msgSend_resourceURL(v23, v24, v25);

    if (v26)
    {
      CFDictionarySetValue(v20, *MEMORY[0x1E695EE90], v26);
    }

    v29 = objc_msgSend_registration(IMRGLog, v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138412290;
      v42 = v20;
      _os_log_impl(&dword_195988000, v29, OS_LOG_TYPE_DEFAULT, "Creating CFUserNotification with display information: %@", &v41, 0xCu);
    }

    v41 = -1431655766;
    v30 = *MEMORY[0x1E695E480];
    v32 = CFUserNotificationCreate(*MEMORY[0x1E695E480], v11, v14, &v41, v20);
    if (!self->_identifierToCFUserNotificationMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      identifierToCFUserNotificationMap = self->_identifierToCFUserNotificationMap;
      self->_identifierToCFUserNotificationMap = Mutable;
    }

    if (v32)
    {
      objc_msgSend_setObject_forKey_(self->_identifierToCFUserNotificationMap, v31, v32, v4);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v30, v32, sub_1959B1300, 0);
      if (!self->_identifierToRunLoopSourcesMap)
      {
        v37 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        identifierToRunLoopSourcesMap = self->_identifierToRunLoopSourcesMap;
        self->_identifierToRunLoopSourcesMap = v37;
      }

      if (RunLoopSource)
      {
        objc_msgSend_setObject_forKey_(self->_identifierToRunLoopSourcesMap, v35, RunLoopSource, v4);
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x1E695E8D0]);
        CFRelease(RunLoopSource);
      }

      CFRelease(v32);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_handleUserNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4
{
  v7 = objc_msgSend_allKeysForObject_(self->_identifierToCFUserNotificationMap, a2, a3);
  v37 = objc_msgSend_lastObject(v7, v8, v9);

  v11 = objc_msgSend__dequeueUserNotificationForIdentifier_(self, v10, v37);
  v13 = objc_msgSend__dequeueListenerForIdentifier_(self, v12, v37);
  v15 = objc_msgSend__dequeueBlockForIdentifier_(self, v14, v37);
  v16 = _Block_copy(v15);
  v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], v17, v18);

  if (v16 == v19)
  {

    v15 = 0;
  }

  v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v20, v21);

  if (v13 == v22)
  {

    v13 = 0;
  }

  v24 = objc_msgSend_objectForKey_(self->_identifierToRunLoopSourcesMap, v23, v37);
  CFRunLoopSourceInvalidate(v24);

  ResponseDictionary = CFUserNotificationGetResponseDictionary(a3);
  objc_msgSend__setResponseFlags_responseInformation_(v11, v26, a4, ResponseDictionary);
  objc_msgSend_userNotificationDidFinish_(v13, v27, v11);
  if (v15)
  {
    (v15)[2](v15, v11);
  }

  objc_msgSend_removeObjectForKey_(self->_identifierToCFUserNotificationMap, v28, v37);
  objc_msgSend_removeObjectForKey_(self->_identifierToRunLoopSourcesMap, v29, v37);
  if (!objc_msgSend_count(self->_identifierToCFUserNotificationMap, v30, v31))
  {
    identifierToCFUserNotificationMap = self->_identifierToCFUserNotificationMap;
    self->_identifierToCFUserNotificationMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToRunLoopSourcesMap, v32, v33))
  {
    identifierToRunLoopSourcesMap = self->_identifierToRunLoopSourcesMap;
    self->_identifierToRunLoopSourcesMap = 0;
  }

  objc_msgSend__displayNextUserNotificationForIdentifier_(self, v35, v37);
}

- (void)addUserNotification:(id)a3 listener:(id)a4 completionHandler:(id)a5
{
  v22 = a3;
  v8 = a5;
  v9 = a4;
  v12 = objc_msgSend_identifier(v22, v10, v11);
  objc_msgSend__enqueueUserNotification_forIdentifier_(self, v13, v22, v12);
  objc_msgSend__enqueueListener_forIdentifier_(self, v14, v9, v12);

  objc_msgSend__enqueueBlock_forIdentifier_(self, v15, v8, v12);
  v17 = objc_msgSend_objectForKey_(self->_identifierToCFUserNotificationMap, v16, v12);
  if (!v17 || (v20 = v17, v21 = objc_msgSend_usesNotificationCenter(v22, v18, v19), v20, v21))
  {
    objc_msgSend__displayNextUserNotificationForIdentifier_(self, v18, v12);
  }
}

- (unint64_t)countForIdentifier:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, a2, a3);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (void)removeNotificationsForServiceIdentifier:(id)a3
{
  if (a3)
  {
    objc_msgSend__cancelActiveUserNotificationForIdentifier_(self, a2, a3);
  }
}

- (void)removeListener:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_null(MEMORY[0x1E695DFB0], v4, v5);

    if (v7 != v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v11 = objc_msgSend_allKeys(self->_identifierToListenerQueueMap, v9, v10);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v63, v69, 16);
      if (v13)
      {
        v15 = v13;
        v16 = *v64;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v64 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v63 + 1) + 8 * i);
            v19 = objc_msgSend__frontListenerForIdentifier_(self, v14, v18);

            if (v19 == v6)
            {
              objc_msgSend_addObject_(v8, v14, v18);
              objc_msgSend__cancelActiveUserNotificationForIdentifier_(self, v20, v18);
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v63, v69, 16);
        }

        while (v15);
      }

      v53 = v8;

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = objc_msgSend_allKeys(self->_identifierToIMUserNotificationQueueMap, v21, v22);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v59, v68, 16);
      if (v24)
      {
        v26 = v24;
        v27 = *v60;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v60 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v59 + 1) + 8 * j);
            v30 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, v25, v29, v53);
            v32 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, v31, v29);
            v34 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, v33, v29);
            if (objc_msgSend_count(v30, v35, v36))
            {
              v38 = 0;
              do
              {
                v40 = objc_msgSend_objectAtIndex_(v30, v37, v38);
                if (v40 == v6)
                {
                  objc_msgSend_removeObjectAtIndex_(v30, v39, v38);
                  objc_msgSend_removeObjectAtIndex_(v32, v41, v38);
                  objc_msgSend_removeObjectAtIndex_(v34, v42, v38);
                }

                else
                {
                  ++v38;
                }
              }

              while (v38 < objc_msgSend_count(v30, v43, v44));
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v59, v68, 16);
        }

        while (v26);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v45 = v53;
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v55, v67, 16);
      if (v47)
      {
        v49 = v47;
        v50 = *v56;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v56 != v50)
            {
              objc_enumerationMutation(v45);
            }

            objc_msgSend__displayNextUserNotificationForIdentifier_(self, v48, *(*(&v55 + 1) + 8 * k), v53);
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v55, v67, 16);
        }

        while (v49);
      }
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (void)removeAllListeners
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = objc_msgSend_allKeys(self->_identifierToIMUserNotificationQueueMap, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v27, v31, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend__cancelActiveUserNotificationForIdentifier_(self, v7, *(*(&v27 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v27, v31, 16);
    }

    while (v8);
  }

  objc_msgSend_removeAllObjects(self->_identifierToIMUserNotificationQueueMap, v11, v12);
  objc_msgSend_removeAllObjects(self->_identifierToListenerQueueMap, v13, v14);
  objc_msgSend_removeAllObjects(self->_identifierToBlockQueueMap, v15, v16);
  if (!objc_msgSend_count(self->_identifierToIMUserNotificationQueueMap, v17, v18))
  {
    identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
    self->_identifierToIMUserNotificationQueueMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToListenerQueueMap, v19, v20))
  {
    identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
    self->_identifierToListenerQueueMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToBlockQueueMap, v22, v23))
  {
    identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
    self->_identifierToBlockQueueMap = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end