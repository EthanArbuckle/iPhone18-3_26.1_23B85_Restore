@interface GCGenericDeviceRumbleOutputModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceRumbleOutputModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceRumbleOutputModelBuilder

- (GCGenericDeviceRumbleOutputModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceRumbleOutputModelBuilder;
  v2 = [(GCGenericDeviceRumbleOutputModelBuilder *)&v4 init];
  [(GCGenericDeviceRumbleOutputModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 elementIdentifier];
  [(GCGenericDeviceRumbleOutputModelBuilder *)self setElementIdentifier:v5];

  v6 = [v4 fields];

  [(GCGenericDeviceRumbleOutputModelBuilder *)self setFields:v6];
}

- (void)reset
{
  [(GCGenericDeviceRumbleOutputModelBuilder *)self setElementIdentifier:0];

  [(GCGenericDeviceRumbleOutputModelBuilder *)self setFields:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDeviceRumbleOutputModelBuilder *)self elementIdentifier];
  if (!v5)
  {
    [(GCGenericDeviceRumbleOutputModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceRumbleOutputModelBuilder *)self fields];
  if (!v8)
  {
    [(GCGenericDeviceRumbleOutputModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

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
    v8.super_class = GCGenericDeviceRumbleOutputModelBuilder;
    v5 = [(GCGenericDeviceRumbleOutputModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceRumbleOutputModel.m" lineNumber:133 description:@"'fields' can not be nil"];
}

@end