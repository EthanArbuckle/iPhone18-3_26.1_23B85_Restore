@interface _DPSubmissionServiceHTTPClient
- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)a3 retries:(unint64_t)a4;
- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)a3 retries:(unint64_t)a4 method:(id)a5 tlsTrustPinningPolicyName:(id)a6 defaultHeaders:(id)a7 uploadWithOHTTP:(BOOL)a8;
- (id)_dataUploadRequest:(id)a3;
- (id)_session;
- (void)_downloadConfigFromURL:(id)a3 retries:(unint64_t)a4 onCompletion:(id)a5;
- (void)_uploadData:(id)a3 withHeaders:(id)a4 withRetries:(unint64_t)a5 onCompletion:(id)a6;
- (void)downloadConfigFromURL:(id)a3 completion:(id)a4;
- (void)uploadData:(id)a3 onCompletion:(id)a4;
- (void)uploadData:(id)a3 withHeaders:(id)a4 onCompletion:(id)a5;
@end

@implementation _DPSubmissionServiceHTTPClient

- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)a3 retries:(unint64_t)a4
{
  if (a4 >= 0xA)
  {
    a4 = 10;
  }

  return [(_DPSubmissionServiceHTTPClient *)self initWithDomain:a3 retries:a4 method:@"POST" tlsTrustPinningPolicyName:kSecPolicyNameAppleMMCSService defaultHeaders:&off_100075B08 uploadWithOHTTP:0];
}

- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)a3 retries:(unint64_t)a4 method:(id)a5 tlsTrustPinningPolicyName:(id)a6 defaultHeaders:(id)a7 uploadWithOHTTP:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = _DPSubmissionServiceHTTPClient;
  v18 = [(_DPSubmissionServiceHTTPClient *)&v22 init];
  if (v18)
  {
    v19 = [v14 copy];
    domain = v18->_domain;
    v18->_domain = v19;

    v18->_retries = a4;
    objc_storeStrong(&v18->_defaultMethod, a5);
    objc_storeStrong(&v18->_defaultTLSTrustPinningPolicyName, a6);
    objc_storeStrong(&v18->_defaultHeaders, a7);
    v18->_uploadWithOHTTP = a8;
  }

  return v18;
}

- (void)uploadData:(id)a3 onCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_DPLog service];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = [v6 length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Client is starting data upload, size: %lu", &v10, 0xCu);
  }

  v9 = [(_DPSubmissionServiceHTTPClient *)self defaultHeaders];
  [(_DPSubmissionServiceHTTPClient *)self _uploadData:v6 withHeaders:v9 withRetries:[(_DPSubmissionServiceHTTPClient *)self retries] onCompletion:v7];
}

- (void)uploadData:(id)a3 withHeaders:(id)a4 onCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[_DPLog service];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = [v8 length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Client is starting data upload, size: %lu", &v12, 0xCu);
  }

  [(_DPSubmissionServiceHTTPClient *)self _uploadData:v8 withHeaders:v10 withRetries:[(_DPSubmissionServiceHTTPClient *)self retries] onCompletion:v9];
}

- (void)downloadConfigFromURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_DPSubmissionServiceHTTPClient *)self _downloadConfigFromURL:v7 retries:[(_DPSubmissionServiceHTTPClient *)self retries] onCompletion:v6];
}

- (void)_uploadData:(id)a3 withHeaders:(id)a4 withRetries:(unint64_t)a5 onCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v13 = [(_DPSubmissionServiceHTTPClient *)self _session];
    v14 = [(_DPSubmissionServiceHTTPClient *)self _dataUploadRequest:v11];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005BD4;
    v17[3] = &unk_1000710A8;
    v20 = v12;
    v21 = a5;
    v17[4] = self;
    v18 = v10;
    v19 = v11;
    v15 = [v13 uploadTaskWithRequest:v14 fromData:v18 completionHandler:v17];

    [v15 resume];
  }

  else
  {
    v16 = [_DPDediscoError errorWithCode:201 description:@"Cannot upload nil payload"];
    (*(v12 + 2))(v12, v16);
  }
}

- (void)_downloadConfigFromURL:(id)a3 retries:(unint64_t)a4 onCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_DPSubmissionServiceHTTPClient *)self _session];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100005F28;
  v17 = &unk_1000710D0;
  v18 = self;
  v19 = v8;
  v20 = v9;
  v21 = a4;
  v11 = v9;
  v12 = v8;
  v13 = [v10 dataTaskWithURL:v12 completionHandler:&v14];

  [v13 resume];
}

- (id)_session
{
  v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v3 setRequestCachePolicy:1];
  [v3 setURLCache:0];
  if (self->_defaultTLSTrustPinningPolicyName)
  {
    [v3 set_tlsTrustPinningPolicyName:?];
  }

  if ([(_DPSubmissionServiceHTTPClient *)self uploadWithOHTTP])
  {
    [v3 set_usesNWLoader:1];
  }

  v4 = [NSURLSession sessionWithConfiguration:v3];

  return v4;
}

- (id)_dataUploadRequest:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%@", self->_domain];
  v6 = [NSURL URLWithString:v5];
  v7 = [NSMutableURLRequest requestWithURL:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        [v7 setValue:v14 forHTTPHeaderField:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [(_DPSubmissionServiceHTTPClient *)self defaultMethod];
  [v7 setHTTPMethod:v15];

  if ([(_DPSubmissionServiceHTTPClient *)self uploadWithOHTTP])
  {
    [v7 _setPrivacyProxyFailClosed:1];
  }

  return v7;
}

@end