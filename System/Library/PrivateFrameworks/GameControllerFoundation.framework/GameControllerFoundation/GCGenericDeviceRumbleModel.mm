@interface GCGenericDeviceRumbleModel
+ (GCGenericDeviceRumbleModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleModel)init;
- (GCGenericDeviceRumbleModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleModel

- (GCGenericDeviceRumbleModel)init
{
  [(GCGenericDeviceRumbleModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleModel)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = GCGenericDeviceRumbleModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleModel *)&v23 init];
  [coderCopy decodeFloatForKey:@"dispatchFrequency"];
  v4->_dispatchFrequency = v5;
  v6 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"actuators"];
  actuators = v4->_actuators;
  v4->_actuators = v9;

  v11 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"nodes"];
  nodes = v4->_nodes;
  v4->_nodes = v14;

  v16 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v18 = [v16 setWithArray:v17];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"outputs"];

  outputs = v4->_outputs;
  v4->_outputs = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(GCGenericDeviceRumbleModel *)self dispatchFrequency];
  [coderCopy encodeFloat:@"dispatchFrequency" forKey:?];
  actuators = [(GCGenericDeviceRumbleModel *)self actuators];
  [coderCopy encodeObject:actuators forKey:@"actuators"];

  nodes = [(GCGenericDeviceRumbleModel *)self nodes];
  [coderCopy encodeObject:nodes forKey:@"nodes"];

  outputs = [(GCGenericDeviceRumbleModel *)self outputs];
  [coderCopy encodeObject:outputs forKey:@"outputs"];
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
    if (([(GCGenericDeviceRumbleModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }
  }

  [(GCGenericDeviceRumbleModel *)self dispatchFrequency];
  v6 = v5;
  [equalCopy dispatchFrequency];
  if (v6 != v7)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_15;
  }

  actuators = [(GCGenericDeviceRumbleModel *)self actuators];
  actuators2 = [equalCopy actuators];
  if ([actuators isEqual:actuators2])
  {
    nodes = [(GCGenericDeviceRumbleModel *)self nodes];
    nodes2 = [equalCopy nodes];
    if ([nodes isEqual:nodes2])
    {
      outputs = [(GCGenericDeviceRumbleModel *)self outputs];
      outputs2 = [equalCopy outputs];
      v14 = [outputs isEqual:outputs2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  return v14;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(GCGenericDeviceRumbleModel *)self dispatchFrequency];
  v6 = v5;
  actuators = [(GCGenericDeviceRumbleModel *)self actuators];
  v8 = [actuators debugDescription];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  nodes = [(GCGenericDeviceRumbleModel *)self nodes];
  outputs = [(GCGenericDeviceRumbleModel *)self outputs];
  v12 = [outputs debugDescription];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v14 = [v16 stringWithFormat:@"<%@ %p> {\n\t dispatchFrequency = %f\n\t actuators = %@\n\t nodes = %@\n\t outputs = %@\n}", v4, self, *&v6, v9, nodes, v13];

  return v14;
}

+ (GCGenericDeviceRumbleModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v127[2] = *MEMORY[0x1E69E9840];
  v93 = objc_opt_new();
  v113[0] = 0;
  representationCopy = representation;
  v5 = [representation gc_requiredObjectForKey:@"DispatchFrequency" ofClass:objc_opt_class() error:v113];
  v6 = v113[0];
  if (!v5)
  {
    if (error)
    {
      v61 = MEMORY[0x1E696ABC0];
      v126[0] = *MEMORY[0x1E696A578];
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v127[0] = v62;
      v126[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v6 localizedFailureReason];
      v127[1] = localizedFailureReason;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
      *error = [(NSError *)v61 gc_modelError:v64 userInfo:?];
    }

    goto LABEL_70;
  }

  [v5 floatValue];
  [v93 setDispatchFrequency:?];

  v112 = 0;
  v7 = [representationCopy gc_requiredObjectForKey:@"Actuators" ofClass:objc_opt_class() error:&v112];
  v8 = v112;
  if (!v7)
  {
    v6 = v8;
    if (error)
    {
      v65 = MEMORY[0x1E696ABC0];
      v124[0] = *MEMORY[0x1E696A578];
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v125[0] = v66;
      v124[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v6 localizedFailureReason];
      v125[1] = localizedFailureReason2;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:2];
      *error = [(NSError *)v65 gc_modelError:v68 userInfo:?];
    }

    goto LABEL_70;
  }

  v90 = v8;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__16;
  v110 = __Block_byref_object_dispose__16;
  v111 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v102[3] = &unk_1E8413C58;
  v105 = &v106;
  v11 = v9;
  v103 = v11;
  v12 = v10;
  v104 = v12;
  [v7 gc_enumerateObjectsUsingBlock:v102];
  v13 = [v12 count];
  v14 = [v7 count];
  if (v13 == v14)
  {
    [v93 setActuators:v12];
  }

  else if (error)
  {
    v78 = MEMORY[0x1E696ABC0];
    v122[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v107[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v107[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v80 = ;
    v123[0] = v80;
    v122[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v107[5] localizedFailureReason];
    v16 = localizedFailureReason3;
    v17 = &stru_1F4E1BE30;
    if (localizedFailureReason3)
    {
      v17 = localizedFailureReason3;
    }

    v123[1] = v17;
    v122[2] = *MEMORY[0x1E696AA08];
    v18 = v107[5];
    if (v18)
    {
      v19 = v107[5];
      null = v19;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v19 = v107[5];
    }

    v77 = null;
    v123[2] = null;
    v122[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v19 gc_failingKeyPath];
    v22 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v23 = [gc_failingKeyPath arrayByAddingObject:@"Actuators"];
    v123[3] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:4];
    *error = [(NSError *)v78 gc_modelError:v24 userInfo:?];

    if (!v18)
    {
    }
  }

  _Block_object_dispose(&v106, 8);
  if (v13 != v14)
  {
    goto LABEL_58;
  }

  v101 = 0;
  v25 = [representationCopy gc_requiredObjectForKey:@"Nodes" ofClass:objc_opt_class() error:&v101];
  v26 = v101;
  if (!v25)
  {
    v6 = v26;
    if (error)
    {
      v69 = MEMORY[0x1E696ABC0];
      v120[0] = *MEMORY[0x1E696A578];
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v121[0] = v70;
      v120[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v6 localizedFailureReason];
      v121[1] = localizedFailureReason4;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:2];
      *error = [(NSError *)v69 gc_modelError:v72 userInfo:?];
    }

    goto LABEL_70;
  }

  v91 = v26;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__16;
  v110 = __Block_byref_object_dispose__16;
  v111 = 0;
  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_2;
  v98[3] = &unk_1E8414FA8;
  v100 = &v106;
  v28 = v27;
  v99 = v28;
  [v25 gc_enumerateObjectsUsingBlock:v98];
  v29 = [v28 count];
  v30 = [v25 count];
  if (v29 == v30)
  {
    [v93 setNodes:v28];
  }

  else if (error)
  {
    v79 = MEMORY[0x1E696ABC0];
    v118[0] = *MEMORY[0x1E696A578];
    localizedDescription2 = [v107[5] localizedDescription];
    if ([localizedDescription2 length])
    {
      [v107[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v81 = ;
    v119[0] = v81;
    v118[1] = *MEMORY[0x1E696A588];
    localizedFailureReason5 = [v107[5] localizedFailureReason];
    v32 = localizedFailureReason5;
    v33 = &stru_1F4E1BE30;
    if (localizedFailureReason5)
    {
      v33 = localizedFailureReason5;
    }

    v119[1] = v33;
    v118[2] = *MEMORY[0x1E696AA08];
    v34 = v107[5];
    if (v34)
    {
      v35 = v107[5];
      null2 = v35;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      v35 = v107[5];
    }

    v119[2] = null2;
    v118[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath2 = [v35 gc_failingKeyPath];
    v38 = gc_failingKeyPath2;
    if (!gc_failingKeyPath2)
    {
      gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
    }

    v39 = [gc_failingKeyPath2 arrayByAddingObject:@"Nodes"];
    v119[3] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:4];
    *error = [(NSError *)v79 gc_modelError:v40 userInfo:?];

    if (!v34)
    {
    }
  }

  _Block_object_dispose(&v106, 8);
  if (v29 != v30)
  {
    goto LABEL_58;
  }

  v97 = 0;
  v41 = [representationCopy gc_requiredObjectForKey:@"Outputs" ofClass:objc_opt_class() error:&v97];
  v42 = v97;
  if (!v41)
  {
    v6 = v42;
    if (error)
    {
      v73 = MEMORY[0x1E696ABC0];
      v116[0] = *MEMORY[0x1E696A578];
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v117[0] = v74;
      v116[1] = *MEMORY[0x1E696A588];
      localizedFailureReason6 = [v6 localizedFailureReason];
      v117[1] = localizedFailureReason6;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:2];
      *error = [(NSError *)v73 gc_modelError:v76 userInfo:?];
    }

LABEL_70:
    build = 0;
    v57 = v6;
    goto LABEL_57;
  }

  v92 = v42;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__16;
  v110 = __Block_byref_object_dispose__16;
  v111 = 0;
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v41, "count")}];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_3;
  v94[3] = &unk_1E8414FA8;
  v96 = &v106;
  v44 = v43;
  v95 = v44;
  [v41 gc_enumerateObjectsUsingBlock:v94];
  v45 = [v44 count];
  v46 = [v41 count];
  if (v45 == v46)
  {
    [v93 setOutputs:v44];
  }

  else if (error)
  {
    v82 = MEMORY[0x1E696ABC0];
    v114[0] = *MEMORY[0x1E696A578];
    localizedDescription3 = [v107[5] localizedDescription];
    if ([localizedDescription3 length])
    {
      [v107[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v83 = ;
    v115[0] = v83;
    v114[1] = *MEMORY[0x1E696A588];
    localizedFailureReason7 = [v107[5] localizedFailureReason];
    v48 = localizedFailureReason7;
    v49 = &stru_1F4E1BE30;
    if (localizedFailureReason7)
    {
      v49 = localizedFailureReason7;
    }

    v115[1] = v49;
    v114[2] = *MEMORY[0x1E696AA08];
    v50 = v107[5];
    if (v50)
    {
      v51 = v107[5];
      null3 = v51;
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v51 = v107[5];
    }

    v115[2] = null3;
    v114[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath3 = [v51 gc_failingKeyPath];
    v54 = gc_failingKeyPath3;
    if (!gc_failingKeyPath3)
    {
      gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
    }

    v55 = [gc_failingKeyPath3 arrayByAddingObject:@"Outputs"];
    v115[3] = v55;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:4];
    *error = [(NSError *)v82 gc_modelError:v56 userInfo:?];

    if (!v50)
    {
    }
  }

  _Block_object_dispose(&v106, 8);
  if (v45 == v46)
  {
    v57 = v93;
    build = [v93 build];
    v93 = 0;
LABEL_57:

    goto LABEL_59;
  }

LABEL_58:
  build = 0;
LABEL_59:

  v59 = *MEMORY[0x1E69E9840];

  return build;
}

void __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v71[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    v62 = 0;
    v13 = [GCGenericDeviceRumbleActuatorModel modelWithDictionaryRepresentation:v11 error:&v62];
    objc_storeStrong((v12 + 40), v62);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v13 name];
      v16 = [v14 member:v15];

      if (v16)
      {
        v17 = MEMORY[0x1E696ABC0];
        v65[0] = *MEMORY[0x1E696A588];
        v18 = MEMORY[0x1E696AEC0];
        v60 = v11;
        v19 = a4;
        v20 = objc_opt_class();
        v21 = [v13 name];
        v22 = [v18 stringWithFormat:@"Duplicate definition of '%@' with name '%@'.", v20, v21];
        v66[0] = v22;
        v65[1] = @"GCFailingKeyPathErrorKey";
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
        v64 = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        v66[1] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v26 = [(NSError *)v17 gc_modelError:v25 userInfo:?];
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        *v19 = 1;
        v11 = v60;
      }

      else
      {
        [*(a1 + 40) addObject:v13];
        v29 = *(a1 + 32);
        v30 = [v13 name];
        [v29 addObject:v30];
      }
    }

    else
    {
      v58 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v40 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v41 = &stru_1F4E1BE30;
      v61 = v40;
      if (v40)
      {
        v41 = v40;
      }

      v68[0] = v41;
      v67[1] = *MEMORY[0x1E696A588];
      v42 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v59 = v42;
      if (!v42)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v43 = a4;
      v57 = v42;
      v68[1] = v42;
      v67[2] = *MEMORY[0x1E696AA08];
      v44 = *(*(*(a1 + 48) + 8) + 40);
      v45 = v44;
      v46 = v44;
      if (!v44)
      {
        v46 = [MEMORY[0x1E695DFB0] null];
        v45 = *(*(*(a1 + 48) + 8) + 40);
      }

      v56 = v46;
      v68[2] = v46;
      v67[3] = @"GCFailingKeyPathErrorKey";
      v47 = [v45 gc_failingKeyPath];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = MEMORY[0x1E695E0F0];
      }

      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v51 = [v49 arrayByAddingObject:v50];
      v68[3] = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:4];
      v53 = [(NSError *)v58 gc_modelError:v52 userInfo:?];
      v54 = *(*(a1 + 48) + 8);
      v55 = *(v54 + 40);
      *(v54 + 40) = v53;

      if (!v44)
      {
      }

      if (!v59)
      {
      }

      *v43 = 1;
    }
  }

  else
  {
    v32 = MEMORY[0x1E696ABC0];
    v70[0] = *MEMORY[0x1E696A588];
    v33 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v71[0] = v33;
    v70[1] = @"GCFailingKeyPathErrorKey";
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v69 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    v71[1] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
    v37 = [(NSError *)v32 gc_modelError:v36 userInfo:?];
    v38 = *(*(a1 + 48) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    *a4 = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_2(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v23[0] = *MEMORY[0x1E696A588];
    v14 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v24[0] = v14;
    v23[1] = @"GCFailingKeyPathErrorKey";
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v22 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v24[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v18 = [(NSError *)v13 gc_modelError:v17 userInfo:?];
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *a4 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_3(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
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
    v13 = [GCGenericDeviceRumbleOutputModel modelWithDictionaryRepresentation:v11 error:&v43];
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