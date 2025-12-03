@interface DMCModelPayloadBase
- (BOOL)_loadObjectOfClass:(Class)class fromDictionary:(id)dictionary usingKey:(id)key isRequired:(BOOL)required defaultValue:(id)value payloadValue:(id *)payloadValue error:(id *)error;
- (DMCModelPayloadBase)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_serializeItemIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required isDefaultValue:(BOOL)defaultValue;
- (void)encodeWithCoder:(id)coder;
- (void)mergeUnknownKeysFrom:(id)from parentKey:(id)key;
- (void)serializeArrayIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value itemSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue;
- (void)serializeDictionaryIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value dictSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue;
@end

@implementation DMCModelPayloadBase

- (void)mergeUnknownKeysFrom:(id)from parentKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  keyCopy = key;
  unknownPayloadKeys = [fromCopy unknownPayloadKeys];
  v9 = [unknownPayloadKeys count];

  if (v9)
  {
    selfCopy = self;
    v10 = MEMORY[0x1E695DFA8];
    unknownPayloadKeys2 = [fromCopy unknownPayloadKeys];
    v12 = [v10 setWithCapacity:{objc_msgSend(unknownPayloadKeys2, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    unknownPayloadKeys3 = [fromCopy unknownPayloadKeys];
    v14 = [unknownPayloadKeys3 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(unknownPayloadKeys3);
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", keyCopy, *(*(&v23 + 1) + 8 * v17)];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [unknownPayloadKeys3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    unknownPayloadKeys4 = [(DMCModelPayloadBase *)selfCopy unknownPayloadKeys];
    v20 = [unknownPayloadKeys4 setByAddingObjectsFromSet:v12];
    [(DMCModelPayloadBase *)selfCopy setUnknownPayloadKeys:v20];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_loadObjectOfClass:(Class)class fromDictionary:(id)dictionary usingKey:(id)key isRequired:(BOOL)required defaultValue:(id)value payloadValue:(id *)payloadValue error:(id *)error
{
  requiredCopy = required;
  v30[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v15 = [dictionary objectForKey:keyCopy];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    if (requiredCopy)
    {
      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A578];
        keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key: %@", keyCopy];
        v30[0] = keyCopy;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        *error = [v19 errorWithDomain:@"error" code:1 userInfo:v21];
      }

      v18 = 0;
      *payloadValue = 0;
      goto LABEL_12;
    }

    v16 = valueCopy;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_4:
    v17 = v16;
    *payloadValue = v16;

    v18 = 1;
    goto LABEL_12;
  }

  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong type, key: %@", keyCopy, *MEMORY[0x1E696A578]];
    v28 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [v22 errorWithDomain:@"error" code:1 userInfo:v24];
  }

  *payloadValue = 0;

  v18 = 0;
LABEL_12:

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_serializeItemIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required isDefaultValue:(BOOL)defaultValue
{
  v7 = !defaultValue;
  if (!value)
  {
    v7 = 0;
  }

  if (v7 || required)
  {
    [dictionary setObject:value forKeyedSubscript:key];
  }
}

- (void)serializeArrayIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value itemSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  serializerCopy = serializer;
  defaultValueCopy = defaultValue;
  v18 = defaultValueCopy;
  if (valueCopy)
  {
    v28 = defaultValueCopy;
    requiredCopy = required;
    v30 = dictionaryCopy;
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(valueCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = valueCopy;
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

          v25 = serializerCopy[2](serializerCopy, *(*(&v31 + 1) + 8 * v24));
          [v19 addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v22);
    }

    dictionaryCopy = v30;
    v18 = v28;
    if (requiredCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (required)
    {
LABEL_13:
      v26 = [v19 copy];
      [dictionaryCopy setObject:v26 forKeyedSubscript:keyCopy];

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

- (void)serializeDictionaryIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value dictSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  serializerCopy = serializer;
  defaultValueCopy = defaultValue;
  if (valueCopy)
  {
    v17 = serializerCopy[2](serializerCopy, valueCopy);
    if (required)
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
  if (!required)
  {
    goto LABEL_5;
  }

LABEL_6:
  [dictionaryCopy setObject:v17 forKeyedSubscript:keyCopy];
LABEL_7:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DMCModelPayloadBase *)self serializeWithType:0];
  [coderCopy encodeObject:v5 forKey:@"payload"];
}

- (DMCModelPayloadBase)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"payload"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

@end