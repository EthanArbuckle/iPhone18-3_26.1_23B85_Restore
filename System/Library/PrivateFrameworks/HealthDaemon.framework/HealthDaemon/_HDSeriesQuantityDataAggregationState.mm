@interface _HDSeriesQuantityDataAggregationState
- (id)initWithRemainingSensorData:(uint64_t)data currentSeries:(void *)series lastDatum:(void *)datum length:;
@end

@implementation _HDSeriesQuantityDataAggregationState

- (id)initWithRemainingSensorData:(uint64_t)data currentSeries:(void *)series lastDatum:(void *)datum length:
{
  seriesCopy = series;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = _HDSeriesQuantityDataAggregationState;
    v11 = objc_msgSendSuper2(&v14, sel_initWithRemainingSensorData_currentSeries_, a2, data);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 3, series);
      v12[4] = datum;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end