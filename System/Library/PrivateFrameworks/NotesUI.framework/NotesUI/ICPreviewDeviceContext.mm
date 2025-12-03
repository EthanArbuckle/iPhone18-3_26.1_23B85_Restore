@interface ICPreviewDeviceContext
+ (id)sharedContext;
- (ICPreviewDeviceContext)init;
- (NSArray)deviceScales;
- (double)maxDeviceScale;
- (double)maxSizeOfPreviewDeviceInfoImage;
- (id)deviceInfoScalable:(BOOL)scalable;
- (void)dealloc;
- (void)screensChangedNotification:(id)notification;
@end

@implementation ICPreviewDeviceContext

+ (id)sharedContext
{
  if (sharedContext_once != -1)
  {
    +[ICPreviewDeviceContext sharedContext];
  }

  v3 = sharedContext;

  return v3;
}

uint64_t __39__ICPreviewDeviceContext_sharedContext__block_invoke()
{
  v0 = objc_alloc_init(ICPreviewDeviceContext);
  sharedContext = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (ICPreviewDeviceContext)init
{
  v7.receiver = self;
  v7.super_class = ICPreviewDeviceContext;
  v2 = [(ICPreviewDeviceContext *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_screensChangedNotification_ name:*MEMORY[0x1E69DE378] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_screensChangedNotification_ name:*MEMORY[0x1E69DE380] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_screensChangedNotification_ name:*MEMORY[0x1E69DE388] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICPreviewDeviceContext;
  [(ICPreviewDeviceContext *)&v4 dealloc];
}

- (NSArray)deviceScales
{
  v23[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceScales = selfCopy->_deviceScales;
  if (!deviceScales)
  {
    array = [MEMORY[0x1E695DF70] array];
    screens = [MEMORY[0x1E69DCEB0] screens];
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"scale" ascending:1];
    v23[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v8 = [screens sortedArrayUsingDescriptors:v7];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = MEMORY[0x1E696AD98];
          [*(*(&v18 + 1) + 8 * i) scale];
          v14 = [v13 numberWithDouble:?];
          [(NSArray *)array addObject:v14];
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v15 = selfCopy->_deviceScales;
    selfCopy->_deviceScales = array;

    deviceScales = selfCopy->_deviceScales;
  }

  v16 = deviceScales;
  objc_sync_exit(selfCopy);

  return v16;
}

- (double)maxDeviceScale
{
  deviceScales = [(ICPreviewDeviceContext *)self deviceScales];
  lastObject = [deviceScales lastObject];
  [lastObject doubleValue];
  v5 = v4;

  return v5;
}

- (double)maxSizeOfPreviewDeviceInfoImage
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(ICPreviewDeviceContext *)self deviceInfoScalable:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__ICPreviewDeviceContext_maxSizeOfPreviewDeviceInfoImage__block_invoke;
  v8[3] = &unk_1E846BB88;
  v8[4] = &v9;
  [v3 enumerateObjectsUsingBlock:v8];
  v4 = [(ICPreviewDeviceContext *)self deviceInfoScalable:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ICPreviewDeviceContext_maxSizeOfPreviewDeviceInfoImage__block_invoke_2;
  v7[3] = &unk_1E846BB88;
  v7[4] = &v9;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __57__ICPreviewDeviceContext_maxSizeOfPreviewDeviceInfoImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  [v4 imageSize];
  v6 = v5;
  [v4 scale];
  v8 = v7;

  v9 = v6 * v8;
  if (v3 >= v6 * v8)
  {
    v9 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
}

void __57__ICPreviewDeviceContext_maxSizeOfPreviewDeviceInfoImage__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  [v4 imageSize];
  v6 = v5;
  [v4 scale];
  v8 = v7;

  v9 = v6 * v8;
  if (v3 >= v6 * v8)
  {
    v9 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
}

- (id)deviceInfoScalable:(BOOL)scalable
{
  scalableCopy = scalable;
  v21[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (scalableCopy)
  {
    scalableDeviceInfo = [(ICPreviewDeviceContext *)selfCopy scalableDeviceInfo];

    if (!scalableDeviceInfo)
    {
      v6 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:384.0 scale:1.0];
      v21[0] = v6;
      v7 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:192.0 scale:1.0];
      v21[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      [(ICPreviewDeviceContext *)selfCopy setScalableDeviceInfo:v8];
    }

    scalableDeviceInfo2 = [(ICPreviewDeviceContext *)selfCopy scalableDeviceInfo];
  }

  else
  {
    nonScalableDeviceInfo = [(ICPreviewDeviceContext *)selfCopy nonScalableDeviceInfo];

    if (!nonScalableDeviceInfo)
    {
      v11 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:88.0 scale:1.0];
      v20[0] = v11;
      v12 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:88.0 scale:2.0];
      v20[1] = v12;
      v13 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:88.0 scale:3.0];
      v20[2] = v13;
      v14 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:384.0 scale:1.0];
      v20[3] = v14;
      v15 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:384.0 scale:2.0];
      v20[4] = v15;
      v16 = [objc_alloc(MEMORY[0x1E69B7858]) initWithImageSize:384.0 scale:3.0];
      v20[5] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:6];
      [(ICPreviewDeviceContext *)selfCopy setNonScalableDeviceInfo:v17];
    }

    scalableDeviceInfo2 = [(ICPreviewDeviceContext *)selfCopy nonScalableDeviceInfo];
  }

  v18 = scalableDeviceInfo2;
  objc_sync_exit(selfCopy);

  return v18;
}

- (void)screensChangedNotification:(id)notification
{
  obj = self;
  objc_sync_enter(obj);
  deviceScales = obj->_deviceScales;
  obj->_deviceScales = 0;

  objc_sync_exit(obj);
}

@end