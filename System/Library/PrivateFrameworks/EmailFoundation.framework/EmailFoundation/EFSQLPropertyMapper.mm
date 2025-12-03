@interface EFSQLPropertyMapper
+ (id)emptyPropertyMapper;
- (BOOL)_hasAllowedPrefix:(id)prefix;
- (BOOL)hasLookupKey:(id)key class:(Class)class property:(SEL)property;
- (EFSQLPropertyMapper)initWithAllowedProtocolPrefixes:(id)prefixes;
- (id)_findAllProtocolsOfClass:(Class)class withProperty:(SEL)property;
- (id)_qualifiedColumnExpressionsForColumn:(id)column availableTables:(id)tables replaceNULL:(BOOL)l;
- (id)columnForClass:(Class)class property:(SEL)property;
- (id)columnForLookupKey:(id)key value:(id)value;
- (id)columnForProtocol:(id)protocol property:(SEL)property;
- (id)columnNameForClass:(Class)class property:(SEL)property;
- (id)columnNameForLookupKey:(id)key value:(id)value;
- (id)columnNameForProtocol:(id)protocol property:(SEL)property;
- (id)qualifiedColumnExpressionForClass:(Class)class property:(SEL)property availableTables:(id)tables;
- (id)qualifiedColumnExpressionForLookupKey:(id)key value:(id)value availableTables:(id)tables;
- (id)qualifiedColumnExpressionsForClass:(Class)class property:(SEL)property availableTables:(id)tables;
- (id)qualifiedColumnNamesForClass:(Class)class property:(SEL)property availableTables:(id)tables;
- (id)valueForLookupKey:(id)key class:(Class)class property:(SEL)property;
- (id)valueForLookupKey:(id)key protocol:(id)protocol property:(SEL)property;
- (void)_registerQualifiedColumns:(id)columns lookupKeys:(id)keys forClass:(Class)class property:(SEL)property;
- (void)registerColumn:(id)column forClass:(Class)class property:(SEL)property lookupKeys:(id)keys;
- (void)registerColumn:(id)column forProtocol:(id)protocol property:(SEL)property lookupKeys:(id)keys;
- (void)registerColumnName:(id)name table:(id)table lookupKeys:(id)keys;
- (void)registerColumnName:(id)name table:(id)table lookupKeys:(id)keys forClass:(Class)class property:(SEL)property;
- (void)registerColumnNames:(id)names table:(id)table forClass:(Class)class property:(SEL)property;
@end

@implementation EFSQLPropertyMapper

+ (id)emptyPropertyMapper
{
  v2 = objc_alloc_init(objc_opt_class());
  [v2 setLookupValues:MEMORY[0x1E695E0F8]];

  return v2;
}

- (EFSQLPropertyMapper)initWithAllowedProtocolPrefixes:(id)prefixes
{
  prefixesCopy = prefixes;
  v12.receiver = self;
  v12.super_class = EFSQLPropertyMapper;
  v6 = [(EFSQLPropertyMapper *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lookupValues = v6->_lookupValues;
    v6->_lookupValues = v7;

    objc_storeStrong(&v6->_allowedProtocolPrefixes, prefixes);
    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    protocolQueueCache = v6->_protocolQueueCache;
    v6->_protocolQueueCache = v9;
  }

  return v6;
}

- (void)registerColumn:(id)column forClass:(Class)class property:(SEL)property lookupKeys:(id)keys
{
  v39 = *MEMORY[0x1E69E9840];
  columnCopy = column;
  keysCopy = keys;
  if (!class_getInstanceMethod(class, property))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"class_getInstanceMethod(class, property) && property does not exist on class"}];
  }

  v13 = _keyForClassInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", class, property);
  v27 = v13;
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v15 = [lookupValues objectForKeyedSubscript:v13];

  if (v15)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:155 description:{@"A column is already registed for key=%@", v13}];
  }

  lookupValues2 = [(EFSQLPropertyMapper *)self lookupValues];
  [lookupValues2 setObject:columnCopy forKeyedSubscript:v13];

  [(EFSQLPropertyMapper *)self _findAllProtocolsOfClass:class withProperty:property];
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

        [(EFSQLPropertyMapper *)self registerColumn:columnCopy forProtocol:*(*(&v34 + 1) + 8 * v21++) property:property lookupKeys:keysCopy];
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
  v22 = columnCopy;
  v29 = v22;
  classCopy = class;
  propertyCopy = property;
  v23 = v27;
  v30 = v23;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v28];

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

- (void)registerColumn:(id)column forProtocol:(id)protocol property:(SEL)property lookupKeys:(id)keys
{
  columnCopy = column;
  protocolCopy = protocol;
  keysCopy = keys;
  Name = sel_getName(property);
  if (!protocol_getProperty(protocolCopy, Name, 1, 1))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"protocol_getProperty(protocol, sel_getName(property), YES, YES) && property does not exist on protocol"}];
  }

  v15 = _keyForProtocolInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", protocolCopy, property);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v17 = [lookupValues objectForKeyedSubscript:v15];

  if (v17)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:182 description:{@"A column is already registered for key=%@", v15}];
  }

  lookupValues2 = [(EFSQLPropertyMapper *)self lookupValues];
  [lookupValues2 setObject:columnCopy forKeyedSubscript:v15];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__EFSQLPropertyMapper_registerColumn_forProtocol_property_lookupKeys___block_invoke;
  v23[3] = &unk_1E8249E40;
  v19 = protocolCopy;
  v24 = v19;
  selfCopy = self;
  propertyCopy = property;
  v28 = a2;
  v20 = v15;
  v26 = v20;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v23];
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

- (id)columnForClass:(Class)class property:(SEL)property
{
  v6 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:class property:property];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:194 description:@"Column has incorrect type"];
  }

  return v6;
}

- (id)columnForProtocol:(id)protocol property:(SEL)property
{
  v6 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" protocol:protocol property:property];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:200 description:@"Column has incorrect type"];
  }

  return v6;
}

- (id)columnForLookupKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v9 = _keyForLookupValue(keyCopy, valueCopy);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v11 = [lookupValues objectForKeyedSubscript:v9];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:207 description:{@"Schema doesn't define column for lookupKey=%@ value=%@", keyCopy, valueCopy}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:208 description:@"Column has incorrect type"];
  }

  return v11;
}

- (void)registerColumnNames:(id)names table:(id)table forClass:(Class)class property:(SEL)property
{
  tableCopy = table;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__EFSQLPropertyMapper_registerColumnNames_table_forClass_property___block_invoke;
  v13[3] = &unk_1E8249E68;
  v11 = tableCopy;
  v14 = v11;
  v12 = [names ef_map:v13];
  [(EFSQLPropertyMapper *)self _registerQualifiedColumns:v12 lookupKeys:MEMORY[0x1E695E0F8] forClass:class property:property];
}

id __67__EFSQLPropertyMapper_registerColumnNames_table_forClass_property___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EFPair pairWithFirst:*(a1 + 32) second:a2];

  return v2;
}

- (void)registerColumnName:(id)name table:(id)table lookupKeys:(id)keys forClass:(Class)class property:(SEL)property
{
  v18[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  tableCopy = table;
  keysCopy = keys;
  v15 = [EFPair pairWithFirst:tableCopy second:nameCopy];
  v18[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  [(EFSQLPropertyMapper *)self _registerQualifiedColumns:v16 lookupKeys:keysCopy forClass:class property:property];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_registerQualifiedColumns:(id)columns lookupKeys:(id)keys forClass:(Class)class property:(SEL)property
{
  v51 = *MEMORY[0x1E69E9840];
  columnsCopy = columns;
  keysCopy = keys;
  classCopy = class;
  if (!class_getInstanceMethod(class, property))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"class_getInstanceMethod(class, property) && property does not exist on class"}];
  }

  if ([columnsCopy count] == 1)
  {
    firstObject = [columnsCopy firstObject];
    second = [firstObject second];

    firstObject2 = [columnsCopy firstObject];
    first = [firstObject2 first];

    [(EFSQLPropertyMapper *)self registerColumnName:second table:first lookupKeys:keysCopy];
  }

  v32 = _keyForClassInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", classCopy, property);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v15 = [lookupValues objectForKeyedSubscript:v32];

  if (v15)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:251 description:{@"A column is already registed for key=%@", v32}];
  }

  lookupValues2 = [(EFSQLPropertyMapper *)self lookupValues];
  [lookupValues2 setObject:columnsCopy forKeyedSubscript:v32];

  [(EFSQLPropertyMapper *)self _findAllProtocolsOfClass:classCopy withProperty:property];
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
        v21 = _keyForProtocolInstanceProperty(@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty", v20, property);
        lookupValues3 = [(EFSQLPropertyMapper *)self lookupValues];
        v23 = [lookupValues3 objectForKeyedSubscript:v21];

        if (v23 && ([v23 isEqual:columnsCopy] & 1) == 0)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:262 description:{@"A column is already registered for key=%@", v21}];
        }

        lookupValues4 = [(EFSQLPropertyMapper *)self lookupValues];
        [lookupValues4 setObject:columnsCopy forKeyedSubscript:v21];

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __78__EFSQLPropertyMapper__registerQualifiedColumns_lookupKeys_forClass_property___block_invoke;
        v42[3] = &unk_1E8249E40;
        v42[4] = v20;
        v42[5] = self;
        propertyCopy = property;
        v45 = a2;
        v25 = v21;
        v43 = v25;
        [keysCopy enumerateKeysAndObjectsUsingBlock:v42];
      }

      v17 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v17);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __78__EFSQLPropertyMapper__registerQualifiedColumns_lookupKeys_forClass_property___block_invoke_2;
  v37[3] = &unk_1E8249E90;
  v39 = classCopy;
  propertyCopy2 = property;
  v37[4] = self;
  v41 = a2;
  v27 = v32;
  v38 = v27;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v37];

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

- (void)registerColumnName:(id)name table:(id)table lookupKeys:(id)keys
{
  v19[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  tableCopy = table;
  keysCopy = keys;
  v12 = [EFPair pairWithFirst:tableCopy second:nameCopy];
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
  [keysCopy enumerateKeysAndObjectsUsingBlock:v16];

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

- (id)columnNameForClass:(Class)class property:(SEL)property
{
  v4 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:class property:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [v4 name];
  }

  else
  {
    firstObject = [v4 firstObject];
    name = [firstObject second];
  }

  return name;
}

- (id)columnNameForProtocol:(id)protocol property:(SEL)property
{
  v4 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" protocol:protocol property:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [v4 name];
  }

  else
  {
    firstObject = [v4 firstObject];
    name = [firstObject second];
  }

  return name;
}

- (id)columnNameForLookupKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v9 = _keyForLookupValue(keyCopy, valueCopy);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v11 = [lookupValues objectForKeyedSubscript:v9];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:313 description:{@"Schema doesn't define column for lookupKey=%@ value=%@", keyCopy, valueCopy}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [v11 name];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    firstObject = [v11 firstObject];
    first = [firstObject first];
    firstObject2 = [v11 firstObject];
    second = [firstObject2 second];
    name = [v13 initWithFormat:@"%@.%@", first, second];
  }

  return name;
}

- (id)qualifiedColumnExpressionForLookupKey:(id)key value:(id)value availableTables:(id)tables
{
  keyCopy = key;
  valueCopy = value;
  tablesCopy = tables;
  v12 = _keyForLookupValue(keyCopy, valueCopy);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v14 = [lookupValues objectForKeyedSubscript:v12];

  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:327 description:{@"Schema doesn't define column for lookupKey=%@ value=%@", keyCopy, valueCopy}];
  }

  v15 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v14 availableTables:tablesCopy replaceNULL:1];
  v16 = [v15 componentsJoinedByString:{@", "}];

  return v16;
}

- (id)qualifiedColumnExpressionForClass:(Class)class property:(SEL)property availableTables:(id)tables
{
  tablesCopy = tables;
  v9 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:class property:property];
  v10 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v9 availableTables:tablesCopy replaceNULL:1];
  v11 = [v10 componentsJoinedByString:{@", "}];

  return v11;
}

- (id)qualifiedColumnExpressionsForClass:(Class)class property:(SEL)property availableTables:(id)tables
{
  tablesCopy = tables;
  v9 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:class property:property];
  v10 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v9 availableTables:tablesCopy replaceNULL:1];

  return v10;
}

- (id)qualifiedColumnNamesForClass:(Class)class property:(SEL)property availableTables:(id)tables
{
  tablesCopy = tables;
  v9 = [(EFSQLPropertyMapper *)self valueForLookupKey:@"EFSQLPropertyMapperLookupKeyQualifiedColumnByProperty" class:class property:property];
  v10 = [(EFSQLPropertyMapper *)self _qualifiedColumnExpressionsForColumn:v9 availableTables:tablesCopy replaceNULL:0];

  return v10;
}

- (id)_qualifiedColumnExpressionsForColumn:(id)column availableTables:(id)tables replaceNULL:(BOOL)l
{
  lCopy = l;
  v36[1] = *MEMORY[0x1E69E9840];
  columnCopy = column;
  tablesCopy = tables;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = columnCopy;
  v30 = v10;
  if (isKindOfClass)
  {
    table = [v10 table];
    name = [table name];
    v13 = [tablesCopy containsObject:name];

    if (v13)
    {
      v14 = [v30 fullNameWithDatabaseName:0];
      v36[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    }

    else if (lCopy)
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
    v29 = columnCopy;
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
          first = [v20 first];
          v22 = [tablesCopy containsObject:first];

          if (v22)
          {
            v23 = MEMORY[0x1E696AEC0];
            first2 = [v20 first];
            second = [v20 second];
            v26 = [v23 stringWithFormat:@"%@.%@", first2, second, v29];
            [v15 addObject:v26];
          }

          else if (lCopy)
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

- (BOOL)hasLookupKey:(id)key class:(Class)class property:(SEL)property
{
  v6 = _keyForClassInstanceProperty(key, class, property);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v8 = [lookupValues objectForKeyedSubscript:v6];
  v9 = v8 != 0;

  return v9;
}

- (id)valueForLookupKey:(id)key class:(Class)class property:(SEL)property
{
  keyCopy = key;
  v10 = _keyForClassInstanceProperty(keyCopy, class, property);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v12 = [lookupValues objectForKeyedSubscript:v10];

  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(property);
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:390 description:{@"Schema doesn't define value for lookupKey=%@ class=%@ property=%@", keyCopy, class, v15}];
  }

  return v12;
}

- (id)valueForLookupKey:(id)key protocol:(id)protocol property:(SEL)property
{
  keyCopy = key;
  protocolCopy = protocol;
  v11 = _keyForProtocolInstanceProperty(keyCopy, protocolCopy, property);
  lookupValues = [(EFSQLPropertyMapper *)self lookupValues];
  v13 = [lookupValues objectForKeyedSubscript:v11];

  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = NSStringFromSelector(property);
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLPropertyMapper.m" lineNumber:398 description:{@"Schema doesn't define value for lookupKey=%@ protocol=%@ property=%@", keyCopy, protocolCopy, v16}];
  }

  return v13;
}

- (BOOL)_hasAllowedPrefix:(id)prefix
{
  v18 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  allowedProtocolPrefixes = [(EFSQLPropertyMapper *)self allowedProtocolPrefixes];
  v6 = [allowedProtocolPrefixes count];

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allowedProtocolPrefixes2 = [(EFSQLPropertyMapper *)self allowedProtocolPrefixes];
    v8 = [allowedProtocolPrefixes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allowedProtocolPrefixes2);
          }

          if ([prefixCopy hasPrefix:*(*(&v13 + 1) + 8 * i)])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [allowedProtocolPrefixes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_findAllProtocolsOfClass:(Class)class withProperty:(SEL)property
{
  protocolQueueCache = [(EFSQLPropertyMapper *)self protocolQueueCache];
  v8 = NSStringFromClass(class);
  v9 = [protocolQueueCache objectForKey:v8];

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
    for (i = class; i; i = class_getSuperclass(i))
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __61__EFSQLPropertyMapper__findAllProtocolsOfClass_withProperty___block_invoke_2;
      v27[3] = &__block_descriptor_40_e10___16__0_I8lu32l8;
      v27[4] = i;
      v15[2](v15, v27);
    }

    protocolQueueCache2 = [(EFSQLPropertyMapper *)self protocolQueueCache];
    v9 = 0;
    v18 = [v14 copy];
    v19 = NSStringFromClass(class);
    [protocolQueueCache2 setObject:v18 forKey:v19];
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  while ([v14 count])
  {
    anyObject = [v14 anyObject];
    [v14 removeObject:anyObject];
    if (([v20 containsObject:anyObject] & 1) == 0)
    {
      Name = sel_getName(property);
      if (protocol_getProperty(anyObject, Name, 1, 1))
      {
        [v20 addObject:anyObject];
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__EFSQLPropertyMapper__findAllProtocolsOfClass_withProperty___block_invoke_3;
      v25[3] = &unk_1E8249F28;
      v26 = anyObject;
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