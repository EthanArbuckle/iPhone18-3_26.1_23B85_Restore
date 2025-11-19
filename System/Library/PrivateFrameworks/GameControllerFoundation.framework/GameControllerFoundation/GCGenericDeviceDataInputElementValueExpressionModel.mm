@interface GCGenericDeviceDataInputElementValueExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataInputElementValueExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataInputElementValueExpressionModel

- (GCGenericDeviceDataInputElementValueExpressionModel)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataInputElementValueExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v9 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"elementIdentifier", v9.receiver, v9.super_class}];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = [v3 decodeIntegerForKey:@"scaleType"];
  v4->_scaleType = v7;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataInputElementValueExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v6 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"elementIdentifier"];

  [v4 encodeInteger:-[GCGenericDeviceDataInputElementValueExpressionModel scaleType](self forKey:{"scaleType"), @"scaleType"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInputElementValueExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v10 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
    v6 = [v4 elementIdentifier];
    if ([v5 isEqual:v6])
    {
      v7 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType];
      v8 = v7 == [v4 scaleType];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
  v5 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType];
  if ((v5 + 3) > 5)
  {
    v6 = @"?";
  }

  else
  {
    v6 = off_1E8414A30[v5 + 3];
  }

  v7 = [v3 stringWithFormat:@"(element-value %@ %@)", v4, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t scaleType = %zi\n}", v5, self, v6, -[GCGenericDeviceDataInputElementValueExpressionModel scaleType](self, "scaleType")];

  return v7;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
  v8 = [v6 elementWithIdentifier:v7];

  if (v8)
  {
    if (([(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType]+ 3) < 6)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __101__GCGenericDeviceDataInputElementValueExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E84149E8;
      v20 = v8;
      v21 = self;
      v9 = _Block_copy(aBlock);
      v10 = v20;
LABEL_6:

      goto LABEL_7;
    }

    if (a4)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v22[0] = *MEMORY[0x1E696A578];
      v22[1] = v18;
      v23[0] = @"Invalid 'Input Element Value' expression.";
      v23[1] = @"Unsupported valueType.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v17 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v10];
      *a4 = v9 = 0;
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v25[0] = @"Invalid 'Input Element Value' expression.";
    v13 = *MEMORY[0x1E696A588];
    v24[0] = v12;
    v24[1] = v13;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not tracking any element with identifier %@", v7];
    v25[1] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *a4 = [v11 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v14];

    v9 = 0;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __101__GCGenericDeviceDataInputElementValueExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) scaleType];

  return [v1 scaledValue:v2];
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v33[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (objc_opt_respondsToSelector())
  {
    v10 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
    v11 = [v8 inputElementWithIdentifier:v10];
    if (v11)
    {
      if (([(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType]+ 3) <= 5)
      {
        v12 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __118__GCGenericDeviceDataInputElementValueExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
        v26[3] = &unk_1E8414A10;
        v13 = v9;
        v27 = v13;
        v14 = [v11 registerScaled:v12 valueChangedHandler:v26];

        [v11 scaledValue:{-[GCGenericDeviceDataInputElementValueExpressionModel scaleType](self, "scaleType")}];
        v13[2](v13);
LABEL_11:

        goto LABEL_12;
      }

      if (a5)
      {
        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A588];
        v28[0] = *MEMORY[0x1E696A578];
        v28[1] = v25;
        v29[0] = @"Invalid 'Input Element Value' expression.";
        v29[1] = @"Unsupported valueType.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
        *a5 = [v24 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v20];
        goto LABEL_9;
      }
    }

    else if (a5)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A588];
      v30[0] = *MEMORY[0x1E696A578];
      v30[1] = v19;
      v31[0] = @"Invalid 'Input Element Value' expression.";
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not tracking any element with identifier %@", v10];
      v31[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      *a5 = [v18 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v21];

LABEL_9:
    }

    v14 = 0;
    goto LABEL_11;
  }

  if (a5)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v33[0] = @"Invalid 'Input Element Value' expression.";
    v17 = *MEMORY[0x1E696A588];
    v32[0] = v16;
    v32[1] = v17;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Context is tot tracking any input elements."];
    v33[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v15 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v11];
    *a5 = v14 = 0;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

@end