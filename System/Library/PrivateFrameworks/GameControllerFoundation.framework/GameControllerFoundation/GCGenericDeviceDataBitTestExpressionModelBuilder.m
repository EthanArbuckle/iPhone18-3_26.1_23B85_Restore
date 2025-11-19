@interface GCGenericDeviceDataBitTestExpressionModelBuilder
- (GCGenericDeviceDataBitTestExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataBitTestExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v10 initializeWithModel:v4];
  v5 = [v4 inputExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setInputExpression:v5];

  v6 = [v4 maskExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setMaskExpression:v6];

  v7 = [v4 trueExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setTrueExpression:v7];

  v8 = [v4 falseExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setFalseExpression:v8];

  v9 = [v4 partialMatch];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setPartialMatch:v9];
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
  v3 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v17 build];
  v4 = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self inputExpression];
  if (!v4)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v5 = [v4 copy];
  v6 = *(v3 + 8);
  *(v3 + 8) = v5;

  v7 = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self maskExpression];
  if (!v7)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v8 = [v7 copy];
  v9 = *(v3 + 16);
  *(v3 + 16) = v8;

  v10 = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self trueExpression];
  if (!v10)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v11 = [v10 copy];
  v12 = *(v3 + 24);
  *(v3 + 24) = v11;

  v13 = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self falseExpression];
  if (!v13)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v14 = [v13 copy];
  v15 = *(v3 + 32);
  *(v3 + 32) = v14;

  *(v3 + 40) = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self partialMatch];

  return v3;
}

- (GCGenericDeviceDataBitTestExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v78[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v60.receiver = self;
  v60.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v60 initWithDictionaryRepresentation:v6 error:a4];
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
    if (!a4)
    {
      goto LABEL_43;
    }

    v21 = MEMORY[0x1E696ABC0];
    v77[0] = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v78[0] = v22;
    v77[1] = *MEMORY[0x1E696A588];
    v23 = [v9 localizedFailureReason];
    v78[1] = v23;
    v24 = MEMORY[0x1E695DF20];
    v25 = v78;
    v26 = v77;
LABEL_42:
    v43 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:2];
    *a4 = [(NSError *)v21 gc_modelError:v43 userInfo:?];

    goto LABEL_43;
  }

  v59[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v59];
  v11 = v59[0];

  if (!v10)
  {
    if (a4)
    {
      v54 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      v27 = [v11 localizedDescription];
      v28 = v27;
      if (!v27)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v53 = v27;
      v76[0] = v27;
      v75[1] = *MEMORY[0x1E696A588];
      v29 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v76[1] = v30;
      v75[2] = *MEMORY[0x1E696AA08];
      v31 = v11;
      if (!v11)
      {
        v31 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = v31;
      v76[2] = v31;
      v75[3] = @"GCFailingKeyPathErrorKey";
      v32 = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(v32 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_43;
    }

    v21 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v74[0] = v22;
    v73[1] = *MEMORY[0x1E696A588];
    v23 = [v9 localizedFailureReason];
    v74[1] = v23;
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
    if (a4)
    {
      v54 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      v37 = [v11 localizedDescription];
      v28 = v37;
      if (!v37)
      {
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaskExpression"];
      }

      v53 = v37;
      v72[0] = v37;
      v71[1] = *MEMORY[0x1E696A588];
      v29 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v72[1] = v38;
      v71[2] = *MEMORY[0x1E696AA08];
      v39 = v11;
      if (!v11)
      {
        v39 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = v39;
      v72[2] = v39;
      v71[3] = @"GCFailingKeyPathErrorKey";
      v32 = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(v32 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_43;
    }

    v21 = MEMORY[0x1E696ABC0];
    v69[0] = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v70[0] = v22;
    v69[1] = *MEMORY[0x1E696A588];
    v23 = [v9 localizedFailureReason];
    v70[1] = v23;
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
    if (a4)
    {
      v54 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v40 = [v11 localizedDescription];
      v28 = v40;
      if (!v40)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v53 = v40;
      v68[0] = v40;
      v67[1] = *MEMORY[0x1E696A588];
      v29 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v68[1] = v41;
      v67[2] = *MEMORY[0x1E696AA08];
      v42 = v11;
      if (!v11)
      {
        v42 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = v42;
      v68[2] = v42;
      v67[3] = @"GCFailingKeyPathErrorKey";
      v32 = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(v32 MEMORY[0x1E695E0F0])];
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
    if (a4)
    {
      v21 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v66[0] = v22;
      v65[1] = *MEMORY[0x1E696A588];
      v23 = [v9 localizedFailureReason];
      v66[1] = v23;
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
    if (a4)
    {
      v54 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A578];
      v44 = [v11 localizedDescription];
      v28 = v44;
      if (!v44)
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v53 = v44;
      v64[0] = v44;
      v63[1] = *MEMORY[0x1E696A588];
      v29 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v64[1] = v45;
      v63[2] = *MEMORY[0x1E696AA08];
      v46 = v11;
      if (!v11)
      {
        v46 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = v46;
      v64[2] = v46;
      v63[3] = @"GCFailingKeyPathErrorKey";
      v32 = [v11 gc_failingKeyPath];
      v33 = [OUTLINED_FUNCTION_4(v32 MEMORY[0x1E695E0F0])];
      v64[3] = v33;
      v34 = MEMORY[0x1E695DF20];
      v35 = v64;
      v36 = v63;
LABEL_50:
      v47 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:4];
      *a4 = [(NSError *)v54 gc_modelError:v47 userInfo:?];

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
  v15 = [v6 gc_objectForKey:@"PartialMatch" ofClass:objc_opt_class() error:&v55];
  v16 = v55;
  v17 = v16;
  if (!v15 && v16)
  {
    if (a4)
    {
      v48 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v62[0] = v49;
      v61[1] = *MEMORY[0x1E696A588];
      v50 = [v17 localizedFailureReason];
      v62[1] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
      *a4 = [(NSError *)v48 gc_modelError:v51 userInfo:?];
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
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end