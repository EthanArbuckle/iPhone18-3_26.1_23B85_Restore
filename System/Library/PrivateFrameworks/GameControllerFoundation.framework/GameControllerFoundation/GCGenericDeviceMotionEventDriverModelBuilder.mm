@interface GCGenericDeviceMotionEventDriverModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceMotionEventDriverModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceMotionEventDriverModelBuilder

- (GCGenericDeviceMotionEventDriverModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceMotionEventDriverModelBuilder;
  v2 = [(GCGenericDeviceMotionEventDriverModelBuilder *)&v4 init];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  accelerometerXExpression = [modelCopy accelerometerXExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerXExpression:accelerometerXExpression];

  accelerometerYExpression = [modelCopy accelerometerYExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerYExpression:accelerometerYExpression];

  accelerometerZExpression = [modelCopy accelerometerZExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerZExpression:accelerometerZExpression];

  gyroXExpression = [modelCopy gyroXExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroXExpression:gyroXExpression];

  gyroYExpression = [modelCopy gyroYExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroYExpression:gyroYExpression];

  gyroZExpression = [modelCopy gyroZExpression];

  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroZExpression:gyroZExpression];
}

- (void)reset
{
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerXExpression:0];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerYExpression:0];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerZExpression:0];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroXExpression:0];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroYExpression:0];

  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroZExpression:0];
}

- (id)build
{
  v3 = objc_alloc([objc_opt_class() modelClass]);
  accelerometerXExpression = [(GCGenericDeviceMotionEventDriverModelBuilder *)self accelerometerXExpression];
  v5 = [accelerometerXExpression copy];
  v6 = v3[1];
  v3[1] = v5;

  accelerometerYExpression = [(GCGenericDeviceMotionEventDriverModelBuilder *)self accelerometerYExpression];
  v8 = [accelerometerYExpression copy];
  v9 = v3[2];
  v3[2] = v8;

  accelerometerZExpression = [(GCGenericDeviceMotionEventDriverModelBuilder *)self accelerometerZExpression];
  v11 = [accelerometerZExpression copy];
  v12 = v3[3];
  v3[3] = v11;

  gyroXExpression = [(GCGenericDeviceMotionEventDriverModelBuilder *)self gyroXExpression];
  v14 = [gyroXExpression copy];
  v15 = v3[4];
  v3[4] = v14;

  gyroYExpression = [(GCGenericDeviceMotionEventDriverModelBuilder *)self gyroYExpression];
  v17 = [gyroYExpression copy];
  v18 = v3[5];
  v3[5] = v17;

  gyroZExpression = [(GCGenericDeviceMotionEventDriverModelBuilder *)self gyroZExpression];
  v20 = [gyroZExpression copy];
  v21 = v3[6];
  v3[6] = v20;

  return v3;
}

- (unint64_t)hash
{
  modelClass = [objc_opt_class() modelClass];

  return [modelClass hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDeviceMotionEventDriverModelBuilder;
    v5 = [(GCGenericDeviceMotionEventDriverModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

@end