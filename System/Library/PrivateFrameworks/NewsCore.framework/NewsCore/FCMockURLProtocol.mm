@interface FCMockURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
+ (id)URLForData:(id)data mimeType:(id)type statusCode:(unint64_t)code;
+ (id)URLForError:(id)error;
- (void)startLoading;
@end

@implementation FCMockURLProtocol

+ (id)URLForData:(id)data mimeType:(id)type statusCode:(unint64_t)code
{
  typeCopy = type;
  dataCopy = data;
  v9 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [v9 stringByAppendingPathComponent:uUIDString];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createFileAtPath:v12 contents:dataCopy attributes:0];

  if (qword_1EDB270C8 == -1)
  {
    if (!typeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_1EDB270C8, &__block_literal_global_42);
  if (typeCopy)
  {
LABEL_3:
    [_MergedGlobals_149 setObject:typeCopy forKey:v12];
  }

LABEL_4:
  if (qword_1EDB270D0 == -1)
  {
    if (!code)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  dispatch_once(&qword_1EDB270D0, &__block_literal_global_8_0);
  if (code)
  {
LABEL_6:
    v14 = qword_1EDB270B8;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:code];
    [v14 setObject:v15 forKey:v12];
  }

LABEL_7:
  v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v16 setScheme:@"https"];
  [v16 setHost:@"news-mock-file.local"];
  [v16 setPath:v12];
  v17 = [v16 URL];

  return v17;
}

uint64_t __52__FCMockURLProtocol_URLForData_mimeType_statusCode___block_invoke()
{
  v0 = objc_alloc_init(FCThreadSafeMutableDictionary);
  v1 = _MergedGlobals_149;
  _MergedGlobals_149 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __52__FCMockURLProtocol_URLForData_mimeType_statusCode___block_invoke_2()
{
  v0 = objc_alloc_init(FCThreadSafeMutableDictionary);
  v1 = qword_1EDB270B8;
  qword_1EDB270B8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)URLForError:(id)error
{
  v3 = ++qword_1EDB270D8;
  v4 = MEMORY[0x1E696AEC0];
  errorCopy = error;
  v6 = [v4 stringWithFormat:@"/%lu", v3];
  if (qword_1EDB270E0 != -1)
  {
    dispatch_once(&qword_1EDB270E0, &__block_literal_global_19);
  }

  [qword_1EDB270C0 setObject:errorCopy forKey:v6];

  v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v7 setScheme:@"https"];
  [v7 setHost:@"news-mock-error.local"];
  [v7 setPath:v6];
  v8 = [v7 URL];

  return v8;
}

uint64_t __33__FCMockURLProtocol_URLForError___block_invoke()
{
  v0 = objc_alloc_init(FCThreadSafeMutableDictionary);
  v1 = qword_1EDB270C0;
  qword_1EDB270C0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  if (NSClassFromString(&cfstr_Xctest.isa))
  {
    v4 = [requestCopy URL];
    host = [v4 host];
    if ([host isEqualToString:@"news-mock-file.local"])
    {
      v6 = 1;
    }

    else
    {
      v7 = [requestCopy URL];
      host2 = [v7 host];
      v6 = [host2 isEqualToString:@"news-mock-error.local"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  requestCopy = request;
  v6 = [equivalent URL];
  path = [v6 path];
  v8 = [requestCopy URL];

  path2 = [v8 path];
  v10 = [path isEqualToString:path2];

  return v10;
}

- (void)startLoading
{
  request = [(NSURLProtocol *)self request];
  v4 = [request URL];
  host = [v4 host];
  v6 = [host isEqualToString:@"news-mock-file.local"];

  if (v6)
  {
    v7 = MEMORY[0x1E695DFF8];
    request2 = [(NSURLProtocol *)self request];
    v9 = [request2 URL];
    path = [v9 path];
    v11 = [v7 fileURLWithPath:path];

    v43 = 0;
    [v11 getResourceValue:&v43 forKey:*MEMORY[0x1E695DB50] error:0];
    v12 = qword_1EDB270B8;
    v13 = v43;
    request3 = [(NSURLProtocol *)self request];
    v15 = [request3 URL];
    path2 = [v15 path];
    v17 = [v12 objectForKey:path2];

    v18 = _MergedGlobals_149;
    path3 = [v11 path];
    v20 = [v18 objectForKey:path3];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary fc_safelySetObjectAllowingNil:v20 forKey:@"Content-Type"];
    v22 = objc_alloc(MEMORY[0x1E695AC08]);
    request4 = [(NSURLProtocol *)self request];
    v24 = [request4 URL];
    if (v17)
    {
      unsignedIntegerValue = [v17 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 200;
    }

    v35 = [v22 initWithURL:v24 statusCode:unsignedIntegerValue HTTPVersion:0 headerFields:dictionary];

    client = [(NSURLProtocol *)self client];
    [client URLProtocol:self didReceiveResponse:v35 cacheStoragePolicy:0];

    client2 = [(NSURLProtocol *)self client];
    v38 = MEMORY[0x1E695DEF0];
    path4 = [v11 path];
    v40 = [v38 dataWithContentsOfFile:path4];
    [client2 URLProtocol:self didLoadData:v40];

    client3 = [(NSURLProtocol *)self client];
    [client3 URLProtocolDidFinishLoading:self];
  }

  else
  {
    request5 = [(NSURLProtocol *)self request];
    v27 = [request5 URL];
    host2 = [v27 host];
    v29 = [host2 isEqualToString:@"news-mock-error.local"];

    if (v29)
    {
      v30 = qword_1EDB270C0;
      request6 = [(NSURLProtocol *)self request];
      v32 = [request6 URL];
      path5 = [v32 path];
      v42 = [v30 objectForKey:path5];

      client4 = [(NSURLProtocol *)self client];
      [client4 URLProtocol:self didFailWithError:v42];
    }
  }
}

@end