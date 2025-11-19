@interface GCGenericDeviceInputGamepadEventFieldModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceInputGamepadEventFieldModel)init;
- (GCGenericDeviceInputGamepadEventFieldModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceInputGamepadEventFieldModel

- (GCGenericDeviceInputGamepadEventFieldModel)init
{
  [(GCGenericDeviceInputGamepadEventFieldModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceInputGamepadEventFieldModel)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceInputGamepadEventFieldModel;
  v3 = a3;
  v4 = [(GCGenericDeviceInputGamepadEventFieldModel *)&v8 init];
  v4->_extendedIndex = [v3 decodeIntegerForKey:{@"extendedIndex", v8.receiver, v8.super_class}];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceExpression"];

  sourceExpression = v4->_sourceExpression;
  v4->_sourceExpression = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[GCGenericDeviceInputGamepadEventFieldModel extendedIndex](self forKey:{"extendedIndex"), @"extendedIndex"}];
  v5 = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  [v4 encodeObject:v5 forKey:@"sourceExpression"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(GCGenericDeviceInputGamepadEventFieldModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceInputGamepadEventFieldModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_8;
    }
  }

  v5 = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  if (v5 != [v4 extendedIndex])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v7 = [v4 sourceExpression];
  v8 = [v6 isEqual:v7];

LABEL_9:
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  v5 = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v6 = [v3 stringWithFormat:@"[%zd] <- %@", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  v7 = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t extendedIndex = %zd\n\t sourceExpression = %@\n}", v5, self, v6, v7];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v47[2] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v41[0] = 0;
  v8 = [a3 gc_objectForKey:@"ExtendedIndex" ofClass:objc_opt_class() error:v41];
  v9 = v41[0];
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    if (a4)
    {
      v20 = MEMORY[0x1E696ABC0];
      v46[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v47[0] = v21;
      v46[1] = *MEMORY[0x1E696A588];
      v22 = [v10 localizedFailureReason];
      v47[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
      *a4 = [(NSError *)v20 gc_modelError:v23 userInfo:?];
    }

    goto LABEL_41;
  }

  if (v8)
  {
    [v7 setExtendedIndex:{objc_msgSend(v8, "integerValue")}];
  }

  v40 = 0;
  v12 = [a3 gc_objectForKey:@"SourceExpression" ofClass:objc_opt_class() error:&v40];
  v13 = v40;
  v14 = v13;
  if (!v12 && v13)
  {
    if (!a4)
    {
      v16 = v13;
      goto LABEL_40;
    }

    v24 = MEMORY[0x1E696ABC0];
    v44[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v45[0] = v25;
    v44[1] = *MEMORY[0x1E696A588];
    v38 = [v14 localizedFailureReason];
    v45[1] = v38;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    *a4 = [(NSError *)v24 gc_modelError:v26 userInfo:?];

    v16 = v14;
LABEL_23:

LABEL_38:
    goto LABEL_40;
  }

  if (!v12)
  {
    v16 = v13;
    goto LABEL_14;
  }

  v39 = 0;
  v15 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v12 error:&v39];
  v16 = v39;

  if (v15)
  {
    [v7 setSourceExpression:v15];

LABEL_14:
    v17 = [v7 build];
    goto LABEL_15;
  }

  if (a4)
  {
    v37 = MEMORY[0x1E696ABC0];
    v42[0] = *MEMORY[0x1E696A578];
    v27 = [v16 localizedDescription];
    v25 = v27;
    if (!v27)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }

    v38 = v27;
    v43[0] = v27;
    v42[1] = *MEMORY[0x1E696A588];
    v28 = [v16 localizedFailureReason];
    v29 = v28;
    if (!v28)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"SourceExpression"];
    }

    v36 = v28;
    v43[1] = v28;
    v42[2] = *MEMORY[0x1E696AA08];
    v30 = v16;
    if (!v16)
    {
      v30 = [MEMORY[0x1E695DFB0] null];
    }

    v35 = v30;
    v43[2] = v30;
    v42[3] = @"GCFailingKeyPathErrorKey";
    v31 = [v16 gc_failingKeyPath];
    v32 = v31;
    if (!v31)
    {
      v31 = MEMORY[0x1E695E0F0];
    }

    v33 = [v31 arrayByAddingObject:@"SourceExpression"];
    v43[3] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
    *a4 = [(NSError *)v37 gc_modelError:v34 userInfo:?];

    if (!v16)
    {
    }

    if (!v29)
    {
    }

    if (v25)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

LABEL_40:

LABEL_41:
  v17 = 0;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end