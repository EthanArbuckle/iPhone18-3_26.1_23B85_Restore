@interface HDWorkoutSeriesQuantity
- (HDWorkoutSeriesQuantity)initWithQuantity:(id)a3 dateInterval:(id)a4 series:(id)a5;
- (double)hdw_endTimestamp;
- (double)hdw_startTimestamp;
@end

@implementation HDWorkoutSeriesQuantity

- (HDWorkoutSeriesQuantity)initWithQuantity:(id)a3 dateInterval:(id)a4 series:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HDWorkoutSeriesQuantity;
  v12 = [(HDWorkoutSeriesQuantity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_quantity, a3);
    objc_storeStrong(&v13->_dateInterval, a4);
    objc_storeStrong(&v13->_series, a5);
  }

  return v13;
}

- (double)hdw_startTimestamp
{
  v2 = [(NSDateInterval *)self->_dateInterval startDate];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (double)hdw_endTimestamp
{
  v2 = [(NSDateInterval *)self->_dateInterval endDate];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

@end