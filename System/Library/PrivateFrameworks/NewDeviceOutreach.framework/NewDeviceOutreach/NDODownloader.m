@interface NDODownloader
- (NDODownloader)initWithURL:(id)a3 callingProcessBundleID:(id)a4 sessionID:(id)a5;
- (NDODownloader)initWithURL:(id)a3 callingProcessBundleID:(id)a4 sessionID:(id)a5 requestProperties:(id)a6;
- (void)downloadWithRetryCount:(int)a3 prepareBlock:(id)a4 completion:(id)a5;
@end

@implementation NDODownloader

- (NDODownloader)initWithURL:(id)a3 callingProcessBundleID:(id)a4 sessionID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NDORequestProperties makePropertiesProvider];
  v12 = [(NDODownloader *)self initWithURL:v10 callingProcessBundleID:v9 sessionID:v8 requestProperties:v11];

  return v12;
}

- (NDODownloader)initWithURL:(id)a3 callingProcessBundleID:(id)a4 sessionID:(id)a5 requestProperties:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138477827;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "initWithURL %{private}@", &v21, 0xCu);
  }

  [(NDODownloader *)self setSessionID:v12];
  [(NDODownloader *)self setCallingProcessBundleID:v13];
  [(NDODownloader *)self setRequestProperties:v11];

  v15 = [NSMutableURLRequest requestWithURL:v10];
  [(NDODownloader *)self setRequest:v15];

  v16 = [(NDODownloader *)self request];
  [v16 setTimeoutInterval:30.0];

  v17 = [(NDODownloader *)self requestProperties];
  v18 = [v17 basicHeadersWithBundleID:v13];

  v19 = [(NDODownloader *)self request];
  [v19 addAllHeadersFrom:v18];

  return self;
}

- (void)downloadWithRetryCount:(int)a3 prepareBlock:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NDODownloader *)self requestProperties];
  v11 = [(NDODownloader *)self request];
  v12 = [v10 accountHeadersFor:v11 forceReprovisioning:a3 != 2 avoidUI:1];

  v13 = _NDOLogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Retrying request:", buf, 2u);
    }

    v15 = [(NDODownloader *)self request];
    [v15 addAllHeadersFrom:v12];

    v16 = +[NSURLSession sharedSession];
    v17 = [(NDODownloader *)self callingProcessBundleID];
    v18 = [v16 configuration];
    [v18 set_sourceApplicationBundleIdentifier:v17];

    v19 = [v16 configuration];
    [v19 setTimeoutIntervalForRequest:30.0];

    v20 = [v16 configuration];
    [v20 setTimeoutIntervalForResource:30.0];

    v21 = [(NDODownloader *)self sessionID];

    if (v21)
    {
      v22 = [(NDODownloader *)self request];
      v23 = [(NDODownloader *)self sessionID];
      [v22 setValue:v23 forHTTPHeaderField:@"x-apple-session"];
    }

    v24 = [(NDODownloader *)self request];
    v8[2](v8, v24);

    v25 = _NDOLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(NDODownloader *)self request];
      v27 = [v26 headerDescription];
      *buf = 138412290;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Headers: %@", buf, 0xCu);
    }

    v28 = _NDOLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(NDODownloader *)self request];
      v30 = [v29 bodyDescription];
      *buf = 138412290;
      v43 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Body: %@", buf, 0xCu);
    }

    v31 = _NDOLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Starting request", buf, 2u);
    }

    v32 = [(NDODownloader *)self request];
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_100013A80;
    v37 = &unk_10009AC58;
    v41 = a3;
    v38 = self;
    v39 = v9;
    v40 = v8;
    v33 = [v16 dataTaskWithRequest:v32 completionHandler:&v34];

    [v33 resume];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100073BF8(v14);
    }

    (*(v9 + 2))(v9, 0);
  }
}

@end