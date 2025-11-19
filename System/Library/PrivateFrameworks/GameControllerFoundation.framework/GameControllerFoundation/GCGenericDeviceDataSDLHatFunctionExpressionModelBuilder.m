@interface GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder
- (GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v11 initializeWithModel:v4];
  v5 = [v4 inputExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputExpression:v5];

  v6 = [v4 inputMinExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMinExpression:v6];

  v7 = [v4 inputMaxExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMaxExpression:v7];

  v8 = [v4 maskExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setMaskExpression:v8];

  v9 = [v4 trueExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setTrueExpression:v9];

  v10 = [v4 falseExpression];

  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setFalseExpression:v10];
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
  v3 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v23 build];
  v4 = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputExpression];
  if (!v4)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v5 = [v4 copy];
  v6 = v3[1];
  v3[1] = v5;

  v7 = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputMinExpression];
  if (!v7)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v8 = [v7 copy];
  v9 = v3[2];
  v3[2] = v8;

  v10 = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputMaxExpression];
  if (!v10)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v11 = [v10 copy];
  v12 = v3[3];
  v3[3] = v11;

  v13 = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self maskExpression];
  if (!v13)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v14 = [v13 copy];
  v15 = v3[4];
  v3[4] = v14;

  v16 = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self trueExpression];
  if (!v16)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v17 = [v16 copy];
  v18 = v3[5];
  v3[5] = v17;

  v19 = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self falseExpression];
  if (!v19)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v20 = [v19 copy];
  v21 = v3[6];
  v3[6] = v20;

  return v3;
}

- (GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v86[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v62.receiver = self;
  v62.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v62 initWithDictionaryRepresentation:v6 error:a4];
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
    if (!a4)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v85[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v86[0] = v21;
    v85[1] = *MEMORY[0x1E696A588];
    v22 = [v9 localizedFailureReason];
    v86[1] = v22;
    v23 = MEMORY[0x1E695DF20];
    v24 = v86;
    v25 = v85;
LABEL_58:
    v48 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
    *a4 = [(NSError *)v20 gc_modelError:v48 userInfo:?];

    goto LABEL_59;
  }

  v61[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v61];
  v11 = v61[0];

  if (!v10)
  {
    if (a4)
    {
      v55 = MEMORY[0x1E696ABC0];
      v83[0] = *MEMORY[0x1E696A578];
      v26 = [v11 localizedDescription];
      v27 = v26;
      if (!v26)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v54 = v26;
      v84[0] = v26;
      v83[1] = *MEMORY[0x1E696A588];
      v28 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v84[1] = v29;
      v83[2] = *MEMORY[0x1E696AA08];
      v30 = v11;
      if (!v11)
      {
        v30 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = v30;
      v84[2] = v30;
      v83[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(v31 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v81[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v82[0] = v21;
    v81[1] = *MEMORY[0x1E696A588];
    v22 = [v9 localizedFailureReason];
    v82[1] = v22;
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
    if (a4)
    {
      v55 = MEMORY[0x1E696ABC0];
      v79[0] = *MEMORY[0x1E696A578];
      v36 = [v11 localizedDescription];
      v27 = v36;
      if (!v36)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMinExpression"];
      }

      v54 = v36;
      v80[0] = v36;
      v79[1] = *MEMORY[0x1E696A588];
      v28 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v80[1] = v37;
      v79[2] = *MEMORY[0x1E696AA08];
      v38 = v11;
      if (!v11)
      {
        v38 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = v38;
      v80[2] = v38;
      v79[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(v31 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v77[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v78[0] = v21;
    v77[1] = *MEMORY[0x1E696A588];
    v22 = [v9 localizedFailureReason];
    v78[1] = v22;
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
    if (a4)
    {
      v55 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      v39 = [v11 localizedDescription];
      v27 = v39;
      if (!v39)
      {
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMaxExpression"];
      }

      v54 = v39;
      v76[0] = v39;
      v75[1] = *MEMORY[0x1E696A588];
      v28 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v76[1] = v40;
      v75[2] = *MEMORY[0x1E696AA08];
      v41 = v11;
      if (!v11)
      {
        v41 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = v41;
      v76[2] = v41;
      v75[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(v31 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v74[0] = v21;
    v73[1] = *MEMORY[0x1E696A588];
    v22 = [v9 localizedFailureReason];
    v74[1] = v22;
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
    if (a4)
    {
      v55 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      v42 = [v11 localizedDescription];
      v27 = v42;
      if (!v42)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaskExpression"];
      }

      v54 = v42;
      v72[0] = v42;
      v71[1] = *MEMORY[0x1E696A588];
      v28 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v72[1] = v43;
      v71[2] = *MEMORY[0x1E696AA08];
      v44 = v11;
      if (!v11)
      {
        v44 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = v44;
      v72[2] = v44;
      v71[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(v31 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_59;
    }

    v20 = MEMORY[0x1E696ABC0];
    v69[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v70[0] = v21;
    v69[1] = *MEMORY[0x1E696A588];
    v22 = [v9 localizedFailureReason];
    v70[1] = v22;
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
    if (a4)
    {
      v55 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v45 = [v11 localizedDescription];
      v27 = v45;
      if (!v45)
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v54 = v45;
      v68[0] = v45;
      v67[1] = *MEMORY[0x1E696A588];
      v28 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v68[1] = v46;
      v67[2] = *MEMORY[0x1E696AA08];
      v47 = v11;
      if (!v11)
      {
        v47 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = v47;
      v68[2] = v47;
      v67[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(v31 MEMORY[0x1E695E0F0])];
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
    if (a4)
    {
      v20 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v66[0] = v21;
      v65[1] = *MEMORY[0x1E696A588];
      v22 = [v9 localizedFailureReason];
      v66[1] = v22;
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
    if (a4)
    {
      v55 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A578];
      v49 = [v11 localizedDescription];
      v27 = v49;
      if (!v49)
      {
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v54 = v49;
      v64[0] = v49;
      v63[1] = *MEMORY[0x1E696A588];
      v28 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v64[1] = v50;
      v63[2] = *MEMORY[0x1E696AA08];
      v51 = v11;
      if (!v11)
      {
        v51 = [MEMORY[0x1E695DFB0] null];
      }

      v53 = v51;
      v64[2] = v51;
      v63[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(v31 MEMORY[0x1E695E0F0])];
      v64[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v64;
      v35 = v63;
LABEL_66:
      v52 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:4];
      *a4 = [(NSError *)v55 gc_modelError:v52 userInfo:?];

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
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end