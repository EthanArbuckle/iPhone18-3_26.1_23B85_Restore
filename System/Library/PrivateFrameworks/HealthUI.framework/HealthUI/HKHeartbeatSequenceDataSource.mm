@interface HKHeartbeatSequenceDataSource
- (CGRect)unionWithExtent:(CGRect)extent;
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution;
- (HKHeartbeatSequenceDataSource)init;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (void)setHeartbeatSequencePoints:(id)points;
@end

@implementation HKHeartbeatSequenceDataSource

- (HKHeartbeatSequenceDataSource)init
{
  v7.receiver = self;
  v7.super_class = HKHeartbeatSequenceDataSource;
  v2 = [(HKGraphSeriesDataSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKGraphSeriesDataBlock);
    dataBlock = v2->_dataBlock;
    v2->_dataBlock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    [(HKGraphSeriesDataBlock *)v2->_dataBlock setChartPoints:v5];
  }

  return v2;
}

- (void)setHeartbeatSequencePoints:(id)points
{
  [(HKGraphSeriesDataBlock *)self->_dataBlock setChartPoints:points];
  delegate = [(HKGraphSeriesDataSource *)self delegate];
  [delegate dataSourceDidUpdateCache:self];
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution
{
  *&retstr->index = xmmword_1C3D5D360;
  retstr->resolution = a6;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  if (path->index)
  {
    v4 = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)v4 setChartPoints:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v4 = self->_dataBlock;
  }

  return v4;
}

- (CGRect)unionWithExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v32 = *MEMORY[0x1E69E9840];
  chartPoints = [(HKGraphSeriesDataBlock *)self->_dataBlock chartPoints];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [chartPoints countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      v12 = x;
      v13 = y;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(chartPoints);
        }

        v14 = *(*(&v27 + 1) + 8 * v11);
        xValueAsGenericType = [v14 xValueAsGenericType];
        [xValueAsGenericType doubleValue];
        v17 = v16;

        yValue = [v14 yValue];
        [yValue doubleValue];
        v20 = v19;

        if (v12 >= v17)
        {
          x = v17;
        }

        else
        {
          x = v12;
        }

        if (v13 >= v20)
        {
          y = v20;
        }

        else
        {
          y = v13;
        }

        v21 = v12 + width;
        if (v12 + width < v17)
        {
          v21 = v17;
        }

        v22 = v13 + height;
        if (v13 + height < v20)
        {
          v22 = v20;
        }

        width = v21 - x;
        height = v22 - y;
        ++v11;
        v12 = x;
        v13 = y;
      }

      while (v9 != v11);
      v9 = [chartPoints countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

@end