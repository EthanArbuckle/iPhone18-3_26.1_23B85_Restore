@interface NSDictionary(GC)
- (id)gc_dictionaryByRemovingObjectsForKeys:()GC;
- (id)gc_dictionaryByReplacingValueForKey:()GC withValue:;
- (id)gc_objectForKey:()GC ofClass:;
- (id)gc_objectForKey:()GC ofClass:error:;
- (id)gc_requiredObjectForKey:()GC ofClass:;
- (id)gc_requiredObjectForKey:()GC ofClass:error:;
- (uint64_t)gc_enumerateKeysAndObjectsUsingBlock:()GC;
- (void)gc_makeValuesPerformSelector:()GC withObject:;
@end

@implementation NSDictionary(GC)

- (id)gc_objectForKey:()GC ofClass:
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_objectForKey:ofClass:];
  }

  v6 = [a1 objectForKey:?];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [a3 description];
    v10 = NSStringFromClass(a4);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v9, v12];
    v14 = MEMORY[0x1E695DF30];
    v18[0] = @"GC_NSExceptionErrorDomain";
    v18[1] = @"GC_NSExceptionErrorCode";
    v19[0] = @"NSCollectionErrorDomain";
    v19[1] = &unk_1F4E36820;
    v18[2] = *MEMORY[0x1E696A578];
    v18[3] = @"NSCollectionErrorIndexKey";
    v19[2] = @"Invalid dictionary.";
    v19[3] = v9;
    v18[4] = @"NSCollectionErrorElementClassKey";
    v18[5] = @"NSCollectionErrorExpectedClassKey";
    v19[4] = v12;
    v19[5] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
    v16 = [v14 exceptionWithName:@"NSInvalidCollectionException" reason:v13 userInfo:v15];
    v17 = v16;

    objc_exception_throw(v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)gc_objectForKey:()GC ofClass:error:
{
  v21[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_objectForKey:ofClass:error:];
  }

  v8 = [a1 objectForKey:?];
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      v12 = [a3 description];
      v13 = NSStringFromClass(a4);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v12, v15];
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v20[0] = *MEMORY[0x1E696A578];
      v20[1] = v18;
      v21[0] = @"Invalid dictionary.";
      v21[1] = v16;
      v20[2] = @"NSCollectionErrorIndexKey";
      v20[3] = @"NSCollectionErrorElementClassKey";
      v21[2] = v12;
      v21[3] = v15;
      v20[4] = @"NSCollectionErrorExpectedClassKey";
      v21[4] = v13;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
      *a5 = [v17 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v19];
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)gc_requiredObjectForKey:()GC ofClass:
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_requiredObjectForKey:ofClass:];
  }

  v6 = [a1 objectForKey:?];
  if (!v6)
  {
    [(NSDictionary(GC) *)a3 gc_requiredObjectForKey:v21 ofClass:v22];
  }

  v7 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [a3 description];
    v11 = NSStringFromClass(a4);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v10, v13];
    v15 = MEMORY[0x1E695DF30];
    v19[0] = @"GC_NSExceptionErrorDomain";
    v19[1] = @"GC_NSExceptionErrorCode";
    v20[0] = @"NSCollectionErrorDomain";
    v20[1] = &unk_1F4E36820;
    v19[2] = *MEMORY[0x1E696A578];
    v19[3] = @"NSCollectionErrorIndexKey";
    v20[2] = @"Invalid dictionary.";
    v20[3] = v10;
    v19[4] = @"NSCollectionErrorElementClassKey";
    v19[5] = @"NSCollectionErrorExpectedClassKey";
    v20[4] = v13;
    v20[5] = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
    v17 = [v15 exceptionWithName:@"NSInvalidCollectionException" reason:v14 userInfo:v16];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)gc_requiredObjectForKey:()GC ofClass:error:
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSDictionary(GC) gc_requiredObjectForKey:ofClass:error:];
  }

  v8 = [a1 objectForKey:?];
  if (v8)
  {
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_5;
    }

    if (a5)
    {
      v13 = [a3 description];
      v14 = NSStringFromClass(a4);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v13, v19];
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A588];
      v24[0] = *MEMORY[0x1E696A578];
      v24[1] = v22;
      v25[0] = @"Invalid dictionary.";
      v25[1] = v20;
      v24[2] = @"NSCollectionErrorIndexKey";
      v24[3] = @"NSCollectionErrorElementClassKey";
      v25[2] = v13;
      v25[3] = v19;
      v24[4] = @"NSCollectionErrorExpectedClassKey";
      v25[4] = v14;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
      *a5 = [v21 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v23];

      goto LABEL_13;
    }
  }

  else if (a5)
  {
    v13 = [a3 description];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key '%@'.", v13];
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v26[0] = *MEMORY[0x1E696A578];
    v26[1] = v16;
    v27[0] = @"Invalid dictionary.";
    v27[1] = v14;
    v26[2] = @"NSCollectionErrorIndexKey";
    v27[2] = v13;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    *a5 = [v15 errorWithDomain:@"NSCollectionErrorDomain" code:1 userInfo:v17];

LABEL_13:
  }

  v10 = 0;
LABEL_5:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)gc_makeValuesPerformSelector:()GC withObject:
{
  v6 = [a1 allValues];
  [v6 makeObjectsPerformSelector:a3 withObject:a4];
}

- (uint64_t)gc_enumerateKeysAndObjectsUsingBlock:()GC
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v4[3] = &__block_descriptor_40_e15_v32__0_8_16_B24lu32l8;
  v4[4] = a3;
  return [a1 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)gc_dictionaryByReplacingValueForKey:()GC withValue:
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [NSDictionary(GC) gc_dictionaryByReplacingValueForKey:withValue:];
  }

  v8 = v7;
  v9 = [a1 mutableCopy];
  [v9 setValue:v8 forKey:v6];
  v10 = [v9 copy];

  return v10;
}

- (id)gc_dictionaryByRemovingObjectsForKeys:()GC
{
  if (!a3)
  {
    [NSDictionary(GC) gc_dictionaryByRemovingObjectsForKeys:];
  }

  v4 = [a1 mutableCopy];
  [v4 removeObjectsForKeys:a3];
  v5 = [v4 copy];

  return v5;
}

- (void)gc_objectForKey:()GC ofClass:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_objectForKey:ofClass:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_objectForKey:()GC ofClass:error:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_objectForKey:ofClass:error:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_requiredObjectForKey:()GC ofClass:.cold.1(void *a1, void *a2, void *a3)
{
  v5 = [a1 description];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key '%@'.", v5];
  v7 = MEMORY[0x1E695DF30];
  *a2 = @"GC_NSExceptionErrorDomain";
  *a3 = @"NSCollectionErrorDomain";
  a2[1] = @"GC_NSExceptionErrorCode";
  a3[1] = &unk_1F4E36838;
  a2[2] = *MEMORY[0x1E696A578];
  a3[2] = @"Invalid dictionary.";
  a2[3] = @"NSCollectionErrorIndexKey";
  a3[3] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:4];
  v9 = [v7 exceptionWithName:@"NSInvalidCollectionException" reason:v6 userInfo:v8];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)gc_requiredObjectForKey:()GC ofClass:.cold.2()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_requiredObjectForKey:ofClass:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_requiredObjectForKey:()GC ofClass:error:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSDictionary(GC) gc_requiredObjectForKey:ofClass:error:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_dictionaryByReplacingValueForKey:()GC withValue:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: key cannot be nil", "-[NSDictionary(GC) gc_dictionaryByReplacingValueForKey:withValue:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_dictionaryByRemovingObjectsForKeys:()GC .cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: keys cannot be nil", "-[NSDictionary(GC) gc_dictionaryByRemovingObjectsForKeys:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

@end