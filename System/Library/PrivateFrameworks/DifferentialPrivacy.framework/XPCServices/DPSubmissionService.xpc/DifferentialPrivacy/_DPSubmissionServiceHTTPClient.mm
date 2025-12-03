@interface _DPSubmissionServiceHTTPClient
- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)domain retries:(unint64_t)retries;
- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)domain retries:(unint64_t)retries method:(id)method tlsTrustPinningPolicyName:(id)name defaultHeaders:(id)headers uploadWithOHTTP:(BOOL)p;
- (id)_dataUploadRequest:(id)request;
- (id)_session;
- (void)_downloadConfigFromURL:(id)l retries:(unint64_t)retries onCompletion:(id)completion;
- (void)_uploadData:(id)data withHeaders:(id)headers withRetries:(unint64_t)retries onCompletion:(id)completion;
- (void)downloadConfigFromURL:(id)l completion:(id)completion;
- (void)uploadData:(id)data onCompletion:(id)completion;
- (void)uploadData:(id)data withHeaders:(id)headers onCompletion:(id)completion;
@end

@implementation _DPSubmissionServiceHTTPClient

- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)domain retries:(unint64_t)retries
{
  if (retries >= 0xA)
  {
    retries = 10;
  }

  return [(_DPSubmissionServiceHTTPClient *)self initWithDomain:domain retries:retries method:@"POST" tlsTrustPinningPolicyName:kSecPolicyNameAppleMMCSService defaultHeaders:&off_100075B08 uploadWithOHTTP:0];
}

- (_DPSubmissionServiceHTTPClient)initWithDomain:(id)domain retries:(unint64_t)retries method:(id)method tlsTrustPinningPolicyName:(id)name defaultHeaders:(id)headers uploadWithOHTTP:(BOOL)p
{
  domainCopy = domain;
  methodCopy = method;
  nameCopy = name;
  headersCopy = headers;
  v22.receiver = self;
  v22.super_class = _DPSubmissionServiceHTTPClient;
  v18 = [(_DPSubmissionServiceHTTPClient *)&v22 init];
  if (v18)
  {
    v19 = [domainCopy copy];
    domain = v18->_domain;
    v18->_domain = v19;

    v18->_retries = retries;
    objc_storeStrong(&v18->_defaultMethod, method);
    objc_storeStrong(&v18->_defaultTLSTrustPinningPolicyName, name);
    objc_storeStrong(&v18->_defaultHeaders, headers);
    v18->_uploadWithOHTTP = p;
  }

  return v18;
}

- (void)uploadData:(id)data onCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = +[_DPLog service];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Client is starting data upload, size: %lu", &v10, 0xCu);
  }

  defaultHeaders = [(_DPSubmissionServiceHTTPClient *)self defaultHeaders];
  [(_DPSubmissionServiceHTTPClient *)self _uploadData:dataCopy withHeaders:defaultHeaders withRetries:[(_DPSubmissionServiceHTTPClient *)self retries] onCompletion:completionCopy];
}

- (void)uploadData:(id)data withHeaders:(id)headers onCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  headersCopy = headers;
  v11 = +[_DPLog service];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Client is starting data upload, size: %lu", &v12, 0xCu);
  }

  [(_DPSubmissionServiceHTTPClient *)self _uploadData:dataCopy withHeaders:headersCopy withRetries:[(_DPSubmissionServiceHTTPClient *)self retries] onCompletion:completionCopy];
}

- (void)downloadConfigFromURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  [(_DPSubmissionServiceHTTPClient *)self _downloadConfigFromURL:lCopy retries:[(_DPSubmissionServiceHTTPClient *)self retries] onCompletion:completionCopy];
}

- (void)_uploadData:(id)data withHeaders:(id)headers withRetries:(unint64_t)retries onCompletion:(id)completion
{
  dataCopy = data;
  headersCopy = headers;
  completionCopy = completion;
  if (dataCopy)
  {
    _session = [(_DPSubmissionServiceHTTPClient *)self _session];
    v14 = [(_DPSubmissionServiceHTTPClient *)self _dataUploadRequest:headersCopy];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005BD4;
    v17[3] = &unk_1000710A8;
    v20 = completionCopy;
    retriesCopy = retries;
    v17[4] = self;
    v18 = dataCopy;
    v19 = headersCopy;
    v15 = [_session uploadTaskWithRequest:v14 fromData:v18 completionHandler:v17];

    [v15 resume];
  }

  else
  {
    v16 = [_DPDediscoError errorWithCode:201 description:@"Cannot upload nil payload"];
    (*(completionCopy + 2))(completionCopy, v16);
  }
}

- (void)_downloadConfigFromURL:(id)l retries:(unint64_t)retries onCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  _session = [(_DPSubmissionServiceHTTPClient *)self _session];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100005F28;
  v17 = &unk_1000710D0;
  selfCopy = self;
  v19 = lCopy;
  v20 = completionCopy;
  retriesCopy = retries;
  v11 = completionCopy;
  v12 = lCopy;
  v13 = [_session dataTaskWithURL:v12 completionHandler:&v14];

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

- (id)_dataUploadRequest:(id)request
{
  requestCopy = request;
  v5 = [NSString stringWithFormat:@"%@", self->_domain];
  v6 = [NSURL URLWithString:v5];
  v7 = [NSMutableURLRequest requestWithURL:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = requestCopy;
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

  defaultMethod = [(_DPSubmissionServiceHTTPClient *)self defaultMethod];
  [v7 setHTTPMethod:defaultMethod];

  if ([(_DPSubmissionServiceHTTPClient *)self uploadWithOHTTP])
  {
    [v7 _setPrivacyProxyFailClosed:1];
  }

  return v7;
}

@end