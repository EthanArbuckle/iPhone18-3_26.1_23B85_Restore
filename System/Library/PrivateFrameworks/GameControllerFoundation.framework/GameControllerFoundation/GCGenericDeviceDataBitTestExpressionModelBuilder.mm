@interface GCGenericDeviceDataBitTestExpressionModelBuilder
- (GCGenericDeviceDataBitTestExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataBitTestExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v10 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setInputExpression:inputExpression];

  maskExpression = [modelCopy maskExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setMaskExpression:maskExpression];

  trueExpression = [modelCopy trueExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setTrueExpression:trueExpression];

  falseExpression = [modelCopy falseExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setFalseExpression:falseExpression];

  partialMatch = [modelCopy partialMatch];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setPartialMatch:partialMatch];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setMaskExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setTrueExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setFalseExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setPartialMatch:1];
}

- (id)build
{
  v17.receiver = self;
  v17.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v17 build];
  inputExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v5 = [inputExpression copy];
  v6 = *(build + 8);
  *(build + 8) = v5;

  maskExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self maskExpression];
  if (!maskExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v8 = [maskExpression copy];
  v9 = *(build + 16);
  *(build + 16) = v8;

  trueExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self trueExpression];
  if (!trueExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v11 = [trueExpression copy];
  v12 = *(build + 24);
  *(build + 24) = v11;

  falseExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self falseExpression];
  if (!falseExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v14 = [falseExpression copy];
  v15 = *(build + 32);
  *(build + 32) = v14;

  *(build + 40) = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self partialMatch];

  return build;
}

- (GCGenericDeviceDataBitTestExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v78[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v60.receiver = self;
  v60.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v60 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_56;
  }

  objc_opt_class();
  v59[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_43;
    }

    v21 = MEMORY[0x1E696ABC0];
    v77[0] = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v78[0] = v22;
    v77[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v78[1] = localizedFailureReason;
    v24 = MEMORY[0x1E695DF20];
    v25 = v78;
    v26 = v77;
LABEL_42:
    v43 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:2];
    *error = [(NSError *)v21 gc_modelError:v43 userInfo:?];

    goto LABEL_43;
  }

  v59[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v59];
  v11 = v59[0];

  if (!v10)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v28 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v53 = localizedDescription;
      v76[0] = localizedDescription;
      v75[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v76[1] = v30;
      v75[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null;
      v76[2] = null;
      v75[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v76[3] = v33;
      v34 = MEMORY[0x1E695DF20];
      v35 = v76;
      v36 = v75;
      goto LABEL_50;
    }

    goto LABEL_55;
  }

  [OUTLINED_FUNCTION_0() setInputExpression:?];

  objc_opt_class();
  v58[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_43;
    }

    v21 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v74[0] = v22;
    v73[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v74[1] = localizedFailureReason;
    v24 = MEMORY[0x1E695DF20];
    v25 = v74;
    v26 = v73;
    goto LABEL_42;
  }

  v58[0] = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v58];
  v11 = v58[0];

  if (!v12)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v28 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaskExpression"];
      }

      v53 = localizedDescription2;
      v72[0] = localizedDescription2;
      v71[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v72[1] = v38;
      v71[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null2;
      v72[2] = null2;
      v71[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v72[3] = v33;
      v34 = MEMORY[0x1E695DF20];
      v35 = v72;
      v36 = v71;
      goto LABEL_50;
    }

    goto LABEL_55;
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
      goto LABEL_43;
    }

    v21 = MEMORY[0x1E696ABC0];
    v69[0] = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v70[0] = v22;
    v69[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v70[1] = localizedFailureReason;
    v24 = MEMORY[0x1E695DF20];
    v25 = v70;
    v26 = v69;
    goto LABEL_42;
  }

  v57[0] = 0;
  v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v57];
  v11 = v57[0];

  if (!v13)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      localizedDescription3 = [v11 localizedDescription];
      v28 = localizedDescription3;
      if (!localizedDescription3)
      {
        localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v53 = localizedDescription3;
      v68[0] = localizedDescription3;
      v67[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v68[1] = v41;
      v67[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null3;
      v68[2] = null3;
      v67[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v68[3] = v33;
      v34 = MEMORY[0x1E695DF20];
      v35 = v68;
      v36 = v67;
      goto LABEL_50;
    }

LABEL_55:

    goto LABEL_56;
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
      v21 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v66[0] = v22;
      v65[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v66[1] = localizedFailureReason;
      v24 = MEMORY[0x1E695DF20];
      v25 = v66;
      v26 = v65;
      goto LABEL_42;
    }

LABEL_43:

LABEL_56:
    v18 = 0;
    goto LABEL_15;
  }

  v56[0] = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v56];
  v11 = v56[0];

  if (!v14)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A578];
      localizedDescription4 = [v11 localizedDescription];
      v28 = localizedDescription4;
      if (!localizedDescription4)
      {
        localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v53 = localizedDescription4;
      v64[0] = localizedDescription4;
      v63[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v64[1] = v45;
      v63[2] = *MEMORY[0x1E696AA08];
      null4 = v11;
      if (!v11)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null4;
      v64[2] = null4;
      v63[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v64[3] = v33;
      v34 = MEMORY[0x1E695DF20];
      v35 = v64;
      v36 = v63;
LABEL_50:
      v47 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:4];
      *error = [(NSError *)v54 gc_modelError:v47 userInfo:?];

      if (!v11)
      {
      }

      if (!v28)
      {
      }

      goto LABEL_55;
    }

    goto LABEL_55;
  }

  [OUTLINED_FUNCTION_0() setFalseExpression:?];

  v55 = 0;
  v15 = [representationCopy gc_objectForKey:@"PartialMatch" ofClass:objc_opt_class() error:&v55];
  v16 = v55;
  v17 = v16;
  if (!v15 && v16)
  {
    if (error)
    {
      v48 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v62[0] = v49;
      v61[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v17 localizedFailureReason];
      v62[1] = localizedFailureReason3;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
      *error = [(NSError *)v48 gc_modelError:v51 userInfo:?];
    }

    goto LABEL_56;
  }

  if (v15)
  {
    -[GCGenericDeviceDataBitTestExpressionModelBuilder setPartialMatch:](v7, "setPartialMatch:", [v15 BOOLValue]);
  }

  v18 = v7;
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end