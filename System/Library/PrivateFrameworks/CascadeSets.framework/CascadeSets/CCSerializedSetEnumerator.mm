@interface CCSerializedSetEnumerator
+ (id)enumeratorForSerializedSets:(id)sets;
- (BOOL)enumerateAllSets:(id *)sets withOptions:(unsigned __int16)options itemType:(unsigned __int16)type descriptors:(id)descriptors usingBlock:(id)block;
- (CCSerializedSetEnumerator)init;
- (CCSerializedSetEnumerator)initWithCoder:(id)coder;
- (CCSerializedSetEnumerator)initWithSerializedSetData:(id)data;
- (CCSerializedSetEnumerator)initWithSerializedSets:(id)sets;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCSerializedSetEnumerator

- (CCSerializedSetEnumerator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)enumeratorForSerializedSets:(id)sets
{
  setsCopy = sets;
  v4 = [objc_alloc(objc_opt_class()) initWithSerializedSets:setsCopy];

  return v4;
}

- (CCSerializedSetEnumerator)initWithSerializedSetData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CCSerializedSetEnumerator;
  v6 = [(CCSerializedSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serializedSetData, data);
  }

  return v7;
}

- (CCSerializedSetEnumerator)initWithSerializedSets:(id)sets
{
  setsCopy = sets;
  v9.receiver = self;
  v9.super_class = CCSerializedSetEnumerator;
  v6 = [(CCSerializedSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serializedSets, sets);
  }

  return v7;
}

- (BOOL)enumerateAllSets:(id *)sets withOptions:(unsigned __int16)options itemType:(unsigned __int16)type descriptors:(id)descriptors usingBlock:(id)block
{
  typeCopy = type;
  optionsCopy = options;
  v61 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  blockCopy = block;
  v42 = typeCopy;
  if (!self->_serializedSetData)
  {
LABEL_11:
    currentPersonaIdentifier = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    currentPersonaIsDefault = [MEMORY[0x1E698E9D0] currentPersonaIsDefault];
    v21 = self->_serializedSets;
    v41 = descriptorsCopy;
    if ((optionsCopy & 2) != 0)
    {
      v22 = [(NSArray *)self->_serializedSets sortedArrayUsingComparator:&__block_literal_global_0];

      v21 = v22;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v13 = v21;
    v23 = [(NSArray *)v13 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (!v23)
    {
LABEL_37:

      v38 = 1;
      descriptorsCopy = v41;
      goto LABEL_39;
    }

    v24 = v23;
    v25 = *v48;
    obj = v13;
LABEL_15:
    v26 = 0;
    while (1)
    {
      if (*v48 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v47 + 1) + 8 * v26);
      v28 = objc_autoreleasePoolPush();
      if (!currentPersonaIdentifier)
      {
LABEL_25:
        if ((CCTypeIdentifierUnknown == typeCopy || [(NSArray *)v27 itemType]== typeCopy) && ((optionsCopy & 1) == 0 || ([(NSArray *)v27 options]& 1) != 0))
        {
          blockCopy[2](blockCopy, v27);
        }

        goto LABEL_32;
      }

      if (currentPersonaIsDefault && ([(NSArray *)v27 personaIdentifier], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
      {
        v30 = __biome_log_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v56 = currentPersonaIdentifier;
          v57 = 2112;
          v58 = v27;
          v31 = v30;
          v32 = "Current persona is default (%@) Skipping serialized set with a nonnull persona: %@";
LABEL_35:
          _os_log_debug_impl(&dword_1B6DB2000, v31, OS_LOG_TYPE_DEBUG, v32, buf, 0x16u);
        }
      }

      else
      {
        personaIdentifier = [(NSArray *)v27 personaIdentifier];
        if (!personaIdentifier)
        {
          goto LABEL_25;
        }

        v34 = personaIdentifier;
        personaIdentifier2 = [(NSArray *)v27 personaIdentifier];
        v36 = [personaIdentifier2 isEqual:currentPersonaIdentifier];

        typeCopy = v42;
        if (v36)
        {
          goto LABEL_25;
        }

        v30 = __biome_log_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v56 = v27;
          v57 = 2112;
          v58 = currentPersonaIdentifier;
          v31 = v30;
          v32 = "Skipping serialized set: %@ mismatched to current persona: %@";
          goto LABEL_35;
        }
      }

LABEL_32:
      objc_autoreleasePoolPop(v28);
      if (v24 == ++v26)
      {
        v13 = obj;
        v37 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v59 count:16];
        v24 = v37;
        if (!v37)
        {
          goto LABEL_37;
        }

        goto LABEL_15;
      }
    }
  }

  currentPersonaIdentifier = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_serializedSetData, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = self->_serializedSetData;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = *v52;
LABEL_4:
  v17 = 0;
  while (1)
  {
    if (*v52 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = [[CCSerializedSet alloc] initWithData:*(*(&v51 + 1) + 8 * v17) error:sets];
    if (!v18)
    {
      break;
    }

    v19 = v18;
    [(NSArray *)currentPersonaIdentifier addObject:v18];

    if (v15 == ++v17)
    {
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (!v15)
      {
LABEL_10:

        serializedSets = self->_serializedSets;
        self->_serializedSets = currentPersonaIdentifier;

        typeCopy = v42;
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  v38 = 0;
LABEL_39:

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t __90__CCSerializedSetEnumerator_enumerateAllSets_withOptions_itemType_descriptors_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E698E9C8];
  v5 = a3;
  v6 = [a2 toResourceSpecifier];
  v7 = [v4 dataResourcePathComponentFromResource:v6];

  v8 = MEMORY[0x1E698E9C8];
  v9 = [v5 toResourceSpecifier];

  v10 = [v8 dataResourcePathComponentFromResource:v9];

  v11 = [v7 compare:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (self->_serializedSetData)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_serializedSetData, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_serializedSetData;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v12 = [CCSerializedSet alloc];
          v17 = 0;
          v13 = [(CCSerializedSet *)v12 initWithData:v11 error:&v17];
          v14 = v17;
          if (!v13)
          {
            [coderCopy failWithError:v14];

            goto LABEL_13;
          }

          [(NSArray *)v5 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    serializedSets = self->_serializedSets;
    self->_serializedSets = v5;
  }

  [coderCopy encodeObject:self->_serializedSets forKey:@"s"];
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
}

- (CCSerializedSetEnumerator)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"s"];

  if (v8)
  {
    self = [(CCSerializedSetEnumerator *)self initWithSerializedSets:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end