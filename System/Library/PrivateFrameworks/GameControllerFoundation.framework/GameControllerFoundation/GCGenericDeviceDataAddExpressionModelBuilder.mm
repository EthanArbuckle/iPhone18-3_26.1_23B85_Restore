@interface GCGenericDeviceDataAddExpressionModelBuilder
- (GCGenericDeviceDataAddExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataAddExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:modelCopy];
  leftExpression = [modelCopy leftExpression];
  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setLeftExpression:leftExpression];

  rightExpression = [modelCopy rightExpression];

  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setRightExpression:rightExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setLeftExpression:0];
  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setRightExpression:0];
}

- (id)build
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v12 build];
  leftExpression = [(GCGenericDeviceDataAddExpressionModelBuilder *)self leftExpression];
  if (!leftExpression)
  {
    [(GCGenericDeviceDataAddExpressionModelBuilder *)a2 build];
  }

  v6 = [leftExpression copy];
  v7 = build[1];
  build[1] = v6;

  rightExpression = [(GCGenericDeviceDataAddExpressionModelBuilder *)self rightExpression];
  if (!rightExpression)
  {
    [(GCGenericDeviceDataAddExpressionModelBuilder *)a2 build];
  }

  v9 = [rightExpression copy];
  v10 = build[2];
  build[2] = v9;

  return build;
}

- (GCGenericDeviceDataAddExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v56[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v48.receiver = self;
  v48.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v48 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_40;
  }

  v47 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"LeftExpression" ofClass:objc_opt_class() error:&v47];
  v9 = v47;
  if (!v8)
  {
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v55[0] = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v56[0] = v17;
      v55[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v56[1] = localizedFailureReason;
      v19 = MEMORY[0x1E695DF20];
      v20 = v56;
      v21 = v55;
LABEL_22:
      v34 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:2];
      *error = [(NSError *)v16 gc_modelError:v34 userInfo:?];
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
    if (error)
    {
      v43 = MEMORY[0x1E696ABC0];
      v53[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v23 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"LeftExpression"];
      }

      v42 = localizedDescription;
      v54[0] = localizedDescription;
      v53[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v25 = localizedFailureReason2;
      v26 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason2)
      {
        v26 = localizedFailureReason2;
      }

      v54[1] = v26;
      v53[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v41 = null;
      v54[2] = null;
      v53[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v29 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v30 = [gc_failingKeyPath arrayByAddingObject:@"LeftExpression"];
      v54[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v54;
      v33 = v53;
      goto LABEL_34;
    }

LABEL_39:

    goto LABEL_40;
  }

  [(GCGenericDeviceDataAddExpressionModelBuilder *)v7 setLeftExpression:v10];

  v45 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"RightExpression" ofClass:objc_opt_class() error:&v45];
  v9 = v45;
  if (!v8)
  {
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v51[0] = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v52[0] = v17;
      v51[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v52[1] = localizedFailureReason;
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
    if (error)
    {
      v43 = MEMORY[0x1E696ABC0];
      v49[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v23 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"RightExpression"];
      }

      v42 = localizedDescription2;
      v50[0] = localizedDescription2;
      v49[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v11 localizedFailureReason];
      v25 = localizedFailureReason3;
      v37 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason3)
      {
        v37 = localizedFailureReason3;
      }

      v50[1] = v37;
      v49[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v41 = null2;
      v50[2] = null2;
      v49[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath2 = [v11 gc_failingKeyPath];
      v29 = gc_failingKeyPath2;
      if (!gc_failingKeyPath2)
      {
        gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
      }

      v30 = [gc_failingKeyPath2 arrayByAddingObject:@"RightExpression"];
      v50[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v50;
      v33 = v49;
LABEL_34:
      v40 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:4];
      *error = [(NSError *)v43 gc_modelError:v40 userInfo:?];

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

  [(GCGenericDeviceDataAddExpressionModelBuilder *)v7 setRightExpression:v12];

  v13 = v7;
LABEL_7:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataAddExpressionModel.m" lineNumber:108 description:@"'rightExpression' can not be nil"];
}

@end