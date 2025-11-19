@interface BMResourceDescriptor
+ (BOOL)_validateInput:(id)a3 description:(id)a4 error:(id *)a5;
+ (BOOL)enumerateDescriptorsFromEncodedString:(id)a3 error:(id *)a4 usingBlock:(id)a5;
+ (id)_illegalCharactersSet;
+ (id)descriptorsFromEncodedString:(id)a3 error:(id *)a4;
+ (id)encodedStringFromDescriptors:(id)a3 error:(id *)a4;
+ (id)sortedDescriptorsDetectingDuplicates:(id)a3 error:(id *)a4;
- (BMResourceDescriptor)initWithCoder:(id)a3;
- (BMResourceDescriptor)initWithEncodedString:(id)a3 error:(id *)a4;
- (BMResourceDescriptor)initWithKey:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMResourceDescriptor

+ (id)sortedDescriptorsDetectingDuplicates:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__BMResourceDescriptor_sortedDescriptorsDetectingDuplicates_error___block_invoke;
  v14[3] = &unk_1E796B808;
  v14[4] = &v15;
  v6 = [v5 sortedArrayUsingComparator:v14];
  if ([v16[5] count])
  {
    v7 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found descriptors with duplicate keys: %@", v16[5]];
    v22[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v7 errorWithDomain:@"BMResourceDescriptorError" code:2 userInfo:v9];
    if (a4 && v10)
    {
      v10 = v10;
      *a4 = v10;
    }

    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __67__BMResourceDescriptor_sortedDescriptorsDetectingDuplicates_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 key];
  v8 = [v6 key];
  if ([v7 isEqual:v8])
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v9 addObject:v5];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  v13 = [v7 compare:v8];

  return v13;
}

+ (id)descriptorsFromEncodedString:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__BMResourceDescriptor_descriptorsFromEncodedString_error___block_invoke;
  v12[3] = &unk_1E796B830;
  v9 = v7;
  v13 = v9;
  LODWORD(a4) = [v8 enumerateDescriptorsFromEncodedString:v6 error:a4 usingBlock:v12];

  if (a4)
  {
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)encodedStringFromDescriptors:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v9 = NSStringFromClass(v19);
    v7 = [v18 stringWithFormat:@"Invalid class for descriptors - expected: %@ received: %@", v9, objc_opt_class()];
    v32[0] = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v21 = [v17 errorWithDomain:@"BMResourceDescriptorError" code:1 userInfo:v20];
    if (a4 && v21)
    {
      v21 = v21;
      *a4 = v21;
    }

    v16 = 0;
    goto LABEL_17;
  }

  if ([v6 count])
  {
    v29 = 0;
    v7 = [a1 sortedDescriptorsDetectingDuplicates:v6 error:&v29];
    v8 = v29;
    v9 = v8;
    if (!v7 || v8)
    {
      v16 = 0;
      if (a4 && v8)
      {
        v24 = v8;
        v16 = 0;
        *a4 = v9;
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = v7;
      v11 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v7);
            }

            v15 = [*(*(&v25 + 1) + 8 * i) encodedString];
            [v10 addObject:v15];
          }

          v12 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v12);
      }

      v16 = [v10 componentsJoinedByString:@"&"];
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = &stru_1F20E2850;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)enumerateDescriptorsFromEncodedString:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"Invalid class for encodedString - expected: %@ received: %@", v13, objc_opt_class()];
    v29[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v16 = [v10 errorWithDomain:@"BMResourceDescriptorError" code:1 userInfo:v15];
    if (a4 && v16)
    {
      v16 = v16;
      *a4 = v16;
    }

    LOBYTE(v9) = 0;
LABEL_19:

    goto LABEL_20;
  }

  if (([v7 isEqual:&stru_1F20E2850] & 1) == 0)
  {
    [v7 componentsSeparatedByString:@"&"];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v26 = 0u;
    v17 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
LABEL_10:
      v20 = 0;
      while (1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v9 = [objc_alloc(objc_opt_class()) initWithEncodedString:*(*(&v23 + 1) + 8 * v20) error:a4];
        if (!v9)
        {
          break;
        }

        v8[2](v8, v9);

        if (v18 == ++v20)
        {
          v18 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
          LOBYTE(v9) = 1;
          if (v18)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    v13 = v14;
    goto LABEL_19;
  }

  LOBYTE(v9) = 1;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)_illegalCharactersSet
{
  if (_illegalCharactersSet_onceToken != -1)
  {
    +[BMResourceDescriptor _illegalCharactersSet];
  }

  v3 = _illegalCharactersSet_characterSet;

  return v3;
}

void __45__BMResourceDescriptor__illegalCharactersSet__block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  [v2 addCharactersInString:@"="];
  [v2 addCharactersInString:@"&"];
  v0 = [v2 copy];
  v1 = _illegalCharactersSet_characterSet;
  _illegalCharactersSet_characterSet = v0;
}

+ (BOOL)_validateInput:(id)a3 description:(id)a4 error:(id *)a5
{
  v37[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"Invalid class for %@ - expected: %@ received: %@", v9, v20, objc_opt_class()];
    v37[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v23 = [v17 errorWithDomain:@"BMResourceDescriptorError" code:1 userInfo:v22];
    if (a5 && v23)
    {
      v23 = v23;
      *a5 = v23;
    }

    goto LABEL_17;
  }

  if (![v8 length])
  {
    v24 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid empty string for %@", v9];
    v35 = v20;
    v25 = MEMORY[0x1E695DF20];
    v26 = &v35;
    v27 = &v34;
LABEL_14:
    v21 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    v28 = [v24 errorWithDomain:@"BMResourceDescriptorError" code:3 userInfo:v21];
    v22 = v28;
    if (a5 && v28)
    {
      v29 = v28;
      *a5 = v22;
    }

LABEL_17:

    v16 = 0;
    goto LABEL_18;
  }

  v10 = [v8 length];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v8 characterAtIndex:v12];
      v14 = [a1 _illegalCharactersSet];
      v15 = [v14 characterIsMember:v13];

      if (v15)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }

    v24 = MEMORY[0x1E696ABC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@: %@ contains whitespace or separator character: '%c'", v9, v8, v13, *MEMORY[0x1E696A578]];
    v33 = v20;
    v25 = MEMORY[0x1E695DF20];
    v26 = &v33;
    v27 = &v32;
    goto LABEL_14;
  }

LABEL_7:
  v16 = 1;
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BMResourceDescriptor)initWithKey:(id)a3 value:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = BMResourceDescriptor;
  v11 = [(BMResourceDescriptor *)&v27 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v11->_key, a3);
  v13 = objc_opt_class();
  key = v12->_key;
  v26 = 0;
  v15 = [v13 _validateInput:key description:@"key" error:&v26];
  v16 = v26;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (!a5 || !v16)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  objc_storeStrong(&v12->_value, a4);
  v18 = objc_opt_class();
  value = v12->_value;
  v25 = v17;
  v20 = [v18 _validateInput:value description:@"value" error:&v25];
  v21 = v25;

  if ((v20 & 1) == 0)
  {
    if (!a5)
    {
      v17 = v21;
      goto LABEL_12;
    }

    v17 = v21;
    if (!v21)
    {
LABEL_12:

      v22 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v23 = v17;
    *a5 = v17;
    goto LABEL_12;
  }

LABEL_5:
  v22 = v12;
LABEL_13:

  return v22;
}

- (BMResourceDescriptor)initWithEncodedString:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 componentsSeparatedByString:@"="];
    if ([v7 count] == 2)
    {
      v8 = [v7 firstObject];
      v9 = [v7 lastObject];
      self = [(BMResourceDescriptor *)self initWithKey:v8 value:v9 error:a4];

      v10 = self;
      goto LABEL_10;
    }

    v18 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encoded string invalid: %@ (%@)", v6, v7];
    v23 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = v18;
    v17 = 3;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v7 = NSStringFromClass(v13);
    v14 = [v12 stringWithFormat:@"Invalid class for encodedString - expected: %@ received: %@", v7, objc_opt_class()];
    v25[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = v11;
    v17 = 1;
  }

  v19 = [v16 errorWithDomain:@"BMResourceDescriptorError" code:v17 userInfo:v15];
  if (a4 && v19)
  {
    v19 = v19;
    *a4 = v19;
  }

  v10 = 0;
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMResourceDescriptor *)self key];
    v7 = [v5 key];
    if ([v6 isEqual:v7])
    {
      v8 = [(BMResourceDescriptor *)self value];
      v9 = [v5 value];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(BMResourceDescriptor *)self key];
  v4 = [v3 hash];
  v5 = [(BMResourceDescriptor *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BMResourceDescriptor *)self key];
  v7 = [(BMResourceDescriptor *)self value];
  v8 = [v3 initWithFormat:@"%@ - key: %@ value: %@", v5, v6, v7];

  return v8;
}

- (BMResourceDescriptor)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];

  if (v5)
  {
    v16 = 0;
    v6 = [(BMResourceDescriptor *)self initWithEncodedString:v5 error:&v16];
    v7 = v16;
    v8 = v6;
    self = v8;
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v10 = __biome_log_for_category(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v5;
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_ERROR, "%@ could not unarchive descriptor from encoded string: %@, error: %@", buf, 0x20u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMResourceDescriptor *)self encodedString];
  [v4 encodeObject:v5 forKey:@"s"];
}

@end