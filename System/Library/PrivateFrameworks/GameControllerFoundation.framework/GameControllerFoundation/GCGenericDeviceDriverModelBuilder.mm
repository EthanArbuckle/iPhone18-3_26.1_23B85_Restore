@interface GCGenericDeviceDriverModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDriverModelBuilder

- (GCGenericDeviceDriverModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDriverModelBuilder;
  return [(GCGenericDeviceDriverModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  elements = [modelCopy elements];
  [(GCGenericDeviceDriverModelBuilder *)self setElements:elements];

  properties = [modelCopy properties];
  [(GCGenericDeviceDriverModelBuilder *)self setProperties:properties];

  input = [modelCopy input];
  [(GCGenericDeviceDriverModelBuilder *)self setInput:input];

  motion = [modelCopy motion];
  [(GCGenericDeviceDriverModelBuilder *)self setMotion:motion];

  rumble = [modelCopy rumble];

  [(GCGenericDeviceDriverModelBuilder *)self setRumble:rumble];
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
  elements = [(GCGenericDeviceDriverModelBuilder *)self elements];
  if (!elements)
  {
    [(GCGenericDeviceDriverModelBuilder *)a2 build];
  }

  v6 = [elements copy];
  v7 = v4[1];
  v4[1] = v6;

  properties = [(GCGenericDeviceDriverModelBuilder *)self properties];
  v9 = [properties copy];
  v10 = v4[2];
  v4[2] = v9;

  input = [(GCGenericDeviceDriverModelBuilder *)self input];
  v12 = [input copy];
  v13 = v4[3];
  v4[3] = v12;

  motion = [(GCGenericDeviceDriverModelBuilder *)self motion];
  v15 = [motion copy];
  v16 = v4[4];
  v4[4] = v15;

  rumble = [(GCGenericDeviceDriverModelBuilder *)self rumble];
  v18 = [rumble copy];
  v19 = v4[5];
  v4[5] = v18;

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
    v8.super_class = GCGenericDeviceDriverModelBuilder;
    v5 = [(GCGenericDeviceDriverModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDriverModel.m" lineNumber:150 description:@"'elements' can not be nil"];
}

@end