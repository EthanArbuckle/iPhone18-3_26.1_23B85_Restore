@interface GEOMapsURLShorteningServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOMapsURLShorteningServer)initWithDaemon:(id)daemon;
- (id)_urlSession:(id)session;
- (void)_expandURL:(id)l asyncCompletion:(id)completion;
- (void)_processLengthenResponse:(id)response data:(id)data error:(id)error completion:(id)completion;
- (void)_processShortenResponse:(id)response data:(id)data error:(id)error completion:(id)completion;
- (void)_shortenURL:(id)l asyncCompletion:(id)completion;
- (void)expandURLWithRequest:(id)request;
- (void)processURLWithRequest:(id)request;
- (void)shortenURLWithRequest:(id)request;
@end

@implementation GEOMapsURLShorteningServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  if (sub_100001334(messageCopy) == 1010)
  {
    v13 = objc_opt_class();
    v14 = sub_100001388(@"mapsurlshortener", messageCopy, objectCopy, v13, peerCopy);
    v15 = v14;
    v16 = v14 != 0;
    if (v14)
    {
      [v14 setSignpostId:id];
      [(GEOMapsURLShorteningServer *)self processURLWithRequest:v15];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_processLengthenResponse:(id)response data:(id)data error:(id)error completion:(id)completion
{
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  if (errorCopy)
  {
    v11 = sub_10003DFCC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received error: %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, errorCopy);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
    }

    else
    {
      v13 = sub_10003DFCC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412290;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Got response of unexpected type %@", buf, 0xCu);
      }

      v12 = [NSError GEOErrorWithCode:-11 reason:@"Not an HTTP response object?!"];
      (*(completionCopy + 2))(completionCopy, 0, 0, v12);
    }

    v16 = responseCopy;
    if ([v16 statusCode] >= 301 && objc_msgSend(v16, "statusCode") < 304)
    {
      allHeaderFields = [v16 allHeaderFields];
      v21 = [allHeaderFields objectForKeyedSubscript:@"Location"];

      v22 = [NSURL URLWithString:v21];
      if (v22)
      {
        (*(completionCopy + 2))(completionCopy, v22, 0, 0);
      }

      else
      {
        v23 = sub_10003DFCC();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Response %@ was not a valid URL", buf, 0xCu);
        }

        v24 = [NSString stringWithFormat:@"Response %@ was not a valid URL", v21];
        v25 = [NSError GEOErrorWithCode:-11 reason:v24];

        (*(completionCopy + 2))(completionCopy, 0, 0, v25);
        v12 = v25;
      }

      errorCopy = v12;
    }

    else
    {
      v17 = sub_10003DFCC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        statusCode = [v16 statusCode];
        *buf = 67109120;
        LODWORD(v27) = statusCode;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Got non-30[123] result %d", buf, 8u);
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Result code %d", [v16 statusCode]);
      errorCopy = [NSError GEOErrorWithCode:-11 reason:v19];

      (*(completionCopy + 2))(completionCopy, 0, 0, errorCopy);
    }
  }
}

- (void)_processShortenResponse:(id)response data:(id)data error:(id)error completion:(id)completion
{
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  completionCopy = completion;
  if (errorCopy)
  {
    v13 = sub_10003DFCC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28[0] = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received error: %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, errorCopy);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0;
    }

    else
    {
      v15 = sub_10003DFCC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138412290;
        v28[0] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Got response of unexpected type %@", buf, 0xCu);
      }

      v14 = [NSError GEOErrorWithCode:-11 reason:@"Not an HTTP response object?!"];
      (*(completionCopy + 2))(completionCopy, 0, 0, v14);
    }

    if (dataCopy)
    {
      v18 = [[NSString alloc] initWithData:dataCopy encoding:4];
    }

    else
    {
      v18 = 0;
    }

    v19 = responseCopy;
    if ([v19 statusCode] >= 200 && objc_msgSend(v19, "statusCode") < 300)
    {
      v23 = [NSURL URLWithString:v18];
      if (v23)
      {
        (*(completionCopy + 2))(completionCopy, v23, 0, 0);
      }

      else
      {
        v24 = sub_10003DFCC();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28[0] = v18;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Response %@ was not a valid URL", buf, 0xCu);
        }

        v25 = [NSString stringWithFormat:@"Response %@ was not a valid URL", v18];
        v26 = [NSError GEOErrorWithCode:-11 reason:v25];

        (*(completionCopy + 2))(completionCopy, 0, 0, v26);
        v14 = v26;
      }

      errorCopy = v14;
    }

    else
    {
      v20 = sub_10003DFCC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        statusCode = [v19 statusCode];
        *buf = 67109378;
        LODWORD(v28[0]) = statusCode;
        WORD2(v28[0]) = 2112;
        *(v28 + 6) = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Got non-200 result %d: %@", buf, 0x12u);
      }

      v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Result code %d: %@", [v19 statusCode], v18);
      errorCopy = [NSError GEOErrorWithCode:-11 reason:v22];

      (*(completionCopy + 2))(completionCopy, 0, 0, errorCopy);
    }
  }
}

- (void)_expandURL:(id)l asyncCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = +[GEOApplicationAuditToken currentProcessAuditToken];
  v9 = +[GEORequestCounter sharedCounter];
  v10 = [v9 requestCounterTicketForType:2861 auditToken:v8 traits:0];

  v11 = +[GEOThrottlerRequester sharedRequester];
  v31 = 0;
  v32 = 0;
  v12 = [v11 allowRequest:2861 forClient:v8 throttlerToken:&v32 error:&v31];
  v13 = v32;
  v14 = v31;

  if (v12)
  {
    v15 = [lCopy url];
    [lCopy _clampedTimeout];
    v25 = [NSMutableURLRequest requestWithURL:v15 cachePolicy:1 timeoutInterval:?];

    preferredAuditToken = [lCopy preferredAuditToken];
    v17 = [(GEOMapsURLShorteningServer *)self _urlSession:preferredAuditToken];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10003E6D0;
    v27[3] = &unk_100083218;
    v18 = v10;
    v26 = v8;
    v19 = v10;
    v20 = lCopy;
    v21 = v13;
    v22 = v18;
    v28 = v18;
    selfCopy = self;
    v30 = completionCopy;
    v23 = [v17 dataTaskWithRequest:v25 completionHandler:v27];

    [v23 setDelegate:self];
    v24 = v22;
    v13 = v21;
    lCopy = v20;
    v10 = v19;
    v8 = v26;
    [v24 startingRequestWithTask:v23];
    [v23 resume];

    v14 = v25;
  }

  else
  {
    [v10 requestCompleted:v14];
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }
}

- (void)expandURLWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapsURLShortenerReply alloc] initWithRequest:requestCopy];
  v6 = qos_class_self();
  options = [requestCopy options];
  options2 = [requestCopy options];
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [requestCopy url];
    *buf = 141558275;
    v29 = 1752392040;
    v30 = 2113;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Lengthening URL: %{private, mask.hash}@", buf, 0x16u);
  }

  v11 = options2 & 1;

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003EACC;
  v23[3] = &unk_1000831C8;
  v12 = v5;
  v24 = v12;
  v26 = v6;
  v27 = (options & 2) == 0;
  v13 = requestCopy;
  v25 = v13;
  v14 = objc_retainBlock(v23);
  if ((options & 2) != 0)
  {
    if (v11)
    {
      v18 = [NSError GEOErrorWithCode:-10 reason:@"Invalid options"];
      (v14[2])(v14, 0, 0, v18);
    }

    else
    {
      [(GEOMapsURLShorteningServer *)self _expandURL:v13 asyncCompletion:v14];
    }
  }

  else
  {
    v15 = v11 ^ 1;
    v16 = +[GEOPDPlaceCache sharedCache];
    v17 = [v13 url];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003ECC0;
    v19[3] = &unk_1000831F0;
    v22 = v15;
    v21 = v14;
    v19[4] = self;
    v20 = v13;
    [v16 lookupLongMapsURLFor:v17 completion:v19];
  }
}

- (void)_shortenURL:(id)l asyncCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = GEOGetURL();
  if (v8)
  {
    v9 = +[GEOApplicationAuditToken currentProcessAuditToken];
    v10 = +[GEORequestCounter sharedCounter];
    v11 = [v10 requestCounterTicketForType:2861 auditToken:v9 traits:0];

    v12 = +[GEOThrottlerRequester sharedRequester];
    v32 = 0;
    v33 = 0;
    v13 = [v12 allowRequest:2861 forClient:v9 throttlerToken:&v33 error:&v32];
    v14 = v33;
    v15 = v32;

    if (v13)
    {
      [lCopy _clampedTimeout];
      v16 = [NSMutableURLRequest requestWithURL:v8 cachePolicy:1 timeoutInterval:?];
      v17 = [lCopy url];
      [v17 absoluteString];
      v18 = v26 = v14;
      [v18 dataUsingEncoding:4];
      v27 = lCopy;
      v20 = v19 = v11;
      [v16 setHTTPBody:v20];

      [v16 setHTTPMethod:@"POST"];
      preferredAuditToken = [v27 preferredAuditToken];
      v22 = [(GEOMapsURLShorteningServer *)self _urlSession:preferredAuditToken];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10003F0B8;
      v28[3] = &unk_100083218;
      v23 = v19;
      v29 = v23;
      selfCopy = self;
      v31 = completionCopy;
      v24 = [v22 dataTaskWithRequest:v16 completionHandler:v28];

      v14 = v26;
      v11 = v19;
      lCopy = v27;
      [v23 startingRequestWithTask:v24];
      [v24 resume];

      v15 = v16;
    }

    else
    {
      [v11 requestCompleted:v15];
      (*(completionCopy + 2))(completionCopy, 0, 0, v15);
    }
  }

  else
  {
    v25 = sub_10003DFCC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "No shortening service URL available, failing", buf, 2u);
    }

    v9 = [NSError GEOErrorWithCode:-4];
    (*(completionCopy + 2))(completionCopy, 0, 0, v9);
  }
}

- (void)shortenURLWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapsURLShortenerReply alloc] initWithRequest:requestCopy];
  v6 = qos_class_self();
  options = [requestCopy options];
  options2 = [requestCopy options];
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [requestCopy url];
    *buf = 141558275;
    v29 = 1752392040;
    v30 = 2113;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shortening URL: %{private, mask.hash}@", buf, 0x16u);
  }

  v11 = options2 & 1;

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003F4B4;
  v23[3] = &unk_1000831C8;
  v12 = v5;
  v24 = v12;
  v26 = v6;
  v27 = (options & 2) == 0;
  v13 = requestCopy;
  v25 = v13;
  v14 = objc_retainBlock(v23);
  if ((options & 2) != 0)
  {
    if (v11)
    {
      v18 = [NSError GEOErrorWithCode:-10 reason:@"Invalid options"];
      (v14[2])(v14, 0, 0, v18);
    }

    else
    {
      [(GEOMapsURLShorteningServer *)self _shortenURL:v13 asyncCompletion:v14];
    }
  }

  else
  {
    v15 = v11 ^ 1;
    v16 = +[GEOPDPlaceCache sharedCache];
    v17 = [v13 url];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003F6A8;
    v19[3] = &unk_1000831F0;
    v22 = v15;
    v21 = v14;
    v19[4] = self;
    v20 = v13;
    [v16 lookupShortMapsURLFor:v17 completion:v19];
  }
}

- (void)processURLWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy shorten])
  {
    [(GEOMapsURLShorteningServer *)self shortenURLWithRequest:requestCopy];
  }

  else
  {
    [(GEOMapsURLShorteningServer *)self expandURLWithRequest:requestCopy];
  }
}

- (id)_urlSession:(id)session
{
  sessionCopy = session;
  v15 = self->_sessionCacheIsolater;
  _geo_isolate_lock();
  sessionCache = self->_sessionCache;
  if (sessionCache)
  {
    v6 = [(NSCache *)sessionCache objectForKey:@"session"];
  }

  else
  {
    v7 = objc_alloc_init(NSCache);
    v8 = self->_sessionCache;
    self->_sessionCache = v7;

    v6 = 0;
  }

  configuration = [v6 configuration];
  v10 = [configuration geo_hasApplicationAttribution:sessionCopy];

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v12 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v12 _geo_setTLSMinimumSupportedProtocolVersion];
    [v12 geo_setApplicationAttribution:sessionCopy];
    [v12 set_usesNWLoader:1];
    v13 = [NSURLSession sessionWithConfiguration:v12];

    [(NSCache *)self->_sessionCache setObject:v13 forKey:@"session"];
    v11 = v13;
  }

  _geo_isolate_unlock();

  return v11;
}

- (GEOMapsURLShorteningServer)initWithDaemon:(id)daemon
{
  v8.receiver = self;
  v8.super_class = GEOMapsURLShorteningServer;
  v3 = [(GEOMapsURLShorteningServer *)&v8 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    sessionCacheIsolater = v3->_sessionCacheIsolater;
    v3->_sessionCacheIsolater = v4;

    v6 = v3;
  }

  return v3;
}

@end