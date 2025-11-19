@interface GCGenericDeviceMotionEventDriverModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceMotionEventDriverModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)initializeWithModel:(id)a3;
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

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 accelerometerXExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerXExpression:v5];

  v6 = [v4 accelerometerYExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerYExpression:v6];

  v7 = [v4 accelerometerZExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setAccelerometerZExpression:v7];

  v8 = [v4 gyroXExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroXExpression:v8];

  v9 = [v4 gyroYExpression];
  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroYExpression:v9];

  v10 = [v4 gyroZExpression];

  [(GCGenericDeviceMotionEventDriverModelBuilder *)self setGyroZExpression:v10];
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
  v4 = [(GCGenericDeviceMotionEventDriverModelBuilder *)self accelerometerXExpression];
  v5 = [v4 copy];
  v6 = v3[1];
  v3[1] = v5;

  v7 = [(GCGenericDeviceMotionEventDriverModelBuilder *)self accelerometerYExpression];
  v8 = [v7 copy];
  v9 = v3[2];
  v3[2] = v8;

  v10 = [(GCGenericDeviceMotionEventDriverModelBuilder *)self accelerometerZExpression];
  v11 = [v10 copy];
  v12 = v3[3];
  v3[3] = v11;

  v13 = [(GCGenericDeviceMotionEventDriverModelBuilder *)self gyroXExpression];
  v14 = [v13 copy];
  v15 = v3[4];
  v3[4] = v14;

  v16 = [(GCGenericDeviceMotionEventDriverModelBuilder *)self gyroYExpression];
  v17 = [v16 copy];
  v18 = v3[5];
  v3[5] = v17;

  v19 = [(GCGenericDeviceMotionEventDriverModelBuilder *)self gyroZExpression];
  v20 = [v19 copy];
  v21 = v3[6];
  v3[6] = v20;

  return v3;
}

- (unint64_t)hash
{
  v2 = [objc_opt_class() modelClass];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDeviceMotionEventDriverModelBuilder;
    v5 = [(GCGenericDeviceMotionEventDriverModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

@end