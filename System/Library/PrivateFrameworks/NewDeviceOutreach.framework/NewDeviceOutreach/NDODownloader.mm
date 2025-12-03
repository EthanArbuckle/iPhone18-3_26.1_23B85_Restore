@interface NDODownloader
- (NDODownloader)initWithURL:(id)l callingProcessBundleID:(id)d sessionID:(id)iD;
- (NDODownloader)initWithURL:(id)l callingProcessBundleID:(id)d sessionID:(id)iD requestProperties:(id)properties;
- (void)downloadWithRetryCount:(int)count prepareBlock:(id)block completion:(id)completion;
@end

@implementation NDODownloader

- (NDODownloader)initWithURL:(id)l callingProcessBundleID:(id)d sessionID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  lCopy = l;
  v11 = +[NDORequestProperties makePropertiesProvider];
  v12 = [(NDODownloader *)self initWithURL:lCopy callingProcessBundleID:dCopy sessionID:iDCopy requestProperties:v11];

  return v12;
}

- (NDODownloader)initWithURL:(id)l callingProcessBundleID:(id)d sessionID:(id)iD requestProperties:(id)properties
{
  lCopy = l;
  propertiesCopy = properties;
  iDCopy = iD;
  dCopy = d;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138477827;
    v22 = lCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "initWithURL %{private}@", &v21, 0xCu);
  }

  [(NDODownloader *)self setSessionID:iDCopy];
  [(NDODownloader *)self setCallingProcessBundleID:dCopy];
  [(NDODownloader *)self setRequestProperties:propertiesCopy];

  v15 = [NSMutableURLRequest requestWithURL:lCopy];
  [(NDODownloader *)self setRequest:v15];

  request = [(NDODownloader *)self request];
  [request setTimeoutInterval:30.0];

  requestProperties = [(NDODownloader *)self requestProperties];
  v18 = [requestProperties basicHeadersWithBundleID:dCopy];

  request2 = [(NDODownloader *)self request];
  [request2 addAllHeadersFrom:v18];

  return self;
}

- (void)downloadWithRetryCount:(int)count prepareBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  requestProperties = [(NDODownloader *)self requestProperties];
  request = [(NDODownloader *)self request];
  v12 = [requestProperties accountHeadersFor:request forceReprovisioning:count != 2 avoidUI:1];

  v13 = _NDOLogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Retrying request:", buf, 2u);
    }

    request2 = [(NDODownloader *)self request];
    [request2 addAllHeadersFrom:v12];

    v16 = +[NSURLSession sharedSession];
    callingProcessBundleID = [(NDODownloader *)self callingProcessBundleID];
    configuration = [v16 configuration];
    [configuration set_sourceApplicationBundleIdentifier:callingProcessBundleID];

    configuration2 = [v16 configuration];
    [configuration2 setTimeoutIntervalForRequest:30.0];

    configuration3 = [v16 configuration];
    [configuration3 setTimeoutIntervalForResource:30.0];

    sessionID = [(NDODownloader *)self sessionID];

    if (sessionID)
    {
      request3 = [(NDODownloader *)self request];
      sessionID2 = [(NDODownloader *)self sessionID];
      [request3 setValue:sessionID2 forHTTPHeaderField:@"x-apple-session"];
    }

    request4 = [(NDODownloader *)self request];
    blockCopy[2](blockCopy, request4);

    v25 = _NDOLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      request5 = [(NDODownloader *)self request];
      headerDescription = [request5 headerDescription];
      *buf = 138412290;
      v43 = headerDescription;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Headers: %@", buf, 0xCu);
    }

    v28 = _NDOLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      request6 = [(NDODownloader *)self request];
      bodyDescription = [request6 bodyDescription];
      *buf = 138412290;
      v43 = bodyDescription;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Body: %@", buf, 0xCu);
    }

    v31 = _NDOLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Starting request", buf, 2u);
    }

    request7 = [(NDODownloader *)self request];
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_100013A80;
    v37 = &unk_10009AC58;
    countCopy = count;
    selfCopy = self;
    v39 = completionCopy;
    v40 = blockCopy;
    v33 = [v16 dataTaskWithRequest:request7 completionHandler:&v34];

    [v33 resume];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100073BF8(v14);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end