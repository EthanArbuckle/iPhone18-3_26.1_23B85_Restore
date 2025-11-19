@interface GCGenericDeviceDriverPropertyModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDriverPropertyModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
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

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(GCGenericDeviceDriverPropertyModelBuilder *)self setName:v5];

  v6 = [v4 valueExpression];

  [(GCGenericDeviceDriverPropertyModelBuilder *)self setValueExpression:v6];
}

- (void)reset
{
  [(GCGenericDeviceDriverPropertyModelBuilder *)self setName:0];

  [(GCGenericDeviceDriverPropertyModelBuilder *)self setValueExpression:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDeviceDriverPropertyModelBuilder *)self name];
  if (!v5)
  {
    [(GCGenericDeviceDriverPropertyModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceDriverPropertyModelBuilder *)self valueExpression];
  if (!v8)
  {
    [(GCGenericDeviceDriverPropertyModelBuilder *)a2 build];
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
    v8.super_class = GCGenericDeviceDriverPropertyModelBuilder;
    v5 = [(GCGenericDeviceDriverPropertyModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDriverPropertyModel.m" lineNumber:126 description:@"'valueExpression' can not be nil"];
}

@end