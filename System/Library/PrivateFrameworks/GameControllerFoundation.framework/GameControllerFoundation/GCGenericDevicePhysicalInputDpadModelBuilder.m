@interface GCGenericDevicePhysicalInputDpadModelBuilder
- (GCGenericDevicePhysicalInputDpadModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDevicePhysicalInputDpadModelBuilder

- (void)initializeWithModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  v4 = a3;
  [(GCGenericDevicePhysicalInputElementModelBuilder *)&v6 initializeWithModel:v4];
  -[GCGenericDevicePhysicalInputDpadModelBuilder setSourceUpExtendedEventFieldIndex:](self, "setSourceUpExtendedEventFieldIndex:", [v4 sourceUpExtendedEventFieldIndex]);
  -[GCGenericDevicePhysicalInputDpadModelBuilder setSourceDownExtendedEventFieldIndex:](self, "setSourceDownExtendedEventFieldIndex:", [v4 sourceDownExtendedEventFieldIndex]);
  -[GCGenericDevicePhysicalInputDpadModelBuilder setSourceLeftExtendedEventFieldIndex:](self, "setSourceLeftExtendedEventFieldIndex:", [v4 sourceLeftExtendedEventFieldIndex]);
  v5 = [v4 sourceRightExtendedEventFieldIndex];

  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceRightExtendedEventFieldIndex:v5];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  [(GCGenericDevicePhysicalInputElementModelBuilder *)&v3 reset];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceUpExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceDownExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceLeftExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceRightExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (id)build
{
  v5.receiver = self;
  v5.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  v3 = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v5 build];
  v3[6] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceUpExtendedEventFieldIndex];
  v3[7] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceDownExtendedEventFieldIndex];
  v3[8] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceLeftExtendedEventFieldIndex];
  v3[9] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceRightExtendedEventFieldIndex];

  return v3;
}

- (GCGenericDevicePhysicalInputDpadModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31.receiver = self;
  v31.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  v7 = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v31 initWithDictionaryRepresentation:v6 error:a4];
  if (!v7)
  {
    goto LABEL_30;
  }

  v30 = 0;
  v8 = [v6 gc_objectForKey:@"UpValueSource" ofClass:objc_opt_class() error:&v30];
  v9 = v30;
  v10 = v9;
  if (!v8 && v9)
  {
    if (!a4)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x1E696ABC0];
    v38[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v39[0] = v21;
    v38[1] = *MEMORY[0x1E696A588];
    v22 = [v10 localizedFailureReason];
    v39[1] = v22;
    v23 = MEMORY[0x1E695DF20];
    v24 = v39;
    v25 = v38;
LABEL_28:
    v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
    *a4 = [(NSError *)v20 gc_modelError:v26 userInfo:?];

    goto LABEL_29;
  }

  if (v8)
  {
    [v8 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceUpExtendedEventFieldIndex:?];
  }

  v29 = 0;
  v11 = [v6 gc_objectForKey:@"DownValueSource" ofClass:objc_opt_class() error:&v29];
  v12 = v29;
  v10 = v12;
  if (!v11 && v12)
  {
    if (!a4)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x1E696ABC0];
    v36[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v37[0] = v21;
    v36[1] = *MEMORY[0x1E696A588];
    v22 = [v10 localizedFailureReason];
    v37[1] = v22;
    v23 = MEMORY[0x1E695DF20];
    v24 = v37;
    v25 = v36;
    goto LABEL_28;
  }

  if (v11)
  {
    [v11 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceDownExtendedEventFieldIndex:?];
  }

  v28 = 0;
  v13 = [v6 gc_objectForKey:@"LeftValueSource" ofClass:objc_opt_class() error:&v28];
  v14 = v28;
  v10 = v14;
  if (!v13 && v14)
  {
    if (!a4)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x1E696ABC0];
    v34[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v35[0] = v21;
    v34[1] = *MEMORY[0x1E696A588];
    v22 = [v10 localizedFailureReason];
    v35[1] = v22;
    v23 = MEMORY[0x1E695DF20];
    v24 = v35;
    v25 = v34;
    goto LABEL_28;
  }

  if (v13)
  {
    [v13 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceLeftExtendedEventFieldIndex:?];
  }

  v27 = 0;
  v15 = [v6 gc_objectForKey:@"RightValueSource" ofClass:objc_opt_class() error:&v27];
  v16 = v27;
  v10 = v16;
  if (!v15 && v16)
  {
    if (a4)
    {
      v20 = MEMORY[0x1E696ABC0];
      v32[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v33[0] = v21;
      v32[1] = *MEMORY[0x1E696A588];
      v22 = [v10 localizedFailureReason];
      v33[1] = v22;
      v23 = MEMORY[0x1E695DF20];
      v24 = v33;
      v25 = v32;
      goto LABEL_28;
    }

LABEL_29:

LABEL_30:
    v17 = 0;
    goto LABEL_19;
  }

  if (v15)
  {
    [v15 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceRightExtendedEventFieldIndex:?];
  }

  v17 = v7;
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end