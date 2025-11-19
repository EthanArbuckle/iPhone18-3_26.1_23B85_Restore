@interface GCGenericDeviceDriverModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDriverModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDriverModelBuilder

- (GCGenericDeviceDriverModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDriverModelBuilder;
  return [(GCGenericDeviceDriverModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 elements];
  [(GCGenericDeviceDriverModelBuilder *)self setElements:v5];

  v6 = [v4 properties];
  [(GCGenericDeviceDriverModelBuilder *)self setProperties:v6];

  v7 = [v4 input];
  [(GCGenericDeviceDriverModelBuilder *)self setInput:v7];

  v8 = [v4 motion];
  [(GCGenericDeviceDriverModelBuilder *)self setMotion:v8];

  v9 = [v4 rumble];

  [(GCGenericDeviceDriverModelBuilder *)self setRumble:v9];
}

- (void)reset
{
  [(GCGenericDeviceDriverModelBuilder *)self setElements:0];
  [(GCGenericDeviceDriverModelBuilder *)self setProperties:0];
  [(GCGenericDeviceDriverModelBuilder *)self setInput:0];
  [(GCGenericDeviceDriverModelBuilder *)self setMotion:0];

  [(GCGenericDeviceDriverModelBuilder *)self setRumble:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDeviceDriverModelBuilder *)self elements];
  if (!v5)
  {
    [(GCGenericDeviceDriverModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceDriverModelBuilder *)self properties];
  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(GCGenericDeviceDriverModelBuilder *)self input];
  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  v14 = [(GCGenericDeviceDriverModelBuilder *)self motion];
  v15 = [v14 copy];
  v16 = v4[4];
  v4[4] = v15;

  v17 = [(GCGenericDeviceDriverModelBuilder *)self rumble];
  v18 = [v17 copy];
  v19 = v4[5];
  v4[5] = v18;

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
    v8.super_class = GCGenericDeviceDriverModelBuilder;
    v5 = [(GCGenericDeviceDriverModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDriverModel.m" lineNumber:150 description:@"'elements' can not be nil"];
}

@end