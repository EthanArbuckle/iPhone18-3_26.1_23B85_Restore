@interface GCGenericDeviceDataInterpolateExpressionModelBuilder
- (GCGenericDeviceDataInterpolateExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataInterpolateExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v10 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputExpression:inputExpression];

  inputMinExpression = [modelCopy inputMinExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMinExpression:inputMinExpression];

  inputMaxExpression = [modelCopy inputMaxExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMaxExpression:inputMaxExpression];

  outputMinExpression = [modelCopy outputMinExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMinExpression:outputMinExpression];

  outputMaxExpression = [modelCopy outputMaxExpression];

  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMaxExpression:outputMaxExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMinExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMaxExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMinExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMaxExpression:0];
}

- (id)build
{
  v20.receiver = self;
  v20.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v20 build];
  inputExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v5 = [inputExpression copy];
  v6 = build[1];
  build[1] = v5;

  inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputMinExpression];
  if (!inputMinExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v8 = [inputMinExpression copy];
  v9 = build[2];
  build[2] = v8;

  inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputMaxExpression];
  if (!inputMaxExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v11 = [inputMaxExpression copy];
  v12 = build[3];
  build[3] = v11;

  outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self outputMinExpression];
  if (!outputMinExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v14 = [outputMinExpression copy];
  v15 = build[4];
  build[4] = v14;

  outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self outputMaxExpression];
  if (!outputMaxExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v17 = [outputMaxExpression copy];
  v18 = build[5];
  build[5] = v17;

  return build;
}

- (GCGenericDeviceDataInterpolateExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v77[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v57.receiver = self;
  v57.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v57 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_62;
  }

  objc_opt_class();
  v56[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v76[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v77[0] = v20;
    v76[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v77[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v77;
    v24 = v76;
LABEL_48:
    v44 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
    *error = [(NSError *)v19 gc_modelError:v44 userInfo:?];

    goto LABEL_49;
  }

  v56[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v56];
  v11 = v56[0];

  if (!v10)
  {
    if (error)
    {
      v51 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v26 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v50 = localizedDescription;
      v75[0] = localizedDescription;
      v74[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v75[1] = v28;
      v74[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v49 = null;
      v75[2] = null;
      v74[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v75[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v75;
      v34 = v74;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setInputExpression:?];

  objc_opt_class();
  v55[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v72[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v73[0] = v20;
    v72[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v73[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v73;
    v24 = v72;
    goto LABEL_48;
  }

  v55[0] = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v55];
  v11 = v55[0];

  if (!v12)
  {
    if (error)
    {
      v51 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v26 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMinExpression"];
      }

      v50 = localizedDescription2;
      v71[0] = localizedDescription2;
      v70[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v71[1] = v36;
      v70[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = null2;
      v71[2] = null2;
      v70[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v71[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v71;
      v34 = v70;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setInputMinExpression:?];

  objc_opt_class();
  v54[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v68[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v69[0] = v20;
    v68[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v69[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v69;
    v24 = v68;
    goto LABEL_48;
  }

  v54[0] = 0;
  v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v54];
  v11 = v54[0];

  if (!v13)
  {
    if (error)
    {
      v51 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      localizedDescription3 = [v11 localizedDescription];
      v26 = localizedDescription3;
      if (!localizedDescription3)
      {
        localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMaxExpression"];
      }

      v50 = localizedDescription3;
      v67[0] = localizedDescription3;
      v66[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v67[1] = v39;
      v66[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = null3;
      v67[2] = null3;
      v66[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v67[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v67;
      v34 = v66;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setInputMaxExpression:?];

  objc_opt_class();
  v53[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v64[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v65[0] = v20;
    v64[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v65[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v65;
    v24 = v64;
    goto LABEL_48;
  }

  v53[0] = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v53];
  v11 = v53[0];

  if (!v14)
  {
    if (error)
    {
      v51 = MEMORY[0x1E696ABC0];
      v62[0] = *MEMORY[0x1E696A578];
      localizedDescription4 = [v11 localizedDescription];
      v26 = localizedDescription4;
      if (!localizedDescription4)
      {
        localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"OutputMinExpression"];
      }

      v50 = localizedDescription4;
      v63[0] = localizedDescription4;
      v62[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v63[1] = v42;
      v62[2] = *MEMORY[0x1E696AA08];
      null4 = v11;
      if (!v11)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = null4;
      v63[2] = null4;
      v62[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v63[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v63;
      v34 = v62;
      goto LABEL_56;
    }

LABEL_61:

    goto LABEL_62;
  }

  [OUTLINED_FUNCTION_0() setOutputMinExpression:?];

  objc_opt_class();
  v52[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v60[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v61[0] = v20;
      v60[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v61[1] = localizedFailureReason;
      v22 = MEMORY[0x1E695DF20];
      v23 = v61;
      v24 = v60;
      goto LABEL_48;
    }

LABEL_49:

LABEL_62:
    v16 = 0;
    goto LABEL_13;
  }

  v52[0] = 0;
  v15 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v52];
  v11 = v52[0];

  if (!v15)
  {
    if (error)
    {
      v51 = MEMORY[0x1E696ABC0];
      v58[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [v11 localizedDescription];
      v26 = localizedDescription5;
      if (!localizedDescription5)
      {
        localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"OutputMaxExpression"];
      }

      v50 = localizedDescription5;
      v59[0] = localizedDescription5;
      v58[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v59[1] = v46;
      v58[2] = *MEMORY[0x1E696AA08];
      null5 = v11;
      if (!v11)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = null5;
      v59[2] = null5;
      v58[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v59[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v59;
      v34 = v58;
LABEL_56:
      v48 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:4];
      *error = [(NSError *)v51 gc_modelError:v48 userInfo:?];

      if (!v11)
      {
      }

      if (!v26)
      {
      }

      goto LABEL_61;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setOutputMaxExpression:?];

  v16 = v7;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end