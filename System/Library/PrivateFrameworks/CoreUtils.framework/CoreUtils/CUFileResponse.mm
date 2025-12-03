@interface CUFileResponse
- (CUFileResponse)initWithDictionary:(id)dictionary error:(id *)error;
- (void)encodeWithDictionary:(id)dictionary;
@end

@implementation CUFileResponse

- (void)encodeWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = self->_fileItems;
  if ([(NSArray *)v5 count])
  {
    v15 = dictionaryCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v12 encodeWithDictionary:v13];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    dictionaryCopy = v15;
    [v15 setObject:v6 forKeyedSubscript:@"fIts"];
  }

  if (self->_flags)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [dictionaryCopy setObject:v14 forKeyedSubscript:&unk_1F06A2F80];
  }
}

- (CUFileResponse)initWithDictionary:(id)dictionary error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v12 = [(CUFileResponse *)self init];
  if (!v12)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed", v7, v8, v9, v10, v11, v36);
      *error = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_17;
  }

  TypeID = CFArrayGetTypeID();
  v14 = CFDictionaryGetTypedValue(dictionaryCopy, @"fIts", TypeID, 0);
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = v14;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v19 = *v41;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v41 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v40 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = v37;
        if (error)
        {
          *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "Non-dict file item", v22, v23, v24, v25, v26, v36);
        }

        goto LABEL_23;
      }

      v27 = [CUFileItem alloc];
      v39 = 0;
      v28 = [(CUFileItem *)v27 initWithDictionary:v21 error:&v39];
      v29 = v39;
      v30 = v29;
      if (!v28)
      {
        v14 = v37;
        if (error)
        {
          v35 = v29;
          *error = v30;
        }

LABEL_23:
        v33 = 0;
        goto LABEL_16;
      }

      [(NSArray *)v15 addObject:v28];
    }

    v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_12:

  fileItems = v12->_fileItems;
  v12->_fileItems = v15;

  v14 = v37;
LABEL_13:
  v38 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged(dictionaryCopy, &unk_1F06A2F80, 0, 0xFFFFFFFFLL, &v38);
  if (!v38)
  {
    v12->_flags = Int64Ranged;
  }

  v33 = v12;
LABEL_16:

LABEL_17:
  return v33;
}

@end