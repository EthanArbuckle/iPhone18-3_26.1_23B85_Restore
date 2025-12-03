@interface _CSVisualizer
+ (BOOL)getUnit:(unsigned int *)unit inTable:(unsigned int *)table fromURL:(id)l;
+ (BOOL)unitDescription:(id)description referencesUnit:(unsigned int)unit inTable:(unsigned int)table;
+ (_NSRange)rangeOfValueForTitle:(id)title inDescription:(id)description;
+ (id)URLForUnit:(unsigned int)unit inTable:(unsigned int)table;
+ (id)predicateForSearchingDescriptionWithString:(id)string error:(id *)error;
+ (void)breakDownTable:(const Table *)table inStore:(const void *)store buffer:(char *)buffer;
+ (void)enumerateReferencesToUnitsInUnitDescription:(id)description block:(id)block;
+ (void)enumerateValuesForTitlesInDescription:(id)description block:(id)block;
- (_CSVisualizer)initWithStore:(__CSStore *)store useStandardTableFunctions:(BOOL)functions;
- (id)breakDownUsage;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)enumerateReferencesToUnit:(unsigned int)unit inTable:(unsigned int)table block:(id)block;
- (void)setStandardTableFunctions;
@end

@implementation _CSVisualizer

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithStore:useStandardTableFunctions:", -[_CSVisualizer store](self, "store"), 0}];
  [(NSRecursiveLock *)self->_lock lock];
  [v4[1] addEntriesFromDictionary:self->_functions];
  [v4[4] addEntriesFromDictionary:self->_userInfo];
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (void)enumerateReferencesToUnit:(unsigned int)unit inTable:(unsigned int)table block:(id)block
{
  blockCopy = block;
  v9 = objc_opt_class();
  store = [(_CSVisualizer *)self store];
  v11 = store;
  if (performConstantAssertions == 1)
  {
    v12 = *(store + 43);
    if (v12)
    {
      (*(**(v12 + 8) + 8))(*(v12 + 8));
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___CSVisualizer_enumerateReferencesToUnit_inTable_block___block_invoke;
  v14[3] = &unk_1E7ED3A98;
  tableCopy = table;
  unitCopy = unit;
  v16 = v11 + 8;
  v17 = v9;
  v14[4] = self;
  v13 = blockCopy;
  v15 = v13;
  CSStore2::Store::enumerateTables(v11 + 1, v14);
}

- (id)breakDownUsage
{
  store = [(_CSVisualizer *)self store];
  v3 = store;
  if (performConstantAssertions == 1)
  {
    v4 = *(store + 43);
    if (v4)
    {
      (*(**(v4 + 8) + 8))(*(v4 + 8));
    }
  }

  v6 = *(v3 + 1);
  v5 = (v3 + 8);
  v7 = *(v6 + 8);
  v8 = *(v7 + 12);
  v9 = malloc_type_malloc(v8 + 4, 0x100004052888210uLL);
  v10 = v9 + 4;
  bzero(v9 + 4, v8);
  *(v9 + 25) = 33686018;
  *&v11 = 0x202020202020202;
  *(&v11 + 1) = 0x202020202020202;
  *(v9 + 84) = v11;
  *(v9 + 68) = v11;
  *(v9 + 52) = v11;
  *(v9 + 36) = v11;
  *(v9 + 20) = v11;
  *(v9 + 4) = v11;
  v12 = objc_opt_class();
  [v12 breakDownTable:v7 + 20 inStore:v5 buffer:v9 + 4];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __31___CSVisualizer_breakDownUsage__block_invoke;
  v24[3] = &__block_descriptor_56_e47_v24__0r__Table__Unit_b30b2I_0c___48c_QQII_8_B16lu32l8;
  v24[4] = v12;
  v24[5] = v5;
  v24[6] = v9 + 4;
  CSStore2::Store::enumerateTables(v5, v24);
  v13 = v8 >> 2;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10[i >> 2] = v10[i];
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v10 length:v8 >> 2 freeWhenDone:0];
  v17 = [v16 compressedDataUsingAlgorithm:0 error:0];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 length];
    if (v19 < v13)
    {
      [v18 getBytes:v10 length:v19];
    }
  }

  else
  {
    v19 = -1;
  }

  objc_autoreleasePoolPop(v15);
  if (v19 >= v13)
  {
    v20 = v13 + 4;
  }

  else
  {
    v20 = v19 + 4;
    v21 = malloc_type_realloc(v9, v19 + 4, 0x100004052888210uLL);
    if (v21)
    {
      v9 = v21;
    }
  }

  *v9 = 1;
  v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:v20 freeWhenDone:1];

  return v22;
}

- (void)setStandardTableFunctions
{
  store = [(_CSVisualizer *)self store];
  v4 = store;
  if (performConstantAssertions == 1)
  {
    v5 = *(store + 43);
    if (v5)
    {
      (*(**(v5 + 8) + 8))(*(v5 + 8));
    }
  }

  v6 = v4 + 1;
  Table = v4[34];
  if (Table || (Table = CSStore2::Store::getTable(v4 + 1, &cfstr_Array.isa)) != 0)
  {
    v8 = objc_alloc_init(_CSVisualizerTableFunctions);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42___CSVisualizer_setStandardTableFunctions__block_invoke;
    v16[3] = &__block_descriptor_40_e49___NSAttributedString_24__0___CSVisualizer_8I16I20l;
    v16[4] = v4 + 1;
    [(_CSVisualizerTableFunctions *)v8 setGetDescription:v16];
    [(_CSVisualizer *)self setFunctions:v8 forTable:(4 * *Table)];
  }

  v9 = v4[35];
  if (v9 || (v9 = CSStore2::Store::getTable(v4 + 1, &cfstr_String_0.isa)) != 0)
  {
    v10 = objc_alloc_init(_CSVisualizerTableFunctions);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42___CSVisualizer_setStandardTableFunctions__block_invoke_2;
    v15[3] = &__block_descriptor_40_e39___NSString_24__0___CSVisualizer_8I16I20l;
    v15[4] = v4 + 1;
    [(_CSVisualizerTableFunctions *)v10 setGetSummary:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42___CSVisualizer_setStandardTableFunctions__block_invoke_3;
    v14[3] = &__block_descriptor_40_e49___NSAttributedString_24__0___CSVisualizer_8I16I20l;
    v14[4] = v4 + 1;
    [(_CSVisualizerTableFunctions *)v10 setGetDescription:v14];
    [(_CSVisualizer *)self setFunctions:v10 forTable:(4 * *v9)];
  }

  v11 = v4[36];
  if (v11 || (v11 = CSStore2::Store::getTable(v6, &cfstr_Dictionary.isa)) != 0)
  {
    v12 = objc_alloc_init(_CSVisualizerTableFunctions);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42___CSVisualizer_setStandardTableFunctions__block_invoke_4;
    v13[3] = &__block_descriptor_40_e49___NSAttributedString_24__0___CSVisualizer_8I16I20l;
    v13[4] = v6;
    [(_CSVisualizerTableFunctions *)v12 setGetDescription:v13];
    [(_CSVisualizer *)self setFunctions:v12 forTable:(4 * *v11)];
  }
}

- (void)dealloc
{
  CFRelease(self->_store);
  v3.receiver = self;
  v3.super_class = _CSVisualizer;
  [(_CSVisualizer *)&v3 dealloc];
}

- (_CSVisualizer)initWithStore:(__CSStore *)store useStandardTableFunctions:(BOOL)functions
{
  functionsCopy = functions;
  v14.receiver = self;
  v14.super_class = _CSVisualizer;
  v6 = [(_CSVisualizer *)&v14 init];
  if (v6)
  {
    v6->_store = CFRetain(store);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    functions = v6->_functions;
    v6->_functions = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v6->_userInfo;
    v6->_userInfo = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v6->_lock;
    v6->_lock = v11;

    if (functionsCopy)
    {
      [(_CSVisualizer *)v6 setStandardTableFunctions];
    }
  }

  return v6;
}

+ (BOOL)getUnit:(unsigned int *)unit inTable:(unsigned int *)table fromURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = objc_autoreleasePoolPush();
  absoluteString = [lCopy absoluteString];
  v10 = [absoluteString getCString:v28 maxLength:1024 encoding:4];

  if (v10 && (v24 = 0, v20 = 0, sscanf(v28, "x-csstore-vis-unit:?t=%llu&u=%llu", &v24, &v20) == 2))
  {
    if (table)
    {
      *table = v24;
    }

    if (unit)
    {
      *unit = v20;
    }

    v11 = 1;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:1];
    scheme = [v12 scheme];
    if (scheme && ([v12 scheme], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "caseInsensitiveCompare:", @"x-csstore-vis-unit") == 0, v14, scheme, v15))
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      queryItems = [v12 queryItems];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __41___CSVisualizer_getUnit_inTable_fromURL___block_invoke;
      v19[3] = &unk_1E7ED3B38;
      v19[4] = &v24;
      v19[5] = &v20;
      v19[6] = table;
      v19[7] = unit;
      [queryItems enumerateObjectsUsingBlock:v19];

      if (*(v25 + 24) == 1)
      {
        v11 = *(v21 + 24);
      }

      else
      {
        v11 = 0;
      }

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v8);

  v17 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

+ (id)URLForUnit:(unsigned int)unit inTable:(unsigned int)table
{
  unit = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"x-csstore-vis-unit:?t=%llu&u=%llu", table, unit];
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:unit];

  return v5;
}

+ (BOOL)unitDescription:(id)description referencesUnit:(unsigned int)unit inTable:(unsigned int)table
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___CSVisualizer_unitDescription_referencesUnit_inTable___block_invoke;
  v7[3] = &unk_1E7ED3B10;
  tableCopy = table;
  unitCopy = unit;
  v7[4] = &v10;
  [self enumerateReferencesToUnitsInUnitDescription:description block:v7];
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

+ (void)enumerateReferencesToUnitsInUnitDescription:(id)description block:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___CSVisualizer_enumerateReferencesToUnitsInUnitDescription_block___block_invoke;
  v10[3] = &unk_1E7ED3AE8;
  v7 = blockCopy;
  v11 = v7;
  v8 = MEMORY[0x1BFAE6310](v10);
  v9 = objc_autoreleasePoolPush();
  [descriptionCopy enumerateAttributesInRange:0 options:objc_msgSend(descriptionCopy usingBlock:{"length"), 0x100000, v8}];
  objc_autoreleasePoolPop(v9);
}

+ (void)breakDownTable:(const Table *)table inStore:(const void *)store buffer:(char *)buffer
{
  bufferCopy = buffer;
  tableCopy = table;
  if (table)
  {
    v8 = *store;
    if (*store)
    {
      v9 = *(v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = 0xFFFFFFFFLL;
    v11 = table >= v9;
    v12 = table - v9;
    if (v11 && !HIDWORD(v12))
    {
      if ((v12 + 1) > *(*(v8 + 8) + 12) || v12 == -1)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v14 = &buffer[v10];
  *&v15 = 0x404040404040404;
  *(&v15 + 1) = 0x404040404040404;
  *(v14 + 3) = v15;
  *(v14 + 4) = v15;
  *(v14 + 1) = v15;
  *(v14 + 2) = v15;
  *v14 = v15;
  v16 = table + 1;
  v17 = *store;
  if (*store)
  {
    v18 = *(v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xFFFFFFFFLL;
  v11 = v16 >= v18;
  v20 = v16 - v18;
  if (v11 && !HIDWORD(v20))
  {
    if ((v20 + 1) > *(*(v17 + 8) + 12) || v20 == -1)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = v20;
    }
  }

  memset(&buffer[v19], 68, table->var0.var2 - 72);
  v23 = tableCopy[19];
  if (v23 != -1)
  {
    v24 = *(*store + 8);
    v25 = *(v24 + 12);
    if (v25 > v23)
    {
      v26 = (v24 + v23);
      tableCopy[19];
      v27 = v24 + v23 < v24;
      tableCopy[19];
      v28 = v23 + 1 > v25 || v23 == -1;
      if (v27 || v28)
      {
        v23 = 0xFFFFFFFFLL;
      }

      *&bufferCopy[v23] = 134744072;
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v96 = ___ZN8CSStore27HashMapIjjNS_20_IdentifierFunctionsELy1EE14WriteBreakdownERKNS_5StoreEPKS2_hPh_block_invoke;
      v97 = &__block_descriptor_41_e21_v32__0I8I12B16B20_B24l;
      v99 = 4;
      v98 = bufferCopy;
      v29 = v95;
      v30 = v29;
      LOBYTE(v100[0]) = 0;
      v31 = v26 + 1;
      v32 = *store;
      if (*store)
      {
        v33 = *(v32 + 8);
      }

      else
      {
        v33 = 0;
      }

      v34 = 0xFFFFFFFFLL;
      v11 = v31 >= v33;
      v35 = v31 - v33;
      v89 = bufferCopy;
      v91 = tableCopy;
      if (v11 && !HIDWORD(v35))
      {
        if ((v35 + 1) > *(*(v32 + 8) + 12) || v35 == -1)
        {
          v34 = 0xFFFFFFFFLL;
        }

        else
        {
          v34 = v35;
        }
      }

      (v96)(v29, v34, (8 * *v26), 1, 1, v100);
      v37 = *v26;
      if (v37 && (v100[0] & 1) == 0)
      {
        v38 = 0;
        v39 = 0;
        do
        {
          v40 = &v31[2 * v39];
          v41 = v40[1];
          if (v41 == -1)
          {
            v45 = 0;
          }

          else
          {
            v42 = *(*store + 8);
            v43 = *(v42 + 12) > v41;
            v44 = v42 + v41;
            if (v43)
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }
          }

          if (!((*v40 == 0) | v38 & 1))
          {
            v46 = (v45 + 4);
            v47 = 1;
            do
            {
              if (*(v46 - 1))
              {
                v48 = *v46 != -1;
              }

              else
              {
                v48 = 0;
              }

              v49 = *store;
              if (*store)
              {
                v50 = *(v49 + 8);
              }

              else
              {
                v50 = 0;
              }

              v51 = 0xFFFFFFFFLL;
              v11 = v45 >= v50;
              v52 = v45 - v50;
              if (v11 && !HIDWORD(v52))
              {
                if ((v52 + 1) > *(*(v49 + 8) + 12) || v52 == -1)
                {
                  v51 = 0xFFFFFFFFLL;
                }

                else
                {
                  v51 = v52;
                }
              }

              (v96)(v30, v51, 8, 0, v48, v100);
              v38 = v100[0];
              if (v47 >= *v40)
              {
                break;
              }

              ++v47;
              v45 += 8;
              v46 += 2;
            }

            while ((v100[0] & 1) == 0);
            v37 = *v26;
          }

          ++v39;
        }

        while (v39 < v37 && (v38 & 1) == 0);
      }

      bufferCopy = v89;
      tableCopy = v91;
    }
  }

  Table = *(store + 34);
  if (!Table)
  {
    Table = CSStore2::Store::getTable(store, &cfstr_String_0.isa);
  }

  if (Table == tableCopy)
  {
    StringCache = CSStore2::getStringCache(store, v22);
    if (StringCache)
    {
      v59 = StringCache;
      v60 = *store;
      if (*store)
      {
        v61 = *(v60 + 8);
      }

      else
      {
        v61 = 0;
      }

      v62 = 0xFFFFFFFFLL;
      v11 = StringCache >= v61;
      v63 = StringCache - v61;
      if (v11 && !HIDWORD(v63))
      {
        if ((v63 + 1) > *(*(v60 + 8) + 12) || v63 == -1)
        {
          v62 = 0xFFFFFFFFLL;
        }

        else
        {
          v62 = v63;
        }
      }

      *&bufferCopy[v62] = 168430090;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v101 = ___ZN8CSStore27HashMapIjNS_17_StringCacheEntryENS_16_StringFunctionsELy0EE14WriteBreakdownERKNS_5StoreEPKS3_hPh_block_invoke;
      v102 = &__block_descriptor_41_e21_v32__0I8I12B16B20_B24l;
      v104 = 5;
      v103 = bufferCopy;
      v65 = v100;
      v66 = v65;
      v105[0] = 0;
      v67 = v59 + 1;
      v68 = *store;
      if (*store)
      {
        v69 = *(v68 + 8);
      }

      else
      {
        v69 = 0;
      }

      v70 = 0xFFFFFFFFLL;
      v11 = v67 >= v69;
      v71 = v67 - v69;
      v92 = tableCopy;
      if (v11 && !HIDWORD(v71))
      {
        if ((v71 + 1) > *(*(v68 + 8) + 12) || v71 == -1)
        {
          v70 = 0xFFFFFFFFLL;
        }

        else
        {
          v70 = v71;
        }
      }

      v90 = bufferCopy;
      (v101)(v65, v70, (8 * *v59), 1, 1, v105);
      v73 = *v59;
      if (v73 && (v105[0] & 1) == 0)
      {
        v74 = 0;
        v75 = 0;
        do
        {
          v76 = &v67[2 * v75];
          v77 = v76[1];
          if (v77 == -1)
          {
            v80 = 0;
          }

          else
          {
            v78 = *(*store + 8);
            v43 = *(v78 + 12) > v77;
            v79 = v78 + v77;
            if (v43)
            {
              v80 = v79;
            }

            else
            {
              v80 = 0;
            }
          }

          if (!((*v76 == 0) | v74 & 1))
          {
            v81 = (v80 + 4);
            v82 = 1;
            do
            {
              if (*(v81 - 1))
              {
                v83 = *v81 != 0;
              }

              else
              {
                v83 = 0;
              }

              v84 = *store;
              if (*store)
              {
                v85 = *(v84 + 8);
              }

              else
              {
                v85 = 0;
              }

              v86 = 0xFFFFFFFFLL;
              v11 = v80 >= v85;
              v87 = v80 - v85;
              if (v11 && !HIDWORD(v87))
              {
                if ((v87 + 1) > *(*(v84 + 8) + 12) || v87 == -1)
                {
                  v86 = 0xFFFFFFFFLL;
                }

                else
                {
                  v86 = v87;
                }
              }

              (v101)(v66, v86, 8, 0, v83, v105);
              v74 = v105[0];
              if (v82 >= *v76)
              {
                break;
              }

              ++v82;
              v80 += 8;
              v81 += 2;
            }

            while ((v105[0] & 1) == 0);
            v73 = *v59;
          }

          ++v75;
        }

        while (v75 < v73 && (v74 & 1) == 0);
      }

      v57 = 6;
      bufferCopy = v90;
      tableCopy = v92;
    }

    else
    {
      v57 = 6;
    }
  }

  else
  {
    v55 = *(store + 33);
    if (!v55)
    {
      v55 = CSStore2::Store::getTable(store, &cfstr_Array.isa);
    }

    if (v55 == tableCopy)
    {
      v57 = 7;
    }

    else
    {
      v56 = *(store + 35);
      if (!v56)
      {
        v56 = CSStore2::Store::getTable(store, &cfstr_Dictionary.isa);
      }

      if (v56 == tableCopy)
      {
        v57 = 8;
      }

      else
      {
        v57 = 3;
      }
    }
  }

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __47___CSVisualizer_breakDownTable_inStore_buffer___block_invoke;
  v93[3] = &__block_descriptor_49_e30_v24__0r__Unit_b30b2I_0c__8_B16l;
  v94 = v57;
  v93[4] = store;
  v93[5] = bufferCopy;
  CSStore2::Store::enumerateUnits(store, tableCopy, v93);
}

+ (id)predicateForSearchingDescriptionWithString:(id)string error:(id *)error
{
  v4 = [_CSVisualizerPredicate predicateWithFormatString:string error:error];

  return v4;
}

+ (void)enumerateValuesForTitlesInDescription:(id)description block:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  v51 = 0;
  v52 = &v51;
  v53 = 0x4812000000;
  v54 = __Block_byref_object_copy__44;
  v55 = __Block_byref_object_dispose__45;
  v56 = "";
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __61___CSVisualizer_enumerateValuesForTitlesInDescription_block___block_invoke;
  v48[3] = &unk_1E7ED39E0;
  v6 = descriptionCopy;
  v49 = v6;
  v50 = &v51;
  v7 = MEMORY[0x1BFAE6310](v48);
  v8 = objc_autoreleasePoolPush();
  v36 = v6;
  [v6 enumerateAttribute:@"_CSVOutputType" inRange:0 options:objc_msgSend(v6 usingBlock:{"length"), 0, v7}];
  objc_autoreleasePoolPop(v8);
  v32 = v7;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v9 = v52[6];
  v10 = v52[7];
  if (v9 != v10)
  {
    v11 = MEMORY[0x1E69E9820];
    do
    {
      v13 = *v9;
      v12 = v9[1];
      v38 = 0;
      v39 = &v38;
      v40 = 0x4012000000;
      v41 = __Block_byref_object_copy__761;
      v42 = __Block_byref_object_dispose__762;
      v43 = "";
      v44 = xmmword_1B9D88CD0;
      v37[0] = v11;
      v37[1] = 3221225472;
      v37[2] = __61___CSVisualizer_enumerateValuesForTitlesInDescription_block___block_invoke_50;
      v37[3] = &unk_1E7ED3A08;
      v37[4] = &v38;
      v14 = MEMORY[0x1BFAE6310](v37);
      v15 = objc_autoreleasePoolPush();
      [v36 enumerateAttributesInRange:v12 + v13 options:objc_msgSend(v36 usingBlock:{"length") - (v12 + v13), 0, v14}];
      std::vector<_NSRange>::push_back[abi:nn200100](&v45, v39 + 3);
      objc_autoreleasePoolPop(v15);

      _Block_object_dispose(&v38, 8);
      v9 += 2;
    }

    while (v9 != v10);
  }

  string = [v36 string];
  v16 = v52[7] - v52[6];
  v17 = v45;
  if ((v46 - v45) >> 4 >= (v16 >> 4))
  {
    v18 = v16 >> 4;
  }

  else
  {
    v18 = (v46 - v45) >> 4;
  }

  LOBYTE(v38) = 0;
  if (v18)
  {
    v19 = 0;
    __p = v45;
    v20 = v45 + 1;
    v21 = 1;
    do
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v52[6];
      v24 = *(v23 + v19);
      v25 = *(v20 - 1);
      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        context = v22;
        v27 = *v20;
        v28 = *(v23 + v19 + 8);
        v29 = [string substringWithRange:{v24, v28}];
        v30 = [v36 attributedSubstringFromRange:{v25, v27}];
        blockCopy[2](blockCopy, v29, v24, v28, v30, v25, v27, &v38);

        v22 = context;
      }

      objc_autoreleasePoolPop(v22);
      if (v21 >= v18)
      {
        break;
      }

      v20 += 2;
      ++v21;
      v19 += 16;
    }

    while ((v38 & 1) == 0);

    v17 = __p;
  }

  else
  {

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  operator delete(v17);
LABEL_19:

  _Block_object_dispose(&v51, 8);
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

+ (_NSRange)rangeOfValueForTitle:(id)title inDescription:(id)description
{
  titleCopy = title;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = __Block_byref_object_copy__761;
  v19 = __Block_byref_object_dispose__762;
  v20 = "";
  v21 = xmmword_1B9D88CD0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___CSVisualizer_rangeOfValueForTitle_inDescription___block_invoke;
  v12[3] = &unk_1E7ED39B8;
  v13 = titleCopy;
  v14 = &v15;
  v7 = titleCopy;
  [self enumerateValuesForTitlesInDescription:description block:v12];
  v8 = v16[6];
  v9 = v16[7];

  _Block_object_dispose(&v15, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

@end