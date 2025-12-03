@interface GCGenericDeviceDriverPropertyModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverPropertyModel)init;
- (GCGenericDeviceDriverPropertyModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDriverPropertyModel

- (GCGenericDeviceDriverPropertyModel)init
{
  [(GCGenericDeviceDriverPropertyModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverPropertyModel)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDriverPropertyModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDriverPropertyModel *)&v10 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"name", v10.receiver, v10.super_class}];
  name = v4->_name;
  v4->_name = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueExpression"];

  valueExpression = v4->_valueExpression;
  v4->_valueExpression = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  [coderCopy encodeObject:valueExpression forKey:@"valueExpression"];
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
    if (([(GCGenericDeviceDriverPropertyModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_8:
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverPropertyModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_8;
    }
  }

  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  name2 = [equalCopy name];
  if ([name isEqual:name2])
  {
    valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
    valueExpression2 = [equalCopy valueExpression];
    v9 = [valueExpression isEqual:valueExpression2];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  v6 = [v3 stringWithFormat:@"'%@' <- %@", name, valueExpression];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t name = %@\n\t valueExpression = %@\n}", v5, self, name, valueExpression];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v45[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v39[0] = 0;
  v7 = [representation gc_requiredObjectForKey:@"Name" ofClass:objc_opt_class() error:v39];
  v8 = v39[0];
  if (v7)
  {
    [v6 setName:v7];

    v38 = 0;
    v9 = [representation gc_requiredObjectForKey:@"ValueExpression" ofClass:objc_opt_class() error:&v38];
    v10 = v38;
    if (v9)
    {
      v37 = 0;
      v11 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v9 error:&v37];
      v12 = v37;

      if (v11)
      {
        [v6 setValueExpression:v11];

        build = [v6 build];
        goto LABEL_5;
      }

      if (error)
      {
        v35 = MEMORY[0x1E696ABC0];
        v40[0] = *MEMORY[0x1E696A578];
        localizedDescription = [v12 localizedDescription];
        v25 = localizedDescription;
        if (!localizedDescription)
        {
          localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
        }

        v34 = localizedDescription;
        v41[0] = localizedDescription;
        v40[1] = *MEMORY[0x1E696A588];
        localizedFailureReason = [v12 localizedFailureReason];
        v27 = localizedFailureReason;
        if (!localizedFailureReason)
        {
          localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"ValueExpression"];
        }

        v33 = localizedFailureReason;
        v41[1] = localizedFailureReason;
        v40[2] = *MEMORY[0x1E696AA08];
        null = v12;
        if (!v12)
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v41[2] = null;
        v40[3] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath = [v12 gc_failingKeyPath];
        v30 = gc_failingKeyPath;
        if (!gc_failingKeyPath)
        {
          gc_failingKeyPath = MEMORY[0x1E695E0F0];
        }

        v31 = [gc_failingKeyPath arrayByAddingObject:@"ValueExpression"];
        v41[3] = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
        *error = [(NSError *)v35 gc_modelError:v32 userInfo:?];

        if (!v12)
        {
        }

        if (!v27)
        {
        }

        if (!v25)
        {
        }
      }
    }

    else
    {
      if (error)
      {
        v20 = MEMORY[0x1E696ABC0];
        v42[0] = *MEMORY[0x1E696A578];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
        v43[0] = v21;
        v42[1] = *MEMORY[0x1E696A588];
        localizedFailureReason2 = [v10 localizedFailureReason];
        v43[1] = localizedFailureReason2;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
        *error = [(NSError *)v20 gc_modelError:v23 userInfo:?];
      }
    }
  }

  else
  {
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v44[0] = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v45[0] = v17;
      v44[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v8 localizedFailureReason];
      v45[1] = localizedFailureReason3;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
      *error = [(NSError *)v16 gc_modelError:v19 userInfo:?];
    }
  }

  build = 0;
LABEL_5:

  v14 = *MEMORY[0x1E69E9840];

  return build;
}

@end