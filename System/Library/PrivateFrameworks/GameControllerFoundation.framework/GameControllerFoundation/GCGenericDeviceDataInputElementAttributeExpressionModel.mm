@interface GCGenericDeviceDataInputElementAttributeExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataInputElementAttributeExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataInputElementAttributeExpressionModel

- (GCGenericDeviceDataInputElementAttributeExpressionModel)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInputElementAttributeExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v10 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"elementIdentifier", v10.receiver, v10.super_class}];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attribute"];

  attribute = v4->_attribute;
  v4->_attribute = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataInputElementAttributeExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v7 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self elementIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"elementIdentifier"];

  v6 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self attribute];
  [v4 encodeObject:v6 forKey:@"attribute"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataInputElementAttributeExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v11 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self elementIdentifier];
    v6 = [v4 elementIdentifier];
    if ([v5 isEqual:v6])
    {
      v7 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self attribute];
      v8 = [v4 attribute];
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
  v4 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self elementIdentifier];
  v5 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self attribute];
  v6 = [v3 stringWithFormat:@"(element-attribute %@ %@)", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self elementIdentifier];
  v7 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self attribute];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t attribute = %@\n}", v5, self, v6, v7];

  return v8;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  v32[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self elementIdentifier];
  v8 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self attribute];
  v9 = [v6 inputElementWithIdentifier:v7];

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v32[0] = @"Invalid 'Input Element Attribute' expression.";
    v15 = *MEMORY[0x1E696A588];
    v31[0] = v14;
    v31[1] = v15;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not tracking any element with identifier %@", v7];
    v32[1] = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    *a4 = [v13 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v16];
    goto LABEL_12;
  }

  v10 = [v9 element];
  v11 = [v10 valueForElementKey:v8];

  if (!v11)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v29[0] = *MEMORY[0x1E696A578];
    v29[1] = v18;
    v30[0] = @"Invalid 'Input Element Attribute' expression.";
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element with identifier '%@' does not have a '%@' attribute.", v7, v8];
    v30[1] = v16;
    v19 = MEMORY[0x1E695DF20];
    v20 = v30;
    v21 = v29;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v17 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A588];
    v27[0] = *MEMORY[0x1E696A578];
    v27[1] = v22;
    v28[0] = @"Invalid 'Input Element Attribute' expression.";
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element with identifier '%@' has an '%@' attribute, but it's not a number.", v7, v8];
    v28[1] = v16;
    v19 = MEMORY[0x1E695DF20];
    v20 = v28;
    v21 = v27;
LABEL_11:
    v23 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:2];
    *a4 = [v17 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v23];

LABEL_12:
    a4 = 0;
    goto LABEL_13;
  }

  [v11 doubleValue];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__GCGenericDeviceDataInputElementAttributeExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_d8__0l;
  aBlock[4] = v12;
  a4 = _Block_copy(aBlock);
LABEL_13:

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v39[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (objc_opt_respondsToSelector())
  {
    v10 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self elementIdentifier];
    v11 = [(GCGenericDeviceDataInputElementAttributeExpressionModel *)self attribute];
    v12 = [v8 inputElementWithIdentifier:v10];
    v13 = v12;
    if (!v12)
    {
      if (!a5)
      {
        v16 = 0;
        goto LABEL_19;
      }

      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A588];
      v36[0] = *MEMORY[0x1E696A578];
      v36[1] = v21;
      v37[0] = @"Invalid 'Input Element Attribute' expression.";
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not tracking any element with identifier %@", v10];
      v37[1] = v15;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      *a5 = [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v22];
      goto LABEL_16;
    }

    v14 = [v12 element];
    v15 = [v14 valueForElementKey:v11];

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 doubleValue];
        v9[2](v9);
        v16 = [MEMORY[0x1E695DFB0] null];
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      if (a5)
      {
        v31 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A588];
        v32[0] = *MEMORY[0x1E696A578];
        v32[1] = v27;
        v33[0] = @"Invalid 'Input Element Attribute' expression.";
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element with identifier '%@' has an '%@' attribute, but it's not a number.", v10, v11];
        v33[1] = v22;
        v24 = MEMORY[0x1E695DF20];
        v25 = v33;
        v26 = v32;
        goto LABEL_15;
      }
    }

    else if (a5)
    {
      v31 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A588];
      v34[0] = *MEMORY[0x1E696A578];
      v34[1] = v23;
      v35[0] = @"Invalid 'Input Element Attribute' expression.";
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element with identifier '%@' does not have a '%@' attribute.", v10, v11];
      v35[1] = v22;
      v24 = MEMORY[0x1E695DF20];
      v25 = v35;
      v26 = v34;
LABEL_15:
      v28 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:2];
      *a5 = [v31 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v28];

LABEL_16:
    }

    v16 = 0;
    goto LABEL_18;
  }

  if (!a5)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v39[0] = @"Invalid 'Input Element Attribute' expression.";
  v19 = *MEMORY[0x1E696A588];
  v38[0] = v18;
  v38[1] = v19;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Context is tot tracking any input elements."];
  v39[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v17 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v11];
  *a5 = v16 = 0;
LABEL_20:

LABEL_21:
  v29 = *MEMORY[0x1E69E9840];

  return v16;
}

@end