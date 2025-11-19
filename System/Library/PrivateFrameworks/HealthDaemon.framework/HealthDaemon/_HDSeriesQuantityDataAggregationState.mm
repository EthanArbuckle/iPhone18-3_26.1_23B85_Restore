@interface _HDSeriesQuantityDataAggregationState
- (id)initWithRemainingSensorData:(uint64_t)a3 currentSeries:(void *)a4 lastDatum:(void *)a5 length:;
@end

@implementation _HDSeriesQuantityDataAggregationState

- (id)initWithRemainingSensorData:(uint64_t)a3 currentSeries:(void *)a4 lastDatum:(void *)a5 length:
{
  v10 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = _HDSeriesQuantityDataAggregationState;
    v11 = objc_msgSendSuper2(&v14, sel_initWithRemainingSensorData_currentSeries_, a2, a3);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 3, a4);
      v12[4] = a5;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end