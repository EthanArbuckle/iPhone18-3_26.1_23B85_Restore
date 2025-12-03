@interface GCGenericDevicePhysicalInputModel
+ (GCGenericDevicePhysicalInputModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputModel)init;
- (GCGenericDevicePhysicalInputModel)initWithCoder:(id)coder;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDevicePhysicalInputModel

- (GCGenericDevicePhysicalInputModel)init
{
  [(GCGenericDevicePhysicalInputModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDevicePhysicalInputModel)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = GCGenericDevicePhysicalInputModel;
  coderCopy = coder;
  v4 = [(GCGenericDevicePhysicalInputModel *)&v11 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v11.receiver, v11.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"elements"];

  elements = v4->_elements;
  v4->_elements = v8;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elements = [(GCGenericDevicePhysicalInputModel *)self elements];
  [coderCopy encodeObject:elements forKey:@"elements"];
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
    if (([(GCGenericDevicePhysicalInputModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDevicePhysicalInputModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_7;
    }
  }

  elements = [(GCGenericDevicePhysicalInputModel *)self elements];
  elements2 = [equalCopy elements];
  v7 = [elements isEqual:elements2];

LABEL_8:
  return v7;
}

- (id)redactedDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"{\n"];
  [v3 appendString:@"\t elements = ["];
  elements = [(GCGenericDevicePhysicalInputModel *)self elements];
  allObjects = [elements allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_16];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) description];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
        [v3 appendFormat:@"\n\t %@, ", v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v3 appendString:@"\t]\n"];
  [v3 appendString:@"}"];

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __56__GCGenericDevicePhysicalInputModel_redactedDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

+ (GCGenericDevicePhysicalInputModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v53[2] = *MEMORY[0x1E69E9840];
  v38 = objc_opt_new();
  v49[0] = 0;
  v5 = [representation gc_requiredObjectForKey:@"Elements" ofClass:objc_opt_class() error:v49];
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
  v46 = __Block_byref_object_copy__15;
  v47 = __Block_byref_object_dispose__15;
  v48 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __92__GCGenericDevicePhysicalInputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
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
    [v38 setElements:v10];
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

    v21 = [gc_failingKeyPath arrayByAddingObject:@"Elements"];
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

void __92__GCGenericDevicePhysicalInputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v75[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_opt_class();
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v60 = v7;
  v10 = (*(v7 + 2))(v7, v8, &obj);
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    v11 = *(*(a1 + 48) + 8);
    v65 = 0;
    v12 = [GCGenericDevicePhysicalInputElementModel modelWithDictionaryRepresentation:v10 error:&v65];
    objc_storeStrong((v11 + 40), v65);
    if (v12)
    {
      v13 = a3;
      v58 = a4;
      [v12 names];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v14 = v64 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v62;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v62 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v61 + 1) + 8 * i);
            v20 = [*(a1 + 32) member:v19];

            if (v20)
            {
              v21 = MEMORY[0x1E696ABC0];
              v68[0] = *MEMORY[0x1E696A588];
              v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate definition of '%@' with name '%@'.", objc_opt_class(), v19];
              v69[0] = v22;
              v68[1] = @"GCFailingKeyPathErrorKey";
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", v13];
              v67 = v23;
              v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
              v69[1] = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
              v26 = [(NSError *)v21 gc_modelError:v25 userInfo:?];
              v27 = *(*(a1 + 48) + 8);
              v28 = *(v27 + 40);
              *(v27 + 40) = v26;

              *v58 = 1;
              goto LABEL_13;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v61 objects:v70 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      [*(a1 + 32) addObjectsFromArray:v14];
      [*(a1 + 40) addObject:v12];
LABEL_13:
    }

    else
    {
      v57 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      v38 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v39 = v38;
      v40 = &stru_1F4E1BE30;
      if (v38)
      {
        v40 = v38;
      }

      v72[0] = v40;
      v71[1] = *MEMORY[0x1E696A588];
      v41 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v59 = v41;
      if (!v41)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v42 = a4;
      v56 = v41;
      v72[1] = v41;
      v71[2] = *MEMORY[0x1E696AA08];
      v43 = *(*(*(a1 + 48) + 8) + 40);
      v44 = v43;
      v45 = v43;
      if (!v43)
      {
        v45 = [MEMORY[0x1E695DFB0] null];
        v44 = *(*(*(a1 + 48) + 8) + 40);
      }

      v55 = v45;
      v72[2] = v45;
      v71[3] = @"GCFailingKeyPathErrorKey";
      v46 = [v44 gc_failingKeyPath];
      v47 = v46;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = MEMORY[0x1E695E0F0];
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v50 = [v48 arrayByAddingObject:v49];
      v72[3] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:4];
      v52 = [(NSError *)v57 gc_modelError:v51 userInfo:?];
      v53 = *(*(a1 + 48) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = v52;

      if (!v43)
      {
      }

      if (!v59)
      {
      }

      *v42 = 1;
    }
  }

  else
  {
    v30 = MEMORY[0x1E696ABC0];
    v74[0] = *MEMORY[0x1E696A588];
    v31 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v75[0] = v31;
    v74[1] = @"GCFailingKeyPathErrorKey";
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v73 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    v75[1] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
    v35 = [(NSError *)v30 gc_modelError:v34 userInfo:?];
    v36 = *(*(a1 + 48) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    *a4 = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end