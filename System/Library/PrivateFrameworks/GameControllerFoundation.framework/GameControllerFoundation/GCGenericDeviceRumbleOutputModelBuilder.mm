@interface GCGenericDeviceRumbleOutputModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleOutputModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
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

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  elementIdentifier = [modelCopy elementIdentifier];
  [(GCGenericDeviceRumbleOutputModelBuilder *)self setElementIdentifier:elementIdentifier];

  fields = [modelCopy fields];

  [(GCGenericDeviceRumbleOutputModelBuilder *)self setFields:fields];
}

- (void)reset
{
  [(GCGenericDeviceRumbleOutputModelBuilder *)self setElementIdentifier:0];

  [(GCGenericDeviceRumbleOutputModelBuilder *)self setFields:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  elementIdentifier = [(GCGenericDeviceRumbleOutputModelBuilder *)self elementIdentifier];
  if (!elementIdentifier)
  {
    [(GCGenericDeviceRumbleOutputModelBuilder *)a2 build];
  }

  v6 = [elementIdentifier copy];
  v7 = v4[1];
  v4[1] = v6;

  fields = [(GCGenericDeviceRumbleOutputModelBuilder *)self fields];
  if (!fields)
  {
    [(GCGenericDeviceRumbleOutputModelBuilder *)a2 build];
  }

  v9 = [fields copy];
  v10 = v4[2];
  v4[2] = v9;

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
    v8.super_class = GCGenericDeviceRumbleOutputModelBuilder;
    v5 = [(GCGenericDeviceRumbleOutputModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceRumbleOutputModel.m" lineNumber:133 description:@"'fields' can not be nil"];
}

@end