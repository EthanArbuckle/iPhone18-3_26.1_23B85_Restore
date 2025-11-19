@interface CCSet
+ (id)descriptorWithKey:(id)a3 descriptors:(id)a4;
+ (id)serializedSetEnumerator:(id)a3;
+ (id)setFromResourceSpecifier:(id)a3 inContainer:(id)a4 error:(id *)a5;
+ (id)setFromXPCDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (CCSet)init;
- (CCSet)initWithCoder:(id)a3;
- (CCSet)initWithSet:(id)a3 error:(id *)a4;
- (id)_computeUniqueHash;
- (id)description;
- (id)descriptorWithKey:(id)a3;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (id)prefixedInstanceIdentifier:(id)a3;
- (id)prefixedSharedIdentifier:(id)a3;
- (id)serializeWithUseCase:(id)a3 enumerateToBookmark:(id)a4 error:(id *)a5;
- (id)toResourceSpecifier;
- (id)toXPCDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCSet

- (id)_computeUniqueHash
{
  v3 = objc_opt_new();
  [v3 appendBytes:&self->_itemType length:2];
  v4 = [(NSString *)self->_encodedDescriptors dataUsingEncoding:4];
  [v3 appendData:v4];

  personaIdentifier = self->_personaIdentifier;
  if (personaIdentifier)
  {
    v6 = [(NSString *)personaIdentifier dataUsingEncoding:4];
    [v3 appendData:v6];
  }

  options = self->_options;
  p_options = &self->_options;
  if (options)
  {
    [v3 appendBytes:p_options length:1];
  }

  v9 = CCHash64(v3);

  return v9;
}

- (id)toResourceSpecifier
{
  v3 = CCTypeIdentifierRegistryBridge();
  v4 = [v3 setIdentifierForItemType:self->_itemType];

  v5 = [objc_alloc(MEMORY[0x1E698E9F8]) initWithType:4 name:v4 descriptors:self->_descriptors options:self->_options];

  return v5;
}

- (id)description
{
  if ([(NSString *)self->_encodedDescriptors length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" [%@]", self->_encodedDescriptors];
  }

  else
  {
    v3 = &stru_1F2EBB700;
  }

  if (self->_personaIdentifier)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" persona: %@", self->_personaIdentifier];
  }

  else
  {
    v4 = &stru_1F2EBB700;
  }

  if (self->_options)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = BMResourceOptionsDescription();
    v7 = [v5 stringWithFormat:@" options: %@", v6];
  }

  else
  {
    v7 = &stru_1F2EBB700;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = CCTypeIdentifierRegistryBridge();
  v12 = [v11 setIdentifierForItemType:self->_itemType];
  v13 = [v8 stringWithFormat:@"{%@: %@%@%@%@}", v10, v12, v3, v4, v7];

  return v13;
}

+ (id)serializedSetEnumerator:(id)a3
{
  v3 = a3;
  v4 = [[CCSerializedSetEnumerator alloc] initWithSerializedSetData:v3];

  return v4;
}

+ (id)descriptorWithKey:(id)a3 descriptors:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (CCSet)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)setFromResourceSpecifier:(id)a3 inContainer:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = CCTypeIdentifierRegistryBridge();
  v10 = [v7 name];
  v11 = [v9 itemTypeForSetIdentifier:v10];

  if (v11 == CCTypeIdentifierUnknown)
  {
    v12 = CCInvalidSetItemTypeIdentifierErrorForIdentifier(v11);
    CCSetError(a5, v12);
  }

  else
  {
    v13 = [v7 descriptors];
    v12 = [CCSetDescriptor setDescriptorsFromResourceDescriptors:v13 error:a5];

    if (v12)
    {
      v14 = [v7 options];
      v15 = [v8 isInUserVault];
      v16 = objc_alloc(objc_opt_class());
      v17 = [v8 personaIdentifier];
      v18 = [v16 initWithItemType:v11 personaIdentifier:v17 descriptors:v12 options:v14 | v15 error:a5];

      goto LABEL_6;
    }
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (CCSet)initWithSet:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [v6 itemType];
  v9 = [v6 personaIdentifier];
  v10 = [v6 encodedDescriptors];
  v11 = [v6 descriptors];
  v12 = [v6 options];

  v13 = [v7 initWithItemType:v8 personaIdentifier:v9 encodedDescriptors:v10 descriptors:v11 options:v12 error:a4];
  return v13;
}

- (id)descriptorWithKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() descriptorWithKey:v4 descriptors:self->_descriptors];

  return v5;
}

- (id)prefixedSharedIdentifier:(id)a3
{
  uniqueHash = self->_uniqueHash;
  v4 = [a3 sharedIdentifier];
  v5 = CCConcatenateHash64(uniqueHash, v4);

  return v5;
}

- (id)prefixedInstanceIdentifier:(id)a3
{
  uniqueHash = self->_uniqueHash;
  v4 = [a3 instanceIdentifier];
  v5 = CCConcatenateHash64(uniqueHash, v4);

  return v5;
}

- (id)serializeWithUseCase:(id)a3 enumerateToBookmark:(id)a4 error:(id *)a5
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self;
  }

  else
  {
    v8 = [[CCSerializedSet alloc] initWithSet:self useCase:v7 error:a5];
  }

  v9 = v8;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSet *)self isEqualToSet:v5];
  }

  return v6;
}

- (CCSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"t"];
  if (v5 == CCTypeIdentifierUnknown)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    if (v8)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
      v13 = 0;
      v10 = -[CCSet initWithItemType:personaIdentifier:encodedDescriptors:options:error:](self, "initWithItemType:personaIdentifier:encodedDescriptors:options:error:", v7, v9, v8, [v4 decodeInt32ForKey:@"o"], &v13);
      v11 = v13;
      if (!v10)
      {
        [v4 failWithError:v11];
      }

      self = v10;

      v6 = self;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  itemType = self->_itemType;
  v5 = a3;
  [v5 encodeInteger:itemType forKey:@"t"];
  [v5 encodeObject:self->_encodedDescriptors forKey:@"d"];
  [v5 encodeObject:self->_personaIdentifier forKey:@"p"];
  [v5 encodeInt32:self->_options forKey:@"o"];
}

+ (id)setFromXPCDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  uint64 = xpc_dictionary_get_uint64(v5, [@"t" UTF8String]);
  v7 = _NSStringFromXPCDictionary(v5, [@"d" UTF8String]);
  v8 = _NSStringFromXPCDictionary(v5, [@"p" UTF8String]);
  v9 = xpc_dictionary_get_uint64(v5, [@"o" UTF8String]);

  v10 = [objc_alloc(objc_opt_class()) initWithItemType:uint64 personaIdentifier:v8 encodedDescriptors:v7 options:v9 error:a4];

  return v10;
}

- (id)toXPCDictionary
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, [@"t" UTF8String], self->_itemType);
  xpc_dictionary_set_string(empty, [@"d" UTF8String], -[NSString UTF8String](self->_encodedDescriptors, "UTF8String"));
  if (self->_personaIdentifier)
  {
    xpc_dictionary_set_string(empty, [@"p" UTF8String], -[NSString UTF8String](self->_personaIdentifier, "UTF8String"));
  }

  if (self->_options)
  {
    xpc_dictionary_set_uint64(empty, [@"o" UTF8String], self->_options);
  }

  return empty;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"itemType"];
  v6 = [v5 unsignedIntValue];

  v7 = [v4 objectForKeyedSubscript:@"personaIdentifier"];
  v8 = [v4 objectForKeyedSubscript:@"descriptors"];
  v9 = [v4 objectForKeyedSubscript:@"options"];

  LOBYTE(v4) = [v9 unsignedIntValue];
  v17 = 0;
  v10 = [(CCSet *)self initWithItemType:v6 personaIdentifier:v7 encodedDescriptors:v8 options:v4 error:&v17];
  v11 = v17;
  v12 = v10;
  v13 = v12;
  if (!v12 || v11)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CCSet *)v11 initFromDictionary:v15];
    }

    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[CCSet itemType](self, "itemType")}];
  v5 = [(CCSet *)self encodedDescriptors];
  v13[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CCSet options](self, "options")}];
  v13[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v8 = [v3 initWithObjects:v7 forKeys:&unk_1F2EC9690];

  v9 = [(CCSet *)self personaIdentifier];

  if (v9)
  {
    v10 = [(CCSet *)self personaIdentifier];
    [v8 setObject:v10 forKeyedSubscript:@"personaIdentifier"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)initFromDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize CCSet from OPACK with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end