@interface NotesCIDURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (void)registerDataProvider:(id)a3 forCIDURL:(id)a4;
- (void)startLoading;
@end

@implementation NotesCIDURLProtocol

+ (void)registerDataProvider:(id)a3 forCIDURL:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NotesCIDURLProtocol_registerDataProvider_forCIDURL___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v5 = registerDataProvider_forCIDURL__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&registerDataProvider_forCIDURL__onceToken, block);
  }

  [s_providersByCID setObject:v7 forKeyedSubscript:v6];
}

uint64_t __54__NotesCIDURLProtocol_registerDataProvider_forCIDURL___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E696AF58] registerClass:*(a1 + 32)];
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  s_providersByCID = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"cid"];

  return v5;
}

- (void)startLoading
{
  v3 = [(NSURLProtocol *)self request];
  v4 = [v3 URL];

  v5 = [(NSURLProtocol *)self client];
  v6 = [s_providersByCID objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v8 = [v6 getData:&v18 mimeType:&v17 error:&v16];
    v9 = v18;
    v10 = v17;
    v11 = v16;
    if (v9 && (v8 & 1) != 0)
    {
      v12 = objc_alloc(MEMORY[0x1E696AF70]);
      v13 = [(NSURLProtocol *)self request];
      v14 = [v13 URL];
      v15 = [v12 initWithURL:v14 MIMEType:v10 expectedContentLength:objc_msgSend(v9 textEncodingName:{"length"), 0}];

      [v5 URLProtocol:self didReceiveResponse:v15 cacheStoragePolicy:2];
      [v5 URLProtocol:self didLoadData:v9];
      [v5 URLProtocolDidFinishLoading:self];

      goto LABEL_9;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NotesCIDURLProtocolErrorDomain" code:100 userInfo:0];
    v9 = 0;
    v10 = 0;
  }

  if (!v11)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NotesCIDURLProtocolErrorDomain" code:100 userInfo:0];
  }

  [v5 URLProtocol:self didFailWithError:v11];
LABEL_9:
}

@end