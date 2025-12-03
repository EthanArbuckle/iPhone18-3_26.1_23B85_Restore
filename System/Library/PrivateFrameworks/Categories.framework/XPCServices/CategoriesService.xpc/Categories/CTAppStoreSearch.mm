@interface CTAppStoreSearch
+ (NSCache)resultByBundleID;
- (CTAppStoreSearch)initWithCallingProcess:(id)process;
- (void)handleSearchResultsWithTaskData:(id)data platform:(id)platform error:(id)error completionHandler:(id)handler;
- (void)lookupAppWithBundleIDs:(id)ds deviceFamily:(unint64_t)family completionHandler:(id)handler;
- (void)performiTunesQueryWithURLComponents:(id)components queryItems:(id)items deviceFamily:(unint64_t)family completionHandler:(id)handler;
@end

@implementation CTAppStoreSearch

- (CTAppStoreSearch)initWithCallingProcess:(id)process
{
  processCopy = process;
  v10.receiver = self;
  v10.super_class = CTAppStoreSearch;
  v6 = [(CTAppStoreSearch *)&v10 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.ctcategories.service", "appstorelookup");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_callingProcessBundleID, process);
  }

  return v6;
}

+ (NSCache)resultByBundleID
{
  if (qword_100010DF0 != -1)
  {
    sub_100005730();
  }

  v3 = qword_100010DE8;

  return v3;
}

- (void)lookupAppWithBundleIDs:(id)ds deviceFamily:(unint64_t)family completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v39 = objc_opt_new();
  v8 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = dsCopy;
  v9 = [dsCopy componentsSeparatedByString:{@", "}];
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        resultByBundleID = [objc_opt_class() resultByBundleID];
        v16 = [resultByBundleID objectForKey:v14];

        if (v16)
        {
          platform = [v16 platform];
          v18 = [v8 objectForKeyedSubscript:platform];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = objc_opt_new();
          }

          v21 = v20;

          [v21 addObject:v16];
          [v8 setObject:v21 forKeyedSubscript:platform];
        }

        else
        {
          [v39 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v11);
  }

  v22 = [v39 count];
  v23 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v23)
    {
      callingProcessBundleID = self->_callingProcessBundleID;
      *buf = 138543618;
      v51 = callingProcessBundleID;
      v52 = 2114;
      v53 = v39;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Performing iTunes lookup on behalf of %{public}@: %{public}@", buf, 0x16u);
    }

    v25 = [[NSURLComponents alloc] initWithString:@"https://itunes.apple.com/lookup"];
    v26 = [NSURLQueryItem alloc];
    v27 = [v39 componentsJoinedByString:{@", "}];
    v28 = [v26 initWithName:@"bundleId" value:v27];

    v29 = [NSURLQueryItem alloc];
    v30 = +[NSLocale currentLocale];
    countryCode = [v30 countryCode];
    v32 = [v29 initWithName:@"country" value:countryCode];

    v49[0] = v28;
    v49[1] = v32;
    v33 = [NSArray arrayWithObjects:v49 count:2];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10000452C;
    v40[3] = &unk_10000C638;
    v41 = v39;
    v42 = v8;
    selfCopy = self;
    v34 = handlerCopy;
    v44 = handlerCopy;
    [(CTAppStoreSearch *)self performiTunesQueryWithURLComponents:v25 queryItems:v33 deviceFamily:family completionHandler:v40];

    v35 = v38;
  }

  else
  {
    v35 = v38;
    if (v23)
    {
      *buf = 138543362;
      v51 = v38;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not performing iTunes lookup for cached bundle IDs: %{public}@", buf, 0xCu);
    }

    v34 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v8, 0);
  }
}

- (void)performiTunesQueryWithURLComponents:(id)components queryItems:(id)items deviceFamily:(unint64_t)family completionHandler:(id)handler
{
  familyCopy = family;
  componentsCopy = components;
  itemsCopy = items;
  handlerCopy = handler;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = sub_1000052D0;
  v59[4] = sub_1000052E0;
  v60 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000052D0;
  v53 = sub_1000052E0;
  v54 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = sub_1000052D0;
  v47[4] = sub_1000052E0;
  v48 = 0;
  context = objc_autoreleasePoolPush();
  if ((familyCopy & 6) != 0)
  {
    if ((familyCopy & 6) == 6)
    {
      v36 = [[NSString alloc] initWithFormat:@"%@, %@", @"software", @"iPadSoftware"];
    }

    else
    {
      v10 = @"software";
      if ((familyCopy & 2) == 0)
      {
        v10 = @"iPadSoftware";
      }

      v36 = v10;
    }

    v11 = &off_10000C588;
  }

  else if (familyCopy)
  {
    v36 = @"macSoftware";
    v11 = &off_10000C580;
  }

  else
  {
    if ((familyCopy & 8) == 0)
    {
      v36 = 0;
      goto LABEL_14;
    }

    v36 = @"tvSoftware";
    v11 = &off_10000C590;
  }

  objc_storeStrong(v50 + 5, *v11);
LABEL_14:
  v35 = [[NSURLQueryItem alloc] initWithName:@"entity" value:v36];
  v34 = [[NSURLQueryItem alloc] initWithName:@"media" value:@"software"];
  v66[0] = v35;
  v66[1] = v34;
  v12 = [NSArray arrayWithObjects:v66 count:2];
  v13 = [itemsCopy arrayByAddingObjectsFromArray:v12];
  [componentsCopy setQueryItems:v13];

  v14 = [componentsCopy URL];
  v15 = [[NSMutableURLRequest alloc] initWithURL:v14];
  v16 = +[NSBundle mainBundle];
  bundleIdentifier = [v16 bundleIdentifier];

  v18 = MGCopyAnswer();
  v19 = MGCopyAnswer();
  v20 = [[NSString alloc] initWithFormat:@"%@/%@/%@/%@", bundleIdentifier, self->_callingProcessBundleID, v18, v19];
  [v15 setValue:v20 forHTTPHeaderField:@"User-Agent"];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "START: %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v62 = 0x3032000000;
  v63 = sub_1000052D0;
  v64 = sub_1000052E0;
  selfCopy = self;
  v65 = selfCopy;
  v23 = +[NSURLSession sharedSession];
  callingProcessBundleID = self->_callingProcessBundleID;
  configuration = [v23 configuration];
  [configuration set_sourceApplicationBundleIdentifier:callingProcessBundleID];

  configuration2 = [v23 configuration];
  [configuration2 setTimeoutIntervalForResource:10.0];

  configuration3 = [v23 configuration];
  [configuration3 setTimeoutIntervalForRequest:10.0];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000052E8;
  v38[3] = &unk_10000C660;
  v28 = v14;
  v42 = v59;
  p_buf = &buf;
  v44 = v47;
  v45 = &v55;
  v39 = v28;
  v40 = selfCopy;
  v46 = &v49;
  v29 = handlerCopy;
  v41 = v29;
  v30 = [v23 dataTaskWithRequest:v15 completionHandler:v38];
  ++v56[3];

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(context);
  if (v30)
  {
    [v30 resume];
  }

  _Block_object_dispose(v47, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(v59, 8);
}

- (void)handleSearchResultsWithTaskData:(id)data platform:(id)platform error:(id)error completionHandler:(id)handler
{
  dataCopy = data;
  platformCopy = platform;
  errorCopy = error;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  if (!dataCopy)
  {
    if (errorCopy)
    {
      v19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{errorCopy, platformCopy, 0}];
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v18 = 0;
    goto LABEL_12;
  }

  v21 = 0;
  v15 = [CTAppStoreSearchResult appStoreSearchResultsWithResultData:dataCopy platform:platformCopy error:&v21];
  v16 = v21;
  v17 = v16;
  if (!v15)
  {
    v18 = 0;
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  v18 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v15, platformCopy, 0}];
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_4:
  v19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v17, platformCopy, 0}];
LABEL_9:

LABEL_12:
  objc_autoreleasePoolPop(v14);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "appsByPlatform: %@ errorByPlatform: %@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, v18, v19);
}

@end