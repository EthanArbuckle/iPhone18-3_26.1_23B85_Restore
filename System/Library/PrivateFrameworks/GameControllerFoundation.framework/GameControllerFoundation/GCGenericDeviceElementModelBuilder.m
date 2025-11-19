@interface GCGenericDeviceElementModelBuilder
- (GCGenericDeviceElementModelBuilder)init;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceElementModelBuilder

- (GCGenericDeviceElementModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceElementModelBuilder;
  v2 = [(GCGenericDeviceElementModelBuilder *)&v4 init];
  [(GCGenericDeviceElementModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 predicate];
  [(GCGenericDeviceElementModelBuilder *)self setPredicate:v5];

  v6 = [v4 identifier];
  [(GCGenericDeviceElementModelBuilder *)self setIdentifier:v6];

  -[GCGenericDeviceElementModelBuilder setOptional:](self, "setOptional:", [v4 optional]);
  -[GCGenericDeviceElementModelBuilder setTypeOverride:](self, "setTypeOverride:", [v4 typeOverride]);
  -[GCGenericDeviceElementModelBuilder setCalibrationMin:](self, "setCalibrationMin:", [v4 calibrationMin]);
  v7 = [v4 calibrationMax];

  [(GCGenericDeviceElementModelBuilder *)self setCalibrationMax:v7];
}

- (void)reset
{
  [(GCGenericDeviceElementModelBuilder *)self setPredicate:0];
  [(GCGenericDeviceElementModelBuilder *)self setIdentifier:0];
  [(GCGenericDeviceElementModelBuilder *)self setOptional:0];
  [(GCGenericDeviceElementModelBuilder *)self setTypeOverride:0];
  [(GCGenericDeviceElementModelBuilder *)self setCalibrationMax:0];

  [(GCGenericDeviceElementModelBuilder *)self setCalibrationMin:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDeviceElementModelBuilder *)self predicate];
  if (!v5)
  {
    [(GCGenericDeviceElementModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[2];
  v4[2] = v6;

  v8 = [(GCGenericDeviceElementModelBuilder *)self identifier];
  if (!v8)
  {
    [(GCGenericDeviceElementModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[3];
  v4[3] = v9;

  *(v4 + 32) = [(GCGenericDeviceElementModelBuilder *)self optional];
  *(v4 + 9) = [(GCGenericDeviceElementModelBuilder *)self typeOverride];
  v4[5] = [(GCGenericDeviceElementModelBuilder *)self calibrationMin];
  v4[6] = [(GCGenericDeviceElementModelBuilder *)self calibrationMax];

  return v4;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceElementModel.m" lineNumber:171 description:@"'identifier' can not be nil"];
}

@end