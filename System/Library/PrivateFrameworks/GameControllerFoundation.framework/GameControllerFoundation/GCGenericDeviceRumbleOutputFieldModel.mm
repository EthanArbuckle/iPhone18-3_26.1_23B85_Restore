@interface GCGenericDeviceRumbleOutputFieldModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleOutputFieldModel)init;
- (GCGenericDeviceRumbleOutputFieldModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleOutputFieldModel

- (GCGenericDeviceRumbleOutputFieldModel)init
{
  [(GCGenericDeviceRumbleOutputFieldModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleOutputFieldModel)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceRumbleOutputFieldModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleOutputFieldModel *)&v12 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"valueExpression", v12.receiver, v12.super_class}];
  valueExpression = v4->_valueExpression;
  v4->_valueExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sizeExpression"];
  sizeExpression = v4->_sizeExpression;
  v4->_sizeExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offsetExpression"];

  offsetExpression = v4->_offsetExpression;
  v4->_offsetExpression = v9;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  valueExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  [coderCopy encodeObject:valueExpression forKey:@"valueExpression"];

  offsetExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
  [coderCopy encodeObject:offsetExpression forKey:@"offsetExpression"];

  sizeExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
  [coderCopy encodeObject:sizeExpression forKey:@"sizeExpression"];
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

  valueExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  valueExpression2 = [equalCopy valueExpression];
  if ([valueExpression isEqual:valueExpression2])
  {
    offsetExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
    offsetExpression2 = [equalCopy offsetExpression];
    if ([offsetExpression isEqual:offsetExpression2])
    {
      sizeExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
      sizeExpression2 = [equalCopy sizeExpression];
      v11 = [sizeExpression isEqual:sizeExpression2];
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
  valueExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  offsetExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
  sizeExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
  v9 = [v3 stringWithFormat:@"<%@ %p> {\n\t valueExpression = %@\n\t offsetExpression = %@\n\t sizeExpression = %@\n}", v5, self, valueExpression, offsetExpression, sizeExpression];

  return v9;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v88[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v76[0] = 0;
  v7 = [representation gc_requiredObjectForKey:@"ValueExpression" ofClass:objc_opt_class() error:v76];
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
      v11 = [representation gc_requiredObjectForKey:@"OffsetExpression" ofClass:objc_opt_class() error:&v74];
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
          v15 = [representation gc_requiredObjectForKey:@"SizeExpression" ofClass:objc_opt_class() error:&v72];
          v16 = v72;
          if (v15)
          {
            v71 = 0;
            v17 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v15 error:&v71];
            v18 = v71;

            if (v17)
            {
              [v6 setSizeExpression:v17];

              build = [v6 build];
              goto LABEL_8;
            }

            if (error)
            {
              v69 = MEMORY[0x1E696ABC0];
              v77[0] = *MEMORY[0x1E696A578];
              localizedDescription = [v18 localizedDescription];
              v53 = localizedDescription;
              if (!localizedDescription)
              {
                localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              }

              v66 = localizedDescription;
              v78[0] = localizedDescription;
              v77[1] = *MEMORY[0x1E696A588];
              localizedFailureReason = [v18 localizedFailureReason];
              v55 = localizedFailureReason;
              if (!localizedFailureReason)
              {
                localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"SizeExpression"];
              }

              v63 = localizedFailureReason;
              v78[1] = localizedFailureReason;
              v77[2] = *MEMORY[0x1E696AA08];
              null = v18;
              if (!v18)
              {
                null = [MEMORY[0x1E695DFB0] null];
              }

              v78[2] = null;
              v77[3] = @"GCFailingKeyPathErrorKey";
              gc_failingKeyPath = [v18 gc_failingKeyPath];
              v58 = gc_failingKeyPath;
              if (!gc_failingKeyPath)
              {
                gc_failingKeyPath = MEMORY[0x1E695E0F0];
              }

              v59 = [gc_failingKeyPath arrayByAddingObject:@"SizeExpression"];
              v78[3] = v59;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:4];
              *error = [(NSError *)v69 gc_modelError:v60 userInfo:?];

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
            if (error)
            {
              v48 = MEMORY[0x1E696ABC0];
              v79[0] = *MEMORY[0x1E696A578];
              v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              v80[0] = v49;
              v79[1] = *MEMORY[0x1E696A588];
              localizedFailureReason2 = [v16 localizedFailureReason];
              v80[1] = localizedFailureReason2;
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
              *error = [(NSError *)v48 gc_modelError:v51 userInfo:?];
            }
          }
        }

        else
        {
          if (error)
          {
            v68 = MEMORY[0x1E696ABC0];
            v81[0] = *MEMORY[0x1E696A578];
            localizedDescription2 = [v14 localizedDescription];
            v40 = localizedDescription2;
            if (!localizedDescription2)
            {
              localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
            }

            v65 = localizedDescription2;
            v82[0] = localizedDescription2;
            v81[1] = *MEMORY[0x1E696A588];
            localizedFailureReason3 = [v14 localizedFailureReason];
            v42 = localizedFailureReason3;
            if (!localizedFailureReason3)
            {
              localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"OffsetExpression"];
            }

            v62 = localizedFailureReason3;
            v82[1] = localizedFailureReason3;
            v81[2] = *MEMORY[0x1E696AA08];
            null2 = v14;
            if (!v14)
            {
              null2 = [MEMORY[0x1E695DFB0] null];
            }

            v82[2] = null2;
            v81[3] = @"GCFailingKeyPathErrorKey";
            gc_failingKeyPath2 = [v14 gc_failingKeyPath];
            v45 = gc_failingKeyPath2;
            if (!gc_failingKeyPath2)
            {
              gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
            }

            v46 = [gc_failingKeyPath2 arrayByAddingObject:@"OffsetExpression"];
            v82[3] = v46;
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:4];
            *error = [(NSError *)v68 gc_modelError:v47 userInfo:?];

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
        if (error)
        {
          v35 = MEMORY[0x1E696ABC0];
          v83[0] = *MEMORY[0x1E696A578];
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
          v84[0] = v36;
          v83[1] = *MEMORY[0x1E696A588];
          localizedFailureReason4 = [v12 localizedFailureReason];
          v84[1] = localizedFailureReason4;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
          *error = [(NSError *)v35 gc_modelError:v38 userInfo:?];
        }
      }
    }

    else
    {
      if (error)
      {
        v67 = MEMORY[0x1E696ABC0];
        v85[0] = *MEMORY[0x1E696A578];
        localizedDescription3 = [v10 localizedDescription];
        v27 = localizedDescription3;
        if (!localizedDescription3)
        {
          localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
        }

        v64 = localizedDescription3;
        v86[0] = localizedDescription3;
        v85[1] = *MEMORY[0x1E696A588];
        localizedFailureReason5 = [v10 localizedFailureReason];
        v29 = localizedFailureReason5;
        if (!localizedFailureReason5)
        {
          localizedFailureReason5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"ValueExpression"];
        }

        v61 = localizedFailureReason5;
        v86[1] = localizedFailureReason5;
        v85[2] = *MEMORY[0x1E696AA08];
        null3 = v10;
        if (!v10)
        {
          null3 = [MEMORY[0x1E695DFB0] null];
        }

        v86[2] = null3;
        v85[3] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath3 = [v10 gc_failingKeyPath];
        v32 = gc_failingKeyPath3;
        if (!gc_failingKeyPath3)
        {
          gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
        }

        v33 = [gc_failingKeyPath3 arrayByAddingObject:@"ValueExpression"];
        v86[3] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:4];
        *error = [(NSError *)v67 gc_modelError:v34 userInfo:?];

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
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v87[0] = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v88[0] = v23;
      v87[1] = *MEMORY[0x1E696A588];
      localizedFailureReason6 = [v8 localizedFailureReason];
      v88[1] = localizedFailureReason6;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
      *error = [(NSError *)v22 gc_modelError:v25 userInfo:?];
    }
  }

  build = 0;
LABEL_8:

  v20 = *MEMORY[0x1E69E9840];

  return build;
}

@end