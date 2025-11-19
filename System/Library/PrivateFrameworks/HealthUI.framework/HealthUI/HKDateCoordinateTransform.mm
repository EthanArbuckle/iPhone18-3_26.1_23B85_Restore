@interface HKDateCoordinateTransform
- (BOOL)isEqual:(id)a3;
- (HKDateCoordinateTransform)initWithCurrentCalendar:(id)a3;
- (double)coordinateForValue:(id)a3;
- (id)valueForCoordinate:(double)a3;
@end

@implementation HKDateCoordinateTransform

- (HKDateCoordinateTransform)initWithCurrentCalendar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKDateCoordinateTransform;
  v6 = [(HKDateCoordinateTransform *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentCalendar, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = objc_opt_class();

  return [(HKDateCoordinateTransform *)self isMemberOfClass:v4];
}

- (double)coordinateForValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(HKDateCoordinateTransform *)a2 coordinateForValue:?];
  }

  v6 = [(HKDateCoordinateTransform *)self currentCalendar];
  [v6 hk_durationSinceReferenceDateForDate:v5 calendarUnit:16];
  v8 = v7;

  return v8;
}

- (id)valueForCoordinate:(double)a3
{
  v4 = [(HKDateCoordinateTransform *)self currentCalendar];
  v5 = [v4 hk_dateWithDurationSinceReferenceDate:16 calendarUnit:a3];

  return v5;
}

- (void)coordinateForValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCoordinateTransform.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[NSDate class]]"}];
}

@end