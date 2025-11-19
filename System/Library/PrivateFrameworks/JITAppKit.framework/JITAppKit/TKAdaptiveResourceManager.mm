@interface TKAdaptiveResourceManager
+ (CGSize)readableContentSize;
+ (CGSize)size;
+ (void)adaptiveMetricsDidChange;
+ (void)addObject:(id)a3;
+ (void)removeObject:(id)a3;
+ (void)setOverrideTrackingAdaptiveView:(id)a3;
+ (void)setup;
+ (void)windowSizeDidChange:(id)a3;
@end

@implementation TKAdaptiveResourceManager

+ (void)addObject:(id)a3
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [v6 setup];
  v3 = _references;
  v4 = [MEMORY[0x277D73420] weakReferenceWithObject:location[0]];
  [v3 addObject:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

+ (void)removeObject:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = _references;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__TKAdaptiveResourceManager_removeObject___block_invoke;
  v8 = &unk_2797EE5C8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [v3 enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __42__TKAdaptiveResourceManager_removeObject___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = [location[0] object];
  v7 = a1[4];
  MEMORY[0x277D82BD8](v8);
  if (v8 == v7)
  {
    [_references removeObjectAtIndex:a3];
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

+ (void)setOverrideTrackingAdaptiveView:(id)a3
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!location[0])
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [v5 keyWindow];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&_trackingAdaptiveView, location[0]);
  [v7 adaptiveMetricsDidChange];
  objc_storeStrong(location, 0);
}

+ (CGSize)readableContentSize
{
  v3 = *(&_readableContentSize + 1);
  v2 = *&_readableContentSize;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)size
{
  v3 = *(&_size + 1);
  v2 = *&_size;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)setup
{
  v9 = a1;
  v8 = a2;
  obj = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __34__TKAdaptiveResourceManager_setup__block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v11 = &setup_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __34__TKAdaptiveResourceManager_setup__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:64];
  v2 = _references;
  _references = v1;
  result = MEMORY[0x277D82BD8](v2);
  _readableContentSize = *MEMORY[0x277CBF3A8];
  _size = *MEMORY[0x277CBF3A8];
  if (!_trackingAdaptiveView)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v6 keyWindow];
    v5 = _trackingAdaptiveView;
    _trackingAdaptiveView = v4;
    MEMORY[0x277D82BD8](v5);
    result = MEMORY[0x277D82BD8](v6);
    if (_trackingAdaptiveView)
    {
      return [*(a1 + 32) adaptiveMetricsDidChange];
    }
  }

  return result;
}

+ (void)windowSizeDidChange:(id)a3
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _trackingAdaptiveView;
  v6 = [location[0] object];
  MEMORY[0x277D82BD8](v6);
  if (v7 == v6)
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    v5 = v4;
    block = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __49__TKAdaptiveResourceManager_windowSizeDidChange___block_invoke;
    v12 = &__block_descriptor_40_e5_v8__0l;
    v13 = v15;
    dispatch_async(v5, &block);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

+ (void)adaptiveMetricsDidChange
{
  v19 = a1;
  v18 = a2;
  if (_trackingAdaptiveView)
  {
    [_trackingAdaptiveView frame];
    v14 = v2;
    v15 = v3;
    *&v16 = v4;
    *(&v16 + 1) = v5;
    v17 = v16;
    v10 = [_trackingAdaptiveView readableContentGuide];
    [v10 layoutFrame];
    obj[1] = v6;
    obj[2] = v7;
    *&v12 = v8;
    *(&v12 + 1) = v9;
    v13 = v12;
    MEMORY[0x277D82BD8](v10);
    obj[0] = [_trackingAdaptiveView traitCollection];
    if (!__CGSizeEqualToSize(*&_size, *(&_size + 1), *&v16, *(&v16 + 1)) || !__CGSizeEqualToSize(*&_readableContentSize, *(&_readableContentSize + 1), *&v13, *(&v13 + 1)) || _traitCollection != obj[0])
    {
      _size = v17;
      _readableContentSize = v13;
      objc_storeStrong(&_traitCollection, obj[0]);
      [_references enumerateObjectsWithOptions:2 usingBlock:&__block_literal_global_7];
    }

    objc_storeStrong(obj, 0);
  }
}

void __53__TKAdaptiveResourceManager_adaptiveMetricsDidChange__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] object];
  [v2 adaptiveMetricsDidChange];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(location, 0);
}

@end