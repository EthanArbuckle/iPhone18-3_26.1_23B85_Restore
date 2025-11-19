@interface HKGraphSeriesVisibleBlockCoordinates
- (HKGraphSeriesVisibleBlockCoordinates)initWithMinimum:(id)a3 maximum:(id)a4 last:(id)a5;
@end

@implementation HKGraphSeriesVisibleBlockCoordinates

- (HKGraphSeriesVisibleBlockCoordinates)initWithMinimum:(id)a3 maximum:(id)a4 last:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKGraphSeriesVisibleBlockCoordinates;
  v12 = [(HKGraphSeriesVisibleBlockCoordinates *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_minimum, a3);
    objc_storeStrong(&v13->_maximum, a4);
    objc_storeStrong(&v13->_last, a5);
  }

  return v13;
}

@end