@interface MFNanoServerMessageContentURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (_MFNanoServerMessageContentURLProtocolRegistry)registry;
+ (id)URLForLoadingContext:(id)context;
+ (id)loadingContextForURL:(id)l;
+ (void)initialize;
- (MFNanoServerMessageContentURLProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (id)_cachedResponseWithData:(id)data error:(id *)error;
- (void)_didLoadContentEvent:(id)event error:(id)error;
- (void)dealloc;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation MFNanoServerMessageContentURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [NSURLProtocol registerClass:self];
  }
}

+ (_MFNanoServerMessageContentURLProtocolRegistry)registry
{
  v2 = qword_100185AB0;
  if (!qword_100185AB0)
  {
    v3 = +[_MFNanoServerMessageContentURLProtocolRegistry sharedRegistry];
    v4 = qword_100185AB0;
    qword_100185AB0 = v3;

    v2 = qword_100185AB0;
  }

  return v2;
}

+ (id)URLForLoadingContext:(id)context
{
  contextCopy = context;
  registry = [self registry];
  scheme = [self scheme];
  v7 = [registry URLForLoadingContext:contextCopy scheme:scheme];

  return v7;
}

+ (id)loadingContextForURL:(id)l
{
  lCopy = l;
  registry = [self registry];
  v6 = [registry loadingContextForURL:lCopy];

  return v6;
}

+ (BOOL)canInitWithRequest:(id)request
{
  v4 = [request URL];
  v5 = v4;
  if (v4)
  {
    scheme = [v4 scheme];
    scheme2 = [self scheme];
    if ([scheme caseInsensitiveCompare:scheme2])
    {
      v8 = 0;
    }

    else
    {
      v9 = [self loadingContextForURL:v5];
      v8 = v9 != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_token cancel];
  v3.receiver = self;
  v3.super_class = MFNanoServerMessageContentURLProtocol;
  [(MFNanoServerMessageContentURLProtocol *)&v3 dealloc];
}

- (MFNanoServerMessageContentURLProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  requestCopy = request;
  responseCopy = response;
  clientCopy = client;
  v31.receiver = self;
  v31.super_class = MFNanoServerMessageContentURLProtocol;
  v11 = [(MFNanoServerMessageContentURLProtocol *)&v31 initWithRequest:requestCopy cachedResponse:responseCopy client:clientCopy];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [requestCopy URL];
    v14 = [v12 loadingContextForURL:v13];
    loadingContext = v11->_loadingContext;
    v11->_loadingContext = v14;

    v16 = objc_alloc_init(EFManualCancelationToken);
    token = v11->_token;
    v11->_token = v16;

    v18 = objc_alloc_init(EFPromise);
    promise = v11->_promise;
    v11->_promise = v18;

    future = [(EFPromise *)v11->_promise future];
    objc_initWeak(&location, v11);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100092194;
    v28[3] = &unk_100159A80;
    objc_copyWeak(&v29, &location);
    [future addSuccessBlock:v28];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000922BC;
    v26[3] = &unk_100159AA8;
    objc_copyWeak(&v27, &location);
    [future addFailureBlock:v26];
    v21 = v11->_token;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100092358;
    v24[3] = &unk_100156400;
    v22 = future;
    v25 = v22;
    [(EFManualCancelationToken *)v21 addCancelationBlock:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (id)_cachedResponseWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (!dataCopy)
  {
    v20 = NSURLErrorFailingURLErrorKey;
    request = [(MFNanoServerMessageContentURLProtocol *)self request];
    v16 = [request URL];
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [NSError errorWithDomain:NSURLErrorDomain code:-1008 userInfo:v17];

    v13 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = [NSURLResponse alloc];
  request2 = [(MFNanoServerMessageContentURLProtocol *)self request];
  v9 = [request2 URL];
  v10 = [dataCopy length];
  v11 = MFCharsetForEncoding();
  v12 = [v7 initWithURL:v9 MIMEType:@"text/html" expectedContentLength:v10 textEncodingName:v11];

  v13 = [[NSCachedURLResponse alloc] initWithResponse:v12 data:dataCopy userInfo:0 storagePolicy:2];
  v14 = 0;
  if (error)
  {
LABEL_5:
    v18 = v14;
    *error = v14;
  }

LABEL_6:

  return v13;
}

- (void)startLoading
{
  objc_initWeak(&location, self);
  token = self->_token;
  loadingContext = self->_loadingContext;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000926B0;
  v9 = &unk_100159AD0;
  objc_copyWeak(&v10, &location);
  v5 = [(MFMessageLoadingContext *)loadingContext addLoadObserver:&v6];
  [(EFManualCancelationToken *)token addCancelable:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)stopLoading
{
  promise = [(MFNanoServerMessageContentURLProtocol *)self promise];
  v8 = NSURLErrorFailingURLErrorKey;
  request = [(MFNanoServerMessageContentURLProtocol *)self request];
  v5 = [request URL];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:v6];
  [promise finishWithError:v7];

  [(EFManualCancelationToken *)self->_token cancel];
}

- (void)_didLoadContentEvent:(id)event error:(id)error
{
  eventCopy = event;
  errorCopy = error;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10009300C;
  v47[3] = &unk_100159AF8;
  v37 = objc_alloc_init(MFBufferedDataConsumer);
  v48 = v37;
  v49 = &v50;
  v39 = objc_retainBlock(v47);
  context = [eventCopy context];
  attachmentManager = [context attachmentManager];

  content = [eventCopy content];
  if (!content)
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      loadingContext = [(MFNanoServerMessageContentURLProtocol *)self loadingContext];
      message = [loadingContext message];
      messageID = [message messageID];
      ef_publicDescription = [errorCopy ef_publicDescription];
      *buf = 138543618;
      v56 = messageID;
      v57 = 2114;
      v58 = ef_publicDescription;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "loading message %{public}@ had error %{public}@", buf, 0x16u);
    }

    mf_markupString = [errorCopy mf_markupString];
    (v39[2])(v39, mf_markupString);

    content = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = content;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [attachmentManager attachmentForTextAttachment:v12 error:0];
          htmlData = v14;
          if (v14)
          {
            fetchLocalData = [v14 fetchLocalData];
            v17 = [htmlData markupStringForDisplayWithData:fetchLocalData allowAttachmentElement:1];
            v18 = +[NSUserDefaults em_userDefaults];
            v19 = [v18 BOOLForKey:@"ShowAttachmentMarkup"];

            if (v19)
            {
              v20 = _MFShowAttachmentMarkup();

              v17 = v20;
            }

            if (v17)
            {
              (v39[2])(v39, v17);
            }
          }

          else
          {
            v17 = 0;
          }

LABEL_27:

          goto LABEL_28;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v12;
          htmlData = [v17 htmlData];
          if (htmlData)
          {
            preferredCharacterSet = [v17 preferredCharacterSet];
            v22 = MFEncodingForCharset();
            *buf = -1;
            v23 = MFCreateStringWithData();
            if (!v23 && v22 != -1)
            {
              v23 = MFCreateStringWithData();
            }

            if (v23)
            {
              (v39[2])(v39, v23);
            }
          }

          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (v39[2])(v39, v12);
        }

LABEL_28:
        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v9);
  }

  if ((v51[3] & 1) == 0)
  {
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"NO_BODY" value:&stru_10015BEC8 table:@"Main"];
    mf_stringByEscapingHTMLCodes = [v25 mf_stringByEscapingHTMLCodes];
    v27 = [NSString localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", mf_stringByEscapingHTMLCodes];

    (v39[2])(v39, v27);
  }

  [v37 done];
  data = [v37 data];
  v42 = 0;
  v29 = [(MFNanoServerMessageContentURLProtocol *)self _cachedResponseWithData:data error:&v42];
  v30 = v42;
  [(EFPromise *)self->_promise finishWithResult:v29 error:v30];

  _Block_object_dispose(&v50, 8);
}

@end