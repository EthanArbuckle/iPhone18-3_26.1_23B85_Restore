@interface GCGenericDeviceInputGamepadEventFieldModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceInputGamepadEventFieldModel)init;
- (GCGenericDeviceInputGamepadEventFieldModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceInputGamepadEventFieldModel

- (GCGenericDeviceInputGamepadEventFieldModel)init
{
  [(GCGenericDeviceInputGamepadEventFieldModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceInputGamepadEventFieldModel)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceInputGamepadEventFieldModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceInputGamepadEventFieldModel *)&v8 init];
  v4->_extendedIndex = [coderCopy decodeIntegerForKey:{@"extendedIndex", v8.receiver, v8.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceExpression"];

  sourceExpression = v4->_sourceExpression;
  v4->_sourceExpression = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[GCGenericDeviceInputGamepadEventFieldModel extendedIndex](self forKey:{"extendedIndex"), @"extendedIndex"}];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  [coderCopy encodeObject:sourceExpression forKey:@"sourceExpression"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  extendedIndex = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  if (extendedIndex != [equalCopy extendedIndex])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  sourceExpression2 = [equalCopy sourceExpression];
  v8 = [sourceExpression isEqual:sourceExpression2];

LABEL_9:
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  extendedIndex = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v6 = [v3 stringWithFormat:@"[%zd] <- %@", extendedIndex, sourceExpression];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  extendedIndex = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t extendedIndex = %zd\n\t sourceExpression = %@\n}", v5, self, extendedIndex, sourceExpression];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v47[2] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v41[0] = 0;
  v8 = [representation gc_objectForKey:@"ExtendedIndex" ofClass:objc_opt_class() error:v41];
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
    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v46[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v47[0] = v21;
      v46[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v10 localizedFailureReason];
      v47[1] = localizedFailureReason;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
      *error = [(NSError *)v20 gc_modelError:v23 userInfo:?];
    }

    goto LABEL_41;
  }

  if (v8)
  {
    [v7 setExtendedIndex:{objc_msgSend(v8, "integerValue")}];
  }

  v40 = 0;
  v12 = [representation gc_objectForKey:@"SourceExpression" ofClass:objc_opt_class() error:&v40];
  v13 = v40;
  v14 = v13;
  if (!v12 && v13)
  {
    if (!error)
    {
      v16 = v13;
      goto LABEL_40;
    }

    v24 = MEMORY[0x1E696ABC0];
    v44[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v45[0] = v25;
    v44[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v14 localizedFailureReason];
    v45[1] = localizedFailureReason2;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    *error = [(NSError *)v24 gc_modelError:v26 userInfo:?];

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
    build = [v7 build];
    goto LABEL_15;
  }

  if (error)
  {
    v37 = MEMORY[0x1E696ABC0];
    v42[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v16 localizedDescription];
    v25 = localizedDescription;
    if (!localizedDescription)
    {
      localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    localizedFailureReason2 = localizedDescription;
    v43[0] = localizedDescription;
    v42[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v16 localizedFailureReason];
    v29 = localizedFailureReason3;
    if (!localizedFailureReason3)
    {
      localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"SourceExpression"];
    }

    v36 = localizedFailureReason3;
    v43[1] = localizedFailureReason3;
    v42[2] = *MEMORY[0x1E696AA08];
    null = v16;
    if (!v16)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v35 = null;
    v43[2] = null;
    v42[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v16 gc_failingKeyPath];
    v32 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v33 = [gc_failingKeyPath arrayByAddingObject:@"SourceExpression"];
    v43[3] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
    *error = [(NSError *)v37 gc_modelError:v34 userInfo:?];

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
  build = 0;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];

  return build;
}

@end