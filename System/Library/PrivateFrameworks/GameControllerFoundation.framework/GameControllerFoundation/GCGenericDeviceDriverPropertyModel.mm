@interface GCGenericDeviceDriverPropertyModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDriverPropertyModel)init;
- (GCGenericDeviceDriverPropertyModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDriverPropertyModel

- (GCGenericDeviceDriverPropertyModel)init
{
  [(GCGenericDeviceDriverPropertyModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverPropertyModel)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDriverPropertyModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDriverPropertyModel *)&v10 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"name", v10.receiver, v10.super_class}];
  name = v4->_name;
  v4->_name = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"valueExpression"];

  valueExpression = v4->_valueExpression;
  v4->_valueExpression = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceDriverPropertyModel *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  [v4 encodeObject:v6 forKey:@"valueExpression"];
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

  v5 = [(GCGenericDeviceDriverPropertyModel *)self name];
  v6 = [v4 name];
  if ([v5 isEqual:v6])
  {
    v7 = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
    v8 = [v4 valueExpression];
    v9 = [v7 isEqual:v8];
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
  v4 = [(GCGenericDeviceDriverPropertyModel *)self name];
  v5 = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  v6 = [v3 stringWithFormat:@"'%@' <- %@", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceDriverPropertyModel *)self name];
  v7 = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t name = %@\n\t valueExpression = %@\n}", v5, self, v6, v7];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v45[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v39[0] = 0;
  v7 = [a3 gc_requiredObjectForKey:@"Name" ofClass:objc_opt_class() error:v39];
  v8 = v39[0];
  if (v7)
  {
    [v6 setName:v7];

    v38 = 0;
    v9 = [a3 gc_requiredObjectForKey:@"ValueExpression" ofClass:objc_opt_class() error:&v38];
    v10 = v38;
    if (v9)
    {
      v37 = 0;
      v11 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v9 error:&v37];
      v12 = v37;

      if (v11)
      {
        [v6 setValueExpression:v11];

        v13 = [v6 build];
        goto LABEL_5;
      }

      if (a4)
      {
        v35 = MEMORY[0x1E696ABC0];
        v40[0] = *MEMORY[0x1E696A578];
        v24 = [v12 localizedDescription];
        v25 = v24;
        if (!v24)
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
        }

        v34 = v24;
        v41[0] = v24;
        v40[1] = *MEMORY[0x1E696A588];
        v26 = [v12 localizedFailureReason];
        v27 = v26;
        if (!v26)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"ValueExpression"];
        }

        v33 = v26;
        v41[1] = v26;
        v40[2] = *MEMORY[0x1E696AA08];
        v28 = v12;
        if (!v12)
        {
          v28 = [MEMORY[0x1E695DFB0] null];
        }

        v41[2] = v28;
        v40[3] = @"GCFailingKeyPathErrorKey";
        v29 = [v12 gc_failingKeyPath];
        v30 = v29;
        if (!v29)
        {
          v29 = MEMORY[0x1E695E0F0];
        }

        v31 = [v29 arrayByAddingObject:@"ValueExpression"];
        v41[3] = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
        *a4 = [(NSError *)v35 gc_modelError:v32 userInfo:?];

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
      if (a4)
      {
        v20 = MEMORY[0x1E696ABC0];
        v42[0] = *MEMORY[0x1E696A578];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
        v43[0] = v21;
        v42[1] = *MEMORY[0x1E696A588];
        v22 = [v10 localizedFailureReason];
        v43[1] = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
        *a4 = [(NSError *)v20 gc_modelError:v23 userInfo:?];
      }
    }
  }

  else
  {
    if (a4)
    {
      v16 = MEMORY[0x1E696ABC0];
      v44[0] = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v45[0] = v17;
      v44[1] = *MEMORY[0x1E696A588];
      v18 = [v8 localizedFailureReason];
      v45[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
      *a4 = [(NSError *)v16 gc_modelError:v19 userInfo:?];
    }
  }

  v13 = 0;
LABEL_5:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end