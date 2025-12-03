@interface GCGenericDeviceRumbleOutputFieldModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleOutputFieldModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceRumbleOutputFieldModelBuilder

- (GCGenericDeviceRumbleOutputFieldModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceRumbleOutputFieldModelBuilder;
  v2 = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)&v4 init];
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  valueExpression = [modelCopy valueExpression];
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setValueExpression:valueExpression];

  offsetExpression = [modelCopy offsetExpression];
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setOffsetExpression:offsetExpression];

  sizeExpression = [modelCopy sizeExpression];

  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setSizeExpression:sizeExpression];
}

- (void)reset
{
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setValueExpression:0];
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setOffsetExpression:0];

  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setSizeExpression:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  valueExpression = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self valueExpression];
  if (!valueExpression)
  {
    [(GCGenericDeviceRumbleOutputFieldModelBuilder *)a2 build];
  }

  v6 = [valueExpression copy];
  v7 = v4[1];
  v4[1] = v6;

  offsetExpression = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self offsetExpression];
  if (!offsetExpression)
  {
    [(GCGenericDeviceRumbleOutputFieldModelBuilder *)a2 build];
  }

  v9 = [offsetExpression copy];
  v10 = v4[2];
  v4[2] = v9;

  sizeExpression = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self sizeExpression];
  if (!sizeExpression)
  {
    [(GCGenericDeviceRumbleOutputFieldModelBuilder *)a2 build];
  }

  v12 = [sizeExpression copy];
  v13 = v4[3];
  v4[3] = v12;

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
    v8.super_class = GCGenericDeviceRumbleOutputFieldModelBuilder;
    v5 = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceRumbleOutputFieldModel.m" lineNumber:135 description:@"'sizeExpression' can not be nil"];
}

@end