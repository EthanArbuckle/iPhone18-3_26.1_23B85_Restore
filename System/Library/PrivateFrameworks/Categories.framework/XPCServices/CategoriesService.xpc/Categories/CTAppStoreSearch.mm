@interface CTAppStoreSearch
+ (NSCache)resultByBundleID;
- (CTAppStoreSearch)initWithCallingProcess:(id)a3;
- (void)handleSearchResultsWithTaskData:(id)a3 platform:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)lookupAppWithBundleIDs:(id)a3 deviceFamily:(unint64_t)a4 completionHandler:(id)a5;
- (void)performiTunesQueryWithURLComponents:(id)a3 queryItems:(id)a4 deviceFamily:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation CTAppStoreSearch

- (CTAppStoreSearch)initWithCallingProcess:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CTAppStoreSearch;
  v6 = [(CTAppStoreSearch *)&v10 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.ctcategories.service", "appstorelookup");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_callingProcessBundleID, a3);
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

- (void)lookupAppWithBundleIDs:(id)a3 deviceFamily:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v37 = a5;
  v39 = objc_opt_new();
  v8 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = v7;
  v9 = [v7 componentsSeparatedByString:{@", "}];
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
        v15 = [objc_opt_class() resultByBundleID];
        v16 = [v15 objectForKey:v14];

        if (v16)
        {
          v17 = [v16 platform];
          v18 = [v8 objectForKeyedSubscript:v17];
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
          [v8 setObject:v21 forKeyedSubscript:v17];
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
    v31 = [v30 countryCode];
    v32 = [v29 initWithName:@"country" value:v31];

    v49[0] = v28;
    v49[1] = v32;
    v33 = [NSArray arrayWithObjects:v49 count:2];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10000452C;
    v40[3] = &unk_10000C638;
    v41 = v39;
    v42 = v8;
    v43 = self;
    v34 = v37;
    v44 = v37;
    [(CTAppStoreSearch *)self performiTunesQueryWithURLComponents:v25 queryItems:v33 deviceFamily:a4 completionHandler:v40];

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

    v34 = v37;
    (*(v37 + 2))(v37, v8, 0);
  }
}

- (void)performiTunesQueryWithURLComponents:(id)a3 queryItems:(id)a4 deviceFamily:(unint64_t)a5 completionHandler:(id)a6
{
  v7 = a5;
  v37 = a3;
  v33 = a4;
  v32 = a6;
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
  if ((v7 & 6) != 0)
  {
    if ((v7 & 6) == 6)
    {
      v36 = [[NSString alloc] initWithFormat:@"%@, %@", @"software", @"iPadSoftware"];
    }

    else
    {
      v10 = @"software";
      if ((v7 & 2) == 0)
      {
        v10 = @"iPadSoftware";
      }

      v36 = v10;
    }

    v11 = &off_10000C588;
  }

  else if (v7)
  {
    v36 = @"macSoftware";
    v11 = &off_10000C580;
  }

  else
  {
    if ((v7 & 8) == 0)
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
  v13 = [v33 arrayByAddingObjectsFromArray:v12];
  [v37 setQueryItems:v13];

  v14 = [v37 URL];
  v15 = [[NSMutableURLRequest alloc] initWithURL:v14];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 bundleIdentifier];

  v18 = MGCopyAnswer();
  v19 = MGCopyAnswer();
  v20 = [[NSString alloc] initWithFormat:@"%@/%@/%@/%@", v17, self->_callingProcessBundleID, v18, v19];
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
  v22 = self;
  v65 = v22;
  v23 = +[NSURLSession sharedSession];
  callingProcessBundleID = self->_callingProcessBundleID;
  v25 = [v23 configuration];
  [v25 set_sourceApplicationBundleIdentifier:callingProcessBundleID];

  v26 = [v23 configuration];
  [v26 setTimeoutIntervalForResource:10.0];

  v27 = [v23 configuration];
  [v27 setTimeoutIntervalForRequest:10.0];

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
  v40 = v22;
  v46 = &v49;
  v29 = v32;
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

- (void)handleSearchResultsWithTaskData:(id)a3 platform:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  if (!v10)
  {
    if (v12)
    {
      v19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v12, v11, 0}];
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
  v15 = [CTAppStoreSearchResult appStoreSearchResultsWithResultData:v10 platform:v11 error:&v21];
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

  v18 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v15, v11, 0}];
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_4:
  v19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v17, v11, 0}];
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

  v13[2](v13, v18, v19);
}

@end