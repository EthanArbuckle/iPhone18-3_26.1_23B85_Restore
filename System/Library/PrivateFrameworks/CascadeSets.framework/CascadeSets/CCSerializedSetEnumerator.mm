@interface CCSerializedSetEnumerator
+ (id)enumeratorForSerializedSets:(id)a3;
- (BOOL)enumerateAllSets:(id *)a3 withOptions:(unsigned __int16)a4 itemType:(unsigned __int16)a5 descriptors:(id)a6 usingBlock:(id)a7;
- (CCSerializedSetEnumerator)init;
- (CCSerializedSetEnumerator)initWithCoder:(id)a3;
- (CCSerializedSetEnumerator)initWithSerializedSetData:(id)a3;
- (CCSerializedSetEnumerator)initWithSerializedSets:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCSerializedSetEnumerator

- (CCSerializedSetEnumerator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)enumeratorForSerializedSets:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithSerializedSets:v3];

  return v4;
}

- (CCSerializedSetEnumerator)initWithSerializedSetData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCSerializedSetEnumerator;
  v6 = [(CCSerializedSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serializedSetData, a3);
  }

  return v7;
}

- (CCSerializedSetEnumerator)initWithSerializedSets:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCSerializedSetEnumerator;
  v6 = [(CCSerializedSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serializedSets, a3);
  }

  return v7;
}

- (BOOL)enumerateAllSets:(id *)a3 withOptions:(unsigned __int16)a4 itemType:(unsigned __int16)a5 descriptors:(id)a6 usingBlock:(id)a7
{
  v8 = a5;
  v44 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v43 = a7;
  v42 = v8;
  if (!self->_serializedSetData)
  {
LABEL_11:
    v12 = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    v46 = [MEMORY[0x1E698E9D0] currentPersonaIsDefault];
    v21 = self->_serializedSets;
    v41 = v11;
    if ((v44 & 2) != 0)
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
      v11 = v41;
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
      if (!v12)
      {
LABEL_25:
        if ((CCTypeIdentifierUnknown == v8 || [(NSArray *)v27 itemType]== v8) && ((v44 & 1) == 0 || ([(NSArray *)v27 options]& 1) != 0))
        {
          v43[2](v43, v27);
        }

        goto LABEL_32;
      }

      if (v46 && ([(NSArray *)v27 personaIdentifier], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
      {
        v30 = __biome_log_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v56 = v12;
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
        v33 = [(NSArray *)v27 personaIdentifier];
        if (!v33)
        {
          goto LABEL_25;
        }

        v34 = v33;
        v35 = [(NSArray *)v27 personaIdentifier];
        v36 = [v35 isEqual:v12];

        v8 = v42;
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
          v58 = v12;
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

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_serializedSetData, "count")}];
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

    v18 = [[CCSerializedSet alloc] initWithData:*(*(&v51 + 1) + 8 * v17) error:a3];
    if (!v18)
    {
      break;
    }

    v19 = v18;
    [(NSArray *)v12 addObject:v18];

    if (v15 == ++v17)
    {
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (!v15)
      {
LABEL_10:

        serializedSets = self->_serializedSets;
        self->_serializedSets = v12;

        v8 = v42;
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

- (void)encodeWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
            [v4 failWithError:v14];

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

  [v4 encodeObject:self->_serializedSets forKey:@"s"];
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
}

- (CCSerializedSetEnumerator)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"s"];

  if (v8)
  {
    self = [(CCSerializedSetEnumerator *)self initWithSerializedSets:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end