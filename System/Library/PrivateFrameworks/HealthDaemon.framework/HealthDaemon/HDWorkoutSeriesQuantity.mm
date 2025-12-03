@interface HDWorkoutSeriesQuantity
- (HDWorkoutSeriesQuantity)initWithQuantity:(id)quantity dateInterval:(id)interval series:(id)series;
- (double)hdw_endTimestamp;
- (double)hdw_startTimestamp;
@end

@implementation HDWorkoutSeriesQuantity

- (HDWorkoutSeriesQuantity)initWithQuantity:(id)quantity dateInterval:(id)interval series:(id)series
{
  quantityCopy = quantity;
  intervalCopy = interval;
  seriesCopy = series;
  v15.receiver = self;
  v15.super_class = HDWorkoutSeriesQuantity;
  v12 = [(HDWorkoutSeriesQuantity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_quantity, quantity);
    objc_storeStrong(&v13->_dateInterval, interval);
    objc_storeStrong(&v13->_series, series);
  }

  return v13;
}

- (double)hdw_startTimestamp
{
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (double)hdw_endTimestamp
{
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

@end