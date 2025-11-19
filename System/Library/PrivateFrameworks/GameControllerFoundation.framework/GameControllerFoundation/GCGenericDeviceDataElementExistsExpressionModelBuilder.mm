@interface GCGenericDeviceDataElementExistsExpressionModelBuilder
- (GCGenericDeviceDataElementExistsExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataElementExistsExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v8 initializeWithModel:v4];
  v5 = [v4 elementIdentifier];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setElementIdentifier:v5];

  v6 = [v4 trueExpression];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setTrueExpression:v6];

  v7 = [v4 falseExpression];

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setFalseExpression:v7];
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
  v4 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v15 build];
  v5 = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self elementIdentifier];
  if (!v5)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self trueExpression];
  if (!v8)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self falseExpression];
  if (!v11)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  return v4;
}

- (GCGenericDeviceDataElementExistsExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v66[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v56.receiver = self;
  v56.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v56 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
    goto LABEL_44;
  }

  v55 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v55];
  v9 = v55;
  if (!v8)
  {
    if (a4)
    {
      v18 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v66[0] = v19;
      v65[1] = *MEMORY[0x1E696A588];
      v20 = [v9 localizedFailureReason];
      v66[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      *a4 = [(NSError *)v18 gc_modelError:v21 userInfo:?];
    }

    goto LABEL_44;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v54 = 0;
  v10 = [v6 gc_requiredObjectForKey:@"TrueExpression" ofClass:objc_opt_class() error:&v54];
  v11 = v54;
  if (!v10)
  {
    if (a4)
    {
      v63[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v64[0] = v22;
      v63[1] = *MEMORY[0x1E696A588];
      v23 = [v11 localizedFailureReason];
      v64[1] = v23;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
      objc_claimAutoreleasedReturnValue();
      v24 = OUTLINED_FUNCTION_0_14();
      *a4 = [(NSError *)v24 gc_modelError:v25 userInfo:v26];
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
    if (a4)
    {
      v50 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      v27 = [v13 localizedDescription];
      v28 = v27;
      if (!v27)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v49 = v27;
      v62[0] = v27;
      v61[1] = *MEMORY[0x1E696A588];
      v29 = [v13 localizedFailureReason];
      v30 = v29;
      v31 = @"Invalid 'Expression' definition.";
      if (v29)
      {
        v31 = v29;
      }

      v62[1] = v31;
      v61[2] = *MEMORY[0x1E696AA08];
      v32 = v13;
      if (!v13)
      {
        v32 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = v32;
      v62[2] = v32;
      v61[3] = @"GCFailingKeyPathErrorKey";
      v33 = [v13 gc_failingKeyPath];
      v34 = v33;
      if (!v33)
      {
        v33 = MEMORY[0x1E695E0F0];
      }

      v35 = [v33 arrayByAddingObject:@"TrueExpression"];
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
  v10 = [v6 gc_requiredObjectForKey:@"FalseExpression" ofClass:objc_opt_class() error:&v52];
  v11 = v52;
  if (!v10)
  {
    if (a4)
    {
      v59[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v60[0] = v22;
      v59[1] = *MEMORY[0x1E696A588];
      v23 = [v11 localizedFailureReason];
      v60[1] = v23;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
      objc_claimAutoreleasedReturnValue();
      v39 = OUTLINED_FUNCTION_0_14();
      *a4 = [(NSError *)v39 gc_modelError:v40 userInfo:v41];
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v51 = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v10 error:&v51];
  v13 = v51;

  if (!v14)
  {
    if (a4)
    {
      v50 = MEMORY[0x1E696ABC0];
      v57[0] = *MEMORY[0x1E696A578];
      v42 = [v13 localizedDescription];
      v28 = v42;
      if (!v42)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v49 = v42;
      v58[0] = v42;
      v57[1] = *MEMORY[0x1E696A588];
      v43 = [v13 localizedFailureReason];
      v30 = v43;
      v44 = @"Invalid 'Expression' definition.";
      if (v43)
      {
        v44 = v43;
      }

      v58[1] = v44;
      v57[2] = *MEMORY[0x1E696AA08];
      v45 = v13;
      if (!v13)
      {
        v45 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = v45;
      v58[2] = v45;
      v57[3] = @"GCFailingKeyPathErrorKey";
      v46 = [v13 gc_failingKeyPath];
      v34 = v46;
      if (!v46)
      {
        v46 = MEMORY[0x1E695E0F0];
      }

      v35 = [v46 arrayByAddingObject:@"FalseExpression"];
      v58[3] = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = v58;
      v38 = v57;
LABEL_38:
      v47 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:4];
      *a4 = [(NSError *)v50 gc_modelError:v47 userInfo:?];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDataElementExistsExpressionModel.m" lineNumber:119 description:@"'falseExpression' can not be nil"];
}

@end