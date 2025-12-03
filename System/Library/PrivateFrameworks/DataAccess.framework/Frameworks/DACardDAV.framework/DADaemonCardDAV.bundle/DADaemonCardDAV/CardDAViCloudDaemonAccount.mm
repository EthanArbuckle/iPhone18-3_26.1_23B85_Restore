@interface CardDAViCloudDaemonAccount
- (BOOL)_handleOrphanarium:(id)orphanarium toBeCreatedContainersByURL:(id)l;
- (BOOL)applyRefreshedValuesFromPropFind:(id)find toContainer:(id)container;
- (BOOL)setBestMeCard;
- (BOOL)useSSL;
- (CardDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)info;
- (DABestMeContactPicker)bestMePicker;
- (id)containerPropertiesToFetchDuringRefresh;
- (id)copyImageContentsAtURL:(id)l outError:(id *)error;
- (id)getAppleIDSession;
- (id)host;
- (id)newDAContainerForContainer:(id)container;
- (int64_t)port;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_assignConnectionProperties:(id)properties toSessionConfiguration:(id)configuration;
- (void)_handleAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)_reallySyncAddressBookURLsWithConsumer:(id)consumer;
- (void)_sendRequest:(id)request;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)reload;
- (void)resetAccountID;
- (void)shutdown;
@end

@implementation CardDAViCloudDaemonAccount

- (CardDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)info
{
  v15.receiver = self;
  v15.super_class = CardDAViCloudDaemonAccount;
  v3 = [(CardDAVDaemonAccount *)&v15 initWithBackingAccountInfo:info];
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
        transactionId = [v5 transactionId];
        *buf = 138543362;
        v17 = transactionId;
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
  databaseHelper = [(CardDAViCloudDaemonAccount *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DABestMeContactPicker pickerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DABestMeContactPicker pickerWithAddressBook:](DABestMeContactPicker, "pickerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (void)shutdown
{
  defaultSession = [(CardDAViCloudDaemonAccount *)self defaultSession];

  if (defaultSession)
  {
    defaultSession2 = [(CardDAViCloudDaemonAccount *)self defaultSession];
    [defaultSession2 invalidateAndCancel];

    [(CardDAViCloudDaemonAccount *)self setDefaultSession:0];
  }

  [(CardDAViCloudDaemonAccount *)self setImageFetchTask:0];
  v5.receiver = self;
  v5.super_class = CardDAViCloudDaemonAccount;
  [(CardDAViCloudDaemonAccount *)&v5 shutdown];
}

- (void)reload
{
  defaultSession = [(CardDAViCloudDaemonAccount *)self defaultSession];

  if (defaultSession)
  {
    defaultSession2 = [(CardDAViCloudDaemonAccount *)self defaultSession];
    [defaultSession2 invalidateAndCancel];

    [(CardDAViCloudDaemonAccount *)self setDefaultSession:0];
  }

  [(CardDAViCloudDaemonAccount *)self setImageFetchTask:0];
  v5.receiver = self;
  v5.super_class = CardDAViCloudDaemonAccount;
  [(CardDAViCloudDaemonAccount *)&v5 reload];
}

- (id)host
{
  hostOverride = [(CardDAViCloudDaemonAccount *)self hostOverride];
  v4 = hostOverride;
  if (hostOverride)
  {
    v5 = hostOverride;
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

- (void)noteHomeSetOnDifferentHost:(id)host
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "Home set is on a different host. Fetching new AppleAccount properties", buf, 2u);
  }

  v6 = sharedDAAccountStore();
  backingAccountInfo = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_20CD8;
  v9[3] = &unk_3CE88;
  v9[4] = self;
  [v6 aa_updatePropertiesForAppleAccount:parentAccount completion:v9];
}

- (BOOL)_handleOrphanarium:(id)orphanarium toBeCreatedContainersByURL:(id)l
{
  orphanariumCopy = orphanarium;
  lCopy = l;
  if ([orphanariumCopy count] && objc_msgSend(lCopy, "count"))
  {
    allKeys = [lCopy allKeys];
    v9 = [allKeys objectAtIndexedSubscript:0];

    v42 = v9;
    v10 = [lCopy objectForKeyedSubscript:v9];
    databaseHelper = [(CardDAViCloudDaemonAccount *)self databaseHelper];
    firstObject = [orphanariumCopy firstObject];
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      accountID = [(CardDAViCloudDaemonAccount *)self accountID];
      *buf = 138543362;
      v45 = accountID;
      _os_log_impl(&dword_0, v12, v13, "Finishing migration of store with id %{public}@ into a pretty CardDAV butterfly", buf, 0xCu);
    }

    v15 = [NSMutableDictionary alloc];
    bulkRequests = [v10 bulkRequests];
    v17 = [v15 initWithObjectsAndKeys:{&__kCFBooleanTrue, @"NeedInitialSync", bulkRequests, @"BulkRequests", 0}];

    [CardDAVPropertiesHelper updateSyncDict:v17 withDAVContainer:v10];
    v40 = v17;
    v39 = [NSPropertyListSerialization dataFromPropertyList:v17 format:200 errorDescription:0];
    containerTitle = [v10 containerTitle];
    if (!containerTitle)
    {
      v19 = [v10 url];
      lastPathComponent = [v19 lastPathComponent];
      containerTitle = [lastPathComponent prettyStringForDisplayName];
    }

    privileges = [v10 privileges];
    if ([privileges count])
    {
      v38 = [v10 hasWriteContentPrivileges] ^ 1;
    }

    else
    {
      v38 = 0;
    }

    privileges2 = [v10 privileges];
    if ([privileges2 count])
    {
      v37 = [v10 hasWritePropertiesPrivileges] ^ 1;
    }

    else
    {
      v37 = 0;
    }

    v24 = [(CardDAVDaemonAccount *)self _copyABAccount:1];
    [firstObject setType:4];
    v25 = [v10 url];
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v27 = [v25 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];
    [firstObject setExternalIdentifier:v27];

    if (containerTitle)
    {
      v28 = containerTitle;
    }

    else
    {
      v28 = @"CardDAV";
    }

    [firstObject setName:v28];
    addressBookConstraintsPlistPath = [objc_opt_class() addressBookConstraintsPlistPath];
    [firstObject setConstraintsPath:addressBookConstraintsPlistPath];

    [firstObject setSyncData:v39];
    v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v24 legacyIdentifier]);
    stringValue = [v30 stringValue];
    [firstObject setAccountIdentifier:stringValue];

    [firstObject setContentReadonly:v38];
    [firstObject setArePropertiesReadonly:v37];
    changeHistoryClerk = [(CardDAVDaemonAccount *)self changeHistoryClerk];
    abChangeTrackingID = [databaseHelper abChangeTrackingID];
    [changeHistoryClerk registerClientWithIdentifier:abChangeTrackingID forContainer:firstObject];

    changeHistoryClerk2 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
    [changeHistoryClerk2 unregisterClientWithIdentifier:@"com.apple.mobilesync" forContainer:0];

    [orphanariumCopy removeObjectAtIndex:0];
    [lCopy removeObjectForKey:v42];

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v43.receiver = self;
  v43.super_class = CardDAViCloudDaemonAccount;
  v35 = [(CardDAVDaemonAccount *)&v43 _handleOrphanarium:orphanariumCopy toBeCreatedContainersByURL:lCopy];

  return v22 | v35;
}

- (id)newDAContainerForContainer:(id)container
{
  containerCopy = container;
  if (([containerCopy isSearchAddressBook] & 1) != 0 || objc_msgSend(containerCopy, "isAddressBook") && (objc_msgSend(containerCopy, "isSharedAddressBook") & 1) == 0)
  {
    v5 = [NSMutableDictionary alloc];
    bulkRequests = [containerCopy bulkRequests];
    v7 = [v5 initWithObjectsAndKeys:{&__kCFBooleanTrue, @"NeedInitialSync", bulkRequests, @"BulkRequests", 0}];

    [CardDAVPropertiesHelper updateSyncDict:v7 withDAVContainer:containerCopy];
    v8 = [NSPropertyListSerialization dataFromPropertyList:v7 format:200 errorDescription:0];
    v12.receiver = self;
    v12.super_class = CardDAViCloudDaemonAccount;
    v9 = [(CardDAVDaemonAccount *)&v12 newDAContainerForContainer:containerCopy];
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

- (id)copyImageContentsAtURL:(id)l outError:(id *)error
{
  lCopy = l;
  scheme = [lCopy scheme];
  if (!scheme || ([lCopy host], v8 = objc_claimAutoreleasedReturnValue(), v8, scheme, !v8))
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v40 = lCopy;
      v12 = "Image URL %@ is invalid for fetching an image";
      goto LABEL_8;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CardDAViCloudDaemonAccount *)selfCopy fetchingImageDataRefCount]> 0)
  {
    objc_sync_exit(selfCopy);

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v40 = lCopy;
      v12 = "Copying image from URL %@ is aborted because another fetch is in progress";
LABEL_8:
      _os_log_impl(&dword_0, v10, v11, v12, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [(CardDAViCloudDaemonAccount *)selfCopy setFetchingImageDataRefCount:1];
  objc_sync_exit(selfCopy);

  v15 = DALoggingwithCategory();
  v16 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412290;
    v40 = lCopy;
    _os_log_impl(&dword_0, v15, v16, "Copying image from URL %@ is starting. Set fetchingImageDataRefCount to 1.", buf, 0xCu);
  }

  username = [(CardDAViCloudDaemonAccount *)selfCopy username];
  v10 = [lCopy CDVURLWithUser:username];

  v18 = [[NSMutableURLRequest alloc] initWithURL:v10 cachePolicy:1 timeoutInterval:60.0];
  [(CardDAViCloudDaemonAccount *)selfCopy setUrlRequest:v18];

  urlRequest = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
  [urlRequest _setProperty:kCFBooleanTrue forKey:kCFURLRequestPreAuthXMMeAuthToken];

  additionalHeaderValues = [(CardDAViCloudDaemonAccount *)selfCopy additionalHeaderValues];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_21B8C;
  v38[3] = &unk_3CEB0;
  v38[4] = selfCopy;
  [additionalHeaderValues enumerateKeysAndObjectsUsingBlock:v38];

  copyStorageSession = [(CardDAViCloudDaemonAccount *)selfCopy copyStorageSession];
  if (copyStorageSession)
  {
    urlRequest2 = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
    v23 = [urlRequest2 DARequestByApplyingStorageSession:copyStorageSession];
    [(CardDAViCloudDaemonAccount *)selfCopy setUrlRequest:v23];

    CFRelease(copyStorageSession);
  }

  urlRequest3 = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
  [urlRequest3 _setNonAppInitiated:1];

  urlRequest4 = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
  [(CardDAViCloudDaemonAccount *)selfCopy _sendRequest:urlRequest4];

  v26 = DALoggingwithCategory();
  if (os_log_type_enabled(v26, v16))
  {
    urlRequest5 = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
    urlRequest6 = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
    allHTTPHeaderFields = [urlRequest6 allHTTPHeaderFields];
    *buf = 138412546;
    v40 = urlRequest5;
    v41 = 2112;
    v42 = allHTTPHeaderFields;
    _os_log_impl(&dword_0, v26, v16, "Fetching image at %@ with header fields %@", buf, 0x16u);
  }

  while ([(CardDAViCloudDaemonAccount *)selfCopy fetchingImageDataRefCount])
  {
    v30 = +[NSRunLoop currentRunLoop];
    v31 = [NSDate dateWithTimeIntervalSinceNow:0.1];
    [v30 runMode:@"CardDAVImageFetch" beforeDate:v31];
  }

  [(CardDAViCloudDaemonAccount *)selfCopy setImageFetchTask:0];
  if (*(&selfCopy->_fetchedImageData + 3) || (v35 = *(&selfCopy->_portOverride + 3)) == 0)
  {
    v32 = DALoggingwithCategory();
    v33 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(&selfCopy->_fetchedImageData + 3);
      *buf = 138412546;
      v40 = lCopy;
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
      urlRequest7 = [(CardDAViCloudDaemonAccount *)selfCopy urlRequest];
      v37 = *(&selfCopy->_portOverride + 3);
      *buf = 138412546;
      v40 = urlRequest7;
      v41 = 2048;
      v42 = v37;
      _os_log_impl(&dword_0, v32, v16, "Fetched image at %@, data at %p", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = *(&selfCopy->_fetchedImageData + 3);
  }

  [(CardDAViCloudDaemonAccount *)selfCopy setFetchedImageData:0];
  [(CardDAViCloudDaemonAccount *)selfCopy setFetchImageError:0];
  [(CardDAViCloudDaemonAccount *)selfCopy setUrlRequest:0];
LABEL_10:

  return v13;
}

- (void)_assignConnectionProperties:(id)properties toSessionConfiguration:(id)configuration
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [propertiesCopy allKeys];
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
        v14 = [propertiesCopy objectForKeyedSubscript:{v13, v16}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CardDAViCloudDaemonAccount *)self _assignConnectionProperties:v14 toSessionConfiguration:configurationCopy];
        }

        else
        {
          if ([v13 isEqualToString:v11])
          {
            v15 = [propertiesCopy objectForKeyedSubscript:v13];
            [configurationCopy set_sourceApplicationSecondaryIdentifier:v15];
          }

          else if ([v13 isEqualToString:v18])
          {
            v15 = [propertiesCopy objectForKeyedSubscript:v13];
            [configurationCopy set_sourceApplicationBundleIdentifier:v15];
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

- (void)_sendRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultSessionWasUserRequested = selfCopy->_defaultSessionWasUserRequested;
  if (defaultSessionWasUserRequested != [(CardDAViCloudDaemonAccount *)selfCopy wasUserInitiated]|| ([(CardDAViCloudDaemonAccount *)selfCopy defaultSession], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    getAppleIDSession = [(CardDAViCloudDaemonAccount *)selfCopy getAppleIDSession];
    v9 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v9 set_appleIDContext:getAppleIDSession];
    [v9 setURLCache:0];
    wasUserInitiated = [(CardDAViCloudDaemonAccount *)selfCopy wasUserInitiated];
    selfCopy->_defaultSessionWasUserRequested = wasUserInitiated;
    [v9 setDiscretionary:wasUserInitiated ^ 1];
    customConnectionProperties = [(CardDAViCloudDaemonAccount *)selfCopy customConnectionProperties];
    [(CardDAViCloudDaemonAccount *)selfCopy _assignConnectionProperties:customConnectionProperties toSessionConfiguration:v9];

    v12 = [NSURLSession sessionWithConfiguration:v9 delegate:selfCopy delegateQueue:0];
    [(CardDAViCloudDaemonAccount *)selfCopy setDefaultSession:v12];
  }

  objc_sync_exit(selfCopy);

  defaultSession = [(CardDAViCloudDaemonAccount *)selfCopy defaultSession];

  if (defaultSession)
  {
    defaultSession2 = [(CardDAViCloudDaemonAccount *)selfCopy defaultSession];
    v15 = [defaultSession2 dataTaskWithRequest:requestCopy];
    [(CardDAViCloudDaemonAccount *)selfCopy setImageFetchTask:v15];

    imageFetchTask = [(CardDAViCloudDaemonAccount *)selfCopy imageFetchTask];
    [imageFetchTask resume];

    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v17, v18))
    {
      defaultSession3 = [(CardDAViCloudDaemonAccount *)selfCopy defaultSession];
      imageFetchTask2 = [(CardDAViCloudDaemonAccount *)selfCopy imageFetchTask];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29 = 134218754;
      v30 = defaultSession3;
      v31 = 2048;
      v32 = imageFetchTask2;
      v33 = 2112;
      v34 = v22;
      v35 = 2048;
      v36 = selfCopy;
      _os_log_impl(&dword_0, v17, v18, "CardDAV NSURLSession Convert: session %p created dataTask %p for %@ %p", &v29, 0x2Au);
    }
  }

  imageFetchTask3 = [(CardDAViCloudDaemonAccount *)selfCopy imageFetchTask];
  v24 = imageFetchTask3 == 0;

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
      v32 = selfCopy;
      _os_log_impl(&dword_0, v25, v26, "CardDAV NSURLSession Convert: could not create dataTask for %@ %p", &v29, 0x16u);
    }

    [(CardDAViCloudDaemonAccount *)selfCopy setFetchingImageDataRefCount:0];
  }
}

- (id)containerPropertiesToFetchDuringRefresh
{
  v2 = objc_alloc_init(NSMutableSet);
  [v2 CDVAddItemParserMappingWithNameSpace:cdXMLMMeDAVURI name:cdXMLCardDAVGuardianRestricted parseClass:objc_opt_class()];

  return v2;
}

- (BOOL)applyRefreshedValuesFromPropFind:(id)find toContainer:(id)container
{
  containerCopy = container;
  multiStatus = [find multiStatus];
  orderedResponses = [multiStatus orderedResponses];
  firstObject = [orderedResponses firstObject];
  successfulPropertiesToValues = [firstObject successfulPropertiesToValues];

  v10 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:cdXMLMMeDAVURI andName:cdXMLCardDAVGuardianRestricted];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  payloadAsString = [v10 payloadAsString];
  v13 = [payloadAsString isEqualToString:@"true"];

  if (v13 != [containerCopy isGuardianRestricted] || !objc_msgSend(containerCopy, "isGuardianStateDirty"))
  {
    if (([containerCopy isGuardianStateDirty] & 1) == 0 && v13 != objc_msgSend(containerCopy, "isGuardianRestricted"))
    {
      [containerCopy setGuardianRestricted:v13];
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  [containerCopy setGuardianStateDirty:0];
LABEL_8:
  v14 = 1;
LABEL_10:

  return v14;
}

- (void)_reallySyncAddressBookURLsWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = [CardDAViCloudGetAccountPropertiesTaskGroup alloc];
  taskManager = [(CardDAViCloudDaemonAccount *)self taskManager];
  v7 = [(CardDAViCloudGetAccountPropertiesTaskGroup *)v5 initWithAccountInfoProvider:self taskManager:taskManager];

  [(CardDAViCloudGetAccountPropertiesTaskGroup *)v7 setDelegate:self];
  [(CardDAViCloudDaemonAccount *)self setConsumer:consumerCopy forTask:v7];

  [(CardDAViCloudGetAccountPropertiesTaskGroup *)v7 startTaskGroup];
}

- (BOOL)setBestMeCard
{
  bestMePicker = [(CardDAViCloudDaemonAccount *)self bestMePicker];
  backingAccountInfo = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  aa_firstName = [backingAccountInfo aa_firstName];
  backingAccountInfo2 = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  aa_lastName = [backingAccountInfo2 aa_lastName];
  backingAccountInfo3 = [(CardDAViCloudDaemonAccount *)self backingAccountInfo];
  aa_primaryEmail = [backingAccountInfo3 aa_primaryEmail];
  v10 = [bestMePicker pickBestMeContactForGivenName:aa_firstName familyName:aa_lastName primaryEmail:aa_primaryEmail];

  return v10;
}

- (void)_handleAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodXMobileMeAuthToken])
  {
    if ([challengeCopy previousFailureCount] < 1)
    {
      proposedCredential = [challengeCopy proposedCredential];
      handlerCopy[2](handlerCopy, 0, proposedCredential);

      goto LABEL_9;
    }
  }

  else if (([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust] & 1) != 0 || objc_msgSend(authenticationMethod, "isEqualToString:", NSURLAuthenticationMethodClientCertificate))
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_9;
  }

  handlerCopy[2](handlerCopy, 2, 0);
LABEL_9:
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = 134218498;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = v11;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v8, v9, "CardDAV NSURLSession Convert: session %p didBecomeInvalidWithError for %@ %p", &v13, 0x20u);
  }

  if (errorCopy)
  {
    [(CardDAViCloudDaemonAccount *)self setFetchedImageData:0];
    [(CardDAViCloudDaemonAccount *)self setFetchImageError:errorCopy];
  }

  [(CardDAViCloudDaemonAccount *)self setDefaultSession:0];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(CardDAViCloudDaemonAccount *)selfCopy2 setFetchingImageDataRefCount:0];
  objc_sync_exit(selfCopy2);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  challengeCopy = challenge;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v11, v12))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 134218498;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v11, v12, "CardDAV NSURLSession Convert: session %p didReceiveChallenge for %@ %p", &v15, 0x20u);
  }

  [(CardDAViCloudDaemonAccount *)self _handleAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  handlerCopy = handler;
  challengeCopy = challenge;
  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = 134218754;
    v19 = sessionCopy;
    v20 = 2048;
    v21 = taskCopy;
    v22 = 2112;
    v23 = v17;
    v24 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v14, v15, "CardDAV NSURLSession Convert: session %p dataTask %p didReceiveChallenge for %@ %p", &v18, 0x2Au);
  }

  [(CardDAViCloudDaemonAccount *)self _handleAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v11, v12))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v21 = 134219010;
    v22 = sessionCopy;
    v23 = 2048;
    v24 = taskCopy;
    v25 = 2112;
    v26 = errorCopy;
    v27 = 2112;
    v28 = v14;
    v29 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v11, v12, "CardDAV NSURLSession Convert: session %p dataTask %p didCompleteWithError %@ for %@ %p", &v21, 0x34u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if ([(CardDAViCloudDaemonAccount *)selfCopy2 fetchingImageDataRefCount]>= 1)
  {
    [(CardDAViCloudDaemonAccount *)selfCopy2 setFetchingImageDataRefCount:[(CardDAViCloudDaemonAccount *)selfCopy2 fetchingImageDataRefCount]- 1];
  }

  objc_sync_exit(selfCopy2);

  if (errorCopy)
  {
    [(CardDAViCloudDaemonAccount *)selfCopy2 setFetchImageError:errorCopy];
    [(CardDAViCloudDaemonAccount *)selfCopy2 setFetchedImageData:0];
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v16, v17))
    {
      fetchingImageDataRefCount = [(CardDAViCloudDaemonAccount *)selfCopy2 fetchingImageDataRefCount];
      v21 = 67109120;
      LODWORD(v22) = fetchingImageDataRefCount;
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
      fetchingImageDataRefCount2 = [(CardDAViCloudDaemonAccount *)selfCopy2 fetchingImageDataRefCount];
      v21 = 67109120;
      LODWORD(v22) = fetchingImageDataRefCount2;
      v19 = "Completed copying image. Decrement fetchingImageDataRefCount to %d.";
      goto LABEL_10;
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v23 = 134219010;
    v24 = sessionCopy;
    v25 = 2048;
    v26 = taskCopy;
    v27 = 2112;
    v28 = responseCopy;
    v29 = 2112;
    v30 = v17;
    v31 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v14, v15, "CardDAV NSURLSession Convert: session %p dataTask %p didReceiveResponse %@ for %@ %p", &v23, 0x34u);
  }

  statusCode = [responseCopy statusCode];
  if ((statusCode - 300) <= 0xFFFFFF9B)
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v19, v20))
    {
      currentRequest = [taskCopy currentRequest];
      v23 = 138412546;
      v24 = currentRequest;
      v25 = 1024;
      LODWORD(v26) = statusCode;
      _os_log_impl(&dword_0, v19, v20, "The server blocked our image data fetch.  Request %@.  Response status code %d", &v23, 0x12u);
    }

    v22 = [NSError errorWithDomain:CoreDAVHTTPStatusErrorDomain code:statusCode userInfo:0];
    [(CardDAViCloudDaemonAccount *)self setFetchImageError:v22];

    [(CardDAViCloudDaemonAccount *)self setFetchedImageData:0];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v11, v12))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v20 = 134218754;
    v21 = sessionCopy;
    v22 = 2048;
    v23 = taskCopy;
    v24 = 2112;
    v25 = v14;
    v26 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v11, v12, "CardDAV NSURLSession Convert: session %p dataTask %p didReceiveData for %@ %p", &v20, 0x2Au);
  }

  fetchedImageData = [(CardDAViCloudDaemonAccount *)self fetchedImageData];

  if (!fetchedImageData)
  {
    v16 = objc_opt_new();
    [(CardDAViCloudDaemonAccount *)self setFetchedImageData:v16];
  }

  fetchedImageData2 = [(CardDAViCloudDaemonAccount *)self fetchedImageData];
  [fetchedImageData2 appendData:dataCopy];

  v18 = DALoggingwithCategory();
  if (os_log_type_enabled(v18, v12))
  {
    fetchedImageData3 = [(CardDAViCloudDaemonAccount *)self fetchedImageData];
    v20 = 134217984;
    v21 = fetchedImageData3;
    _os_log_impl(&dword_0, v18, v12, "Adding fetched image data to %p", &v20, 0xCu);
  }
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  handlerCopy = handler;
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = 134218754;
    v17 = sessionCopy;
    v18 = 2048;
    v19 = taskCopy;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v12, v13, "CardDAV NSURLSession Convert: session %p dataTask %p willCacheResponse for %@ %p", &v16, 0x2Au);
  }

  handlerCopy[2](handlerCopy, 0);
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