@interface HKAudiogramDataSource
- (HKAudiogramDataSource)initWithSensitivityData:(id)a3 forLeftEar:(BOOL)a4;
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
@end

@implementation HKAudiogramDataSource

- (HKAudiogramDataSource)initWithSensitivityData:(id)a3 forLeftEar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HKAudiogramDataSource;
  v7 = [(HKGraphSeriesDataSource *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(HKGraphSeriesDataBlock);
    dataBlock = v7->_dataBlock;
    v7->_dataBlock = v8;

    v10 = [HKAudiogramChartPoint chartPointsFromSensitivityPoints:v6 isLeftEar:v4];
    [(HKGraphSeriesDataBlock *)v7->_dataBlock setChartPoints:v10];
  }

  return v7;
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5
{
  *&retstr->index = xmmword_1C3D5D360;
  retstr->resolution = 0;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  if (a3->index)
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