@interface GCGenericDeviceDataInputElementAttributeExpressionModelBuilder
- (GCGenericDeviceDataInputElementAttributeExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataInputElementAttributeExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataInputElementAttributeExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:v4];
  v5 = [v4 elementIdentifier];
  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self setElementIdentifier:v5];

  v6 = [v4 attribute];

  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self setAttribute:v6];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataInputElementAttributeExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self setElementIdentifier:0];
  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self setAttribute:0];
}

- (id)build
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataInputElementAttributeExpressionModelBuilder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v12 build];
  v5 = [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self elementIdentifier];
  if (!v5)
  {
    [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self attribute];
  if (!v8)
  {
    [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  return v4;
}

- (GCGenericDeviceDataInputElementAttributeExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = GCGenericDeviceDataInputElementAttributeExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v23 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
    goto LABEL_12;
  }

  v22 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v22];
  v9 = v22;
  if (!v8)
  {
    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v26[0] = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v27[0] = v15;
      v26[1] = *MEMORY[0x1E696A588];
      v16 = [v9 localizedFailureReason];
      v27[1] = v16;
      v17 = MEMORY[0x1E695DF20];
      v18 = v27;
      v19 = v26;
LABEL_10:
      v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:2];
      *a4 = [(NSError *)v14 gc_modelError:v20 userInfo:?];
    }

LABEL_11:

LABEL_12:
    v11 = 0;
    goto LABEL_5;
  }

  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v21 = 0;
  v10 = [v6 gc_requiredObjectForKey:@"Attribute" ofClass:objc_opt_class() error:&v21];
  v9 = v21;
  if (!v10)
  {
    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v25[0] = v15;
      v24[1] = *MEMORY[0x1E696A588];
      v16 = [v9 localizedFailureReason];
      v25[1] = v16;
      v17 = MEMORY[0x1E695DF20];
      v18 = v25;
      v19 = v24;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)v7 setAttribute:v10];

  v11 = v7;
LABEL_5:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDataInputElementAttributeExpressionModel.m" lineNumber:105 description:@"'attribute' can not be nil"];
}

@end