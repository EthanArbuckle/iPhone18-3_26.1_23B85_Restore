@interface GKImageRequest
+ (NSArray)searchBundles;
+ (void)setSearchBundles:(id)bundles;
- (BOOL)isAvatarImageRequest;
- (BOOL)isContactImageRequest;
- (BOOL)isResourceRequest;
- (BOOL)isSystemImageRequest;
- (GKImageRequest)init;
- (GKImageRequest)initWithURLRequest:(id)request dataConsumer:(id)consumer delegate:(id)delegate;
- (GKImageRequestDelegate)delegate;
- (id)description;
- (id)makeLoadOperation;
- (unint64_t)cacheOptions;
- (void)didLoadResource:(id)resource error:(id)error;
@end

@implementation GKImageRequest

- (GKImageRequest)initWithURLRequest:(id)request dataConsumer:(id)consumer delegate:(id)delegate
{
  requestCopy = request;
  consumerCopy = consumer;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = GKImageRequest;
  v11 = [(GKResourceRequest *)&v15 init];
  if (v11)
  {
    v12 = [requestCopy copy];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v12;

    objc_storeStrong(&v11->_dataConsumer, consumer);
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v11;
}

- (GKImageRequest)init
{
  [(GKImageRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  urlRequest = [(GKImageRequest *)self urlRequest];
  dataConsumer = [(GKImageRequest *)self dataConsumer];
  v8 = [v3 stringWithFormat:@"<%@:%p urlRequest = %@, dataConsumer = %@>", v5, self, urlRequest, dataConsumer];

  return v8;
}

- (BOOL)isResourceRequest
{
  urlRequest = [(GKImageRequest *)self urlRequest];
  v3 = [urlRequest URL];
  scheme = [v3 scheme];
  v5 = [@"resource" isEqual:scheme];

  return v5;
}

- (BOOL)isSystemImageRequest
{
  urlRequest = [(GKImageRequest *)self urlRequest];
  v3 = [urlRequest URL];
  scheme = [v3 scheme];
  v5 = [@"systemimage" isEqual:scheme];

  return v5;
}

- (BOOL)isAvatarImageRequest
{
  urlRequest = [(GKImageRequest *)self urlRequest];
  v3 = [urlRequest URL];
  scheme = [v3 scheme];
  v5 = [@"avatarimage" isEqual:scheme];

  return v5;
}

- (BOOL)isContactImageRequest
{
  urlRequest = [(GKImageRequest *)self urlRequest];
  v3 = [urlRequest URL];
  scheme = [v3 scheme];
  v5 = [@"contactimage" isEqual:scheme];

  return v5;
}

- (unint64_t)cacheOptions
{
  if ([(GKImageRequest *)self isResourceRequest])
  {
    return 6;
  }

  if ([(GKImageRequest *)self isSystemImageRequest])
  {
    return 0;
  }

  return 2;
}

+ (void)setSearchBundles:(id)bundles
{
  v3 = [bundles copy];
  v4 = _searchBundles;
  _searchBundles = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

+ (NSArray)searchBundles
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (_searchBundles)
  {
    v2 = [_searchBundles copy];
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6[0] = mainBundle;
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.GameCenterUI"];
    v6[1] = v4;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  }

  return v2;
}

- (id)makeLoadOperation
{
  if ([(GKImageRequest *)self isResourceRequest])
  {
    v3 = [GKLoadBundleResourceOperation alloc];
    urlRequest = [(GKImageRequest *)self urlRequest];
    dataConsumer = [urlRequest URL];
    host = [dataConsumer host];
    searchBundles = [objc_opt_class() searchBundles];
    v8 = [(GKLoadBundleResourceOperation *)v3 initWithResourceName:host searchBundles:searchBundles];

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  if ([(GKImageRequest *)self isSystemImageRequest])
  {
    v9 = [GKLoadSystemImageResourceOperation alloc];
    urlRequest = [(GKImageRequest *)self urlRequest];
    dataConsumer = [urlRequest URL];
    host = [dataConsumer host];
    v8 = [(GKLoadSystemImageResourceOperation *)v9 initWithSystemImageName:host];
    goto LABEL_5;
  }

  if ([(GKImageRequest *)self isAvatarImageRequest])
  {
    urlRequest2 = [(GKImageRequest *)self urlRequest];
    v12 = [urlRequest2 URL];
    urlRequest = [v12 host];

    if ([urlRequest isEqualToString:@"G"])
    {
      urlRequest3 = [(GKImageRequest *)self urlRequest];
      v14 = [urlRequest3 URL];
      port = [v14 port];

      if (port)
      {
        v16 = MEMORY[0x277CCACA8];
        urlRequest4 = [(GKImageRequest *)self urlRequest];
        v18 = [urlRequest4 URL];
        port2 = [v18 port];
        v20 = [v16 stringWithFormat:@"G:%@", port2];

        urlRequest = v20;
      }
    }

    v21 = [[GKLoadAvatarResourceOperation alloc] initWithPlayerId:urlRequest];
  }

  else
  {
    if (![(GKImageRequest *)self isContactImageRequest])
    {
      v25 = [GKLoadImageResourceOperation alloc];
      urlRequest = [(GKImageRequest *)self urlRequest];
      dataConsumer = [(GKImageRequest *)self dataConsumer];
      v8 = [(GKLoadImageResourceOperation *)v25 initWithURLRequest:urlRequest dataConsumer:dataConsumer];
      goto LABEL_6;
    }

    urlRequest5 = [(GKImageRequest *)self urlRequest];
    v23 = [urlRequest5 URL];
    host2 = [v23 host];
    urlRequest = [host2 stringByRemovingPercentEncoding];

    v21 = [[GKLoadContactResourceOperation alloc] initWithContactId:urlRequest];
  }

  v8 = v21;
LABEL_7:

  return v8;
}

- (void)didLoadResource:(id)resource error:(id)error
{
  resourceCopy = resource;
  errorCopy = error;
  delegate = [(GKImageRequest *)self delegate];
  v8 = delegate;
  if (errorCopy)
  {
    [delegate imageRequest:self didFailWithError:errorCopy];
  }

  else
  {
    [delegate imageRequest:self didLoadImage:resourceCopy];
  }
}

- (GKImageRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end