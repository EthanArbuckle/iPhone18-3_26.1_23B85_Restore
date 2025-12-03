@interface _IMBalloonBundleApp
- (Class)browserClass;
- (Class)bubbleClass;
- (Class)dataSourceClass;
- (_IMBalloonBundleApp)initWithPluginBundle:(id)bundle appBundle:(id)appBundle;
- (void)_loadAppBundle;
- (void)_loadBundle;
@end

@implementation _IMBalloonBundleApp

- (_IMBalloonBundleApp)initWithPluginBundle:(id)bundle appBundle:(id)appBundle
{
  bundleCopy = bundle;
  appBundleCopy = appBundle;
  v98.receiver = self;
  v98.super_class = _IMBalloonBundleApp;
  v8 = [(IMBalloonApp *)&v98 initWithPluginBundle:bundleCopy appBundle:appBundleCopy];
  v11 = v8;
  if (v8)
  {
    v12 = objc_msgSend_appBundle(v8, v9, v10);
    v15 = objc_msgSend_bundleIdentifier(v12, v13, v14);

    v18 = objc_msgSend_bundleIdentifier(bundleCopy, v16, v17);
    v20 = objc_msgSend_stringByAppendingFormat_(v18, v19, @":%@:%@", @"0000000000", v15);

    v97 = v20;
    objc_msgSend_setIdentifier_(v11, v21, v20);
    objc_msgSend_setCanSendDataPayloads_(v11, v22, 1);
    objc_msgSend_setShowInBrowser_(v11, v23, 1);
    objc_msgSend_setShowInSendMenu_(v11, v24, 1);
    v27 = objc_msgSend_infoDictionary(appBundleCopy, v25, v26);
    v30 = objc_msgSend_localizedInfoDictionary(appBundleCopy, v28, v29);
    v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"CFBundleDisplayName");
    if (v32 || (objc_msgSend_objectForKeyedSubscript_(v30, v33, @"CKBrowserDisplayName"), (v32 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v34 = v32;
    }

    else
    {
      v92 = objc_msgSend_objectForKeyedSubscript_(v27, v33, @"CKBrowserDisplayName");
      v94 = v92;
      if (v92)
      {
        v95 = v92;
      }

      else
      {
        v95 = objc_msgSend_objectForKeyedSubscript_(v27, v93, @"CFBundleName");
      }

      v34 = v95;
    }

    objc_msgSend_setBrowserDisplayName_(v11, v33, v34);
    v96 = v30;
    v36 = objc_msgSend_objectForKeyedSubscript_(v30, v35, @"CKBrowserShortDisplayName");
    v38 = v36;
    if (v36)
    {
      v39 = v36;
    }

    else
    {
      v40 = objc_msgSend_objectForKeyedSubscript_(v27, v37, @"CKBrowserShortDisplayName");
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v34;
      }

      v39 = v42;
    }

    objc_msgSend_setBrowserShortDisplayName_(v11, v43, v39);
    v45 = objc_msgSend_objectForKey_(v27, v44, @"MSHideInAppDrawer");
    v48 = objc_msgSend_BOOLValue(v45, v46, v47);

    if (v48)
    {
      objc_msgSend_setShowInBrowser_(v11, v49, 0);
      objc_msgSend_setShowInSendMenu_(v11, v50, 0);
    }

    v51 = objc_msgSend_objectForKey_(v27, v49, @"MSCanSendDataPayloads");
    v54 = objc_msgSend_BOOLValue(v51, v52, v53);

    if (v54)
    {
      objc_msgSend_setCanSendDataPayloads_(v11, v55, 1);
    }

    v56 = objc_msgSend_objectForKey_(v27, v55, @"MSShouldBalloonHideAppIcon");
    v59 = objc_msgSend_BOOLValue(v56, v57, v58);

    if (v59)
    {
      objc_msgSend_setShouldBalloonHideAppIcon_(v11, v60, 1);
    }

    v61 = objc_msgSend_objectForKey_(v27, v60, @"MSShouldBreadcrumbHideAppIcon");
    v64 = objc_msgSend_BOOLValue(v61, v62, v63);

    if (v64)
    {
      objc_msgSend_setShouldBreadcrumbHideAppIcon_(v11, v65, 1);
    }

    v66 = objc_msgSend_objectForKey_(v27, v65, @"MSShouldHideAppSwitcher");
    v69 = objc_msgSend_BOOLValue(v66, v67, v68);

    if (v69)
    {
      objc_msgSend_setShouldHideAppSwitcher_(v11, v70, 1);
    }

    v71 = objc_msgSend_objectForKey_(v27, v70, @"MSPrefersNoLoadingBubbles");
    v74 = objc_msgSend_BOOLValue(v71, v72, v73);

    if (v74)
    {
      objc_msgSend_setPrefersNoLoadingBubbles_(v11, v75, 1);
    }

    v76 = objc_msgSend_objectForKey_(v27, v75, @"MSSupportedPresentationContexts");
    v78 = objc_msgSend_presentationContextsForInfoPlistArray_(v11, v77, v76);
    objc_msgSend_setPresentationContexts_(v11, v79, v78);
    v81 = objc_msgSend_objectForKey_(v27, v80, @"NSStickerSharingLevel");
    if (objc_msgSend_length(v81, v82, v83))
    {
      if (objc_msgSend_caseInsensitiveCompare_(@"Messages", v84, v81))
      {
        if (!objc_msgSend_caseInsensitiveCompare_(@"OS", v85, v81))
        {
          objc_msgSend_setStickerSharingLevel_(v11, v84, 0);
        }
      }

      else
      {
        objc_msgSend_setStickerSharingLevel_(v11, v85, 1);
      }
    }

    v86 = objc_msgSend_objectForKey_(v27, v84, @"MSHideAttributionInformation");
    v89 = objc_msgSend_BOOLValue(v86, v87, v88);

    if (v89)
    {
      objc_msgSend_setShouldHideAttributionInformation_(v11, v90, 1);
    }
  }

  return v11;
}

- (void)_loadAppBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83555F0;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  if (self->_pluginLoadToken != -1)
  {
    dispatch_once(&self->_pluginLoadToken, block);
  }
}

- (void)_loadBundle
{
  v2.receiver = self;
  v2.super_class = _IMBalloonBundleApp;
  [(IMBalloonApp *)&v2 _loadBundle];
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

@end