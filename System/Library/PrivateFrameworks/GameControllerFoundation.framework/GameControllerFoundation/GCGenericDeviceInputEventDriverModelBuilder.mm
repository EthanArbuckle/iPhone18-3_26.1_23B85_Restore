@interface GCGenericDeviceInputEventDriverModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceInputEventDriverModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceInputEventDriverModelBuilder

- (GCGenericDeviceInputEventDriverModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceInputEventDriverModelBuilder;
  return [(GCGenericDeviceInputEventDriverModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  gamepadLeftThumbstickDeadzoneRadius = [modelCopy gamepadLeftThumbstickDeadzoneRadius];
  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadLeftThumbstickDeadzoneRadius:gamepadLeftThumbstickDeadzoneRadius];

  gamepadRightThumbstickDeadzoneRadius = [modelCopy gamepadRightThumbstickDeadzoneRadius];
  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadRightThumbstickDeadzoneRadius:gamepadRightThumbstickDeadzoneRadius];

  gamepadEventFields = [modelCopy gamepadEventFields];

  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadEventFields:gamepadEventFields];
}

- (void)reset
{
  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadLeftThumbstickDeadzoneRadius:0];
  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadRightThumbstickDeadzoneRadius:0];

  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadEventFields:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  gamepadLeftThumbstickDeadzoneRadius = [(GCGenericDeviceInputEventDriverModelBuilder *)self gamepadLeftThumbstickDeadzoneRadius];
  v6 = v4[1];
  v4[1] = gamepadLeftThumbstickDeadzoneRadius;

  gamepadRightThumbstickDeadzoneRadius = [(GCGenericDeviceInputEventDriverModelBuilder *)self gamepadRightThumbstickDeadzoneRadius];
  v8 = v4[2];
  v4[2] = gamepadRightThumbstickDeadzoneRadius;

  gamepadEventFields = [(GCGenericDeviceInputEventDriverModelBuilder *)self gamepadEventFields];
  if (!gamepadEventFields)
  {
    [(GCGenericDeviceInputEventDriverModelBuilder *)a2 build];
  }

  v10 = [gamepadEventFields copy];
  v11 = v4[3];
  v4[3] = v10;

  return v4;
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
    v8.super_class = GCGenericDeviceInputEventDriverModelBuilder;
    v5 = [(GCGenericDeviceInputEventDriverModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceInputEventDriverModel.m" lineNumber:129 description:@"'gamepadEventFields' can not be nil"];
}

@end