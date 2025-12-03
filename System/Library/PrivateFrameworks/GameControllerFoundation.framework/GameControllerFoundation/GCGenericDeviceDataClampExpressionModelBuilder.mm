@interface GCGenericDeviceDataClampExpressionModelBuilder
- (GCGenericDeviceDataClampExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataClampExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v8 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setInputExpression:inputExpression];

  minExpression = [modelCopy minExpression];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMinExpression:minExpression];

  maxExpression = [modelCopy maxExpression];

  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMaxExpression:maxExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMinExpression:0];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMaxExpression:0];
}

- (id)build
{
  v15.receiver = self;
  v15.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v15 build];
  inputExpression = [(GCGenericDeviceDataClampExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [(GCGenericDeviceDataClampExpressionModelBuilder *)a2 build];
  }

  v6 = [inputExpression copy];
  v7 = build[1];
  build[1] = v6;

  minExpression = [(GCGenericDeviceDataClampExpressionModelBuilder *)self minExpression];
  v9 = [minExpression copy];
  v10 = build[2];
  build[2] = v9;

  maxExpression = [(GCGenericDeviceDataClampExpressionModelBuilder *)self maxExpression];
  v12 = [maxExpression copy];
  v13 = build[3];
  build[3] = v12;

  return build;
}

- (GCGenericDeviceDataClampExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v79[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v67.receiver = self;
  v67.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v67 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_66;
  }

  v66 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"InputExpression" ofClass:objc_opt_class() error:&v66];
  v9 = v66;
  if (!v8)
  {
    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v78[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v79[0] = v21;
      v78[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v79[1] = localizedFailureReason;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
      *error = [(NSError *)v20 gc_modelError:v23 userInfo:?];
    }

    goto LABEL_66;
  }

  v65 = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v65];
  v11 = v65;

  if (!v10)
  {
    if (error)
    {
      errorCopy = error;
      v59 = MEMORY[0x1E696ABC0];
      v76[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      localizedDescription2 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v57 = localizedDescription;
      v77[0] = localizedDescription;
      v76[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v28 = localizedFailureReason2;
      v29 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason2)
      {
        v29 = localizedFailureReason2;
      }

      v77[1] = v29;
      v76[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v55 = null;
      v77[2] = null;
      v76[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v33 = [gc_failingKeyPath arrayByAddingObject:@"InputExpression"];
      v77[3] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:4];
      *errorCopy = [(NSError *)v59 gc_modelError:v34 userInfo:?];

      if (!v11)
      {
      }

      if (!localizedDescription2)
      {
      }

      goto LABEL_64;
    }

    goto LABEL_65;
  }

  [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setInputExpression:v10];

  v64 = 0;
  v8 = [representationCopy gc_objectForKey:@"MinExpression" ofClass:objc_opt_class() error:&v64];
  v12 = v64;
  v13 = v12;
  if (!v8 && v12)
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v75[0] = localizedDescription2;
      v74[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v13 localizedFailureReason];
      v75[1] = localizedFailureReason3;
      v37 = MEMORY[0x1E695DF20];
      v38 = v75;
      v39 = v74;
LABEL_38:
      v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:2];
      *error = [(NSError *)v35 gc_modelError:v40 userInfo:?];

      v11 = v13;
LABEL_39:

LABEL_64:
      goto LABEL_65;
    }

LABEL_40:
    v11 = v13;
    goto LABEL_65;
  }

  if (v8)
  {
    v63 = 0;
    v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v63];
    v11 = v63;

    if (!v14)
    {
      if (error)
      {
        v60 = MEMORY[0x1E696ABC0];
        v72[0] = *MEMORY[0x1E696A578];
        localizedDescription2 = [v11 localizedDescription];
        localizedFailureReason3 = localizedDescription2;
        if (!localizedDescription2)
        {
          localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MinExpression"];
        }

        v73[0] = localizedFailureReason3;
        v72[1] = *MEMORY[0x1E696A588];
        localizedFailureReason4 = [v11 localizedFailureReason];
        v42 = @"Invalid 'Expression' definition.";
        v58 = localizedFailureReason4;
        if (localizedFailureReason4)
        {
          v42 = localizedFailureReason4;
        }

        v73[1] = v42;
        v72[2] = *MEMORY[0x1E696AA08];
        null2 = v11;
        if (!v11)
        {
          null2 = [MEMORY[0x1E695DFB0] null];
        }

        v56 = null2;
        v73[2] = null2;
        v72[3] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath2 = [v11 gc_failingKeyPath];
        v45 = gc_failingKeyPath2;
        if (!gc_failingKeyPath2)
        {
          gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
        }

        v46 = [gc_failingKeyPath2 arrayByAddingObject:@"MinExpression"];
        v73[3] = v46;
        v47 = MEMORY[0x1E695DF20];
        v48 = v73;
        v49 = v72;
LABEL_61:
        v54 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:4];
        *error = [(NSError *)v60 gc_modelError:v54 userInfo:?];

        if (!v11)
        {
        }

        if (localizedDescription2)
        {
          goto LABEL_64;
        }

        goto LABEL_39;
      }

LABEL_65:

LABEL_66:
      v17 = 0;
      goto LABEL_17;
    }

    [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setMinExpression:v14];
  }

  else
  {
    v11 = v12;
  }

  v62 = 0;
  v8 = [representationCopy gc_objectForKey:@"MaxExpression" ofClass:objc_opt_class() error:&v62];
  v15 = v62;
  v13 = v15;
  if (!v8 && v15)
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v71[0] = localizedDescription2;
      v70[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v13 localizedFailureReason];
      v71[1] = localizedFailureReason3;
      v37 = MEMORY[0x1E695DF20];
      v38 = v71;
      v39 = v70;
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (!v8)
  {
    v11 = v15;
    goto LABEL_16;
  }

  v61 = 0;
  v16 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v61];
  v11 = v61;

  if (!v16)
  {
    if (error)
    {
      v60 = MEMORY[0x1E696ABC0];
      v68[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      localizedFailureReason3 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaxExpression"];
      }

      v69[0] = localizedFailureReason3;
      v68[1] = *MEMORY[0x1E696A588];
      localizedFailureReason5 = [v11 localizedFailureReason];
      v51 = @"Invalid 'Expression' definition.";
      v58 = localizedFailureReason5;
      if (localizedFailureReason5)
      {
        v51 = localizedFailureReason5;
      }

      v69[1] = v51;
      v68[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v56 = null3;
      v69[2] = null3;
      v68[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath3 = [v11 gc_failingKeyPath];
      v45 = gc_failingKeyPath3;
      if (!gc_failingKeyPath3)
      {
        gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
      }

      v46 = [gc_failingKeyPath3 arrayByAddingObject:@"MaxExpression"];
      v69[3] = v46;
      v47 = MEMORY[0x1E695DF20];
      v48 = v69;
      v49 = v68;
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setMaxExpression:v16];

LABEL_16:
  v17 = v7;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataClampExpressionModel.m" lineNumber:115 description:@"'inputExpression' can not be nil"];
}

@end