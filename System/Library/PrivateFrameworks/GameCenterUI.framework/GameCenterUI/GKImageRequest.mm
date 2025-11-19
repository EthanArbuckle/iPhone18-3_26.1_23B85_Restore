@interface GKImageRequest
+ (NSArray)searchBundles;
+ (void)setSearchBundles:(id)a3;
- (BOOL)isAvatarImageRequest;
- (BOOL)isContactImageRequest;
- (BOOL)isResourceRequest;
- (BOOL)isSystemImageRequest;
- (GKImageRequest)init;
- (GKImageRequest)initWithURLRequest:(id)a3 dataConsumer:(id)a4 delegate:(id)a5;
- (GKImageRequestDelegate)delegate;
- (id)description;
- (id)makeLoadOperation;
- (unint64_t)cacheOptions;
- (void)didLoadResource:(id)a3 error:(id)a4;
@end

@implementation GKImageRequest

- (GKImageRequest)initWithURLRequest:(id)a3 dataConsumer:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = GKImageRequest;
  v11 = [(GKResourceRequest *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v12;

    objc_storeStrong(&v11->_dataConsumer, a4);
    objc_storeWeak(&v11->_delegate, v10);
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
  v6 = [(GKImageRequest *)self urlRequest];
  v7 = [(GKImageRequest *)self dataConsumer];
  v8 = [v3 stringWithFormat:@"<%@:%p urlRequest = %@, dataConsumer = %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isResourceRequest
{
  v2 = [(GKImageRequest *)self urlRequest];
  v3 = [v2 URL];
  v4 = [v3 scheme];
  v5 = [@"resource" isEqual:v4];

  return v5;
}

- (BOOL)isSystemImageRequest
{
  v2 = [(GKImageRequest *)self urlRequest];
  v3 = [v2 URL];
  v4 = [v3 scheme];
  v5 = [@"systemimage" isEqual:v4];

  return v5;
}

- (BOOL)isAvatarImageRequest
{
  v2 = [(GKImageRequest *)self urlRequest];
  v3 = [v2 URL];
  v4 = [v3 scheme];
  v5 = [@"avatarimage" isEqual:v4];

  return v5;
}

- (BOOL)isContactImageRequest
{
  v2 = [(GKImageRequest *)self urlRequest];
  v3 = [v2 URL];
  v4 = [v3 scheme];
  v5 = [@"contactimage" isEqual:v4];

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

+ (void)setSearchBundles:(id)a3
{
  v3 = [a3 copy];
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
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v6[0] = v3;
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
    v4 = [(GKImageRequest *)self urlRequest];
    v5 = [v4 URL];
    v6 = [v5 host];
    v7 = [objc_opt_class() searchBundles];
    v8 = [(GKLoadBundleResourceOperation *)v3 initWithResourceName:v6 searchBundles:v7];

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  if ([(GKImageRequest *)self isSystemImageRequest])
  {
    v9 = [GKLoadSystemImageResourceOperation alloc];
    v4 = [(GKImageRequest *)self urlRequest];
    v5 = [v4 URL];
    v6 = [v5 host];
    v8 = [(GKLoadSystemImageResourceOperation *)v9 initWithSystemImageName:v6];
    goto LABEL_5;
  }

  if ([(GKImageRequest *)self isAvatarImageRequest])
  {
    v11 = [(GKImageRequest *)self urlRequest];
    v12 = [v11 URL];
    v4 = [v12 host];

    if ([v4 isEqualToString:@"G"])
    {
      v13 = [(GKImageRequest *)self urlRequest];
      v14 = [v13 URL];
      v15 = [v14 port];

      if (v15)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [(GKImageRequest *)self urlRequest];
        v18 = [v17 URL];
        v19 = [v18 port];
        v20 = [v16 stringWithFormat:@"G:%@", v19];

        v4 = v20;
      }
    }

    v21 = [[GKLoadAvatarResourceOperation alloc] initWithPlayerId:v4];
  }

  else
  {
    if (![(GKImageRequest *)self isContactImageRequest])
    {
      v25 = [GKLoadImageResourceOperation alloc];
      v4 = [(GKImageRequest *)self urlRequest];
      v5 = [(GKImageRequest *)self dataConsumer];
      v8 = [(GKLoadImageResourceOperation *)v25 initWithURLRequest:v4 dataConsumer:v5];
      goto LABEL_6;
    }

    v22 = [(GKImageRequest *)self urlRequest];
    v23 = [v22 URL];
    v24 = [v23 host];
    v4 = [v24 stringByRemovingPercentEncoding];

    v21 = [[GKLoadContactResourceOperation alloc] initWithContactId:v4];
  }

  v8 = v21;
LABEL_7:

  return v8;
}

- (void)didLoadResource:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(GKImageRequest *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 imageRequest:self didFailWithError:v6];
  }

  else
  {
    [v7 imageRequest:self didLoadImage:v9];
  }
}

- (GKImageRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end