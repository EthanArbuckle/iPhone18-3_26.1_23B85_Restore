@interface GCGenericDeviceRumbleOutputFieldModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceRumbleOutputFieldModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
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

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 valueExpression];
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setValueExpression:v5];

  v6 = [v4 offsetExpression];
  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setOffsetExpression:v6];

  v7 = [v4 sizeExpression];

  [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self setSizeExpression:v7];
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
  v5 = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self valueExpression];
  if (!v5)
  {
    [(GCGenericDeviceRumbleOutputFieldModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self offsetExpression];
  if (!v8)
  {
    [(GCGenericDeviceRumbleOutputFieldModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)self sizeExpression];
  if (!v11)
  {
    [(GCGenericDeviceRumbleOutputFieldModelBuilder *)a2 build];
  }

  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

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
    v8.super_class = GCGenericDeviceRumbleOutputFieldModelBuilder;
    v5 = [(GCGenericDeviceRumbleOutputFieldModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceRumbleOutputFieldModel.m" lineNumber:135 description:@"'sizeExpression' can not be nil"];
}

@end