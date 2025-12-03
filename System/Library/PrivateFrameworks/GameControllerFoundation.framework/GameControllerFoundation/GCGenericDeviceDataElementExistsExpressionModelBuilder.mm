@interface GCGenericDeviceDataElementExistsExpressionModelBuilder
- (GCGenericDeviceDataElementExistsExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataElementExistsExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v8 initializeWithModel:modelCopy];
  elementIdentifier = [modelCopy elementIdentifier];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setElementIdentifier:elementIdentifier];

  trueExpression = [modelCopy trueExpression];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setTrueExpression:trueExpression];

  falseExpression = [modelCopy falseExpression];

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setFalseExpression:falseExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setElementIdentifier:0];
}

- (id)build
{
  v15.receiver = self;
  v15.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v15 build];
  elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self elementIdentifier];
  if (!elementIdentifier)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v6 = [elementIdentifier copy];
  v7 = build[1];
  build[1] = v6;

  trueExpression = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self trueExpression];
  if (!trueExpression)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v9 = [trueExpression copy];
  v10 = build[2];
  build[2] = v9;

  falseExpression = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self falseExpression];
  if (!falseExpression)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v12 = [falseExpression copy];
  v13 = build[3];
  build[3] = v12;

  return build;
}

- (GCGenericDeviceDataElementExistsExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v66[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v56.receiver = self;
  v56.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v56 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_44;
  }

  v55 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v55];
  v9 = v55;
  if (!v8)
  {
    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v66[0] = v19;
      v65[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v66[1] = localizedFailureReason;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      *error = [(NSError *)v18 gc_modelError:v21 userInfo:?];
    }

    goto LABEL_44;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v54 = 0;
  v10 = [representationCopy gc_requiredObjectForKey:@"TrueExpression" ofClass:objc_opt_class() error:&v54];
  v11 = v54;
  if (!v10)
  {
    if (error)
    {
      v63[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v64[0] = v22;
      v63[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v64[1] = localizedFailureReason2;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
      objc_claimAutoreleasedReturnValue();
      v24 = OUTLINED_FUNCTION_0_14();
      *error = [(NSError *)v24 gc_modelError:v25 userInfo:v26];
LABEL_26:
    }

LABEL_27:

LABEL_44:
    v15 = 0;
    goto LABEL_8;
  }

  v53 = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v10 error:&v53];
  v13 = v53;

  if (!v12)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v13 localizedDescription];
      v28 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v49 = localizedDescription;
      v62[0] = localizedDescription;
      v61[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v13 localizedFailureReason];
      v30 = localizedFailureReason3;
      v31 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason3)
      {
        v31 = localizedFailureReason3;
      }

      v62[1] = v31;
      v61[2] = *MEMORY[0x1E696AA08];
      null = v13;
      if (!v13)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null;
      v62[2] = null;
      v61[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v13 gc_failingKeyPath];
      v34 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v35 = [gc_failingKeyPath arrayByAddingObject:@"TrueExpression"];
      v62[3] = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = v62;
      v38 = v61;
      goto LABEL_38;
    }

LABEL_43:

    goto LABEL_44;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setTrueExpression:v12];

  v52 = 0;
  v10 = [representationCopy gc_requiredObjectForKey:@"FalseExpression" ofClass:objc_opt_class() error:&v52];
  v11 = v52;
  if (!v10)
  {
    if (error)
    {
      v59[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v60[0] = v22;
      v59[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v60[1] = localizedFailureReason2;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
      objc_claimAutoreleasedReturnValue();
      v39 = OUTLINED_FUNCTION_0_14();
      *error = [(NSError *)v39 gc_modelError:v40 userInfo:v41];
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v51 = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v10 error:&v51];
  v13 = v51;

  if (!v14)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v57[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v13 localizedDescription];
      v28 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v49 = localizedDescription2;
      v58[0] = localizedDescription2;
      v57[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v13 localizedFailureReason];
      v30 = localizedFailureReason4;
      v44 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason4)
      {
        v44 = localizedFailureReason4;
      }

      v58[1] = v44;
      v57[2] = *MEMORY[0x1E696AA08];
      null2 = v13;
      if (!v13)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null2;
      v58[2] = null2;
      v57[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath2 = [v13 gc_failingKeyPath];
      v34 = gc_failingKeyPath2;
      if (!gc_failingKeyPath2)
      {
        gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
      }

      v35 = [gc_failingKeyPath2 arrayByAddingObject:@"FalseExpression"];
      v58[3] = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = v58;
      v38 = v57;
LABEL_38:
      v47 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:4];
      *error = [(NSError *)v50 gc_modelError:v47 userInfo:?];

      if (!v13)
      {
      }

      if (!v28)
      {
      }

      goto LABEL_43;
    }

    goto LABEL_43;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setFalseExpression:v14];

  v15 = v7;
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataElementExistsExpressionModel.m" lineNumber:119 description:@"'falseExpression' can not be nil"];
}

@end