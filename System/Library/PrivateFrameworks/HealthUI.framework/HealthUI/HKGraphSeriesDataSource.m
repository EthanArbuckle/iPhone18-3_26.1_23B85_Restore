@interface HKGraphSeriesDataSource
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5;
- (HKGraphSeriesDataSource)init;
- (HKGraphSeriesDataSourceDelegate)delegate;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
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

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5
{
  v14 = a4;
  v10 = [(HKGraphSeriesDataSource *)self minimumZoom];
  if (v10 > a5)
  {
    a5 = v10;
  }

  v11 = [(HKGraphSeriesDataSource *)self maximumZoom];
  if (a5 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = a5;
  }

  HKGraphSeriesDataBlockPathContainingDate(v14, v12, a6, retstr);

  return result;
}

- (HKGraphSeriesDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end