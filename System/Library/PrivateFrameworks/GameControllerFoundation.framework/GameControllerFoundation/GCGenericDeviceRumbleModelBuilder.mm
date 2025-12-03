@interface GCGenericDeviceRumbleModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
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

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  [modelCopy dispatchFrequency];
  [(GCGenericDeviceRumbleModelBuilder *)self setDispatchFrequency:?];
  actuators = [modelCopy actuators];
  [(GCGenericDeviceRumbleModelBuilder *)self setActuators:actuators];

  nodes = [modelCopy nodes];
  [(GCGenericDeviceRumbleModelBuilder *)self setNodes:nodes];

  outputs = [modelCopy outputs];

  [(GCGenericDeviceRumbleModelBuilder *)self setOutputs:outputs];
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
  actuators = [(GCGenericDeviceRumbleModelBuilder *)self actuators];
  if (!actuators)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v7 = [actuators copy];
  v8 = *(v3 + 2);
  *(v3 + 2) = v7;

  nodes = [(GCGenericDeviceRumbleModelBuilder *)self nodes];
  if (!nodes)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v10 = [nodes copy];
  v11 = *(v3 + 3);
  *(v3 + 3) = v10;

  outputs = [(GCGenericDeviceRumbleModelBuilder *)self outputs];
  if (!outputs)
  {
    [GCGenericDeviceRumbleModelBuilder build];
  }

  v13 = [outputs copy];
  v14 = *(v3 + 4);
  *(v3 + 4) = v13;

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
    v8.super_class = GCGenericDeviceRumbleModelBuilder;
    v5 = [(GCGenericDeviceRumbleModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end