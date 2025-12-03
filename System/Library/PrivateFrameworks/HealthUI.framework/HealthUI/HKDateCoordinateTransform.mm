@interface HKDateCoordinateTransform
- (BOOL)isEqual:(id)equal;
- (HKDateCoordinateTransform)initWithCurrentCalendar:(id)calendar;
- (double)coordinateForValue:(id)value;
- (id)valueForCoordinate:(double)coordinate;
@end

@implementation HKDateCoordinateTransform

- (HKDateCoordinateTransform)initWithCurrentCalendar:(id)calendar
{
  calendarCopy = calendar;
  v9.receiver = self;
  v9.super_class = HKDateCoordinateTransform;
  v6 = [(HKDateCoordinateTransform *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentCalendar, calendar);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  v4 = objc_opt_class();

  return [(HKDateCoordinateTransform *)self isMemberOfClass:v4];
}

- (double)coordinateForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(HKDateCoordinateTransform *)a2 coordinateForValue:?];
  }

  currentCalendar = [(HKDateCoordinateTransform *)self currentCalendar];
  [currentCalendar hk_durationSinceReferenceDateForDate:valueCopy calendarUnit:16];
  v8 = v7;

  return v8;
}

- (id)valueForCoordinate:(double)coordinate
{
  currentCalendar = [(HKDateCoordinateTransform *)self currentCalendar];
  v5 = [currentCalendar hk_dateWithDurationSinceReferenceDate:16 calendarUnit:coordinate];

  return v5;
}

- (void)coordinateForValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCoordinateTransform.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[NSDate class]]"}];
}

@end