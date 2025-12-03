@interface GCGenericDeviceDataElementExistsExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataElementExistsExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataElementExistsExpressionModel

- (GCGenericDeviceDataElementExistsExpressionModel)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataElementExistsExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v12 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"elementIdentifier", v12.receiver, v12.super_class}];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trueExpression"];
  trueExpression = v4->_trueExpression;
  v4->_trueExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"falseExpression"];

  falseExpression = v4->_falseExpression;
  v4->_falseExpression = v9;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataElementExistsExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v8 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataElementExistsExpressionModel *)self elementIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"elementIdentifier"];

  trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
  [coderCopy encodeObject:trueExpression forKey:@"trueExpression"];

  falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
  [coderCopy encodeObject:falseExpression forKey:@"falseExpression"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = GCGenericDeviceDataElementExistsExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v13 isEqual:equalCopy])
  {
    elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModel *)self elementIdentifier];
    elementIdentifier2 = [equalCopy elementIdentifier];
    if ([elementIdentifier isEqual:elementIdentifier2])
    {
      trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
      trueExpression2 = [equalCopy trueExpression];
      if ([trueExpression isEqual:trueExpression2])
      {
        falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
        falseExpression2 = [equalCopy falseExpression];
        v11 = [falseExpression isEqual:falseExpression2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModel *)self elementIdentifier];
  trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
  v6 = [trueExpression description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
  v9 = [falseExpression description];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v11 = [v3 stringWithFormat:@"(element-exists '%@'\n\t%@\n\t%@\n)", elementIdentifier, v7, v10];

  return v11;
}

- (id)debugDescription
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModel *)self elementIdentifier];
  trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
  v7 = [trueExpression debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
  v10 = [falseExpression debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v14 stringWithFormat:@"<%@ %p> {\n\t elementIdentifier = %@\n\t trueExpression = %@\n\t falseExpression = %@\n}", v4, self, elementIdentifier, v8, v11];

  return v12;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
  v8 = [contextCopy buildExpression:trueExpression error:error];

  if (v8)
  {
    falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
    v10 = [contextCopy buildExpression:falseExpression error:error];

    if (v10)
    {
      elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModel *)self elementIdentifier];
      v12 = [contextCopy elementWithIdentifier:elementIdentifier];
      v13 = v12 != 0;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E8415388;
      v19 = v13;
      v17 = v8;
      v18 = v10;
      v14 = _Block_copy(aBlock);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __97__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(uint64_t a1)
{
  v1 = 40;
  if (*(a1 + 48))
  {
    v1 = 32;
  }

  return (*(*(a1 + v1) + 16))();
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v63[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  if (objc_opt_respondsToSelector())
  {
    elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModel *)self elementIdentifier];
    v10 = [contextCopy elementWithIdentifier:elementIdentifier];
    v11 = v10 != 0;

    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v56[3] = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v55[3] = 0;
    if (objc_opt_respondsToSelector())
    {
      trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
      v13 = v53;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
      v53[3] = &unk_1E84153B0;
      v53[5] = v56;
      v14 = consumerCopy;
      v54 = v11;
      v53[4] = v14;
      v53[6] = v55;
      v52 = 0;
      v15 = &v52;
      v16 = [contextCopy buildReactiveExpression:trueExpression consumer:v53 error:&v52];
    }

    else
    {
      trueExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self trueExpression];
      v13 = v50;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
      v50[3] = &unk_1E84153B0;
      v50[5] = v56;
      v20 = consumerCopy;
      v51 = v11;
      v50[4] = v20;
      v50[6] = v55;
      v49 = 0;
      v15 = &v49;
      v16 = [trueExpression buildReactiveExpressionWithContext:contextCopy consumer:v50 error:&v49];
    }

    v21 = v16;
    v22 = *v15;

    if (v21)
    {

      v61[0] = v21;
      if (objc_opt_respondsToSelector())
      {
        falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
        v24 = v47;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
        v47[3] = &unk_1E84153B0;
        v47[5] = v55;
        v25 = consumerCopy;
        v48 = v11;
        v47[4] = v25;
        v47[6] = v56;
        v46 = 0;
        v26 = &v46;
        v27 = [contextCopy buildReactiveExpression:falseExpression consumer:v47 error:&v46];
      }

      else
      {
        falseExpression = [(GCGenericDeviceDataElementExistsExpressionModel *)self falseExpression];
        v24 = v44;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
        v44[3] = &unk_1E84153B0;
        v44[5] = v55;
        v33 = consumerCopy;
        v45 = v11;
        v44[4] = v33;
        v44[6] = v56;
        v43 = 0;
        v26 = &v43;
        v27 = [falseExpression buildReactiveExpressionWithContext:contextCopy consumer:v44 error:&v43];
      }

      v34 = v27;
      v29 = *v26;

      if (v34)
      {

        v61[1] = v34;
        error = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
        v29 = v34;
LABEL_18:

        v22 = v21;
LABEL_19:

        _Block_object_dispose(v55, 8);
        _Block_object_dispose(v56, 8);

        goto LABEL_21;
      }

      if (!error)
      {
        goto LABEL_18;
      }

      v35 = MEMORY[0x1E696ABC0];
      v57[0] = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v36 = *MEMORY[0x1E696A588];
      v58[0] = v32;
      v58[1] = @"The 'falseExpression' sub-expression failed to build.";
      v37 = *MEMORY[0x1E696AA08];
      v57[1] = v36;
      v57[2] = v37;
      v58[2] = v29;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
      *error = [v35 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v38];

      v22 = v21;
    }

    else
    {
      if (!error)
      {
        goto LABEL_19;
      }

      v28 = MEMORY[0x1E696ABC0];
      v59[0] = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v30 = *MEMORY[0x1E696A588];
      v60[0] = v29;
      v60[1] = @"The 'trueExpression' sub-expression failed to build.";
      v31 = *MEMORY[0x1E696AA08];
      v59[1] = v30;
      v59[2] = v31;
      v60[2] = v22;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
      *error = [v28 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v32];
    }

    error = 0;
    v21 = v22;
    goto LABEL_18;
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v62[0] = *MEMORY[0x1E696A578];
    v62[1] = v18;
    v63[0] = @"Invalid 'Element Exists' expression.";
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Context is tot tracking any elements."];
    v63[1] = v42;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
    *error = [v17 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v19];

    error = 0;
  }

LABEL_21:

  v39 = *MEMORY[0x1E69E9840];

  return error;
}

uint64_t __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 48;
  if (*(a1 + 56))
  {
    v2 = 40;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

uint64_t __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 48;
  if (*(a1 + 56))
  {
    v2 = 40;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

uint64_t __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 40;
  if (*(a1 + 56))
  {
    v2 = 48;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

uint64_t __114__GCGenericDeviceDataElementExistsExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 40;
  if (*(a1 + 56))
  {
    v2 = 48;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

@end