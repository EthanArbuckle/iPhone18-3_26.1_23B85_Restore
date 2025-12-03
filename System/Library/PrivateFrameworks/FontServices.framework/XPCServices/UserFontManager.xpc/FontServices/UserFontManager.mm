@interface UserFontManager
- (BOOL)isKnownFontProvider:(id)provider;
- (id)errorForGSError:(id)error withParamIndexes:(id)indexes;
- (id)familyNamesForFilePaths:(id)paths inFontInfo:(id)info;
- (id)familyNamesFromFontInfoDict:(id)dict;
- (id)filePathsFromFileURLs:(id)ls;
- (id)fontFilesForFontProvider:(id)provider suspended:(BOOL)suspended;
- (id)fontNamesFromFontInfoDict:(id)dict;
- (id)fontsCacheInfoFor:(BOOL)for;
- (id)knownFontProviderIdentifiers;
- (id)lastAccessedTime:(id)time;
- (id)suspendedFontProviders;
- (id)suspendedFontProvidersInfo;
- (unint64_t)countProfileFonts;
- (void)_registeredFontsInfoForIdentifier:(id)identifier enabled:(BOOL)enabled recordLastAccessTime:(BOOL)time completionHandler:(id)handler;
- (void)_removeAllUserFonts;
- (void)directoryNameFromIdentifier:(id)identifier completionHandler:(id)handler;
- (void)enableOrDisablePersistentURLs:(id)ls enabled:(BOOL)enabled completionHandler:(id)handler;
- (void)fontProvidersSubscriptionSupportInfo:(id)info;
- (void)forgetFontProvider:(id)provider;
- (void)identifierFromDirectoryName:(id)name completionHandler:(id)handler;
- (void)installFonts:(id)fonts forIdentifier:(id)identifier enabled:(BOOL)enabled appInfo:(id)info completionHandler:(id)handler;
- (void)knownFontProviders:(id)providers;
- (void)profileFontsInfo:(id)info;
- (void)recordInstalledFontFamiliesCount:(unint64_t)count;
- (void)recordLastAccessTime:(id)time;
- (void)recordUninstalledFontFamiliesCount:(unint64_t)count;
- (void)reset;
- (void)resumeFontProvider:(id)provider;
- (void)resumeSuspendedFontFiles:(id)files;
- (void)resumeSuspendedFontsForFontProvider:(id)provider;
- (void)retriveInstalledFontFamilies:(unint64_t *)families andRemovedFontFamiliesCount:(unint64_t *)count;
- (void)secondsSinceLastAccessed:(id)accessed completionHandler:(id)handler;
- (void)suspendFontProvider:(id)provider;
- (void)suspendFontProvider:(id)provider completionHandler:(id)handler;
- (void)suspendedFontProviders:(id)providers;
- (void)synchronizeFontAssets:(id)assets;
- (void)synchronizeFontProviders:(id)providers;
- (void)synchronizeProfileFonts:(id)fonts;
- (void)uninstallFontAssets:(id)assets;
- (void)uninstallFonts:(id)fonts forIdentifier:(id)identifier appInfo:(id)info completionHandler:(id)handler;
- (void)unregisterAndRemoveFontFilesForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updateAppInfo:(id)info forIdentifier:(id)identifier;
- (void)updateUserInstalledFonts:(id)fonts;
- (void)userFontsInfo:(id)info;
@end

@implementation UserFontManager

- (BOOL)isKnownFontProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"hash"];
  allKeys = [v5 allKeys];
  v7 = [allKeys containsObject:providerCopy];

  return v7;
}

- (id)knownFontProviderIdentifiers
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"hash"];
  allKeys = [v3 allKeys];

  return allKeys;
}

- (void)synchronizeFontProviders:(id)providers
{
  providersCopy = providers;
  v4 = +[NSFileManager defaultManager];
  knownFontProviderIdentifiers = [(UserFontManager *)self knownFontProviderIdentifiers];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [knownFontProviderIdentifiers countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(knownFontProviderIdentifiers);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = sub_100001378(v10);
        path = [v11 path];
        v21 = 0;
        if (![v4 fileExistsAtPath:path isDirectory:&v21])
        {
          goto LABEL_9;
        }

        if (v21 != 1)
        {
          goto LABEL_9;
        }

        [v4 contentsOfDirectoryAtPath:path error:0];
        v13 = v7;
        v14 = v8;
        selfCopy = self;
        v17 = v16 = knownFontProviderIdentifiers;
        v18 = [v17 count];

        knownFontProviderIdentifiers = v16;
        self = selfCopy;
        v8 = v14;
        v7 = v13;
        v4 = v20;
        if (!v18)
        {
LABEL_9:
          [(UserFontManager *)self forgetFontProvider:v10];
          [v4 removeItemAtPath:path error:0];
        }
      }

      v7 = [knownFontProviderIdentifiers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  providersCopy[2](providersCopy, 1);
}

- (void)knownFontProviders:(id)providers
{
  providersCopy = providers;
  knownFontProviderIdentifiers = [(UserFontManager *)self knownFontProviderIdentifiers];
  (*(providers + 2))(providersCopy, knownFontProviderIdentifiers);
}

- (void)forgetFontProvider:(id)provider
{
  providerCopy = provider;
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
          [v12 removeObjectForKey:providerCopy];
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

- (void)directoryNameFromIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_100001378(identifier);
  lastPathComponent = [v7 lastPathComponent];
  handlerCopy[2](handlerCopy, lastPathComponent);
}

- (id)fontsCacheInfoFor:(BOOL)for
{
  if (for)
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
      domain = [v7 domain];
      [v7 code];
      FSLog_Error();
    }
  }

  return v5;
}

- (void)updateUserInstalledFonts:(id)fonts
{
  fontsCopy = fonts;
  v4 = fontsCopy;
  if (dword_100014CE0++)
  {
    (*(fontsCopy + 2))(fontsCopy);
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

- (void)userFontsInfo:(id)info
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001A70;
  v4[3] = &unk_100010348;
  selfCopy = self;
  infoCopy = info;
  v3 = infoCopy;
  [(UserFontManager *)selfCopy updateUserInstalledFonts:v4];
}

- (void)profileFontsInfo:(id)info
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001B60;
  v4[3] = &unk_100010348;
  selfCopy = self;
  infoCopy = info;
  v3 = infoCopy;
  [(UserFontManager *)selfCopy updateUserInstalledFonts:v4];
}

- (void)identifierFromDirectoryName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_100001C30(name);
  (*(handler + 2))(handlerCopy, v7);
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

- (void)_registeredFontsInfoForIdentifier:(id)identifier enabled:(BOOL)enabled recordLastAccessTime:(BOOL)time completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002258;
  v10[3] = &unk_1000103C0;
  timeCopy = time;
  selfCopy = self;
  identifierCopy = identifier;
  enabledCopy = enabled;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = identifierCopy;
  [(UserFontManager *)selfCopy updateUserInstalledFonts:v10];
}

- (id)errorForGSError:(id)error withParamIndexes:(id)indexes
{
  errorCopy = error;
  indexesCopy = indexes;
  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  v8 = v7;
  if (indexesCopy)
  {
    [v7 setObject:indexesCopy forKey:@"FontProviderErrorUserInfoFontInfoParameterIndexesKey"];
  }

  v9 = [errorCopy objectForKey:@"result"];
  intValue = [v9 intValue];

  v11 = 6;
  if (intValue == 105)
  {
    v11 = 4;
  }

  if (intValue == 106)
  {
    v11 = 10;
  }

  if (intValue == 305)
  {
    v12 = 9;
  }

  else
  {
    v12 = v11;
  }

  v13 = [errorCopy objectForKey:@"failedFaces"];
  if (v13)
  {
    [v8 setObject:v13 forKey:@"failed"];
  }

  v14 = [errorCopy objectForKey:@"faces"];
  if (v14)
  {
    [v8 setObject:v14 forKey:@"success"];
  }

  v15 = [errorCopy objectForKey:@"error"];
  if (v15)
  {
    [v8 setObject:v15 forKey:NSUnderlyingErrorKey];
  }

  v16 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:v12 userInfo:v8];

  return v16;
}

- (id)fontNamesFromFontInfoDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"familyName"];
  allKeys = [v3 allKeys];
  v5 = [NSSet setWithArray:allKeys];

  return v5;
}

- (id)familyNamesFromFontInfoDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"familyName"];
  allValues = [v3 allValues];
  v5 = [NSSet setWithArray:allValues];

  return v5;
}

- (id)filePathsFromFileURLs:(id)ls
{
  lsCopy = ls;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = lsCopy;
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

        path = [*(*(&v12 + 1) + 8 * i) path];
        if (path)
        {
          [v4 addObject:path];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)familyNamesForFilePaths:(id)paths inFontInfo:(id)info
{
  pathsCopy = paths;
  infoCopy = info;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002F44;
  v12[3] = &unk_100010410;
  v13 = pathsCopy;
  v7 = objc_opt_new();
  v14 = v7;
  v8 = pathsCopy;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)installFonts:(id)fonts forIdentifier:(id)identifier enabled:(BOOL)enabled appInfo:(id)info completionHandler:(id)handler
{
  fontsCopy = fonts;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    [(UserFontManager *)self updateAppInfo:info forIdentifier:identifierCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003130;
    v15[3] = &unk_100010460;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = fontsCopy;
    enabledCopy = enabled;
    v18 = handlerCopy;
    [(UserFontManager *)self updateUserInstalledFonts:v15];
  }

  else
  {
    FSLog_Error();
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
  }
}

- (void)uninstallFontAssets:(id)assets
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004378;
  v4[3] = &unk_100010488;
  assetsCopy = assets;
  v3 = assetsCopy;
  PurgeFontAssetsWithHandler(v4);
}

- (void)uninstallFonts:(id)fonts forIdentifier:(id)identifier appInfo:(id)info completionHandler:(id)handler
{
  fontsCopy = fonts;
  identifierCopy = identifier;
  infoCopy = info;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    FSLog_Error();
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:kFSUserFontManagerUninstallFontAssetsIdentifier])
  {
    [(UserFontManager *)self uninstallFontAssets:fontsCopy];
LABEL_5:
    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
    goto LABEL_9;
  }

  if (infoCopy)
  {
    [(UserFontManager *)self updateAppInfo:infoCopy forIdentifier:identifierCopy];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000047B4;
  v14[3] = &unk_1000104D8;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = fontsCopy;
  v17 = handlerCopy;
  [(UserFontManager *)self updateUserInstalledFonts:v14];

LABEL_9:
}

- (void)unregisterAndRemoveFontFilesForIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  FSLog_Debug();
  if (identifierCopy && [(UserFontManager *)self isKnownFontProvider:identifierCopy, identifierCopy])
  {
    v8 = sub_100001378(identifierCopy);
    [v8 path];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005738;
    v11[3] = &unk_100010500;
    v12 = v11[4] = self;
    v13 = v8;
    v14 = identifierCopy;
    v15 = handlerCopy;
    v9 = v8;
    v10 = v12;
    [(UserFontManager *)self updateUserInstalledFonts:v11];
  }

  else
  {
    FSLog_Debug();
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)enableOrDisablePersistentURLs:(id)ls enabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  GSFontEnableOrDisablePersistentURLs2();
  handlerCopy[2](handlerCopy, 0);
}

- (void)recordLastAccessTime:(id)time
{
  timeCopy = time;
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
  [v8 setObject:v9 forKey:timeCopy];

  [v4 setObject:v8 forKey:@"lastAccessed"];
  [v4 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  suspendedFontProviders = [(UserFontManager *)self suspendedFontProviders];
  v11 = [suspendedFontProviders containsObject:timeCopy];

  if (v11)
  {
    NSLog(@"FontProvider subscription support: resuming FontProvider %@.", timeCopy);
    [(UserFontManager *)self resumeFontProvider:timeCopy];
  }
}

- (id)lastAccessedTime:(id)time
{
  timeCopy = time;
  if ([(UserFontManager *)self isKnownFontProvider:timeCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 dictionaryForKey:@"lastAccessed"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKey:timeCopy];
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

- (void)secondsSinceLastAccessed:(id)accessed completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(UserFontManager *)self lastAccessedTime:accessed];
  [v8 timeIntervalSinceNow];
  handlerCopy[2](handlerCopy, -v7);
}

- (void)updateAppInfo:(id)info forIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (infoCopy && identifierCopy)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 dictionaryForKey:@"appInfo"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:v7];
      v12 = v11;
      if (v11 && ([v11 isEqualToDictionary:infoCopy] & 1) != 0)
      {

LABEL_10:
        goto LABEL_11;
      }

      v13 = [v10 mutableCopy];
      [v13 setObject:infoCopy forKey:v7];
      [v8 setObject:v13 forKey:@"appInfo"];
    }

    else
    {
      v14 = v7;
      v15 = infoCopy;
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
  suspendedFontProvidersInfo = [(UserFontManager *)self suspendedFontProvidersInfo];
  allKeys = [suspendedFontProvidersInfo allKeys];

  return allKeys;
}

- (void)suspendedFontProviders:(id)providers
{
  providersCopy = providers;
  suspendedFontProviders = [(UserFontManager *)self suspendedFontProviders];
  providersCopy[2](providersCopy, suspendedFontProviders);
}

- (id)fontFilesForFontProvider:(id)provider suspended:(BOOL)suspended
{
  providerCopy = provider;
  v7 = objc_opt_new();
  v8 = sub_100001378(providerCopy);

  path = [v8 path];
  gsFontUserFontsCacheInfo = [(UserFontManager *)self gsFontUserFontsCacheInfo];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100006238;
  v16[3] = &unk_100010528;
  v17 = path;
  suspendedCopy = suspended;
  v11 = v7;
  v18 = v11;
  v12 = path;
  [gsFontUserFontsCacheInfo enumerateKeysAndObjectsUsingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

- (void)suspendFontProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  [(UserFontManager *)self suspendFontProvider:provider];
  handlerCopy[2]();
}

- (void)suspendFontProvider:(id)provider
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000063F8;
  v5[3] = &unk_100010550;
  providerCopy = provider;
  selfCopy = self;
  v4 = providerCopy;
  [(UserFontManager *)self updateUserInstalledFonts:v5];
}

- (void)resumeSuspendedFontsForFontProvider:(id)provider
{
  v3 = [(UserFontManager *)self fontFilesForFontProvider:provider suspended:1];
  if ([v3 count])
  {
    GSFontEnableOrDisablePersistentURLs2();
  }
}

- (void)resumeSuspendedFontFiles:(id)files
{
  filesCopy = files;
  suspendedFontProvidersInfo = [(UserFontManager *)self suspendedFontProvidersInfo];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [suspendedFontProvidersInfo allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(UserFontManager *)self resumeSuspendedFontsForFontProvider:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  filesCopy[2](filesCopy, suspendedFontProvidersInfo);
}

- (void)resumeFontProvider:(id)provider
{
  providerCopy = provider;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 dictionaryForKey:@"suspended"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    [v8 removeObjectForKey:providerCopy];
    [v5 setObject:v8 forKey:@"suspended"];
    [v5 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
    v9 = [(UserFontManager *)self fontFilesForFontProvider:providerCopy suspended:1];
    if ([v9 count])
    {
      GSFontEnableOrDisablePersistentURLs2();
    }
  }
}

- (void)fontProvidersSubscriptionSupportInfo:(id)info
{
  infoCopy = info;
  v32 = +[NSUserDefaults standardUserDefaults];
  v4 = [v32 dictionaryForKey:@"appInfo"];
  selfCopy = self;
  knownFontProviderIdentifiers = [(UserFontManager *)self knownFontProviderIdentifiers];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = [knownFontProviderIdentifiers countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v42 = *v46;
    v9 = &GSFontCopyProfileFontsCacheInfoFileURL_ptr;
    v34 = knownFontProviderIdentifiers;
    v35 = v4;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(knownFontProviderIdentifiers);
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
                bOOLValue = [v22 BOOLValue];

                v23 = [(UserFontManager *)selfCopy lastAccessedTime:v11];
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
                v26 = [NSNumber numberWithBool:bOOLValue];
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

                knownFontProviderIdentifiers = v34;
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
          v30 = [(UserFontManager *)selfCopy lastAccessedTime:v11, v11];
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

      v7 = [knownFontProviderIdentifiers countByEnumeratingWithState:&v45 objects:v53 count:16];
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
  [(UserFontManager *)selfCopy retriveInstalledFontFamilies:&v44 andRemovedFontFamiliesCount:&v43];
  countProfileFonts = [(UserFontManager *)selfCopy countProfileFonts];
  infoCopy[2](infoCopy, v8, v44, v43, countProfileFonts);
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

- (void)synchronizeFontAssets:(id)assets
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006E50;
  v4[3] = &unk_1000105A0;
  v4[4] = self;
  assetsCopy = assets;
  v3 = assetsCopy;
  StartAccessingFontAssetsWithHandler(v4);
}

- (void)synchronizeProfileFonts:(id)fonts
{
  fontsCopy = fonts;
  FSLog_Debug();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007C30;
  v6[3] = &unk_100010320;
  v7 = fontsCopy;
  v5 = fontsCopy;
  [(UserFontManager *)self updateUserInstalledFonts:v6];
}

- (void)recordInstalledFontFamiliesCount:(unint64_t)count
{
  if (count)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setInteger:objc_msgSend(v4 forKey:{"integerForKey:", @"installed", @"installed"}];
    [v4 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

- (void)recordUninstalledFontFamiliesCount:(unint64_t)count
{
  if (count)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setInteger:objc_msgSend(v4 forKey:{"integerForKey:", @"removed", @"removed"}];
    [v4 synchronize];
    CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  }
}

- (void)retriveInstalledFontFamilies:(unint64_t *)families andRemovedFontFamiliesCount:(unint64_t *)count
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v6 = [v8 integerForKey:@"installed"];
  v7 = [v8 integerForKey:@"removed"];
  *families = v6;
  *count = v7;
  [v8 setInteger:0 forKey:@"installed"];
  [v8 setInteger:0 forKey:@"removed"];
  [v8 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
}

@end