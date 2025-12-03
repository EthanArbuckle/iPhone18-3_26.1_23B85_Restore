@interface MBURLConnection
+ (MBURLConnection)connectionWithRequest:(id)request properties:(id)properties;
+ (id)sendAsyncRequest:(id)request properties:(id)properties block:(id)block;
+ (id)sendSyncRequest:(id)request properties:(id)properties connection:(id *)connection response:(id *)response error:(id *)error;
- (MBURLConnection)initWithRequest:(id)request properties:(id)properties;
- (void)cancel;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)start;
@end

@implementation MBURLConnection

+ (id)sendSyncRequest:(id)request properties:(id)properties connection:(id *)connection response:(id *)response error:(id *)error
{
  v12 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = sub_1001BE1D4;
  v37 = sub_1001BE1E4;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = sub_1001BE1D4;
  v31 = sub_1001BE1E4;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_1001BE1D4;
  v25 = sub_1001BE1E4;
  v26 = 0;
  v13 = objc_autoreleasePoolPush();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001BE1F0;
  v20[3] = &unk_1003C1050;
  v20[6] = &v27;
  v20[7] = &v21;
  v20[4] = v12;
  v20[5] = &v33;
  v14 = [MBURLConnection sendAsyncRequest:request properties:properties block:v20];
  if (connection)
  {
    *connection = v14;
  }

  MBSemaphoreWaitForever();
  if (connection)
  {
    *connection = 0;
  }

  objc_autoreleasePoolPop(v13);
  v15 = v34[5];
  v16 = v28[5];
  v17 = v22[5];
  dispatch_release(v12);
  if (response)
  {
    *response = v34[5];
  }

  if (error)
  {
    *error = v22[5];
  }

  v18 = v28[5];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  return v18;
}

+ (id)sendAsyncRequest:(id)request properties:(id)properties block:(id)block
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_1001BE1D4;
  v18 = sub_1001BE1E4;
  v19 = [MBURLConnection connectionWithRequest:request properties:properties];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3052000000;
  v13[3] = sub_1001BE1D4;
  v13[4] = sub_1001BE1E4;
  v13[5] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = sub_1001BE1D4;
  v12[4] = sub_1001BE1E4;
  v12[5] = objc_alloc_init(NSMutableData);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BE538;
  v11[3] = &unk_1003C1078;
  v11[4] = v13;
  [v15[5] setResponseReceived:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001BE568;
  v10[3] = &unk_1003C10A0;
  v10[5] = v12;
  v10[6] = &v14;
  v10[4] = block;
  [v15[5] setDataReceived:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001BE69C;
  v9[3] = &unk_1003C10C8;
  v9[5] = v13;
  v9[6] = v12;
  v9[4] = block;
  [v15[5] setFailure:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BE720;
  v8[3] = &unk_1003C10F0;
  v8[4] = block;
  v8[5] = v13;
  v8[6] = v12;
  [v15[5] setFinishedLoading:v8];
  [v15[5] start];
  v6 = v15[5];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

+ (MBURLConnection)connectionWithRequest:(id)request properties:(id)properties
{
  v4 = [[MBURLConnection alloc] initWithRequest:request properties:properties];

  return v4;
}

- (MBURLConnection)initWithRequest:(id)request properties:(id)properties
{
  v13.receiver = self;
  v13.super_class = MBURLConnection;
  v6 = [(MBURLConnection *)&v13 init];
  if (v6)
  {
    v6->_request = request;
    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6->_queue = dispatch_queue_create(Name, v9);
    v10 = objc_alloc_init(NSOperationQueue);
    [(NSOperationQueue *)v10 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10 setUnderlyingQueue:v6->_queue];
    v6->_operationQueue = v10;
    v11 = [[NSURLConnection alloc] _initWithRequest:objc_msgSend(request delegate:"NSURLRequest") usesCache:v6 maxContentLength:1 startImmediately:0 connectionProperties:{0, properties}];
    v6->_connection = v11;
    [(NSURLConnection *)v11 setDelegateQueue:v10];
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  v3.receiver = self;
  v3.super_class = MBURLConnection;
  [(MBURLConnection *)&v3 dealloc];
}

- (void)start
{
  path = [(NSURL *)[(MBURLRequest *)self->_request URL] path];
  query = [(NSURL *)[(MBURLRequest *)self->_request URL] query];
  if (query)
  {
    path = [(NSString *)path stringByAppendingFormat:@"?%@", query];
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    method = [(MBURLRequest *)self->_request method];
    v7 = [(NSData *)[(MBURLRequest *)self->_request data] length];
    *buf = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = method;
    v19 = 2112;
    v20 = path;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: starting: %@ %@ (%lu)", buf, 0x2Au);
    method2 = [(MBURLRequest *)self->_request method];
    v13 = path;
    v14 = [(NSData *)[(MBURLRequest *)self->_request data] length];
    selfCopy2 = self;
    v12 = method2;
    _MBLog();
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(MBURLRequest *)self->_request headers];
    v10 = MBStringWithDictionary();
    *buf = 138412290;
    selfCopy = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    [(MBURLRequest *)self->_request headers];
    selfCopy2 = MBStringWithDictionary();
    _MBLog();
  }

  [(NSURLConnection *)self->_connection start:selfCopy2];
}

- (void)cancel
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: canceling", buf, 0xCu);
    _MBLog();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BEC38;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusCode = [response statusCode];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v14 = 2048;
      v15 = statusCode;
      v16 = 2112;
      v17 = [NSHTTPURLResponse localizedStringForStatusCode:statusCode];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: response received: %ld (%@)", buf, 0x20u);
      [NSHTTPURLResponse localizedStringForStatusCode:statusCode];
      _MBLog();
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [response allHeaderFields];
      v10 = MBStringWithDictionary();
      *buf = 138412290;
      selfCopy = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      [response allHeaderFields];
      MBStringWithDictionary();
      _MBLog();
    }

    (*(self->_responseReceived + 2))(self->_responseReceived, response, v9);
  }

  else
  {
    v11 = *(self->_responseReceived + 2);

    v11();
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2048;
    v10 = [data length];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: data received (%lu bytes)", buf, 0x16u);
    [data length];
    _MBLog();
  }

  (*(self->_dataReceived + 2))(self->_dataReceived, data);
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_done)
  {
    __assert_rtn("[MBURLConnection connection:didFailWithError:]", "MBURLConnection.m", 195, "!_done && Received connection:didFailWithError: when already done");
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: failure: %@", buf, 0x16u);
    _MBLog();
  }

  self->_done = 1;
  (*(self->_failure + 2))(self->_failure, error);
}

- (void)connectionDidFinishLoading:(id)loading
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_done)
  {
    __assert_rtn("[MBURLConnection connectionDidFinishLoading:]", "MBURLConnection.m", 204, "!_done && Received connection:didFinishLoading: when already done");
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: finished loading", buf, 0xCu);
    _MBLog();
  }

  self->_done = 1;
  (*(self->_finishedLoading + 2))(self->_finishedLoading);
}

- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge
{
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  sender = [challenge sender];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  if ([protectionSpace isEqualToString:@"NSURLAuthenticationMethodXMobileMeAuthToken"])
  {
    if ([challenge previousFailureCount] < 1)
    {
      proposedCredential = [challenge proposedCredential];

      [sender useCredential:proposedCredential forAuthenticationChallenge:challenge];
      return;
    }

    goto LABEL_11;
  }

  if (([protectionSpace isEqualToString:NSURLAuthenticationMethodServerTrust] & 1) == 0 && !objc_msgSend(protectionSpace, "isEqualToString:", NSURLAuthenticationMethodClientCertificate))
  {
LABEL_11:
    v9 = "cancelAuthenticationChallenge:";
    v8 = sender;
    goto LABEL_12;
  }

  v8 = sender;
  v9 = "performDefaultHandlingForAuthenticationChallenge:";
LABEL_12:

  [v8 performSelector:v9 withObject:challenge];
}

@end