@interface GCGenericDeviceDataConstantExpressionModelBuilder
- (GCGenericDeviceDataConstantExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataConstantExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:v4];
  [v4 value];
  v6 = v5;

  [(GCGenericDeviceDataConstantExpressionModelBuilder *)self setValue:v6];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataConstantExpressionModelBuilder *)self setValue:0.0];
}

- (id)build
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  v3 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v6 build];
  [(GCGenericDeviceDataConstantExpressionModelBuilder *)self value];
  v3[1] = v4;

  return v3;
}

- (GCGenericDeviceDataConstantExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v18 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_4;
  }

  v17 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"Value" ofClass:objc_opt_class() error:&v17];
  v9 = v17;
  if (!v8)
  {
    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v19[0] = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v20[0] = v14;
      v19[1] = *MEMORY[0x1E696A588];
      v15 = [v9 localizedFailureReason];
      v20[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      *a4 = [(NSError *)v13 gc_modelError:v16 userInfo:?];
    }

    goto LABEL_8;
  }

  [v8 doubleValue];
  [(GCGenericDeviceDataConstantExpressionModelBuilder *)v7 setValue:?];

  v10 = v7;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end