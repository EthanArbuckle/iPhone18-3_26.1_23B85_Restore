@interface IMBalloonApp
+ (IMBalloonApp)appWithPluginBundle:(id)a3;
+ (IMBalloonApp)appWithPluginBundle:(id)a3 appBundle:(id)a4;
+ (IMBalloonApp)appWithPluginBundle:(id)a3 extension:(id)a4;
+ (IMBalloonApp)appWithPluginBundle:(id)a3 pluginKitProxy:(id)a4 extension:(id)a5;
+ (id)_unremovableDisabledApps;
+ (void)_setUnremovableDisabledApps:(id)a3;
- (BOOL)isEnabledUnremovableApp;
- (Class)browserClass;
- (Class)bubbleClass;
- (Class)customTypingIndicatorLayerClass;
- (Class)dataSourceClass;
- (Class)entryClass;
- (IMBalloonApp)initWithPluginBundle:(id)a3 appBundle:(id)a4;
- (LSVersionNumber)sdkVersionNumber;
- (unint64_t)presentationContextsForInfoPlistArray:(id)a3;
- (void)_loadBundle;
- (void)setSdkVersionNumber:(LSVersionNumber *)a3;
@end

@implementation IMBalloonApp

- (BOOL)isEnabledUnremovableApp
{
  v3 = objc_opt_class();
  v6 = objc_msgSend__unremovableDisabledApps(v3, v4, v5);
  v9 = objc_msgSend_identifier(self, v7, v8);
  v11 = objc_msgSend_containsObject_(v6, v10, v9);

  return v11 ^ 1;
}

+ (id)_unremovableDisabledApps
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = qword_1ED767670;
  if (!qword_1ED767670)
  {
    v4 = IMGetCachedDomainValueForKey();
    if (v4)
    {
      objc_storeStrong(&qword_1ED767670, v4);
    }

    else
    {
      v9[0] = *MEMORY[0x1E69A6A10];
      v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v9, 1);
      v6 = qword_1ED767670;
      qword_1ED767670 = v5;
    }

    v2 = qword_1ED767670;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (IMBalloonApp)appWithPluginBundle:(id)a3 pluginKitProxy:(id)a4 extension:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [_IMBalloonExtensionApp alloc];
  v12 = objc_msgSend_initWithPluginBundle_pluginKitProxy_extension_(v10, v11, v9, v8, v7);

  return v12;
}

+ (IMBalloonApp)appWithPluginBundle:(id)a3 extension:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_IMBalloonExtensionApp alloc];
  v9 = objc_msgSend_initWithPluginBundle_extension_(v7, v8, v6, v5);

  return v9;
}

+ (IMBalloonApp)appWithPluginBundle:(id)a3
{
  v3 = a3;
  v4 = [IMBalloonApp alloc];
  v6 = objc_msgSend_initWithPluginBundle_appBundle_(v4, v5, v3, 0);

  return v6;
}

+ (IMBalloonApp)appWithPluginBundle:(id)a3 appBundle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_IMBalloonBundleApp alloc];
  v9 = objc_msgSend_initWithPluginBundle_appBundle_(v7, v8, v6, v5);

  return v9;
}

- (IMBalloonApp)initWithPluginBundle:(id)a3 appBundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = IMBalloonApp;
  v9 = [(IMBalloonApp *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pluginBundle, a3);
    objc_storeStrong(&v10->_appBundle, a4);
    *&v10->_showInSendMenu = 257;
    v10->_presentationContexts = 1;
    v13 = objc_msgSend_localizedInfoDictionary(v7, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"CFBundleDisplayName");
    if (v15 || (objc_msgSend_objectForKeyedSubscript_(v13, v16, @"CKBrowserDisplayName"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v15;
    }

    else
    {
      v26 = objc_msgSend_infoDictionary(v7, v16, v17);
      v18 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"CKBrowserDisplayName");
    }

    if (objc_msgSend_length(v18, v16, v17))
    {
      objc_msgSend_setBrowserDisplayName_(v10, v19, v18);
    }

    v21 = objc_msgSend_bundleIdentifier(v7, v19, v20);
    isEqualToString = objc_msgSend_isEqualToString_(v21, v22, *MEMORY[0x1E69A6A00]);

    if (isEqualToString)
    {
      objc_msgSend_setShouldHideAppSwitcher_(v10, v24, 1);
    }

    __dmb(0xBu);
  }

  return v10;
}

- (void)_loadBundle
{
  pluginLoadToken = self->_pluginLoadToken;
  p_pluginLoadToken = &self->_pluginLoadToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8355CD0;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  if (pluginLoadToken != -1)
  {
    dispatch_once(p_pluginLoadToken, block);
  }
}

- (Class)bubbleClass
{
  objc_msgSend__loadBundle(self, a2, v2);
  bubbleClass = self->_bubbleClass;

  return bubbleClass;
}

- (Class)browserClass
{
  objc_msgSend__loadBundle(self, a2, v2);
  browserClass = self->_browserClass;

  return browserClass;
}

- (Class)dataSourceClass
{
  objc_msgSend__loadBundle(self, a2, v2);
  dataSourceClass = self->_dataSourceClass;

  return dataSourceClass;
}

- (Class)customTypingIndicatorLayerClass
{
  objc_msgSend__loadBundle(self, a2, v2);
  customTypingIndicatorLayerClass = self->_customTypingIndicatorLayerClass;

  return customTypingIndicatorLayerClass;
}

- (Class)entryClass
{
  objc_msgSend__loadBundle(self, a2, v2);
  entryClass = self->_entryClass;

  return entryClass;
}

+ (void)_setUnremovableDisabledApps:(id)a3
{
  objc_storeStrong(&qword_1ED767670, a3);
  v4 = a3;
  IMSetDomainValueForKey();
}

- (unint64_t)presentationContextsForInfoPlistArray:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isStickerPackOnly(self, v5, v6))
  {
    v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
    isStickersAppEnabled = objc_msgSend_isStickersAppEnabled(v9, v10, v11);

    if (isStickersAppEnabled)
    {
      v13 = 2;
    }

    else
    {
      v13 = -1;
    }
  }

  else if ((v4 || objc_msgSend_isPreDawnAndAppStoreStickerGenre(self, v7, v8)) && (objc_msgSend_shouldForceIntoSendMenu(self, v7, v8) & 1) == 0)
  {
    if (objc_msgSend_containsObject_(v4, v14, @"MSMessagesAppPresentationContextMessages"))
    {
      v13 = objc_msgSend_isPreDawnAndAppStoreStickerGenre(self, v15, v16) ^ 1;
    }

    else
    {
      v13 = 0;
    }

    if ((objc_msgSend_containsObject_(v4, v15, @"MSMessagesAppPresentationContextMedia") & 1) != 0 || objc_msgSend_isPreDawnAndAppStoreStickerGenre(self, v17, v18))
    {
      v13 |= 2uLL;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (LSVersionNumber)sdkVersionNumber
{
  v3 = *self[6]._opaque;
  *retstr->_opaque = *&self[5]._opaque[16];
  *&retstr->_opaque[16] = v3;
  return self;
}

- (void)setSdkVersionNumber:(LSVersionNumber *)a3
{
  v3 = *&a3->_opaque[16];
  *self->_sdkVersionNumber._opaque = *a3->_opaque;
  *&self->_sdkVersionNumber._opaque[16] = v3;
}

@end