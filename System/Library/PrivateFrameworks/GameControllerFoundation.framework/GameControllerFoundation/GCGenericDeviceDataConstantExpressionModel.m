@interface GCGenericDeviceDataConstantExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataConstantExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataConstantExpressionModel

- (GCGenericDeviceDataConstantExpressionModel)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataConstantExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v8 initWithCoder:v3];
  [v3 decodeDoubleForKey:{@"value", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_value = v6;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCGenericDeviceDataConstantExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v5 encodeWithCoder:v4];
  [(GCGenericDeviceDataConstantExpressionModel *)self value:v5.receiver];
  [v4 encodeDouble:@"value" forKey:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataConstantExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v10 isEqual:v4])
  {
    [(GCGenericDeviceDataConstantExpressionModel *)self value];
    v6 = v5;
    [v4 value];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  [(GCGenericDeviceDataConstantExpressionModel *)self value];
  return [v2 stringWithFormat:@"(constant %f)", v3];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> {\n\t value = %f\n}", v5, self, *&self->_value];

  return v6;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  [(GCGenericDeviceDataConstantExpressionModel *)self value:a3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__GCGenericDeviceDataConstantExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_d8__0l;
  aBlock[4] = v4;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v7 = a4;
  [(GCGenericDeviceDataConstantExpressionModel *)self value];
  (*(a4 + 2))(v7);

  v8 = MEMORY[0x1E695DFB0];

  return [v8 null];
}

@end