@interface GCGenericDeviceDataInterpolateExpressionModelBuilder
- (GCGenericDeviceDataInterpolateExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataInterpolateExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v10 initializeWithModel:v4];
  v5 = [v4 inputExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputExpression:v5];

  v6 = [v4 inputMinExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMinExpression:v6];

  v7 = [v4 inputMaxExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMaxExpression:v7];

  v8 = [v4 outputMinExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMinExpression:v8];

  v9 = [v4 outputMaxExpression];

  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMaxExpression:v9];
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
  v3 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v20 build];
  v4 = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputExpression];
  if (!v4)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v5 = [v4 copy];
  v6 = v3[1];
  v3[1] = v5;

  v7 = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputMinExpression];
  if (!v7)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v8 = [v7 copy];
  v9 = v3[2];
  v3[2] = v8;

  v10 = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputMaxExpression];
  if (!v10)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v11 = [v10 copy];
  v12 = v3[3];
  v3[3] = v11;

  v13 = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self outputMinExpression];
  if (!v13)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v14 = [v13 copy];
  v15 = v3[4];
  v3[4] = v14;

  v16 = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self outputMaxExpression];
  if (!v16)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v17 = [v16 copy];
  v18 = v3[5];
  v3[5] = v17;

  return v3;
}

- (GCGenericDeviceDataInterpolateExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v77[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v57.receiver = self;
  v57.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v57 initWithDictionaryRepresentation:v6 error:a4];
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
    if (!a4)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v76[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v77[0] = v20;
    v76[1] = *MEMORY[0x1E696A588];
    v21 = [v9 localizedFailureReason];
    v77[1] = v21;
    v22 = MEMORY[0x1E695DF20];
    v23 = v77;
    v24 = v76;
LABEL_48:
    v44 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
    *a4 = [(NSError *)v19 gc_modelError:v44 userInfo:?];

    goto LABEL_49;
  }

  v56[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v56];
  v11 = v56[0];

  if (!v10)
  {
    if (a4)
    {
      v51 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      v25 = [v11 localizedDescription];
      v26 = v25;
      if (!v25)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v50 = v25;
      v75[0] = v25;
      v74[1] = *MEMORY[0x1E696A588];
      v27 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v75[1] = v28;
      v74[2] = *MEMORY[0x1E696AA08];
      v29 = v11;
      if (!v11)
      {
        v29 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = v29;
      v75[2] = v29;
      v74[3] = @"GCFailingKeyPathErrorKey";
      v30 = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(v30 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v72[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v73[0] = v20;
    v72[1] = *MEMORY[0x1E696A588];
    v21 = [v9 localizedFailureReason];
    v73[1] = v21;
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
    if (a4)
    {
      v51 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v35 = [v11 localizedDescription];
      v26 = v35;
      if (!v35)
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMinExpression"];
      }

      v50 = v35;
      v71[0] = v35;
      v70[1] = *MEMORY[0x1E696A588];
      v27 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v71[1] = v36;
      v70[2] = *MEMORY[0x1E696AA08];
      v37 = v11;
      if (!v11)
      {
        v37 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = v37;
      v71[2] = v37;
      v70[3] = @"GCFailingKeyPathErrorKey";
      v30 = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(v30 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v68[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v69[0] = v20;
    v68[1] = *MEMORY[0x1E696A588];
    v21 = [v9 localizedFailureReason];
    v69[1] = v21;
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
    if (a4)
    {
      v51 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      v38 = [v11 localizedDescription];
      v26 = v38;
      if (!v38)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMaxExpression"];
      }

      v50 = v38;
      v67[0] = v38;
      v66[1] = *MEMORY[0x1E696A588];
      v27 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v67[1] = v39;
      v66[2] = *MEMORY[0x1E696AA08];
      v40 = v11;
      if (!v11)
      {
        v40 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = v40;
      v67[2] = v40;
      v66[3] = @"GCFailingKeyPathErrorKey";
      v30 = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(v30 MEMORY[0x1E695E0F0])];
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
    if (!a4)
    {
      goto LABEL_49;
    }

    v19 = MEMORY[0x1E696ABC0];
    v64[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v65[0] = v20;
    v64[1] = *MEMORY[0x1E696A588];
    v21 = [v9 localizedFailureReason];
    v65[1] = v21;
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
    if (a4)
    {
      v51 = MEMORY[0x1E696ABC0];
      v62[0] = *MEMORY[0x1E696A578];
      v41 = [v11 localizedDescription];
      v26 = v41;
      if (!v41)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"OutputMinExpression"];
      }

      v50 = v41;
      v63[0] = v41;
      v62[1] = *MEMORY[0x1E696A588];
      v27 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v63[1] = v42;
      v62[2] = *MEMORY[0x1E696AA08];
      v43 = v11;
      if (!v11)
      {
        v43 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = v43;
      v63[2] = v43;
      v62[3] = @"GCFailingKeyPathErrorKey";
      v30 = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(v30 MEMORY[0x1E695E0F0])];
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
    if (a4)
    {
      v19 = MEMORY[0x1E696ABC0];
      v60[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v61[0] = v20;
      v60[1] = *MEMORY[0x1E696A588];
      v21 = [v9 localizedFailureReason];
      v61[1] = v21;
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
    if (a4)
    {
      v51 = MEMORY[0x1E696ABC0];
      v58[0] = *MEMORY[0x1E696A578];
      v45 = [v11 localizedDescription];
      v26 = v45;
      if (!v45)
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"OutputMaxExpression"];
      }

      v50 = v45;
      v59[0] = v45;
      v58[1] = *MEMORY[0x1E696A588];
      v27 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v59[1] = v46;
      v58[2] = *MEMORY[0x1E696AA08];
      v47 = v11;
      if (!v11)
      {
        v47 = [MEMORY[0x1E695DFB0] null];
      }

      v49 = v47;
      v59[2] = v47;
      v58[3] = @"GCFailingKeyPathErrorKey";
      v30 = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(v30 MEMORY[0x1E695E0F0])];
      v59[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v59;
      v34 = v58;
LABEL_56:
      v48 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:4];
      *a4 = [(NSError *)v51 gc_modelError:v48 userInfo:?];

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
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end