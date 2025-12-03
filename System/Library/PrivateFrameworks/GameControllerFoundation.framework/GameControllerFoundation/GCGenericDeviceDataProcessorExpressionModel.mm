@interface GCGenericDeviceDataProcessorExpressionModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataProcessorExpressionModel)init;
- (GCGenericDeviceDataProcessorExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (unint64_t)hash;
@end

@implementation GCGenericDeviceDataProcessorExpressionModel

- (GCGenericDeviceDataProcessorExpressionModel)init
{
  [(GCGenericDeviceDataProcessorExpressionModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDataProcessorExpressionModel)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceDataProcessorExpressionModel;
  return [(GCGenericDeviceDataProcessorExpressionModel *)&v4 init];
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
    if (([(GCGenericDeviceDataProcessorExpressionModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_7:
      v5 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDataProcessorExpressionModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_7;
    }
  }

  v5 = 1;
LABEL_8:

  return v5;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v23[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v19[0] = 0;
  v6 = [representationCopy gc_requiredObjectForKey:@"Type" ofClass:objc_opt_class() error:v19];
  v7 = v19[0];
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GCGenericDeviceData%@ExpressionModelBuilder", v6];
    v9 = NSClassFromString(v8);
    if (v9 && v9 != objc_opt_class() && ([(objc_class *)v9 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      v10 = [[v9 alloc] initWithDictionaryRepresentation:representationCopy error:error];

      if (v10)
      {
        build = [v10 build];

        goto LABEL_12;
      }
    }

    else
    {
      if (error)
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = *MEMORY[0x1E696A578];
        v21[0] = @"Invalid 'Expression' definition.";
        v14 = *MEMORY[0x1E696A588];
        v20[0] = v13;
        v20[1] = v14;
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid expression type.", v6];
        v21[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        *error = [(NSError *)v12 gc_modelError:v16 userInfo:?];
      }
    }
  }

  else
  {
    [(GCGenericDeviceDataProcessorExpressionModel(Serialization) *)error modelWithDictionaryRepresentation:v7 error:&v22, v23];
  }

  build = 0;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];

  return build;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A588];
    v14 = *MEMORY[0x1E696A578];
    v15 = v6;
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"Unsupported expression class: %@.", v9, v14, v15, @"Invalid expression."];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v14 count:2];
    *error = [v5 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A588];
    v15 = *MEMORY[0x1E696A578];
    v16 = v7;
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Unsupported expression class: %@.", v10, v15, v16, @"Invalid expression."];
    v17[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v15 count:2];
    *error = [v6 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

@end