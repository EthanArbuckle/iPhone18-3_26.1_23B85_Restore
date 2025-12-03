@interface IMBalloonPlugin
- (BOOL)allowsPresentationWithSendLater;
- (BOOL)linkedBeforeSDKVersion:(id)version;
- (BOOL)shouldShowForRecipients:(id)recipients;
- (BOOL)supportsControllerReuse;
- (BOOL)wantsLoadingView;
- (IMBalloonPlugin)init;
- (IMBalloonPlugin)initWithBundle:(id)bundle;
- (IMBalloonPlugin)initWithBundle:(id)bundle app:(id)app;
- (NSString)extensionBundleIdentifier;
- (NSString)extensionIdentifier;
- (id)_getControllerFromReusePoolForChatItem:(id)item contextIdentifier:(id)identifier;
- (id)attributionInfo;
- (id)balloonControllerForChatItem:(id)item contextIdentifier:(id)identifier;
- (id)dataSourceForPluginPayload:(id)payload;
- (id)existingBalloonControllerWithMessageGUID:(id)d contextIdentifier:(id)identifier;
- (id)existingDataSourceForMessageGUID:(id)d;
- (void)dealloc;
- (void)insertDataSource:(id)source forGUID:(id)d;
- (void)moveController:(id)controller toReusePoolFromChatItem:(id)item contextIdentifier:(id)identifier;
- (void)removeController:(id)controller forChatItem:(id)item contextIdentifier:(id)identifier;
- (void)removeDataSourceForChatItem:(id)item;
- (void)unloadBundle;
@end

@implementation IMBalloonPlugin

- (IMBalloonPlugin)init
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, @"Unsupported init", @"[IMBalloonPlugin init] is not supported", 0);
  objc_exception_throw(v2);
}

- (IMBalloonPlugin)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v6 = objc_msgSend_appWithPluginBundle_(IMBalloonApp, v5, bundleCopy);
  v10 = objc_msgSend_initWithBundle_app_(self, v7, bundleCopy, v6);
  if (v10)
  {
    v11 = objc_msgSend_bundleIdentifier(bundleCopy, v8, v9);
    objc_msgSend_setIdentifier_(v6, v12, v11);
  }

  return v10;
}

- (IMBalloonPlugin)initWithBundle:(id)bundle app:(id)app
{
  bundleCopy = bundle;
  appCopy = app;
  v38.receiver = self;
  v38.super_class = IMBalloonPlugin;
  v8 = [(IMBalloonPlugin *)&v38 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setPluginLoaded_(v8, v9, 0);
    objc_storeStrong(&v10->_app, app);
    objc_msgSend_setBundle_(v10, v11, bundleCopy);
    v14 = objc_msgSend_infoDictionary(bundleCopy, v12, v13);
    v16 = objc_msgSend_objectForKey_(v14, v15, @"CKBrowserGroup");
    v19 = objc_msgSend_integerValue(v16, v17, v18);

    objc_msgSend_setBrowserGroup_(v10, v20, v19);
    v22 = objc_msgSend_objectForKey_(v14, v21, @"CKBrowserShowInBrowser");
    v25 = v22;
    if (v22 && (objc_msgSend_BOOLValue(v22, v23, v24) & 1) == 0)
    {
      objc_msgSend_setShowInBrowser_(appCopy, v23, 0);
      objc_msgSend_setShowInSendMenu_(appCopy, v26, 0);
    }

    v27 = objc_msgSend_objectForKey_(v14, v23, @"CKBrowserDisplayImageName");
    if (objc_msgSend_length(v27, v28, v29))
    {
      objc_msgSend_setBrowserImageName_(v10, v30, v27);
    }

    v31 = objc_msgSend_objectForKey_(v14, v30, @"kCKBrowserDisplayImagePath");
    if (objc_msgSend_length(v31, v32, v33))
    {
      objc_msgSend_setBrowserImagePath_(v10, v34, v31);
    }

    if (!v10->_messageToBalloonControllerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      messageToBalloonControllerMap = v10->_messageToBalloonControllerMap;
      v10->_messageToBalloonControllerMap = Mutable;
    }
  }

  return v10;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  objc_msgSend_unloadBundle(self, v6, v7);
  v8.receiver = self;
  v8.super_class = IMBalloonPlugin;
  [(IMBalloonPlugin *)&v8 dealloc];
}

- (void)unloadBundle
{
  objc_msgSend_setPluginLoaded_(self, a2, 0);
  objc_msgSend_setBubbleClass_(self, v3, 0);
  objc_msgSend_setBrowserClass_(self, v4, 0);
  objc_msgSend_setDataSourceClass_(self, v5, 0);
  objc_msgSend_setCustomTypingIndicatorLayerClass_(self, v6, 0);
  objc_msgSend_setEntryClass_(self, v7, 0);
  balloonControllerPool = self->_balloonControllerPool;
  self->_balloonControllerPool = 0;
}

- (id)_getControllerFromReusePoolForChatItem:(id)item contextIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  balloonControllerPool = self->_balloonControllerPool;
  if (!balloonControllerPool)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = self->_balloonControllerPool;
    self->_balloonControllerPool = v11;

    balloonControllerPool = self->_balloonControllerPool;
  }

  if (objc_msgSend_count(balloonControllerPool, v7, v8))
  {
    v15 = objc_msgSend_lastObject(self->_balloonControllerPool, v13, v14);
    v18 = objc_msgSend_dataSource(itemCopy, v16, v17);
    if (objc_msgSend_conformsToProtocol_(v15, v19, &unk_1F1BF7248))
    {
      objc_msgSend_setDataSource_(v15, v20, v18);
    }

    v22 = objc_msgSend_messageGUID(v18, v20, v21);
    v24 = objc_msgSend_balloonControllerKeyForMessageGUID_contextIdentifier_(self, v23, v22, identifierCopy);

    objc_msgSend_setObject_forKey_(self->_messageToBalloonControllerMap, v25, v15, v24);
    objc_msgSend_removeLastObject(self->_balloonControllerPool, v26, v27);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)existingBalloonControllerWithMessageGUID:(id)d contextIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = objc_msgSend_balloonControllerKeyForMessageGUID_contextIdentifier_(self, v7, dCopy, identifierCopy);
    v11 = objc_msgSend_objectForKeyedSubscript_(self->_messageToBalloonControllerMap, v10, v9);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Context identifier is nil, can't load balloonController from cache", v14, 2u);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (id)balloonControllerForChatItem:(id)item contextIdentifier:(id)identifier
{
  v60 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = objc_msgSend_dataSource(itemCopy, v7, v8);
    v13 = objc_msgSend_messageGUID(v10, v11, v12);
    v16 = objc_msgSend_length(v13, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_messageGUID(v10, v17, v18);
      v21 = objc_msgSend_existingBalloonControllerWithMessageGUID_contextIdentifier_(self, v20, v19, identifierCopy);

      if (v21)
      {
        goto LABEL_19;
      }

      if (objc_msgSend_supportsControllerReuse(self, v22, v23))
      {
        v21 = objc_msgSend__getControllerFromReusePoolForChatItem_contextIdentifier_(self, v24, itemCopy, identifierCopy);
        if (v21)
        {
          goto LABEL_19;
        }
      }

      v26 = objc_msgSend_bubbleClass(self, v24, v25);
      if (objc_msgSend_conformsToProtocol_(v26, v27, &unk_1F1BE8250))
      {
        v30 = objc_alloc(objc_msgSend_bubbleClass(self, v28, v29));
        v33 = objc_msgSend_isFromMe(itemCopy, v31, v32);
        v21 = objc_msgSend_initWithDataSource_isFromMe_(v30, v34, v10, v33);
        if (v21)
        {
          v37 = objc_msgSend_messageGUID(v10, v35, v36);
          v39 = objc_msgSend_balloonControllerKeyForMessageGUID_contextIdentifier_(self, v38, v37, identifierCopy);

          objc_msgSend_setObject_forKey_(self->_messageToBalloonControllerMap, v40, v21, v39);
        }

        goto LABEL_19;
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v50 = objc_msgSend_messageGUID(v10, v48, v49);
          v53 = objc_msgSend_guid(itemCopy, v51, v52);
          v54 = 138412802;
          v55 = v50;
          v56 = 2048;
          v57 = v10;
          v58 = 2112;
          v59 = v53;
          _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "IMBalloonPluginManager - bubbleClass does not conform to IMBalloonPluginController protocol; message guid: %@, dataSource: %p, chat item guid: %@", &v54, 0x20u);
        }

LABEL_17:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v45 = objc_msgSend_guid(itemCopy, v43, v44);
        v54 = 134218242;
        v55 = v10;
        v56 = 2112;
        v57 = v45;
        _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "balloonControllerForChatItem dataSource: %p, chat item guid: %@", &v54, 0x16u);
      }

      goto LABEL_17;
    }

    v21 = 0;
LABEL_19:

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      LOWORD(v54) = 0;
      _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Context identifier is nil!", &v54, 2u);
    }
  }

  v21 = 0;
LABEL_20:

  v46 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)moveController:(id)controller toReusePoolFromChatItem:(id)item contextIdentifier:(id)identifier
{
  controllerCopy = controller;
  itemCopy = item;
  identifierCopy = identifier;
  objc_msgSend_setDataSource_(controllerCopy, v10, 0);
  if (controllerCopy)
  {
    balloonControllerPool = self->_balloonControllerPool;
    if (!balloonControllerPool)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_balloonControllerPool;
      self->_balloonControllerPool = v13;

      balloonControllerPool = self->_balloonControllerPool;
    }

    objc_msgSend_addObject_(balloonControllerPool, v11, controllerCopy);
    v17 = objc_msgSend_dataSource(itemCopy, v15, v16);
    v20 = objc_msgSend_messageGUID(v17, v18, v19);
    v22 = objc_msgSend_balloonControllerKeyForMessageGUID_contextIdentifier_(self, v21, v20, identifierCopy);

    objc_msgSend_removeObjectForKey_(self->_messageToBalloonControllerMap, v23, v22);
  }
}

- (void)removeController:(id)controller forChatItem:(id)item contextIdentifier:(id)identifier
{
  if (controller)
  {
    identifierCopy = identifier;
    itemCopy = item;
    v11 = objc_msgSend_dataSource(itemCopy, v9, v10);
    v14 = objc_msgSend_messageGUID(v11, v12, v13);
    v18 = objc_msgSend_balloonControllerKeyForMessageGUID_contextIdentifier_(self, v15, v14, identifierCopy);

    objc_msgSend_removeObjectForKey_(self->_messageToBalloonControllerMap, v16, v18);
    objc_msgSend_removeDataSourceForChatItem_(self, v17, itemCopy);
  }
}

- (void)removeDataSourceForChatItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend__canRemoveControllerFromCachedDatasource(self, v4, v5))
  {
    messageToDatasourceMap = self->_messageToDatasourceMap;
    v9 = objc_msgSend_dataSource(itemCopy, v6, v7);
    v12 = objc_msgSend_pluginPayload(v9, v10, v11);
    v15 = objc_msgSend_pluginSessionGUID(v12, v13, v14);
    objc_msgSend_removeObjectForKey_(messageToDatasourceMap, v16, v15);
  }
}

- (BOOL)supportsControllerReuse
{
  v3 = objc_msgSend_bubbleClass(self, a2, v2);

  return objc_msgSend_conformsToProtocol_(v3, v4, &unk_1F1BF7248);
}

- (BOOL)shouldShowForRecipients:(id)recipients
{
  v23 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if (!objc_msgSend_count(recipientsCopy, v5, v6))
  {
    goto LABEL_5;
  }

  v9 = objc_msgSend_identifier(self, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E69A68E8]);

  if (!isEqualToString)
  {
    goto LABEL_5;
  }

  if (objc_msgSend_count(recipientsCopy, v12, v13) != 1 || (objc_msgSend_objectAtIndexedSubscript_(recipientsCopy, v14, 0), v15 = objc_claimAutoreleasedReturnValue(), v16 = MEMORY[0x1AC56C3A0](), v15, (v16 & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = recipientsCopy;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Attempt to display the business extension in a non-business context, recipients: %@", &v21, 0xCu);
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_5:
    v17 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)linkedBeforeSDKVersion:(id)version
{
  versionCopy = version;
  v7 = objc_msgSend_app(self, v5, v6);
  v9 = objc_msgSend_linkedBeforeSDKVersion_(v7, v8, versionCopy);

  return v9;
}

- (id)existingDataSourceForMessageGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_messageToDatasourceMap(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, dCopy);

  return v9;
}

- (void)insertDataSource:(id)source forGUID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  if (sourceCopy && dCopy)
  {
    if (!self->_messageToDatasourceMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      messageToDatasourceMap = self->_messageToDatasourceMap;
      self->_messageToDatasourceMap = Mutable;
    }

    v11 = objc_msgSend_messageToDatasourceMap(self, v6, v7);
    objc_msgSend_setObject_forKey_(v11, v12, sourceCopy, dCopy);
  }
}

- (id)dataSourceForPluginPayload:(id)payload
{
  v34 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v7 = objc_msgSend_pluginSessionGUID(payloadCopy, v5, v6);
  v10 = objc_msgSend_messageToDatasourceMap(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v7);

  if (!v12)
  {
    if (!self->_messageToDatasourceMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      messageToDatasourceMap = self->_messageToDatasourceMap;
      self->_messageToDatasourceMap = Mutable;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = v7;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "We did not find a datasource for messageGUID: %@", &v32, 0xCu);
      }
    }

    v20 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v17, v18);
    v23 = objc_msgSend_identifier(self, v21, v22);
    v25 = objc_msgSend_dataSourceClassForBundleID_(v20, v24, v23);

    if (v25)
    {
      v26 = [v25 alloc];
      v12 = objc_msgSend_initWithPluginPayload_(v26, v27, payloadCopy);
      if (v7)
      {
        v30 = objc_msgSend_messageToDatasourceMap(self, v28, v29);
        objc_msgSend_setObject_forKey_(v30, v31, v12, v7);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSString)extensionIdentifier
{
  extensionIdentifier = self->_extensionIdentifier;
  if (!extensionIdentifier)
  {
    v5 = objc_msgSend_identifier(self, a2, v2);
    if (objc_msgSend_hasPrefix_(v5, v6, *MEMORY[0x1E69A69F0]))
    {
      v7 = v5;
    }

    else
    {
      v7 = IMBalloonExtensionIDWithSuffix();
    }

    v8 = self->_extensionIdentifier;
    self->_extensionIdentifier = v7;

    extensionIdentifier = self->_extensionIdentifier;
  }

  return extensionIdentifier;
}

- (NSString)extensionBundleIdentifier
{
  v3 = objc_msgSend_plugin(self->_app, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

- (BOOL)allowsPresentationWithSendLater
{
  v3 = objc_msgSend_identifier(self, a2, v2);
  v4 = *MEMORY[0x1E69A6A38];
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(v3, v6, v5);

  return isEqualToString ^ 1;
}

- (BOOL)wantsLoadingView
{
  v4 = objc_msgSend_identifier(self->_app, a2, v2);
  v5 = *MEMORY[0x1E69A6928];
  v6 = IMBalloonExtensionIDWithSuffix();
  if (objc_msgSend_isEqualToString_(v4, v7, v6))
  {

    return 0;
  }

  else
  {
    v11 = objc_msgSend_prefersNoLoadingBubbles(self, v8, v9);

    return v11 ^ 1;
  }
}

- (id)attributionInfo
{
  if (objc_msgSend_hideAttributionInformation(self, a2, v2))
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5);
    v10 = objc_msgSend_identifier(self, v8, v9);
    if (v10)
    {
      CFDictionarySetValue(v7, *MEMORY[0x1E69A6FB0], v10);
    }

    v13 = objc_msgSend_browserDisplayName(self, v11, v12);
    if (v13)
    {
      CFDictionarySetValue(v7, *MEMORY[0x1E69A6FA8], v13);
    }

    v16 = objc_msgSend_adamID(self, v14, v15);
    if (v16)
    {
      CFDictionarySetValue(v7, *MEMORY[0x1E69A6FA0], v16);
    }

    if (objc_msgSend_count(v7, v17, v18))
    {
      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    v6 = v19;
  }

  return v6;
}

@end