@interface NotesCIDURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (void)registerDataProvider:(id)provider forCIDURL:(id)l;
- (void)startLoading;
@end

@implementation NotesCIDURLProtocol

+ (void)registerDataProvider:(id)provider forCIDURL:(id)l
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NotesCIDURLProtocol_registerDataProvider_forCIDURL___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v5 = registerDataProvider_forCIDURL__onceToken;
  lCopy = l;
  providerCopy = provider;
  if (v5 != -1)
  {
    dispatch_once(&registerDataProvider_forCIDURL__onceToken, block);
  }

  [s_providersByCID setObject:providerCopy forKeyedSubscript:lCopy];
}

uint64_t __54__NotesCIDURLProtocol_registerDataProvider_forCIDURL___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E696AF58] registerClass:*(a1 + 32)];
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  s_providersByCID = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];
  v5 = [scheme isEqualToString:@"cid"];

  return v5;
}

- (void)startLoading
{
  request = [(NSURLProtocol *)self request];
  v4 = [request URL];

  client = [(NSURLProtocol *)self client];
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
      request2 = [(NSURLProtocol *)self request];
      v14 = [request2 URL];
      v15 = [v12 initWithURL:v14 MIMEType:v10 expectedContentLength:objc_msgSend(v9 textEncodingName:{"length"), 0}];

      [client URLProtocol:self didReceiveResponse:v15 cacheStoragePolicy:2];
      [client URLProtocol:self didLoadData:v9];
      [client URLProtocolDidFinishLoading:self];

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

  [client URLProtocol:self didFailWithError:v11];
LABEL_9:
}

@end