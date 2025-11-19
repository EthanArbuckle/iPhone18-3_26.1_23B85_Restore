@interface _GCDeviceDBBundleDevice
- (_GCDeviceDBBundleDevice)init;
- (_GCDeviceDBBundleDevice)initWithBundle:(id)a3 dictionary:(id)a4 error:(id *)a5;
- (id)personalities;
@end

@implementation _GCDeviceDBBundleDevice

- (_GCDeviceDBBundleDevice)initWithBundle:(id)a3 dictionary:(id)a4 error:(id *)a5
{
  v98[7] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v71 = v9;
  if (!v9)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a2 dictionary:self error:?];
  }

  if (!v10)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a2 dictionary:self error:?];
  }

  v88.receiver = self;
  v88.super_class = _GCDeviceDBBundleDevice;
  v11 = [(_GCDeviceDBBundleDevice *)&v88 init];
  objc_storeStrong(&v11->_bundle, a3);
  v87 = 0;
  v12 = [v10 gc_objectForKey:@"CompatibilityVersion" ofClass:objc_opt_class() error:&v87];
  v13 = v87;
  v14 = v13;
  if (!v12 && v13)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a5 dictionary:v13 error:?];
    goto LABEL_47;
  }

  if (v12)
  {
    v15 = [[GCVersion alloc] initWithString:v12];
    if (!v15)
    {
      if (!a5)
      {
        goto LABEL_13;
      }

      v59 = MEMORY[0x1E696ABC0];
      v60 = *MEMORY[0x1E696A578];
      v98[0] = @"Invalid device definition.";
      v61 = *MEMORY[0x1E696A588];
      v97[0] = v60;
      v97[1] = v61;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid version.", v12];
      v98[1] = v21;
      v97[2] = 0x1F4E1C010;
      v96 = @"CompatibilityVersion";
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
      v98[2] = v22;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];
      *a5 = [(NSError *)v59 gc_deviceDBError:v62 userInfo:?];

      goto LABEL_12;
    }

    v16 = +[GCVersion currentSourceVersion];
    v17 = [(GCVersion *)v15 isGreaterThanSourceVersion:v16];

    if (v17)
    {
      if (!a5)
      {
LABEL_13:

LABEL_47:
        v52 = 0;
        goto LABEL_48;
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v95[0] = @"Incompatible device definition.";
      v20 = *MEMORY[0x1E696A588];
      v94[0] = v19;
      v94[1] = v20;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Device definition requires version '%@'.", v15];
      v95[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:2];
      *a5 = [(NSError *)v18 gc_deviceDBError:v22 userInfo:?];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v86 = 0;
  v23 = [v10 gc_requiredObjectForKey:@"Identifier" ofClass:objc_opt_class() error:&v86];
  v24 = v86;
  if (!v23)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a5 dictionary:v24 error:?];
    goto LABEL_47;
  }

  identifier = v11->_identifier;
  v11->_identifier = v23;

  v26 = [v10 gc_objectForKey:@"IOPropertyMatch" ofClass:objc_opt_class() error:0];
  v27 = v26;
  if (v26)
  {
    v93 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    v29 = 0;
  }

  else
  {
    v85 = 0;
    v28 = [v10 gc_requiredObjectForKey:@"IOPropertyMatch" ofClass:objc_opt_class() error:&v85];
    v29 = v85;
    if (!v28)
    {
      [_GCDeviceDBBundleDevice initWithBundle:a5 dictionary:v29 error:?];
      goto LABEL_47;
    }
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__10;
  v83 = __Block_byref_object_dispose__10;
  v84 = 0;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke;
  v76[3] = &unk_1E8414FA8;
  v78 = &v79;
  v31 = v30;
  v77 = v31;
  [v28 gc_enumerateObjectsUsingBlock:v76];
  v32 = [v31 count];
  v33 = [v28 count];
  if (v32 == v33)
  {
    v34 = [v31 copy];
    ioMatchingPredicates = v11->_ioMatchingPredicates;
    v11->_ioMatchingPredicates = v34;
LABEL_21:

    goto LABEL_22;
  }

  if (a5)
  {
    v65 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v92[0] = @"Invalid device definition.";
    v54 = *MEMORY[0x1E696A588];
    v91[0] = v53;
    v91[1] = v54;
    v55 = [v80[5] localizedFailureReason];
    ioMatchingPredicates = v55;
    v56 = &stru_1F4E1BE30;
    if (v55)
    {
      v56 = v55;
    }

    v92[1] = v56;
    v91[2] = @"GCFailingKeyPathErrorKey";
    v57 = [v80[5] gc_failingKeyPath];
    v69 = v57;
    if (!v57)
    {
      v57 = MEMORY[0x1E695E0F0];
    }

    v67 = [v57 arrayByAddingObject:@"IOPropertyMatch"];
    v92[2] = v67;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:3];
    *a5 = [(NSError *)v65 gc_deviceDBError:v58 userInfo:?];

    goto LABEL_21;
  }

LABEL_22:

  _Block_object_dispose(&v79, 8);
  if (v32 != v33)
  {
    goto LABEL_47;
  }

  v75 = 0;
  v36 = [v10 gc_requiredObjectForKey:@"Personalities" ofClass:objc_opt_class() error:&v75];
  v37 = v75;
  if (!v36)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a5 dictionary:v37 error:?];
    goto LABEL_47;
  }

  v68 = v37;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__10;
  v83 = __Block_byref_object_dispose__10;
  v84 = 0;
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v36, "count")}];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke_2;
  v72[3] = &unk_1E8414FA8;
  v74 = &v79;
  v39 = v38;
  v73 = v39;
  [v36 gc_enumerateObjectsUsingBlock:v72];
  v40 = [v39 count];
  v41 = [v36 count];
  if (v40 == v41)
  {
    v42 = [v39 copy];
    personalityPaths = v11->_personalityPaths;
    v11->_personalityPaths = v42;
  }

  else
  {
    if (!a5)
    {
      goto LABEL_33;
    }

    v66 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v90[0] = @"Invalid device definition.";
    v45 = *MEMORY[0x1E696A588];
    v89[0] = v44;
    v89[1] = v45;
    v46 = [v80[5] localizedFailureReason];
    personalityPaths = v46;
    v47 = &stru_1F4E1BE30;
    if (v46)
    {
      v47 = v46;
    }

    v90[1] = v47;
    v89[2] = 0x1F4E1C010;
    v48 = [(NSError *)v80[5] gc_dbFailingPath];
    v49 = v48;
    if (!v48)
    {
      v48 = MEMORY[0x1E695E0F0];
    }

    v50 = [v48 arrayByAddingObject:@"Personalities"];
    v90[2] = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:3];
    *a5 = [(NSError *)v66 gc_deviceDBError:v51 userInfo:?];
  }

LABEL_33:
  _Block_object_dispose(&v79, 8);

  if (v40 != v41)
  {
    goto LABEL_47;
  }

  v52 = v11;
LABEL_48:

  v63 = *MEMORY[0x1E69E9840];
  return v52;
}

- (_GCDeviceDBBundleDevice)init
{
  [(_GCDeviceDBBundleDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)personalities
{
  v3 = [_GCDeviceDBBundleDevicePersonalitiesEnumerator alloc];
  bundle = self->_bundle;
  v5 = [(NSArray *)self->_personalityPaths objectEnumerator];
  v6 = [(_GCDeviceDBBundleDevicePersonalitiesEnumerator *)v3 initWithBundle:bundle personalityPaths:v5];

  return v6;
}

- (void)initWithBundle:(uint64_t)a1 dictionary:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceDBBundleDevice.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %s", "bundle != nil"}];
}

- (void)initWithBundle:(uint64_t)a1 dictionary:(uint64_t)a2 error:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceDBBundleDevice.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %s", "dict != nil"}];
}

- (void)initWithBundle:(uint64_t)a1 dictionary:(void *)a2 error:.cold.3(uint64_t a1, void *a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_5_5(v6, v7, *MEMORY[0x1E696A578]);
    v9 = [OUTLINED_FUNCTION_4_4(v8 *MEMORY[0x1E696A588])];
    OUTLINED_FUNCTION_3_5(v9);
    OUTLINED_FUNCTION_1_10();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = OUTLINED_FUNCTION_0_2();
    *v2 = [(NSError *)v11 gc_deviceDBError:v12 userInfo:v13];
  }
}

@end