@interface GCGenericDeviceElementModelBuilder
- (GCGenericDeviceElementModelBuilder)init;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
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

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  predicate = [modelCopy predicate];
  [(GCGenericDeviceElementModelBuilder *)self setPredicate:predicate];

  identifier = [modelCopy identifier];
  [(GCGenericDeviceElementModelBuilder *)self setIdentifier:identifier];

  -[GCGenericDeviceElementModelBuilder setOptional:](self, "setOptional:", [modelCopy optional]);
  -[GCGenericDeviceElementModelBuilder setTypeOverride:](self, "setTypeOverride:", [modelCopy typeOverride]);
  -[GCGenericDeviceElementModelBuilder setCalibrationMin:](self, "setCalibrationMin:", [modelCopy calibrationMin]);
  calibrationMax = [modelCopy calibrationMax];

  [(GCGenericDeviceElementModelBuilder *)self setCalibrationMax:calibrationMax];
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
  predicate = [(GCGenericDeviceElementModelBuilder *)self predicate];
  if (!predicate)
  {
    [(GCGenericDeviceElementModelBuilder *)a2 build];
  }

  v6 = [predicate copy];
  v7 = v4[2];
  v4[2] = v6;

  identifier = [(GCGenericDeviceElementModelBuilder *)self identifier];
  if (!identifier)
  {
    [(GCGenericDeviceElementModelBuilder *)a2 build];
  }

  v9 = [identifier copy];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceElementModel.m" lineNumber:171 description:@"'identifier' can not be nil"];
}

@end