@interface ODNServices
- (void)cacheData:(id)data forKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)dKsJLlNX54lzKt5n:(id)kt5n eqF2XJh3hHBJQf2K:(id)k;
- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion;
- (void)fetchConfigThrowingWithCompletion:(id)completion;
- (void)fetchConfigWithCompletion:(id)completion;
- (void)fetchDataForKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)fetchGeoCodingsForAddresses:(id)addresses completion:(id)completion;
- (void)lJIqliFcwusu4FxD:(id)d be2xk53Wn161LTDz:(id)dz completion:(id)completion;
- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion;
- (void)registerICloudLoginWithCompletion:(id)completion;
- (void)unregisterICloudLoginWithCompletion:(id)completion;
- (void)updateGeoCodingsForAddresses:(id)addresses locations:(id)locations completion:(id)completion;
@end

@implementation ODNServices

- (void)updateGeoCodingsForAddresses:(id)addresses locations:(id)locations completion:(id)completion
{
  completionCopy = completion;
  locationsCopy = locations;
  addressesCopy = addresses;
  v10 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v10 updateGeoCodingsForAddresses:addressesCopy locations:locationsCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)fetchGeoCodingsForAddresses:(id)addresses completion:(id)completion
{
  completionCopy = completion;
  addressesCopy = addresses;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ODNServices_fetchGeoCodingsForAddresses_completion___block_invoke;
  v9[3] = &unk_1E85EE098;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 fetchGeoCodingsForAddresses:addressesCopy completion:v9];
}

- (void)fetchConfigThrowingWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 fetchConfigThrowingWithCompletion:completionCopy];
}

- (void)fetchConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 fetchConfigWithCompletion:completionCopy];
}

- (void)dKsJLlNX54lzKt5n:(id)kt5n eqF2XJh3hHBJQf2K:(id)k
{
  kCopy = k;
  kt5nCopy = kt5n;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v7 dKsJLlNX54lzKt5n:kt5nCopy eqF2XJh3hHBJQf2K:kCopy];
}

- (void)lJIqliFcwusu4FxD:(id)d be2xk53Wn161LTDz:(id)dz completion:(id)completion
{
  completionCopy = completion;
  dzCopy = dz;
  dCopy = d;
  v10 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v10 lJIqliFcwusu4FxD:dCopy be2xk53Wn161LTDz:dzCopy completion:completionCopy];
}

- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion
{
  completionCopy = completion;
  ozkCopy = ozk;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v7 evrtH713YbFfEOzk:ozkCopy completion:completionCopy];
}

- (void)cacheData:(id)data forKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  dataCopy = data;
  v12 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v12 cacheData:dataCopy forKey:keyCopy andCategory:category completion:completionCopy];
}

- (void)fetchDataForKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v9 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v9 fetchDataForKey:keyCopy andCategory:category completion:completionCopy];
}

- (void)registerICloudLoginWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 registerICloudLoginWithCompletion:completionCopy];
}

- (void)unregisterICloudLoginWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 unregisterICloudLoginWithCompletion:completionCopy];
}

- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion
{
  completionCopy = completion;
  ndCopy = nd;
  hCopy = h;
  v10 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v10 ofLBc0SV56ddaijH:hCopy i7D0Lridvo8oYoNd:ndCopy completion:completionCopy];
}

@end