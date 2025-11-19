@interface GCGenericDeviceDataInputElementValueExpressionModelBuilder
- (GCGenericDeviceDataInputElementValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceDataInputElementValueExpressionModelBuilder

- (void)initializeWithModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:v4];
  v5 = [v4 elementIdentifier];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setElementIdentifier:v5];

  v6 = [v4 scaleType];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setScaleType:v6];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setElementIdentifier:0];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setScaleType:-2];
}

- (id)build
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v9 build];
  v5 = [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self elementIdentifier];
  if (!v5)
  {
    [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v4[2] = [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self scaleType];

  return v4;
}

- (GCGenericDeviceDataInputElementValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v35[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29.receiver = self;
  v29.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v29 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
    goto LABEL_26;
  }

  v28 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v28];
  v9 = v28;
  if (!v8)
  {
    if (a4)
    {
      v23 = MEMORY[0x1E696ABC0];
      v34[0] = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v35[0] = v24;
      v34[1] = *MEMORY[0x1E696A588];
      v25 = [v9 localizedFailureReason];
      v35[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      *a4 = [(NSError *)v23 gc_modelError:v26 userInfo:?];
    }

    goto LABEL_25;
  }

  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v27 = 0;
  v10 = [v6 gc_objectForKey:@"ScaleType" ofClass:objc_opt_class() error:&v27];
  v11 = v27;
  v9 = v11;
  if (!v10 && v11)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v16 = MEMORY[0x1E696ABC0];
    v32[0] = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v33[0] = v17;
    v32[1] = *MEMORY[0x1E696A588];
    v18 = [v9 localizedFailureReason];
    v33[1] = v18;
    v19 = MEMORY[0x1E695DF20];
    v20 = v33;
    v21 = v32;
LABEL_23:
    v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:2];
    *a4 = [(NSError *)v16 gc_modelError:v22 userInfo:?];

LABEL_24:
LABEL_25:

LABEL_26:
    v13 = 0;
    goto LABEL_20;
  }

  if (v10)
  {
    if ([v10 isEqualToString:@"Raw"])
    {
      v12 = -3;
LABEL_18:
      [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)v7 setScaleType:v12];
      goto LABEL_19;
    }

    if ([v10 isEqualToString:@"None"])
    {
      v12 = -2;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Logical"])
    {
      v12 = -1;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Physical"])
    {
      v12 = 1;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Exponent"])
    {
      v12 = 2;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Calibrated"])
    {
      v12 = 0;
      goto LABEL_18;
    }

    if (!a4)
    {
      goto LABEL_24;
    }

    v16 = MEMORY[0x1E696ABC0];
    v30[0] = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v31[0] = v17;
    v30[1] = *MEMORY[0x1E696A588];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid '%@'.", v10, @"ScaleType"];
    v31[1] = v18;
    v19 = MEMORY[0x1E695DF20];
    v20 = v31;
    v21 = v30;
    goto LABEL_23;
  }

LABEL_19:

  v13 = v7;
LABEL_20:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceDataInputElementValueExpressionModel.m" lineNumber:122 description:@"'elementIdentifier' can not be nil"];
}

@end