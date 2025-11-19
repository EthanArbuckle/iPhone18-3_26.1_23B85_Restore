@interface GCGenericDeviceDataClampExpressionModelBuilder
- (GCGenericDeviceDataClampExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataClampExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v8 initializeWithModel:v4];
  v5 = [v4 inputExpression];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setInputExpression:v5];

  v6 = [v4 minExpression];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMinExpression:v6];

  v7 = [v4 maxExpression];

  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMaxExpression:v7];
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
  v4 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v15 build];
  v5 = [(GCGenericDeviceDataClampExpressionModelBuilder *)self inputExpression];
  if (!v5)
  {
    [(GCGenericDeviceDataClampExpressionModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceDataClampExpressionModelBuilder *)self minExpression];
  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(GCGenericDeviceDataClampExpressionModelBuilder *)self maxExpression];
  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  return v4;
}

- (GCGenericDeviceDataClampExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v79[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v67.receiver = self;
  v67.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v67 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
    goto LABEL_66;
  }

  v66 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"InputExpression" ofClass:objc_opt_class() error:&v66];
  v9 = v66;
  if (!v8)
  {
    if (a4)
    {
      v20 = MEMORY[0x1E696ABC0];
      v78[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v79[0] = v21;
      v78[1] = *MEMORY[0x1E696A588];
      v22 = [v9 localizedFailureReason];
      v79[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
      *a4 = [(NSError *)v20 gc_modelError:v23 userInfo:?];
    }

    goto LABEL_66;
  }

  v65 = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v65];
  v11 = v65;

  if (!v10)
  {
    if (a4)
    {
      v24 = a4;
      v59 = MEMORY[0x1E696ABC0];
      v76[0] = *MEMORY[0x1E696A578];
      v25 = [v11 localizedDescription];
      v26 = v25;
      if (!v25)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v57 = v25;
      v77[0] = v25;
      v76[1] = *MEMORY[0x1E696A588];
      v27 = [v11 localizedFailureReason];
      v28 = v27;
      v29 = @"Invalid 'Expression' definition.";
      if (v27)
      {
        v29 = v27;
      }

      v77[1] = v29;
      v76[2] = *MEMORY[0x1E696AA08];
      v30 = v11;
      if (!v11)
      {
        v30 = [MEMORY[0x1E695DFB0] null];
      }

      v55 = v30;
      v77[2] = v30;
      v76[3] = @"GCFailingKeyPathErrorKey";
      v31 = [v11 gc_failingKeyPath];
      v32 = v31;
      if (!v31)
      {
        v31 = MEMORY[0x1E695E0F0];
      }

      v33 = [v31 arrayByAddingObject:@"InputExpression"];
      v77[3] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:4];
      *v24 = [(NSError *)v59 gc_modelError:v34 userInfo:?];

      if (!v11)
      {
      }

      if (!v26)
      {
      }

      goto LABEL_64;
    }

    goto LABEL_65;
  }

  [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setInputExpression:v10];

  v64 = 0;
  v8 = [v6 gc_objectForKey:@"MinExpression" ofClass:objc_opt_class() error:&v64];
  v12 = v64;
  v13 = v12;
  if (!v8 && v12)
  {
    if (a4)
    {
      v35 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v75[0] = v26;
      v74[1] = *MEMORY[0x1E696A588];
      v36 = [v13 localizedFailureReason];
      v75[1] = v36;
      v37 = MEMORY[0x1E695DF20];
      v38 = v75;
      v39 = v74;
LABEL_38:
      v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:2];
      *a4 = [(NSError *)v35 gc_modelError:v40 userInfo:?];

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
      if (a4)
      {
        v60 = MEMORY[0x1E696ABC0];
        v72[0] = *MEMORY[0x1E696A578];
        v26 = [v11 localizedDescription];
        v36 = v26;
        if (!v26)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MinExpression"];
        }

        v73[0] = v36;
        v72[1] = *MEMORY[0x1E696A588];
        v41 = [v11 localizedFailureReason];
        v42 = @"Invalid 'Expression' definition.";
        v58 = v41;
        if (v41)
        {
          v42 = v41;
        }

        v73[1] = v42;
        v72[2] = *MEMORY[0x1E696AA08];
        v43 = v11;
        if (!v11)
        {
          v43 = [MEMORY[0x1E695DFB0] null];
        }

        v56 = v43;
        v73[2] = v43;
        v72[3] = @"GCFailingKeyPathErrorKey";
        v44 = [v11 gc_failingKeyPath];
        v45 = v44;
        if (!v44)
        {
          v44 = MEMORY[0x1E695E0F0];
        }

        v46 = [v44 arrayByAddingObject:@"MinExpression"];
        v73[3] = v46;
        v47 = MEMORY[0x1E695DF20];
        v48 = v73;
        v49 = v72;
LABEL_61:
        v54 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:4];
        *a4 = [(NSError *)v60 gc_modelError:v54 userInfo:?];

        if (!v11)
        {
        }

        if (v26)
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
  v8 = [v6 gc_objectForKey:@"MaxExpression" ofClass:objc_opt_class() error:&v62];
  v15 = v62;
  v13 = v15;
  if (!v8 && v15)
  {
    if (a4)
    {
      v35 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v71[0] = v26;
      v70[1] = *MEMORY[0x1E696A588];
      v36 = [v13 localizedFailureReason];
      v71[1] = v36;
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
    if (a4)
    {
      v60 = MEMORY[0x1E696ABC0];
      v68[0] = *MEMORY[0x1E696A578];
      v26 = [v11 localizedDescription];
      v36 = v26;
      if (!v26)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaxExpression"];
      }

      v69[0] = v36;
      v68[1] = *MEMORY[0x1E696A588];
      v50 = [v11 localizedFailureReason];
      v51 = @"Invalid 'Expression' definition.";
      v58 = v50;
      if (v50)
      {
        v51 = v50;
      }

      v69[1] = v51;
      v68[2] = *MEMORY[0x1E696AA08];
      v52 = v11;
      if (!v11)
      {
        v52 = [MEMORY[0x1E695DFB0] null];
      }

      v56 = v52;
      v69[2] = v52;
      v68[3] = @"GCFailingKeyPathErrorKey";
      v53 = [v11 gc_failingKeyPath];
      v45 = v53;
      if (!v53)
      {
        v53 = MEMORY[0x1E695E0F0];
      }

      v46 = [v53 arrayByAddingObject:@"MaxExpression"];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDataClampExpressionModel.m" lineNumber:115 description:@"'inputExpression' can not be nil"];
}

@end