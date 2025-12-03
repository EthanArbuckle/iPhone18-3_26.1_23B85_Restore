@interface HKGraphSeriesVisibleBlockCoordinates
- (HKGraphSeriesVisibleBlockCoordinates)initWithMinimum:(id)minimum maximum:(id)maximum last:(id)last;
@end

@implementation HKGraphSeriesVisibleBlockCoordinates

- (HKGraphSeriesVisibleBlockCoordinates)initWithMinimum:(id)minimum maximum:(id)maximum last:(id)last
{
  minimumCopy = minimum;
  maximumCopy = maximum;
  lastCopy = last;
  v15.receiver = self;
  v15.super_class = HKGraphSeriesVisibleBlockCoordinates;
  v12 = [(HKGraphSeriesVisibleBlockCoordinates *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_minimum, minimum);
    objc_storeStrong(&v13->_maximum, maximum);
    objc_storeStrong(&v13->_last, last);
  }

  return v13;
}

@end