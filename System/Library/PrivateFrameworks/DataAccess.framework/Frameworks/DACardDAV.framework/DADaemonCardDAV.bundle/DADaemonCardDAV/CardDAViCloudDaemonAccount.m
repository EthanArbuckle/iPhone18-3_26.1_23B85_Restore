@interface CardDAViCloudDaemonAccount
- (BOOL)_handleOrphanarium:(id)a3 toBeCreatedContainersByURL:(id)a4;
- (BOOL)applyRefreshedValuesFromPropFind:(id)a3 toContainer:(id)a4;
- (BOOL)setBestMeCard;
- (BOOL)useSSL;
- (CardDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)a3;
- (DABestMeContactPicker)bestMePicker;
- (id)containerPropertiesToFetchDuringRefresh;
- (id)copyImageContentsAtURL:(id)a3 outError:(id *)a4;
- (id)getAppleIDSession;
- (id)host;
- (id)newDAContainerForContainer:(id)a3;
- (int64_t)port;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_assignConnectionProperties:(id)a3 toSessionConfiguration:(id)a4;
- (void)_handleAuthenticationChallenge:(id)a3 completionHandler:(id)a4;
- (void)_reallySyncAddressBookURLsWithConsumer:(id)a3;
- (void)_sendRequest:(id)a3;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)reload;
- (void)resetAccountID;
- (void)shutdown;
@end

@implementation CardDAViCloudDaemonAccount

- (CardDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v15.receiver = self;
  v15.super_class = CardDAViCloudDaemonAccount;
  v3 = [(CardDAVDaemonAccount *)&v15 initWithBackingAccountInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(CardDAViCloudDaemonAccount *)v3 setHostOverride:0];
    [(CardDAViCloudDaemonAccount *)v4 setUseSSLOverride:0xFFFFFFFFLL];
    [(CardDAViCloudDaemonAccount *)v4 setPortOverride:-1];
    if ([(CardDAViCloudDaemonAccount *)v4 enabledForDADataclass:2])
    {
      v5 = objc_opt_new();
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v6, v7))
      {
        v8 = [v5 transactionId];
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&dword_0, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
      }

      v9 = +[DALocalDBGateKeeper sharedGateKeeper];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_2052C;
      v12[3] = &unk_3CE20;
      v13 = v4;
      v14 = v5;
      v10 = v5;
      [v9 registerWaiter:v13 forDataclassLocks:2 completionHandler:v12];
    }
  }

  return v4;
}

- (DABestMeContactPicker)bestMePicker
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAViCloudDaemonAccount *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DABestMeContactPicker pickerWithContactStore:v6];
  }

  else
  {
    v7 = +[DABestMeContactPicker pickerWithAddressBook:](DABestMeContactPicker, "pickerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (void)shutdown
{
  v3 = [(CardDAViCloudDaemonAccount *)self defaultSession];

  if (v3)
  {
    v4 = [(CardDAViCloudDaemonAccount *)self defaultSession];
    [v4 invalidateAndCancel];

    [(CardDAViCloudDaemonAccount *)self setDefaultSession:0];
  }

  [(CardDAViCloudDaemonAccount *)self setImageFetchTask:0];
  v5.receiver = self;
  v5.super_class = CardDAViCloudDaemonAccount;
  [(CardDAViCloudDaemonAccount *)&v5 shutdown];
}

- (void)reload
{
  v3 = [(CardDAViCloudDaemonAccount *)self defaultSession];

  if (v3)
  {
    v4 = [(CardDAViCloudDaemonAccount *)self defaultSession];
    [v4 invalidateAndCancel];

    [(CardDAViCloudDaemonAccount *)self setDefaultSession:0];
  }

  [(CardDAViCloudDaemonAccount *)self setImageFetchTask:0];
  v5.receiver = self;
  v5.super_class = CardDAViCloudDaemonAccount;
  [(CardDAViCloudDaemonAccount *)&v5 reload];
}

- (id)host
{
  v3 = [(CardDAViCloudDaemonAccount *)self hostOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CardDAViCloudDaemonAccount *)self hostFromDataclassPropertiesForDataclass:kAccountDataclassContacts];
  }

  v6 = v5;

  return v6;
}

- (BOOL)useSSL
{
  if (([(CardDAViCloudDaemonAccount *)self useSSLOverride]& 0x80000000) == 0)
  {
    return [(CardDAViCloudDaemonAccount *)self useSSLOverride]!= 0;
  }

  v4 = kAccountDataclassContacts;

  return [(CardDAViCloudDaemonAccount *)self useSSLFromDataclassPropertiesForDataclass:v4];
}

- (int64_t)port
{
  if ([(CardDAViCloudDaemonAccount *)self portOverride]< 0)
  {
    v4 = kAccountDataclassContacts;

    return [(CardDAViCloudDaemonAccount *)self portFromDataclassPropertiesForDataclass:v4];
  }

  else
  {

    return [(CardDAViCloudDaemonAccount *)self portOverride];
  }
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "Home set is on a different host. Fetching new AppleAccount properties", buf, 2u);
  }

  v6 = sharedDAAccountStore();
  v7 = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  v8 = [v7 parentAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_20CD8;
  v9[3] = &unk_3CE88;
  v9[4] = self;
  [v6 aa_updatePropertiesForAppleAccount:v8 completion:v9];
}

- (BOOL)_handleOrphanarium:(id)a3 toBeCreatedContainersByURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] && objc_msgSend(v7, "count"))
  {
    v8 = [v7 allKeys];
    v9 = [v8 objectAtIndexedSubscript:0];

    v42 = v9;
    v10 = [v7 objectForKeyedSubscript:v9];
    v41 = [(CardDAViCloudDaemonAccount *)self databaseHelper];
    v11 = [v6 firstObject];
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [(CardDAViCloudDaemonAccount *)self accountID];
      *buf = 138543362;
      v45 = v14;
      _os_log_impl(&dword_0, v12, v13, "Finishing migration of store with id %{public}@ into a pretty CardDAV butterfly", buf, 0xCu);
    }

    v15 = [NSMutableDictionary alloc];
    v16 = [v10 bulkRequests];
    v17 = [v15 initWithObjectsAndKeys:{&__kCFBooleanTrue, @"NeedInitialSync", v16, @"BulkRequests", 0}];

    [CardDAVPropertiesHelper updateSyncDict:v17 withDAVContainer:v10];
    v40 = v17;
    v39 = [NSPropertyListSerialization dataFromPropertyList:v17 format:200 errorDescription:0];
    v18 = [v10 containerTitle];
    if (!v18)
    {
      v19 = [v10 url];
      v20 = [v19 lastPathComponent];
      v18 = [v20 prettyStringForDisplayName];
    }

    v21 = [v10 privileges];
    if ([v21 count])
    {
      v38 = [v10 hasWriteContentPrivileges] ^ 1;
    }

    else
    {
      v38 = 0;
    }

    v23 = [v10 privileges];
    if ([v23 count])
    {
      v37 = [v10 hasWritePropertiesPrivileges] ^ 1;
    }

    else
    {
      v37 = 0;
    }

    v24 = [(CardDAVDaemonAccount *)self _copyABAccount:1];
    [v11 setType:4];
    v25 = [v10 url];
    v26 = [(CardDAVDaemonAccount *)self homeURL];
    v27 = [v25 da_leastInfoStringRepresentationRelativeToParentURL:v26];
    [v11 setExternalIdentifier:v27];

    if (v18)
    {
      v28 = v18;
    }

    else
    {
      v28 = @"CardDAV";
    }

    [v11 setName:v28];
    v29 = [objc_opt_class() addressBookConstraintsPlistPath];
    [v11 setConstraintsPath:v29];

    [v11 setSyncData:v39];
    v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v24 legacyIdentifier]);
    v31 = [v30 stringValue];
    [v11 setAccountIdentifier:v31];

    [v11 setContentReadonly:v38];
    [v11 setArePropertiesReadonly:v37];
    v32 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
    v33 = [v41 abChangeTrackingID];
    [v32 registerClientWithIdentifier:v33 forContainer:v11];

    v34 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
    [v34 unregisterClientWithIdentifier:@"com.apple.mobilesync" forContainer:0];

    [v6 removeObjectAtIndex:0];
    [v7 removeObjectForKey:v42];

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v43.receiver = self;
  v43.super_class = CardDAViCloudDaemonAccount;
  v35 = [(CardDAVDaemonAccount *)&v43 _handleOrphanarium:v6 toBeCreatedContainersByURL:v7];

  return v22 | v35;
}

- (id)newDAContainerForContainer:(id)a3
{
  v4 = a3;
  if (([v4 isSearchAddressBook] & 1) != 0 || objc_msgSend(v4, "isAddressBook") && (objc_msgSend(v4, "isSharedAddressBook") & 1) == 0)
  {
    v5 = [NSMutableDictionary alloc];
    v6 = [v4 bulkRequests];
    v7 = [v5 initWithObjectsAndKeys:{&__kCFBooleanTrue, @"NeedInitialSync", v6, @"BulkRequests", 0}];

    [CardDAVPropertiesHelper updateSyncDict:v7 withDAVContainer:v4];
    v8 = [NSPropertyListSerialization dataFromPropertyList:v7 format:200 errorDescription:0];
    v12.receiver = self;
    v12.super_class = CardDAViCloudDaemonAccount;
    v9 = [(CardDAVDaemonAccount *)&v12 newDAContainerForContainer:v4];
    v10 = v9;
    if (v9)
    {
      [v9 setSyncData:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)resetAccountID
{
  [(CardDAViCloudDaemonAccount *)self setObject:0 forKeyedSubscript:@"CardDAVAccountPrincipalURL"];
  v3.receiver = self;
  v3.super_class = CardDAViCloudDaemonAccount;
  [(CardDAViCloudDaemonAccount *)&v3 resetAccountID];
}

- (id)copyImageContentsAtURL:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [v6 scheme];
  if (!v7 || ([v6 host], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v40 = v6;
      v12 = "Image URL %@ is invalid for fetching an image";
      goto LABEL_8;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v9 = self;
  objc_sync_enter(v9);
  if ([(CardDAViCloudDaemonAccount *)v9 fetchingImageDataRefCount]> 0)
  {
    objc_sync_exit(v9);

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v40 = v6;
      v12 = "Copying image from URL %@ is aborted because another fetch is in progress";
LABEL_8:
      _os_log_impl(&dword_0, v10, v11, v12, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [(CardDAViCloudDaemonAccount *)v9 setFetchingImageDataRefCount:1];
  objc_sync_exit(v9);

  v15 = DALoggingwithCategory();
  v16 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412290;
    v40 = v6;
    _os_log_impl(&dword_0, v15, v16, "Copying image from URL %@ is starting. Set fetchingImageDataRefCount to 1.", buf, 0xCu);
  }

  v17 = [(CardDAViCloudDaemonAccount *)v9 username];
  v10 = [v6 CDVURLWithUser:v17];

  v18 = [[NSMutableURLRequest alloc] initWithURL:v10 cachePolicy:1 timeoutInterval:60.0];
  [(CardDAViCloudDaemonAccount *)v9 setUrlRequest:v18];

  v19 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
  [v19 _setProperty:kCFBooleanTrue forKey:kCFURLRequestPreAuthXMMeAuthToken];

  v20 = [(CardDAViCloudDaemonAccount *)v9 additionalHeaderValues];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_21B8C;
  v38[3] = &unk_3CEB0;
  v38[4] = v9;
  [v20 enumerateKeysAndObjectsUsingBlock:v38];

  v21 = [(CardDAViCloudDaemonAccount *)v9 copyStorageSession];
  if (v21)
  {
    v22 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
    v23 = [v22 DARequestByApplyingStorageSession:v21];
    [(CardDAViCloudDaemonAccount *)v9 setUrlRequest:v23];

    CFRelease(v21);
  }

  v24 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
  [v24 _setNonAppInitiated:1];

  v25 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
  [(CardDAViCloudDaemonAccount *)v9 _sendRequest:v25];

  v26 = DALoggingwithCategory();
  if (os_log_type_enabled(v26, v16))
  {
    v27 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
    v28 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
    v29 = [v28 allHTTPHeaderFields];
    *buf = 138412546;
    v40 = v27;
    v41 = 2112;
    v42 = v29;
    _os_log_impl(&dword_0, v26, v16, "Fetching image at %@ with header fields %@", buf, 0x16u);
  }

  while ([(CardDAViCloudDaemonAccount *)v9 fetchingImageDataRefCount])
  {
    v30 = +[NSRunLoop currentRunLoop];
    v31 = [NSDate dateWithTimeIntervalSinceNow:0.1];
    [v30 runMode:@"CardDAVImageFetch" beforeDate:v31];
  }

  [(CardDAViCloudDaemonAccount *)v9 setImageFetchTask:0];
  if (*(&v9->_fetchedImageData + 3) || (v35 = *(&v9->_portOverride + 3)) == 0)
  {
    v32 = DALoggingwithCategory();
    v33 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(&v9->_fetchedImageData + 3);
      *buf = 138412546;
      v40 = v6;
      v41 = 2112;
      v42 = v34;
      _os_log_impl(&dword_0, v32, v33, "Could not get photo data from url %@.  Error %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v13 = v35;
    v32 = DALoggingwithCategory();
    if (os_log_type_enabled(v32, v16))
    {
      v36 = [(CardDAViCloudDaemonAccount *)v9 urlRequest];
      v37 = *(&v9->_portOverride + 3);
      *buf = 138412546;
      v40 = v36;
      v41 = 2048;
      v42 = v37;
      _os_log_impl(&dword_0, v32, v16, "Fetched image at %@, data at %p", buf, 0x16u);
    }
  }

  if (a4)
  {
    *a4 = *(&v9->_fetchedImageData + 3);
  }

  [(CardDAViCloudDaemonAccount *)v9 setFetchedImageData:0];
  [(CardDAViCloudDaemonAccount *)v9 setFetchImageError:0];
  [(CardDAViCloudDaemonAccount *)v9 setUrlRequest:0];
LABEL_10:

  return v13;
}

- (void)_assignConnectionProperties:(id)a3 toSessionConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v5 allKeys];
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    v11 = kCFStreamPropertyAccountIdentifier;
    v18 = kCFStreamPropertySourceApplicationBundleIdentifier;
    type = _CPLog_to_os_log_type[6];
    *&v8 = 138412290;
    v16 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v16}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CardDAViCloudDaemonAccount *)self _assignConnectionProperties:v14 toSessionConfiguration:v6];
        }

        else
        {
          if ([v13 isEqualToString:v11])
          {
            v15 = [v5 objectForKeyedSubscript:v13];
            [v6 set_sourceApplicationSecondaryIdentifier:v15];
          }

          else if ([v13 isEqualToString:v18])
          {
            v15 = [v5 objectForKeyedSubscript:v13];
            [v6 set_sourceApplicationBundleIdentifier:v15];
          }

          else
          {
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, type))
            {
              *buf = v16;
              v26 = v13;
              _os_log_impl(&dword_0, v15, type, "Connection property: %@ is not set", buf, 0xCu);
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }
}

- (void)_sendRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  defaultSessionWasUserRequested = v5->_defaultSessionWasUserRequested;
  if (defaultSessionWasUserRequested != [(CardDAViCloudDaemonAccount *)v5 wasUserInitiated]|| ([(CardDAViCloudDaemonAccount *)v5 defaultSession], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [(CardDAViCloudDaemonAccount *)v5 getAppleIDSession];
    v9 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v9 set_appleIDContext:v8];
    [v9 setURLCache:0];
    v10 = [(CardDAViCloudDaemonAccount *)v5 wasUserInitiated];
    v5->_defaultSessionWasUserRequested = v10;
    [v9 setDiscretionary:v10 ^ 1];
    v11 = [(CardDAViCloudDaemonAccount *)v5 customConnectionProperties];
    [(CardDAViCloudDaemonAccount *)v5 _assignConnectionProperties:v11 toSessionConfiguration:v9];

    v12 = [NSURLSession sessionWithConfiguration:v9 delegate:v5 delegateQueue:0];
    [(CardDAViCloudDaemonAccount *)v5 setDefaultSession:v12];
  }

  objc_sync_exit(v5);

  v13 = [(CardDAViCloudDaemonAccount *)v5 defaultSession];

  if (v13)
  {
    v14 = [(CardDAViCloudDaemonAccount *)v5 defaultSession];
    v15 = [v14 dataTaskWithRequest:v4];
    [(CardDAViCloudDaemonAccount *)v5 setImageFetchTask:v15];

    v16 = [(CardDAViCloudDaemonAccount *)v5 imageFetchTask];
    [v16 resume];

    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v17, v18))
    {
      v19 = [(CardDAViCloudDaemonAccount *)v5 defaultSession];
      v20 = [(CardDAViCloudDaemonAccount *)v5 imageFetchTask];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29 = 134218754;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      v33 = 2112;
      v34 = v22;
      v35 = 2048;
      v36 = v5;
      _os_log_impl(&dword_0, v17, v18, "CardDAV NSURLSession Convert: session %p created dataTask %p for %@ %p", &v29, 0x2Au);
    }
  }

  v23 = [(CardDAViCloudDaemonAccount *)v5 imageFetchTask];
  v24 = v23 == 0;

  if (v24)
  {
    v25 = DALoggingwithCategory();
    v26 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v25, v26))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = 138412546;
      v30 = v28;
      v31 = 2048;
      v32 = v5;
      _os_log_impl(&dword_0, v25, v26, "CardDAV NSURLSession Convert: could not create dataTask for %@ %p", &v29, 0x16u);
    }

    [(CardDAViCloudDaemonAccount *)v5 setFetchingImageDataRefCount:0];
  }
}

- (id)containerPropertiesToFetchDuringRefresh
{
  v2 = objc_alloc_init(NSMutableSet);
  [v2 CDVAddItemParserMappingWithNameSpace:cdXMLMMeDAVURI name:cdXMLCardDAVGuardianRestricted parseClass:objc_opt_class()];

  return v2;
}

- (BOOL)applyRefreshedValuesFromPropFind:(id)a3 toContainer:(id)a4
{
  v5 = a4;
  v6 = [a3 multiStatus];
  v7 = [v6 orderedResponses];
  v8 = [v7 firstObject];
  v9 = [v8 successfulPropertiesToValues];

  v10 = [v9 CDVObjectForKeyWithNameSpace:cdXMLMMeDAVURI andName:cdXMLCardDAVGuardianRestricted];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = [v10 payloadAsString];
  v13 = [v12 isEqualToString:@"true"];

  if (v13 != [v5 isGuardianRestricted] || !objc_msgSend(v5, "isGuardianStateDirty"))
  {
    if (([v5 isGuardianStateDirty] & 1) == 0 && v13 != objc_msgSend(v5, "isGuardianRestricted"))
    {
      [v5 setGuardianRestricted:v13];
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  [v5 setGuardianStateDirty:0];
LABEL_8:
  v14 = 1;
LABEL_10:

  return v14;
}

- (void)_reallySyncAddressBookURLsWithConsumer:(id)a3
{
  v4 = a3;
  v5 = [CardDAViCloudGetAccountPropertiesTaskGroup alloc];
  v6 = [(CardDAViCloudDaemonAccount *)self taskManager];
  v7 = [(CardDAViCloudGetAccountPropertiesTaskGroup *)v5 initWithAccountInfoProvider:self taskManager:v6];

  [(CardDAViCloudGetAccountPropertiesTaskGroup *)v7 setDelegate:self];
  [(CardDAViCloudDaemonAccount *)self setConsumer:v4 forTask:v7];

  [(CardDAViCloudGetAccountPropertiesTaskGroup *)v7 startTaskGroup];
}

- (BOOL)setBestMeCard
{
  v3 = [(CardDAViCloudDaemonAccount *)self bestMePicker];
  v4 = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  v5 = [v4 aa_firstName];
  v6 = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  v7 = [v6 aa_lastName];
  v8 = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  v9 = [v8 aa_primaryEmail];
  v10 = [v3 pickBestMeContactForGivenName:v5 familyName:v7 primaryEmail:v9];

  return v10;
}

- (void)_handleAuthenticationChallenge:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 protectionSpace];
  v7 = [v6 authenticationMethod];
  if ([v7 isEqualToString:NSURLAuthenticationMethodXMobileMeAuthToken])
  {
    if ([v9 previousFailureCount] < 1)
    {
      v8 = [v9 proposedCredential];
      v5[2](v5, 0, v8);

      goto LABEL_9;
    }
  }

  else if (([v7 isEqualToString:NSURLAuthenticationMethodServerTrust] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", NSURLAuthenticationMethodClientCertificate))
  {
    v5[2](v5, 1, 0);
    goto LABEL_9;
  }

  v5[2](v5, 2, 0);
LABEL_9:
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = 134218498;
    v14 = v6;
    v15 = 2112;
    v16 = v11;
    v17 = 2048;
    v18 = self;
    _os_log_impl(&dword_0, v8, v9, "CardDAV NSURLSession Convert: session %p didBecomeInvalidWithError for %@ %p", &v13, 0x20u);
  }

  if (v7)
  {
    [(CardDAViCloudDaemonAccount *)self setFetchedImageData:0];
    [(CardDAViCloudDaemonAccount *)self setFetchImageError:v7];
  }

  [(CardDAViCloudDaemonAccount *)self setDefaultSession:0];
  v12 = self;
  objc_sync_enter(v12);
  [(CardDAViCloudDaemonAccount *)v12 setFetchingImageDataRefCount:0];
  objc_sync_exit(v12);
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v11, v12))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 134218498;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_0, v11, v12, "CardDAV NSURLSession Convert: session %p didReceiveChallenge for %@ %p", &v15, 0x20u);
  }

  [(CardDAViCloudDaemonAccount *)self _handleAuthenticationChallenge:v10 completionHandler:v9];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = 134218754;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 2112;
    v23 = v17;
    v24 = 2048;
    v25 = self;
    _os_log_impl(&dword_0, v14, v15, "CardDAV NSURLSession Convert: session %p dataTask %p didReceiveChallenge for %@ %p", &v18, 0x2Au);
  }

  [(CardDAViCloudDaemonAccount *)self _handleAuthenticationChallenge:v13 completionHandler:v12];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v11, v12))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v21 = 134219010;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v14;
    v29 = 2048;
    v30 = self;
    _os_log_impl(&dword_0, v11, v12, "CardDAV NSURLSession Convert: session %p dataTask %p didCompleteWithError %@ for %@ %p", &v21, 0x34u);
  }

  v15 = self;
  objc_sync_enter(v15);
  if ([(CardDAViCloudDaemonAccount *)v15 fetchingImageDataRefCount]>= 1)
  {
    [(CardDAViCloudDaemonAccount *)v15 setFetchingImageDataRefCount:[(CardDAViCloudDaemonAccount *)v15 fetchingImageDataRefCount]- 1];
  }

  objc_sync_exit(v15);

  if (v10)
  {
    [(CardDAViCloudDaemonAccount *)v15 setFetchImageError:v10];
    [(CardDAViCloudDaemonAccount *)v15 setFetchedImageData:0];
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v16, v17))
    {
      v18 = [(CardDAViCloudDaemonAccount *)v15 fetchingImageDataRefCount];
      v21 = 67109120;
      LODWORD(v22) = v18;
      v19 = "Fail to copy image. Decrement fetchingImageDataRefCount to %d.";
LABEL_10:
      _os_log_impl(&dword_0, v16, v17, v19, &v21, 8u);
    }
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v16, v17))
    {
      v20 = [(CardDAViCloudDaemonAccount *)v15 fetchingImageDataRefCount];
      v21 = 67109120;
      LODWORD(v22) = v20;
      v19 = "Completed copying image. Decrement fetchingImageDataRefCount to %d.";
      goto LABEL_10;
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v23 = 134219010;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v17;
    v31 = 2048;
    v32 = self;
    _os_log_impl(&dword_0, v14, v15, "CardDAV NSURLSession Convert: session %p dataTask %p didReceiveResponse %@ for %@ %p", &v23, 0x34u);
  }

  v18 = [v12 statusCode];
  if ((v18 - 300) <= 0xFFFFFF9B)
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v19, v20))
    {
      v21 = [v11 currentRequest];
      v23 = 138412546;
      v24 = v21;
      v25 = 1024;
      LODWORD(v26) = v18;
      _os_log_impl(&dword_0, v19, v20, "The server blocked our image data fetch.  Request %@.  Response status code %d", &v23, 0x12u);
    }

    v22 = [NSError errorWithDomain:CoreDAVHTTPStatusErrorDomain code:v18 userInfo:0];
    [(CardDAViCloudDaemonAccount *)self setFetchImageError:v22];

    [(CardDAViCloudDaemonAccount *)self setFetchedImageData:0];
  }

  v13[2](v13, 1);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v11, v12))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v20 = 134218754;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    v24 = 2112;
    v25 = v14;
    v26 = 2048;
    v27 = self;
    _os_log_impl(&dword_0, v11, v12, "CardDAV NSURLSession Convert: session %p dataTask %p didReceiveData for %@ %p", &v20, 0x2Au);
  }

  v15 = [(CardDAViCloudDaemonAccount *)self fetchedImageData];

  if (!v15)
  {
    v16 = objc_opt_new();
    [(CardDAViCloudDaemonAccount *)self setFetchedImageData:v16];
  }

  v17 = [(CardDAViCloudDaemonAccount *)self fetchedImageData];
  [v17 appendData:v10];

  v18 = DALoggingwithCategory();
  if (os_log_type_enabled(v18, v12))
  {
    v19 = [(CardDAViCloudDaemonAccount *)self fetchedImageData];
    v20 = 134217984;
    v21 = v19;
    _os_log_impl(&dword_0, v18, v12, "Adding fetched image data to %p", &v20, 0xCu);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = 134218754;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    v23 = self;
    _os_log_impl(&dword_0, v12, v13, "CardDAV NSURLSession Convert: session %p dataTask %p willCacheResponse for %@ %p", &v16, 0x2Au);
  }

  v11[2](v11, 0);
}

- (id)getAppleIDSession
{
  if (qword_46F90 != -1)
  {
    sub_25D90();
  }

  v3 = qword_46F88;

  return v3;
}

@end