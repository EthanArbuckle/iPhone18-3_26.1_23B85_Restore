@interface FMLocationShifterItem
- (CLLocationCoordinate2D)coordinate;
- (FMLocationShifterItem)init;
- (FMLocationShifterItem)initWithCoordinate:(CLLocationCoordinate2D)a3 accuracy:(double)a4 timestamp:(id)a5 context:(id)a6;
- (id)description;
@end

@implementation FMLocationShifterItem

- (FMLocationShifterItem)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use initWithCoordinate:accuracy:timestamp:"];

  return 0;
}

- (FMLocationShifterItem)initWithCoordinate:(CLLocationCoordinate2D)a3 accuracy:(double)a4 timestamp:(id)a5 context:(id)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = FMLocationShifterItem;
  v14 = [(FMLocationShifterItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_coordinate.latitude = latitude;
    v14->_coordinate.longitude = longitude;
    v14->_accuracy = a4;
    objc_storeStrong(&v14->_timestamp, a5);
    objc_storeStrong(&v15->_context, a6);
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
  v11 = [(FMLocationShifterItem *)self context];
  v12 = [(FMLocationShifterItem *)self shifted];
  v13 = [(FMLocationShifterItem *)self error];
  v14 = [v3 stringWithFormat:@"<%@: %p %.6f, %.6f @ %.3f ctx:%p s:%d e:%@>", v4, self, v6, v8, v10, v11, v12, v13];

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