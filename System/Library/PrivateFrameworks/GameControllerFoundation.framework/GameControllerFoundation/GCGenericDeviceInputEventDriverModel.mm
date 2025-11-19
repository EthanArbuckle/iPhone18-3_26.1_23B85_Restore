@interface GCGenericDeviceInputEventDriverModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceInputEventDriverModel)init;
- (GCGenericDeviceInputEventDriverModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceInputEventDriverModel

- (GCGenericDeviceInputEventDriverModel)init
{
  [(GCGenericDeviceInputEventDriverModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceInputEventDriverModel)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = GCGenericDeviceInputEventDriverModel;
  v3 = a3;
  v4 = [(GCGenericDeviceInputEventDriverModel *)&v16 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"gamepadLeftThumbstickDeadzoneRadius"];
  gamepadLeftThumbstickDeadzoneRadius = v4->_gamepadLeftThumbstickDeadzoneRadius;
  v4->_gamepadLeftThumbstickDeadzoneRadius = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"gamepadRightThumbstickDeadzoneRadius"];
  gamepadRightThumbstickDeadzoneRadius = v4->_gamepadRightThumbstickDeadzoneRadius;
  v4->_gamepadRightThumbstickDeadzoneRadius = v7;

  v9 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"gamepadEventFields"];

  gamepadEventFields = v4->_gamepadEventFields;
  v4->_gamepadEventFields = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceInputEventDriverModel *)self gamepadLeftThumbstickDeadzoneRadius];
  [v4 encodeObject:v5 forKey:@"gamepadLeftThumbstickDeadzoneRadius"];

  v6 = [(GCGenericDeviceInputEventDriverModel *)self gamepadRightThumbstickDeadzoneRadius];
  [v4 encodeObject:v6 forKey:@"gamepadRightThumbstickDeadzoneRadius"];

  v7 = [(GCGenericDeviceInputEventDriverModel *)self gamepadEventFields];
  [v4 encodeObject:v7 forKey:@"gamepadEventFields"];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceInputEventDriverModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }

LABEL_6:
    v5 = [(GCGenericDeviceInputEventDriverModel *)self gamepadEventFields];
    v6 = [v4 gamepadEventFields];
    if (![v5 isEqual:v6])
    {
      v11 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(GCGenericDeviceInputEventDriverModel *)self gamepadLeftThumbstickDeadzoneRadius];
    v8 = [v4 gamepadLeftThumbstickDeadzoneRadius];
    if (v7 == v8)
    {
      [(GCGenericDeviceInputEventDriverModel *)self gamepadRightThumbstickDeadzoneRadius:v18];
    }

    else
    {
      v9 = [(GCGenericDeviceInputEventDriverModel *)self gamepadLeftThumbstickDeadzoneRadius];
      v10 = [v4 gamepadLeftThumbstickDeadzoneRadius];
      if (![v9 isEqual:v10])
      {
        v11 = 0;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      [(GCGenericDeviceInputEventDriverModel *)self gamepadRightThumbstickDeadzoneRadius:v10];
    }
    v12 = ;
    v13 = [v4 gamepadRightThumbstickDeadzoneRadius];
    v14 = v13;
    if (v12 == v13)
    {

      v11 = 1;
    }

    else
    {
      v15 = [(GCGenericDeviceInputEventDriverModel *)self gamepadRightThumbstickDeadzoneRadius];
      v16 = [v4 gamepadRightThumbstickDeadzoneRadius];
      v11 = [v15 isEqual:v16];
    }

    v10 = v19;
    v9 = v21;
    if (v7 == v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (([(GCGenericDeviceInputEventDriverModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_10:
  v11 = 0;
LABEL_21:

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceInputEventDriverModel *)self gamepadLeftThumbstickDeadzoneRadius];
  v7 = [(GCGenericDeviceInputEventDriverModel *)self gamepadRightThumbstickDeadzoneRadius];
  v8 = [(GCGenericDeviceInputEventDriverModel *)self gamepadEventFields];
  v9 = [v8 debugDescription];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v11 = [v3 stringWithFormat:@"<%@ %p> {\n\t gamepadLeftThumbstickDeadzoneRadius = %@\n\t gamepadRightThumbstickDeadzoneRadius = %@\n\t gamepadEventFields = %@\n}", v5, self, v6, v7, v10];

  return v11;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v70[2] = *MEMORY[0x1E69E9840];
  v49 = objc_opt_new();
  v62[0] = 0;
  v5 = [a3 gc_objectForKey:@"GamepadLeftThumbstickDeadzoneRadius" ofClass:objc_opt_class() error:v62];
  v6 = v62[0];
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    if (a4)
    {
      v30 = MEMORY[0x1E696ABC0];
      v69[0] = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v70[0] = v31;
      v69[1] = *MEMORY[0x1E696A588];
      v32 = [v7 localizedFailureReason];
      v70[1] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
      *a4 = [(NSError *)v30 gc_modelError:v33 userInfo:?];
    }

LABEL_42:
    v27 = 0;
    goto LABEL_31;
  }

  if (v5)
  {
    [v49 setGamepadLeftThumbstickDeadzoneRadius:v5];
  }

  v61 = 0;
  v9 = [a3 gc_objectForKey:@"GamepadRightThumbstickDeadzoneRadius" ofClass:objc_opt_class() error:&v61];
  v10 = v61;
  v7 = v10;
  if (!v9 && v10)
  {
    if (a4)
    {
      v34 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v68[0] = v35;
      v67[1] = *MEMORY[0x1E696A588];
      v36 = [v7 localizedFailureReason];
      v68[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
      *a4 = [(NSError *)v34 gc_modelError:v37 userInfo:?];
    }

    goto LABEL_42;
  }

  if (v9)
  {
    [v49 setGamepadRightThumbstickDeadzoneRadius:v9];
  }

  v60 = 0;
  v11 = [a3 gc_requiredObjectForKey:@"GamepadEventFields" ofClass:objc_opt_class() error:&v60];
  v7 = v60;
  if (!v11)
  {
    if (a4)
    {
      v38 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v66[0] = v39;
      v65[1] = *MEMORY[0x1E696A588];
      v40 = [v7 localizedFailureReason];
      v66[1] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      *a4 = [(NSError *)v38 gc_modelError:v41 userInfo:?];
    }

    goto LABEL_42;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__0;
  v58 = __Block_byref_object_dispose__0;
  v59 = 0;
  v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __95__GCGenericDeviceInputEventDriverModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v50[3] = &unk_1E8413C58;
  v53 = &v54;
  v14 = v12;
  v51 = v14;
  v15 = v13;
  v52 = v15;
  [v11 gc_enumerateObjectsUsingBlock:v50];
  v16 = [v15 count];
  v17 = [v11 count];
  if (v16 == v17)
  {
    [v49 setGamepadEventFields:v15];
  }

  else if (a4)
  {
    v43 = MEMORY[0x1E696ABC0];
    v63[0] = *MEMORY[0x1E696A578];
    v46 = [v55[5] localizedDescription];
    if ([v46 length])
    {
      [v55[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    }
    v45 = ;
    v64[0] = v45;
    v63[1] = *MEMORY[0x1E696A588];
    v18 = [v55[5] localizedFailureReason];
    v44 = v18;
    v19 = &stru_1F4E1BE30;
    if (v18)
    {
      v19 = v18;
    }

    v64[1] = v19;
    v63[2] = *MEMORY[0x1E696AA08];
    v20 = v55[5];
    if (v20)
    {
      v21 = v55[5];
      v22 = v21;
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      v21 = v55[5];
    }

    v42 = v22;
    v64[2] = v22;
    v63[3] = @"GCFailingKeyPathErrorKey";
    v23 = [v21 gc_failingKeyPath];
    v24 = v23;
    if (!v23)
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    v25 = [v23 arrayByAddingObject:@"GamepadEventFields"];
    v64[3] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];
    *a4 = [(NSError *)v43 gc_modelError:v26 userInfo:?];

    if (!v20)
    {
    }
  }

  _Block_object_dispose(&v54, 8);
  if (v16 == v17)
  {
    v7 = v49;
    v27 = [v49 build];
    v49 = 0;
LABEL_31:

    goto LABEL_33;
  }

  v27 = 0;
LABEL_33:

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __95__GCGenericDeviceInputEventDriverModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (!v11)
  {
    v30 = MEMORY[0x1E696ABC0];
    v66[0] = *MEMORY[0x1E696A588];
    v31 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v67[0] = v31;
    v66[1] = @"GCFailingKeyPathErrorKey";
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v65 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    v67[1] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
    v35 = [(NSError *)v30 gc_modelError:v34 userInfo:?];
    v36 = *(*(a1 + 48) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    *a4 = 1;
    goto LABEL_9;
  }

  v12 = *(*(a1 + 48) + 8);
  v58 = 0;
  v13 = [GCGenericDeviceInputGamepadEventFieldModel modelWithDictionaryRepresentation:v11 error:&v58];
  objc_storeStrong((v12 + 40), v58);
  if (!v13)
  {
    v55 = MEMORY[0x1E696ABC0];
    v63[0] = *MEMORY[0x1E696A578];
    v38 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
    v39 = &stru_1F4E1BE30;
    v57 = v38;
    if (v38)
    {
      v39 = v38;
    }

    v64[0] = v39;
    v63[1] = *MEMORY[0x1E696A588];
    v40 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v56 = v40;
    if (!v40)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
    }

    v54 = v40;
    v64[1] = v40;
    v63[2] = *MEMORY[0x1E696AA08];
    v41 = *(*(*(a1 + 48) + 8) + 40);
    v42 = v41;
    v43 = v41;
    if (!v41)
    {
      v43 = [MEMORY[0x1E695DFB0] null];
      v42 = *(*(*(a1 + 48) + 8) + 40);
    }

    v53 = v43;
    v64[2] = v43;
    v63[3] = @"GCFailingKeyPathErrorKey";
    v44 = [v42 gc_failingKeyPath];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = MEMORY[0x1E695E0F0];
    }

    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v48 = [v46 arrayByAddingObject:v47];
    v64[3] = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];
    v50 = [(NSError *)v55 gc_modelError:v49 userInfo:?];
    v51 = *(*(a1 + 48) + 8);
    v52 = *(v51 + 40);
    *(v51 + 40) = v50;

    if (!v41)
    {
    }

    if (!v56)
    {
    }

    *a4 = 1;
    goto LABEL_8;
  }

  v14 = [v13 extendedIndex];
  if (v14 < 0)
  {
    goto LABEL_7;
  }

  v15 = v14;
  v16 = *(a1 + 32);
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  v18 = [v16 member:v17];

  if (!v18)
  {
    v27 = *(a1 + 32);
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "extendedIndex")}];
    [v27 addObject:v28];

LABEL_7:
    [*(a1 + 40) addObject:v13];
    goto LABEL_8;
  }

  v19 = MEMORY[0x1E696ABC0];
  v61[0] = *MEMORY[0x1E696A588];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate definition of '%@' with ExtendedIndex '%zi'.", objc_opt_class(), v15];
  v62[0] = v20;
  v61[1] = @"GCFailingKeyPathErrorKey";
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
  v60 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v62[1] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v24 = [(NSError *)v19 gc_modelError:v23 userInfo:?];
  v25 = *(*(a1 + 48) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  *a4 = 1;
LABEL_8:

LABEL_9:
  v29 = *MEMORY[0x1E69E9840];
}

@end