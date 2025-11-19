@interface GCGenericDevicePhysicalInputElementModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDevicePhysicalInputElementModelBuilder)init;
- (GCGenericDevicePhysicalInputElementModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDevicePhysicalInputElementModelBuilder

- (GCGenericDevicePhysicalInputElementModelBuilder)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)self doesNotRecognizeSelector:a2];
  }

  v6.receiver = self;
  v6.super_class = GCGenericDevicePhysicalInputElementModelBuilder;
  return [(GCGenericDevicePhysicalInputElementModelBuilder *)&v6 init];
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setIdentifier:v5];

  v6 = [v4 names];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setNames:v6];

  v7 = [v4 isAnalog];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setAnalog:v7];

  v8 = [v4 localizedNameKey];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setLocalizedNameKey:v8];

  v9 = [v4 symbolName];

  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setSymbolName:v9];
}

- (void)reset
{
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setIdentifier:0];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setNames:0];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setAnalog:0];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setLocalizedNameKey:0];

  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setSymbolName:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self identifier];
  if (!v5)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self names];
  if (!v8)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)a2 build];
  }

  if (![v8 count])
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)a2 build];
  }

  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self isAnalog];
  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  v14 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self localizedNameKey];
  v15 = [v14 copy];
  v16 = v4[4];
  v4[4] = v15;

  v17 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self symbolName];
  v18 = [v17 copy];
  v19 = v4[5];
  v4[5] = v18;

  return v4;
}

- (unint64_t)hash
{
  v2 = [objc_opt_class() modelClass];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDevicePhysicalInputElementModelBuilder;
    v5 = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (GCGenericDevicePhysicalInputElementModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v81[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self init];
  v69 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"Identifier" ofClass:objc_opt_class() error:&v69];
  v9 = v69;
  if (!v8)
  {
    if (a4)
    {
      v25 = MEMORY[0x1E696ABC0];
      v80[0] = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v81[0] = v26;
      v80[1] = *MEMORY[0x1E696A588];
      v27 = [v9 localizedFailureReason];
      v81[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
      *a4 = [(NSError *)v25 gc_modelError:v28 userInfo:?];
    }

    goto LABEL_6;
  }

  [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setIdentifier:v8];

  v68 = 0;
  v10 = [v6 gc_requiredObjectForKey:@"Aliases" ofClass:objc_opt_class() error:&v68];
  v11 = v68;
  if (!v10)
  {
    if (a4)
    {
      v29 = MEMORY[0x1E696ABC0];
      v78[0] = *MEMORY[0x1E696A578];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v79[0] = v30;
      v78[1] = *MEMORY[0x1E696A588];
      v31 = [v11 localizedFailureReason];
      v79[1] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
      *a4 = [(NSError *)v29 gc_modelError:v32 userInfo:?];
    }

    goto LABEL_6;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy_;
  v66 = __Block_byref_object_dispose_;
  v67 = 0;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __105__GCGenericDevicePhysicalInputElementModelBuilder_Serialization__initWithDictionaryRepresentation_error___block_invoke;
  v61[3] = &unk_1E8413B30;
  v61[4] = &v62;
  [v10 gc_enumerateObjectsUsingBlock:v61];
  v12 = v63[5];
  if (v12)
  {
    if (a4)
    {
      v54 = MEMORY[0x1E696ABC0];
      v76[0] = *MEMORY[0x1E696A578];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v77[0] = v57;
      v76[1] = *MEMORY[0x1E696A588];
      v33 = [v63[5] localizedFailureReason];
      v56 = v33;
      v34 = &stru_1F4E1BE30;
      if (v33)
      {
        v34 = v33;
      }

      v77[1] = v34;
      v76[2] = *MEMORY[0x1E696AA08];
      v35 = v63[5];
      if (v35)
      {
        v36 = v63[5];
        v37 = v36;
      }

      else
      {
        v37 = [MEMORY[0x1E695DFB0] null];
        v36 = v63[5];
      }

      v53 = v37;
      v77[2] = v37;
      v76[3] = @"GCFailingKeyPathErrorKey";
      v50 = [v36 gc_failingKeyPath];
      v51 = v50;
      if (!v50)
      {
        v50 = MEMORY[0x1E695E0F0];
      }

      v55 = [v50 arrayByAddingObject:@"Aliases"];
      v77[3] = v55;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:4];
      *a4 = [(NSError *)v54 gc_modelError:v52 userInfo:?];

      if (!v35)
      {
      }
    }
  }

  else
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setNames:v10];
  }

  _Block_object_dispose(&v62, 8);

  if (v12)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_20;
  }

  v60 = 0;
  v14 = [v6 gc_objectForKey:@"Analog" ofClass:objc_opt_class() error:&v60];
  v15 = v60;
  v16 = v15;
  if (!v14 && v15)
  {
    if (a4)
    {
      v38 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v75[0] = v39;
      v74[1] = *MEMORY[0x1E696A588];
      v40 = [v16 localizedFailureReason];
      v75[1] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
      *a4 = [(NSError *)v38 gc_modelError:v41 userInfo:?];
    }

    goto LABEL_6;
  }

  if (v14)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setAnalog:v14];
  }

  v59 = 0;
  v17 = [v6 gc_objectForKey:@"LocalizedNameKey" ofClass:objc_opt_class() error:&v59];
  v18 = v59;
  v19 = v18;
  if (!v17 && v18)
  {
    if (a4)
    {
      v42 = MEMORY[0x1E696ABC0];
      v72[0] = *MEMORY[0x1E696A578];
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v73[0] = v43;
      v72[1] = *MEMORY[0x1E696A588];
      v44 = [v19 localizedFailureReason];
      v73[1] = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
      *a4 = [(NSError *)v42 gc_modelError:v45 userInfo:?];
    }

    goto LABEL_6;
  }

  if (v17)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setLocalizedNameKey:v17];
  }

  v58 = 0;
  v20 = [v6 gc_objectForKey:@"SymbolName" ofClass:objc_opt_class() error:&v58];
  v21 = v58;
  v22 = v21;
  if (!v20 && v21)
  {
    if (a4)
    {
      v46 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v71[0] = v47;
      v70[1] = *MEMORY[0x1E696A588];
      v48 = [v22 localizedFailureReason];
      v71[1] = v48;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
      *a4 = [(NSError *)v46 gc_modelError:v49 userInfo:?];
    }

    goto LABEL_6;
  }

  if (v20)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setSymbolName:v20];
  }

  v13 = v7;
LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

void __105__GCGenericDevicePhysicalInputElementModelBuilder_Serialization__initWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (!v11)
  {
    v13 = MEMORY[0x1E696ABC0];
    v23[0] = *MEMORY[0x1E696A588];
    v14 = [*(*(*(a1 + 32) + 8) + 40) localizedFailureReason];
    v24[0] = v14;
    v23[1] = @"GCFailingKeyPathErrorKey";
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v22 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v24[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v18 = [(NSError *)v13 gc_modelError:v17 userInfo:?];
    v19 = *(*(a1 + 32) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *a4 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDevicePhysicalInputElementModel.m" lineNumber:159 description:@"'names' can not be empty"];
}

@end