@interface GEOMapsURLShorteningServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOMapsURLShorteningServer)initWithDaemon:(id)a3;
- (id)_urlSession:(id)a3;
- (void)_expandURL:(id)a3 asyncCompletion:(id)a4;
- (void)_processLengthenResponse:(id)a3 data:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_processShortenResponse:(id)a3 data:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_shortenURL:(id)a3 asyncCompletion:(id)a4;
- (void)expandURLWithRequest:(id)a3;
- (void)processURLWithRequest:(id)a3;
- (void)shortenURLWithRequest:(id)a3;
@end

@implementation GEOMapsURLShorteningServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (sub_100001334(v10) == 1010)
  {
    v13 = objc_opt_class();
    v14 = sub_100001388(@"mapsurlshortener", v10, v11, v13, v12);
    v15 = v14;
    v16 = v14 != 0;
    if (v14)
    {
      [v14 setSignpostId:a6];
      [(GEOMapsURLShorteningServer *)self processURLWithRequest:v15];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_processLengthenResponse:(id)a3 data:(id)a4 error:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  if (v9)
  {
    v11 = sub_10003DFCC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received error: %@", buf, 0xCu);
    }

    (*(v10 + 2))(v10, 0, 0, v9);
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
      (*(v10 + 2))(v10, 0, 0, v12);
    }

    v16 = v8;
    if ([v16 statusCode] >= 301 && objc_msgSend(v16, "statusCode") < 304)
    {
      v20 = [v16 allHeaderFields];
      v21 = [v20 objectForKeyedSubscript:@"Location"];

      v22 = [NSURL URLWithString:v21];
      if (v22)
      {
        (*(v10 + 2))(v10, v22, 0, 0);
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

        (*(v10 + 2))(v10, 0, 0, v25);
        v12 = v25;
      }

      v9 = v12;
    }

    else
    {
      v17 = sub_10003DFCC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v16 statusCode];
        *buf = 67109120;
        LODWORD(v27) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Got non-30[123] result %d", buf, 8u);
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Result code %d", [v16 statusCode]);
      v9 = [NSError GEOErrorWithCode:-11 reason:v19];

      (*(v10 + 2))(v10, 0, 0, v9);
    }
  }
}

- (void)_processShortenResponse:(id)a3 data:(id)a4 error:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = sub_10003DFCC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28[0] = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received error: %@", buf, 0xCu);
    }

    (*(v12 + 2))(v12, 0, 0, v11);
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
      (*(v12 + 2))(v12, 0, 0, v14);
    }

    if (v10)
    {
      v18 = [[NSString alloc] initWithData:v10 encoding:4];
    }

    else
    {
      v18 = 0;
    }

    v19 = v9;
    if ([v19 statusCode] >= 200 && objc_msgSend(v19, "statusCode") < 300)
    {
      v23 = [NSURL URLWithString:v18];
      if (v23)
      {
        (*(v12 + 2))(v12, v23, 0, 0);
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

        (*(v12 + 2))(v12, 0, 0, v26);
        v14 = v26;
      }

      v11 = v14;
    }

    else
    {
      v20 = sub_10003DFCC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v19 statusCode];
        *buf = 67109378;
        LODWORD(v28[0]) = v21;
        WORD2(v28[0]) = 2112;
        *(v28 + 6) = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Got non-200 result %d: %@", buf, 0x12u);
      }

      v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Result code %d: %@", [v19 statusCode], v18);
      v11 = [NSError GEOErrorWithCode:-11 reason:v22];

      (*(v12 + 2))(v12, 0, 0, v11);
    }
  }
}

- (void)_expandURL:(id)a3 asyncCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v15 = [v6 url];
    [v6 _clampedTimeout];
    v25 = [NSMutableURLRequest requestWithURL:v15 cachePolicy:1 timeoutInterval:?];

    v16 = [v6 preferredAuditToken];
    v17 = [(GEOMapsURLShorteningServer *)self _urlSession:v16];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10003E6D0;
    v27[3] = &unk_100083218;
    v18 = v10;
    v26 = v8;
    v19 = v10;
    v20 = v6;
    v21 = v13;
    v22 = v18;
    v28 = v18;
    v29 = self;
    v30 = v7;
    v23 = [v17 dataTaskWithRequest:v25 completionHandler:v27];

    [v23 setDelegate:self];
    v24 = v22;
    v13 = v21;
    v6 = v20;
    v10 = v19;
    v8 = v26;
    [v24 startingRequestWithTask:v23];
    [v23 resume];

    v14 = v25;
  }

  else
  {
    [v10 requestCompleted:v14];
    (*(v7 + 2))(v7, 0, 0, v14);
  }
}

- (void)expandURLWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOMapsURLShortenerReply alloc] initWithRequest:v4];
  v6 = qos_class_self();
  v7 = [v4 options];
  v8 = [v4 options];
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 url];
    *buf = 141558275;
    v29 = 1752392040;
    v30 = 2113;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Lengthening URL: %{private, mask.hash}@", buf, 0x16u);
  }

  v11 = v8 & 1;

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003EACC;
  v23[3] = &unk_1000831C8;
  v12 = v5;
  v24 = v12;
  v26 = v6;
  v27 = (v7 & 2) == 0;
  v13 = v4;
  v25 = v13;
  v14 = objc_retainBlock(v23);
  if ((v7 & 2) != 0)
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

- (void)_shortenURL:(id)a3 asyncCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      [v6 _clampedTimeout];
      v16 = [NSMutableURLRequest requestWithURL:v8 cachePolicy:1 timeoutInterval:?];
      v17 = [v6 url];
      [v17 absoluteString];
      v18 = v26 = v14;
      [v18 dataUsingEncoding:4];
      v27 = v6;
      v20 = v19 = v11;
      [v16 setHTTPBody:v20];

      [v16 setHTTPMethod:@"POST"];
      v21 = [v27 preferredAuditToken];
      v22 = [(GEOMapsURLShorteningServer *)self _urlSession:v21];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10003F0B8;
      v28[3] = &unk_100083218;
      v23 = v19;
      v29 = v23;
      v30 = self;
      v31 = v7;
      v24 = [v22 dataTaskWithRequest:v16 completionHandler:v28];

      v14 = v26;
      v11 = v19;
      v6 = v27;
      [v23 startingRequestWithTask:v24];
      [v24 resume];

      v15 = v16;
    }

    else
    {
      [v11 requestCompleted:v15];
      (*(v7 + 2))(v7, 0, 0, v15);
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
    (*(v7 + 2))(v7, 0, 0, v9);
  }
}

- (void)shortenURLWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOMapsURLShortenerReply alloc] initWithRequest:v4];
  v6 = qos_class_self();
  v7 = [v4 options];
  v8 = [v4 options];
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 url];
    *buf = 141558275;
    v29 = 1752392040;
    v30 = 2113;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shortening URL: %{private, mask.hash}@", buf, 0x16u);
  }

  v11 = v8 & 1;

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003F4B4;
  v23[3] = &unk_1000831C8;
  v12 = v5;
  v24 = v12;
  v26 = v6;
  v27 = (v7 & 2) == 0;
  v13 = v4;
  v25 = v13;
  v14 = objc_retainBlock(v23);
  if ((v7 & 2) != 0)
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

- (void)processURLWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 shorten])
  {
    [(GEOMapsURLShorteningServer *)self shortenURLWithRequest:v4];
  }

  else
  {
    [(GEOMapsURLShorteningServer *)self expandURLWithRequest:v4];
  }
}

- (id)_urlSession:(id)a3
{
  v4 = a3;
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

  v9 = [v6 configuration];
  v10 = [v9 geo_hasApplicationAttribution:v4];

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v12 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v12 _geo_setTLSMinimumSupportedProtocolVersion];
    [v12 geo_setApplicationAttribution:v4];
    [v12 set_usesNWLoader:1];
    v13 = [NSURLSession sessionWithConfiguration:v12];

    [(NSCache *)self->_sessionCache setObject:v13 forKey:@"session"];
    v11 = v13;
  }

  _geo_isolate_unlock();

  return v11;
}

- (GEOMapsURLShorteningServer)initWithDaemon:(id)a3
{
  v8.receiver = self;
  v8.super_class = GEOMapsURLShorteningServer;
  v3 = [(GEOMapsURLShorteningServer *)&v8 initWithDaemon:a3];
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