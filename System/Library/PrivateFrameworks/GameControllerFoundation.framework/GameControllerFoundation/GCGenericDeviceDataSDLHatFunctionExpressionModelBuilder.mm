@interface GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder
- (GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v11 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputExpression:inputExpression];

  inputMinExpression = [modelCopy inputMinExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMinExpression:inputMinExpression];

  inputMaxExpression = [modelCopy inputMaxExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMaxExpression:inputMaxExpression];

  maskExpression = [modelCopy maskExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setMaskExpression:maskExpression];

  trueExpression = [modelCopy trueExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setTrueExpression:trueExpression];

  falseExpression = [modelCopy falseExpression];

  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setFalseExpression:falseExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMinExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMaxExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setMaskExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setTrueExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setFalseExpression:0];
}

- (id)build
{
  v23.receiver = self;
  v23.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v23 build];
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v5 = [inputExpression copy];
  v6 = build[1];
  build[1] = v5;

  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputMinExpression];
  if (!inputMinExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v8 = [inputMinExpression copy];
  v9 = build[2];
  build[2] = v8;

  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputMaxExpression];
  if (!inputMaxExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v11 = [inputMaxExpression copy];
  v12 = build[3];
  build[3] = v11;

  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self maskExpression];
  if (!maskExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v14 = [maskExpression copy];
  v15 = build[4];
  build[4] = v14;

  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self trueExpression];
  if (!trueExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v17 = [trueExpression copy];
  v18 = build[5];
  build[5] = v17;

  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self falseExpression];
  if (!falseExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v20 = [falseExpression copy];
  v21 = build[6];
  build[6] = v20;

  return build;
}

- (GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v86[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v62.receiver = self;
  v62.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v62 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_72;
  }

  objc_opt_class();
  v61[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v85[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v86[0] = v21;
    v85[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v86[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v86;
    v25 = v85;
LABEL_58:
    v48 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
    *error = [(NSError *)v20 gc_modelError:v48 userInfo:?];

    goto LABEL_59;
  }

  v61[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v61];
  v11 = v61[0];

  if (!v10)
  {
    if (error)
    {
      v55 = MEMORY[0x1E696ABC0];
      v83[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v27 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v54 = localizedDescription;
      v84[0] = localizedDescription;
      v83[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v84[1] = v29;
      v83[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v53 = null;
      v84[2] = null;
      v83[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v84[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v84;
      v35 = v83;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setInputExpression:?];

  objc_opt_class();
  v60[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v81[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v82[0] = v21;
    v81[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v82[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v82;
    v25 = v81;
    goto LABEL_58;
  }

  v60[0] = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v60];
  v11 = v60[0];

  if (!v12)
  {
    if (error)
    {
      v55 = MEMORY[0x1E696ABC0];
      v79[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v27 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMinExpression"];
      }

      v54 = localizedDescription2;
      v80[0] = localizedDescription2;
      v79[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v80[1] = v37;
      v79[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = null2;
      v80[2] = null2;
      v79[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v80[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v80;
      v35 = v79;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setInputMinExpression:?];

  objc_opt_class();
  v59[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v77[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v78[0] = v21;
    v77[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v78[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v78;
    v25 = v77;
    goto LABEL_58;
  }

  v59[0] = 0;
  v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v59];
  v11 = v59[0];

  if (!v13)
  {
    if (error)
    {
      v55 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      localizedDescription3 = [v11 localizedDescription];
      v27 = localizedDescription3;
      if (!localizedDescription3)
      {
        localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMaxExpression"];
      }

      v54 = localizedDescription3;
      v76[0] = localizedDescription3;
      v75[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v76[1] = v40;
      v75[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = null3;
      v76[2] = null3;
      v75[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v76[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v76;
      v35 = v75;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setInputMaxExpression:?];

  objc_opt_class();
  v58[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v74[0] = v21;
    v73[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v74[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v74;
    v25 = v73;
    goto LABEL_58;
  }

  v58[0] = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v58];
  v11 = v58[0];

  if (!v14)
  {
    if (error)
    {
      v55 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      localizedDescription4 = [v11 localizedDescription];
      v27 = localizedDescription4;
      if (!localizedDescription4)
      {
        localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaskExpression"];
      }

      v54 = localizedDescription4;
      v72[0] = localizedDescription4;
      v71[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v72[1] = v43;
      v71[2] = *MEMORY[0x1E696AA08];
      null4 = v11;
      if (!v11)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = null4;
      v72[2] = null4;
      v71[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v72[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v72;
      v35 = v71;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setMaskExpression:?];

  objc_opt_class();
  v57[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v69[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v70[0] = v21;
    v69[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v70[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v70;
    v25 = v69;
    goto LABEL_58;
  }

  v57[0] = 0;
  v15 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v57];
  v11 = v57[0];

  if (!v15)
  {
    if (error)
    {
      v55 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [v11 localizedDescription];
      v27 = localizedDescription5;
      if (!localizedDescription5)
      {
        localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v54 = localizedDescription5;
      v68[0] = localizedDescription5;
      v67[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v68[1] = v46;
      v67[2] = *MEMORY[0x1E696AA08];
      null5 = v11;
      if (!v11)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = null5;
      v68[2] = null5;
      v67[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v68[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v68;
      v35 = v67;
      goto LABEL_66;
    }

LABEL_71:

    goto LABEL_72;
  }

  [OUTLINED_FUNCTION_0() setTrueExpression:?];

  objc_opt_class();
  v56[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v66[0] = v21;
      v65[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v66[1] = localizedFailureReason;
      v23 = MEMORY[0x1E695DF20];
      v24 = v66;
      v25 = v65;
      goto LABEL_58;
    }

LABEL_59:

LABEL_72:
    v17 = 0;
    goto LABEL_15;
  }

  v56[0] = 0;
  v16 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v56];
  v11 = v56[0];

  if (!v16)
  {
    if (error)
    {
      v55 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A578];
      localizedDescription6 = [v11 localizedDescription];
      v27 = localizedDescription6;
      if (!localizedDescription6)
      {
        localizedDescription6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v54 = localizedDescription6;
      v64[0] = localizedDescription6;
      v63[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v64[1] = v50;
      v63[2] = *MEMORY[0x1E696AA08];
      null6 = v11;
      if (!v11)
      {
        null6 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = null6;
      v64[2] = null6;
      v63[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v64[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v64;
      v35 = v63;
LABEL_66:
      v52 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:4];
      *error = [(NSError *)v55 gc_modelError:v52 userInfo:?];

      if (!v11)
      {
      }

      if (!v27)
      {
      }

      goto LABEL_71;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setFalseExpression:?];

  v17 = v7;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end