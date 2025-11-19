@interface GCGenericDeviceDataAddExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataAddExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataAddExpressionModel

- (GCGenericDeviceDataAddExpressionModel)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataAddExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v10 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"leftExpression", v10.receiver, v10.super_class}];
  leftExpression = v4->_leftExpression;
  v4->_leftExpression = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rightExpression"];

  rightExpression = v4->_rightExpression;
  v4->_rightExpression = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataAddExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v7 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression:v7.receiver];
  [v4 encodeObject:v5 forKey:@"leftExpression"];

  v6 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
  [v4 encodeObject:v6 forKey:@"rightExpression"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataAddExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v11 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression];
    v6 = [v4 leftExpression];
    if ([v5 isEqual:v6])
    {
      v7 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
      v8 = [v4 rightExpression];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression];
  v5 = [v4 description];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v7 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
  v8 = [v7 description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v10 = [v3 stringWithFormat:@"(add\n\t%@\n\t%@\n)", v6, v9];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression];
  v7 = [v6 debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
  v10 = [v9 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v3 stringWithFormat:@"<%@ %p> {\n\t left = %@\n\t right = %@\n}", v5, self, v8, v11];

  return v12;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  v44[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_respondsToSelector();
  v8 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression];
  v9 = v8;
  if (v7)
  {
    v40 = 0;
    v10 = &v40;
    v11 = [v6 buildExpression:v8 error:&v40];
  }

  else
  {
    v39 = 0;
    v10 = &v39;
    v11 = [v8 buildExpressionWithContext:v6 error:&v39];
  }

  v12 = v11;
  v13 = *v10;

  if (v12)
  {
    v14 = _Block_copy(v12);

    v15 = objc_opt_respondsToSelector();
    v16 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
    v17 = v16;
    if (v15)
    {
      v38 = 0;
      v18 = &v38;
      v19 = [v6 buildExpression:v16 error:&v38];
    }

    else
    {
      v37 = 0;
      v18 = &v37;
      v19 = [v16 buildExpressionWithContext:v6 error:&v37];
    }

    v26 = v19;
    v21 = *v18;

    if (v26)
    {
      v27 = _Block_copy(v26);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __87__GCGenericDeviceDataAddExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E8413A80;
      v13 = v14;
      v35 = v13;
      v36 = v27;
      v21 = v27;
      v25 = _Block_copy(aBlock);

      v24 = v35;
    }

    else
    {
      if (!a4)
      {
        v25 = 0;
        v13 = v14;
        goto LABEL_15;
      }

      v28 = MEMORY[0x1E696ABC0];
      v41[0] = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v29 = *MEMORY[0x1E696A588];
      v42[0] = v24;
      v42[1] = @"The 'rightExpression' sub-expression failed to build.";
      v30 = *MEMORY[0x1E696AA08];
      v41[1] = v29;
      v41[2] = v30;
      v42[2] = v21;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
      *a4 = [v28 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v31];

      v25 = 0;
      v13 = v14;
    }

LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (a4)
  {
    v20 = MEMORY[0x1E696ABC0];
    v43[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v44[0] = v21;
    v44[1] = @"The 'leftExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v43[1] = v22;
    v43[2] = v23;
    v44[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *a4 = v25 = 0;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_16:

  v32 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v46[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  if (objc_opt_respondsToSelector())
  {
    v10 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression];
    v11 = v39;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __104__GCGenericDeviceDataAddExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v39[3] = &unk_1E8413AA8;
    v39[5] = v41;
    v39[4] = v9;
    v39[6] = v40;
    v38 = 0;
    v12 = &v38;
    v13 = [v8 buildReactiveExpression:v10 consumer:v39 error:&v38];
  }

  else
  {
    v10 = [(GCGenericDeviceDataAddExpressionModel *)self leftExpression];
    v11 = v37;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __104__GCGenericDeviceDataAddExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v37[3] = &unk_1E8413AA8;
    v37[5] = v41;
    v37[4] = v9;
    v37[6] = v40;
    v36 = 0;
    v12 = &v36;
    v13 = [v10 buildReactiveExpressionWithContext:v8 consumer:v37 error:&v36];
  }

  v14 = v13;
  v15 = *v12;

  if (!v14)
  {
    if (!a5)
    {
      goto LABEL_16;
    }

    v20 = MEMORY[0x1E696ABC0];
    v44[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v45[0] = v21;
    v45[1] = @"The 'leftExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v44[1] = v22;
    v44[2] = v23;
    v45[2] = v15;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
    *a5 = [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    goto LABEL_14;
  }

  v46[0] = v14;
  if (objc_opt_respondsToSelector())
  {
    v16 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
    v17 = v35;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __104__GCGenericDeviceDataAddExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v35[3] = &unk_1E8413AA8;
    v35[5] = v40;
    v35[4] = v9;
    v35[6] = v41;
    v34 = 0;
    v18 = &v34;
    v19 = [v8 buildReactiveExpression:v16 consumer:v35 error:&v34];
  }

  else
  {
    v16 = [(GCGenericDeviceDataAddExpressionModel *)self rightExpression];
    v17 = v33;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __104__GCGenericDeviceDataAddExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v33[3] = &unk_1E8413AA8;
    v33[5] = v40;
    v33[4] = v9;
    v33[6] = v41;
    v32 = 0;
    v18 = &v32;
    v19 = [v16 buildReactiveExpressionWithContext:v8 consumer:v33 error:&v32];
  }

  v25 = v19;
  v21 = *v18;

  if (!v25)
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    v26 = MEMORY[0x1E696ABC0];
    v42[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v27 = *MEMORY[0x1E696A588];
    v43[0] = v24;
    v43[1] = @"The 'rightExpression' sub-expression failed to build.";
    v28 = *MEMORY[0x1E696AA08];
    v42[1] = v27;
    v42[2] = v28;
    v43[2] = v21;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    *a5 = [v26 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v29];

    v15 = v14;
LABEL_14:

    a5 = 0;
    v14 = v15;
    goto LABEL_15;
  }

  v46[1] = v25;
  a5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v21 = v25;
LABEL_15:

  v15 = v14;
LABEL_16:

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);

  v30 = *MEMORY[0x1E69E9840];

  return a5;
}

@end