@interface CLTileDownloadRequest
- (CLTileDownloadRequest)initWithQueue:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)downloadWithURLRequest:(id)a3 withDecompressionURL:(id)a4 completionHandler:(id)a5;
- (void)onDownloadCompleted:(id)a3 withResponse:(id)a4 withError:(id)a5;
- (void)serveCompletionHandler:(id)a3 withResponse:(id)a4 withError:(id)a5;
@end

@implementation CLTileDownloadRequest

- (CLTileDownloadRequest)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLTileDownloadRequest;
  v4 = [(CLTileDownloadRequest *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CLTileDownloadRequest *)v4 setQueue:a3];
  }

  return v5;
}

- (void)downloadWithURLRequest:(id)a3 withDecompressionURL:(id)a4 completionHandler:(id)a5
{
  dispatch_assert_queue_V2([(CLTileDownloadRequest *)self queue]);
  [(CLTileDownloadRequest *)self setDecompressionDestination:a4];
  [(CLTileDownloadRequest *)self setDecompressionCompletionHandler:a5];
  [(CLTileDownloadRequest *)self setSession:getSharedSessionInQueue([(CLTileDownloadRequest *)self queue])];
  ptr = self->_callbackValidity.fToken.__ptr_;
  cntrl = self->_callbackValidity.fToken.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
    sub_1000030EC(cntrl);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_100005B34;
  v11[3] = &unk_10000C6A0;
  v11[5] = ptr;
  v12 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  v11[4] = self;
  [(CLTileDownloadRequest *)self setTask:[(NSURLSession *)[(CLTileDownloadRequest *)self session] downloadTaskWithRequest:a3 completionHandler:v11]];
  [(NSURLSessionDownloadTask *)[(CLTileDownloadRequest *)self task] resume];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (void)cancel
{
  dispatch_assert_queue_V2([(CLTileDownloadRequest *)self queue]);
  [(NSURLSessionDownloadTask *)[(CLTileDownloadRequest *)self task] cancel];
  [(CLTileDownloadRequest *)self setTask:0];
  [(CLTileDownloadRequest *)self setDecompressionDestination:0];

  [(CLTileDownloadRequest *)self setDecompressionCompletionHandler:0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLTileDownloadRequest;
  [(CLTileDownloadRequest *)&v2 dealloc];
}

- (void)onDownloadCompleted:(id)a3 withResponse:(id)a4 withError:(id)a5
{
  dispatch_assert_queue_V2([(CLTileDownloadRequest *)self queue]);
  if (qword_1000108A0 != -1)
  {
    sub_1000070EC();
  }

  v9 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290307;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2113;
    v34 = a3;
    v35 = 2113;
    v36 = a4;
    v37 = 2113;
    v38 = [a5 description];
    v39 = 2050;
    v40 = [(CLTileDownloadRequest *)self decompressionCompletionHandler];
    v41 = 2050;
    v42 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TilesService onDowloadCompleted, location:%{private, location:escape_only}@, response:%{private, location:escape_only}@, error:%{private, location:escape_only}@, decompressionCompletionHandler:%{public}p, self:%{public}p}", buf, 0x44u);
  }

  if ([(CLTileDownloadRequest *)self decompressionCompletionHandler])
  {
    if (a5)
    {
      v10 = self;
      v11 = 0;
      v12 = a4;
      v13 = a5;
LABEL_8:
      [(CLTileDownloadRequest *)v10 serveCompletionHandler:v11 withResponse:v12 withError:v13];
      return;
    }

    if (a3)
    {
      v15 = [objc_msgSend(a3 "path")];
      if (!v15)
      {
        sub_100007100();
      }

      v16 = decompress(v15, [(NSString *)[(NSURL *)[(CLTileDownloadRequest *)self decompressionDestination] path] UTF8String]);
      v28 = 0;
      if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
      {
        if (qword_1000108A0 != -1)
        {
          sub_1000070C4();
        }

        v17 = qword_1000108A8;
        if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_ERROR))
        {
          v18 = [v28 description];
          *buf = 68289795;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2113;
          v34 = a3;
          v35 = 2113;
          v36 = v18;
          v37 = 2050;
          v38 = self;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TilesService unable to remove file at location, location:%{private, location:escape_only}@, fileRemovalError:%{private, location:escape_only}@, self:%{public}p}", buf, 0x30u);
          if (qword_1000108A0 != -1)
          {
            sub_1000070C4();
          }
        }

        v19 = qword_1000108A8;
        if (os_signpost_enabled(qword_1000108A8))
        {
          v20 = [v28 description];
          *buf = 68289795;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2113;
          v34 = a3;
          v35 = 2113;
          v36 = v20;
          v37 = 2050;
          v38 = self;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService unable to remove file at location", "{msg%{public}.0s:#TilesService unable to remove file at location, location:%{private, location:escape_only}@, fileRemovalError:%{private, location:escape_only}@, self:%{public}p}", buf, 0x30u);
        }
      }

      if (v16)
      {
        if (qword_1000108A0 != -1)
        {
          sub_1000070C4();
        }

        v21 = qword_1000108A8;
        if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [a4 statusCode];
          v23 = [(CLTileDownloadRequest *)self decompressionDestination];
          *buf = 68289795;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2050;
          v34 = v22;
          v35 = 2113;
          v36 = v23;
          v37 = 2050;
          v38 = self;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TilesService Successfully downloaded and decompressed file, statusCode:%{public}ld, decompressionDestination:%{private, location:escape_only}@, self:%{public}p}", buf, 0x30u);
        }

        v11 = [(CLTileDownloadRequest *)self decompressionDestination];
        v10 = self;
        v12 = a4;
        v13 = 0;
      }

      else
      {
        [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:[(CLTileDownloadRequest *)self decompressionDestination], 0];
        v13 = [NSError errorWithDomain:@"kCLTileErrorDomain" code:1 userInfo:0];
        v10 = self;
        v11 = 0;
        v12 = a4;
      }

      goto LABEL_8;
    }

    if (qword_1000108A0 != -1)
    {
      sub_1000070C4();
    }

    v24 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_ERROR))
    {
      v25 = [0 path];
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v25;
      v35 = 2050;
      v36 = self;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TilesService did not receive a valid download location, locationPath:%{private, location:escape_only}@, self:%{public}p}", buf, 0x26u);
      if (qword_1000108A0 != -1)
      {
        sub_1000070C4();
      }
    }

    v26 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      v27 = [0 path];
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v27;
      v35 = 2050;
      v36 = self;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService did not receive a valid download location", "{msg%{public}.0s:#TilesService did not receive a valid download location, locationPath:%{private, location:escape_only}@, self:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    if (qword_1000108A0 != -1)
    {
      sub_1000070C4();
    }

    v14 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TilesService task has already been served}", buf, 0x12u);
    }
  }
}

- (void)serveCompletionHandler:(id)a3 withResponse:(id)a4 withError:(id)a5
{
  dispatch_assert_queue_V2([(CLTileDownloadRequest *)self queue]);
  v9 = [(CLTileDownloadRequest *)self decompressionCompletionHandler];
  v9[2](v9, a3, a4, a5);

  [(CLTileDownloadRequest *)self setDecompressionCompletionHandler:0];
}

@end