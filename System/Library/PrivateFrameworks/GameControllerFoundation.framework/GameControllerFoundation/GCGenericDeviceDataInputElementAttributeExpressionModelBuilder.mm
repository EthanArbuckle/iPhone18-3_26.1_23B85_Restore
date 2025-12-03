@interface GCGenericDeviceDataInputElementAttributeExpressionModelBuilder
- (GCGenericDeviceDataInputElementAttributeExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataInputElementAttributeExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataInputElementAttributeExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:modelCopy];
  elementIdentifier = [modelCopy elementIdentifier];
  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self setElementIdentifier:elementIdentifier];

  attribute = [modelCopy attribute];

  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self setAttribute:attribute];
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
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v12 build];
  elementIdentifier = [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self elementIdentifier];
  if (!elementIdentifier)
  {
    [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)a2 build];
  }

  v6 = [elementIdentifier copy];
  v7 = build[1];
  build[1] = v6;

  attribute = [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)self attribute];
  if (!attribute)
  {
    [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)a2 build];
  }

  v9 = [attribute copy];
  v10 = build[2];
  build[2] = v9;

  return build;
}

- (GCGenericDeviceDataInputElementAttributeExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v23.receiver = self;
  v23.super_class = GCGenericDeviceDataInputElementAttributeExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v23 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_12;
  }

  v22 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v22];
  v9 = v22;
  if (!v8)
  {
    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v26[0] = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v27[0] = v15;
      v26[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v27[1] = localizedFailureReason;
      v17 = MEMORY[0x1E695DF20];
      v18 = v27;
      v19 = v26;
LABEL_10:
      v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:2];
      *error = [(NSError *)v14 gc_modelError:v20 userInfo:?];
    }

LABEL_11:

LABEL_12:
    v11 = 0;
    goto LABEL_5;
  }

  [(GCGenericDeviceDataInputElementAttributeExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v21 = 0;
  v10 = [representationCopy gc_requiredObjectForKey:@"Attribute" ofClass:objc_opt_class() error:&v21];
  v9 = v21;
  if (!v10)
  {
    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v25[0] = v15;
      v24[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v25[1] = localizedFailureReason;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataInputElementAttributeExpressionModel.m" lineNumber:105 description:@"'attribute' can not be nil"];
}

@end