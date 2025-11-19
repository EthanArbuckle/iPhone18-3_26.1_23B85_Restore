@interface _HKBloodPressureCoordinate
- (NSString)description;
- (_HKBloodPressureCoordinate)initWithSystolicCoordinate:(id)a3 diastolicCoordinate:(id)a4 userInfo:(id)a5;
- (double)startXValue;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation _HKBloodPressureCoordinate

- (_HKBloodPressureCoordinate)initWithSystolicCoordinate:(id)a3 diastolicCoordinate:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _HKBloodPressureCoordinate;
  v12 = [(_HKBloodPressureCoordinate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systolicCoordinate, a3);
    objc_storeStrong(&v13->_diastolicCoordinate, a4);
    objc_storeStrong(&v13->_userInfo, a5);
  }

  return v13;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  systolicCoordinate = self->_systolicCoordinate;
  v8 = *&a3->c;
  v15 = *&a3->a;
  v16 = v8;
  v17 = *&a3->tx;
  v9 = [(_HKBloodPressureMinMaxCoordinate *)systolicCoordinate copyWithTransform:&v15 roundToViewScale:?];
  diastolicCoordinate = self->_diastolicCoordinate;
  v11 = *&a3->c;
  v15 = *&a3->a;
  v16 = v11;
  v17 = *&a3->tx;
  v12 = [(_HKBloodPressureMinMaxCoordinate *)diastolicCoordinate copyWithTransform:&v15 roundToViewScale:v4];
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