@interface HKAxisLabelCache
- (BOOL)_axisLabel:(id)a3 insideModelRange:(id)a4;
- (HKAxisLabelCache)initWithLabelDataSource:(id)a3;
- (HKAxisLabelDataSource)axisLabelDataSource;
- (id)_axisLabelsForPage:(id)a3 zoomScale:(double)a4;
- (id)allAxisLabelsForRange:(id)a3 zoomScale:(double)a4;
- (void)_handleTimeChangeNotification:(id)a3;
- (void)dealloc;
- (void)invalidateCache;
@end

@implementation HKAxisLabelCache

- (HKAxisLabelCache)initWithLabelDataSource:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_axisLabelDataSource, v4);
    v10 = objc_alloc_init(MEMORY[0x1E696AD10]);
    axisLabelCacheLock = v5->_axisLabelCacheLock;
    v5->_axisLabelCacheLock = v10;

    [(NSLock *)v5->_axisLabelCacheLock setName:@"HKAxisLabelCacheLock"];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v5 selector:sel__handleTimeChangeNotification_ name:*MEMORY[0x1E69DDB88] object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v5 selector:sel__handleTimeChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = HKAxisLabelCache;
  [(HKAxisLabelCache *)&v4 dealloc];
}

- (id)allAxisLabelsForRange:(id)a3 zoomScale:(double)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HKAxisLabelCache *)self axisLabelCacheLock];
  [v7 lock];

  v8 = [(HKAxisLabelCache *)self lastRequestRange];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [(HKAxisLabelCache *)self lastRequestData];
    v11 = [(HKAxisLabelCache *)self axisLabelCacheLock];
    [v11 unlock];
  }

  else
  {
    v12 = [(HKAxisLabelCache *)self axisLabelDataSource];
    v13 = [v12 cacheKeysForModelRange:v6 zoomScale:a4];

    if (v13)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
            v16 = [(HKAxisLabelCache *)self _axisLabelsForPage:*(*(&v37 + 1) + 8 * v15) zoomScale:a4];
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
                  if ([(HKAxisLabelCache *)self _axisLabel:v22 insideModelRange:v6])
                  {
                    if (v20 & 1) != 0 && ([v22 isEqual:v14])
                    {
                      v20 = 0;
                    }

                    else
                    {
                      [v10 addObject:v22];
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

      [(HKAxisLabelCache *)self setLastRequestRange:v6];
      [(HKAxisLabelCache *)self setLastRequestData:v10];
      v24 = [(HKAxisLabelCache *)self axisLabelCacheLock];
      [v24 unlock];

      v13 = v28;
    }

    else
    {
      v25 = [(HKAxisLabelCache *)self axisLabelDataSource];
      v10 = [v25 findAxisLabelsInModelRange:v6 zoomScale:a4];

      [(HKAxisLabelCache *)self setLastRequestRange:v6];
      [(HKAxisLabelCache *)self setLastRequestData:v10];
      v26 = [(HKAxisLabelCache *)self axisLabelCacheLock];
      [v26 unlock];
    }
  }

  return v10;
}

- (BOOL)_axisLabel:(id)a3 insideModelRange:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 location];
  v8 = [v5 minValue];
  v9 = [v7 compare:v8];

  v10 = [v6 location];

  v11 = [v5 maxValue];

  v12 = [v10 compare:v11];
  return v9 != -1 && v12 != 1;
}

- (id)_axisLabelsForPage:(id)a3 zoomScale:(double)a4
{
  v6 = a3;
  v7 = [(HKAxisLabelCache *)self mainCache];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v9 = [(HKAxisLabelCache *)self axisLabelDataSource];
    v8 = [v9 findAxisLabelsInModelRange:v6 zoomScale:a4];

    v10 = [(HKAxisLabelCache *)self mainCache];
    [v10 setObject:v8 forKey:v6];
  }

  return v8;
}

- (void)invalidateCache
{
  v3 = [(HKAxisLabelCache *)self axisLabelCacheLock];
  [v3 lock];

  [(NSCache *)self->_mainCache removeAllObjects];
  [(HKAxisLabelCache *)self setLastRequestRange:0];
  [(HKAxisLabelCache *)self setLastRequestData:0];
  v4 = [(HKAxisLabelCache *)self axisLabelCacheLock];
  [v4 unlock];
}

- (void)_handleTimeChangeNotification:(id)a3
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