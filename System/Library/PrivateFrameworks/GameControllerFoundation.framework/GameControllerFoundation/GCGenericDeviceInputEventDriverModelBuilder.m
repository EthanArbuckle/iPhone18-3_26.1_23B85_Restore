@interface GCGenericDeviceInputEventDriverModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceInputEventDriverModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceInputEventDriverModelBuilder

- (GCGenericDeviceInputEventDriverModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceInputEventDriverModelBuilder;
  return [(GCGenericDeviceInputEventDriverModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 gamepadLeftThumbstickDeadzoneRadius];
  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadLeftThumbstickDeadzoneRadius:v5];

  v6 = [v4 gamepadRightThumbstickDeadzoneRadius];
  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadRightThumbstickDeadzoneRadius:v6];

  v7 = [v4 gamepadEventFields];

  [(GCGenericDeviceInputEventDriverModelBuilder *)self setGamepadEventFields:v7];
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
  v5 = [(GCGenericDeviceInputEventDriverModelBuilder *)self gamepadLeftThumbstickDeadzoneRadius];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(GCGenericDeviceInputEventDriverModelBuilder *)self gamepadRightThumbstickDeadzoneRadius];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(GCGenericDeviceInputEventDriverModelBuilder *)self gamepadEventFields];
  if (!v9)
  {
    [(GCGenericDeviceInputEventDriverModelBuilder *)a2 build];
  }

  v10 = [v9 copy];
  v11 = v4[3];
  v4[3] = v10;

  return v4;
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
    v8.super_class = GCGenericDeviceInputEventDriverModelBuilder;
    v5 = [(GCGenericDeviceInputEventDriverModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceInputEventDriverModel.m" lineNumber:129 description:@"'gamepadEventFields' can not be nil"];
}

@end