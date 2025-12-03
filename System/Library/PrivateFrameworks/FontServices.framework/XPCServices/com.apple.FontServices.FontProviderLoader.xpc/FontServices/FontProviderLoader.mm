@interface FontProviderLoader
- (BOOL)confirm:(id)confirm sceneID:(id)d;
- (BOOL)currentConnectionHasFontProviderEntitlement:(id *)entitlement withSuppressDialogEntitlement:(BOOL *)dialogEntitlement forUnitTest:(BOOL *)test;
- (BOOL)isDeviceInEduMode;
- (BOOL)isFileURL:(id)l forApplicationBundlePath:(id)path;
- (BOOL)isOnDemandResourceFile:(id)file;
- (id)basePathForODRContentAssetPack;
- (id)fontDescriptorAttributesArrayFromFontInfoDictionary:(id)dictionary;
- (id)systemContainerURL;
- (void)doneWithInstallFonts:(BOOL)fonts;
- (void)unregisterFonts:(id)fonts appInfo:(id)info completionHandler:(id)handler;
- (void)updateAppInfo:(id)info;
@end

@implementation FontProviderLoader

- (BOOL)currentConnectionHasFontProviderEntitlement:(id *)entitlement withSuppressDialogEntitlement:(BOOL *)dialogEntitlement forUnitTest:(BOOL *)test
{
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v10 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);

  if (v10)
  {
    v11 = SecTaskCopyValueForEntitlement(v10, @"com.apple.developer.user-fonts", 0);
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFArrayGetTypeID())
      {
        v25.length = CFArrayGetCount(v12);
        v25.location = 0;
        v14 = CFArrayContainsValue(v12, v25, @"system-installation") != 0;
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v12);
    }

    else
    {
      v14 = 0;
    }

    v17 = SecTaskCopySigningIdentifier(v10, 0);
    v15 = [(__CFString *)v17 isEqualToString:@"com.apple.xctest"];
    if (v15)
    {
      FSLog_Debug();
      v14 = 1;
    }

    if (entitlement && v14)
    {
      v18 = v17;
      *entitlement = v17;
    }

    if (dialogEntitlement)
    {
      v19 = v15;
    }

    else
    {
      v19 = 1;
    }

    v16 = v15;
    if ((v19 & 1) == 0)
    {
      v20 = SecTaskCopyValueForEntitlement(v10, @"com.apple.FontServices.skip-install-dialog", 0);
      if (v20)
      {
        v21 = v20;
        v22 = CFGetTypeID(v20);
        v16 = v22 == CFBooleanGetTypeID() && CFBooleanGetValue(v21) != 0;
        CFRelease(v21);
      }

      else
      {
        v16 = 0;
      }
    }

    CFRelease(v10);

    if (dialogEntitlement)
    {
      goto LABEL_29;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v16 = 0;
    LOBYTE(v14) = 0;
    if (dialogEntitlement)
    {
LABEL_29:
      *dialogEntitlement = v16;
    }
  }

  if (test)
  {
    *test = v15;
  }

  return v14;
}

- (BOOL)confirm:(id)confirm sceneID:(id)d
{
  confirmCopy = confirm;
  if (objc_opt_class())
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 integerForKey:@"InstallDialogSuppressInterval"];
    if (v7 >= 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 3600;
    }

    v9 = [v6 objectForKey:@"InstallDialogLastTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:confirmCopy];
      if (v10)
      {
        v11 = v10;
        [v10 timeIntervalSinceNow];
        v13 = -v12;

        if (v13 < v8)
        {
          self->_result = 1;
          p_result = &self->_result;
LABEL_19:
          if (v9)
          {
            v38 = [v9 mutableCopy];
          }

          else
          {
            v38 = [NSMutableDictionary dictionaryWithCapacity:0];
          }

          v39 = v38;
          v40 = +[NSDate now];
          [v39 setObject:v40 forKey:confirmCopy];

          [v6 setObject:v39 forKey:@"InstallDialogLastTime"];
          CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);

LABEL_26:
          v15 = *p_result;
          goto LABEL_27;
        }
      }
    }

    else
    {

      v9 = 0;
    }

    v16 = [RBSProcessPredicate predicateMatchingBundleIdentifier:confirmCopy];
    v45 = 0;
    v17 = [RBSProcessHandle handleForPredicate:v16 error:&v45];
    v18 = v45;
    v19 = v18;
    if (!v17 || v18)
    {
      FSLog_Error();
    }

    else
    {
      v44 = v6;
      currentState = [v17 currentState];
      endowmentNamespaces = [currentState endowmentNamespaces];
      v22 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

      if (v22)
      {
        if (qword_10000CCC0 != -1)
        {
          sub_100003294();
        }

        dispatch_semaphore_wait(qword_10000CCB8, 0xFFFFFFFFFFFFFFFFLL);
        v23 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.FontInstallViewService" viewControllerClassName:@"FontInstallMainController"];
        v24 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
        v25 = +[NSXPCListener anonymousListener];
        serviceDelegate = self->_serviceDelegate;
        if (!serviceDelegate)
        {
          v27 = [[FontProviderViewServiceDelegate alloc] initWithFontProviderLoader:self];
          v28 = self->_serviceDelegate;
          self->_serviceDelegate = v27;

          serviceDelegate = self->_serviceDelegate;
        }

        [v25 setDelegate:serviceDelegate];
        endpoint = [v25 endpoint];
        _endpoint = [endpoint _endpoint];
        [v24 setXpcEndpoint:_endpoint];

        v30 = [SBSRemoteAlertHandle newHandleWithDefinition:v23 configurationContext:v24];
        v42 = v23;
        v31 = v24;
        v32 = objc_alloc_init(SBSRemoteAlertActivationContext);
        v46 = @"identifier";
        v47 = confirmCopy;
        v33 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        [v32 setUserInfo:v33];
        v34 = dispatch_semaphore_create(0);
        alertSemaphore = self->_alertSemaphore;
        self->_alertSemaphore = v34;

        [v25 resume];
        [v30 activateWithContext:v32];
        dispatch_semaphore_wait(self->_alertSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        v36 = self->_alertSemaphore;
        self->_alertSemaphore = 0;

        dispatch_semaphore_signal(qword_10000CCB8);
        v37 = self->_result;
        p_result = &self->_result;
        v6 = v44;
        if (!v37)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v6 = v44;
    }

    FSLog();
    self->_result = 0;

    v15 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v15 = 0;
  self->_result = 0;
LABEL_28:

  return v15;
}

- (void)doneWithInstallFonts:(BOOL)fonts
{
  NSLog(@"FontProviderLoader - done:%d", a2, fonts);
  self->_result = fonts;
  alertSemaphore = self->_alertSemaphore;
  if (alertSemaphore)
  {

    dispatch_semaphore_signal(alertSemaphore);
  }
}

- (BOOL)isDeviceInEduMode
{
  if (qword_10000CCD0 != -1)
  {
    sub_1000032BC();
  }

  return byte_10000CCC8;
}

- (id)systemContainerURL
{
  if (qword_10000CCE0 != -1)
  {
    sub_1000032D0();
  }

  v3 = qword_10000CCD8;

  return v3;
}

- (id)basePathForODRContentAssetPack
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001C28;
  block[3] = &unk_1000083B0;
  block[4] = self;
  if (qword_10000CCF0 != -1)
  {
    dispatch_once(&qword_10000CCF0, block);
  }

  return qword_10000CCE8;
}

- (BOOL)isOnDemandResourceFile:(id)file
{
  path = [file path];
  basePathForODRContentAssetPack = [(FontProviderLoader *)self basePathForODRContentAssetPack];
  v6 = [path hasPrefix:basePathForODRContentAssetPack];

  return v6;
}

- (BOOL)isFileURL:(id)l forApplicationBundlePath:(id)path
{
  pathCopy = path;
  path = [l path];
  v7 = [path hasPrefix:pathCopy];

  return v7;
}

- (void)unregisterFonts:(id)fonts appInfo:(id)info completionHandler:(id)handler
{
  fontsCopy = fonts;
  infoCopy = info;
  handlerCopy = handler;
  v31 = 0;
  v30 = 0;
  v11 = [(FontProviderLoader *)self currentConnectionHasFontProviderEntitlement:&v30 withSuppressDialogEntitlement:0 forUnitTest:&v31];
  v12 = v30;
  v13 = 0;
  if (v11)
  {
    v14 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];
    v15 = [v14 URL];
    path = [v15 path];

    v13 = path != 0;
  }

  if ((v31 & 1) != 0 || v13)
  {
    v24 = [NSMutableArray arrayWithCapacity:0];
    [NSMutableArray arrayWithCapacity:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100002C24;
    v29 = v28[3] = &unk_100008450;
    v18 = v29;
    [fontsCopy enumerateObjectsUsingBlock:v28];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100002CF8;
    v25[3] = &unk_100008428;
    v26 = v24;
    v27 = handlerCopy;
    v22 = v24;
    [FSUserFontManager uninstallFonts:v18 forIdentifier:v12 appInfo:infoCopy completionHandler:v25];

    v23 = v29;
  }

  else
  {
    v17 = [fontsCopy count];
    v18 = [NSMutableArray arrayWithCapacity:v17];
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v20 = [NSNumber numberWithUnsignedInteger:i];
        [v18 addObject:v20];
      }
    }

    v33 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
    v34 = v18;
    v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v22 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:2 userInfo:v21];

    v32 = v22;
    v23 = [NSArray arrayWithObjects:&v32 count:1];
    (*(handlerCopy + 2))(handlerCopy, v23, 0);
  }
}

- (id)fontDescriptorAttributesArrayFromFontInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"providedInfo"];
  v5 = [v4 objectForKey:@"CTFontRegistrationUserInfoAttribute"];
  v6 = [v4 objectForKey:@"NSCTFontFileURLAttribute"];
  v7 = [dictionaryCopy objectForKey:@"familyName"];

  if (v7)
  {
    v8 = [NSMutableArray arrayWithCapacity:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002EF8;
    v13[3] = &unk_100008478;
    v14 = v5;
    v15 = v6;
    v9 = v8;
    v16 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v10 = v16;
    v11 = v9;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (void)updateAppInfo:(id)info
{
  infoCopy = info;
  v8 = 0;
  v7 = 0;
  v5 = [(FontProviderLoader *)self currentConnectionHasFontProviderEntitlement:&v7 withSuppressDialogEntitlement:0 forUnitTest:&v8];
  v6 = v7;
  if (v5)
  {
    [FSUserFontManager updateAppInfo:infoCopy forIdentifier:v6];
  }
}

@end