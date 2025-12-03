@interface HKGraphSeriesDataSource
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution;
- (HKGraphSeriesDataSource)init;
- (HKGraphSeriesDataSourceDelegate)delegate;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
@end

@implementation HKGraphSeriesDataSource

- (HKGraphSeriesDataSource)init
{
  v3.receiver = self;
  v3.super_class = HKGraphSeriesDataSource;
  result = [(HKGraphSeriesDataSource *)&v3 init];
  if (result)
  {
    *&result->_minimumZoom = xmmword_1C3D5D900;
  }

  return result;
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution
{
  zoomCopy = zoom;
  minimumZoom = [(HKGraphSeriesDataSource *)self minimumZoom];
  if (minimumZoom > resolution)
  {
    resolution = minimumZoom;
  }

  maximumZoom = [(HKGraphSeriesDataSource *)self maximumZoom];
  if (resolution >= maximumZoom)
  {
    resolutionCopy = maximumZoom;
  }

  else
  {
    resolutionCopy = resolution;
  }

  HKGraphSeriesDataBlockPathContainingDate(zoomCopy, resolutionCopy, a6, retstr);

  return result;
}

- (HKGraphSeriesDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end