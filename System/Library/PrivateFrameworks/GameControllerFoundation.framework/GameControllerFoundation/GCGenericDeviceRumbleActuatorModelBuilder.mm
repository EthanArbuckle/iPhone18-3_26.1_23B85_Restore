@interface GCGenericDeviceRumbleActuatorModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceRumbleActuatorModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
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

- (void)initializeWithModel:(id)a3
{
  v4 = [a3 name];
  [(GCGenericDeviceRumbleActuatorModelBuilder *)self setName:v4];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDeviceRumbleActuatorModelBuilder *)self name];
  if (!v5)
  {
    [(GCGenericDeviceRumbleActuatorModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

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
    v8.super_class = GCGenericDeviceRumbleActuatorModelBuilder;
    v5 = [(GCGenericDeviceRumbleActuatorModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceRumbleActuatorModel.m" lineNumber:116 description:@"'name' can not be nil"];
}

@end