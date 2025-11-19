@interface TKNetwork
+ (id)shared;
+ (void)setShared:(id)a3;
- (id)downloadImage:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (id)downloadRequest:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (id)loadRequest:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (void)updateNetworkActivity:(int64_t)a3;
@end

@implementation TKNetwork

+ (id)shared
{
  v5 = &shared_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _shared;

  return v2;
}

uint64_t __19__TKNetwork_shared__block_invoke()
{
  if (!_shared)
  {
    v0 = objc_alloc_init(TKNetwork);
    v1 = _shared;
    _shared = v0;
    return MEMORY[0x277D82BD8](v1);
  }

  return result;
}

+ (void)setShared:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&_shared, location[0]);
  objc_storeStrong(location, 0);
}

- (id)loadRequest:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a4;
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = MEMORY[0x277D82BE0](@"normal");
  if (v23 == -1)
  {
    objc_storeStrong(&v21, @"low");
  }

  else if (v23 == 1)
  {
    objc_storeStrong(&v21, @"high");
  }

  [(TKNetwork *)v25 updateNetworkActivity:1];
  v9 = +[MCLURLDataLoader shared];
  v7 = location[0];
  v8 = v21;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __45__TKNetwork_loadRequest_priority_completion___block_invoke;
  v17 = &unk_2797EDF48;
  v18 = MEMORY[0x277D82BE0](v25);
  v19 = MEMORY[0x277D82BE0](v22);
  v20 = [v9 downloadRequest:v7 category:v8 completionHandler:&v13];
  MEMORY[0x277D82BD8](v9);
  v5 = [TKNetworkDefaultTask alloc];
  v10 = [(TKNetworkDefaultTask *)v5 initWithTask:v20];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v10;
}

void __45__TKNetwork_loadRequest_priority_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  [*(a1 + 32) updateNetworkActivity:-1];
  if (!v10 && ([location[0] responseOk] & 1) != 0)
  {
    v3 = MEMORY[0x277CBEA90];
    v4 = [location[0] targetPath];
    v9[0] = [v3 dataWithContentsOfFile:?];
    MEMORY[0x277D82BD8](v4);
    v5 = (*(a1 + 40) + 16);
    v6 = [location[0] response];
    (*v5)();
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(v9, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)downloadRequest:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a4;
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = MEMORY[0x277D82BE0](@"normal");
  if (v23 == -1)
  {
    objc_storeStrong(&v21, @"low");
  }

  else if (v23 == 1)
  {
    objc_storeStrong(&v21, @"high");
  }

  [(TKNetwork *)v25 updateNetworkActivity:1];
  v9 = +[MCLURLDataLoader shared];
  v7 = location[0];
  v8 = v21;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __49__TKNetwork_downloadRequest_priority_completion___block_invoke;
  v17 = &unk_2797EDF48;
  v18 = MEMORY[0x277D82BE0](v25);
  v19 = MEMORY[0x277D82BE0](v22);
  v20 = [v9 downloadRequest:v7 category:v8 completionHandler:&v13];
  MEMORY[0x277D82BD8](v9);
  v5 = [TKNetworkDefaultTask alloc];
  v10 = [(TKNetworkDefaultTask *)v5 initWithTask:v20];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v10;
}

void __49__TKNetwork_downloadRequest_priority_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  [*(a1 + 32) updateNetworkActivity:-1];
  if (!v7 && ([location[0] responseOk] & 1) != 0)
  {
    v3 = (*(a1 + 40) + 16);
    v4 = [location[0] targetPath];
    (*v3)();
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)downloadImage:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a4;
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = MEMORY[0x277D82BE0](@"normal");
  if (v23 == -1)
  {
    objc_storeStrong(&v21, @"low");
  }

  else if (v23 == 1)
  {
    objc_storeStrong(&v21, @"high");
  }

  [(TKNetwork *)v25 updateNetworkActivity:1];
  v9 = +[MCLURLDataLoader shared];
  v7 = location[0];
  v8 = v21;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __47__TKNetwork_downloadImage_priority_completion___block_invoke;
  v17 = &unk_2797EDF70;
  v18 = MEMORY[0x277D82BE0](v25);
  v19 = MEMORY[0x277D82BE0](v22);
  v20 = [v9 downloadImageWithRequest:v7 category:v8 completionHandler:&v13];
  MEMORY[0x277D82BD8](v9);
  v5 = [TKNetworkDefaultTask alloc];
  v10 = [(TKNetworkDefaultTask *)v5 initWithTask:v20];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v10;
}

void __47__TKNetwork_downloadImage_priority_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [*(a1 + 32) updateNetworkActivity:-1];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)updateNetworkActivity:(int64_t)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v5 = v4;
  block = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __35__TKNetwork_updateNetworkActivity___block_invoke;
  v10 = &__block_descriptor_40_e5_v8__0l;
  v11 = v12;
  dispatch_async(v5, &block);
  MEMORY[0x277D82BD8](v5);
}

uint64_t __35__TKNetwork_updateNetworkActivity___block_invoke(uint64_t result)
{
  if (_networkActivityCount + *(result + 32) <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = _networkActivityCount + *(result + 32);
  }

  if (v6)
  {
    if (!_networkActivityCount)
    {
      v2 = [MEMORY[0x277D75128] sharedApplication];
      [v2 setNetworkActivityIndicatorVisible:1];
      result = MEMORY[0x277D82BD8](v2);
    }
  }

  else
  {
    when = dispatch_time(0, 500000000);
    v3 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    v5 = v3;
    dispatch_after(when, v5, &__block_literal_global_7);
    result = MEMORY[0x277D82BD8](v5);
  }

  _networkActivityCount = v6;
  return result;
}

uint64_t __35__TKNetwork_updateNetworkActivity___block_invoke_2()
{
  if (!_networkActivityCount)
  {
    v1 = [MEMORY[0x277D75128] sharedApplication];
    [v1 setNetworkActivityIndicatorVisible:0];
    return MEMORY[0x277D82BD8](v1);
  }

  return result;
}

@end