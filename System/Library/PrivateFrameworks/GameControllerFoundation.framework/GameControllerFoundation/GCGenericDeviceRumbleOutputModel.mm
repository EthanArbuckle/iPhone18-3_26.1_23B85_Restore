@interface GCGenericDeviceRumbleOutputModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleOutputModel)init;
- (GCGenericDeviceRumbleOutputModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleOutputModel

- (GCGenericDeviceRumbleOutputModel)init
{
  [(GCGenericDeviceRumbleOutputModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleOutputModel)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = GCGenericDeviceRumbleOutputModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleOutputModel *)&v14 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"elementIdentifier"];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"fields"];

  fields = v4->_fields;
  v4->_fields = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elementIdentifier = [(GCGenericDeviceRumbleOutputModel *)self elementIdentifier];
  [coderCopy encodeObject:elementIdentifier forKey:@"elementIdentifier"];

  fields = [(GCGenericDeviceRumbleOutputModel *)self fields];
  [coderCopy encodeObject:fields forKey:@"fields"];
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
    if (([(GCGenericDeviceRumbleOutputModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_8:
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleOutputModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_8;
    }
  }

  elementIdentifier = [(GCGenericDeviceRumbleOutputModel *)self elementIdentifier];
  elementIdentifier2 = [equalCopy elementIdentifier];
  if ([elementIdentifier isEqual:elementIdentifier2])
  {
    fields = [(GCGenericDeviceRumbleOutputModel *)self fields];
    fields2 = [equalCopy fields];
    v9 = [fields isEqual:fields2];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  elementIdentifier = [(GCGenericDeviceRumbleOutputModel *)self elementIdentifier];
  fields = [(GCGenericDeviceRumbleOutputModel *)self fields];
  v8 = [fields debugDescription];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v10 = [v3 stringWithFormat:@"<%@ %p> {\n\t elementIdentifier = %@\n\t fields = %@\n}", v5, self, elementIdentifier, v9];

  return v10;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v56[2] = *MEMORY[0x1E69E9840];
  v39 = objc_opt_new();
  v50[0] = 0;
  v5 = [representation gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:v50];
  v6 = v50[0];
  if (!v5)
  {
    if (error)
    {
      v25 = MEMORY[0x1E696ABC0];
      v55[0] = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v56[0] = v26;
      v55[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v6 localizedFailureReason];
      v56[1] = localizedFailureReason;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      *error = [(NSError *)v25 gc_modelError:v28 userInfo:?];
    }

    goto LABEL_30;
  }

  [v39 setElementIdentifier:v5];

  v49 = 0;
  v7 = [representation gc_requiredObjectForKey:@"Fields" ofClass:objc_opt_class() error:&v49];
  v6 = v49;
  if (!v7)
  {
    if (error)
    {
      v29 = MEMORY[0x1E696ABC0];
      v53[0] = *MEMORY[0x1E696A578];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v54[0] = v30;
      v53[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v6 localizedFailureReason];
      v54[1] = localizedFailureReason2;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
      *error = [(NSError *)v29 gc_modelError:v32 userInfo:?];
    }

LABEL_30:
    build = 0;
    goto LABEL_21;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__11;
  v47 = __Block_byref_object_dispose__11;
  v48 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __91__GCGenericDeviceRumbleOutputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v40[3] = &unk_1E8414FA8;
  v42 = &v43;
  v9 = v8;
  v41 = v9;
  [v7 gc_enumerateObjectsUsingBlock:v40];
  v10 = [v9 count];
  v11 = [v7 count];
  if (v10 == v11)
  {
    [v39 setFields:v9];
  }

  else if (error)
  {
    v34 = MEMORY[0x1E696ABC0];
    v51[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v44[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v44[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v35 = ;
    v52[0] = v35;
    v51[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v44[5] localizedFailureReason];
    v13 = localizedFailureReason3;
    v14 = &stru_1F4E1BE30;
    if (localizedFailureReason3)
    {
      v14 = localizedFailureReason3;
    }

    v52[1] = v14;
    v51[2] = *MEMORY[0x1E696AA08];
    v15 = v44[5];
    if (v15)
    {
      v16 = v44[5];
      null = v16;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v16 = v44[5];
    }

    v33 = null;
    v52[2] = null;
    v51[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v16 gc_failingKeyPath];
    v19 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v20 = [gc_failingKeyPath arrayByAddingObject:@"Fields"];
    v52[3] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
    *error = [(NSError *)v34 gc_modelError:v21 userInfo:?];

    if (!v15)
    {
    }
  }

  _Block_object_dispose(&v43, 8);
  if (v10 == v11)
  {
    v6 = v39;
    build = [v39 build];
    v39 = 0;
LABEL_21:

    goto LABEL_23;
  }

  build = 0;
LABEL_23:

  v23 = *MEMORY[0x1E69E9840];

  return build;
}

void __91__GCGenericDeviceRumbleOutputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 8);
    v43 = 0;
    v13 = [GCGenericDeviceRumbleOutputFieldModel modelWithDictionaryRepresentation:v11 error:&v43];
    objc_storeStrong((v12 + 40), v43);
    if (v13)
    {
      [*(a1 + 32) addObject:v13];
    }

    else
    {
      v40 = MEMORY[0x1E696ABC0];
      v45[0] = *MEMORY[0x1E696A578];
      v23 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
      v24 = &stru_1F4E1BE30;
      v42 = v23;
      if (v23)
      {
        v24 = v23;
      }

      v46[0] = v24;
      v45[1] = *MEMORY[0x1E696A588];
      v25 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
      v41 = v25;
      if (!v25)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v39 = v25;
      v46[1] = v25;
      v45[2] = *MEMORY[0x1E696AA08];
      v26 = *(*(*(a1 + 40) + 8) + 40);
      v27 = v26;
      v28 = v26;
      if (!v26)
      {
        v28 = [MEMORY[0x1E695DFB0] null];
        v27 = *(*(*(a1 + 40) + 8) + 40);
      }

      v38 = v28;
      v46[2] = v28;
      v45[3] = @"GCFailingKeyPathErrorKey";
      v29 = [v27 gc_failingKeyPath];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = MEMORY[0x1E695E0F0];
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v33 = [v31 arrayByAddingObject:v32];
      v46[3] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];
      v35 = [(NSError *)v40 gc_modelError:v34 userInfo:?];
      v36 = *(*(a1 + 40) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      if (!v26)
      {
      }

      if (!v41)
      {
      }

      *a4 = 1;
    }
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v48[0] = *MEMORY[0x1E696A588];
    v16 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v49[0] = v16;
    v48[1] = @"GCFailingKeyPathErrorKey";
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v47 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    v49[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v20 = [(NSError *)v15 gc_modelError:v19 userInfo:?];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    *a4 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end