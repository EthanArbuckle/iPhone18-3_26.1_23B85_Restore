@interface GCGenericDeviceDataInputElementValueExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataInputElementValueExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataInputElementValueExpressionModel

- (GCGenericDeviceDataInputElementValueExpressionModel)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataInputElementValueExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v9 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"elementIdentifier", v9.receiver, v9.super_class}];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = [coderCopy decodeIntegerForKey:@"scaleType"];
  v4->_scaleType = v7;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataInputElementValueExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v6 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"elementIdentifier"];

  [coderCopy encodeInteger:-[GCGenericDeviceDataInputElementValueExpressionModel scaleType](self forKey:{"scaleType"), @"scaleType"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInputElementValueExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v10 isEqual:equalCopy])
  {
    elementIdentifier = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
    elementIdentifier2 = [equalCopy elementIdentifier];
    if ([elementIdentifier isEqual:elementIdentifier2])
    {
      scaleType = [(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType];
      v8 = scaleType == [equalCopy scaleType];
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
  elementIdentifier = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
  scaleType = [(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType];
  if ((scaleType + 3) > 5)
  {
    v6 = @"?";
  }

  else
  {
    v6 = off_1E8414A30[scaleType + 3];
  }

  v7 = [v3 stringWithFormat:@"(element-value %@ %@)", elementIdentifier, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  elementIdentifier = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t scaleType = %zi\n}", v5, self, elementIdentifier, -[GCGenericDeviceDataInputElementValueExpressionModel scaleType](self, "scaleType")];

  return v7;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v25[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  elementIdentifier = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
  v8 = [contextCopy elementWithIdentifier:elementIdentifier];

  if (v8)
  {
    if (([(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType]+ 3) < 6)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __101__GCGenericDeviceDataInputElementValueExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E84149E8;
      v20 = v8;
      selfCopy = self;
      v9 = _Block_copy(aBlock);
      v10 = v20;
LABEL_6:

      goto LABEL_7;
    }

    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v22[0] = *MEMORY[0x1E696A578];
      v22[1] = v18;
      v23[0] = @"Invalid 'Input Element Value' expression.";
      v23[1] = @"Unsupported valueType.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v17 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v10];
      *error = v9 = 0;
      goto LABEL_6;
    }
  }

  else if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v25[0] = @"Invalid 'Input Element Value' expression.";
    v13 = *MEMORY[0x1E696A588];
    v24[0] = v12;
    v24[1] = v13;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not tracking any element with identifier %@", elementIdentifier];
    v25[1] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *error = [v11 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v14];

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

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v33[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  if (objc_opt_respondsToSelector())
  {
    elementIdentifier = [(GCGenericDeviceDataInputElementValueExpressionModel *)self elementIdentifier];
    v11 = [contextCopy inputElementWithIdentifier:elementIdentifier];
    if (v11)
    {
      if (([(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType]+ 3) <= 5)
      {
        scaleType = [(GCGenericDeviceDataInputElementValueExpressionModel *)self scaleType];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __118__GCGenericDeviceDataInputElementValueExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
        v26[3] = &unk_1E8414A10;
        v13 = consumerCopy;
        v27 = v13;
        v14 = [v11 registerScaled:scaleType valueChangedHandler:v26];

        [v11 scaledValue:{-[GCGenericDeviceDataInputElementValueExpressionModel scaleType](self, "scaleType")}];
        v13[2](v13);
LABEL_11:

        goto LABEL_12;
      }

      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A588];
        v28[0] = *MEMORY[0x1E696A578];
        v28[1] = v25;
        v29[0] = @"Invalid 'Input Element Value' expression.";
        v29[1] = @"Unsupported valueType.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
        *error = [v24 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v20];
        goto LABEL_9;
      }
    }

    else if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A588];
      v30[0] = *MEMORY[0x1E696A578];
      v30[1] = v19;
      v31[0] = @"Invalid 'Input Element Value' expression.";
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not tracking any element with identifier %@", elementIdentifier];
      v31[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      *error = [v18 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v21];

LABEL_9:
    }

    v14 = 0;
    goto LABEL_11;
  }

  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v33[0] = @"Invalid 'Input Element Value' expression.";
    v17 = *MEMORY[0x1E696A588];
    v32[0] = v16;
    v32[1] = v17;
    elementIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"Context is tot tracking any input elements."];
    v33[1] = elementIdentifier;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v15 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v11];
    *error = v14 = 0;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

@end