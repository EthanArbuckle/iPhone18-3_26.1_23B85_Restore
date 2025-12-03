@interface ASKLoadBundleResourceOperation
+ (id)_searchBundles;
- (ASKLoadBundleResourceOperation)initWithResourceName:(id)name;
- (ASKLoadBundleResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer;
- (void)main;
@end

@implementation ASKLoadBundleResourceOperation

- (ASKLoadBundleResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer
{
  v6 = [request URL];
  host = [v6 host];
  v8 = [(ASKLoadBundleResourceOperation *)self initWithResourceName:host];

  return v8;
}

- (ASKLoadBundleResourceOperation)initWithResourceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ASKLoadBundleResourceOperation;
  v5 = [(ASKLoadBundleResourceOperation *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    resourceName = v5->_resourceName;
    v5->_resourceName = v6;
  }

  return v5;
}

+ (id)_searchBundles
{
  if (_searchBundles_onceToken != -1)
  {
    +[ASKLoadBundleResourceOperation _searchBundles];
  }

  v3 = _searchBundles__searchBundles;

  return v3;
}

void __48__ASKLoadBundleResourceOperation__searchBundles__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v4[0] = v0;
  v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.GameStoreKit"];
  v4[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v3 = _searchBundles__searchBundles;
  _searchBundles__searchBundles = v2;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  _searchBundles = [objc_opt_class() _searchBundles];
  v4 = [_searchBundles countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(_searchBundles);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      if (([(ASKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v9 = MEMORY[0x277D755B8];
      resourceName = [(ASKLoadBundleResourceOperation *)self resourceName];
      v11 = [v9 imageNamed:resourceName inBundle:v8 compatibleWithTraitCollection:0];

      if (v11)
      {
        selfCopy2 = self;
        v18 = v11;
        v19 = 0;
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        v5 = [_searchBundles countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    if (([(ASKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
    {
      return;
    }

    v12 = MEMORY[0x277CCACA8];
    resourceName2 = [(ASKLoadBundleResourceOperation *)self resourceName];
    _searchBundles2 = [objc_opt_class() _searchBundles];
    _searchBundles = [v12 stringWithFormat:@"No image found for %@ in %@", resourceName2, _searchBundles2, v20];

    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = _searchBundles;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [v15 errorWithDomain:@"ASKLoadBundleResourceOperationErrorDomain" code:560557415 userInfo:v16];

    selfCopy2 = self;
    v18 = 0;
    v19 = v11;
LABEL_13:
    [(ASKLoadResourceOperation *)selfCopy2 didCompleteWithResource:v18 error:v19];
  }
}

@end