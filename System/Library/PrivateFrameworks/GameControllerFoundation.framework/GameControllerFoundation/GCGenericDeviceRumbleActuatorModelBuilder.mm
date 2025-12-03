@interface GCGenericDeviceRumbleActuatorModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleActuatorModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
@end

@implementation GCGenericDeviceRumbleActuatorModelBuilder

- (GCGenericDeviceRumbleActuatorModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceRumbleActuatorModelBuilder;
  v2 = [(GCGenericDeviceRumbleActuatorModelBuilder *)&v4 init];
  [(GCGenericDeviceRumbleActuatorModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)model
{
  name = [model name];
  [(GCGenericDeviceRumbleActuatorModelBuilder *)self setName:name];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  name = [(GCGenericDeviceRumbleActuatorModelBuilder *)self name];
  if (!name)
  {
    [(GCGenericDeviceRumbleActuatorModelBuilder *)a2 build];
  }

  v6 = [name copy];
  v7 = v4[1];
  v4[1] = v6;

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
    v8.super_class = GCGenericDeviceRumbleActuatorModelBuilder;
    v5 = [(GCGenericDeviceRumbleActuatorModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceRumbleActuatorModel.m" lineNumber:116 description:@"'name' can not be nil"];
}

@end