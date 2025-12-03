@interface HKAxisLabelCache
- (BOOL)_axisLabel:(id)label insideModelRange:(id)range;
- (HKAxisLabelCache)initWithLabelDataSource:(id)source;
- (HKAxisLabelDataSource)axisLabelDataSource;
- (id)_axisLabelsForPage:(id)page zoomScale:(double)scale;
- (id)allAxisLabelsForRange:(id)range zoomScale:(double)scale;
- (void)_handleTimeChangeNotification:(id)notification;
- (void)dealloc;
- (void)invalidateCache;
@end

@implementation HKAxisLabelCache

- (HKAxisLabelCache)initWithLabelDataSource:(id)source
{
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = HKAxisLabelCache;
  v5 = [(HKAxisLabelCache *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    mainCache = v5->_mainCache;
    v5->_mainCache = v6;

    lastRequestRange = v5->_lastRequestRange;
    v5->_lastRequestRange = 0;

    lastRequestData = v5->_lastRequestData;
    v5->_lastRequestData = 0;

    objc_storeWeak(&v5->_axisLabelDataSource, sourceCopy);
    v10 = objc_alloc_init(MEMORY[0x1E696AD10]);
    axisLabelCacheLock = v5->_axisLabelCacheLock;
    v5->_axisLabelCacheLock = v10;

    [(NSLock *)v5->_axisLabelCacheLock setName:@"HKAxisLabelCacheLock"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleTimeChangeNotification_ name:*MEMORY[0x1E69DDB88] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__handleTimeChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = HKAxisLabelCache;
  [(HKAxisLabelCache *)&v4 dealloc];
}

- (id)allAxisLabelsForRange:(id)range zoomScale:(double)scale
{
  v43 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  axisLabelCacheLock = [(HKAxisLabelCache *)self axisLabelCacheLock];
  [axisLabelCacheLock lock];

  lastRequestRange = [(HKAxisLabelCache *)self lastRequestRange];
  v9 = [rangeCopy isEqual:lastRequestRange];

  if (v9)
  {
    lastRequestData = [(HKAxisLabelCache *)self lastRequestData];
    axisLabelCacheLock2 = [(HKAxisLabelCache *)self axisLabelCacheLock];
    [axisLabelCacheLock2 unlock];
  }

  else
  {
    axisLabelDataSource = [(HKAxisLabelCache *)self axisLabelDataSource];
    v13 = [axisLabelDataSource cacheKeysForModelRange:rangeCopy zoomScale:scale];

    if (v13)
    {
      lastRequestData = objc_alloc_init(MEMORY[0x1E695DF70]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v28 = v13;
      obj = v13;
      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      v14 = 0;
      if (v31)
      {
        v30 = *v38;
        do
        {
          v15 = 0;
          do
          {
            if (*v38 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = v15;
            v16 = [(HKAxisLabelCache *)self _axisLabelsForPage:*(*(&v37 + 1) + 8 * v15) zoomScale:scale];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v34;
              v20 = 1;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v34 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v22 = *(*(&v33 + 1) + 8 * i);
                  if ([(HKAxisLabelCache *)self _axisLabel:v22 insideModelRange:rangeCopy])
                  {
                    if (v20 & 1) != 0 && ([v22 isEqual:v14])
                    {
                      v20 = 0;
                    }

                    else
                    {
                      [lastRequestData addObject:v22];
                      v23 = v22;

                      v20 = 0;
                      v14 = v23;
                    }
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v18);
            }

            v15 = v32 + 1;
          }

          while (v32 + 1 != v31);
          v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v31);
      }

      [(HKAxisLabelCache *)self setLastRequestRange:rangeCopy];
      [(HKAxisLabelCache *)self setLastRequestData:lastRequestData];
      axisLabelCacheLock3 = [(HKAxisLabelCache *)self axisLabelCacheLock];
      [axisLabelCacheLock3 unlock];

      v13 = v28;
    }

    else
    {
      axisLabelDataSource2 = [(HKAxisLabelCache *)self axisLabelDataSource];
      lastRequestData = [axisLabelDataSource2 findAxisLabelsInModelRange:rangeCopy zoomScale:scale];

      [(HKAxisLabelCache *)self setLastRequestRange:rangeCopy];
      [(HKAxisLabelCache *)self setLastRequestData:lastRequestData];
      axisLabelCacheLock4 = [(HKAxisLabelCache *)self axisLabelCacheLock];
      [axisLabelCacheLock4 unlock];
    }
  }

  return lastRequestData;
}

- (BOOL)_axisLabel:(id)label insideModelRange:(id)range
{
  rangeCopy = range;
  labelCopy = label;
  location = [labelCopy location];
  minValue = [rangeCopy minValue];
  v9 = [location compare:minValue];

  location2 = [labelCopy location];

  maxValue = [rangeCopy maxValue];

  v12 = [location2 compare:maxValue];
  return v9 != -1 && v12 != 1;
}

- (id)_axisLabelsForPage:(id)page zoomScale:(double)scale
{
  pageCopy = page;
  mainCache = [(HKAxisLabelCache *)self mainCache];
  v8 = [mainCache objectForKey:pageCopy];

  if (!v8)
  {
    axisLabelDataSource = [(HKAxisLabelCache *)self axisLabelDataSource];
    v8 = [axisLabelDataSource findAxisLabelsInModelRange:pageCopy zoomScale:scale];

    mainCache2 = [(HKAxisLabelCache *)self mainCache];
    [mainCache2 setObject:v8 forKey:pageCopy];
  }

  return v8;
}

- (void)invalidateCache
{
  axisLabelCacheLock = [(HKAxisLabelCache *)self axisLabelCacheLock];
  [axisLabelCacheLock lock];

  [(NSCache *)self->_mainCache removeAllObjects];
  [(HKAxisLabelCache *)self setLastRequestRange:0];
  [(HKAxisLabelCache *)self setLastRequestData:0];
  axisLabelCacheLock2 = [(HKAxisLabelCache *)self axisLabelCacheLock];
  [axisLabelCacheLock2 unlock];
}

- (void)_handleTimeChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__HKAxisLabelCache__handleTimeChangeNotification___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (HKAxisLabelDataSource)axisLabelDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_axisLabelDataSource);

  return WeakRetained;
}

@end