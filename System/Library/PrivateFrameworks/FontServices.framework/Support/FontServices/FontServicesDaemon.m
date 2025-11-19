@interface FontServicesDaemon
+ (id)sharedDaemon;
- (BOOL)isCurrentConnectionFontPicker;
- (BOOL)isIdentifierAllowedForFontEnumeration:(id)a3;
- (BOOL)isKnownFamilyName:(id)a3 withEnabledState:(BOOL *)a4;
- (BOOL)isUserFontInstalled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FontServicesDaemon)init;
- (NSDictionary)userFontsInfo;
- (OS_dispatch_queue)assetHandlerQueue;
- (OS_dispatch_queue)scheduledFontDeletionQueue;
- (OS_dispatch_queue)subscriptionSupportQueue;
- (id)_userFontsInfoFromDisk;
- (id)displayLayoutMonitorWithHandler:(id)a3;
- (id)filterUserFontInfoForAuditToken:(id *)a3 withEnumerationCapability:(BOOL)a4 withFilter:(id)a5;
- (id)identifierFromFilePath:(id)a3;
- (id)issuedFontFilePathsForIdentifier:(id)a3;
- (id)knownFamilyNameFromPostScriptName:(id)a3 withEnabledState:(BOOL *)a4;
- (id)missingFontsDialogRequestsFromDisabledFamilyNames:(id)a3;
- (id)missingFontsDialogRequestsFromUnknownFontNames:(id)a3;
- (id)providerIdentifiersAndFamilyName:(id *)a3 fromPostScriptName:(id)a4;
- (id)providerIdentifiersFromFamilyName:(id)a3;
- (id)sandboxExtensionForEnumeration:(id *)a3;
- (id)sandboxExtensionForFontAssets:(id *)a3;
- (id)sandboxExtensionForProvider:(id *)a3 withDirectoryName:(id)a4;
- (id)sanitizeIssuedFontPaths:(id)a3;
- (id)unknownFontNamesAndEnabledFamilyNames:(id *)a3 andDisabledFamilyNames:(id *)a4 fromRequests:(id)a5;
- (unint64_t)countFontAssets;
- (void)accessFontAsset:(id)a3;
- (void)analyticsEventRequestFonts:(id)a3 misses:(unint64_t)a4 suggestions:(unint64_t)a5 resolved:(unint64_t)a6;
- (void)capabilitiesFor:(id *)a3 allowEnumerate:(BOOL *)a4 allowUserFonts:(BOOL *)a5 allowInstallation:(BOOL *)a6 andIdentifier:(id *)a7;
- (void)executeScheduledFontFilesDeletion:(id)a3;
- (void)extractRequestFontsMissed:(unint64_t *)a3 andResolved:(unint64_t *)a4;
- (void)fontChanged:(id)a3 reply:(id)a4;
- (void)forgetClientApplication:(id)a3;
- (void)invalidateUserFonts;
- (void)recordIssuedFontPaths:(id)a3 forIdentifier:(id)a4;
- (void)recordRequestFontsResultWihtMissed:(BOOL)a3 andResolved:(BOOL)a4;
- (void)recordSuspendedProvider:(id)a3 url:(id)a4 andScheme:(id)a5 forDate:(id)a6;
- (void)recordWarnedForIdenntifier:(id)a3;
- (void)removeDeprecatedFontAsset;
- (void)requestFonts:(id)a3 forClient:(id)a4 reply:(id)a5;
- (void)requestFonts:(id)a3 sceneID:(id)a4 reply:(id)a5;
- (void)resetIssuedFontsFor:(id)a3 reply:(id)a4;
- (void)resetWarnedForIdenntifier:(id)a3;
- (void)resumeAndShowAlertForSuspendedFontProviders:(id)a3;
- (void)scheduleFontFilesDeletion:(id)a3;
- (void)setFontFilesDeletionTimer:(unsigned int)a3;
- (void)setup;
- (void)setupForAssetNotifications;
- (void)setupForDistributedNotifications;
- (void)setupForMonitoringFontAssets;
- (void)setupForScheduledFontDeletion;
- (void)setupForXPCService;
- (void)setupUserInstalledFontsFor:(id *)a3 withCapabilitiesFor:(id *)a4 hasEnumeration:(BOOL)a5 hasFontAccess:(BOOL)a6 isFontProvider:(BOOL)a7 processIdentifier:(id)a8 options:(id)a9 compat:(BOOL *)a10 reply:(id)a11;
- (void)stopFontFilesDeletionTimer;
- (void)subscriptionSupportTimerHandler;
- (void)synchronizeFontAssets:(id)a3 reply:(id)a4;
- (void)synchronizeFontProviders;
- (void)updatingUserFonts:(id)a3;
- (void)warnAboutSuspendedFontProviders:(id)a3;
@end

@implementation FontServicesDaemon

- (NSDictionary)userFontsInfo
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(FontServicesDaemon *)v2 isUserFontInstalled])
  {
    v3 = v2->_userFontsInfo;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isUserFontInstalled
{
  v2 = self;
  objc_sync_enter(v2);
  userFontsInfo = v2->_userFontsInfo;
  if (!userFontsInfo)
  {
    v4 = [(FontServicesDaemon *)v2 _userFontsInfoFromDisk];
    v5 = v2->_userFontsInfo;
    v2->_userFontsInfo = v4;

    userFontsInfo = v2->_userFontsInfo;
    if (!userFontsInfo)
    {
      v2->_userFontsInfo = &__NSDictionary0__struct;

      userFontsInfo = v2->_userFontsInfo;
    }
  }

  v6 = [(NSDictionary *)userFontsInfo count]!= 0;
  objc_sync_exit(v2);

  return v6;
}

- (FontServicesDaemon)init
{
  v6.receiver = self;
  v6.super_class = FontServicesDaemon;
  v2 = [(FontServicesDaemon *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.fontservicesd", 0);
    mainHandlerQueue = v2->_mainHandlerQueue;
    v2->_mainHandlerQueue = v3;
  }

  return v2;
}

+ (id)sharedDaemon
{
  if (qword_10001D880 != -1)
  {
    sub_10000CFBC();
  }

  v3 = qword_10001D878;

  return v3;
}

- (void)invalidateUserFonts
{
  obj = self;
  objc_sync_enter(obj);
  userFontsInfo = obj->_userFontsInfo;
  obj->_userFontsInfo = 0;

  objc_sync_exit(obj);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = qword_10001D898;
  v6 = a4;
  if (v5 != -1)
  {
    sub_10000CFD0();
  }

  [v6 setExportedInterface:qword_10001D888];
  v7 = [[FontServicesHandler alloc] initWithFontServivesDaemon:self];
  [v6 setExportedObject:v7];
  [v6 setRemoteObjectInterface:qword_10001D890];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001594;
  v10[3] = &unk_100018688;
  v11 = v7;
  v8 = v7;
  [v6 setInvalidationHandler:v10];
  [(FontServicesHandler *)v8 setClientConnection:v6];
  [v6 resume];

  return 1;
}

- (id)filterUserFontInfoForAuditToken:(id *)a3 withEnumerationCapability:(BOOL)a4 withFilter:(id)a5
{
  v8 = a5;
  v9 = [NSMutableDictionary dictionaryWithCapacity:0];
  v10 = *&a3->var0[4];
  v22[0] = *a3->var0;
  v22[1] = v10;
  v11 = [(FontServicesDaemon *)self isAuditTokenSandboxed:v22];
  v12 = [(FontServicesDaemon *)self userFontsInfo];
  if (v12)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001708;
    v15[3] = &unk_1000186B0;
    v17 = v8;
    v20 = v11;
    v21 = a4;
    v13 = *&a3->var0[4];
    v18 = *a3->var0;
    v19 = v13;
    v16 = v9;
    [v12 enumerateKeysAndObjectsUsingBlock:v15];
  }

  return v9;
}

- (BOOL)isIdentifierAllowedForFontEnumeration:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(FontServicesDaemon *)self fontEnumerationProhibitedInfo];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) objectForKey:v4];
        if (v10)
        {
          v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
          v12 = [v11 shortVersionString];
          if ([v10 containsObject:v12])
          {
            NSLog(@"This process is not allowed to enumerate fonts - %@", v4);

            v13 = 0;
            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (void)capabilitiesFor:(id *)a3 allowEnumerate:(BOOL *)a4 allowUserFonts:(BOOL *)a5 allowInstallation:(BOOL *)a6 andIdentifier:(id *)a7
{
  v12 = *&a3->var0[4];
  *v28.val = *a3->var0;
  *&v28.val[4] = v12;
  v13 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v28);
  if (v13)
  {
    v14 = v13;
    v15 = SecTaskCopyValueForEntitlement(v13, @"com.apple.developer.user-fonts", 0);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v16);
        v29.location = 0;
        v29.length = Count;
        v19 = CFArrayContainsValue(v16, v29, @"font-enumeration") != 0;
        v30.location = 0;
        v30.length = Count;
        v20 = CFArrayContainsValue(v16, v30, @"system-installation") != 0;
        v31.location = 0;
        v31.length = Count;
        v21 = CFArrayContainsValue(v16, v31, @"app-usage") != 0;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v19 = 0;
      }

      CFRelease(v16);
    }

    else
    {
      v21 = 0;
      v20 = 0;
      v19 = 0;
    }

    v24 = SecTaskCopySigningIdentifier(v14, 0);
    v22 = v24;
    if (v19)
    {
      if (!v24)
      {
        v23 = 0;
        goto LABEL_14;
      }

      v26 = [(FontServicesDaemon *)self isIdentifierAllowedForFontEnumeration:v24];
    }

    else
    {
      v26 = sub_100001060(v24, v25);
    }

    v23 = v26;
LABEL_14:
    CFRelease(v14);
    goto LABEL_15;
  }

  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
LABEL_15:
  *a4 = v23;
  *a5 = v21;
  *a6 = v20;
  v27 = v22;
  *a7 = v22;
}

- (BOOL)isCurrentConnectionFontPicker
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v9);

  if (!v4)
  {
    return 0;
  }

  v5 = SecTaskCopySigningIdentifier(v4, 0);
  if (v5)
  {
    v6 = v5;
    if (CFEqual(v5, @"com.apple.UIKit.FontPickerUIService"))
    {
      v7 = 1;
    }

    else
    {
      v7 = CFEqual(v6, @"com.apple.UIKit.FontPicker") != 0;
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (id)sandboxExtensionForEnumeration:(id *)a3
{
  v5 = *a3;
  v3 = sandbox_extension_issue_file_to_process();
  if (v3)
  {
    v3 = [NSData dataWithBytesNoCopy:v3 length:strlen(v3) + 1 freeWhenDone:1, *v5.var0, *&v5.var0[4]];
  }

  return v3;
}

- (id)sandboxExtensionForFontAssets:(id *)a3
{
  v4 = sub_10000112C();
  v5 = [v4 UTF8String];
  v10 = *a3;
  v9 = v5;
  if (sandbox_check_by_audit_token())
  {
    v11 = *a3->var0;
    v12 = *&a3->var0[4];
    v6 = sandbox_extension_issue_file_to_process();
    v7 = v6;
    if (v6)
    {
      v7 = [NSData dataWithBytesNoCopy:v6 length:strlen(v6) + 1 freeWhenDone:1, v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sandboxExtensionForProvider:(id *)a3 withDirectoryName:(id)a4
{
  v5 = [NSString stringWithFormat:@"/var/mobile/Library/UserFonts/FontFiles/%@", a4];
  v6 = [v5 UTF8String];
  if (v6 && (v11 = *a3->var0, v13 = *&a3->var0[4], v10 = v6, sandbox_check_by_audit_token()))
  {
    v12 = *a3->var0;
    v14 = *&a3->var0[4];
    v7 = sandbox_extension_issue_file_to_process();
    v8 = v7;
    if (v7)
    {
      v8 = [NSData dataWithBytesNoCopy:v7 length:strlen(v7) + 1 freeWhenDone:1, v10];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setupUserInstalledFontsFor:(id *)a3 withCapabilitiesFor:(id *)a4 hasEnumeration:(BOOL)a5 hasFontAccess:(BOOL)a6 isFontProvider:(BOOL)a7 processIdentifier:(id)a8 options:(id)a9 compat:(BOOL *)a10 reply:(id)a11
{
  v12 = a6;
  v16 = a8;
  v17 = a9;
  v18 = a11;
  if (a5 || a7 || v12)
  {
    v27 = [(FontServicesDaemon *)self mainHandlerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v28 = *&a3->var0[4];
    v43 = *a3->var0;
    block[2] = sub_100002714;
    block[3] = &unk_100018728;
    v45 = a5;
    v46 = a7;
    block[4] = self;
    v44 = v28;
    v47 = v12;
    v41 = v16;
    v42 = v18;
    dispatch_sync(v27, block);

    goto LABEL_17;
  }

  v19 = [v17 objectForKeyedSubscript:@"compat1"];
  v20 = [v19 BOOLValue];

  if (!v20)
  {
LABEL_11:
    (*(v18 + 2))(v18, 0);
    goto LABEL_17;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100002A28;
  v38 = sub_100002A38;
  v39 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100002A40;
  v31[3] = &unk_100018750;
  v33 = &v34;
  v32 = v16;
  v21 = *&a3->var0[4];
  v30[0] = *a3->var0;
  v30[1] = v21;
  v22 = [(FontServicesDaemon *)self filterUserFontInfoForAuditToken:v30 withEnumerationCapability:0 withFilter:v31];
  if (![v22 count])
  {

    _Block_object_dispose(&v34, 8);
    goto LABEL_11;
  }

  v23 = objc_opt_new();
  [v23 setObject:v22 forKey:@"fontsInfo"];
  [v23 setObject:&__kCFBooleanTrue forKey:@"hide-profilefonts"];
  if (v35[5])
  {
    v24 = [NSFileHandle fileHandleForReadingAtPath:?];
    v25 = v24;
    if (v24)
    {
      v48 = v35[5];
      v49 = v24;
      v26 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      [v23 setObject:v26 forKey:@"fontData"];
    }

    else
    {
      v29 = v35[5];
      FSLog_Error();
    }
  }

  (*(v18 + 2))(v18, v23);
  if (a10)
  {
    *a10 = 1;
  }

  _Block_object_dispose(&v34, 8);
LABEL_17:
}

- (id)knownFamilyNameFromPostScriptName:(id)a3 withEnabledState:(BOOL *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100002A28;
  v23 = sub_100002A38;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(FontServicesDaemon *)self userFontsInfo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002D78;
  v11[3] = &unk_100018778;
  v8 = v6;
  v12 = v8;
  v13 = &v19;
  v14 = &v15;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  if (a4)
  {
    *a4 = *(v16 + 24);
  }

  v9 = v20[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (BOOL)isKnownFamilyName:(id)a3 withEnabledState:(BOOL *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(FontServicesDaemon *)self userFontsInfo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002F88;
  v11[3] = &unk_100018778;
  v8 = v6;
  v12 = v8;
  v13 = &v19;
  v14 = &v15;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  if (a4)
  {
    *a4 = *(v16 + 24);
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (id)unknownFontNamesAndEnabledFamilyNames:(id *)a3 andDisabledFamilyNames:(id *)a4 fromRequests:(id)a5
{
  v6 = a5;
  v33 = [NSMutableSet setWithCapacity:0];
  v32 = [NSMutableSet setWithCapacity:0];
  v30 = [NSMutableSet setWithCapacity:0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = _kCTFontFamilyNameAttribute;
    v11 = _kCTFontNameAttribute;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v14 = [v13 objectForKey:v10];
        v34 = 0;
        if (v14 && [(FontServicesDaemon *)self isKnownFamilyName:v14 withEnabledState:&v34])
        {
          if (v34)
          {
            v15 = v33;
          }

          else
          {
            v15 = v32;
          }

          [v15 addObject:v14];
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        v17 = [v13 objectForKey:v11];
        if (v17)
        {
          v18 = [(FontServicesDaemon *)self knownFamilyNameFromPostScriptName:v17 withEnabledState:&v34];
          if (!v18)
          {
            if (v16)
            {
              goto LABEL_28;
            }

            if (v14)
            {
LABEL_26:
              v22 = v30;
              v23 = v14;
            }

            else
            {
              v22 = v30;
              v23 = v17;
            }

            [v22 addObject:v23];
            goto LABEL_28;
          }

          v19 = v18;
          if (v34)
          {
            v20 = v33;
          }

          else
          {
            v20 = v32;
          }

          [v20 addObject:v19];
        }

        else
        {
          if (v14)
          {
            v21 = v16;
          }

          else
          {
            v21 = 1;
          }

          if ((v21 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_28:

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v24 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v8 = v24;
    }

    while (v24);
  }

  if (a3)
  {
    *a3 = [v33 allObjects];
  }

  if (a4)
  {
    [v32 minusSet:v33];
    *a4 = [v32 allObjects];
  }

  v25 = [v30 allObjects];
  v26 = [v25 sortedArrayUsingSelector:"compare:"];

  return v26;
}

- (id)identifierFromFilePath:(id)a3
{
  v3 = [a3 stringByDeletingLastPathComponent];
  v4 = [v3 lastPathComponent];

  v5 = [FSUserFontManager identifierFromDirectoryName:v4];

  return v5;
}

- (id)providerIdentifiersFromFamilyName:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithCapacity:0];
  v6 = [(FontServicesDaemon *)self userFontsInfo];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000349C;
  v12[3] = &unk_1000187A0;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)providerIdentifiersAndFamilyName:(id *)a3 fromPostScriptName:(id)a4
{
  v6 = a4;
  v7 = [NSMutableSet setWithCapacity:0];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100002A28;
  v23 = sub_100002A38;
  v24 = 0;
  v8 = [(FontServicesDaemon *)self userFontsInfo];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000036D8;
  v14[3] = &unk_1000187F0;
  v9 = v6;
  v18 = &v19;
  v15 = v9;
  v16 = self;
  v10 = v7;
  v17 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  *a3 = v20[5];
  v11 = v17;
  v12 = v10;

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (id)missingFontsDialogRequestsFromDisabledFamilyNames:(id)a3
{
  v4 = a3;
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      v23 = v8;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [(FontServicesDaemon *)self providerIdentifiersFromFamilyName:v11, v23];
        if (v12)
        {
          v13 = [v5 objectForKey:v11];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 objectForKey:@"providers"];
            [v15 unionSet:v12];
          }

          else
          {
            v15 = [NSMutableDictionary dictionaryWithCapacity:0];
            [v15 setObject:v11 forKey:@"displayName"];
            v16 = v9;
            v17 = self;
            v18 = v5;
            v19 = v6;
            v20 = [v12 mutableCopy];
            [v15 setObject:v20 forKey:@"providers"];

            v6 = v19;
            v5 = v18;
            self = v17;
            v9 = v16;
            v8 = v23;
            [v15 setObject:v11 forKey:@"uniqueID"];
            [v5 setObject:v15 forKey:v11];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  [NSMutableArray arrayWithCapacity:0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003B1C;
  v21 = v24[3] = &unk_100018818;
  v25 = v21;
  [v5 enumerateKeysAndObjectsUsingBlock:v24];

  return v21;
}

- (id)missingFontsDialogRequestsFromUnknownFontNames:(id)a3
{
  v3 = a3;
  v4 = [NSMutableArray arrayWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v17[0] = @"displayName";
        v17[1] = @"providers";
        v18[0] = v10;
        v18[1] = &__NSArray0__struct;
        v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2, v13];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)sanitizeIssuedFontPaths:(id)a3
{
  v4 = a3;
  v5 = [(FontServicesDaemon *)self userFontsInfo];
  v6 = [v5 allKeys];
  v7 = [NSSet setWithArray:v6];

  v8 = sub_10000106C();
  v9 = sub_10000112C();
  v10 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if ([v7 containsObject:{v16, v25}])
        {
          v17 = v16;
          if ([v17 hasPrefix:v8])
          {
            v18 = [v8 length];
            v19 = v17;
            v20 = v8;
            v21 = @"U/";
            goto LABEL_11;
          }

          if ([v17 hasPrefix:v9])
          {
            v18 = [v9 length];
            v19 = v17;
            v20 = v9;
            v21 = @"A/";
LABEL_11:
            v22 = [v19 stringByReplacingOccurrencesOfString:v20 withString:v21 options:0 range:{0, v18}];

            v17 = v22;
          }

          [v10 addObject:v17];

          continue;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v23 = [v10 allObjects];

  return v23;
}

- (void)recordIssuedFontPaths:(id)a3 forIdentifier:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 dictionaryForKey:@"issues"];
    v9 = [v8 mutableCopy];

    if (!v9)
    {
      v9 = objc_opt_new();
    }

    v10 = [NSMutableArray arrayWithArray:v17];
    v11 = [v9 objectForKey:v6];
    if (v11)
    {
      v12 = [(FontServicesDaemon *)self issuedFontFilePathsForIdentifier:v6];
      [v10 addObjectsFromArray:v12];

      v13 = [(FontServicesDaemon *)self sanitizeIssuedFontPaths:v10];
      v14 = [NSSet setWithArray:v13];
      v15 = [NSSet setWithArray:v11];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [(FontServicesDaemon *)self sanitizeIssuedFontPaths:v10];
    }

    [v9 setObject:v13 forKey:v6];
    [v7 setObject:v9 forKey:@"issues"];
    [v7 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
LABEL_9:
  }
}

- (id)issuedFontFilePathsForIdentifier:(id)a3
{
  v3 = a3;
  v22 = +[NSUserDefaults standardUserDefaults];
  v4 = [v22 dictionaryForKey:@"issues"];
  v5 = [v4 mutableCopy];

  v21 = v5;
  v23 = v3;
  v6 = [v5 objectForKey:v3];
  v7 = sub_10000106C();
  v24 = sub_10000112C();
  v8 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([v14 hasPrefix:@"U/"])
        {
          v15 = [@"U/" length];
          v16 = v14;
          v17 = @"U/";
          v18 = v7;
        }

        else
        {
          if (![v14 hasPrefix:@"A/"])
          {
            goto LABEL_11;
          }

          v15 = [@"A/" length];
          v16 = v14;
          v17 = @"A/";
          v18 = v24;
        }

        v19 = [v16 stringByReplacingOccurrencesOfString:v17 withString:v18 options:0 range:{0, v15}];

        v14 = v19;
LABEL_11:
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)forgetClientApplication:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19[0] = @"issues";
    v19[1] = @"suspended";
    v19[2] = @"warned";
    v5 = [NSArray arrayWithObjects:v19 count:3, 0];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v4 dictionaryForKey:v11];
          v13 = [v12 objectForKey:v3];

          if (v13)
          {
            v14 = [v12 mutableCopy];
            [v14 removeObjectForKey:v3];
            [v4 setObject:v14 forKey:v11];

            v8 = 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);

      if (v8)
      {
        [v4 synchronize];
        CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
      }
    }

    else
    {
    }
  }
}

- (void)recordRequestFontsResultWihtMissed:(BOOL)a3 andResolved:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3 || a4)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    if (v5)
    {
      [v6 setInteger:objc_msgSend(v6 forKey:{"integerForKey:", @"missed", @"missed"}];
    }

    if (v4)
    {
      [v6 setInteger:objc_msgSend(v6 forKey:{"integerForKey:", @"resolved", @"resolved"}];
    }

    [v6 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

- (void)extractRequestFontsMissed:(unint64_t *)a3 andResolved:(unint64_t *)a4
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v6 = [v8 integerForKey:@"missed"];
  v7 = [v8 integerForKey:@"resolved"];
  if (v6 | v7)
  {
    [v8 setInteger:0 forKey:@"missed"];
    [v8 setInteger:0 forKey:@"resolved"];
    [v8 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }

  *a3 = v6;
  *a4 = v7;
}

- (void)requestFonts:(id)a3 sceneID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  memset(&v48, 0, sizeof(v48));
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(&v48, 0, sizeof(v48));
  }

  v13 = +[NSXPCConnection currentConnection];
  v14 = [v13 processIdentifier];

  v15 = +[FSUserFontManager resumeSuspendedFontFiles];
  token = v48;
  v16 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!v16)
  {
    v24 = 0;
    v18 = &stru_100019640;
LABEL_31:
    NSLog(@"Application %@ does not have an entitlement to use custom fonts.", v24);
    v10[2](v10, &__NSDictionary0__struct);
    goto LABEL_32;
  }

  v17 = v16;
  v18 = SecTaskCopySigningIdentifier(v16, 0);
  v19 = SecTaskCopyValueForEntitlement(v17, @"com.apple.developer.user-fonts", 0);
  if (!v19)
  {
    CFRelease(v17);
    v24 = 0;
    goto LABEL_31;
  }

  v20 = v19;
  v32 = v14;
  v33 = v9;
  v21 = CFGetTypeID(v19);
  if (v21 == CFArrayGetTypeID())
  {
    v49.length = CFArrayGetCount(v20);
    v49.location = 0;
    v22 = CFArrayContainsValue(v20, v49, @"font-enumeration") != 0;
    v50.length = CFArrayGetCount(v20);
    v50.location = 0;
    v23 = CFArrayContainsValue(v20, v50, @"app-usage") != 0;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  if (!v23)
  {
    v24 = 0;
    v22 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v25 = SecTaskCopySigningIdentifier(v17, 0);
  v24 = v25;
  if (v25)
  {
    v27 = v22;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v22 = sub_100001060(v25, v26);
  }

LABEL_19:
  CFRelease(v20);
  CFRelease(v17);
  if ((v22 & 1) == 0)
  {
    if (v24)
    {
      v31 = v23;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (!v24)
  {
LABEL_30:
    v9 = v33;
    goto LABEL_31;
  }

LABEL_21:
  if (qword_10001D8B0 != -1)
  {
    sub_10000CFE4();
  }

  if (atomic_fetch_add_explicit(dword_10001D8A0, 1u, memory_order_relaxed))
  {
    NSLog(@"Previous CTFontManagerRequestFonts call has not been resolved.  This call from %@ is blocked until the previous call is acknowledged by the user.", v24);
  }

  dispatch_semaphore_wait(qword_10001D8A8, 0xFFFFFFFFFFFFFFFFLL);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100004D8C;
  v44[3] = &unk_100018880;
  v45 = v15;
  v46 = self;
  v28 = objc_retainBlock(v44);
  FSLog_Debug();
  v29 = [(FontServicesDaemon *)self mainHandlerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E1C;
  block[3] = &unk_1000188F8;
  block[4] = self;
  v35 = v8;
  v41 = v48;
  v43 = v22;
  v24 = v24;
  v36 = v24;
  v42 = v32;
  v9 = v33;
  v37 = v33;
  v18 = v18;
  v38 = v18;
  v39 = v10;
  v40 = v28;
  v30 = v28;
  dispatch_sync(v29, block);

LABEL_32:
}

- (void)requestFonts:(id)a3 forClient:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = v9;
  v11 = [[NSXPCConnection alloc] initWithListenerEndpoint:v9];
  [v11 setInvalidationHandler:&stru_100018918];
  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontServicesFontPickerClientSupportProtocol];
  [v11 setRemoteObjectInterface:v12];
  [v11 resume];
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018958];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29 = 0;
  v22 = v8;
  v14 = [(FontServicesDaemon *)self providerIdentifiersAndFamilyName:&v29 fromPostScriptName:v8];
  v15 = v29;
  if (v15)
  {
    [v13 ping:&stru_100019640 reply:&stru_100018998];
    if (v11)
    {
      [v11 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100005AFC;
    v26[3] = &unk_100018700;
    v27 = v15;
    v16 = [(FontServicesDaemon *)self filterUserFontInfoForAuditToken:&token withEnumerationCapability:0 withFilter:v26];
    if ([v16 count])
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100005B4C;
      v23[3] = &unk_1000189C0;
      v24 = v10;
      v25 = &v30;
      [v13 activateFontsForFontPickerClient:v16 reply:v23];
      if (v11)
      {
        [v11 auditToken];
      }

      else
      {
        memset(&token, 0, sizeof(token));
      }

      v17 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
      v18 = v17;
      if (v17)
      {
        v19 = SecTaskCopySigningIdentifier(v17, 0);
        if (v19)
        {
          v20 = [v16 allKeys];
          [(FontServicesDaemon *)self recordIssuedFontPaths:v20 forIdentifier:v19];

          CFRelease(v19);
        }

        CFRelease(v18);
      }
    }
  }

  if ((v31[3] & 1) == 0)
  {
    (*(v10 + 2))(v10, 0);
  }

  [v11 invalidate];

  _Block_object_dispose(&v30, 8);
}

- (void)recordSuspendedProvider:(id)a3 url:(id)a4 andScheme:(id)a5 forDate:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (a3 && v9 && v10)
  {
    v12 = a3;
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 dictionaryForKey:@"suspended"];
    v15 = [v14 mutableCopy];

    if (!v15)
    {
      v15 = objc_opt_new();
    }

    v17[0] = @"url";
    v17[1] = @"scheme";
    v18[0] = v9;
    v18[1] = v10;
    v17[2] = @"expirationDate";
    v18[2] = v11;
    v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    [v15 setObject:v16 forKey:v12];

    [v13 setObject:v15 forKey:@"suspended"];
    [v13 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

- (id)displayLayoutMonitorWithHandler:(id)a3
{
  v4 = a3;
  displayLayoutMonitor = self->_displayLayoutMonitor;
  if (displayLayoutMonitor)
  {
    [(FBSDisplayLayoutMonitor *)displayLayoutMonitor invalidate];
    v6 = self->_displayLayoutMonitor;
    self->_displayLayoutMonitor = 0;
  }

  v7 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v7 setTransitionHandler:v4];
  v8 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v7];
  v9 = self->_displayLayoutMonitor;
  self->_displayLayoutMonitor = v8;

  v10 = self->_displayLayoutMonitor;
  v11 = v10;

  return v10;
}

- (void)recordWarnedForIdenntifier:(id)a3
{
  v6 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"warned"];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  [v5 setObject:&__kCFBooleanTrue forKey:v6];
  [v3 setObject:v5 forKey:@"warned"];
  [v3 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
}

- (void)resetWarnedForIdenntifier:(id)a3
{
  v7 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"warned"];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    v6 = [v5 objectForKey:v7];

    if (v6)
    {
      [v5 removeObjectForKey:v7];
      [v3 setObject:v5 forKey:@"warned"];
      [v3 synchronize];
      CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
    }
  }
}

- (void)resumeAndShowAlertForSuspendedFontProviders:(id)a3
{
  v4 = a3;
  v5 = [(FontServicesDaemon *)self subscriptionSupportQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006CBC;
  block[3] = &unk_100018688;
  block[4] = self;
  dispatch_sync(v5, block);

  v4[2](v4);
}

- (void)updatingUserFonts:(id)a3
{
  v3 = a3;
  if (qword_10001D8C8 != -1)
  {
    sub_10000D00C();
  }

  v4 = qword_10001D8C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006E2C;
  block[3] = &unk_100018AA8;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

- (void)warnAboutSuspendedFontProviders:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [v4 dictionaryForKey:@"warned"];
        v12 = [v11 objectForKey:v10];
        v13 = [v12 BOOLValue];

        if ((v13 & 1) == 0)
        {
          v14 = [v4 dictionaryForKey:@"suspended"];
          v15 = [v14 objectForKey:v10];

          v16 = [v15 objectForKey:@"scheme"];
          v17 = [v15 objectForKey:@"expirationDate"];
          if (v16)
          {
            [(FontServicesDaemon *)self warnAboutSuspendedFontProvider:v10 forExpiration:0 date:v17 withURLSchem:v16 immediately:1];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (OS_dispatch_queue)subscriptionSupportQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000070BC;
  block[3] = &unk_100018688;
  block[4] = self;
  if (qword_10001D8D0 != -1)
  {
    dispatch_once(&qword_10001D8D0, block);
  }

  return self->_subscriptionSupportQueue;
}

- (void)subscriptionSupportTimerHandler
{
  if (atomic_fetch_add_explicit(dword_10001D8D8, 1u, memory_order_relaxed))
  {
    atomic_fetch_add_explicit(dword_10001D8D8, 0xFFFFFFFF, memory_order_relaxed);
  }

  else
  {
    block[7] = v2;
    block[8] = v3;
    v5 = [(FontServicesDaemon *)self subscriptionSupportQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000071B4;
    block[3] = &unk_100018688;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (unint64_t)countFontAssets
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.Font8"];
  [v2 returnTypes:1];
  [v2 queryMetaDataSync];
  v3 = [v2 results];
  v4 = [v3 count];

  return v4;
}

- (void)fontChanged:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  FSLog_Debug();
  v8 = [(FontServicesDaemon *)self mainHandlerQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007D3C;
  v10[3] = &unk_100018880;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, v10);

  v7[2](v7);
}

- (void)resetIssuedFontsFor:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSXPCConnection currentConnection];
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  v9 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v19);

  if (v9)
  {
    v10 = SecTaskCopyValueForEntitlement(v9, @"com.apple.FontServices.allow-reset-issued-fonts", 0);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v11);
        CFRelease(v11);
        if (Value)
        {
          v14 = +[NSUserDefaults standardUserDefaults];
          v15 = [v14 dictionaryForKey:@"issues"];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKey:v5];
            if (v17)
            {
              v18 = [v16 mutableCopy];
              [v18 removeObjectForKey:v5];
              [v14 setObject:v18 forKey:@"issues"];
              [v14 synchronize];
              CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
            }
          }
        }
      }

      else
      {
        CFRelease(v11);
      }
    }

    CFRelease(v9);
  }

  v6[2](v6);
}

- (OS_dispatch_queue)scheduledFontDeletionQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008004;
  block[3] = &unk_100018688;
  block[4] = self;
  if (qword_10001D8E0 != -1)
  {
    dispatch_once(&qword_10001D8E0, block);
  }

  return self->_scheduledFontDeletionQueue;
}

- (void)scheduleFontFilesDeletion:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if (os_variant_has_internal_content())
    {
      v5 = 600;
    }

    else
    {
      v5 = 10800;
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 doubleForKey:@"deleteDelay"];
    if (v7 <= 0.0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(FontServicesDaemon *)self scheduledFontDeletionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008160;
    block[3] = &unk_100018B40;
    v13 = v8;
    v11 = v4;
    v12 = self;
    dispatch_async(v9, block);
  }
}

- (void)setFontFilesDeletionTimer:(unsigned int)a3
{
  v5 = [(FontServicesDaemon *)self scheduledFontDeletionQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000083C4;
  v6[3] = &unk_100018B68;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)stopFontFilesDeletionTimer
{
  v3 = [(FontServicesDaemon *)self scheduledFontDeletionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000085C4;
  block[3] = &unk_100018688;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)executeScheduledFontFilesDeletion:(id)a3
{
  FSLog_Debug();
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"delete"];
  v6 = [v5 mutableCopy];

  if (![v6 count])
  {
    FSLog_Error();
    [(FontServicesDaemon *)self stopFontFilesDeletionTimer];
    goto LABEL_59;
  }

  v52 = objc_opt_new();
  [v6 allKeys];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v70 = 0u;
  v7 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
  v51 = self;
  if (!v7)
  {
    v11 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v68;
  v11 = 0xFFFFFFFFLL;
  do
  {
    v12 = 0;
    do
    {
      if (*v68 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v67 + 1) + 8 * v12);
      v14 = [v6 objectForKey:v13];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (sub_10000BAF8(v13, v15) & 1) == 0 && !sub_10000BB04(v13))
      {
        [v6 removeObjectForKey:v13];
        goto LABEL_13;
      }

      [v14 timeIntervalSinceNow];
      if (v16 < 180.0)
      {
        [v6 removeObjectForKey:v13];
        [v52 addObject:v13];
LABEL_13:
        v9 = 1;
        goto LABEL_14;
      }

      if (v16 < v11)
      {
        v11 = v16;
      }

      else
      {
        v11 = v11;
      }

LABEL_14:

      v12 = v12 + 1;
    }

    while (v8 != v12);
    v17 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    v8 = v17;
  }

  while (v17);
  if (v9)
  {
    [v4 setObject:v6 forKey:@"delete"];
    [v4 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }

  self = v51;
LABEL_25:
  if ([v52 count])
  {
    v49 = v11;
    v50 = v4;
    v46 = [v52 count];
    FSLog_Debug();
    v18 = +[NSFileManager defaultManager];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v19 = v52;
    v20 = [v19 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v64;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v64 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v63 + 1) + 8 * i);
          if (!sub_10000BB04(v24))
          {
            goto LABEL_33;
          }

          v25 = [v24 stringByDeletingLastPathComponent];
          v26 = [v25 lastPathComponent];

          v27 = sub_10000BAEC();
          v28 = [v27 stringByAppendingPathComponent:v26];

          LOBYTE(v27) = [v18 fileExistsAtPath:v28];
          if ((v27 & 1) == 0)
          {
LABEL_33:
            v62 = 0;
            v29 = [v18 removeItemAtPath:v24 error:{&v62, v47, v48}];
            v30 = v62;
            v31 = v30;
            if ((v29 & 1) == 0)
            {
              v47 = v24;
              v48 = v30;
              FSLog_Error();
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v21);
    }

    v32 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v33 = v19;
    v34 = [v33 countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v59;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v59 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v58 + 1) + 8 * j) stringByDeletingLastPathComponent];
          [v32 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v35);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = v32;
    v40 = [v39 countByEnumeratingWithState:&v54 objects:v71 count:16];
    v4 = v50;
    if (v40)
    {
      v41 = v40;
      v42 = *v55;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v55 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v54 + 1) + 8 * k);
          v45 = [v18 contentsOfDirectoryAtPath:v44 error:{0, v47}];
          if (![v45 count])
          {
            [v18 removeItemAtPath:v44 error:0];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v54 objects:v71 count:16];
      }

      while (v41);
    }

    self = v51;
    v11 = v49;
  }

  FSLog_Debug();
  if (v11 == -1)
  {
    [(FontServicesDaemon *)self stopFontFilesDeletionTimer];
  }

  else
  {
    [(FontServicesDaemon *)self setFontFilesDeletionTimer:v11, v11];
  }

LABEL_59:
}

- (void)synchronizeFontAssets:(id)a3 reply:(id)a4
{
  v33 = a3;
  v34 = a4;
  memset(&v50, 0, sizeof(v50));
  v5 = +[NSXPCConnection currentConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    memset(&v50, 0, sizeof(v50));
  }

  token = v50;
  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = SecTaskCopyValueForEntitlement(v7, @"com.apple.developer.user-fonts", 0);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFArrayGetTypeID())
  {
    CFRelease(v10);
LABEL_10:
    CFRelease(v8);
    goto LABEL_11;
  }

  Count = CFArrayGetCount(v10);
  v52.location = 0;
  v52.length = Count;
  if (!CFArrayContainsValue(v10, v52, @"font-enumeration"))
  {
    v53.location = 0;
    v53.length = Count;
    v13 = CFArrayContainsValue(v10, v53, @"app-usage") == 0;
    CFRelease(v10);
    CFRelease(v8);
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_11:
    (*(v34 + 2))(v34, 0, 0);
    goto LABEL_12;
  }

  CFRelease(v10);
  CFRelease(v8);
LABEL_14:
  v35 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = v33;
  v16 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v16)
  {
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        if (sub_10000BB70(v19, v15))
        {
          v20 = [v19 stringByDeletingLastPathComponent];
          v21 = [v20 lastPathComponent];
          v22 = [v21 isEqualToString:@"AssetData"];

          if (v22)
          {
            v23 = [v20 stringByDeletingLastPathComponent];
            v24 = [v23 lastPathComponent];

            [v35 addObject:v24];
          }

          else
          {
            FSLog_Error();
          }
        }

        else
        {
          FSLog_Error();
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v16);
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100009140;
  v44[3] = &unk_100018BB8;
  v44[4] = self;
  v25 = v35;
  v45 = v25;
  v26 = objc_retainBlock(v44);
  *token.val = 0;
  *&token.val[2] = &token;
  *&token.val[4] = 0x3032000000;
  *&token.val[6] = sub_100002A28;
  v42 = sub_100002A38;
  v43 = (v26[2])(v26);
  v27 = [v25 count];
  if (v27 > [*(*&token.val[2] + 40) count])
  {
    v28 = dispatch_semaphore_create(0);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100009380;
    v37[3] = &unk_100018BE0;
    p_token = &token;
    v39 = v26;
    v29 = v28;
    v38 = v29;
    [FSUserFontManager synchronizeFontAssets:v37];
    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
  }

  v30 = objc_opt_new();
  [v30 setObject:*(*&token.val[2] + 40) forKey:@"fontsInfo"];
  v36 = v50;
  v31 = [(FontServicesDaemon *)self sandboxExtensionForFontAssets:&v36];
  if (v31)
  {
    [v30 setObject:v31 forKey:@"extension.fontasset"];
  }

  (*(v34 + 2))(v34, 1, v30);

  _Block_object_dispose(&token, 8);
LABEL_12:
}

- (void)accessFontAsset:(id)a3
{
  v4 = a3;
  v5 = [(FontServicesDaemon *)self assetHandlerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009490;
  v7[3] = &unk_100018880;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setupForXPCService
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.fontservicesd"];
  [v3 setDelegate:self];
  [v3 resume];
  [(FontServicesDaemon *)self isUserFontInstalled];
}

- (void)setupForScheduledFontDeletion
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"delete"];
  if ([v4 count])
  {
    [(FontServicesDaemon *)self setFontFilesDeletionTimer:0];
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000099A0;
  block[3] = &unk_100018688;
  block[4] = self;
  dispatch_async(v5, block);
}

- (id)_userFontsInfoFromDisk
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100002A28;
  v9 = sub_100002A38;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009F28;
  v4[3] = &unk_100018C08;
  v4[4] = &v5;
  [(FontServicesDaemon *)self updatingUserFonts:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)analyticsEventRequestFonts:(id)a3 misses:(unint64_t)a4 suggestions:(unint64_t)a5 resolved:(unint64_t)a6
{
  v7 = a3;
  v6 = v7;
  AnalyticsSendEventLazy();
}

- (void)synchronizeFontProviders
{
  FSLog();

  +[FSUserFontManager synchronizeFontProviders];
}

- (void)setupForDistributedNotifications
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000BC3C;
  handler[3] = &unk_100018E60;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, handler);
}

- (OS_dispatch_queue)assetHandlerQueue
{
  if (qword_10001D918 != -1)
  {
    sub_10000D048();
  }

  v3 = qword_10001D920;

  return v3;
}

- (void)setupForAssetNotifications
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000C12C;
  handler[3] = &unk_100018E60;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C760;
  v4[3] = &unk_100018E60;
  v4[4] = self;
  xpc_activity_register("com.apple.fontservicesd.check-asset-update", XPC_ACTIVITY_CHECK_IN, v4);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C8B8;
  v3[3] = &unk_100018E60;
  v3[4] = self;
  xpc_activity_register("com.apple.fontservicesd.subscription-support", XPC_ACTIVITY_CHECK_IN, v3);
}

- (void)setupForMonitoringFontAssets
{
  v2 = dispatch_queue_create("com.apple.fontservicesd.fontAssetsMonitor", 0);
  v3 = qword_10001D928;
  qword_10001D928 = v2;

  v4 = qword_10001D928;

  dispatch_async(v4, &stru_100018F38);
}

- (void)removeDeprecatedFontAsset
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.Font8"];
  [v2 returnTypes:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000CBD8;
  v4[3] = &unk_100019020;
  v5 = v2;
  v6 = FSGetMaxSupportedFontAssetCompatibilityVersion();
  v3 = v2;
  [v3 queryMetaData:v4];
}

- (void)setup
{
  v6 = +[NSUserDefaults standardUserDefaults];
  v3 = [v6 integerForKey:@"version"];
  v4 = FSGetMaxSupportedFontAssetCompatibilityVersion();
  if (v3 < v4)
  {
    v5 = v4;
    [(FontServicesDaemon *)self refreshObsoleteAssets];
    [(FontServicesDaemon *)self removeDeprecatedFontAsset];
    [v6 setInteger:v5 forKey:@"version"];
    [v6 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

@end