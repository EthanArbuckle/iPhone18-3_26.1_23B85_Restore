@interface SUUIAppleIDImageURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (void)_startLoading;
- (void)startLoading;
@end

@implementation SUUIAppleIDImageURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];

  LOBYTE(v3) = [scheme isEqualToString:@"x-apple-identity-image"];
  return v3;
}

- (void)startLoading
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SUUIAppleIDImageURLProtocol_startLoading__block_invoke;
  v3[3] = &unk_2798F67A0;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __43__SUUIAppleIDImageURLProtocol_startLoading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startLoading];
}

- (void)_startLoading
{
  request = [(NSURLProtocol *)self request];
  v4 = [request URL];
  query = [v4 query];

  v5 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:query unescapedValues:1];
  v6 = [v5 objectForKey:@"firstName"];
  v7 = [v5 objectForKey:@"lastName"];
  v8 = [v5 objectForKey:@"email"];
  v9 = [v5 objectForKey:@"dsid"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = SUUIGetFamilyMemberImage(v6, v7, v8, v10);
  client = [(NSURLProtocol *)self client];
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277CBABA8]);
    request2 = [(NSURLProtocol *)self request];
    [request2 URL];
    v20 = v8;
    v15 = v7;
    v17 = v16 = v6;
    v18 = [v13 initWithURL:v17 MIMEType:@"image/png" expectedContentLength:-1 textEncodingName:0];

    [client URLProtocol:self didReceiveResponse:v18 cacheStoragePolicy:1];
    v19 = UIImagePNGRepresentation(v11);
    [client URLProtocol:self didLoadData:v19];

    v6 = v16;
    v7 = v15;
    v8 = v20;
    [client URLProtocolDidFinishLoading:self];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:0 userInfo:0];
    [client URLProtocol:self didFailWithError:v18];
  }
}

@end