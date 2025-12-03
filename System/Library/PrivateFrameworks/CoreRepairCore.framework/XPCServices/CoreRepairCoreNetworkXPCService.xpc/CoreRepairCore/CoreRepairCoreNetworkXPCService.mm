@interface CoreRepairCoreNetworkXPCService
- (BOOL)hasNetworkError:(id)error;
- (id)_extractCertsFromResponse:(id)response;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)sendActivationRequest:(id)request options:(id)options withReply:(id)reply;
- (void)sendBAARequest:(id)request options:(id)options withReply:(id)reply;
- (void)sendPreflightRequest:(id)request options:(id)options withReply:(id)reply;
- (void)sendRequest:(id)request options:(id)options outData:(id *)data outStatus:(int *)status outError:(id *)error;
- (void)sendRequestAsync:(id)async config:(id)config options:(id)options withReply:(id)reply;
@end

@implementation CoreRepairCoreNetworkXPCService

- (void)sendRequestAsync:(id)async config:(id)config options:(id)options withReply:(id)reply
{
  asyncCopy = async;
  configCopy = config;
  optionsCopy = options;
  replyCopy = reply;
  if (!optionsCopy)
  {
    v14 = 0;
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"SOCKSProxy"];
  if (v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"SOCKSProxy"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [optionsCopy objectForKeyedSubscript:@"SOCKSProxy"];
    }

    else
    {
      v14 = 0;
    }
  }

  v17 = [optionsCopy objectForKeyedSubscript:@"SOCKSPort"];
  if (v17)
  {
    v18 = [optionsCopy objectForKeyedSubscript:@"SOCKSPort"];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      v17 = [optionsCopy objectForKeyedSubscript:@"SOCKSPort"];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v20 = handleForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [asyncCopy URL];
    *buf = 138543362;
    v55 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "HTTP Request URL: %{public}@", buf, 0xCu);
  }

  v22 = handleForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    allHTTPHeaderFields = [asyncCopy allHTTPHeaderFields];
    *buf = 138543362;
    v55 = allHTTPHeaderFields;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "HTTP Request Header: %{public}@", buf, 0xCu);
  }

  hTTPBody = [asyncCopy HTTPBody];

  if (hTTPBody)
  {
    v25 = handleForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [NSString alloc];
      hTTPBody2 = [asyncCopy HTTPBody];
      v28 = [v26 initWithData:hTTPBody2 encoding:4];
      *buf = 138477827;
      v55 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "HTTP Request Body: %{private}@", buf, 0xCu);
    }
  }

  if (configCopy)
  {
    v29 = configCopy;
LABEL_23:
    v30 = v29;
    if (v14 && v17)
    {
      v52[0] = @"SOCKSProxy";
      v52[1] = @"SOCKSPort";
      v53[0] = v14;
      v53[1] = v17;
      v52[2] = @"SOCKSEnable";
      v53[2] = &__kCFBooleanTrue;
      v31 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
      [v30 setConnectionProxyDictionary:v31];
    }

    v32 = [NSURLSession sessionWithConfiguration:v30 delegate:self delegateQueue:0];
    if (v32)
    {
      v33 = v32;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100001C6C;
      v50[3] = &unk_1000082C8;
      v51 = replyCopy;
      v34 = [v33 dataTaskWithRequest:asyncCopy completionHandler:v50];
      [v34 resume];

      v30 = v33;
    }

    else
    {
      v35 = handleForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000030C4(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    goto LABEL_31;
  }

  v29 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  if (v29)
  {
    goto LABEL_23;
  }

  v29 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  if (v29)
  {
    goto LABEL_23;
  }

  v30 = handleForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1000030FC(v30, v43, v44, v45, v46, v47, v48, v49);
  }

LABEL_31:
}

- (void)sendRequest:(id)request options:(id)options outData:(id *)data outStatus:(int *)status outError:(id *)error
{
  requestCopy = request;
  optionsCopy = options;
  v11 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1000022C4;
  v40 = sub_1000022D4;
  v41 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_1000022C4;
  v34[4] = sub_1000022D4;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000022C4;
  v32 = sub_1000022D4;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v12 = 1;
  while (1)
  {
    v13 = dispatch_semaphore_create(0);

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000022DC;
    v18[3] = &unk_1000082F0;
    v20 = v34;
    v21 = &v24;
    v22 = &v36;
    v23 = &v28;
    v11 = v13;
    v19 = v11;
    [(CoreRepairCoreNetworkXPCService *)self sendRequestAsync:requestCopy config:0 options:optionsCopy withReply:v18];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (![(CoreRepairCoreNetworkXPCService *)self hasNetworkError:v29[5]])
    {
      break;
    }

    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v43 = v12;
      v44 = 1024;
      v45 = 3;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Network error, retrying (%d of %d) ...", buf, 0xEu);
    }

    sleep(3u);
    if (++v12 == 4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if (data)
  {
    *data = v37[5];
  }

  if (status)
  {
    *status = *(v25 + 6);
  }

  if (error)
  {
    *error = v29[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
}

- (void)sendBAARequest:(id)request options:(id)options withReply:(id)reply
{
  replyCopy = reply;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  [(CoreRepairCoreNetworkXPCService *)self sendRequest:request options:options outData:&v15 outStatus:&v16 outError:&v14];
  v9 = v15;
  v10 = v14;
  v11 = v10;
  v12 = 0;
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v12 = [(CoreRepairCoreNetworkXPCService *)self _extractCertsFromResponse:v9];
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v12, v16, v11);
  }
}

- (void)sendPreflightRequest:(id)request options:(id)options withReply:(id)reply
{
  requestCopy = request;
  optionsCopy = options;
  replyCopy = reply;
  v29 = 0;
  if (!optionsCopy)
  {
    goto LABEL_5;
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"Phase"];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"Phase"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"Phase"];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

LABEL_6:
  v14 = handleForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    hTTPBody = [requestCopy HTTPBody];
    v16 = [hTTPBody base64EncodedStringWithOptions:0];
    *buf = 138412546;
    v31 = v11;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "request_%@: %@", buf, 0x16u);
  }

  v27 = 0;
  v28 = 0;
  [(CoreRepairCoreNetworkXPCService *)self sendRequest:requestCopy options:optionsCopy outData:&v28 outStatus:&v29 outError:&v27];
  v17 = v28;
  v18 = v27;
  v19 = v18;
  v20 = 0;
  if (v17 && !v18)
  {
    v21 = handleForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v17 base64EncodedStringWithOptions:0];
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "response_%@: %@", buf, 0x16u);
    }

    v26 = 0;
    v20 = [NSPropertyListSerialization propertyListWithData:v17 options:0 format:0 error:&v26];
    v23 = v26;
    v24 = v23;
    if (!v20 || (v19 = 0, v23))
    {
      v25 = handleForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100003134(v24, v25);
      }

      v19 = v24;
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v20, v29, v19);
  }
}

- (void)sendActivationRequest:(id)request options:(id)options withReply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v10 = [request mutableCopy];
  v11 = objc_opt_new();
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"AkSessionEnabled"];
    v13 = [v12 isEqualToNumber:&off_1000084E0];

    if (v13)
    {
      v14 = handleForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Use AuthKit session", v20, 2u);
      }

      authKitSessionConfig = [v11 authKitSessionConfig];
    }

    else
    {
      authKitSessionConfig = 0;
    }

    v16 = [optionsCopy objectForKeyedSubscript:@"AkAltDSID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v17 = [optionsCopy objectForKeyedSubscript:@"AkGSToken"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [optionsCopy objectForKeyedSubscript:@"AkGSToken"];
      v19 = [optionsCopy objectForKeyedSubscript:@"AkAltDSID"];
      [v11 _appendAdditionalHeaders:v10 altDSID:v19 gsToken:v16];

LABEL_11:
    }
  }

  else
  {
    authKitSessionConfig = 0;
  }

  [(CoreRepairCoreNetworkXPCService *)self sendRequestAsync:v10 config:authKitSessionConfig options:optionsCopy withReply:replyCopy];
}

- (id)_extractCertsFromResponse:(id)response
{
  responseCopy = response;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000022C4;
  v28 = sub_1000022D4;
  v29 = +[NSMutableArray array];
  v4 = [[NSString alloc] initWithData:responseCopy encoding:4];
  v5 = [NSRegularExpression regularExpressionWithPattern:@"-----BEGIN CERTIFICATE-----(.+?)-----END CERTIFICATE-----\n" options:40 error:0];
  v6 = [v4 length];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100002B94;
  v21 = &unk_100008318;
  v7 = v4;
  v22 = v7;
  v23 = &v24;
  [v5 enumerateMatchesInString:v7 options:0 range:0 usingBlock:{v6, &v18}];
  if ([v25[5] count])
  {
    v8 = v25[5];
  }

  else
  {
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000031AC(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v8;
}

- (BOOL)hasNetworkError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    if (code + 1009 <= 8)
    {
      v6 = 0x171u >> (code - 15);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  protectionSpace = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  v10 = SecTrustCopyCertificateChain(serverTrust);
  if (v10)
  {
    v11 = v10;
    if (CFArrayGetCount(v10) < 1)
    {
      v13 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
      v13 = SecCertificateCopyData(ValueAtIndex);
    }

    CFRelease(v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = handleForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server Certificate: %@", &v17, 0xCu);
  }

  protectionSpace2 = [challengeCopy protectionSpace];

  v16 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace2 serverTrust]);

  handlerCopy[2](handlerCopy, 0, v16);
}

@end