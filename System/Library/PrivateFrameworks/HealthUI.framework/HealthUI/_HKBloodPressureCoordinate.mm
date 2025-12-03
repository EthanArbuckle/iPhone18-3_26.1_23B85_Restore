@interface _HKBloodPressureCoordinate
- (NSString)description;
- (_HKBloodPressureCoordinate)initWithSystolicCoordinate:(id)coordinate diastolicCoordinate:(id)diastolicCoordinate userInfo:(id)info;
- (double)startXValue;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation _HKBloodPressureCoordinate

- (_HKBloodPressureCoordinate)initWithSystolicCoordinate:(id)coordinate diastolicCoordinate:(id)diastolicCoordinate userInfo:(id)info
{
  coordinateCopy = coordinate;
  diastolicCoordinateCopy = diastolicCoordinate;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = _HKBloodPressureCoordinate;
  v12 = [(_HKBloodPressureCoordinate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systolicCoordinate, coordinate);
    objc_storeStrong(&v13->_diastolicCoordinate, diastolicCoordinate);
    objc_storeStrong(&v13->_userInfo, info);
  }

  return v13;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  systolicCoordinate = self->_systolicCoordinate;
  v8 = *&transform->c;
  v15 = *&transform->a;
  v16 = v8;
  v17 = *&transform->tx;
  v9 = [(_HKBloodPressureMinMaxCoordinate *)systolicCoordinate copyWithTransform:&v15 roundToViewScale:?];
  diastolicCoordinate = self->_diastolicCoordinate;
  v11 = *&transform->c;
  v15 = *&transform->a;
  v16 = v11;
  v17 = *&transform->tx;
  v12 = [(_HKBloodPressureMinMaxCoordinate *)diastolicCoordinate copyWithTransform:&v15 roundToViewScale:scaleCopy];
  v13 = [objc_alloc(objc_opt_class()) initWithSystolicCoordinate:v9 diastolicCoordinate:v12 userInfo:self->_userInfo];

  return v13;
}

- (double)startXValue
{
  systolicCoordinate = self->_systolicCoordinate;
  if (!systolicCoordinate)
  {
    systolicCoordinate = self->_diastolicCoordinate;
  }

  [(HKMinMaxCoordinate *)systolicCoordinate startXValue];
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _HKBloodPressureCoordinate;
  v4 = [(_HKBloodPressureCoordinate *)&v7 description];
  v5 = objc_msgSend(v3, "stringWithFormat:", @"%@ { systolic(%@), diastolic(%@} }"), v4, self->_systolicCoordinate, self->_diastolicCoordinate;

  return v5;
}

@end