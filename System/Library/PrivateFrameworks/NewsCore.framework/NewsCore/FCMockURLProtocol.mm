@interface FCMockURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
+ (id)URLForData:(id)a3 mimeType:(id)a4 statusCode:(unint64_t)a5;
+ (id)URLForError:(id)a3;
- (void)startLoading;
@end

@implementation FCMockURLProtocol

+ (id)URLForData:(id)a3 mimeType:(id)a4 statusCode:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = NSTemporaryDirectory();
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 stringByAppendingPathComponent:v11];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  [v13 createFileAtPath:v12 contents:v8 attributes:0];

  if (qword_1EDB270C8 == -1)
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_1EDB270C8, &__block_literal_global_42);
  if (v7)
  {
LABEL_3:
    [_MergedGlobals_149 setObject:v7 forKey:v12];
  }

LABEL_4:
  if (qword_1EDB270D0 == -1)
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  dispatch_once(&qword_1EDB270D0, &__block_literal_global_8_0);
  if (a5)
  {
LABEL_6:
    v14 = qword_1EDB270B8;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
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

+ (id)URLForError:(id)a3
{
  v3 = ++qword_1EDB270D8;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"/%lu", v3];
  if (qword_1EDB270E0 != -1)
  {
    dispatch_once(&qword_1EDB270E0, &__block_literal_global_19);
  }

  [qword_1EDB270C0 setObject:v5 forKey:v6];

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

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
  if (NSClassFromString(&cfstr_Xctest.isa))
  {
    v4 = [v3 URL];
    v5 = [v4 host];
    if ([v5 isEqualToString:@"news-mock-file.local"])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 URL];
      v8 = [v7 host];
      v6 = [v8 isEqualToString:@"news-mock-error.local"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4
{
  v5 = a4;
  v6 = [a3 URL];
  v7 = [v6 path];
  v8 = [v5 URL];

  v9 = [v8 path];
  v10 = [v7 isEqualToString:v9];

  return v10;
}

- (void)startLoading
{
  v3 = [(NSURLProtocol *)self request];
  v4 = [v3 URL];
  v5 = [v4 host];
  v6 = [v5 isEqualToString:@"news-mock-file.local"];

  if (v6)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [(NSURLProtocol *)self request];
    v9 = [v8 URL];
    v10 = [v9 path];
    v11 = [v7 fileURLWithPath:v10];

    v43 = 0;
    [v11 getResourceValue:&v43 forKey:*MEMORY[0x1E695DB50] error:0];
    v12 = qword_1EDB270B8;
    v13 = v43;
    v14 = [(NSURLProtocol *)self request];
    v15 = [v14 URL];
    v16 = [v15 path];
    v17 = [v12 objectForKey:v16];

    v18 = _MergedGlobals_149;
    v19 = [v11 path];
    v20 = [v18 objectForKey:v19];

    v21 = [MEMORY[0x1E695DF90] dictionary];
    [v21 fc_safelySetObjectAllowingNil:v20 forKey:@"Content-Type"];
    v22 = objc_alloc(MEMORY[0x1E695AC08]);
    v23 = [(NSURLProtocol *)self request];
    v24 = [v23 URL];
    if (v17)
    {
      v25 = [v17 unsignedIntegerValue];
    }

    else
    {
      v25 = 200;
    }

    v35 = [v22 initWithURL:v24 statusCode:v25 HTTPVersion:0 headerFields:v21];

    v36 = [(NSURLProtocol *)self client];
    [v36 URLProtocol:self didReceiveResponse:v35 cacheStoragePolicy:0];

    v37 = [(NSURLProtocol *)self client];
    v38 = MEMORY[0x1E695DEF0];
    v39 = [v11 path];
    v40 = [v38 dataWithContentsOfFile:v39];
    [v37 URLProtocol:self didLoadData:v40];

    v41 = [(NSURLProtocol *)self client];
    [v41 URLProtocolDidFinishLoading:self];
  }

  else
  {
    v26 = [(NSURLProtocol *)self request];
    v27 = [v26 URL];
    v28 = [v27 host];
    v29 = [v28 isEqualToString:@"news-mock-error.local"];

    if (v29)
    {
      v30 = qword_1EDB270C0;
      v31 = [(NSURLProtocol *)self request];
      v32 = [v31 URL];
      v33 = [v32 path];
      v42 = [v30 objectForKey:v33];

      v34 = [(NSURLProtocol *)self client];
      [v34 URLProtocol:self didFailWithError:v42];
    }
  }
}

@end