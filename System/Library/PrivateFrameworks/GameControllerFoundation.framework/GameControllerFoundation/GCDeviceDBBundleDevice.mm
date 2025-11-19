@interface GCDeviceDBBundleDevice
@end

@implementation GCDeviceDBBundleDevice

void __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v31 = 0;
    v12 = GCHIDDeviceAttributesPredicateFromMatchingDictionary(v11, &v31);
    v13 = v31;
    v14 = v13;
    if (v12)
    {
      [*(a1 + 32) addObject:v12];
    }

    else
    {
      v24 = MEMORY[0x1E696ABC0];
      v34[0] = *MEMORY[0x1E696A588];
      v34[1] = 0x1F4E1C010;
      v35[0] = v13;
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v33 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v35[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v28 = [(NSError *)v24 gc_deviceDBError:v27 userInfo:?];
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      *a4 = 1;
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v37[0] = *MEMORY[0x1E696A588];
    v17 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v37[1] = 0x1F4E1C010;
    v38[0] = v17;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v36 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v38[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v21 = [(NSError *)v16 gc_deviceDBError:v20 userInfo:?];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    *a4 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke_2(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
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
    v23[1] = 0x1F4E1C010;
    v24[0] = v14;
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v22 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v24[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v18 = [(NSError *)v13 gc_deviceDBError:v17 userInfo:?];
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *a4 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end