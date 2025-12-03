@interface IMBalloonAppExtension
- (BOOL)canSendDataPayloads;
- (BOOL)isBetaPlugin;
- (BOOL)isLaunchProhibited;
- (BOOL)shouldBalloonHideAppIcon;
- (BOOL)shouldBreadcrumbHideAppIcon;
- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle appBundle:(id)appBundle;
- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle extension:(id)extension;
- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle pluginKitProxy:(id)proxy extension:(id)extension;
- (NSNumber)itemID;
- (PKPlugIn)plugin;
- (id)_initWithPluginBundle:(id)bundle extension:(id)extension pluginKitProxyClass:(Class)class;
- (id)version;
@end

@implementation IMBalloonAppExtension

- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle pluginKitProxy:(id)proxy extension:(id)extension
{
  proxyCopy = proxy;
  bundleCopy = bundle;
  v12 = objc_msgSend_appWithPluginBundle_pluginKitProxy_extension_(IMBalloonApp, v11, bundleCopy, proxyCopy, extension);
  v15.receiver = self;
  v15.super_class = IMBalloonAppExtension;
  v13 = [(IMBalloonPlugin *)&v15 initWithBundle:bundleCopy app:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_proxy, proxy);
  }

  return v13;
}

- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle extension:(id)extension
{
  sub_1A84E8A78(v4);
  v8 = *(v7 + 1656);
  v10 = v9;
  bundleCopy = bundle;
  v12 = objc_opt_class();
  v14 = objc_msgSend__initWithPluginBundle_extension_pluginKitProxyClass_(self, v13, bundleCopy, v10, v12);

  return v14;
}

- (id)_initWithPluginBundle:(id)bundle extension:(id)extension pluginKitProxyClass:(Class)class
{
  bundleCopy = bundle;
  extensionCopy = extension;
  v12 = extensionCopy;
  if (extensionCopy)
  {
    v13 = objc_msgSend_identifier(extensionCopy, v10, v11);
    v15 = objc_msgSend_pluginKitProxyForIdentifier_(class, v14, v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_msgSend_initWithPluginBundle_pluginKitProxy_extension_(self, v10, bundleCopy, v15, v12);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong((v16 + 152), extension);
    objc_storeStrong(v17 + 20, v15);
  }

  return v17;
}

- (IMBalloonAppExtension)initWithPluginBundle:(id)bundle appBundle:(id)appBundle
{
  appBundleCopy = appBundle;
  bundleCopy = bundle;
  v9 = objc_msgSend_appWithPluginBundle_appBundle_(IMBalloonApp, v8, bundleCopy, appBundleCopy);
  v30.receiver = self;
  v30.super_class = IMBalloonAppExtension;
  v10 = [(IMBalloonPlugin *)&v30 initWithBundle:bundleCopy app:v9];

  if (v10)
  {
    v13 = objc_msgSend_infoDictionary(appBundleCopy, v11, v12);
    v16 = objc_msgSend_browserImageName(v10, v14, v15);

    if (!v16)
    {
      v19 = objc_msgSend_objectForKey_(v13, v17, @"CKBrowserDisplayImageName");
      if (objc_msgSend_length(v19, v20, v21))
      {
        objc_msgSend_setBrowserImageName_(v10, v22, v19);
      }
    }

    v23 = objc_msgSend_browserImagePath(v10, v17, v18);

    if (!v23)
    {
      v25 = objc_msgSend_objectForKey_(v13, v24, @"kCKBrowserDisplayImagePath");
      if (objc_msgSend_length(v25, v26, v27))
      {
        objc_msgSend_setBrowserImagePath_(v10, v28, v25);
      }
    }
  }

  return v10;
}

- (id)version
{
  v3 = objc_msgSend_app(self, a2, v2);
  v6 = objc_msgSend_version(v3, v4, v5);

  return v6;
}

- (BOOL)isBetaPlugin
{
  v3 = objc_msgSend_app(self, a2, v2);
  isBetaPlugin = objc_msgSend_isBetaPlugin(v3, v4, v5);

  return isBetaPlugin;
}

- (PKPlugIn)plugin
{
  v3 = objc_msgSend_app(self, a2, v2);
  v6 = objc_msgSend_plugin(v3, v4, v5);

  return v6;
}

- (BOOL)shouldBalloonHideAppIcon
{
  v3 = objc_msgSend_app(self, a2, v2);
  shouldBalloonHideAppIcon = objc_msgSend_shouldBalloonHideAppIcon(v3, v4, v5);

  return shouldBalloonHideAppIcon;
}

- (BOOL)shouldBreadcrumbHideAppIcon
{
  v3 = objc_msgSend_app(self, a2, v2);
  shouldBreadcrumbHideAppIcon = objc_msgSend_shouldBreadcrumbHideAppIcon(v3, v4, v5);

  return shouldBreadcrumbHideAppIcon;
}

- (BOOL)isLaunchProhibited
{
  v3 = objc_msgSend_app(self, a2, v2);
  isLaunchProhibited = objc_msgSend_isLaunchProhibited(v3, v4, v5);

  return isLaunchProhibited;
}

- (NSNumber)itemID
{
  v3 = objc_msgSend_app(self, a2, v2);
  v6 = objc_msgSend_itemID(v3, v4, v5);

  return v6;
}

- (BOOL)canSendDataPayloads
{
  v3 = objc_msgSend_app(self, a2, v2);
  canSendDataPayloads = objc_msgSend_canSendDataPayloads(v3, v4, v5);

  return canSendDataPayloads;
}

@end