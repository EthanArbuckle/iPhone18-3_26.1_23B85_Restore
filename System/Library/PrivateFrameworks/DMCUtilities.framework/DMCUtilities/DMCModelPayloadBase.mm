@interface DMCModelPayloadBase
- (BOOL)_loadObjectOfClass:(Class)a3 fromDictionary:(id)a4 usingKey:(id)a5 isRequired:(BOOL)a6 defaultValue:(id)a7 payloadValue:(id *)a8 error:(id *)a9;
- (DMCModelPayloadBase)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_serializeItemIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 isRequired:(BOOL)a6 isDefaultValue:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)mergeUnknownKeysFrom:(id)a3 parentKey:(id)a4;
- (void)serializeArrayIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 itemSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8;
- (void)serializeDictionaryIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 dictSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8;
@end

@implementation DMCModelPayloadBase

- (void)mergeUnknownKeysFrom:(id)a3 parentKey:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 unknownPayloadKeys];
  v9 = [v8 count];

  if (v9)
  {
    v22 = self;
    v10 = MEMORY[0x1E695DFA8];
    v11 = [v6 unknownPayloadKeys];
    v12 = [v10 setWithCapacity:{objc_msgSend(v11, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [v6 unknownPayloadKeys];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, *(*(&v23 + 1) + 8 * v17)];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v19 = [(DMCModelPayloadBase *)v22 unknownPayloadKeys];
    v20 = [v19 setByAddingObjectsFromSet:v12];
    [(DMCModelPayloadBase *)v22 setUnknownPayloadKeys:v20];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_loadObjectOfClass:(Class)a3 fromDictionary:(id)a4 usingKey:(id)a5 isRequired:(BOOL)a6 defaultValue:(id)a7 payloadValue:(id *)a8 error:(id *)a9
{
  v11 = a6;
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a7;
  v15 = [a4 objectForKey:v13];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    if (v11)
    {
      if (a9)
      {
        v19 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A578];
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key: %@", v13];
        v30[0] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        *a9 = [v19 errorWithDomain:@"error" code:1 userInfo:v21];
      }

      v18 = 0;
      *a8 = 0;
      goto LABEL_12;
    }

    v16 = v14;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_4:
    v17 = v16;
    *a8 = v16;

    v18 = 1;
    goto LABEL_12;
  }

  if (a9)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong type, key: %@", v13, *MEMORY[0x1E696A578]];
    v28 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a9 = [v22 errorWithDomain:@"error" code:1 userInfo:v24];
  }

  *a8 = 0;

  v18 = 0;
LABEL_12:

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_serializeItemIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 isRequired:(BOOL)a6 isDefaultValue:(BOOL)a7
{
  v7 = !a7;
  if (!a5)
  {
    v7 = 0;
  }

  if (v7 || a6)
  {
    [a3 setObject:a5 forKeyedSubscript:a4];
  }
}

- (void)serializeArrayIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 itemSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8
{
  v36 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = v17;
  if (v15)
  {
    v28 = v17;
    v29 = a7;
    v30 = v13;
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        v24 = 0;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = v16[2](v16, *(*(&v31 + 1) + 8 * v24));
          [v19 addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v22);
    }

    v13 = v30;
    v18 = v28;
    if (v29)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (a7)
    {
LABEL_13:
      v26 = [v19 copy];
      [v13 setObject:v26 forKeyedSubscript:v14];

      goto LABEL_14;
    }
  }

  if (v19)
  {
    goto LABEL_13;
  }

LABEL_14:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)serializeDictionaryIntoDictionary:(id)a3 usingKey:(id)a4 value:(id)a5 dictSerializer:(id)a6 isRequired:(BOOL)a7 defaultValue:(id)a8
{
  v18 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  if (v14)
  {
    v17 = v15[2](v15, v14);
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = 0;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v18 setObject:v17 forKeyedSubscript:v13];
LABEL_7:
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMCModelPayloadBase *)self serializeWithType:0];
  [v4 encodeObject:v5 forKey:@"payload"];
}

- (DMCModelPayloadBase)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DMCModelPayloadBase;
  v5 = [(DMCModelPayloadBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v20 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"payload"];
  v21 = 0;
  LODWORD(v13) = [(DMCModelPayloadBase *)v5 loadFromDictionary:v15 serializationType:0 error:&v21];

  v16 = 0;
  if (v13)
  {
LABEL_3:
    v16 = v5;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();

  return objc_opt_new();
}

@end