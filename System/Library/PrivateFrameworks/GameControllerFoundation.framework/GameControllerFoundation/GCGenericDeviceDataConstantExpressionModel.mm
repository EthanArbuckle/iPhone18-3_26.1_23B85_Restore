@interface GCGenericDeviceDataConstantExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataConstantExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataConstantExpressionModel

- (GCGenericDeviceDataConstantExpressionModel)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataConstantExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v8 initWithCoder:coderCopy];
  [coderCopy decodeDoubleForKey:{@"value", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_value = v6;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCGenericDeviceDataConstantExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v5 encodeWithCoder:coderCopy];
  [(GCGenericDeviceDataConstantExpressionModel *)self value:v5.receiver];
  [coderCopy encodeDouble:@"value" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataConstantExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v10 isEqual:equalCopy])
  {
    [(GCGenericDeviceDataConstantExpressionModel *)self value];
    v6 = v5;
    [equalCopy value];
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

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  [(GCGenericDeviceDataConstantExpressionModel *)self value:context];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__GCGenericDeviceDataConstantExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_d8__0l;
  aBlock[4] = v4;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  consumerCopy = consumer;
  [(GCGenericDeviceDataConstantExpressionModel *)self value];
  (*(consumer + 2))(consumerCopy);

  v8 = MEMORY[0x1E695DFB0];

  return [v8 null];
}

@end