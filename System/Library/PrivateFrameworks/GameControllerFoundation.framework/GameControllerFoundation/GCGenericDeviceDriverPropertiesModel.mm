@interface GCGenericDeviceDriverPropertiesModel
+ (GCGenericDeviceDriverPropertiesModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverPropertiesModel)init;
- (GCGenericDeviceDriverPropertiesModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDriverPropertiesModel

- (GCGenericDeviceDriverPropertiesModel)init
{
  [(GCGenericDeviceDriverPropertiesModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverPropertiesModel)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDriverPropertiesModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDriverPropertiesModel *)&v12 init];
  v5 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"properties"];

  properties = v4->_properties;
  v4->_properties = v8;

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  properties = [(GCGenericDeviceDriverPropertiesModel *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];
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
    if (([(GCGenericDeviceDriverPropertiesModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverPropertiesModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_7;
    }
  }

  properties = [(GCGenericDeviceDriverPropertiesModel *)self properties];
  properties2 = [equalCopy properties];
  v7 = [properties isEqual:properties2];

LABEL_8:
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  properties = [(GCGenericDeviceDriverPropertiesModel *)self properties];
  v7 = [properties debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [v3 stringWithFormat:@"<%@ %p> {\n\t properties = %@\n}", v5, self, v8];

  return v9;
}

+ (GCGenericDeviceDriverPropertiesModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v53[2] = *MEMORY[0x1E69E9840];
  v38 = objc_opt_new();
  v49[0] = 0;
  v5 = [representation gc_requiredObjectForKey:@"Properties" ofClass:objc_opt_class() error:v49];
  v6 = v49[0];
  if (!v5)
  {
    if (error)
    {
      v26 = v6;
      v27 = MEMORY[0x1E696ABC0];
      v52[0] = *MEMORY[0x1E696A578];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v53[0] = v28;
      v52[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v26 localizedFailureReason];
      v53[1] = localizedFailureReason;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
      *error = [(NSError *)v27 gc_modelError:v30 userInfo:?];

      build = 0;
      v6 = v26;
    }

    else
    {
      build = 0;
    }

    goto LABEL_20;
  }

  v37 = v6;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__14;
  v47 = __Block_byref_object_dispose__14;
  v48 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __95__GCGenericDeviceDriverPropertiesModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v39[3] = &unk_1E8413C58;
  v42 = &v43;
  v9 = v7;
  v40 = v9;
  v10 = v8;
  v41 = v10;
  [v5 gc_enumerateObjectsUsingBlock:v39];
  v11 = [v10 count];
  v12 = [v5 count];
  if (v11 == v12)
  {
    [v38 setProperties:v10];
  }

  else if (error)
  {
    v32 = MEMORY[0x1E696ABC0];
    v50[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v44[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v44[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v33 = ;
    v51[0] = v33;
    v50[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v44[5] localizedFailureReason];
    v14 = localizedFailureReason2;
    v15 = &stru_1F4E1BE30;
    if (localizedFailureReason2)
    {
      v15 = localizedFailureReason2;
    }

    v51[1] = v15;
    v50[2] = *MEMORY[0x1E696AA08];
    v16 = v44[5];
    if (v16)
    {
      v17 = v44[5];
      null = v17;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v17 = v44[5];
    }

    v31 = null;
    v51[2] = null;
    v50[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v17 gc_failingKeyPath];
    v20 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v21 = [gc_failingKeyPath arrayByAddingObject:@"Properties"];
    v51[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
    *error = [(NSError *)v32 gc_modelError:v22 userInfo:?];

    if (!v16)
    {
    }
  }

  _Block_object_dispose(&v43, 8);
  if (v11 == v12)
  {
    build = [v38 build];
    v6 = v38;
    v38 = 0;
LABEL_20:

    goto LABEL_22;
  }

  build = 0;
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];

  return build;
}

void __95__GCGenericDeviceDriverPropertiesModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    v53 = 0;
    v13 = [GCGenericDeviceDriverPropertyModel modelWithDictionaryRepresentation:v11 error:&v53];
    objc_storeStrong((v12 + 40), v53);
    if (v13)
    {
      v14 = [v13 name];
      v15 = [*(a1 + 32) member:v14];

      if (v15)
      {
        v16 = MEMORY[0x1E696ABC0];
        v56[0] = *MEMORY[0x1E696A588];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate definition of '%@' with name '%@'.", objc_opt_class(), v14];
        v57[0] = v17;
        v56[1] = @"GCFailingKeyPathErrorKey";
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
        v55 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
        v57[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
        v21 = [(NSError *)v16 gc_modelError:v20 userInfo:?];
        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        *a4 = 1;
      }

      else
      {
        [*(a1 + 32) addObject:v14];
        [*(a1 + 40) addObject:v13];
      }
    }

    else
    {
      v50 = MEMORY[0x1E696ABC0];
      v58[0] = *MEMORY[0x1E696A578];
      v33 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v34 = &stru_1F4E1BE30;
      v52 = v33;
      if (v33)
      {
        v34 = v33;
      }

      v59[0] = v34;
      v58[1] = *MEMORY[0x1E696A588];
      v35 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v51 = v35;
      if (!v35)
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v49 = v35;
      v59[1] = v35;
      v58[2] = *MEMORY[0x1E696AA08];
      v36 = *(*(*(a1 + 48) + 8) + 40);
      v37 = v36;
      v38 = v36;
      if (!v36)
      {
        v38 = [MEMORY[0x1E695DFB0] null];
        v37 = *(*(*(a1 + 48) + 8) + 40);
      }

      v48 = v38;
      v59[2] = v38;
      v58[3] = @"GCFailingKeyPathErrorKey";
      v39 = [v37 gc_failingKeyPath];
      v40 = v39;
      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = MEMORY[0x1E695E0F0];
      }

      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v43 = [v41 arrayByAddingObject:v42];
      v59[3] = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:4];
      v45 = [(NSError *)v50 gc_modelError:v44 userInfo:?];
      v46 = *(*(a1 + 48) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = v45;

      if (!v36)
      {
      }

      if (!v51)
      {
      }

      *a4 = 1;
    }
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v61[0] = *MEMORY[0x1E696A588];
    v26 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v62[0] = v26;
    v61[1] = @"GCFailingKeyPathErrorKey";
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v60 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v62[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
    v30 = [(NSError *)v25 gc_modelError:v29 userInfo:?];
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    *a4 = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end