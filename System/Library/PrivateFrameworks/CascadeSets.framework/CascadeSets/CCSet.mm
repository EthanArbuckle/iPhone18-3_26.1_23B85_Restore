@interface CCSet
+ (id)descriptorWithKey:(id)key descriptors:(id)descriptors;
+ (id)serializedSetEnumerator:(id)enumerator;
+ (id)setFromResourceSpecifier:(id)specifier inContainer:(id)container error:(id *)error;
+ (id)setFromXPCDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CCSet)init;
- (CCSet)initWithCoder:(id)coder;
- (CCSet)initWithSet:(id)set error:(id *)error;
- (id)_computeUniqueHash;
- (id)description;
- (id)descriptorWithKey:(id)key;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (id)prefixedInstanceIdentifier:(id)identifier;
- (id)prefixedSharedIdentifier:(id)identifier;
- (id)serializeWithUseCase:(id)case enumerateToBookmark:(id)bookmark error:(id *)error;
- (id)toResourceSpecifier;
- (id)toXPCDictionary;
- (void)encodeWithCoder:(id)coder;
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

+ (id)serializedSetEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v4 = [[CCSerializedSetEnumerator alloc] initWithSerializedSetData:enumeratorCopy];

  return v4;
}

+ (id)descriptorWithKey:(id)key descriptors:(id)descriptors
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  descriptorsCopy = descriptors;
  v7 = [descriptorsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [v11 isEqual:keyCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [descriptorsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)setFromResourceSpecifier:(id)specifier inContainer:(id)container error:(id *)error
{
  specifierCopy = specifier;
  containerCopy = container;
  v9 = CCTypeIdentifierRegistryBridge();
  name = [specifierCopy name];
  v11 = [v9 itemTypeForSetIdentifier:name];

  if (v11 == CCTypeIdentifierUnknown)
  {
    v12 = CCInvalidSetItemTypeIdentifierErrorForIdentifier(v11);
    CCSetError(error, v12);
  }

  else
  {
    descriptors = [specifierCopy descriptors];
    v12 = [CCSetDescriptor setDescriptorsFromResourceDescriptors:descriptors error:error];

    if (v12)
    {
      options = [specifierCopy options];
      isInUserVault = [containerCopy isInUserVault];
      v16 = objc_alloc(objc_opt_class());
      personaIdentifier = [containerCopy personaIdentifier];
      v18 = [v16 initWithItemType:v11 personaIdentifier:personaIdentifier descriptors:v12 options:options | isInUserVault error:error];

      goto LABEL_6;
    }
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (CCSet)initWithSet:(id)set error:(id *)error
{
  setCopy = set;
  v7 = objc_alloc(objc_opt_class());
  itemType = [setCopy itemType];
  personaIdentifier = [setCopy personaIdentifier];
  encodedDescriptors = [setCopy encodedDescriptors];
  descriptors = [setCopy descriptors];
  options = [setCopy options];

  v13 = [v7 initWithItemType:itemType personaIdentifier:personaIdentifier encodedDescriptors:encodedDescriptors descriptors:descriptors options:options error:error];
  return v13;
}

- (id)descriptorWithKey:(id)key
{
  keyCopy = key;
  v5 = [objc_opt_class() descriptorWithKey:keyCopy descriptors:self->_descriptors];

  return v5;
}

- (id)prefixedSharedIdentifier:(id)identifier
{
  uniqueHash = self->_uniqueHash;
  sharedIdentifier = [identifier sharedIdentifier];
  v5 = CCConcatenateHash64(uniqueHash, sharedIdentifier);

  return v5;
}

- (id)prefixedInstanceIdentifier:(id)identifier
{
  uniqueHash = self->_uniqueHash;
  instanceIdentifier = [identifier instanceIdentifier];
  v5 = CCConcatenateHash64(uniqueHash, instanceIdentifier);

  return v5;
}

- (id)serializeWithUseCase:(id)case enumerateToBookmark:(id)bookmark error:(id *)error
{
  caseCopy = case;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[CCSerializedSet alloc] initWithSet:self useCase:caseCopy error:error];
  }

  v9 = selfCopy;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSet *)self isEqualToSet:v5];
  }

  return v6;
}

- (CCSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"t"];
  if (v5 == CCTypeIdentifierUnknown)
  {
    selfCopy = 0;
  }

  else
  {
    v7 = v5;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    if (v8)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
      v13 = 0;
      v10 = -[CCSet initWithItemType:personaIdentifier:encodedDescriptors:options:error:](self, "initWithItemType:personaIdentifier:encodedDescriptors:options:error:", v7, v9, v8, [coderCopy decodeInt32ForKey:@"o"], &v13);
      v11 = v13;
      if (!v10)
      {
        [coderCopy failWithError:v11];
      }

      self = v10;

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  itemType = self->_itemType;
  coderCopy = coder;
  [coderCopy encodeInteger:itemType forKey:@"t"];
  [coderCopy encodeObject:self->_encodedDescriptors forKey:@"d"];
  [coderCopy encodeObject:self->_personaIdentifier forKey:@"p"];
  [coderCopy encodeInt32:self->_options forKey:@"o"];
}

+ (id)setFromXPCDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  uint64 = xpc_dictionary_get_uint64(dictionaryCopy, [@"t" UTF8String]);
  v7 = _NSStringFromXPCDictionary(dictionaryCopy, [@"d" UTF8String]);
  v8 = _NSStringFromXPCDictionary(dictionaryCopy, [@"p" UTF8String]);
  v9 = xpc_dictionary_get_uint64(dictionaryCopy, [@"o" UTF8String]);

  v10 = [objc_alloc(objc_opt_class()) initWithItemType:uint64 personaIdentifier:v8 encodedDescriptors:v7 options:v9 error:error];

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

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"itemType"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"personaIdentifier"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"descriptors"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"options"];

  LOBYTE(dictionaryCopy) = [v9 unsignedIntValue];
  v17 = 0;
  v10 = [(CCSet *)self initWithItemType:unsignedIntValue personaIdentifier:v7 encodedDescriptors:v8 options:dictionaryCopy error:&v17];
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
  encodedDescriptors = [(CCSet *)self encodedDescriptors];
  v13[1] = encodedDescriptors;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CCSet options](self, "options")}];
  v13[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v8 = [v3 initWithObjects:v7 forKeys:&unk_1F2EC9690];

  personaIdentifier = [(CCSet *)self personaIdentifier];

  if (personaIdentifier)
  {
    personaIdentifier2 = [(CCSet *)self personaIdentifier];
    [v8 setObject:personaIdentifier2 forKeyedSubscript:@"personaIdentifier"];
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