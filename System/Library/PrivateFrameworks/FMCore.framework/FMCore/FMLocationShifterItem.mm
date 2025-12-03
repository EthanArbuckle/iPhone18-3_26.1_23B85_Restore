@interface FMLocationShifterItem
- (CLLocationCoordinate2D)coordinate;
- (FMLocationShifterItem)init;
- (FMLocationShifterItem)initWithCoordinate:(CLLocationCoordinate2D)coordinate accuracy:(double)accuracy timestamp:(id)timestamp context:(id)context;
- (id)description;
@end

@implementation FMLocationShifterItem

- (FMLocationShifterItem)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use initWithCoordinate:accuracy:timestamp:"];

  return 0;
}

- (FMLocationShifterItem)initWithCoordinate:(CLLocationCoordinate2D)coordinate accuracy:(double)accuracy timestamp:(id)timestamp context:(id)context
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  timestampCopy = timestamp;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = FMLocationShifterItem;
  v14 = [(FMLocationShifterItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_coordinate.latitude = latitude;
    v14->_coordinate.longitude = longitude;
    v14->_accuracy = accuracy;
    objc_storeStrong(&v14->_timestamp, timestamp);
    objc_storeStrong(&v15->_context, context);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(FMLocationShifterItem *)self coordinate];
  v6 = v5;
  [(FMLocationShifterItem *)self coordinate];
  v8 = v7;
  [(FMLocationShifterItem *)self accuracy];
  v10 = v9;
  context = [(FMLocationShifterItem *)self context];
  shifted = [(FMLocationShifterItem *)self shifted];
  error = [(FMLocationShifterItem *)self error];
  v14 = [v3 stringWithFormat:@"<%@: %p %.6f, %.6f @ %.3f ctx:%p s:%d e:%@>", v4, self, v6, v8, v10, context, shifted, error];

  return v14;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end