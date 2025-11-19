@interface EFSQLPropertyMapper
+ (id)emptyPropertyMapper;
- (BOOL)_hasAllowedPrefix:(id)a3;
- (BOOL)hasLookupKey:(id)a3 class:(Class)a4 property:(SEL)a5;
- (EFSQLPropertyMapper)initWithAllowedProtocolPrefixes:(id)a3;
- (id)_findAllProtocolsOfClass:(Class)a3 withProperty:(SEL)a4;
- (id)_qualifiedColumnExpressionsForColumn:(id)a3 availableTables:(id)a4 replaceNULL:(BOOL)a5;
- (id)columnForClass:(Class)a3 property:(SEL)a4;
- (id)columnForLookupKey:(id)a3 value:(id)a4;
- (id)columnForProtocol:(id)a3 property:(SEL)a4;
- (id)columnNameForClass:(Class)a3 property:(SEL)a4;
- (id)columnNameForLookupKey:(id)a3 value:(id)a4;
- (id)columnNameForProtocol:(id)a3 property:(SEL)a4;
- (id)qualifiedColumnExpressionForClass:(Class)a3 property:(SEL)a4 availableTables:(id)a5;
- (id)qualifiedColumnExpressionForLookupKey:(id)a3 value:(id)a4 availableTables:(id)a5;
- (id)qualifiedColumnExpressionsForClass:(Class)a3 property:(SEL)a4 availableTables:(id)a5;
- (id)qualifiedColumnNamesForClass:(Class)a3 property:(SEL)a4 availableTables:(id)a5;
- (id)valueForLookupKey:(id)a3 class:(Class)a4 property:(SEL)a5;
- (id)valueForLookupKey:(id)a3 protocol:(id)a4 property:(SEL)a5;
- (void)_registerQualifiedColumns:(id)a3 lookupKeys:(id)a4 forClass:(Class)a5 property:(SEL)a6;
- (void)registerColumn:(id)a3 forClass:(Class)a4 property:(SEL)a5 lookupKeys:(id)a6;
- (void)registerColumn:(id)a3 forProtocol:(id)a4 property:(SEL)a5 lookupKeys:(id)a6;
- (void)registerColumnName:(id)a3 table:(id)a4 lookupKeys:(id)a5;
- (void)registerColumnName:(id)a3 table:(id)a4 lookupKeys:(id)a5 forClass:(Class)a6 property:(SEL)a7;
- (void)registerColumnNames:(id)a3 table:(id)a4 forClass:(Class)a5 property:(SEL)a6;
@end

@implementation EFSQLPropertyMapper

+ (id)emptyPropertyMapper
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 setLookupValues:MEMORY[0x1E695E0F8]];

  return v2;
}

- (EFSQLPropertyMapper)initWithAllowedProtocolPrefixes:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = EFSQLPropertyMapper;
  v6 = [(EFSQLPropertyMapper *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lookupValues = v6->_lookupValues;
    v6->_lookupValues = v7;

    objc_storeStrong(&v6->_allowedProtocolPrefixes, a3);
    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    protocolQueueCache = v6->_protocolQueueCache;
    v6->_protocolQueueCache = v9;
  }

  return v6;
}

- (void)registerColumn:(id)a3 forClass:(Class)a4 property:(SEL)a5 lookupKeys:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!class_getInstanceMethod(a4, a5))
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"class_getInstanceMethod(class, property) && property does not exist on class"}];
  }

  v13 = _keyForClassInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", a4, a5);
  v27 = v13;
  v14 = [(EFSQLPropertyMapper *)self lookupValues];
  v15 = [v14 objectForKeyedSubscript:v13];

  if (v15)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:155 description:{@"A column is already registed for key=%@", v13}];
  }

  v16 = [(EFSQLPropertyMapper *)self lookupValues];
  [v16 setObject:v11 forKeyedSubscript:v13];

  [(EFSQLPropertyMapper *)self _findAllProtocolsOfClass:a4 withProperty:a5];
  v17 = a2;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v18 = v35 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v19)
  {
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [(EFSQLPropertyMapper *)self registerColumn:v11 forProtocol:*(*(&v34 + 1) + 8 * v21++) property:a5 lookupKeys:v12];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__EFSQLPropertyMapper_registerColumn_forClass_property_lookupKeys___block_invoke;
  v28[3] = &unk_1E8249E18;
  v28[4] = self;
  v31 = v17;
  v22 = v11;
  v29 = v22;
  v32 = a4;
  v33 = a5;
  v23 = v27;
  v30 = v23;
  [v12 enumerateKeysAndObjectsUsingBlock:v28];

  v24 = *MEMORY[0x1E69E9840];
}

void __67__EFSQLPropertyMapper_registerColumn_forClass_property_lookupKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = _keyForLookupValue(v17, v5);
  v7 = [*(a1 + 32) lookupValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"EFSQLPropertyMapper.m" lineNumber:165 description:{@"A column is already registed for lookupKey=%@ value=%@", v17, v5}];
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) lookupValues];
  [v10 setObject:v9 forKeyedSubscript:v6];

  v11 = _keyForClassInstanceProperty(v17, *(a1 + 64), *(a1 + 72));
  v12 = [*(a1 + 32) lookupValues];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (v13)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"EFSQLPropertyMapper.m" lineNumber:169 description:{@"A value is already registed for lookupKey=%@ classKey=%@", v17, *(a1 + 48)}];
  }

  v14 = [*(a1 + 32) lookupValues];
  [v14 setObject:v5 forKeyedSubscript:v11];
}

- (void)registerColumn:(id)a3 forProtocol:(id)a4 property:(SEL)a5 lookupKeys:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  Name = sel_getName(a5);
  if (!protocol_getProperty(v12, Name, 1, 1))
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"protocol_getProperty(protocol, sel_getName(property), YES, YES) && property does not exist on protocol"}];
  }

  v15 = _keyForProtocolInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", v12, a5);
  v16 = [(EFSQLPropertyMapper *)self lookupValues];
  v17 = [v16 objectForKeyedSubscript:v15];

  if (v17)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:182 description:{@"A column is already registered for key=%@", v15}];
  }

  v18 = [(EFSQLPropertyMapper *)self lookupValues];
  [v18 setObject:v11 forKeyedSubscript:v15];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__EFSQLPropertyMapper_registerColumn_forProtocol_property_lookupKeys___block_invoke;
  v23[3] = &unk_1E8249E40;
  v19 = v12;
  v24 = v19;
  v25 = self;
  v27 = a5;
  v28 = a2;
  v20 = v15;
  v26 = v20;
  [v13 enumerateKeysAndObjectsUsingBlock:v23];
}

void __70__EFSQLPropertyMapper_registerColumn_forProtocol_property_lookupKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = _keyForProtocolInstanceProperty(v11, *(a1 + 32), *(a1 + 56));
  v7 = [*(a1 + 40) lookupValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"EFSQLPropertyMapper.m" lineNumber:187 description:{@"A value is already registed for lookupKey=%@ protoKey=%@", v11, *(a1 + 48)}];
  }

  v9 = [*(a1 + 40) lookupValues];
  [v9 setObject:v5 forKeyedSubscript:v6];
}

- (id)columnForClass:(Class)a3 property:(SEL)a4
{
  v6 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:a3 property:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:194 description:@"Column has incorrect type"];
  }

  return v6;
}

- (id)columnForProtocol:(id)a3 property:(SEL)a4
{
  v6 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" protocol:a3 property:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:200 description:@"Column has incorrect type"];
  }

  return v6;
}

- (id)columnForLookupKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _keyForLookupValue(v7, v8);
  v10 = [(EFSQLPropertyMapper *)self lookupValues];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:207 description:{@"Schema doesn't define column for lookupKey=%@ value=%@", v7, v8}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:208 description:@"Column has incorrect type"];
  }

  return v11;
}

- (void)registerColumnNames:(id)a3 table:(id)a4 forClass:(Class)a5 property:(SEL)a6
{
  v10 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__EFSQLPropertyMapper_registerColumnNames_table_forClass_property___block_invoke;
  v13[3] = &unk_1E8249E68;
  v11 = v10;
  v14 = v11;
  v12 = [a3 ef_map:v13];
  [(EFSQLPropertyMapper *)self _registerQualifiedColumns:v12 lookupKeys:MEMORY[0x1E695E0F8] forClass:a5 property:a6];
}

id __67__EFSQLPropertyMapper_registerColumnNames_table_forClass_property___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EFPair pairWithFirst:*(a1 + 32) second:a2];

  return v2;
}

- (void)registerColumnName:(id)a3 table:(id)a4 lookupKeys:(id)a5 forClass:(Class)a6 property:(SEL)a7
{
  v18[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [EFPair pairWithFirst:v13 second:v12];
  v18[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  [(EFSQLPropertyMapper *)self _registerQualifiedColumns:v16 lookupKeys:v14 forClass:a6 property:a7];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_registerQualifiedColumns:(id)a3 lookupKeys:(id)a4 forClass:(Class)a5 property:(SEL)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v35 = a4;
  v31 = a5;
  if (!class_getInstanceMethod(a5, a6))
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"class_getInstanceMethod(class, property) && property does not exist on class"}];
  }

  if ([v36 count] == 1)
  {
    v10 = [v36 firstObject];
    v11 = [v10 second];

    v12 = [v36 firstObject];
    v13 = [v12 first];

    [(EFSQLPropertyMapper *)self registerColumnName:v11 table:v13 lookupKeys:v35];
  }

  v32 = _keyForClassInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", v31, a6);
  v14 = [(EFSQLPropertyMapper *)self lookupValues];
  v15 = [v14 objectForKeyedSubscript:v32];

  if (v15)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:251 description:{@"A column is already registed for key=%@", v32}];
  }

  v16 = [(EFSQLPropertyMapper *)self lookupValues];
  [v16 setObject:v36 forKeyedSubscript:v32];

  [(EFSQLPropertyMapper *)self _findAllProtocolsOfClass:v31 withProperty:a6];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v17)
  {
    v18 = *v47;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        v21 = _keyForProtocolInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", v20, a6);
        v22 = [(EFSQLPropertyMapper *)self lookupValues];
        v23 = [v22 objectForKeyedSubscript:v21];

        if (v23 && ([v23 isEqual:v36] & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AAA8] currentHandler];
          [v26 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:262 description:{@"A column is already registered for key=%@", v21}];
        }

        v24 = [(EFSQLPropertyMapper *)self lookupValues];
        [v24 setObject:v36 forKeyedSubscript:v21];

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __78__EFSQLPropertyMapper__registerQualifiedColumns_lookupKeys_forClass_property___block_invoke;
        v42[3] = &unk_1E8249E40;
        v42[4] = v20;
        v42[5] = self;
        v44 = a6;
        v45 = a2;
        v25 = v21;
        v43 = v25;
        [v35 enumerateKeysAndObjectsUsingBlock:v42];
      }

      v17 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v17);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __78__EFSQLPropertyMapper__registerQualifiedColumns_lookupKeys_forClass_property___block_invoke_2;
  v37[3] = &unk_1E8249E90;
  v39 = v31;
  v40 = a6;
  v37[4] = self;
  v41 = a2;
  v27 = v32;
  v38 = v27;
  [v35 enumerateKeysAndObjectsUsingBlock:v37];

  v28 = *MEMORY[0x1E69E9840];
}

void __78__EFSQLPropertyMapper__registerQualifiedColumns_lookupKeys_forClass_property___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = _keyForProtocolInstanceProperty(v11, *(a1 + 32), *(a1 + 56));
  v7 = [*(a1 + 40) lookupValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"EFSQLPropertyMapper.m" lineNumber:268 description:{@"A value is already registed for lookupKey=%@ protoKey=%@", v11, *(a1 + 48)}];
  }

  v9 = [*(a1 + 40) lookupValues];
  [v9 setObject:v5 forKeyedSubscript:v6];
}

void __78__EFSQLPropertyMapper__registerQualifiedColumns_lookupKeys_forClass_property___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = _keyForClassInstanceProperty(v11, *(a1 + 48), *(a1 + 56));
  v7 = [*(a1 + 32) lookupValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EFSQLPropertyMapper.m" lineNumber:275 description:{@"A value is already registed for lookupKey=%@ classKey=%@", v11, *(a1 + 40)}];
  }

  v9 = [*(a1 + 32) lookupValues];
  [v9 setObject:v5 forKeyedSubscript:v6];
}

- (void)registerColumnName:(id)a3 table:(id)a4 lookupKeys:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [EFPair pairWithFirst:v10 second:v9];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__EFSQLPropertyMapper_registerColumnName_table_lookupKeys___block_invoke;
  v16[3] = &unk_1E8249EB8;
  v17 = v13;
  v18 = a2;
  v16[4] = self;
  v14 = v13;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __59__EFSQLPropertyMapper_registerColumnName_table_lookupKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = _keyForLookupValue(v12, v5);
  v7 = [*(a1 + 32) lookupValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"EFSQLPropertyMapper.m" lineNumber:287 description:{@"A column is already registed for lookupKey=%@ value=%@", v12, v5}];
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) lookupValues];
  [v10 setObject:v9 forKeyedSubscript:v6];
}

- (id)columnNameForClass:(Class)a3 property:(SEL)a4
{
  v4 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:a3 property:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
  }

  else
  {
    v6 = [v4 firstObject];
    v5 = [v6 second];
  }

  return v5;
}

- (id)columnNameForProtocol:(id)a3 property:(SEL)a4
{
  v4 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" protocol:a3 property:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
  }

  else
  {
    v6 = [v4 firstObject];
    v5 = [v6 second];
  }

  return v5;
}

- (id)columnNameForLookupKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _keyForLookupValue(v7, v8);
  v10 = [(EFSQLPropertyMapper *)self lookupValues];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:313 description:{@"Schema doesn't define column for lookupKey=%@ value=%@", v7, v8}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 name];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v11 firstObject];
    v15 = [v14 first];
    v16 = [v11 firstObject];
    v17 = [v16 second];
    v12 = [v13 initWithFormat:@"%@.%@", v15, v17];
  }

  return v12;
}

- (id)qualifiedColumnExpressionForLookupKey:(id)a3 value:(id)a4 availableTables:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _keyForLookupValue(v9, v10);
  v13 = [(EFSQLPropertyMapper *)self lookupValues];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (!v14)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:327 description:{@"Schema doesn't define column for lookupKey=%@ value=%@", v9, v10}];
  }

  v15 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v14 availableTables:v11 replaceNULL:1];
  v16 = [v15 componentsJoinedByString:{@", "}];

  return v16;
}

- (id)qualifiedColumnExpressionForClass:(Class)a3 property:(SEL)a4 availableTables:(id)a5
{
  v8 = a5;
  v9 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:a3 property:a4];
  v10 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v9 availableTables:v8 replaceNULL:1];
  v11 = [v10 componentsJoinedByString:{@", "}];

  return v11;
}

- (id)qualifiedColumnExpressionsForClass:(Class)a3 property:(SEL)a4 availableTables:(id)a5
{
  v8 = a5;
  v9 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:a3 property:a4];
  v10 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v9 availableTables:v8 replaceNULL:1];

  return v10;
}

- (id)qualifiedColumnNamesForClass:(Class)a3 property:(SEL)a4 availableTables:(id)a5
{
  v8 = a5;
  v9 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:a3 property:a4];
  v10 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v9 availableTables:v8 replaceNULL:0];

  return v10;
}

- (id)_qualifiedColumnExpressionsForColumn:(id)a3 availableTables:(id)a4 replaceNULL:(BOOL)a5
{
  v5 = a5;
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = v7;
  v30 = v10;
  if (isKindOfClass)
  {
    v11 = [v10 table];
    v12 = [v11 name];
    v13 = [v8 containsObject:v12];

    if (v13)
    {
      v14 = [v30 fullNameWithDatabaseName:0];
      v36[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    }

    else if (v5)
    {
      v15 = &unk_1F45AD128;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v29 = v7;
    v15 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v30;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          v21 = [v20 first];
          v22 = [v8 containsObject:v21];

          if (v22)
          {
            v23 = MEMORY[0x1E696AEC0];
            v24 = [v20 first];
            v25 = [v20 second];
            v26 = [v23 stringWithFormat:@"%@.%@", v24, v25, v29];
            [v15 addObject:v26];
          }

          else if (v5)
          {
            [v15 addObject:@"NULL"];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)hasLookupKey:(id)a3 class:(Class)a4 property:(SEL)a5
{
  v6 = _keyForClassInstanceProperty(a3, a4, a5);
  v7 = [(EFSQLPropertyMapper *)self lookupValues];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = v8 != 0;

  return v9;
}

- (id)valueForLookupKey:(id)a3 class:(Class)a4 property:(SEL)a5
{
  v9 = a3;
  v10 = _keyForClassInstanceProperty(v9, a4, a5);
  v11 = [(EFSQLPropertyMapper *)self lookupValues];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (!v12)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a5);
    [v14 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:390 description:{@"Schema doesn't define value for lookupKey=%@ class=%@ property=%@", v9, a4, v15}];
  }

  return v12;
}

- (id)valueForLookupKey:(id)a3 protocol:(id)a4 property:(SEL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = _keyForProtocolInstanceProperty(v9, v10, a5);
  v12 = [(EFSQLPropertyMapper *)self lookupValues];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (!v13)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = NSStringFromSelector(a5);
    [v15 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:398 description:{@"Schema doesn't define value for lookupKey=%@ protocol=%@ property=%@", v9, v10, v16}];
  }

  return v13;
}

- (BOOL)_hasAllowedPrefix:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EFSQLPropertyMapper *)self allowedProtocolPrefixes];
  v6 = [v5 count];

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(EFSQLPropertyMapper *)self allowedProtocolPrefixes];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([v4 hasPrefix:*(*(&v13 + 1) + 8 * i)])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_findAllProtocolsOfClass:(Class)a3 withProperty:(SEL)a4
{
  v7 = [(EFSQLPropertyMapper *)self protocolQueueCache];
  v8 = NSStringFromClass(a3);
  v9 = [v7 objectForKey:v8];

  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v13 = v12;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__EFSQLPropertyMapper__findAllProtocolsOfClass_withProperty___block_invoke;
  aBlock[3] = &unk_1E8249EE0;
  aBlock[4] = self;
  v14 = v13;
  v29 = v14;
  v15 = _Block_copy(aBlock);
  if (!v9)
  {
    v24 = 0;
    for (i = a3; i; i = class_getSuperclass(i))
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __61__EFSQLPropertyMapper__findAllProtocolsOfClass_withProperty___block_invoke_2;
      v27[3] = &__block_descriptor_40_e10___16__0_I8lu32l8;
      v27[4] = i;
      v15[2](v15, v27);
    }

    v17 = [(EFSQLPropertyMapper *)self protocolQueueCache];
    v9 = 0;
    v18 = [v14 copy];
    v19 = NSStringFromClass(a3);
    [v17 setObject:v18 forKey:v19];
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  while ([v14 count])
  {
    v21 = [v14 anyObject];
    [v14 removeObject:v21];
    if (([v20 containsObject:v21] & 1) == 0)
    {
      Name = sel_getName(a4);
      if (protocol_getProperty(v21, Name, 1, 1))
      {
        [v20 addObject:v21];
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__EFSQLPropertyMapper__findAllProtocolsOfClass_withProperty___block_invoke_3;
      v25[3] = &unk_1E8249F28;
      v26 = v21;
      v15[2](v15, v25);
    }
  }

  return v20;
}

void __61__EFSQLPropertyMapper__findAllProtocolsOfClass_withProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v4 = v3[2](v3, &v9);
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v6 = v4[i];
      v7 = *(a1 + 32);
      v8 = NSStringFromProtocol(v6);
      LODWORD(v7) = [v7 _hasAllowedPrefix:v8];

      if (v7)
      {
        [*(a1 + 40) addObject:v6];
      }
    }
  }

  free(v4);
}

@end