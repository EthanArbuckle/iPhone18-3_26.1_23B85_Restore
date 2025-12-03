@interface GCGenericDeviceDriverPropertyModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverPropertyModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDriverPropertyModelBuilder

- (GCGenericDeviceDriverPropertyModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceDriverPropertyModelBuilder;
  v2 = [(GCGenericDeviceDriverPropertyModelBuilder *)&v4 init];
  [(GCGenericDeviceDriverPropertyModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  name = [modelCopy name];
  [(GCGenericDeviceDriverPropertyModelBuilder *)self setName:name];

  valueExpression = [modelCopy valueExpression];

  [(GCGenericDeviceDriverPropertyModelBuilder *)self setValueExpression:valueExpression];
}

- (void)reset
{
  [(GCGenericDeviceDriverPropertyModelBuilder *)self setName:0];

  [(GCGenericDeviceDriverPropertyModelBuilder *)self setValueExpression:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  name = [(GCGenericDeviceDriverPropertyModelBuilder *)self name];
  if (!name)
  {
    [(GCGenericDeviceDriverPropertyModelBuilder *)a2 build];
  }

  v6 = [name copy];
  v7 = v4[1];
  v4[1] = v6;

  valueExpression = [(GCGenericDeviceDriverPropertyModelBuilder *)self valueExpression];
  if (!valueExpression)
  {
    [(GCGenericDeviceDriverPropertyModelBuilder *)a2 build];
  }

  v9 = [valueExpression copy];
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
    v8.super_class = GCGenericDeviceDriverPropertyModelBuilder;
    v5 = [(GCGenericDeviceDriverPropertyModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDriverPropertyModel.m" lineNumber:126 description:@"'valueExpression' can not be nil"];
}

@end