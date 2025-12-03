@interface HKAudiogramDataSource
- (HKAudiogramDataSource)initWithSensitivityData:(id)data forLeftEar:(BOOL)ear;
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
@end

@implementation HKAudiogramDataSource

- (HKAudiogramDataSource)initWithSensitivityData:(id)data forLeftEar:(BOOL)ear
{
  earCopy = ear;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = HKAudiogramDataSource;
  v7 = [(HKGraphSeriesDataSource *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(HKGraphSeriesDataBlock);
    dataBlock = v7->_dataBlock;
    v7->_dataBlock = v8;

    v10 = [HKAudiogramChartPoint chartPointsFromSensitivityPoints:dataCopy isLeftEar:earCopy];
    [(HKGraphSeriesDataBlock *)v7->_dataBlock setChartPoints:v10];
  }

  return v7;
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution
{
  *&retstr->index = xmmword_1C3D5D360;
  retstr->resolution = 0;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  if (path->index)
  {
    v4 = +[HKGraphSeriesDataBlock emptyDataBlock];
  }

  else
  {
    v4 = self->_dataBlock;
  }

  return v4;
}

@end