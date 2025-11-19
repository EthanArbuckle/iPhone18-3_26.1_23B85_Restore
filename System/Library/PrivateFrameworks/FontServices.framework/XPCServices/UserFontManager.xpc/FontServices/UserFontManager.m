@interface UserFontManager
- (BOOL)isKnownFontProvider:(id)a3;
- (id)errorForGSError:(id)a3 withParamIndexes:(id)a4;
- (id)familyNamesForFilePaths:(id)a3 inFontInfo:(id)a4;
- (id)familyNamesFromFontInfoDict:(id)a3;
- (id)filePathsFromFileURLs:(id)a3;
- (id)fontFilesForFontProvider:(id)a3 suspended:(BOOL)a4;
- (id)fontNamesFromFontInfoDict:(id)a3;
- (id)fontsCacheInfoFor:(BOOL)a3;
- (id)knownFontProviderIdentifiers;
- (id)lastAccessedTime:(id)a3;
- (id)suspendedFontProviders;
- (id)suspendedFontProvidersInfo;
- (unint64_t)countProfileFonts;
- (void)_registeredFontsInfoForIdentifier:(id)a3 enabled:(BOOL)a4 recordLastAccessTime:(BOOL)a5 completionHandler:(id)a6;
- (void)_removeAllUserFonts;
- (void)directoryNameFromIdentifier:(id)a3 completionHandler:(id)a4;
- (void)enableOrDisablePersistentURLs:(id)a3 enabled:(BOOL)a4 completionHandler:(id)a5;
- (void)fontProvidersSubscriptionSupportInfo:(id)a3;
- (void)forgetFontProvider:(id)a3;
- (void)identifierFromDirectoryName:(id)a3 completionHandler:(id)a4;
- (void)installFonts:(id)a3 forIdentifier:(id)a4 enabled:(BOOL)a5 appInfo:(id)a6 completionHandler:(id)a7;
- (void)knownFontProviders:(id)a3;
- (void)profileFontsInfo:(id)a3;
- (void)recordInstalledFontFamiliesCount:(unint64_t)a3;
- (void)recordLastAccessTime:(id)a3;
- (void)recordUninstalledFontFamiliesCount:(unint64_t)a3;
- (void)reset;
- (void)resumeFontProvider:(id)a3;
- (void)resumeSuspendedFontFiles:(id)a3;
- (void)resumeSuspendedFontsForFontProvider:(id)a3;
- (void)retriveInstalledFontFamilies:(unint64_t *)a3 andRemovedFontFamiliesCount:(unint64_t *)a4;
- (void)secondsSinceLastAccessed:(id)a3 completionHandler:(id)a4;
- (void)suspendFontProvider:(id)a3;
- (void)suspendFontProvider:(id)a3 completionHandler:(id)a4;
- (void)suspendedFontProviders:(id)a3;
- (void)synchronizeFontAssets:(id)a3;
- (void)synchronizeFontProviders:(id)a3;
- (void)synchronizeProfileFonts:(id)a3;
- (void)uninstallFontAssets:(id)a3;
- (void)uninstallFonts:(id)a3 forIdentifier:(id)a4 appInfo:(id)a5 completionHandler:(id)a6;
- (void)unregisterAndRemoveFontFilesForIdentifier:(id)a3 completionHandler:(id)a4;
- (void)updateAppInfo:(id)a3 forIdentifier:(id)a4;
- (void)updateUserInstalledFonts:(id)a3;
- (void)userFontsInfo:(id)a3;
@end

@implementation UserFontManager

- (BOOL)isKnownFontProvider:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"hash"];
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:v3];

  return v7;
}

- (id)knownFontProviderIdentifiers
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"hash"];
  v4 = [v3 allKeys];

  return v4;
}

- (void)synchronizeFontProviders:(id)a3
{
  v19 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [(UserFontManager *)self knownFontProviderIdentifiers];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v20 = v4;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = sub_100001378(v10);
        v12 = [v11 path];
        v21 = 0;
        if (![v4 fileExistsAtPath:v12 isDirectory:&v21])
        {
          goto LABEL_9;
        }

        if (v21 != 1)
        {
          goto LABEL_9;
        }

        [v4 contentsOfDirectoryAtPath:v12 error:0];
        v13 = v7;
        v14 = v8;
        v15 = self;
        v17 = v16 = v5;
        v18 = [v17 count];

        v5 = v16;
        self = v15;
        v8 = v14;
        v7 = v13;
        v4 = v20;
        if (!v18)
        {
LABEL_9:
          [(UserFontManager *)self forgetFontProvider:v10];
          [v4 removeItemAtPath:v12 error:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v19[2](v19, 1);
}

- (void)knownFontProviders:(id)a3
{
  v5 = a3;
  v6 = [(UserFontManager *)self knownFontProviderIdentifiers];
  (*(a3 + 2))(v5, v6);
}

- (void)forgetFontProvider:(id)a3
{
  v3 = a3;
  FSLog();
  v4 = +[NSUserDefaults standardUserDefaults];
  v18[0] = @"hash";
  v18[1] = @"lastAccessed";
  v18[2] = @"suspended";
  v18[3] = @"appInfo";
  [NSArray arrayWithObjects:v18 count:4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        v11 = [v4 dictionaryForKey:v10];
        v12 = [v11 mutableCopy];

        if (v12)
        {
          [v12 removeObjectForKey:v3];
          [v4 setObject:v12 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v4 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
}

- (void)directoryNameFromIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7 = sub_100001378(a3);
  v6 = [v7 lastPathComponent];
  v5[2](v5, v6);
}

- (id)fontsCacheInfoFor:(BOOL)a3
{
  if (a3)
  {
    v3 = GSFontCopyProfileFontsCacheInfoFileURL();
  }

  else
  {
    v3 = GSFontCopyUserFontsCacheInfoFileURL();
  }

  v4 = v3;
  v5 = 0;
  if ([v3 checkResourceIsReachableAndReturnError:0])
  {
    v6 = [NSInputStream inputStreamWithURL:v4];
    [v6 open];
    v10 = 0;
    v5 = [NSPropertyListSerialization propertyListWithStream:v6 options:1 format:0 error:&v10];
    v7 = v10;
    [v6 close];
    if (v7)
    {
      v9 = [v7 domain];
      [v7 code];
      FSLog_Error();
    }
  }

  return v5;
}

- (void)updateUserInstalledFonts:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_100014CE0++)
  {
    (*(v3 + 2))(v3);
  }

  else
  {
    v6 = +[FontServicesDaemonManager sharedManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000019CC;
    v7[3] = &unk_100010320;
    v8 = v4;
    [v6 updatingUserFonts:v7];
  }

  --dword_100014CE0;
}

- (void)userFontsInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001A70;
  v4[3] = &unk_100010348;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(UserFontManager *)v5 updateUserInstalledFonts:v4];
}

- (void)profileFontsInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001B60;
  v4[3] = &unk_100010348;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(UserFontManager *)v5 updateUserInstalledFonts:v4];
}

- (void)identifierFromDirectoryName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = sub_100001C30(a3);
  (*(a4 + 2))(v6, v7);
}

- (void)reset
{
  v2 = GSFontCopyUserFontsDirectoryURL();
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v18 = 0;
    v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:&__NSArray0__struct options:1 error:&v18];
    v5 = v18;
    if (!v5)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v5 = 0;
        v9 = *v15;
        do
        {
          v10 = 0;
          v11 = v5;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v14 + 1) + 8 * v10);
            v13 = v11;
            [v3 removeItemAtURL:v12 error:&v13];
            v5 = v13;

            v10 = v10 + 1;
            v11 = v5;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v8);
      }

      else
      {
        v5 = 0;
      }
    }
  }
}

- (void)_removeAllUserFonts
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001F90;
  v2[3] = &unk_100010370;
  v2[4] = self;
  [(UserFontManager *)self updateUserInstalledFonts:v2];
}

- (void)_registeredFontsInfoForIdentifier:(id)a3 enabled:(BOOL)a4 recordLastAccessTime:(BOOL)a5 completionHandler:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002258;
  v10[3] = &unk_1000103C0;
  v14 = a5;
  v11 = self;
  v12 = a3;
  v15 = a4;
  v13 = a6;
  v8 = v13;
  v9 = v12;
  [(UserFontManager *)v11 updateUserInstalledFonts:v10];
}

- (id)errorForGSError:(id)a3 withParamIndexes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKey:@"FontProviderErrorUserInfoFontInfoParameterIndexesKey"];
  }

  v9 = [v5 objectForKey:@"result"];
  v10 = [v9 intValue];

  v11 = 6;
  if (v10 == 105)
  {
    v11 = 4;
  }

  if (v10 == 106)
  {
    v11 = 10;
  }

  if (v10 == 305)
  {
    v12 = 9;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v5 objectForKey:@"failedFaces"];
  if (v13)
  {
    [v8 setObject:v13 forKey:@"failed"];
  }

  v14 = [v5 objectForKey:@"faces"];
  if (v14)
  {
    [v8 setObject:v14 forKey:@"success"];
  }

  v15 = [v5 objectForKey:@"error"];
  if (v15)
  {
    [v8 setObject:v15 forKey:NSUnderlyingErrorKey];
  }

  v16 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:v12 userInfo:v8];

  return v16;
}

- (id)fontNamesFromFontInfoDict:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"familyName"];
  v4 = [v3 allKeys];
  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (id)familyNamesFromFontInfoDict:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"familyName"];
  v4 = [v3 allValues];
  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (id)filePathsFromFileURLs:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) path];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)familyNamesForFilePaths:(id)a3 inFontInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002F44;
  v12[3] = &unk_100010410;
  v13 = v5;
  v7 = objc_opt_new();
  v14 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)installFonts:(id)a3 forIdentifier:(id)a4 enabled:(BOOL)a5 appInfo:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v13)
  {
    [(UserFontManager *)self updateAppInfo:a6 forIdentifier:v13];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003130;
    v15[3] = &unk_100010460;
    v15[4] = self;
    v16 = v13;
    v17 = v12;
    v19 = a5;
    v18 = v14;
    [(UserFontManager *)self updateUserInstalledFonts:v15];
  }

  else
  {
    FSLog_Error();
    (*(v14 + 2))(v14, &__NSArray0__struct, 0);
  }
}

- (void)uninstallFontAssets:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004378;
  v4[3] = &unk_100010488;
  v5 = a3;
  v3 = v5;
  PurgeFontAssetsWithHandler(v4);
}

- (void)uninstallFonts:(id)a3 forIdentifier:(id)a4 appInfo:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    FSLog_Error();
    goto LABEL_5;
  }

  if ([v11 isEqualToString:kFSUserFontManagerUninstallFontAssetsIdentifier])
  {
    [(UserFontManager *)self uninstallFontAssets:v10];
LABEL_5:
    v13[2](v13, &__NSArray0__struct, 0);
    goto LABEL_9;
  }

  if (v12)
  {
    [(UserFontManager *)self updateAppInfo:v12 forIdentifier:v11];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000047B4;
  v14[3] = &unk_1000104D8;
  v14[4] = self;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  [(UserFontManager *)self updateUserInstalledFonts:v14];

LABEL_9:
}

- (void)unregisterAndRemoveFontFilesForIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  FSLog_Debug();
  if (v6 && [(UserFontManager *)self isKnownFontProvider:v6, v6])
  {
    v8 = sub_100001378(v6);
    [v8 path];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005738;
    v11[3] = &unk_100010500;
    v12 = v11[4] = self;
    v13 = v8;
    v14 = v6;
    v15 = v7;
    v9 = v8;
    v10 = v12;
    [(UserFontManager *)self updateUserInstalledFonts:v11];
  }

  else
  {
    FSLog_Debug();
    (*(v7 + 2))(v7, 0);
  }
}

- (void)enableOrDisablePersistentURLs:(id)a3 enabled:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a5;
  GSFontEnableOrDisablePersistentURLs2();
  v5[2](v5, 0);
}

- (void)recordLastAccessTime:(id)a3
{
  v12 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"lastAccessed"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v8 = v7;
  v9 = +[NSDate now];
  [v8 setObject:v9 forKey:v12];

  [v4 setObject:v8 forKey:@"lastAccessed"];
  [v4 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v10 = [(UserFontManager *)self suspendedFontProviders];
  v11 = [v10 containsObject:v12];

  if (v11)
  {
    NSLog(@"FontProvider subscription support: resuming FontProvider %@.", v12);
    [(UserFontManager *)self resumeFontProvider:v12];
  }
}

- (id)lastAccessedTime:(id)a3
{
  v4 = a3;
  if ([(UserFontManager *)self isKnownFontProvider:v4])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 dictionaryForKey:@"lastAccessed"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKey:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        if (v8)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v8 = +[NSDate now];
LABEL_9:

  return v8;
}

- (void)secondsSinceLastAccessed:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = [(UserFontManager *)self lastAccessedTime:a3];
  [v8 timeIntervalSinceNow];
  v6[2](v6, -v7);
}

- (void)updateAppInfo:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 dictionaryForKey:@"appInfo"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:v7];
      v12 = v11;
      if (v11 && ([v11 isEqualToDictionary:v5] & 1) != 0)
      {

LABEL_10:
        goto LABEL_11;
      }

      v13 = [v10 mutableCopy];
      [v13 setObject:v5 forKey:v7];
      [v8 setObject:v13 forKey:@"appInfo"];
    }

    else
    {
      v14 = v7;
      v15 = v5;
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v8 setObject:v12 forKey:@"appInfo"];
    }

    [v8 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
    goto LABEL_10;
  }

LABEL_11:
}

- (id)suspendedFontProvidersInfo
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"suspended"];

  return v3;
}

- (id)suspendedFontProviders
{
  v2 = [(UserFontManager *)self suspendedFontProvidersInfo];
  v3 = [v2 allKeys];

  return v3;
}

- (void)suspendedFontProviders:(id)a3
{
  v4 = a3;
  v5 = [(UserFontManager *)self suspendedFontProviders];
  v4[2](v4, v5);
}

- (id)fontFilesForFontProvider:(id)a3 suspended:(BOOL)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = sub_100001378(v6);

  v9 = [v8 path];
  v10 = [(UserFontManager *)self gsFontUserFontsCacheInfo];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100006238;
  v16[3] = &unk_100010528;
  v17 = v9;
  v19 = a4;
  v11 = v7;
  v18 = v11;
  v12 = v9;
  [v10 enumerateKeysAndObjectsUsingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

- (void)suspendFontProvider:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(UserFontManager *)self suspendFontProvider:a3];
  v6[2]();
}

- (void)suspendFontProvider:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000063F8;
  v5[3] = &unk_100010550;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(UserFontManager *)self updateUserInstalledFonts:v5];
}

- (void)resumeSuspendedFontsForFontProvider:(id)a3
{
  v3 = [(UserFontManager *)self fontFilesForFontProvider:a3 suspended:1];
  if ([v3 count])
  {
    GSFontEnableOrDisablePersistentURLs2();
  }
}

- (void)resumeSuspendedFontFiles:(id)a3
{
  v4 = a3;
  v5 = [(UserFontManager *)self suspendedFontProvidersInfo];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(UserFontManager *)self resumeSuspendedFontsForFontProvider:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  v4[2](v4, v5);
}

- (void)resumeFontProvider:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 dictionaryForKey:@"suspended"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    [v8 removeObjectForKey:v4];
    [v5 setObject:v8 forKey:@"suspended"];
    [v5 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
    v9 = [(UserFontManager *)self fontFilesForFontProvider:v4 suspended:1];
    if ([v9 count])
    {
      GSFontEnableOrDisablePersistentURLs2();
    }
  }
}

- (void)fontProvidersSubscriptionSupportInfo:(id)a3
{
  v33 = a3;
  v32 = +[NSUserDefaults standardUserDefaults];
  v4 = [v32 dictionaryForKey:@"appInfo"];
  v40 = self;
  v5 = [(UserFontManager *)self knownFontProviderIdentifiers];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v42 = *v46;
    v9 = &GSFontCopyProfileFontsCacheInfoFileURL_ptr;
    v34 = v5;
    v35 = v4;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [v4 objectForKey:v11];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 objectForKey:@"FontProviderSubscriptionSupportInfo"];
          v15 = v14;
          if (!v14)
          {
            goto LABEL_22;
          }

          v16 = [v14 objectForKey:@"warn"];
          v17 = v9[75];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v8;
            v18 = [v15 objectForKey:@"expire"];
            v19 = v9[75];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v15 objectForKey:@"url"];
              v21 = [v15 objectForKey:@"scheme"];
              if (v20 && v21)
              {
                v39 = v21;
                v22 = [v15 objectForKey:@"test"];
                v36 = [v22 BOOLValue];

                v23 = [(UserFontManager *)v40 lastAccessedTime:v11];
                [v23 timeIntervalSinceNow];
                v51[0] = @"warn";
                v51[1] = @"expire";
                v52[0] = v16;
                v52[1] = v18;
                v51[2] = @"url";
                v51[3] = @"scheme";
                v38 = v20;
                v52[2] = v20;
                v52[3] = v39;
                v51[4] = @"test";
                v25 = v24 / -60.0;
                v26 = [NSNumber numberWithBool:v36];
                v52[4] = v26;
                v51[5] = @"elapsed";
                v27 = [NSNumber numberWithDouble:v25];
                v51[6] = @"lastAccessed";
                v52[5] = v27;
                v52[6] = v23;
                v37 = v23;
                v28 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:7];

                v29 = v41;
                if (!v41)
                {
                  v29 = objc_opt_new();
                }

                v41 = v29;
                [v29 setObject:v28 forKey:v11];

                v5 = v34;
                v4 = v35;
                v20 = v38;
                v21 = v39;
              }
            }

            v8 = v41;
          }
        }

        else
        {
          FSLog_Debug();
          v49[0] = @"scheme";
          v49[1] = @"lastAccessed";
          v50[0] = v11;
          v30 = [(UserFontManager *)v40 lastAccessedTime:v11, v11];
          v50[1] = v30;
          v15 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];

          if (!v8)
          {
            v8 = objc_opt_new();
          }

          [v8 setObject:v15 forKey:v11];
        }

        v9 = &GSFontCopyProfileFontsCacheInfoFileURL_ptr;
LABEL_22:
      }

      v7 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (!v7)
      {
        goto LABEL_26;
      }
    }
  }

  v8 = 0;
LABEL_26:
  v43 = 0;
  v44 = 0;
  [(UserFontManager *)v40 retriveInstalledFontFamilies:&v44 andRemovedFontFamiliesCount:&v43];
  v31 = [(UserFontManager *)v40 countProfileFonts];
  v33[2](v33, v8, v44, v43, v31);
}

- (unint64_t)countProfileFonts
{
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:@"/var/mobile/Library/Fonts/AddedFontCache.plist"])
  {
    v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Fonts/AddedFontCache.plist" isDirectory:0];
    v5 = [NSInputStream inputStreamWithURL:v4];

    if (v5)
    {
      [v5 open];
      v11 = 0;
      v6 = [NSPropertyListSerialization propertyListWithStream:v5 options:1 format:0 error:&v11];
      v7 = v11;
      [v5 close];
      if (v7)
      {
        FSLog_Error();
      }

      if (v6)
      {
        v8 = [(UserFontManager *)self familyNamesForFilePaths:0 inFontInfo:v6];
        v9 = [v8 count];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)synchronizeFontAssets:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006E50;
  v4[3] = &unk_1000105A0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  StartAccessingFontAssetsWithHandler(v4);
}

- (void)synchronizeProfileFonts:(id)a3
{
  v4 = a3;
  FSLog_Debug();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007C30;
  v6[3] = &unk_100010320;
  v7 = v4;
  v5 = v4;
  [(UserFontManager *)self updateUserInstalledFonts:v6];
}

- (void)recordInstalledFontFamiliesCount:(unint64_t)a3
{
  if (a3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setInteger:objc_msgSend(v4 forKey:{"integerForKey:", @"installed", @"installed"}];
    [v4 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

- (void)recordUninstalledFontFamiliesCount:(unint64_t)a3
{
  if (a3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setInteger:objc_msgSend(v4 forKey:{"integerForKey:", @"removed", @"removed"}];
    [v4 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

- (void)retriveInstalledFontFamilies:(unint64_t *)a3 andRemovedFontFamiliesCount:(unint64_t *)a4
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v6 = [v8 integerForKey:@"installed"];
  v7 = [v8 integerForKey:@"removed"];
  *a3 = v6;
  *a4 = v7;
  [v8 setInteger:0 forKey:@"installed"];
  [v8 setInteger:0 forKey:@"removed"];
  [v8 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
}

@end