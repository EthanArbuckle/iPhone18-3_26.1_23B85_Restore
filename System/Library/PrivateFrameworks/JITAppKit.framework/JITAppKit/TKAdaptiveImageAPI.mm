@interface TKAdaptiveImageAPI
+ (id)getService:(id)service;
+ (void)registerService:(id)service handler:(id)handler;
+ (void)setDefaultImageService:(id)service;
@end

@implementation TKAdaptiveImageAPI

+ (void)registerService:(id)service handler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  aBlock = 0;
  objc_storeStrong(&aBlock, handler);
  v9 = &registerService_handler__onceToken;
  v8 = 0;
  objc_storeStrong(&v8, &__block_literal_global_10);
  if (*v9 != -1)
  {
    dispatch_once(v9, v8);
  }

  objc_storeStrong(&v8, 0);
  v4 = _Block_copy(aBlock);
  [_handlers setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v4);
  if (!_defaultImageService)
  {
    objc_storeStrong(&_defaultImageService, location[0]);
  }

  objc_storeStrong(&aBlock, 0);
  objc_storeStrong(location, 0);
}

uint64_t __46__TKAdaptiveImageAPI_registerService_handler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _handlers;
  _handlers = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)getService:(id)service
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  if (!location[0])
  {
    objc_storeStrong(location, _defaultImageService);
  }

  v4 = [_handlers objectForKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (void)setDefaultImageService:(id)service
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  v3 = [location[0] copy];
  v4 = _defaultImageService;
  _defaultImageService = v3;
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

@end