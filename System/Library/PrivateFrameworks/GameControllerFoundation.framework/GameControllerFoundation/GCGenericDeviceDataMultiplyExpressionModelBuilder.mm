@interface GCGenericDeviceDataMultiplyExpressionModelBuilder
- (GCGenericDeviceDataMultiplyExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataMultiplyExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataMultiplyExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:v4];
  v5 = [v4 leftExpression];
  [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)self setLeftExpression:v5];

  v6 = [v4 rightExpression];

  [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)self setRightExpression:v6];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataMultiplyExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)self setLeftExpression:0];
  [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)self setRightExpression:0];
}

- (id)build
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataMultiplyExpressionModelBuilder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v12 build];
  v5 = [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)self leftExpression];
  if (!v5)
  {
    [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)self rightExpression];
  if (!v8)
  {
    [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  return v4;
}

- (GCGenericDeviceDataMultiplyExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v56[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48.receiver = self;
  v48.super_class = GCGenericDeviceDataMultiplyExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v48 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
    goto LABEL_40;
  }

  v47 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"LeftExpression" ofClass:objc_opt_class() error:&v47];
  v9 = v47;
  if (!v8)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E696ABC0];
      v55[0] = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v56[0] = v17;
      v55[1] = *MEMORY[0x1E696A588];
      v18 = [v9 localizedFailureReason];
      v56[1] = v18;
      v19 = MEMORY[0x1E695DF20];
      v20 = v56;
      v21 = v55;
LABEL_22:
      v34 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:2];
      *a4 = [(NSError *)v16 gc_modelError:v34 userInfo:?];
    }

LABEL_23:

LABEL_40:
    v13 = 0;
    goto LABEL_7;
  }

  v46 = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v46];
  v11 = v46;

  if (!v10)
  {
    if (a4)
    {
      v43 = MEMORY[0x1E696ABC0];
      v53[0] = *MEMORY[0x1E696A578];
      v22 = [v11 localizedDescription];
      v23 = v22;
      if (!v22)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"LeftExpression"];
      }

      v42 = v22;
      v54[0] = v22;
      v53[1] = *MEMORY[0x1E696A588];
      v24 = [v11 localizedFailureReason];
      v25 = v24;
      v26 = @"Invalid 'Expression' definition.";
      if (v24)
      {
        v26 = v24;
      }

      v54[1] = v26;
      v53[2] = *MEMORY[0x1E696AA08];
      v27 = v11;
      if (!v11)
      {
        v27 = [MEMORY[0x1E695DFB0] null];
      }

      v41 = v27;
      v54[2] = v27;
      v53[3] = @"GCFailingKeyPathErrorKey";
      v28 = [v11 gc_failingKeyPath];
      v29 = v28;
      if (!v28)
      {
        v28 = MEMORY[0x1E695E0F0];
      }

      v30 = [v28 arrayByAddingObject:@"LeftExpression"];
      v54[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v54;
      v33 = v53;
      goto LABEL_34;
    }

LABEL_39:

    goto LABEL_40;
  }

  [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)v7 setLeftExpression:v10];

  v45 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"RightExpression" ofClass:objc_opt_class() error:&v45];
  v9 = v45;
  if (!v8)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E696ABC0];
      v51[0] = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v52[0] = v17;
      v51[1] = *MEMORY[0x1E696A588];
      v18 = [v9 localizedFailureReason];
      v52[1] = v18;
      v19 = MEMORY[0x1E695DF20];
      v20 = v52;
      v21 = v51;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v44 = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v44];
  v11 = v44;

  if (!v12)
  {
    if (a4)
    {
      v43 = MEMORY[0x1E696ABC0];
      v49[0] = *MEMORY[0x1E696A578];
      v35 = [v11 localizedDescription];
      v23 = v35;
      if (!v35)
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"RightExpression"];
      }

      v42 = v35;
      v50[0] = v35;
      v49[1] = *MEMORY[0x1E696A588];
      v36 = [v11 localizedFailureReason];
      v25 = v36;
      v37 = @"Invalid 'Expression' definition.";
      if (v36)
      {
        v37 = v36;
      }

      v50[1] = v37;
      v49[2] = *MEMORY[0x1E696AA08];
      v38 = v11;
      if (!v11)
      {
        v38 = [MEMORY[0x1E695DFB0] null];
      }

      v41 = v38;
      v50[2] = v38;
      v49[3] = @"GCFailingKeyPathErrorKey";
      v39 = [v11 gc_failingKeyPath];
      v29 = v39;
      if (!v39)
      {
        v39 = MEMORY[0x1E695E0F0];
      }

      v30 = [v39 arrayByAddingObject:@"RightExpression"];
      v50[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v50;
      v33 = v49;
LABEL_34:
      v40 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:4];
      *a4 = [(NSError *)v43 gc_modelError:v40 userInfo:?];

      if (!v11)
      {
      }

      if (!v23)
      {
      }

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  [(GCGenericDeviceDataMultiplyExpressionModelBuilder *)v7 setRightExpression:v12];

  v13 = v7;
LABEL_7:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDataMultiplyExpressionModel.m" lineNumber:108 description:@"'rightExpression' can not be nil"];
}

@end