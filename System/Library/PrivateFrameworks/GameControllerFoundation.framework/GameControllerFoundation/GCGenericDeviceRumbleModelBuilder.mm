@interface GCGenericDeviceRumbleModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceRumbleModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceRumbleModelBuilder

- (GCGenericDeviceRumbleModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceRumbleModelBuilder;
  v2 = [(GCGenericDeviceRumbleModelBuilder *)&v4 init];
  [(GCGenericDeviceRumbleModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  [v4 dispatchFrequency];
  [(GCGenericDeviceRumbleModelBuilder *)self setDispatchFrequency:?];
  v5 = [v4 actuators];
  [(GCGenericDeviceRumbleModelBuilder *)self setActuators:v5];

  v6 = [v4 nodes];
  [(GCGenericDeviceRumbleModelBuilder *)self setNodes:v6];

  v7 = [v4 outputs];

  [(GCGenericDeviceRumbleModelBuilder *)self setOutputs:v7];
}

- (void)reset
{
  [(GCGenericDeviceRumbleModelBuilder *)self setDispatchFrequency:0.0];
  [(GCGenericDeviceRumbleModelBuilder *)self setActuators:0];
  [(GCGenericDeviceRumbleModelBuilder *)self setNodes:0];

  [(GCGenericDeviceRumbleModelBuilder *)self setOutputs:0];
}

- (id)build
{
  v3 = objc_alloc([objc_opt_class() modelClass]);
  [(GCGenericDeviceRumbleModelBuilder *)self dispatchFrequency];
  v5 = v4;
  if (v4 <= 0.0)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v3[2] = v5;
  v6 = [(GCGenericDeviceRumbleModelBuilder *)self actuators];
  if (!v6)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v7 = [v6 copy];
  v8 = *(v3 + 2);
  *(v3 + 2) = v7;

  v9 = [(GCGenericDeviceRumbleModelBuilder *)self nodes];
  if (!v9)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v10 = [v9 copy];
  v11 = *(v3 + 3);
  *(v3 + 3) = v10;

  v12 = [(GCGenericDeviceRumbleModelBuilder *)self outputs];
  if (!v12)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v13 = [v12 copy];
  v14 = *(v3 + 4);
  *(v3 + 4) = v13;

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
    v8.super_class = GCGenericDeviceRumbleModelBuilder;
    v5 = [(GCGenericDeviceRumbleModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end