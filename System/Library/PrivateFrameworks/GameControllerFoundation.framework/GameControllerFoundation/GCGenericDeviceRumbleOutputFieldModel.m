@interface GCGenericDeviceRumbleOutputFieldModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceRumbleOutputFieldModel)init;
- (GCGenericDeviceRumbleOutputFieldModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceRumbleOutputFieldModel

- (GCGenericDeviceRumbleOutputFieldModel)init
{
  [(GCGenericDeviceRumbleOutputFieldModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleOutputFieldModel)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceRumbleOutputFieldModel;
  v3 = a3;
  v4 = [(GCGenericDeviceRumbleOutputFieldModel *)&v12 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"valueExpression", v12.receiver, v12.super_class}];
  valueExpression = v4->_valueExpression;
  v4->_valueExpression = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sizeExpression"];
  sizeExpression = v4->_sizeExpression;
  v4->_sizeExpression = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"offsetExpression"];

  offsetExpression = v4->_offsetExpression;
  v4->_offsetExpression = v9;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  [v4 encodeObject:v5 forKey:@"valueExpression"];

  v6 = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
  [v4 encodeObject:v6 forKey:@"offsetExpression"];

  v7 = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
  [v4 encodeObject:v7 forKey:@"sizeExpression"];
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
    if (([(GCGenericDeviceRumbleOutputFieldModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleOutputFieldModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_9;
    }
  }

  v5 = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  v6 = [v4 valueExpression];
  if ([v5 isEqual:v6])
  {
    v7 = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
    v8 = [v4 offsetExpression];
    if ([v7 isEqual:v8])
    {
      v9 = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
      v10 = [v4 sizeExpression];
      v11 = [v9 isEqual:v10];
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

LABEL_14:
  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  v7 = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
  v8 = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
  v9 = [v3 stringWithFormat:@"<%@ %p> {\n\t valueExpression = %@\n\t offsetExpression = %@\n\t sizeExpression = %@\n}", v5, self, v6, v7, v8];

  return v9;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v88[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v76[0] = 0;
  v7 = [a3 gc_requiredObjectForKey:@"ValueExpression" ofClass:objc_opt_class() error:v76];
  v8 = v76[0];
  if (v7)
  {
    v75 = 0;
    v9 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v7 error:&v75];
    v10 = v75;

    if (v9)
    {
      [v6 setValueExpression:v9];

      v74 = 0;
      v11 = [a3 gc_requiredObjectForKey:@"OffsetExpression" ofClass:objc_opt_class() error:&v74];
      v12 = v74;
      if (v11)
      {
        v73 = 0;
        v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v11 error:&v73];
        v14 = v73;

        if (v13)
        {
          [v6 setOffsetExpression:v13];

          v72 = 0;
          v15 = [a3 gc_requiredObjectForKey:@"SizeExpression" ofClass:objc_opt_class() error:&v72];
          v16 = v72;
          if (v15)
          {
            v71 = 0;
            v17 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v15 error:&v71];
            v18 = v71;

            if (v17)
            {
              [v6 setSizeExpression:v17];

              v19 = [v6 build];
              goto LABEL_8;
            }

            if (a4)
            {
              v69 = MEMORY[0x1E696ABC0];
              v77[0] = *MEMORY[0x1E696A578];
              v52 = [v18 localizedDescription];
              v53 = v52;
              if (!v52)
              {
                v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
              }

              v66 = v52;
              v78[0] = v52;
              v77[1] = *MEMORY[0x1E696A588];
              v54 = [v18 localizedFailureReason];
              v55 = v54;
              if (!v54)
              {
                v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"SizeExpression"];
              }

              v63 = v54;
              v78[1] = v54;
              v77[2] = *MEMORY[0x1E696AA08];
              v56 = v18;
              if (!v18)
              {
                v56 = [MEMORY[0x1E695DFB0] null];
              }

              v78[2] = v56;
              v77[3] = @"GCFailingKeyPathErrorKey";
              v57 = [v18 gc_failingKeyPath];
              v58 = v57;
              if (!v57)
              {
                v57 = MEMORY[0x1E695E0F0];
              }

              v59 = [v57 arrayByAddingObject:@"SizeExpression"];
              v78[3] = v59;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:4];
              *a4 = [(NSError *)v69 gc_modelError:v60 userInfo:?];

              if (!v18)
              {
              }

              if (!v55)
              {
              }

              if (!v53)
              {
              }
            }
          }

          else
          {
            if (a4)
            {
              v48 = MEMORY[0x1E696ABC0];
              v79[0] = *MEMORY[0x1E696A578];
              v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
              v80[0] = v49;
              v79[1] = *MEMORY[0x1E696A588];
              v50 = [v16 localizedFailureReason];
              v80[1] = v50;
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
              *a4 = [(NSError *)v48 gc_modelError:v51 userInfo:?];
            }
          }
        }

        else
        {
          if (a4)
          {
            v68 = MEMORY[0x1E696ABC0];
            v81[0] = *MEMORY[0x1E696A578];
            v39 = [v14 localizedDescription];
            v40 = v39;
            if (!v39)
            {
              v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
            }

            v65 = v39;
            v82[0] = v39;
            v81[1] = *MEMORY[0x1E696A588];
            v41 = [v14 localizedFailureReason];
            v42 = v41;
            if (!v41)
            {
              v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"OffsetExpression"];
            }

            v62 = v41;
            v82[1] = v41;
            v81[2] = *MEMORY[0x1E696AA08];
            v43 = v14;
            if (!v14)
            {
              v43 = [MEMORY[0x1E695DFB0] null];
            }

            v82[2] = v43;
            v81[3] = @"GCFailingKeyPathErrorKey";
            v44 = [v14 gc_failingKeyPath];
            v45 = v44;
            if (!v44)
            {
              v44 = MEMORY[0x1E695E0F0];
            }

            v46 = [v44 arrayByAddingObject:@"OffsetExpression"];
            v82[3] = v46;
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:4];
            *a4 = [(NSError *)v68 gc_modelError:v47 userInfo:?];

            if (!v14)
            {
            }

            if (!v42)
            {
            }

            if (!v40)
            {
            }
          }
        }
      }

      else
      {
        if (a4)
        {
          v35 = MEMORY[0x1E696ABC0];
          v83[0] = *MEMORY[0x1E696A578];
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
          v84[0] = v36;
          v83[1] = *MEMORY[0x1E696A588];
          v37 = [v12 localizedFailureReason];
          v84[1] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
          *a4 = [(NSError *)v35 gc_modelError:v38 userInfo:?];
        }
      }
    }

    else
    {
      if (a4)
      {
        v67 = MEMORY[0x1E696ABC0];
        v85[0] = *MEMORY[0x1E696A578];
        v26 = [v10 localizedDescription];
        v27 = v26;
        if (!v26)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
        }

        v64 = v26;
        v86[0] = v26;
        v85[1] = *MEMORY[0x1E696A588];
        v28 = [v10 localizedFailureReason];
        v29 = v28;
        if (!v28)
        {
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"ValueExpression"];
        }

        v61 = v28;
        v86[1] = v28;
        v85[2] = *MEMORY[0x1E696AA08];
        v30 = v10;
        if (!v10)
        {
          v30 = [MEMORY[0x1E695DFB0] null];
        }

        v86[2] = v30;
        v85[3] = @"GCFailingKeyPathErrorKey";
        v31 = [v10 gc_failingKeyPath];
        v32 = v31;
        if (!v31)
        {
          v31 = MEMORY[0x1E695E0F0];
        }

        v33 = [v31 arrayByAddingObject:@"ValueExpression"];
        v86[3] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:4];
        *a4 = [(NSError *)v67 gc_modelError:v34 userInfo:?];

        if (!v10)
        {
        }

        if (!v29)
        {
        }

        if (!v27)
        {
        }
      }
    }
  }

  else
  {
    if (a4)
    {
      v22 = MEMORY[0x1E696ABC0];
      v87[0] = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v88[0] = v23;
      v87[1] = *MEMORY[0x1E696A588];
      v24 = [v8 localizedFailureReason];
      v88[1] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
      *a4 = [(NSError *)v22 gc_modelError:v25 userInfo:?];
    }
  }

  v19 = 0;
LABEL_8:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end