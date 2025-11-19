@interface ODNServices
- (void)cacheData:(id)a3 forKey:(id)a4 andCategory:(int64_t)a5 completion:(id)a6;
- (void)dKsJLlNX54lzKt5n:(id)a3 eqF2XJh3hHBJQf2K:(id)a4;
- (void)evrtH713YbFfEOzk:(id)a3 completion:(id)a4;
- (void)fetchConfigThrowingWithCompletion:(id)a3;
- (void)fetchConfigWithCompletion:(id)a3;
- (void)fetchDataForKey:(id)a3 andCategory:(int64_t)a4 completion:(id)a5;
- (void)fetchGeoCodingsForAddresses:(id)a3 completion:(id)a4;
- (void)lJIqliFcwusu4FxD:(id)a3 be2xk53Wn161LTDz:(id)a4 completion:(id)a5;
- (void)ofLBc0SV56ddaijH:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5;
- (void)registerICloudLoginWithCompletion:(id)a3;
- (void)unregisterICloudLoginWithCompletion:(id)a3;
- (void)updateGeoCodingsForAddresses:(id)a3 locations:(id)a4 completion:(id)a5;
@end

@implementation ODNServices

- (void)updateGeoCodingsForAddresses:(id)a3 locations:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v10 updateGeoCodingsForAddresses:v9 locations:v8];

  v7[2](v7, 0);
}

- (void)fetchGeoCodingsForAddresses:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ODNServices_fetchGeoCodingsForAddresses_completion___block_invoke;
  v9[3] = &unk_1E85EE098;
  v10 = v5;
  v8 = v5;
  [v7 fetchGeoCodingsForAddresses:v6 completion:v9];
}

- (void)fetchConfigThrowingWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 fetchConfigThrowingWithCompletion:v3];
}

- (void)fetchConfigWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 fetchConfigWithCompletion:v3];
}

- (void)dKsJLlNX54lzKt5n:(id)a3 eqF2XJh3hHBJQf2K:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v7 dKsJLlNX54lzKt5n:v6 eqF2XJh3hHBJQf2K:v5];
}

- (void)lJIqliFcwusu4FxD:(id)a3 be2xk53Wn161LTDz:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v10 lJIqliFcwusu4FxD:v9 be2xk53Wn161LTDz:v8 completion:v7];
}

- (void)evrtH713YbFfEOzk:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v7 evrtH713YbFfEOzk:v6 completion:v5];
}

- (void)cacheData:(id)a3 forKey:(id)a4 andCategory:(int64_t)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v12 cacheData:v11 forKey:v10 andCategory:a5 completion:v9];
}

- (void)fetchDataForKey:(id)a3 andCategory:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v9 fetchDataForKey:v8 andCategory:a4 completion:v7];
}

- (void)registerICloudLoginWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 registerICloudLoginWithCompletion:v3];
}

- (void)unregisterICloudLoginWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v4 unregisterICloudLoginWithCompletion:v3];
}

- (void)ofLBc0SV56ddaijH:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[Lt10zus2DOk3OfFf sharedInstance];
  [v10 ofLBc0SV56ddaijH:v9 i7D0Lridvo8oYoNd:v8 completion:v7];
}

@end