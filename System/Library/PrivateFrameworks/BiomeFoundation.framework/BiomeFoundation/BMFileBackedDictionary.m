@interface BMFileBackedDictionary
- (BOOL)_loadDictionaryOrCreate:(BOOL)a3 readOnly:(BOOL)a4 initialDictionary:(id)a5 error:(id *)a6;
- (BOOL)clear:(id *)a3;
- (BOOL)clearObjectForKey:(id)a3 error:(id *)a4;
- (BOOL)isReadOnly;
- (BOOL)writeUpdatedObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)writeUpdatedObjects:(id)a3 forKeys:(id)a4 error:(id *)a5;
- (id)description;
- (id)mutableDictionaryForKey:(id)a3 error:(id *)a4;
- (id)objectForKey:(id)a3;
@end

@implementation BMFileBackedDictionary

- (BOOL)_loadDictionaryOrCreate:(BOOL)a3 readOnly:(BOOL)a4 initialDictionary:(id)a5 error:(id *)a6
{
  v7 = a4;
  v58[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [(NSURL *)self->_fileURL path];
  fileURL = self->_fileURL;
  v50 = 0;
  v13 = BMReadPropertyList(fileURL, !v7, &v50);
  v14 = v50;
  dictionary = self->_dictionary;
  self->_dictionary = v13;

  if (self->_dictionary)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v7)
      {
        goto LABEL_24;
      }

      v16 = self->_dictionary;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_24;
      }

      v48 = a6;
      v49 = v10;
      v17 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = self->_dictionary;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v18 stringWithFormat:@"Expected mutable plist class (%@) but received class (%@) for object: %@ at path: %@", v20, v23, self->_dictionary, v11];
      v58[0] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v26 = [v17 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:5 userInfo:v25];

      v14 = v25;
    }

    else
    {
      v48 = a6;
      v49 = v10;
      v34 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v35 = MEMORY[0x1E696AEC0];
      v36 = self->_dictionary;
      v37 = objc_opt_class();
      v20 = NSStringFromClass(v37);
      v23 = [v35 stringWithFormat:@"Unexpected plist class (%@) of object: %@ at path: %@", v20, self->_dictionary, v11];
      v56 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v26 = [v34 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:5 userInfo:v24];
    }

    v31 = __biome_log_for_category(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    v14 = v26;
    a6 = v48;
    v10 = v49;
  }

  else
  {
    v27 = [v14 code];
    v28 = __biome_log_for_category(16);
    v29 = v28;
    if (v27 == 260)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }

      v30 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696AA08];
      v54 = v14;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v32 = v30;
      v33 = 6;
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }

      if (v14)
      {
        v51 = *MEMORY[0x1E696AA08];
        v52 = v14;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      }

      else
      {
        v31 = 0;
      }

      v32 = MEMORY[0x1E696ABC0];
      v33 = 7;
    }

    v38 = [v32 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:v33 userInfo:v31];

    v14 = v38;
  }

  if (!a3)
  {
    BMSetError(a6, v14);
    v40 = 0;
    goto LABEL_32;
  }

  if (v7)
  {
    v39 = self->_dictionary;
    self->_dictionary = MEMORY[0x1E695E0F8];

LABEL_24:
    v40 = 1;
    goto LABEL_32;
  }

  v41 = __biome_log_for_category(16);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
  }

  v42 = [v10 mutableCopy];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = objc_opt_new();
  }

  v45 = self->_dictionary;
  self->_dictionary = v44;

  v40 = BMWritePropertyList(self->_dictionary, self->_fileURL, self->_protectionClass, a6);
LABEL_32:

  v46 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BMFileBackedDictionary;
  v3 = [(BMFileBackedDictionary *)&v7 description];
  v4 = [(NSURL *)self->_fileURL path];
  v5 = [v3 stringByAppendingFormat:@" fileBackedDictionary: %@", v4];

  return v5;
}

- (BOOL)isReadOnly
{
  dictionary = self->_dictionary;
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) == 0;
}

- (id)objectForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)mutableDictionaryForKey:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(BMFileBackedDictionary *)self objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_10:
    v17 = v8;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 mutableCopy];
    goto LABEL_10;
  }

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    goto LABEL_10;
  }

  v9 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696A578];
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Unexpected object: %@ for key: %@ expected: %@", v7, v6, v12, v20];
  v21[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [v9 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:4 userInfo:v14];

  BMSetError(a4, v15);
  v16 = __biome_log_for_category(16);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
  }

  v17 = 0;
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)writeUpdatedObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v22 = a3;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a4;
    v10 = a3;
    v11 = [v8 arrayWithObjects:&v22 count:1];
    v21 = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];

    v13 = [(BMFileBackedDictionary *)self writeUpdatedObjects:v11 forKeys:v12 error:a5];
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v15 = MEMORY[0x1E696AEC0];
    v16 = a4;
    v17 = a3;
    v11 = [v15 stringWithFormat:@"Invalid {object: %@ key: %@}", v17, v16];
    v24[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v14 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:1 userInfo:v12];

    BMSetError(a5, v18);
    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)writeUpdatedObjects:(id)a3 forKeys:(id)a4 error:(id *)a5
{
  v60[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(BMFileBackedDictionary *)self isReadOnly])
  {
    v10 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance: %@ is read only.", self];
    v60[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v13 = v10;
    v14 = 3;
LABEL_18:
    v24 = [v13 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:v14 userInfo:v12];
    BMSetError(a5, v24);
    v25 = 0;
    goto LABEL_19;
  }

  v15 = [v8 count];
  if (v15 != [v9 count])
  {
    v23 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected number of objects: %@ for keys: %@", v8, v9];
    v58 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v13 = v23;
    v14 = 1;
    goto LABEL_18;
  }

  v44 = a5;
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v16 = [v8 count];
  if ([v8 count])
  {
    for (i = 0; i < [v8 count]; ++i)
    {
      v18 = [v8 objectAtIndex:i];
      v19 = [v9 objectAtIndex:i];
      v20 = [v11 objectForKey:v19];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = [(NSDictionary *)self->_dictionary objectForKey:v19];
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      if ([v21 isEqual:v18])
      {
        v22 = __biome_log_for_category(16);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v51 = v18;
          v52 = 2112;
          v53 = v19;
          _os_log_debug_impl(&dword_1AC15D000, v22, OS_LOG_TYPE_DEBUG, "object: %@ is already recorded for key: %@", buf, 0x16u);
        }

        --v16;
        goto LABEL_15;
      }

      [v11 setObject:v21 forKey:v19];
LABEL_14:
      [(NSDictionary *)self->_dictionary setObject:v18 forKey:v19];
LABEL_15:
    }
  }

  if (!v16)
  {
    v25 = 1;
    goto LABEL_20;
  }

  fileURL = self->_fileURL;
  dictionary = self->_dictionary;
  protectionClass = self->_protectionClass;
  v49 = 0;
  v25 = BMWritePropertyList(dictionary, fileURL, protectionClass, &v49);
  v31 = v49;
  v12 = v31;
  if (v25)
  {
    v24 = __biome_log_for_category(16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v51 = v8;
      v52 = 2112;
      v53 = v9;
      v54 = 2112;
      v55 = v11;
      _os_log_debug_impl(&dword_1AC15D000, v24, OS_LOG_TYPE_DEBUG, "Updated object(s): %@ for key(s): %@ replacing prior object(s): %@", buf, 0x20u);
    }
  }

  else
  {
    v42 = v31;
    v43 = v25;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = v9;
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v45 + 1) + 8 * j);
          v38 = [v11 objectForKey:v37];
          v39 = self->_dictionary;
          if (v38)
          {
            [(NSDictionary *)v39 setObject:v38 forKey:v37];
          }

          else
          {
            [(NSDictionary *)v39 removeObjectForKey:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v34);
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write updated object(s): %@ for key(s): %@ reverting to prior object(s): %@", v8, v32, v11];
    [v24 setObject:v40 forKey:*MEMORY[0x1E696A578]];

    if (v42)
    {
      [v24 setObject:v42 forKey:*MEMORY[0x1E696AA08]];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:8 userInfo:v24];

    BMSetError(v44, v12);
    v41 = __biome_log_for_category(16);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
    }

    v25 = v43;
  }

LABEL_19:

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)clearObjectForKey:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(BMFileBackedDictionary *)self isReadOnly])
  {
    v7 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance: %@ is read only.", self];
    v28[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v10 = v7;
    v11 = 3;
LABEL_10:
    v19 = [v10 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:v11 userInfo:v9];
    BMSetError(a4, v19);

    v15 = 0;
    goto LABEL_20;
  }

  if (!v6)
  {
    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid key: %@", 0];
    v26 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v10 = v18;
    v11 = 1;
    goto LABEL_10;
  }

  v8 = [(NSDictionary *)self->_dictionary objectForKey:v6];
  if (v8)
  {
    [(NSDictionary *)self->_dictionary removeObjectForKey:v6];
    fileURL = self->_fileURL;
    dictionary = self->_dictionary;
    protectionClass = self->_protectionClass;
    v24 = 0;
    v15 = BMWritePropertyList(dictionary, fileURL, protectionClass, &v24);
    v16 = v24;
    if (v15)
    {
      v17 = __biome_log_for_category(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [BMFileBackedDictionary clearObjectForKey:error:];
      }

      v9 = v16;
    }

    else
    {
      [(NSDictionary *)self->_dictionary setObject:v8 forKey:v6];
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write removal for key: %@ reverting to prior object: %@", v6, v8];
      [v17 setObject:v20 forKey:*MEMORY[0x1E696A578]];

      if (v16)
      {
        [v17 setObject:v16 forKey:*MEMORY[0x1E696AA08]];
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:8 userInfo:v17];

      BMSetError(a4, v9);
      v21 = __biome_log_for_category(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
      }
    }
  }

  else
  {
    v9 = __biome_log_for_category(16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BMFileBackedDictionary clearObjectForKey:error:];
    }

    v15 = 1;
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)clear:(id *)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (![(BMFileBackedDictionary *)self isReadOnly])
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [(NSURL *)self->_fileURL path];
    if (v8 && [v7 fileExistsAtPath:v8])
    {
      fileURL = self->_fileURL;
      v18 = 0;
      v11 = [v7 removeItemAtURL:fileURL error:&v18];
      v12 = v18;
      if ((v11 & 1) == 0)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove file-backed dictionary at path: %@", v8];
        [v13 setObject:v14 forKey:*MEMORY[0x1E696A578]];

        if (v12)
        {
          [v13 setObject:v12 forKey:*MEMORY[0x1E696AA08]];
        }

        v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:8 userInfo:v13];

        BMSetError(a3, v6);
        v15 = __biome_log_for_category(16);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [BMFileBackedDictionary _loadDictionaryOrCreate:readOnly:initialDictionary:error:];
        }

        goto LABEL_3;
      }
    }

    else
    {
      v12 = 0;
    }

    [(NSDictionary *)self->_dictionary removeAllObjects];
    v9 = 1;
    v6 = v12;
    goto LABEL_14;
  }

  v5 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance: %@ is read only.", self];
  v20[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v8 = [v5 errorWithDomain:@"com.apple.BiomeFoundation.FileBackedDictionary" code:3 userInfo:v7];
  BMSetError(a3, v8);
LABEL_3:
  v9 = 0;
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_loadDictionaryOrCreate:readOnly:initialDictionary:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0(&dword_1AC15D000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_loadDictionaryOrCreate:readOnly:initialDictionary:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_ERROR, "Failed to read prior file-backed dictionary at path: %@ error: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_loadDictionaryOrCreate:readOnly:initialDictionary:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_DEBUG, "No prior file-backed dictionary found at path: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_loadDictionaryOrCreate:readOnly:initialDictionary:error:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_2(&dword_1AC15D000, v0, v1, "Initializing file-backed dictionary at path: %@ with dictionary: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)clearObjectForKey:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_2(&dword_1AC15D000, v0, v1, "Removed object: %@ for key: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)clearObjectForKey:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_DEBUG, "No object exists for key: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end