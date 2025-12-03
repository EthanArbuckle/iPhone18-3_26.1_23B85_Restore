@interface GCGenericDevicePhysicalInputButtonModelBuilder
- (GCGenericDevicePhysicalInputButtonModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDevicePhysicalInputButtonModelBuilder

- (void)initializeWithModel:(id)model
{
  v6.receiver = self;
  v6.super_class = GCGenericDevicePhysicalInputButtonModelBuilder;
  modelCopy = model;
  [(GCGenericDevicePhysicalInputElementModelBuilder *)&v6 initializeWithModel:modelCopy];
  [modelCopy pressedThreshold];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setPressedThreshold:?];
  [modelCopy touchedThreshold];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setTouchedThreshold:?];
  -[GCGenericDevicePhysicalInputButtonModelBuilder setSourcePressedValueExtendedEventFieldIndex:](self, "setSourcePressedValueExtendedEventFieldIndex:", [modelCopy sourcePressedValueExtendedEventFieldIndex]);
  sourceTouchedValueExtendedEventFieldIndex = [modelCopy sourceTouchedValueExtendedEventFieldIndex];

  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setSourceTouchedValueExtendedEventFieldIndex:sourceTouchedValueExtendedEventFieldIndex];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDevicePhysicalInputButtonModelBuilder;
  [(GCGenericDevicePhysicalInputElementModelBuilder *)&v3 reset];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setPressedThreshold:0.0];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setTouchedThreshold:0.0];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setSourcePressedValueExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self setSourceTouchedValueExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (id)build
{
  v7.receiver = self;
  v7.super_class = GCGenericDevicePhysicalInputButtonModelBuilder;
  build = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v7 build];
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self pressedThreshold];
  build[6] = v4;
  [(GCGenericDevicePhysicalInputButtonModelBuilder *)self touchedThreshold];
  build[7] = v5;
  build[8] = [(GCGenericDevicePhysicalInputButtonModelBuilder *)self sourcePressedValueExtendedEventFieldIndex];
  build[9] = [(GCGenericDevicePhysicalInputButtonModelBuilder *)self sourceTouchedValueExtendedEventFieldIndex];

  return build;
}

- (GCGenericDevicePhysicalInputButtonModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v39[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v31.receiver = self;
  v31.super_class = GCGenericDevicePhysicalInputButtonModelBuilder;
  v7 = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v31 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_30;
  }

  v30 = 0;
  v8 = [representationCopy gc_objectForKey:@"PressedValueThreshold" ofClass:objc_opt_class() error:&v30];
  v9 = v30;
  v10 = v9;
  if (!v8 && v9)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x1E696ABC0];
    v38[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v39[0] = v21;
    v38[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v10 localizedFailureReason];
    v39[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v39;
    v25 = v38;
LABEL_28:
    v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
    *error = [(NSError *)v20 gc_modelError:v26 userInfo:?];

    goto LABEL_29;
  }

  if (v8)
  {
    [v8 doubleValue];
    [(GCGenericDevicePhysicalInputButtonModelBuilder *)v7 setPressedThreshold:?];
  }

  v29 = 0;
  v11 = [representationCopy gc_objectForKey:@"TouchedValueThreshold" ofClass:objc_opt_class() error:&v29];
  v12 = v29;
  v10 = v12;
  if (!v11 && v12)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x1E696ABC0];
    v36[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v37[0] = v21;
    v36[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v10 localizedFailureReason];
    v37[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v37;
    v25 = v36;
    goto LABEL_28;
  }

  if (v11)
  {
    [v11 doubleValue];
    [(GCGenericDevicePhysicalInputButtonModelBuilder *)v7 setTouchedThreshold:?];
  }

  v28 = 0;
  v13 = [representationCopy gc_objectForKey:@"PressedValueSource" ofClass:objc_opt_class() error:&v28];
  v14 = v28;
  v10 = v14;
  if (!v13 && v14)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x1E696ABC0];
    v34[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v35[0] = v21;
    v34[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v10 localizedFailureReason];
    v35[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v35;
    v25 = v34;
    goto LABEL_28;
  }

  if (v13)
  {
    -[GCGenericDevicePhysicalInputButtonModelBuilder setSourcePressedValueExtendedEventFieldIndex:](v7, "setSourcePressedValueExtendedEventFieldIndex:", [v13 integerValue]);
  }

  v27 = 0;
  v15 = [representationCopy gc_objectForKey:@"TouchedValueSource" ofClass:objc_opt_class() error:&v27];
  v16 = v27;
  v10 = v16;
  if (!v15 && v16)
  {
    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v32[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v33[0] = v21;
      v32[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v10 localizedFailureReason];
      v33[1] = localizedFailureReason;
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
    -[GCGenericDevicePhysicalInputButtonModelBuilder setSourceTouchedValueExtendedEventFieldIndex:](v7, "setSourceTouchedValueExtendedEventFieldIndex:", [v15 integerValue]);
  }

  v17 = v7;
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end