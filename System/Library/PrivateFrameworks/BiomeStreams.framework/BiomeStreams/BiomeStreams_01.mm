id BMSQLVirtualTables(void *a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v39 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = v7;
  v42 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v42)
  {
    v41 = *v48;
    *&v10 = 138412290;
    v36 = v10;
    v38 = v8;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = v12;
        v15 = [&unk_1EF309278 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17;

        v46 = 0;
        v19 = [v6 streamWithIdentifier:v18 error:&v46];
        v20 = v46;
        v21 = v20;
        if (v20)
        {
          v22 = [v20 domain];
          if (![v22 isEqualToString:@"BMLibraryErrorDomain"])
          {

LABEL_22:
            if (a4)
            {
              v33 = v21;
              *a4 = v21;
            }

            objc_autoreleasePoolPop(v13);
            v9 = obj;

            v32 = 0;
            goto LABEL_25;
          }

          v23 = [v21 code];

          if (v23 != 1)
          {
            goto LABEL_22;
          }

          v24 = __biome_log_for_category();
          if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEBUG))
          {
            *buf = v36;
            v52 = v18;
            _os_log_debug_impl(&dword_1848EE000, &v24->super, OS_LOG_TYPE_DEBUG, "BMSQLDatabase failed to add virtual table for stream %@ because it is not in BiomeLibrary", buf, 0xCu);
          }
        }

        else
        {
          if ([v14 isEqualToString:v18])
          {
            v24 = [[BMStreamVirtualTable alloc] initWithStream:v19 useCase:v39];
          }

          else
          {
            v25 = [BMSQLSchema alloc];
            v26 = [v19 schema];
            [v26 columns];
            v28 = v27 = v6;
            v29 = [(BMSQLSchema *)v25 initWithTableName:v14 columns:v28];

            v30 = [BMStreamVirtualTable alloc];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __BMSQLVirtualTables_block_invoke;
            v43[3] = &unk_1E6E53D28;
            v44 = v19;
            v45 = v39;
            v31 = v30;
            v6 = v27;
            v8 = v38;
            v24 = [(BMStreamVirtualTable *)v31 initWithSchema:v29 publisherBlock:v43];
          }

          [v8 addObject:{v24, v36}];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = obj;
      v42 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v32 = [v8 copy];
LABEL_25:

  v34 = *MEMORY[0x1E69E9840];

  return v32;
}

uint64_t bmstream_vtab_connect(sqlite3 *a1, id *a2, int a3, uint64_t a4, void *a5, char **a6)
{
  v12 = objc_autoreleasePoolPush();
  if (a3 == 3)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(a4 + 16)];
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      bmstream_vtab_connect_cold_1();
    }

    WeakRetained = objc_loadWeakRetained(a2);
    v16 = [WeakRetained virtualTableForName:v13];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 schema];

      if (v18)
      {
        v19 = [v17 schema];
        v20 = [v19 createTableSQL];

        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          bmstream_vtab_connect_cold_2();
        }

        v22 = sqlite3_declare_vtab(a1, [v20 UTF8String]);
        if (!v22)
        {
          v23 = sqlite3_malloc(40);
          if (v23)
          {
            *v23 = 0u;
            *(v23 + 1) = 0u;
            *(v23 + 4) = 0;
            v24 = (v23 + 32);
            *a5 = v23;
            objc_storeStrong(v23 + 3, v17);
            objc_storeWeak(v24, WeakRetained);
            v22 = 0;
          }

          else
          {
            *a5 = 0;
            v22 = 7;
          }
        }

        goto LABEL_22;
      }

      if (a6)
      {
        v25 = [v17 schema];

        if (v25)
        {
          goto LABEL_16;
        }

        *a6 = sqlite3_mprintf("stream %s does not have a schema", [v13 UTF8String]);
      }
    }

    else if (a6)
    {
LABEL_16:
      v26 = [0 localizedDescription];
      v27 = v26;
      if (v26)
      {
        *a6 = sqlite3_mprintf("%s", [v26 UTF8String]);
      }
    }

    v22 = 1;
LABEL_22:

    goto LABEL_23;
  }

  v22 = 1;
LABEL_23:
  objc_autoreleasePoolPop(v12);
  return v22;
}

__CFString *BMSQLDataTypeToString(unint64_t a1)
{
  if (a1 < 7)
  {
    return off_1E6E53478[a1];
  }

  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    BMSQLDataTypeToString_cold_1(a1, v3);
  }

  return @"TEXT";
}

void *bm_sqlite3_malloc(int a1)
{
  v2 = sqlite3_malloc(a1);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

uint64_t bmstream_authorizer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = @"DENY";
  v8 = 1;
  if (a2 > 14)
  {
    if (a2 > 0x21)
    {
      goto LABEL_15;
    }

    if (((1 << a2) & 0x283600000) != 0)
    {
      goto LABEL_52;
    }

    if (a2 != 20)
    {
      if (a2 == 23)
      {
        if (a3)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
        }

        else
        {
          v9 = 0;
        }

        v14 = ([v9 isEqualToString:@"sqlite_master"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"sqlite_temp_master") & 1) == 0;
        goto LABEL_49;
      }

LABEL_15:
      if (a2 != 15)
      {
        if (a2 != 18)
        {
          goto LABEL_53;
        }

LABEL_17:
        if (a3)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 isEqualToString:@"sqlite_temp_master"];

        if ((v11 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      goto LABEL_52;
    }

    if (a3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      if (a4)
      {
LABEL_24:
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
        goto LABEL_27;
      }
    }

    else
    {
      v9 = 0;
      if (a4)
      {
        goto LABEL_24;
      }
    }

    v13 = 0;
LABEL_27:
    if ([v9 isEqualToString:@"sqlite_master"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"json_each"))
    {
      v14 = 0;
    }

    else
    {
      v15 = [a1 privileges];
      v16 = v15;
      if (v15)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v27;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v17);
              }

              if ([*(*(&v26 + 1) + 8 * i) checkTable:v9 column:{v13, v26}])
              {
                v14 = 0;
                goto LABEL_45;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v14 = 1;
LABEL_45:
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_49:
    if (v14)
    {
      v7 = @"DENY";
LABEL_51:
      v8 = 1;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      goto LABEL_17;
    }

    if (a2 == 13)
    {
LABEL_52:
      v8 = 0;
      v7 = @"ALLOW";
    }
  }

  else if (a2 == 4 || a2 == 6)
  {
    goto LABEL_52;
  }

LABEL_53:
  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    *buf = 138413058;
    v31 = v7;
    v32 = 2112;
    v33 = v25;
    v34 = 2080;
    v35 = a3;
    v36 = 2080;
    v37 = a4;
    _os_log_debug_impl(&dword_1848EE000, v22, OS_LOG_TYPE_DEBUG, "bmstream_authorizer callback %@ for action %@, (%s, %s)", buf, 0x2Au);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t bmstream_vtab_filter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, sqlite3_value **a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    bmstream_vtab_filter_cold_1(a2, a4, v10);
  }

  v11 = [*(a1 + 8) virtualTable];
  v12 = [v11 acceptPublisherOptions];

  if ((v12 & 1) == 0)
  {
    [*(a1 + 8) reset];
    goto LABEL_28;
  }

  if (a2)
  {
    v22 = sqlite3_value_double(*a5);
    v23 = [MEMORY[0x1E695DF00] distantPast];
    [v23 timeIntervalSince1970];
    v25 = v24;

    if (v22 <= v25)
    {
      v29 = [MEMORY[0x1E695DF00] distantPast];
    }

    else
    {
      v26 = [MEMORY[0x1E695DF00] distantFuture];
      [v26 timeIntervalSince1970];
      v28 = v27;

      if (v22 >= v28)
      {
        [MEMORY[0x1E695DF00] distantFuture];
      }

      else
      {
        [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v22 + -0.000001];
      }
      v29 = ;
    }

    v13 = v29;
    if ((a2 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if ((a2 & 2) != 0)
    {
LABEL_6:
      v14 = sqlite3_value_double(a5[a4 != 1]);
      v15 = [MEMORY[0x1E695DF00] distantPast];
      [v15 timeIntervalSince1970];
      v17 = v16;

      if (v14 <= v17)
      {
        v21 = [MEMORY[0x1E695DF00] distantPast];
      }

      else
      {
        v18 = [MEMORY[0x1E695DF00] distantFuture];
        [v18 timeIntervalSince1970];
        v20 = v19;

        if (v14 >= v20)
        {
          [MEMORY[0x1E695DF00] distantFuture];
        }

        else
        {
          [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v14 + 0.000001];
        }
        v21 = ;
      }

      v30 = v21;
      goto LABEL_22;
    }
  }

  v30 = 0;
LABEL_22:
  v31 = [BMPublisherOptions alloc];
  if ((a2 & 4) != 0)
  {
    v32 = v30;
    v33 = v13;
    v34 = 1;
  }

  else
  {
    v32 = v13;
    v33 = v30;
    v34 = 0;
  }

  v35 = [(BMPublisherOptions *)v31 initWithStartDate:v32 endDate:v33 maxEvents:0 lastN:0 reversed:v34];
  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    bmstream_vtab_filter_cold_2();
  }

  [*(a1 + 8) resetWithOptions:v35];
LABEL_28:
  objc_autoreleasePoolPop(v9);
  return 0;
}

uint64_t bmstream_vtab_close(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1[1] close];
  v3 = a1[1];
  a1[1] = 0;

  sqlite3_free(a1);
  objc_autoreleasePoolPop(v2);
  return 0;
}

void OUTLINED_FUNCTION_23_2()
{
  *(v6 - 224) = v5;
  v7 = *(v6 - 328);
  v8 = *(v6 - 208);
  *(v6 - 512) = v0;
  *(v6 - 400) = v4;
  *(v6 - 488) = v2;
  *(v6 - 496) = v3;
  *(v6 - 504) = v1;
}

uint64_t OUTLINED_FUNCTION_18_0(sqlite3 *a1, const char *a2, uint64_t a3, uint64_t a4, sqlite3_stmt **a5)
{

  return sqlite3_prepare_v3(a1, a2, -1, 1u, a5, 0);
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  result = *(v0 - 256);
  v3 = *(v1 - 280);
  v4 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_1()
{
  v1 = **(v0 - 456);
  result = *(v0 - 256);
  v3 = *(v0 - 460);
  v4 = *(v0 - 336);
  return result;
}

id BMSQLDatabaseError(uint64_t a1, sqlite3 *a2, const char *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v8 = [v6 initWithFormat:@"BMSQLDatabase error (%@)", v7];

  v9 = sqlite3_errmsg(a2);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    [v8 appendFormat:@" %@.", v11];

    if (a3 && strcmp(v10, a3))
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    [v8 appendFormat:@" %@", v12];
  }

  v13 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E696A578];
  v14 = [v8 copy];
  v20[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = [v13 initWithDomain:@"BMSQLDatabaseErrorDomain" code:a1 userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t OUTLINED_FUNCTION_85()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return specialized Dictionary.subscript.getter(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  result = v1 + *(v0 + 40);
  v4 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  v0 = type metadata accessor for AggregationEvent(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_83_1()
{

  Hasher._combine(_:)(0);
}

void MAX.aggregationMetadata()()
{
  OUTLINED_FUNCTION_64();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for SQLDataType();
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v39 = v7;
  v40 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9();
  v38 = v10;
  v11 = *(v4 + 16);
  v12 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0(v37);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D29AA0;
  v25 = (v24 + v23);
  v26 = *(v4 + 48);
  v27 = (v2 + *(v4 + 44));
  v28 = v27[1];
  *v25 = *v27;
  v25[1] = v28;
  v29 = *(v14 + 16);
  v41 = v2;
  v29(v19, v2 + v26, v12);
  OUTLINED_FUNCTION_92(v19, 1, v11);
  if (v30)
  {
    v31 = *(v14 + 8);

    v31(v19, v12);
    v42 = 0u;
    v43 = 0u;
  }

  else
  {
    *(&v43 + 1) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
    (*(*(v11 - 8) + 32))(boxed_opaque_existential_0, v19, v11);
  }

  v33 = v38;
  v34 = *(v37 + 48);
  (*(v39 + 16))(v38, v41 + *(v4 + 40), v40);
  StorableValue.init(_:dataType:)(&v42, v33, (v25 + v34));
  if (v1)
  {
    v35 = v25[1];

    *(v24 + 16) = 0;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    type metadata accessor for StorableValue(0);
    Dictionary.init(dictionaryLiteral:)();
  }

  OUTLINED_FUNCTION_65();
}

{
  MAX.aggregationMetadata()();
}

uint64_t OUTLINED_FUNCTION_78_1()
{
  v4 = v1;
  v5 = *(v2 - 216);

  return outlined consume of Data?(v0, v4);
}

uint64_t StorableValue.init(_:dataType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v173 = a3;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12(v167);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_24();
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_29();
  v168 = v8;
  v9 = OUTLINED_FUNCTION_43();
  v172 = type metadata accessor for StorableValue(v9);
  v10 = OUTLINED_FUNCTION_12(v172);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v166 = v13;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v170 = v15;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v169 = v17;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51();
  v171 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_12(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v165 - v25;
  v27 = type metadata accessor for SQLDataType();
  v28 = OUTLINED_FUNCTION_2_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v33 = v32 - v31;
  v35 = *(v34 + 16);
  v175 = a2;
  v36 = a2;
  v37 = v34;
  v35(v32 - v31, v36, v27);
  v38 = *(v37 + 88);
  v174 = v27;
  v39 = v38(v33, v27);
  switch(v39)
  {
    case 0:
      outlined init with copy of Date?(a1, v177, &_sypSgMd, &_sypSgMR);
      v40 = v178;
      v41 = a1;
      if (!v178)
      {
        v65 = OUTLINED_FUNCTION_31();
        v66(v65);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v67, v68, v69);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v70, v71, v72);
        v46 = 0;
LABEL_60:
        v148 = v173;
        *v173 = v46;
        *(v148 + 8) = v40 == 0;
        return swift_storeEnumTagMultiPayload();
      }

      v42 = OUTLINED_FUNCTION_42();
      outlined init with take of Any(v42, v43);
      outlined init with copy of Any(v179, v177);
      type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      if (OUTLINED_FUNCTION_17())
      {
        v44 = v37;
        v45 = v176;
        v46 = [v176 longLongValue];

        (*(v44 + 8))(v175, v174);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        outlined destroy of UUID?(v41, &_sypSgMd, &_sypSgMR);
LABEL_59:
        __swift_destroy_boxed_opaque_existential_1Tm(v177);
        goto LABEL_60;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v73 = OUTLINED_FUNCTION_31();
        v74(v73);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
        v46 = v176;
        goto LABEL_59;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v99 = OUTLINED_FUNCTION_31();
        v100(v99);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
LABEL_58:
        outlined destroy of UUID?(v41, &_sypSgMd, &_sypSgMR);
        goto LABEL_59;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v114 = OUTLINED_FUNCTION_31();
        v115(v114);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v130 = OUTLINED_FUNCTION_31();
        v131(v130);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_17() || OUTLINED_FUNCTION_17())
      {
        goto LABEL_57;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v157 = OUTLINED_FUNCTION_31();
        v158(v157);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v161 = OUTLINED_FUNCTION_31();
        v162(v161);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_17())
      {
        v163 = OUTLINED_FUNCTION_31();
        v164(v163);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_17())
      {
LABEL_57:
        v146 = OUTLINED_FUNCTION_31();
        v147(v146);
        __swift_destroy_boxed_opaque_existential_1Tm(v179);
        v46 = v176;
        goto LABEL_58;
      }

LABEL_35:
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_53_0();
      outlined init with copy of Any(v179, v110);
      OUTLINED_FUNCTION_15();
      swift_willThrow();
      v111 = OUTLINED_FUNCTION_31();
      v112(v111);
      __swift_destroy_boxed_opaque_existential_1Tm(v179);
      outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
      return __swift_destroy_boxed_opaque_existential_1Tm(v177);
    case 1:
      v47 = a1;
      outlined init with copy of Date?(a1, v177, &_sypSgMd, &_sypSgMR);
      if (v178)
      {
        v48 = OUTLINED_FUNCTION_42();
        outlined init with take of Any(v48, v49);
        outlined init with copy of Any(v179, v177);
        type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        if (OUTLINED_FUNCTION_17())
        {
          v50 = v176;
          [v176 doubleValue];
          v52 = v51;

          v53 = OUTLINED_FUNCTION_31();
          v54(v53);
          __swift_destroy_boxed_opaque_existential_1Tm(v179);
          v55 = v52;
        }

        else
        {
          if (!OUTLINED_FUNCTION_17())
          {
            goto LABEL_35;
          }

          v97 = OUTLINED_FUNCTION_31();
          v98(v97);
          __swift_destroy_boxed_opaque_existential_1Tm(v179);
          v55 = v176;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v177);
        if ((~v55 & 0x7FF0000000000000) != 0)
        {
          outlined destroy of UUID?(v47, &_sypSgMd, &_sypSgMR);
          v96 = 0;
        }

        else
        {
          outlined destroy of UUID?(v47, &_sypSgMd, &_sypSgMR);
          v96 = (v55 & 0xFFFFFFFFFFFFFLL) != 0;
          if ((v55 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v55 = 0;
          }
        }
      }

      else
      {
        v88 = OUTLINED_FUNCTION_31();
        v89(v88);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v90, v91, v92);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v93, v94, v95);
        v55 = 0;
        v96 = 1;
      }

      v109 = v173;
      *v173 = v55;
      *(v109 + 8) = v96;
      return swift_storeEnumTagMultiPayload();
    case 2:
      v56 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v56, v57, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_42();
      if (swift_dynamicCast())
      {
        v58 = OUTLINED_FUNCTION_88();
        v59(v58);

        OUTLINED_FUNCTION_32();
        if (v60)
        {
          v61 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v61, v62);
          OUTLINED_FUNCTION_56();
          v64 = *(&v176 + 1);
          v63 = v176;
        }

        else
        {
          outlined destroy of UUID?(v177, &_sypSgMd, &_sypSgMR);
          v63 = 0;
          v64 = 0;
        }

        *v3 = v63;
        v3[1] = v64;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v129 = v3;
        return outlined init with take of StorableValue(v129, v173);
      }

      goto LABEL_43;
    case 3:
      v75 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v75, v76, &_sypSgMd, &_sypSgMR);
      v77 = OUTLINED_FUNCTION_50();
      __swift_instantiateConcreteTypeFromMangledNameV2(v77, v78);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_53_0();
        outlined init with copy of Date?(v33, v116, &_sypSgMd, &_sypSgMR);
        OUTLINED_FUNCTION_15();
        swift_willThrow();
        (*(v37 + 8))(v175, v174);
        return outlined destroy of UUID?(v33, &_sypSgMd, &_sypSgMR);
      }

      (*(v37 + 8))(v175, v174);
      outlined destroy of UUID?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_32();
      if (v79)
      {
        v80 = OUTLINED_FUNCTION_42();
        outlined init with take of Any(v80, v81);
        v82 = type metadata accessor for Date();
        v83 = v171;
        swift_dynamicCast();
        v84 = v83;
        v85 = 0;
        v86 = 1;
        v87 = v82;
      }

      else
      {
        outlined destroy of UUID?(v177, &_sypSgMd, &_sypSgMR);
        type metadata accessor for Date();
        v83 = v171;
        OUTLINED_FUNCTION_102();
      }

      __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
LABEL_71:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_15();
      v129 = v83;
      return outlined init with take of StorableValue(v129, v173);
    case 4:
      v101 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v101, v102, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_42();
      if (swift_dynamicCast())
      {
        v103 = OUTLINED_FUNCTION_88();
        v104(v103);
        outlined consume of Data?(v177[0], v177[1]);
        OUTLINED_FUNCTION_32();
        if (v105)
        {
          v106 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v106, v107);
          OUTLINED_FUNCTION_56();
          v108 = v176;
        }

        else
        {
          outlined destroy of UUID?(v177, &_sypSgMd, &_sypSgMR);
          v108 = xmmword_184D27CF0;
        }

        v83 = v170;
        *v170 = v108;
        goto LABEL_71;
      }

      goto LABEL_43;
    case 5:
      v117 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v117, v118, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_42();
      if (swift_dynamicCast())
      {
        v119 = OUTLINED_FUNCTION_88();
        v120(v119);

        OUTLINED_FUNCTION_32();
        if (v121)
        {
          v122 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v122, v123);
          OUTLINED_FUNCTION_56();
          v125 = *(&v176 + 1);
          v124 = v176;
        }

        else
        {
          outlined destroy of UUID?(v177, &_sypSgMd, &_sypSgMR);
          v124 = 0;
          v125 = 0;
        }

        v83 = v169;
        *v169 = v124;
        *(v83 + 1) = v125;
        goto LABEL_71;
      }

      goto LABEL_43;
    case 6:
      v132 = OUTLINED_FUNCTION_33();
      outlined init with copy of Date?(v132, v133, &_sypSgMd, &_sypSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v134 = v168;
      if (swift_dynamicCast())
      {
        v135 = OUTLINED_FUNCTION_31();
        v136(v135);
        outlined destroy of UUID?(v134, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_32();
        if (v137)
        {
          v138 = OUTLINED_FUNCTION_42();
          outlined init with take of Any(v138, v139);
          v140 = type metadata accessor for UUID();
          v141 = v166;
          swift_dynamicCast();
          v142 = v141;
          v143 = 0;
          v144 = 1;
          v145 = v140;
        }

        else
        {
          outlined destroy of UUID?(v177, &_sypSgMd, &_sypSgMR);
          type metadata accessor for UUID();
          v141 = v166;
          OUTLINED_FUNCTION_102();
        }

        __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v129 = v141;
        return outlined init with take of StorableValue(v129, v173);
      }

      goto LABEL_43;
  }

  if (v39 != 7)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63();
    v149 = v37;
    v151 = v150;
    v152 = v174;
    v150[3] = v174;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v150);
    v154 = v175;
    v35(boxed_opaque_existential_0Tm, v175, v152);
    *(v151 + 2) = 0u;
    *(v151 + 3) = 0u;
    *(v151 + 64) = 3;
    swift_willThrow();
    v155 = *(v149 + 8);
    v155(v154, v152);
    outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
    v156 = OUTLINED_FUNCTION_76();
    return (v155)(v156);
  }

  v33 = a1;
  if (*(a1 + 24))
  {
LABEL_43:
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_53_0();
    outlined init with copy of Date?(v33, v126, &_sypSgMd, &_sypSgMR);
    OUTLINED_FUNCTION_15();
    swift_willThrow();
    v127 = OUTLINED_FUNCTION_88();
    v128(v127);
    return outlined destroy of UUID?(v33, &_sypSgMd, &_sypSgMR);
  }

  v159 = OUTLINED_FUNCTION_31();
  v160(v159);
  outlined destroy of UUID?(a1, &_sypSgMd, &_sypSgMR);
  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_105()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_105_1()
{
}

uint64_t $defer #1 () in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for OSSignpostError();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = type metadata accessor for OSSignpostID();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  v21 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v6 + 88))(v11, v3) == *MEMORY[0x1E69E93E8])
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v11, v3);
      v23 = "";
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v21, v22, v25, a3, v23, v24, 2u);
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
  }

  return (*(v15 + 8))(v20, v12);
}

BOOL closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v141 = a7;
  v140 = a6;
  v156 = a5;
  v146 = a4;
  v147 = a3;
  v184 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v142 = &v139 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v160 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v139 - v16;
  v166 = type metadata accessor for SQLDataType();
  Description = v166[-1].Description;
  v19 = *(Description + 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StorableValue(0);
  v22 = *(v21 - 8);
  v172 = v21;
  v173 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v164 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v139 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v178 = &v139 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v139 - v31);
  v171 = type metadata accessor for SQLExpression();
  v144 = v171[-1].Description;
  v33 = *(v144 + 8);
  v34 = MEMORY[0x1EEE9AC00](v171);
  v139 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v158 = &v139 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v159 = &v139 - v38;
  v179 = type metadata accessor for ResultColumn();
  v175 = v179[-1].Description;
  v39 = *(v175 + 8);
  v40 = MEMORY[0x1EEE9AC00](v179);
  v157 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v143 = &v139 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v145 = &v139 - v44;
  v148 = objc_autoreleasePoolPush();
  v45 = [a2 schema];
  v46 = [v45 columns];

  type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMSQLColumn, off_1E6E51FA0);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v169 = specialized Array._getCount()(v47);
  v48 = 0;
  v49 = 0;
  v168 = (v47 & 0xC000000000000001);
  v170 = v47;
  v167 = v47 & 0xFFFFFFFFFFFFFF8;
  v155 = 2;
  v50 = (Description + 104);
  v154 = 0;
  v153 = 1;
  v152 = 3;
  v151 = 4;
  v150 = 6;
  v161 = 5;
  v149 = 7;
  v51 = MEMORY[0x1E69E7CC8];
  v174 = v28;
  v163 = v17;
  v162 = (Description + 104);
  while (v169 != v48)
  {
    if (v168)
    {
      v52 = MEMORY[0x1865F65C0](v48, v170);
    }

    else
    {
      if (v48 >= *(v167 + 16))
      {
        goto LABEL_71;
      }

      v52 = *(v170 + 8 * v48 + 32);
    }

    v53 = v52;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
    }

    v177 = v48;
    v54 = [v52 extractBlock];
    if (!v54)
    {
      goto LABEL_78;
    }

    v55 = v54;
    v180 = 0;
    v56 = v54[2];
    swift_unknownObjectRetain();
    if (v56(v55, a1, &v180))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _Block_release(v55);
      swift_unknownObjectRelease();
    }

    else
    {
      _Block_release(v55);
      swift_unknownObjectRelease();
      v181 = 0u;
      v182 = 0u;
    }

    v183[0] = v181;
    v183[1] = v182;
    if (v180)
    {
      v116 = v180;

      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v117 = swift_allocError();
      v119 = v118;
      v120 = [v53 name];
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      *v119 = v121;
      *(v119 + 8) = v123;
      *(v119 + 64) = 0;

      outlined destroy of UUID?(v183, &_sypSgMd, &_sypSgMR);
      v124 = *(v147 + 16);
      *(v147 + 16) = v117;

      v125 = 0;
      v126 = v148;
      goto LABEL_65;
    }

    outlined init with copy of Date?(v183, &v181, &_sypSgMd, &_sypSgMR);
    v57 = [v53 dataType];
    v58 = v161;
    switch(v57)
    {
      case 0uLL:
        v59 = v183 + 8;
        goto LABEL_20;
      case 1uLL:
        v59 = v183 + 4;
        goto LABEL_20;
      case 2uLL:
        v59 = v183 + 12;
        goto LABEL_20;
      case 3uLL:
        v59 = v183;
        goto LABEL_20;
      case 4uLL:
        v59 = &v182 + 12;
        goto LABEL_20;
      case 5uLL:
        goto LABEL_21;
      case 6uLL:
        v59 = &v182 + 8;
        goto LABEL_20;
      default:
        v59 = &v182 + 4;
LABEL_20:
        v58 = *(v59 - 64);
LABEL_21:
        v60 = v165;
        (*v50)(v165, v58, v166);
        StorableValue.init(_:dataType:)(&v181, v60, v32);
        if (v49)
        {
          outlined destroy of UUID?(v183, &_sypSgMd, &_sypSgMR);

          goto LABEL_63;
        }

        v176 = 0;
        outlined init with copy of StorableValue(v32, v178);
        v61 = v53;
        v62 = [v53 name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = String.lowercased()();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v181 = v51;
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63._countAndFlagsBits, v63._object);
        v67 = v51[2];
        v68 = (v66 & 1) == 0;
        v69 = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_73;
        }

        v70 = v65;
        v71 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v69))
        {
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v63._countAndFlagsBits, v63._object);
          if ((v71 & 1) != (v73 & 1))
          {
LABEL_79:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            JUMPOUT(0x184907114);
          }

          v70 = v72;
        }

        v51 = v181;
        if (v71)
        {
          v74 = *(v173 + 72) * v70;
          v75 = v163;
          outlined init with take of StorableValue(*(v181 + 56) + v74, v163);
          outlined init with take of StorableValue(v178, v51[7] + v74);
          __swift_storeEnumTagSinglePayload(v75, 0, 1, v172);
        }

        else
        {
          *(v181 + 8 * (v70 >> 6) + 64) |= 1 << v70;
          *(v51[6] + 16 * v70) = v63;
          outlined init with take of StorableValue(v178, v51[7] + *(v173 + 72) * v70);
          v76 = v51[2];
          v77 = __OFADD__(v76, 1);
          v78 = v76 + 1;
          if (v77)
          {
            goto LABEL_76;
          }

          v51[2] = v78;
          v75 = v163;
          __swift_storeEnumTagSinglePayload(v163, 1, 1, v172);
        }

        outlined destroy of UUID?(v75, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        outlined destroy of StorableValue(v32, type metadata accessor for StorableValue);
        outlined destroy of UUID?(v183, &_sypSgMd, &_sypSgMR);
        v49 = v176;
        v48 = v177 + 1;
        v28 = v174;
        v50 = v162;
        break;
    }
  }

  v79 = SelectCore.select.getter();
  v80 = 0;
  v170 = *(v79 + 16);
  v178 = v175 + 16;
  v176 = (v144 + 8);
  v168 = (v175 + 32);
  v177 = (v175 + 8);
  v169 = MEMORY[0x1E69E7CC0];
  v81 = v145;
  while (v170 != v80)
  {
    if (v80 >= *(v79 + 16))
    {
      goto LABEL_72;
    }

    v82 = (v175[80] + 32) & ~v175[80];
    v83 = *(v175 + 9);
    (*(v175 + 2))(v81, v79 + v82 + v83 * v80, v179);
    v84 = v81;
    ResultColumn.alias.getter();
    if (v85 && (, v86 = v159, ResultColumn.expression.getter(v159), v87 = SQLExpression.aggregationFunctions.getter(), (*v176)(v86, v171), v88 = *(v87 + 16), , !v88))
    {
      v167 = *v168;
      (v167)(v143, v84, v179);
      v89 = v169;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *&v183[0] = v89;
      if (v90)
      {
        v81 = v84;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1);
        v81 = v145;
        v89 = *&v183[0];
      }

      v92 = *(v89 + 16);
      v91 = *(v89 + 24);
      if (v92 >= v91 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1);
        v81 = v145;
        v89 = *&v183[0];
      }

      ++v80;
      *(v89 + 16) = v92 + 1;
      v169 = v89;
      (v167)(v89 + v82 + v92 * v83, v143, v179);
      v28 = v174;
    }

    else
    {
      (*v177)(v84, v179);
      ++v80;
      v81 = v84;
    }
  }

  v93 = 0;
  v94 = v169;
  v170 = *(v169 + 16);
  v95 = v51;
  v96 = v158;
  v97 = v157;
  while (1)
  {
    if (v170 == v93)
    {

      v127 = v142;
      SelectCore.where.getter(v142);
      v128 = v171;
      if (__swift_getEnumTagSinglePayload(v127, 1, v171) == 1)
      {
        outlined destroy of UUID?(v127, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        v126 = v148;
      }

      else
      {
        v136 = v139;
        (*(v144 + 4))(v139, v127, v128);
        v137 = SQLExpressionEvaluator.evaluatesToTrue(expression:payload:)(v136);
        v126 = v148;
        if (v49)
        {
          (*v176)(v136, v128);

          goto LABEL_64;
        }

        v138 = v137;
        (*v176)(v136, v128);
        if ((v138 & 1) == 0)
        {

          v125 = 1;
          goto LABEL_65;
        }
      }

      v129 = v140;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v130 = *(*(v129 + 16) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v130);
      v131 = *(v129 + 16);
      *(v131 + 16) = v130 + 1;
      v132 = v131 + 16 * v130;
      *(v132 + 32) = 0;
      *(v132 + 40) = v95;
      *(v129 + 16) = v131;
      v125 = v130 + 1 < v141;
      goto LABEL_65;
    }

    if (v93 >= *(v94 + 16))
    {
      goto LABEL_74;
    }

    (*(v175 + 2))(v97, v94 + ((v175[80] + 32) & ~v175[80]) + *(v175 + 9) * v93, v179);
    ResultColumn.expression.getter(v96);
    SQLExpressionEvaluator.execute(expression:payload:)(v28);
    if (v49)
    {
      break;
    }

    (*v176)(v96, v171);
    outlined init with copy of StorableValue(v28, v164);
    v98 = ResultColumn.name.getter();
    v100 = v99;
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *&v183[0] = v95;
    v102 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v100);
    v104 = v95[2];
    v105 = (v103 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      goto LABEL_75;
    }

    v107 = v102;
    v108 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v101, v106))
    {
      v109 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v100);
      if ((v108 & 1) != (v110 & 1))
      {
        goto LABEL_79;
      }

      v107 = v109;
    }

    v95 = *&v183[0];
    if (v108)
    {
      v111 = *(v173 + 72) * v107;
      v112 = v160;
      outlined init with take of StorableValue(*(*&v183[0] + 56) + v111, v160);
      outlined init with take of StorableValue(v164, v95[7] + v111);
      __swift_storeEnumTagSinglePayload(v112, 0, 1, v172);
    }

    else
    {
      *(*&v183[0] + 8 * (v107 >> 6) + 64) |= 1 << v107;
      v113 = (v95[6] + 16 * v107);
      *v113 = v98;
      v113[1] = v100;
      outlined init with take of StorableValue(v164, v95[7] + *(v173 + 72) * v107);
      v114 = v95[2];
      v77 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v77)
      {
        goto LABEL_77;
      }

      v95[2] = v115;
      v112 = v160;
      __swift_storeEnumTagSinglePayload(v160, 1, 1, v172);
    }

    outlined destroy of UUID?(v112, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    v28 = v174;
    outlined destroy of StorableValue(v174, type metadata accessor for StorableValue);
    v97 = v157;
    (*v177)(v157, v179);
    ++v93;
    v96 = v158;
    v94 = v169;
  }

  (*v176)(v96, v171);
  (*v177)(v97, v179);

LABEL_63:
  v126 = v148;
LABEL_64:
  v133 = *(v147 + 16);
  *(v147 + 16) = v49;

  v125 = 0;
LABEL_65:
  objc_autoreleasePoolPop(v126);
  v134 = *MEMORY[0x1E69E9840];
  return v125;
}

uint64_t StorableValue.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StorableValue(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_48();
  outlined init with copy of StorableValue(v9, v10);
  OUTLINED_FUNCTION_50();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = &enum case for SQLDataType.double(_:);
      goto LABEL_9;
    case 2u:
      v12 = &enum case for SQLDataType.date(_:);
      goto LABEL_11;
    case 3u:
      outlined destroy of StorableValue(v8, type metadata accessor for StorableValue);
      v11 = &enum case for SQLDataType.string(_:);
      goto LABEL_9;
    case 4u:
      outlined destroy of StorableValue(v8, type metadata accessor for StorableValue);
      v11 = &enum case for SQLDataType.json(_:);
      goto LABEL_9;
    case 5u:
      outlined destroy of StorableValue(v8, type metadata accessor for StorableValue);
      v11 = &enum case for SQLDataType.data(_:);
      goto LABEL_9;
    case 6u:
      v12 = &enum case for SQLDataType.uuid(_:);
LABEL_11:
      v17 = *v12;
      v18 = type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12(v18);
      (*(v19 + 104))(a1, v17);
      OUTLINED_FUNCTION_1_12();
      return outlined destroy of StorableValue(v8, v20);
    case 7u:
      v11 = &enum case for SQLDataType.null(_:);
      goto LABEL_9;
    default:
      v11 = &enum case for SQLDataType.integer(_:);
LABEL_9:
      v13 = *v11;
      v14 = type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12(v14);
      return (*(v15 + 104))(a1, v13);
  }
}

uint64_t closure #2 in recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v56 = a4;
  v52 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v53 = *(v58 - 8);
  v10 = *(v53 + 64);
  v11 = MEMORY[0x1EEE9AC00](v58);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - v14;
  v15 = type metadata accessor for SQLDataType();
  Description = v15[-1].Description;
  v16 = *(Description + 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StorableValue(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a6 + 16) && (v51 = a3, v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v24 & 1) != 0))
  {
    specialized Dictionary.subscript.getter(v22, v23, *(a6 + 36), 0, a6);

    StorableValue.dataType.getter(v18);
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType(&lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType, type metadata accessor for SQLDataType);
    v25 = v56;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = Description;
    (*(Description + 1))(v18, v15);
    if (v26)
    {
      outlined init with take of StorableValue(v22, v52);

      return a2;
    }

    else
    {
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      v46 = v45;
      v45[3] = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
      outlined init with copy of StorableValue(v22, boxed_opaque_existential_0);
      v46[7] = v15;
      v48 = __swift_allocate_boxed_opaque_existential_0(v46 + 4);
      v27[2](v48, v25, v15);
      *(v46 + 64) = 3;
      swift_willThrow();
      return outlined destroy of StorableValue(v22);
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v29 = swift_allocError();
    v31 = v30;
    v32 = v55;
    v33 = *(v55 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      v50 = v30;
      v51 = a6;
      v56 = v15;
      v52 = v29;
      v59 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
      v34 = v59;
      v35 = v32 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v55 = *(v53 + 72);
      v36 = (Description + 8);
      do
      {
        v37 = v57;
        outlined init with copy of (key: String, value: SQLDataType)(v35, v57, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with take of (key: String, value: SQLDataType)(v37, v13, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        v39 = *v13;
        v38 = *(v13 + 1);
        (*v36)(&v13[*(v58 + 48)], v56);
        v59 = v34;
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
          v34 = v59;
        }

        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v39;
        *(v42 + 40) = v38;
        v35 += v55;
        --v33;
      }

      while (v33);
      v31 = v50;
    }

    v44 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5(v43);
    *v31 = v34;
    *(v31 + 8) = v44;
    *(v31 + 64) = 7;
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type SQLError and conformance SQLError()
{
  result = lazy protocol witness table cache variable for type SQLError and conformance SQLError;
  if (!lazy protocol witness table cache variable for type SQLError and conformance SQLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLError and conformance SQLError);
  }

  return result;
}

uint64_t static BMPoirotSchematizerShim.poirotValueToObjcValue(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnumValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  v13 = type metadata accessor for AnyValue();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  outlined init with copy of AnyValue?(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v12, &_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    outlined init with take of AnyValue(v12, v19);
    outlined init with copy of AnyValue(v19, v17);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v21 = *v17;
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E7668];
        goto LABEL_14;
      case 2u:
        v21 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E7360];
        goto LABEL_14;
      case 3u:
        v21 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E76D8];
        goto LABEL_14;
      case 4u:
        v21 = *v17;
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E6448];
        goto LABEL_14;
      case 5u:
        v21 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E63B0];
        goto LABEL_14;
      case 6u:
        v22 = 0;
        LOBYTE(v21) = *v17;
        v23 = MEMORY[0x1E69E6370];
        goto LABEL_14;
      case 7u:
        (*(v5 + 32))(v8, v17, v4);
        v26 = 0;
        v27 = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        MEMORY[0x1865F6280](0xD000000000000016, 0x8000000184DDC610);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](0xD000000000000026, 0x8000000184DDC5E0);
        goto LABEL_18;
      case 8u:
        v21 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v12 = *(v17 + 1);
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E6158];
        goto LABEL_14;
      case 9u:
        v21 = *v17;
        LODWORD(a1) = *(v17 + 1);
        v12 = *(v17 + 1);
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E6969080];
        goto LABEL_14;
      case 0xAu:
        v24 = *v17;
        v26 = 0;
        v27 = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        MEMORY[0x1865F6280](0xD000000000000019, 0x8000000184DDC5C0);
        v25[1] = v24;
        type metadata accessor for SchematizedData();
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](0xD000000000000026, 0x8000000184DDC5E0);
LABEL_18:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x184907C6CLL);
      default:
        v21 = *v17;
        v22 = *v17 & 0xFFFFFF00;
        v23 = MEMORY[0x1E69E72F0];
LABEL_14:
        result = outlined destroy of AnyValue(v19);
        *a2 = v22 | v21;
        *(a2 + 4) = a1;
        *(a2 + 8) = v12;
        *(a2 + 24) = v23;
        break;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BookmarkCache.flush()()
{
  v1 = v0;
  v35 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for BookmarkCache(0);
  v3 = *(v0 + *(v2 + 20));
  if (v3)
  {
    v4 = v2;
    if (*(v0 + *(v2 + 24)) == 1)
    {
      v5 = objc_opt_self();
      v33 = 0;
      swift_unknownObjectRetain();
      v6 = [v5 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v33];
      v7 = v33;
      if (v6)
      {
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v9;

        v33 = MaterializedView.name.getter();
        v34 = v10;

        OUTLINED_FUNCTION_18_5();
        OUTLINED_FUNCTION_136_0();
        MEMORY[0x1865F6280]();

        v11 = v33;
        v12 = v34;
        v31 = *(v1 + *(v4 + 32));
        v33 = 0;
        v34 = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        MEMORY[0x1865F6280](0x204543414C504552, 0xED0000204F544E49);
        MEMORY[0x1865F6280](v11, v12);

        OUTLINED_FUNCTION_72_2();
        MEMORY[0x1865F6280](0xD000000000000029);
        v13 = v33;
        v14 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
        v15 = *(type metadata accessor for StorableValue(0) - 8);
        v16 = *(v15 + 72);
        v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_184D29A90;
        v19 = v18 + v17;
        *v19 = 1;
        *(v19 + 8) = 0;
        OUTLINED_FUNCTION_114();
        swift_storeEnumTagMultiPayload();
        v20 = (v19 + v16);
        *v20 = v8;
        v20[1] = v32;
        swift_storeEnumTagMultiPayload();
        v21 = OUTLINED_FUNCTION_77();
        outlined copy of Data._Representation(v21, v22);
        v23._countAndFlagsBits = v13;
        v23._object = v14;
        SQLExpressionEvaluator.execute(sql:bindingValues:)(v23, v18);
        if (v24)
        {
          swift_unknownObjectRelease();
          v25 = OUTLINED_FUNCTION_77();
          outlined consume of Data._Representation(v25, v26);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          swift_unknownObjectRelease();
          v28 = OUTLINED_FUNCTION_77();
          outlined consume of Data._Representation(v28, v29);
        }

        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
      }

      else
      {
        v27 = v7;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_unknownObjectRelease();
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryPlannerMetadata.storeMetadata()()
{
  BookmarkCache.flush()();
  if (!v0)
  {
    specialized KeyedQueryPlannerMetadataCache.flush()();
    specialized KeyedQueryPlannerMetadataCache.flush()();
  }
}

void specialized KeyedQueryPlannerMetadataCache.flush()()
{
  v266._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v268 = *(v266._countAndFlagsBits - 8);
  v2 = *(v268 + 64);
  v3 = MEMORY[0x1EEE9AC00](v266._countAndFlagsBits);
  v266._object = &v253 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v269 = (&v253 - v5);
  MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
  if (!*(v0 + MatchingRecordCache[12]))
  {
    return;
  }

  v7 = *(v0 + MatchingRecordCache[7]);
  if (!*(v7 + 16))
  {
    return;
  }

  v255 = MatchingRecordCache[7];
  v270 = v1;
  _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
  v257 = v8;
  v259 = MatchingRecordCache;
  v9 = MatchingRecordCache[13];
  v261 = v0;
  v264 = *(v0 + v9);
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  countAndFlagsBits = MEMORY[0x1E69E7CC8];
  v260 = MEMORY[0x1E69E7CC8];
  v262 = v7;
  v263 = v14;
  v265 = v7 + 64;
  if (v13)
  {
    while (1)
    {
LABEL_10:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v15 << 6);
      v20 = *(*(v7 + 48) + 8 * v19);
      v21 = (*(v7 + 56) + 24 * v19);
      LODWORD(v267) = *v21;
      v22 = *(v21 + 1);
      v23 = v21[16];

      swift_bridgeObjectRetain_n();
      if (v23)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v273._countAndFlagsBits = countAndFlagsBits;
        specialized __RawDictionaryStorage.find<A>(_:)(v20, v25, v26, v27, v28, v29, v30, v31, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266._countAndFlagsBits);
        v40 = v39;
        v41 = countAndFlagsBits[2];
        v42 = (v32 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_122;
        }

        v44 = v32;
        if (countAndFlagsBits[3] >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMR);
            _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native, v33, v34, v35, v36, v37, v38, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266._countAndFlagsBits);
          specialized __RawDictionaryStorage.find<A>(_:)(v20, v45, v46, v47, v48, v49, v50, v51, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266._countAndFlagsBits);
          if ((v44 & 1) != (v53 & 1))
          {
            goto LABEL_126;
          }

          v40 = v52;
        }

        v54 = v267;
        if (v44)
        {

          countAndFlagsBits = v273._countAndFlagsBits;
          v55 = *(v273._countAndFlagsBits + 56);
LABEL_19:
          v56 = v55 + 16 * v40;
          v57 = *(v56 + 8);
          *v56 = v54;
          *(v56 + 8) = v22;

          goto LABEL_22;
        }

        countAndFlagsBits = v273._countAndFlagsBits;
        *(v273._countAndFlagsBits + 8 * (v40 >> 6) + 64) |= 1 << v40;
        *(countAndFlagsBits[6] + 8 * v40) = v20;
        v58 = countAndFlagsBits[7] + 16 * v40;
        *v58 = v54;
        *(v58 + 8) = v22;

        v59 = countAndFlagsBits[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_123;
        }

        countAndFlagsBits[2] = v61;
      }

      else
      {
        v62 = countAndFlagsBits;
        v63 = v260;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v273._countAndFlagsBits = v63;
        specialized __RawDictionaryStorage.find<A>(_:)(v20, v65, v66, v67, v68, v69, v70, v71, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266._countAndFlagsBits);
        v40 = v79;
        v80 = *(v63 + 16);
        v81 = (v72 & 1) == 0;
        v82 = v80 + v81;
        if (__OFADD__(v80, v81))
        {
          goto LABEL_124;
        }

        v83 = v72;
        if (*(v63 + 24) >= v82)
        {
          if ((v64 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMR);
            _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, v64, v73, v74, v75, v76, v77, v78, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266._countAndFlagsBits);
          specialized __RawDictionaryStorage.find<A>(_:)(v20, v84, v85, v86, v87, v88, v89, v90, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266._countAndFlagsBits);
          if ((v83 & 1) != (v92 & 1))
          {
            goto LABEL_126;
          }

          v40 = v91;
        }

        countAndFlagsBits = v62;
        v54 = v267;
        if (v83)
        {

          v260 = v273._countAndFlagsBits;
          v55 = *(v273._countAndFlagsBits + 56);
          goto LABEL_19;
        }

        v93 = v273._countAndFlagsBits;
        *(v273._countAndFlagsBits + 8 * (v40 >> 6) + 64) |= 1 << v40;
        *(v93[6] + 8 * v40) = v20;
        v94 = v93[7] + 16 * v40;
        *v94 = v54;
        *(v94 + 8) = v22;

        v95 = v93[2];
        v60 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v60)
        {
          goto LABEL_125;
        }

        v260 = v93;
        v93[2] = v96;
      }

LABEL_22:
      v7 = v262;
      v14 = v263;
      v10 = v265;
      if (!v13)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  v97 = countAndFlagsBits[2];
  v258 = countAndFlagsBits;
  if (v97)
  {
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v99 = v98;
    static KeyedFirstMatchingRecordCache.columnNames(groupBySchema:payloadSchema:)();
    v101 = v100;
    v267 = v99;
    v102 = *(v99 + 16);
    v256 = v100;
    if (v102)
    {
      v265 = v102;
      v271 = 0;
      v272 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v273._countAndFlagsBits = 0x20455441445055;
      v273._object = 0xE700000000000000;
      v103 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
      v105 = v104;

      MEMORY[0x1865F6280](v103, v105);

      MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
      v106 = *(v101 + 16);
      v107 = MEMORY[0x1E69E7CC0];
      if (v106)
      {
        v274 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
        v108 = v274;
        v109 = (v101 + 40);
        do
        {
          v111 = *(v109 - 1);
          v110 = *v109;
          v271 = 34;
          v272 = 0xE100000000000000;

          MEMORY[0x1865F6280](v111, v110);
          MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

          v112 = v271;
          v113 = v272;
          v274 = v108;
          v115 = *(v108 + 16);
          v114 = *(v108 + 24);
          if (v115 >= v114 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v115 + 1, 1);
            v108 = v274;
          }

          *(v108 + 16) = v115 + 1;
          v116 = v108 + 16 * v115;
          *(v116 + 32) = v112;
          *(v116 + 40) = v113;
          v109 += 2;
          --v106;
        }

        while (v106);
        v107 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v108 = MEMORY[0x1E69E7CC0];
      }

      v271 = v108;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v136 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v254 = v135;
      v253 = v136;
      v137 = BidirectionalCollection<>.joined(separator:)();
      v139 = v138;

      MEMORY[0x1865F6280](v137, v139);

      MEMORY[0x1865F6280](0x282045524548570ALL, 0xED0000202020200ALL);
      v271 = v107;
      v140 = v265;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v265, 0);
      v141 = 0;
      v142 = v271;
      v263 = v267 + ((*(v268 + 80) + 32) & ~*(v268 + 80));
      v143 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd;
      while (v140 != v141)
      {
        if (v141 >= *(v267 + 16))
        {
          goto LABEL_121;
        }

        object = v266._object;
        outlined init with copy of Date?(v263 + *(v268 + 72) * v141, v266._object, v143, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v145 = *object;
        v146 = object[1];
        v147 = *(v266._countAndFlagsBits + 48);
        v148 = v270;
        closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
        v270 = v148;
        if (v148)
        {

          outlined destroy of (columnName: String, dataType: SQLDataType)(object, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);

          goto LABEL_59;
        }

        v151 = v149;
        v152 = v150;
        v153 = v143;
        outlined destroy of (columnName: String, dataType: SQLDataType)(object, v143, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v271 = v142;
        v155 = *(v142 + 16);
        v154 = *(v142 + 24);
        if (v155 >= v154 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v154 > 1, v155 + 1, 1);
          v142 = v271;
        }

        ++v141;
        *(v142 + 16) = v155 + 1;
        v156 = v142 + 16 * v155;
        *(v156 + 32) = v151;
        *(v156 + 40) = v152;
        v140 = v265;
        v143 = v153;
        if (v265 == v141)
        {
          v271 = v142;
          v157 = BidirectionalCollection<>.joined(separator:)();
          v159 = v158;

          MEMORY[0x1865F6280](v157, v159);

          MEMORY[0x1865F6280](10506, 0xE200000000000000);
          goto LABEL_61;
        }
      }

LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v273._countAndFlagsBits = 0;
    v273._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v273._countAndFlagsBits = 0x20455441445055;
    v273._object = 0xE700000000000000;
    v119 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
    v121 = v120;

    MEMORY[0x1865F6280](v119, v121);

    MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
    v122 = *(v101 + 16);
    v123 = MEMORY[0x1E69E7CC0];
    if (v122)
    {
      v274 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 0);
      v123 = v274;
      v124 = (v101 + 40);
      do
      {
        v126 = *(v124 - 1);
        v125 = *v124;
        v271 = 34;
        v272 = 0xE100000000000000;

        MEMORY[0x1865F6280](v126, v125);
        MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

        v128 = v271;
        v127 = v272;
        v274 = v123;
        v130 = *(v123 + 16);
        v129 = *(v123 + 24);
        if (v130 >= v129 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v129 > 1, v130 + 1, 1);
          v123 = v274;
        }

        *(v123 + 16) = v130 + 1;
        v131 = v123 + 16 * v130;
        *(v131 + 32) = v128;
        *(v131 + 40) = v127;
        v124 += 2;
        --v122;
      }

      while (v122);
    }

    v271 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v132 = BidirectionalCollection<>.joined(separator:)();
    v134 = v133;

    MEMORY[0x1865F6280](v132, v134);

LABEL_61:
    v266 = v273;
    v160 = v258;
    v161 = v258 + 8;
    v162 = 1 << *(v258 + 32);
    v163 = -1;
    if (v162 < 64)
    {
      v163 = ~(-1 << v162);
    }

    v164 = v163 & v258[8];
    v165 = (v162 + 63) >> 6;

    v166 = 0;
    if (v164)
    {
      while (1)
      {
        v167 = v166;
LABEL_68:
        v168 = __clz(__rbit64(v164)) | (v167 << 6);
        v169 = *(*(v160 + 48) + 8 * v168);
        v170 = (*(v160 + 56) + 16 * v168);
        v171 = *v170;
        v172 = *(v170 + 1);
        v173 = *(v261 + v259[11]);

        v174 = v171;
        v175 = v270;
        PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5(v169, v174, v172, v267, v264, v256);
        if (v175)
        {

          goto LABEL_60;
        }

        v177._rawValue = PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5;

        SQLExpressionEvaluator.execute(sql:bindingValues:)(v266, v177);
        v270 = v178;
        if (v178)
        {
          break;
        }

        v164 &= v164 - 1;

        v166 = v167;
        v160 = v258;
        if (!v164)
        {
          goto LABEL_65;
        }
      }

LABEL_59:

      goto LABEL_60;
    }

LABEL_65:
    while (1)
    {
      v167 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        break;
      }

      if (v167 >= v165)
      {

        v118 = v260;
        v117 = v261;
        v7 = v262;
        goto LABEL_73;
      }

      v164 = v161[v167];
      ++v166;
      if (v164)
      {
        goto LABEL_68;
      }
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v118 = v260;
  v117 = v261;
LABEL_73:
  v179 = v257;
  if (*(v118 + 16))
  {
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v267 = v180;
    static KeyedFirstMatchingRecordCache.columnNames(groupBySchema:payloadSchema:)();
    v182 = v181;
    v273._countAndFlagsBits = 0xD000000000000010;
    v273._object = 0x8000000184DDCE80;
    v183 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
    v185 = v184;

    MEMORY[0x1865F6280](v183, v185);

    MEMORY[0x1865F6280](10272, 0xE200000000000000);
    v186 = v182[2];
    v187 = MEMORY[0x1E69E7CC0];
    v266._object = v182;
    if (v186)
    {
      v274 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v186, 0);
      v187 = v274;
      v188 = v182 + 5;
      v189 = v186;
      do
      {
        v191 = *(v188 - 1);
        v190 = *v188;
        v271 = 34;
        v272 = 0xE100000000000000;

        MEMORY[0x1865F6280](v191, v190);
        MEMORY[0x1865F6280](34, 0xE100000000000000);

        v193 = v271;
        v192 = v272;
        v274 = v187;
        v195 = *(v187 + 16);
        v194 = *(v187 + 24);
        if (v195 >= v194 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v194 > 1, v195 + 1, 1);
          v187 = v274;
        }

        *(v187 + 16) = v195 + 1;
        v196 = v187 + 16 * v195;
        *(v196 + 32) = v193;
        *(v196 + 40) = v192;
        v188 += 2;
        --v189;
      }

      while (v189);
    }

    v271 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v197 = BidirectionalCollection<>.joined(separator:)();
    v199 = v198;

    MEMORY[0x1865F6280](v197, v199);

    MEMORY[0x1865F6280](0x4156202020200A29, 0xEF2028205345554CLL);
    v200 = MEMORY[0x1E69E7CC0];
    if (v186)
    {
      v271 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v186, 0);
      v200 = v271;
      v201 = *(v271 + 16);
      v202 = 16 * v201;
      do
      {
        v271 = v200;
        v203 = *(v200 + 24);
        v204 = v201 + 1;
        if (v201 >= v203 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v203 > 1, v201 + 1, 1);
          v200 = v271;
        }

        *(v200 + 16) = v204;
        v205 = v200 + v202;
        *(v205 + 32) = 63;
        *(v205 + 40) = 0xE100000000000000;
        v202 += 16;
        v201 = v204;
        --v186;
      }

      while (v186);
    }

    v271 = v200;
    v206 = BidirectionalCollection<>.joined(separator:)();
    v208 = v207;

    MEMORY[0x1865F6280](v206, v208);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    v265 = v273._countAndFlagsBits;
    v266._countAndFlagsBits = v273._object;
    v209 = v260 + 8;
    v210 = 1 << *(v260 + 32);
    v211 = -1;
    if (v210 < 64)
    {
      v211 = ~(-1 << v210);
    }

    v212 = v211 & v260[8];
    v213 = (v210 + 63) >> 6;

    v214 = 0;
    if (v212)
    {
      while (1)
      {
        v215 = v214;
LABEL_91:
        v216 = __clz(__rbit64(v212)) | (v215 << 6);
        v217 = *(v260[6] + 8 * v216);
        v218 = (v260[7] + 16 * v216);
        v219 = *v218;
        v220 = *(v218 + 1);
        v221 = *(v261 + v259[11]);

        v222 = v219;
        v223 = v270;
        PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5(v217, v222, v220, v267, v264, v266._object);
        if (v223)
        {
          break;
        }

        v225._rawValue = PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5;

        v226._countAndFlagsBits = v265;
        v226._object = v266._countAndFlagsBits;
        SQLExpressionEvaluator.execute(sql:bindingValues:)(v226, v225);
        v270 = v227;
        if (v227)
        {
          break;
        }

        v212 &= v212 - 1;

        v214 = v215;
        if (!v212)
        {
          goto LABEL_88;
        }
      }

LABEL_60:

      return;
    }

LABEL_88:
    while (1)
    {
      v215 = v214 + 1;
      if (__OFADD__(v214, 1))
      {
        goto LABEL_118;
      }

      if (v215 >= v213)
      {

        v117 = v261;
        v7 = v262;
        v179 = v257;
        break;
      }

      v212 = v209[v215];
      ++v214;
      if (v212)
      {
        goto LABEL_91;
      }
    }
  }

  if (*(v179 + 16))
  {
    v228 = *(v117 + v259[11]);
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v230 = v229;

    v231 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
    v233 = v232;

    v273._countAndFlagsBits = v231;
    v273._object = v233;

    MEMORY[0x1865F6280](0x7865646E695FLL, 0xE600000000000000);
    v234 = v273._countAndFlagsBits;
    v235 = v273._object;
    v273._countAndFlagsBits = 0xD000000000000022;
    v273._object = 0x8000000184DDCE50;
    MEMORY[0x1865F6280](v234, v235);
    v236 = v230;

    MEMORY[0x1865F6280](542002976, 0xE400000000000000);
    MEMORY[0x1865F6280](v231, v233);

    MEMORY[0x1865F6280](2107424, 0xE300000000000000);
    v237 = v230[2];
    if (v237)
    {
      v267 = v228;
      v274 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v237, 0);
      v238 = v274;
      v239 = *(v268 + 80);
      v266._object = v236;
      v240 = v236 + ((v239 + 32) & ~v239);
      v268 = *(v268 + 72);
      do
      {
        v241 = v269;
        outlined init with copy of Date?(v240, v269, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v271 = 34;
        v272 = 0xE100000000000000;
        MEMORY[0x1865F6280](*v241, v241[1]);
        MEMORY[0x1865F6280](34, 0xE100000000000000);
        v243 = v271;
        v242 = v272;
        outlined destroy of (columnName: String, dataType: SQLDataType)(v241, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v274 = v238;
        v245 = *(v238 + 16);
        v244 = *(v238 + 24);
        if (v245 >= v244 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v244 > 1, v245 + 1, 1);
          v238 = v274;
        }

        *(v238 + 16) = v245 + 1;
        v246 = v238 + 16 * v245;
        *(v246 + 32) = v243;
        *(v246 + 40) = v242;
        v240 += v268;
        --v237;
      }

      while (v237);

      v117 = v261;
    }

    else
    {

      v238 = MEMORY[0x1E69E7CC0];
    }

    v271 = v238;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v247 = BidirectionalCollection<>.joined(separator:)();
    v249 = v248;

    MEMORY[0x1865F6280](v247, v249);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    SQLExpressionEvaluator.execute(sql:bindingValues:)(v273, MEMORY[0x1E69E7CC0]);
    if (v250)
    {

      return;
    }

    v7 = v262;
  }

  else
  {
  }

  v251 = v259[14];
  if (*(v117 + v251) == 1)
  {
    v252 = *(v7 + 16);

    if (v252)
    {
      *(v117 + v251) = 0;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventt_GMd, &_sSD8_VariantVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventt_GMR);
  Dictionary._Variant.removeAll(keepingCapacity:)(1);
}

{
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v260 = *(v258 - 1);
  v2 = *(v260 + 64);
  v3 = MEMORY[0x1EEE9AC00](v258);
  v5 = &v246 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v261 = (&v246 - v6);
  v7 = type metadata accessor for KeyedAggregationMetadataCache(0);
  if (!*(v0 + v7[12]))
  {
    return;
  }

  v256._object = v5;
  v8 = *(v0 + v7[7]);
  if (!*(v8 + 16))
  {
    return;
  }

  v248 = v7[7];
  v263 = v1;
  _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
  v250 = v9;
  v251 = v7;
  v10 = v7[13];
  v253 = v0;
  v255 = *(v0 + v10);
  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v18 = MEMORY[0x1E69E7CC8];
  v252 = v8;
  v259 = v8 + 64;
  v256._countAndFlagsBits = v15;
LABEL_6:
  v257 = v17;
  while (1)
  {
    v262 = v18;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v16 << 6);
    v22 = *(v8 + 56);
    v23 = *(*(v8 + 48) + 8 * v21);
    v24 = (v22 + 16 * v21);
    v25 = *v24;
    v26 = *(v24 + 8);

    swift_bridgeObjectRetain_n();
    if ((v26 & 1) == 0)
    {
      v62 = v257;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v266._countAndFlagsBits = v62;
      specialized __RawDictionaryStorage.find<A>(_:)(v23, v64, v65, v66, v67, v68, v69, v70, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256._countAndFlagsBits, v256._object, v257, v258);
      v79 = v78;
      v80 = *(v62 + 16);
      v81 = (v71 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_127;
      }

      v83 = v71;
      if (*(v62 + 24) >= v82)
      {
        v18 = v262;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMR);
          _NativeDictionary.copy()();
          goto LABEL_29;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, isUniquelyReferenced_nonNull_native, v72, v73, v74, v75, v76, v77, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256._countAndFlagsBits, v256._object, v257, v258);
        specialized __RawDictionaryStorage.find<A>(_:)(v23, v84, v85, v86, v87, v88, v89, v90, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256._countAndFlagsBits, v256._object, v257, v258);
        if ((v83 & 1) != (v92 & 1))
        {
          goto LABEL_129;
        }

        v79 = v91;
LABEL_29:
        v18 = v262;
      }

      if (v83)
      {

        countAndFlagsBits = v266._countAndFlagsBits;
        v94 = *(v266._countAndFlagsBits + 56);
        v95 = *(v94 + 8 * v79);
        *(v94 + 8 * v79) = v25;
        v17 = countAndFlagsBits;
      }

      else
      {
        v96 = v266._countAndFlagsBits;
        *(v266._countAndFlagsBits + 8 * (v79 >> 6) + 64) |= 1 << v79;
        *(*(v96 + 48) + 8 * v79) = v23;
        *(*(v96 + 56) + 8 * v79) = v25;
        v17 = v96;

        v97 = *(v17 + 16);
        v60 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v60)
        {
          goto LABEL_128;
        }

        *(v17 + 16) = v98;
      }

      v8 = v252;
      v11 = v259;
      v15 = v256._countAndFlagsBits;
      goto LABEL_6;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v266._countAndFlagsBits = v18;
    specialized __RawDictionaryStorage.find<A>(_:)(v23, v28, v29, v30, v31, v32, v33, v34, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256._countAndFlagsBits, v256._object, v257, v258);
    v43 = v42;
    v44 = v262[2];
    v45 = (v35 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v47 = v35;
    if (v262[3] >= v46)
    {
      if (v27)
      {
        if (v35)
        {
          goto LABEL_20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMR);
        _NativeDictionary.copy()();
        if (v47)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, v27, v36, v37, v38, v39, v40, v41, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256._countAndFlagsBits, v256._object, v257, v258);
      specialized __RawDictionaryStorage.find<A>(_:)(v23, v48, v49, v50, v51, v52, v53, v54, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256._countAndFlagsBits, v256._object, v257, v258);
      if ((v47 & 1) != (v56 & 1))
      {
        goto LABEL_129;
      }

      v43 = v55;
      if (v47)
      {
LABEL_20:

        v18 = v266._countAndFlagsBits;
        v57 = *(v266._countAndFlagsBits + 56);
        v58 = *(v57 + 8 * v43);
        *(v57 + 8 * v43) = v25;

        goto LABEL_24;
      }
    }

    v18 = v266._countAndFlagsBits;
    *(v266._countAndFlagsBits + 8 * (v43 >> 6) + 64) |= 1 << v43;
    *(v18[6] + 8 * v43) = v23;
    *(v18[7] + 8 * v43) = v25;

    v59 = v18[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_126;
    }

    v18[2] = v61;
LABEL_24:
    v17 = v257;
    v8 = v252;
    v11 = v259;
    v15 = v256._countAndFlagsBits;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_12;
    }
  }

  if (v18[2])
  {
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v100 = v99;
    static KeyedAggregationMetadataCache.columnNames(groupBySchema:payloadSchema:)();
    v102 = v101;
    v259 = v100;
    v103 = *(v100 + 16);
    v249 = v101;
    if (v103)
    {
      v256._countAndFlagsBits = v103;
      v264 = 0;
      v265 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v266._countAndFlagsBits = 0x20455441445055;
      v266._object = 0xE700000000000000;
      v104 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
      v106 = v105;

      MEMORY[0x1865F6280](v104, v106);

      MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
      v107 = *(v102 + 16);
      v108 = MEMORY[0x1E69E7CC0];
      if (v107)
      {
        v267 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107, 0);
        v109 = v267;
        v110 = (v102 + 40);
        do
        {
          v112 = *(v110 - 1);
          v111 = *v110;
          v264 = 34;
          v265 = 0xE100000000000000;

          MEMORY[0x1865F6280](v112, v111);
          MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

          v113 = v264;
          v114 = v265;
          v267 = v109;
          v116 = *(v109 + 16);
          v115 = *(v109 + 24);
          if (v116 >= v115 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v115 > 1, v116 + 1, 1);
            v109 = v267;
          }

          *(v109 + 16) = v116 + 1;
          v117 = v109 + 16 * v116;
          *(v117 + 32) = v113;
          *(v117 + 40) = v114;
          v110 += 2;
          --v107;
        }

        while (v107);
        v108 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v109 = MEMORY[0x1E69E7CC0];
      }

      v264 = v109;
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v137 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v247 = v136;
      v246 = v137;
      v138 = BidirectionalCollection<>.joined(separator:)();
      v140 = v139;

      MEMORY[0x1865F6280](v138, v140);

      MEMORY[0x1865F6280](0x282045524548570ALL, 0xED0000202020200ALL);
      v264 = v108;
      v141 = v256._countAndFlagsBits;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256._countAndFlagsBits, 0);
      v142 = 0;
      v143 = v264;
      v254 = v259 + ((*(v260 + 80) + 32) & ~*(v260 + 80));
      v144 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd;
      while (v141 != v142)
      {
        if (v142 >= *(v259 + 16))
        {
          goto LABEL_124;
        }

        object = v256._object;
        outlined init with copy of Date?(v254 + *(v260 + 72) * v142, v256._object, v144, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v146 = *object;
        v147 = object[1];
        v148 = v258[12];
        v149 = v263;
        closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
        v263 = v149;
        if (v149)
        {

          outlined destroy of (columnName: String, dataType: SQLDataType)(object, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);

          goto LABEL_62;
        }

        v152 = v150;
        v153 = v151;
        v154 = v144;
        outlined destroy of (columnName: String, dataType: SQLDataType)(object, v144, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v264 = v143;
        v156 = *(v143 + 16);
        v155 = *(v143 + 24);
        if (v156 >= v155 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v155 > 1, v156 + 1, 1);
          v143 = v264;
        }

        ++v142;
        *(v143 + 16) = v156 + 1;
        v157 = v143 + 16 * v156;
        *(v157 + 32) = v152;
        *(v157 + 40) = v153;
        v141 = v256._countAndFlagsBits;
        v144 = v154;
        if (v256._countAndFlagsBits == v142)
        {
          v264 = v143;
          v158 = BidirectionalCollection<>.joined(separator:)();
          v160 = v159;

          MEMORY[0x1865F6280](v158, v160);

          MEMORY[0x1865F6280](10506, 0xE200000000000000);
          goto LABEL_64;
        }
      }

      goto LABEL_123;
    }

    v266._countAndFlagsBits = 0;
    v266._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v266._countAndFlagsBits = 0x20455441445055;
    v266._object = 0xE700000000000000;
    v120 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    v122 = v121;

    MEMORY[0x1865F6280](v120, v122);

    MEMORY[0x1865F6280](0x2020200A5445530ALL, 0xE900000000000020);
    v123 = *(v102 + 16);
    v124 = MEMORY[0x1E69E7CC0];
    if (v123)
    {
      v267 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
      v124 = v267;
      v125 = (v102 + 40);
      do
      {
        v127 = *(v125 - 1);
        v126 = *v125;
        v264 = 34;
        v265 = 0xE100000000000000;

        MEMORY[0x1865F6280](v127, v126);
        MEMORY[0x1865F6280](0x3F203D2022, 0xE500000000000000);

        v129 = v264;
        v128 = v265;
        v267 = v124;
        v131 = *(v124 + 16);
        v130 = *(v124 + 24);
        if (v131 >= v130 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v130 > 1, v131 + 1, 1);
          v124 = v267;
        }

        *(v124 + 16) = v131 + 1;
        v132 = v124 + 16 * v131;
        *(v132 + 32) = v129;
        *(v132 + 40) = v128;
        v125 += 2;
        --v123;
      }

      while (v123);
    }

    v264 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v133 = BidirectionalCollection<>.joined(separator:)();
    v135 = v134;

    MEMORY[0x1865F6280](v133, v135);

LABEL_64:
    v256._object = v266._countAndFlagsBits;
    v258 = v266._object;
    v161 = v262;
    v162 = v262 + 8;
    v163 = 1 << *(v262 + 32);
    v164 = -1;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    v165 = v164 & v262[8];
    v166 = (v163 + 63) >> 6;

    v167 = 0;
    if (v165)
    {
      while (1)
      {
        v168 = v167;
LABEL_71:
        v169 = (v168 << 9) | (8 * __clz(__rbit64(v165)));
        v170 = *(v161[6] + v169);
        v171 = *(v161[7] + v169);
        v172 = *(v253 + v251[11]);

        v173 = v263;
        PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5(v170, v171, v259, v255, v249);
        if (v173)
        {

          goto LABEL_63;
        }

        v175._rawValue = PlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5;

        v176._countAndFlagsBits = v256._object;
        v176._object = v258;
        SQLExpressionEvaluator.execute(sql:bindingValues:)(v176, v175);
        v263 = v177;
        if (v177)
        {
          break;
        }

        v165 &= v165 - 1;

        v167 = v168;
        v161 = v262;
        if (!v165)
        {
          goto LABEL_68;
        }
      }

LABEL_62:

LABEL_63:

      return;
    }

LABEL_68:
    while (1)
    {
      v168 = v167 + 1;
      if (__OFADD__(v167, 1))
      {
        break;
      }

      if (v168 >= v166)
      {

        v118 = v263;
        v8 = v252;
        v119 = v253;
        v17 = v257;
        goto LABEL_76;
      }

      v165 = v162[v168];
      ++v167;
      if (v165)
      {
        goto LABEL_71;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v118 = v263;
  v119 = v253;
LABEL_76:
  if (*(v17 + 16))
  {
    v263 = v118;
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v259 = v178;
    static KeyedAggregationMetadataCache.columnNames(groupBySchema:payloadSchema:)();
    v180 = v179;
    v266._countAndFlagsBits = 0xD000000000000010;
    v266._object = 0x8000000184DDCE80;
    v181 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    v183 = v182;

    MEMORY[0x1865F6280](v181, v183);

    MEMORY[0x1865F6280](10272, 0xE200000000000000);
    v184 = *(v180 + 2);
    v185 = MEMORY[0x1E69E7CC0];
    v258 = v180;
    if (v184)
    {
      v267 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v184, 0);
      v185 = v267;
      v186 = (v180 + 10);
      v187 = v184;
      do
      {
        v189 = *(v186 - 1);
        v188 = *v186;
        v264 = 34;
        v265 = 0xE100000000000000;

        MEMORY[0x1865F6280](v189, v188);
        MEMORY[0x1865F6280](34, 0xE100000000000000);

        v191 = v264;
        v190 = v265;
        v267 = v185;
        v193 = *(v185 + 16);
        v192 = *(v185 + 24);
        if (v193 >= v192 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v192 > 1, v193 + 1, 1);
          v185 = v267;
        }

        *(v185 + 16) = v193 + 1;
        v194 = v185 + 16 * v193;
        *(v194 + 32) = v191;
        *(v194 + 40) = v190;
        v186 += 2;
        --v187;
      }

      while (v187);
    }

    v264 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v195 = BidirectionalCollection<>.joined(separator:)();
    v197 = v196;

    MEMORY[0x1865F6280](v195, v197);

    MEMORY[0x1865F6280](0x4156202020200A29, 0xEF2028205345554CLL);
    v198 = MEMORY[0x1E69E7CC0];
    if (v184)
    {
      v264 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v184, 0);
      v198 = v264;
      v199 = *(v264 + 16);
      v200 = 16 * v199;
      do
      {
        v264 = v198;
        v201 = *(v198 + 24);
        v202 = v199 + 1;
        if (v199 >= v201 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v201 > 1, v199 + 1, 1);
          v198 = v264;
        }

        *(v198 + 16) = v202;
        v203 = v198 + v200;
        *(v203 + 32) = 63;
        *(v203 + 40) = 0xE100000000000000;
        v200 += 16;
        v199 = v202;
        --v184;
      }

      while (v184);
    }

    v264 = v198;
    v204 = BidirectionalCollection<>.joined(separator:)();
    v206 = v205;

    MEMORY[0x1865F6280](v204, v206);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    v256 = v266;
    v207 = v257 + 64;
    v208 = 1 << *(v257 + 32);
    v209 = -1;
    if (v208 < 64)
    {
      v209 = ~(-1 << v208);
    }

    v210 = v209 & *(v257 + 64);
    v211 = (v208 + 63) >> 6;

    for (i = 0; ; i = v213)
    {
      v118 = v263;
      if (!v210)
      {
        break;
      }

      v213 = i;
LABEL_95:
      v214 = (v213 << 9) | (8 * __clz(__rbit64(v210)));
      v215 = *(*(v257 + 48) + v214);
      v216 = *(*(v257 + 56) + v214);
      v217 = *(v253 + v251[11]);

      PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5 = _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5(v215, v216, v259, v255, v258);
      if (v118 || (v219._rawValue = PlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5, , SQLExpressionEvaluator.execute(sql:bindingValues:)(v256, v219), (v263 = v220) != 0))
      {

        goto LABEL_63;
      }

      v210 &= v210 - 1;
    }

    while (1)
    {
      v213 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_121;
      }

      if (v213 >= v211)
      {

        v8 = v252;
        v119 = v253;
        break;
      }

      v210 = *(v207 + 8 * v213);
      ++i;
      if (v210)
      {
        goto LABEL_95;
      }
    }
  }

  if (*(v250 + 16))
  {
    v221 = *(v119 + v251[11]);
    MaterializedView.name.getter();
    specialized _arrayForceCast<A, B>(_:)();
    v223 = v222;

    v224 = static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    v226 = v225;

    v266._countAndFlagsBits = v224;
    v266._object = v226;

    MEMORY[0x1865F6280](0x7865646E695FLL, 0xE600000000000000);
    v227 = v266._countAndFlagsBits;
    v228 = v266._object;
    v266._countAndFlagsBits = 0xD000000000000022;
    v266._object = 0x8000000184DDCE50;
    MEMORY[0x1865F6280](v227, v228);
    v229 = v223;

    MEMORY[0x1865F6280](542002976, 0xE400000000000000);
    MEMORY[0x1865F6280](v224, v226);

    MEMORY[0x1865F6280](2107424, 0xE300000000000000);
    v230 = *(v223 + 16);
    if (v230)
    {
      v259 = v221;
      v263 = v118;
      v267 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v230, 0);
      v231 = v267;
      v232 = *(v260 + 80);
      v258 = v229;
      v233 = v229 + ((v232 + 32) & ~v232);
      v260 = *(v260 + 72);
      do
      {
        v234 = v261;
        outlined init with copy of Date?(v233, v261, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v264 = 34;
        v265 = 0xE100000000000000;
        MEMORY[0x1865F6280](*v234, v234[1]);
        MEMORY[0x1865F6280](34, 0xE100000000000000);
        v236 = v264;
        v235 = v265;
        outlined destroy of (columnName: String, dataType: SQLDataType)(v234, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        v267 = v231;
        v238 = *(v231 + 16);
        v237 = *(v231 + 24);
        if (v238 >= v237 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v237 > 1, v238 + 1, 1);
          v231 = v267;
        }

        *(v231 + 16) = v238 + 1;
        v239 = v231 + 16 * v238;
        *(v239 + 32) = v236;
        *(v239 + 40) = v235;
        v233 += v260;
        --v230;
      }

      while (v230);
    }

    else
    {

      v231 = MEMORY[0x1E69E7CC0];
    }

    v264 = v231;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v240 = BidirectionalCollection<>.joined(separator:)();
    v242 = v241;

    MEMORY[0x1865F6280](v240, v242);

    MEMORY[0x1865F6280](10528, 0xE200000000000000);
    SQLExpressionEvaluator.execute(sql:bindingValues:)(v266, MEMORY[0x1E69E7CC0]);
    if (v243)
    {

      return;
    }

    v8 = v252;
  }

  else
  {
  }

  v244 = v251[14];
  if (*(v253 + v244) == 1)
  {
    v245 = *(v8 + 16);

    if (v245)
    {
      *(v253 + v244) = 0;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventt_GMd, &_sSD8_VariantVySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventt_GMR);
  Dictionary._Variant.removeAll(keepingCapacity:)(1);
}

uint64_t SQLExpressionEvaluator.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sqlite3_finalize(*(*(v2 + 56) + ((v9 << 9) | (8 * v10))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_14;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  sqlite3_finalize(*(v1 + 40));
  if (*(v1 + 16) != 1)
  {
    goto LABEL_18;
  }

  v11 = sqlite3_close_v2(*(v1 + 24));
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = BMSQLDatabaseError(v11, *(v1 + 24), 0);
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = v14;

  v38[0] = v13;
  v38[1] = v15;
  OUTLINED_FUNCTION_1();
  v37 = v16;
  OUTLINED_FUNCTION_2_7();
  v35 = v17;
  v36 = v18;
  v19 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_14_1(v19, v20, v21, v22, v23, v24, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6158], v19, v19, v19, v35, v36, v37);
  OUTLINED_FUNCTION_3_10();
  v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v3 = v26;

  if (one-time initialization token for SQL != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logging.SQL);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v30 = 136315138;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v3, v38);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_1848EE000, v28, v29, "SQLExpressionEvaluator: Failed to close database connection with error: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1865F7B70](v31, -1, -1);
    MEMORY[0x1865F7B70](v30, -1, -1);
  }

  else
  {
  }

LABEL_18:
  v33 = *(v1 + 32);

  return v1;
}

uint64_t QueryPlannerMetadata.deinit()
{
  v1 = OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_materializedView;
  v2 = type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_5_7(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_32_4();
  _s12BiomeStreams13StorableValueOWOhTm_1();
  OUTLINED_FUNCTION_31_5();
  _s12BiomeStreams13StorableValueOWOhTm_1();
  _s12BiomeStreams13StorableValueOWOhTm_1();
  return v0;
}

uint64_t QueryPlannerMetadata.__deallocating_deinit()
{
  QueryPlannerMetadata.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 OUTLINED_FUNCTION_32()
{
  result = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = result;
  v3 = *(v1 - 136);
  return result;
}

void OUTLINED_FUNCTION_32_0()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 240);
  v4 = *(v0 - 184);
  v3 = *(v0 - 176);
}

size_t OUTLINED_FUNCTION_32_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14BiomeSQLParser19AggregationFunctionV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

uint64_t SelectCorePhysicalPlan.update(metadata:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_29();
  v238 = v7;
  OUTLINED_FUNCTION_43();
  v252 = type metadata accessor for SQLExpression();
  v8 = OUTLINED_FUNCTION_2_1(v252);
  v228 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v250 = v13 - v12;
  v14 = OUTLINED_FUNCTION_43();
  v254 = type metadata accessor for StorableValue(v14);
  v15 = OUTLINED_FUNCTION_2_1(v254);
  v246 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  v237 = v19;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v245 = v21;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v257 = v23;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51();
  v249 = v25;
  OUTLINED_FUNCTION_43();
  v248 = type metadata accessor for ResultColumn();
  v26 = OUTLINED_FUNCTION_2_1(v248);
  v251 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_94(v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_29();
  v230 = v36;
  OUTLINED_FUNCTION_43();
  v244 = type metadata accessor for SelectCore();
  v37 = OUTLINED_FUNCTION_2_1(v244);
  v235 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59(&v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = objc_autoreleasePoolPush();
  v41 = type metadata accessor for SelectCorePhysicalPlan(0);
  v42 = v41[5];
  v43 = *(v1 + v41[6]);
  v44 = v41[8];
  v236 = *(v1 + v41[7]);
  v253 = *(v1 + v44);
  OUTLINED_FUNCTION_93();
  v242 = swift_allocObject();
  v242[2] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_93();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = v45;
  v255 = [v43 publisher];
  v47 = &a1[OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_bookmark];
  v240 = *&v47[*(type metadata accessor for BookmarkCache(0) + 20)];
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = v46;
  v256 = v46;
  v48[4] = a1;
  v264 = partial apply for closure #1 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:);
  v265 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v261 = 1107296256;
  v239 = &v262;
  v262 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ();
  v263 = &block_descriptor;
  v241 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v49 = v43;
  v234 = v49;

  v229 = a1;

  v50 = v235;
  v51 = v235[2];
  v232 = v1;
  v231 = v42;
  v52 = v243;
  v53 = v244;
  v51(v243, v1 + v42, v244);
  v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v55 = (v40 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v256;
  *(v57 + 16) = v49;
  *(v57 + 24) = v58;
  (*(v50 + 32))(v57 + v54, v52, v53);
  *(v57 + v55) = v253;
  OUTLINED_FUNCTION_101();
  v59 = v242;
  *(v57 + v56) = v242;
  *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;
  v264 = partial apply for closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:);
  v265 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v261 = 1107296256;
  v262 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v263 = &block_descriptor_36;
  v61 = _Block_copy(&aBlock);
  v62 = v234;
  v63 = v256;

  v64 = v59;

  v65 = v255;
  v66 = v241;
  v67 = [v255 drivableSinkWithBookmark:v240 completion:v241 shouldContinue:v61];
  _Block_release(v61);
  _Block_release(v66);

  swift_unknownObjectRelease();
  v68 = v63[2];
  if (v68)
  {
    v69 = v63[2];
    swift_willThrow();
    v70 = v68;

LABEL_88:
    objc_autoreleasePoolPop(v233);
    return v64;
  }

  v71 = v258;
  v72 = v59[2];

  v73 = v72[2];
  v74 = v232;
  v75 = v231;
  v76 = SelectCore.groupBy.getter();
  v227 = v73;
  if (!v76)
  {
    v88 = MEMORY[0x1E69E7CC0];
    v89 = v228;
    goto LABEL_51;
  }

  v77 = v76;
  v235 = v72;
  v78 = selectAndHavingAggregateFunctions(selectCore:)(v74 + v75);
  v256 = SelectCore.select.getter();
  v79 = v230;
  SelectCore.having.getter(v230);
  aBlock = v77;

  specialized MutableCollection<>.sort(by:)(&aBlock);
  p_aBlock = v71;
  if (!v71)
  {

    v81 = aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS12BiomeStreams13StorableValueOGMd, &_sSDySS12BiomeStreams13StorableValueOGMR);
    lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
    OUTLINED_FUNCTION_73();
    v82 = Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_73();
    v83 = Dictionary.init(dictionaryLiteral:)();
    MEMORY[0x1EEE9AC00](v83);
    v226[2] = v81;
    v226[3] = v253;
    v226[4] = v229;
    v226[5] = v78;
    v226[6] = v79;
    v226[7] = v256;
    v85 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CD0], v82, v84, partial apply for closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:), v226, v235);
    v258 = 0;
    v90 = v86;
    v241 = v87;
    v234 = v85;

    v91 = *(v90 + 16);
    v240 = v90;
    if (v91)
    {
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_105();
      p_aBlock = v240;
      v92 = aBlock;
      v93 = specialized Dictionary.startIndex.getter(v240);
      v96 = v93;
      v97 = 0;
      v98 = p_aBlock + 8;
      v239 = p_aBlock + 9;
      v242 = v91;
      v243 = p_aBlock + 8;
      if ((v93 & 0x8000000000000000) == 0)
      {
        while (v96 < 1 << *(p_aBlock + 32))
        {
          if ((v98[v96 >> 6] & (1 << v96)) == 0)
          {
            goto LABEL_96;
          }

          if (*(p_aBlock + 9) != v94)
          {
            goto LABEL_97;
          }

          OUTLINED_FUNCTION_103(v93, v94, v95);
          v100 = *(v99 + 8 * v96);
          aBlock = v92;
          v102 = v92[2];
          v101 = v92[3];

          if (v102 >= v101 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v101 > 1, v102 + 1, 1);
            p_aBlock = v240;
            v92 = aBlock;
          }

          v92[2] = v102 + 1;
          v103 = &v92[2 * v102];
          *(v103 + 32) = 1;
          v103[5] = v100;
          v104 = 1 << *(p_aBlock + 32);
          if (v96 >= v104)
          {
            goto LABEL_98;
          }

          v98 = v243;
          v105 = v243[v96 >> 6];
          if ((v105 & (1 << v96)) == 0)
          {
            goto LABEL_99;
          }

          if (*(p_aBlock + 9) != v255)
          {
            goto LABEL_100;
          }

          v256 = v92;
          v106 = v105 & (-2 << (v96 & 0x3F));
          if (v106)
          {
            v104 = __clz(__rbit64(v106)) | v96 & 0x7FFFFFFFFFFFFFC0;
            v88 = MEMORY[0x1E69E7CC0];
            v107 = v242;
          }

          else
          {
            OUTLINED_FUNCTION_54();
            v88 = MEMORY[0x1E69E7CC0];
            v107 = v242;
            while (v110 < v109)
            {
              v113 = *v111++;
              v112 = v113;
              p_aBlock += 8;
              ++v110;
              if (v113)
              {
                v93 = outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v96, v108, v244 & 1);
                v104 = p_aBlock + __clz(__rbit64(v112));
                goto LABEL_24;
              }
            }

            v93 = outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v96, v108, v244 & 1);
LABEL_24:
            p_aBlock = v240;
          }

          if (++v97 == v107)
          {
            goto LABEL_29;
          }

          v95 = 0;
          v94 = *(p_aBlock + 9);
          v96 = v104;
          v92 = v256;
          if (v104 < 0)
          {
            break;
          }
        }
      }

LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v256 = MEMORY[0x1E69E7CC0];
    v88 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v114 = v241[2];
    v115 = MEMORY[0x1E69E7CC0];
    if (v114)
    {
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_105();
      p_aBlock = v241;
      v116 = aBlock;
      v119 = specialized Dictionary.startIndex.getter(v241);
      v115 = v116;
      v120 = 0;
      v121 = p_aBlock + 8;
      v239 = p_aBlock + 9;
      v242 = v114;
      v243 = p_aBlock + 8;
      if ((v119 & 0x8000000000000000) == 0)
      {
        while (v119 < 1 << *(p_aBlock + 32))
        {
          if ((v121[v119 >> 6] & (1 << v119)) == 0)
          {
            goto LABEL_102;
          }

          if (*(p_aBlock + 9) != v117)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_103(v115, v117, v118);
          v123 = *(v122 + 8 * v119);
          aBlock = v124;
          v126 = v124[2];
          v125 = v124[3];
          v127 = v124;

          v115 = v127;
          if (v126 >= v125 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v125 > 1, v126 + 1, 1);
            p_aBlock = v241;
            v115 = aBlock;
          }

          *(v115 + 16) = v126 + 1;
          v128 = v115 + 16 * v126;
          *(v128 + 32) = 0;
          *(v128 + 40) = v123;
          v129 = 1 << *(p_aBlock + 32);
          if (v119 >= v129)
          {
            goto LABEL_104;
          }

          v121 = v243;
          v130 = v243[v119 >> 6];
          if ((v130 & (1 << v119)) == 0)
          {
            goto LABEL_105;
          }

          if (*(p_aBlock + 9) != v255)
          {
            goto LABEL_106;
          }

          v131 = v130 & (-2 << (v119 & 0x3F));
          if (v131)
          {
            v129 = __clz(__rbit64(v131)) | v119 & 0x7FFFFFFFFFFFFFC0;
            v88 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            OUTLINED_FUNCTION_54();
            v88 = MEMORY[0x1E69E7CC0];
            while (v135 < v134)
            {
              v138 = *v136++;
              v137 = v138;
              p_aBlock += 8;
              ++v135;
              if (v138)
              {
                v139 = v132;
                outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v119, v133, v244 & 1);
                v115 = v139;
                v129 = p_aBlock + __clz(__rbit64(v137));
                goto LABEL_46;
              }
            }

            v140 = v132;
            outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v119, v133, v244 & 1);
            v115 = v140;
LABEL_46:
            p_aBlock = v241;
          }

          if (++v120 == v242)
          {
            goto LABEL_50;
          }

          v118 = 0;
          v117 = *(p_aBlock + 9);
          v119 = v129;
          if (v129 < 0)
          {
            break;
          }
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_111;
    }

LABEL_50:
    aBlock = v256;
    specialized Array.append<A>(contentsOf:)(v115);

    v72 = aBlock;
    outlined destroy of UUID?(v230, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v89 = v228;
LABEL_51:
    v141 = SelectCore.select.getter();
    v142 = v72[2];
    if (!v142)
    {

      v64 = MEMORY[0x1E69E7CC0];
LABEL_91:
      OUTLINED_FUNCTION_101();
      objc_autoreleasePoolPop(v233);
      return v64;
    }

    aBlock = v88;
    p_aBlock = &aBlock;
    v230 = v142;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142, 0);
    v143 = 0;
    v234 = aBlock;
    v144 = (v72 + 4);
    v241 = (v251 + 16);
    v240 = (v251 + 8);
    v242 = (v89 + 8);
    v243 = *(v141 + 16);
    v235 = v72;
    v239 = v141;
    v229 = (v72 + 4);
    while (v143 < v72[2])
    {
      v232 = v143 + 1;
      v145 = &v144[16 * v143];
      LODWORD(v231) = *v145;
      p_aBlock = *(v145 + 1);
      swift_bridgeObjectRetain_n();
      v146 = Dictionary.init(dictionaryLiteral:)();
      v147 = 0;
      v244 = p_aBlock;
      v148 = p_aBlock;
      while (v243 != v147)
      {
        if (v147 >= *(v141 + 16))
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v255 = v147;
        v256 = v146;
        v149 = v251;
        v150 = v247;
        v151 = v248;
        (*(v251 + 16))(v247, v141 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v147, v248);
        v152 = ResultColumn.name.getter();
        v154 = v153;
        ResultColumn.expression.getter(v250);
        (*(v149 + 8))(v150, v151);
        v155 = v249;
        v64 = v253;
        v156 = v258;
        SQLExpressionEvaluator.execute(expression:payload:)(v249);
        v258 = v156;
        if (v156)
        {

          v222 = *v242;
          v223 = OUTLINED_FUNCTION_58();
          v224(v223);

          goto LABEL_88;
        }

        v157 = *v242;
        v158 = OUTLINED_FUNCTION_58();
        v159(v158);
        OUTLINED_FUNCTION_0_15();
        outlined init with take of StorableValue(v155, v257);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v259 = v148;
        v161 = v154;
        p_aBlock = v148;
        v162 = specialized __RawDictionaryStorage.find<A>(_:)(v152, v154);
        v164 = v148[2];
        v165 = (v163 & 1) == 0;
        v166 = v164 + v165;
        if (__OFADD__(v164, v165))
        {
          goto LABEL_93;
        }

        v167 = v162;
        v168 = v163;
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        p_aBlock = &v259;
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v166))
        {
          p_aBlock = v259;
          v170 = specialized __RawDictionaryStorage.find<A>(_:)(v152, v161);
          v146 = v256;
          if ((v168 & 1) != (v171 & 1))
          {
            goto LABEL_110;
          }

          v167 = v170;
          v172 = v246;
        }

        else
        {
          v172 = v246;
          v146 = v256;
        }

        v256 = v169;
        v148 = v259;
        if (v168)
        {
          v173 = *(v172 + 72);
          outlined assign with take of StorableValue(v257, v259[7] + v173 * v167);
          v174 = v148[2];
          v175 = v161;
        }

        else
        {
          OUTLINED_FUNCTION_75(&v259[v167 >> 6]);
          v176 = (v148[6] + 16 * v167);
          *v176 = v152;
          v176[1] = v161;
          v175 = v161;
          v177 = v148[7];
          v173 = *(v178 + 72);
          OUTLINED_FUNCTION_0_15();
          outlined init with take of StorableValue(v257, v179);
          v180 = v148[2];
          v174 = v180 + 1;
          if (__OFADD__(v180, 1))
          {
            goto LABEL_94;
          }

          v148[2] = v174;
        }

        v181 = v245;
        if (v174 && (v182 = OUTLINED_FUNCTION_74(), v184 = specialized __RawDictionaryStorage.find<A>(_:)(v182, v183), (v185 & 1) != 0))
        {
          v186 = v173;
          outlined init with copy of StorableValue(v148[7] + v173 * v184, v181);
          OUTLINED_FUNCTION_0_15();
          outlined init with take of StorableValue(v181, v237);
          p_aBlock = v146;
          v187 = swift_isUniquelyReferenced_nonNull_native();
          v259 = p_aBlock;
          v188 = OUTLINED_FUNCTION_74();
          v190 = specialized __RawDictionaryStorage.find<A>(_:)(v188, v189);
          v192 = v191;
          v193 = p_aBlock[2];
          v194 = (v191 & 1) == 0;
          if (__OFADD__(v193, v194))
          {
            goto LABEL_107;
          }

          v195 = v190;
          p_aBlock = &v259;
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v187, v193 + v194))
          {
            p_aBlock = v259;
            v196 = OUTLINED_FUNCTION_74();
            v198 = specialized __RawDictionaryStorage.find<A>(_:)(v196, v197);
            if ((v192 & 1) != (v199 & 1))
            {
              goto LABEL_110;
            }

            v195 = v198;
          }

          v146 = v259;
          if (v192)
          {
            outlined assign with take of StorableValue(v237, v259[7] + v195 * v186);
          }

          else
          {
            OUTLINED_FUNCTION_75(&v259[v195 >> 6]);
            v212 = (v146[6] + 16 * v195);
            *v212 = v152;
            v212[1] = v175;
            v213 = v146[7];
            OUTLINED_FUNCTION_0_15();
            outlined init with take of StorableValue(v237, v214);
            v215 = v146[2];
            v216 = __OFADD__(v215, 1);
            v217 = v215 + 1;
            if (v216)
            {
              goto LABEL_108;
            }

            v146[2] = v217;
          }

          v211 = v255;
        }

        else
        {
          v200 = OUTLINED_FUNCTION_74();
          v202 = specialized __RawDictionaryStorage.find<A>(_:)(v200, v201);
          if (v203)
          {
            v204 = v202;
            v205 = swift_isUniquelyReferenced_nonNull_native();
            v259 = v146;
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v205, v146[3]);
            v146 = v259;
            v206 = *(v259[6] + 2 * v204 + 1);

            v207 = v146[7];
            OUTLINED_FUNCTION_0_15();
            p_aBlock = v238;
            outlined init with take of StorableValue(v208, v238);
            v209 = v254;
            _NativeDictionary._delete(at:)();
            v210 = 0;
          }

          else
          {
            v210 = 1;
            p_aBlock = v238;
            v209 = v254;
          }

          v211 = v255;
          __swift_storeEnumTagSinglePayload(p_aBlock, v210, 1, v209);

          outlined destroy of UUID?(p_aBlock, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        }

        v141 = v239;
        v147 = (v211 + 1);
      }

      v218 = v234;
      aBlock = v234;
      v220 = v234[2];
      v219 = v234[3];
      if (v220 >= v219 >> 1)
      {
        p_aBlock = &aBlock;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v219 > 1, v220 + 1, 1);
        v218 = aBlock;
      }

      v218[2] = v220 + 1;
      v234 = v218;
      v221 = &v218[2 * v220];
      *(v221 + 32) = v231;
      v221[5] = v146;
      v143 = v232;
      v72 = v235;
      v144 = v229;
      if (v232 == v230)
      {

        v64 = v234;
        goto LABEL_91;
      }
    }

    goto LABEL_109;
  }

LABEL_111:

  __break(1u);
  return result;
}

uint64_t sub_18490ACC0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_93();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_18490ACF4()
{
  OUTLINED_FUNCTION_93();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18490AD28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18490AD70()
{
  v1 = type metadata accessor for SelectCore();
  OUTLINED_FUNCTION_2_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  v11 = *(v0 + v8);

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

void *DBViewWriter.init(database:tableName:schema:createTableSQL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v236 = a6;
  v237 = a3;
  v232 = a5;
  v259 = a4;
  v234 = a2;
  v255 = a7;
  v263 = type metadata accessor for SQLRawDataType();
  v9 = OUTLINED_FUNCTION_2_1(v263);
  v231 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9();
  v252 = v13;
  v261 = type metadata accessor for SQLDataType();
  v14 = OUTLINED_FUNCTION_2_1(v261);
  v245 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9();
  v251 = v18;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v19 = OUTLINED_FUNCTION_2_1(v250);
  v253 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v254 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v258 = &v222[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
  v28 = OUTLINED_FUNCTION_2_1(v27);
  v256 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14();
  v34 = (v32 - v33);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v222[-v37];
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v222[-v40];
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v222[-v42];
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v44 = SQLExpressionEvaluator.init(db:)(a1);
  if (v7)
  {
  }

  v248 = v38;
  v257 = v34;
  v262 = v27;
  v264 = v41;
  v260 = a1;
  v228 = v44;
  v46 = v237;

  v47 = specialized _copyCollectionToContiguousArray<A>(_:)(v259);

  v268[0] = v47;
  specialized MutableCollection<>.sort(by:)(v268);
  v226 = 0;
  v48 = v46;
  v49 = v268[0];
  v50 = *(v268[0] + 16);
  v51 = MEMORY[0x1E69E7CC0];
  v53 = v255;
  v52 = v256;
  v249 = v268[0];
  v54 = v260;
  v55 = v254;
  if (v50)
  {
    v268[0] = MEMORY[0x1E69E7CC0];
    v52 = &enum case for SQLRawDataType.REAL(_:);

    v241 = v50;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v56 = 0;
    v51 = v268[0];
    v57 = *(v253 + 80);
    OUTLINED_FUNCTION_19_0();
    v244 = v49 + v59;
    v246 = (v245 + 2);
    v243 = (v245 + 11);
    v242 = 0;
    v238 = 1;
    v233 = 2;
    v230 = 3;
    v227 = 4;
    v225 = 5;
    v224 = 6;
    v223 = 7;
    v240 = (v231 + 104);
    LODWORD(v247) = 0;
    ++v245;
    v229 = 3;
    v235 = 2;
    v239 = 1;
    while (v56 < *(v49 + 16))
    {
      v259 = v51;
      v60 = v258;
      outlined init with copy of (key: String, value: SQLDataType)(v244 + *(v58 + 72) * v56, v258, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v61 = *(v262 + 48);
      outlined init with copy of (key: String, value: SQLDataType)(v60, v55, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v62 = *v55;
      v63 = v55[1];
      v64 = v251;
      v53 = *(v250 + 48);
      *v43 = v62;
      *(v43 + 1) = v63;
      v52 = *v246;
      v65 = &v53[v60];
      v66 = v261;
      (*v246)(v64, v65, v261);
      v67 = (*v243)(v64, v66);
      v68 = v247;
      if (v67 != v242)
      {
        v68 = v239;
        if (v67 != v238)
        {
          v68 = v235;
          if (v67 != v233)
          {
            v68 = v239;
            if (v67 != v230)
            {
              v68 = v229;
              if (v67 != v227)
              {
                v68 = v235;
                if (v67 != v225)
                {
                  v68 = v229;
                  if (v67 != v224)
                  {
                    v68 = v247;
                    if (v67 != v223)
                    {
                      goto LABEL_65;
                    }
                  }
                }
              }
            }
          }
        }
      }

      outlined destroy of UUID?(v258, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      (*v240)(&v43[v61], v68, v263);
      v55 = v254;
      (*v245)(&v53[v254], v261);
      v51 = v259;
      v268[0] = v259;
      v70 = *(v259 + 16);
      v69 = *(v259 + 24);
      if (v70 >= v69 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v69);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v74, v75);
        v51 = v268[0];
      }

      ++v56;
      *(v51 + 16) = v70 + 1;
      v52 = v256;
      v71 = *(v256 + 80);
      OUTLINED_FUNCTION_19_0();
      outlined init with take of (key: String, value: SQLDataType)(v43, v51 + v72 + *(v52 + 9) * v70, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v53 = v255;
      v49 = v249;
      v54 = v260;
      v58 = v253;
      if (v241 == v56)
      {

        v76 = v237;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_65:

    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    v217 = v216;
    v218 = v261;
    v216[3] = v261;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v216);
    v220 = v258;
    (v52)(boxed_opaque_existential_0, &v53[v258], v218);
    *(v217 + 2) = 0u;
    *(v217 + 3) = 0u;
    *(v217 + 64) = 3;
    swift_willThrow();
    outlined destroy of UUID?(v220, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    v221 = *v245;
    (*v245)(v251, v218);
    v221(&v53[v254], v218);
  }

  v76 = v48;
LABEL_20:
  v77 = MEMORY[0x1E69E7CC0];
  v261 = *(v51 + 16);
  v78 = v231;
  v259 = v51;
  if (v261)
  {
    v267[0] = MEMORY[0x1E69E7CC0];
    v79 = OUTLINED_FUNCTION_10_5();
    v81 = v80;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v79, v80, v82);
    v77 = v267[0];
    v83 = *(v52 + 80);
    OUTLINED_FUNCTION_19_0();
    v84 = v52;
    v86 = v51 + v85;
    v258 = *(v84 + 9);
    v254 = (v78 + 8);
    v87 = v264;
    do
    {
      outlined init with copy of (key: String, value: SQLDataType)(v86, v87, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v268[0] = 34;
      v268[1] = 0xE100000000000000;
      MEMORY[0x1865F6280](*v87, v87[1]);
      MEMORY[0x1865F6280](8226, 0xE200000000000000);
      v88 = v248;
      outlined init with copy of (key: String, value: SQLDataType)(v264, v248, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v89 = *(v88 + 8);

      v90 = *(v262 + 48);
      v91 = SQLRawDataType.rawValue.getter();
      v93 = v92;
      (*v254)(v88 + v90, v263);
      MEMORY[0x1865F6280](v91, v93);
      v87 = v264;

      v94 = v268[0];
      v95 = v268[1];
      outlined destroy of UUID?(v87, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v267[0] = v77;
      v97 = *(v77 + 16);
      v96 = *(v77 + 24);
      if (v97 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v96);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v99, v100, v101);
        v87 = v264;
        v77 = v267[0];
      }

      *(v77 + 16) = v97 + 1;
      v98 = v77 + 16 * v97;
      *(v98 + 32) = v94;
      *(v98 + 40) = v95;
      v86 += v258;
      --v81;
    }

    while (v81);
    v76 = v237;
    v53 = v255;
    v54 = v260;
  }

  v268[0] = v77;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v246 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v247 = v102;
  v103 = BidirectionalCollection<>.joined(separator:)();
  v105 = v104;

  if (v236)
  {

    v106 = v232;
    v107 = v234;
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    _StringGuts.grow(_:)(43);

    v268[0] = 0xD00000000000001BLL;
    v268[1] = 0x8000000184DDC1D0;
    v107 = v234;
    MEMORY[0x1865F6280](v234, v76);
    MEMORY[0x1865F6280](2107424, 0xE300000000000000);
    MEMORY[0x1865F6280](v103, v105);

    MEMORY[0x1865F6280](0x4349525453202920, 0xE900000000000054);
    v106 = v268[0];
    v236 = v268[1];
  }

  v108 = v256;
  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(31);

  strcpy(v268, "INSERT INTO ");
  BYTE5(v268[1]) = 0;
  HIWORD(v268[1]) = -5120;
  MEMORY[0x1865F6280](v107, v76);
  MEMORY[0x1865F6280](10272, 0xE200000000000000);
  v232 = v106;
  if (v261)
  {
    v265 = MEMORY[0x1E69E7CC0];
    v109 = OUTLINED_FUNCTION_10_5();
    v111 = v110;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v110, v112);
    v113 = v264;
    v114 = v265;
    v115 = *(v108 + 80);
    OUTLINED_FUNCTION_19_0();
    v116 = v108;
    v118 = v259 + v117;
    v258 = *(v116 + 72);
    do
    {
      outlined init with copy of (key: String, value: SQLDataType)(v118, v113, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      OUTLINED_FUNCTION_7_6();
      MEMORY[0x1865F6280](34, 0xE100000000000000);
      v113 = v264;
      v120 = v267[0];
      v119 = v267[1];
      outlined destroy of UUID?(v264, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v265 = v114;
      v122 = *(v114 + 16);
      v121 = *(v114 + 24);
      if (v122 >= v121 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v121);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v124, v125, v126);
        v113 = v264;
        v114 = v265;
      }

      *(v114 + 16) = v122 + 1;
      v123 = v114 + 16 * v122;
      *(v123 + 32) = v120;
      *(v123 + 40) = v119;
      v118 += v258;
      --v111;
    }

    while (v111);
    OUTLINED_FUNCTION_3_13();
    v127 = BidirectionalCollection<>.joined(separator:)();
    v129 = v128;

    MEMORY[0x1865F6280](v127, v129);

    OUTLINED_FUNCTION_6_4();
    v267[0] = MEMORY[0x1E69E7CC0];
    v130 = v261;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v261, 0);
    v131 = v267[0];
    v132 = *(v267[0] + 16);
    v133 = 16 * v132;
    v54 = v260;
    do
    {
      v267[0] = v131;
      v134 = *(v131 + 24);
      v135 = v132 + 1;
      if (v132 >= v134 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v134 > 1, v132 + 1, 1);
        v131 = v267[0];
      }

      *(v131 + 16) = v135;
      v136 = v131 + v133;
      *(v136 + 32) = 63;
      *(v136 + 40) = 0xE100000000000000;
      v133 += 16;
      v132 = v135;
      v130 = (v130 - 1);
    }

    while (v130);
    v76 = v237;
    v53 = v255;
  }

  else
  {
    v137 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_13();
    v258 = BidirectionalCollection<>.joined(separator:)();
    v139 = v138;

    MEMORY[0x1865F6280](v258, v139);

    OUTLINED_FUNCTION_6_4();
    v131 = v137;
  }

  v267[0] = v131;
  v140 = BidirectionalCollection<>.joined(separator:)();
  v142 = v141;

  MEMORY[0x1865F6280](v140, v142);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
  v244 = v268[0];
  v245 = v268[1];
  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(70);
  MEMORY[0x1865F6280](0x46204554454C4544, 0xEC000000204D4F52);
  v143 = v234;
  MEMORY[0x1865F6280](v234, v76);
  MEMORY[0x1865F6280](0xD000000000000022, 0x8000000184DDC1F0);
  MEMORY[0x1865F6280](v143, v76);
  MEMORY[0x1865F6280](0x2820455245485720, 0xE800000000000000);
  v144 = MEMORY[0x1E69E7CC0];
  v145 = v256;
  if (v261)
  {
    v269 = MEMORY[0x1E69E7CC0];
    v146 = OUTLINED_FUNCTION_10_5();
    v148 = v147;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v146, v147, v149);
    v150 = *(v145 + 80);
    OUTLINED_FUNCTION_19_0();
    v152 = v259 + v151;
    v258 = v231 + 104;
    v144 = v269;
    v253 = *(v145 + 72);
    v254 = (v231 + 8);
    v251 = "SELECT rowid FROM ";
    LODWORD(v250) = 1;
    v248 = "    CREATE INDEX IF NOT EXISTS ";
    v153 = v148;
    v154 = v262;
    while (1)
    {
      outlined init with copy of (key: String, value: SQLDataType)(v152, v257, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v155 = *(v154 + 48);
      (*v258)(v252, v250, v263);
      lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType(&lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType, type metadata accessor for SQLRawDataType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v267[0] == v265 && v267[1] == v266)
      {
        break;
      }

      v157 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v158 = OUTLINED_FUNCTION_13_3();
      v159(v158);

      if (v157)
      {
        goto LABEL_49;
      }

      v267[0] = 0;
      v267[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v267[0] = 8744;
      v267[1] = 0xE200000000000000;
      v160 = v257;
      v161 = *v257;
      v162 = v257[1];
      OUTLINED_FUNCTION_8_6();
      v163 = 0x524F203F203D2022;
      v164 = 0xEB00000000222820;
LABEL_50:
      MEMORY[0x1865F6280](v163, v164);
      OUTLINED_FUNCTION_8_6();
      MEMORY[0x1865F6280](0xD000000000000019, v251 | 0x8000000000000000);
      v169 = v267[0];
      v170 = v267[1];
      outlined destroy of UUID?(v160, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v269 = v144;
      v172 = *(v144 + 16);
      v171 = *(v144 + 24);
      v154 = v262;
      if (v172 >= v171 >> 1)
      {
        v174 = OUTLINED_FUNCTION_4_9(v171);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v174, v172 + 1, 1);
        v154 = v262;
        v144 = v269;
      }

      *(v144 + 16) = v172 + 1;
      v173 = v144 + 16 * v172;
      *(v173 + 32) = v169;
      *(v173 + 40) = v170;
      v152 += v253;
      --v153;
      v54 = v260;
      if (!v153)
      {
        v76 = v237;
        v53 = v255;
        goto LABEL_54;
      }
    }

    v165 = OUTLINED_FUNCTION_13_3();
    v166(v165);

LABEL_49:
    v267[0] = 0;
    v267[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1865F6280](0x222873626128, 0xE600000000000000);
    v160 = v257;
    v167 = *v257;
    v168 = v257[1];
    OUTLINED_FUNCTION_8_6();
    v163 = 0xD000000000000016;
    v164 = v248 | 0x8000000000000000;
    goto LABEL_50;
  }

LABEL_54:
  v267[0] = v144;
  v175 = BidirectionalCollection<>.joined(separator:)();
  v177 = v176;

  MEMORY[0x1865F6280](v175, v177);

  MEMORY[0x1865F6280](0x2054494D494C2029, 0xEA00000000002931);
  v258 = v268[0];
  v262 = v268[1];
  v178 = v234;
  v268[0] = v234;
  v268[1] = v76;

  MEMORY[0x1865F6280](0x7865646E695FLL, 0xE600000000000000);
  v179 = v268[0];
  v180 = v268[1];
  OUTLINED_FUNCTION_9_6();
  _StringGuts.grow(_:)(46);

  v268[0] = 0xD00000000000001FLL;
  v268[1] = 0x8000000184DDC240;
  MEMORY[0x1865F6280](v179, v180);

  MEMORY[0x1865F6280](542002976, 0xE400000000000000);
  MEMORY[0x1865F6280](v178, v76);

  MEMORY[0x1865F6280](2107424, 0xE300000000000000);
  if (v261)
  {
    v265 = MEMORY[0x1E69E7CC0];
    v181 = OUTLINED_FUNCTION_10_5();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v181, v182, v183);
    v184 = v264;
    v185 = v265;
    v186 = *(v256 + 80);
    OUTLINED_FUNCTION_19_0();
    v188 = v259 + v187;
    v263 = *(v189 + 72);
    do
    {
      outlined init with copy of (key: String, value: SQLDataType)(v188, v184, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      OUTLINED_FUNCTION_7_6();
      MEMORY[0x1865F6280](34, 0xE100000000000000);
      v184 = v264;
      v190 = v267[0];
      v191 = v267[1];
      outlined destroy of UUID?(v264, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR);
      v265 = v185;
      v193 = *(v185 + 16);
      v192 = *(v185 + 24);
      if (v193 >= v192 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v192);
        OUTLINED_FUNCTION_12_5();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v195, v196, v197);
        v184 = v264;
        v185 = v265;
      }

      *(v185 + 16) = v193 + 1;
      v194 = v185 + 16 * v193;
      *(v194 + 32) = v190;
      *(v194 + 40) = v191;
      v188 += v263;
      v261 = (v261 - 1);
    }

    while (v261);

    v53 = v255;
    v54 = v260;
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_13();
  v198 = BidirectionalCollection<>.joined(separator:)();
  v200 = v199;

  MEMORY[0x1865F6280](v198, v200);

  MEMORY[0x1865F6280](10528, 0xE200000000000000);
  v201 = v268[0];
  v202 = v268[1];
  v203 = v232;
  v204 = v236;
  v205 = String.utf8CString.getter();
  v206 = sqlite3_exec(v54, (v205 + 32), 0, 0, 0);

  if (v206)
  {
    v207 = BMSQLDatabaseError(v206, v54, 0);
    swift_getErrorValue();
    v208 = Error.localizedDescription.getter();
    v209 = v204;
    v211 = v210;

    v268[0] = v208;
    v268[1] = v211;
    strcpy(v267, "BMSQLDatabase");
    HIWORD(v267[1]) = -4864;
    v265 = 0x62617461444C5153;
    v266 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v212 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v214 = v213;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v215 = v203;
    *(v215 + 8) = v209;
    *(v215 + 16) = v212;
    *(v215 + 24) = v214;
    *(v215 + 32) = 1;
    swift_willThrow();
  }

  else
  {

    v267[0] = v54;
    v267[1] = v228;
    v267[2] = v234;
    v267[3] = v237;
    v267[4] = v249;
    v267[5] = v244;
    v267[6] = v245;
    v267[7] = v258;
    v267[8] = v262;
    v267[9] = v201;
    v267[10] = v202;
    v268[0] = v54;
    v268[1] = v228;
    v268[2] = v234;
    v268[3] = v237;
    v268[4] = v249;
    v268[5] = v244;
    v268[6] = v245;
    v268[7] = v258;
    v268[8] = v262;
    v268[9] = v201;
    v268[10] = v202;
    outlined init with copy of DBViewWriter(v267, &v265);
    outlined destroy of DBViewWriter(v268);
    return memcpy(v53, v267, 0x58uLL);
  }
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser12ResultColumnVGMR, type metadata accessor for ResultColumn, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR, type metadata accessor for Schema, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR, type metadata accessor for StorableValue, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = v4;
}

uint64_t ResultColumn.name.getter()
{
  if (v0[13])
  {
    v1 = v0[12];
    v2 = v0[13];
  }

  else
  {
    v4 = v0[10];
    v3 = v0[11];
  }

  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_133()
{
  result = v1;
  v4 = *(v2 - 192);
  *(v2 - 128) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  *v2 = *(v1 + *(a1 + 28));
  *(v2 + 8) = 0;

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_26()
{
  result = v1 + *(v0 + 40);
  v4 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_deallocPartialClassInstance();
}

void OUTLINED_FUNCTION_26_3(uint64_t a1@<X8>)
{
  *(v3 - 304) = v1;
  v4 = *(v2 + 56);
  v5 = *(*(v2 + 48) + 8 * (a1 | (v1 << 6)));
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  result = v0;
  v3 = *(v1 - 408);
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      while (1)
      {
        outlined init with copy of (key: String, value: SQLDataType)(v23, v17, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with copy of (key: String, value: SQLDataType)(v20, v13, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of UUID?(v13, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        result = outlined destroy of UUID?(v17, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v26 = v36;
          outlined init with take of (key: String, value: SQLDataType)(v23, v36, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          swift_arrayInitWithTakeFrontToBack();
          result = outlined init with take of (key: String, value: SQLDataType)(v26, v20, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      outlined destroy of UUID?(v13, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      result = outlined destroy of UUID?(v17, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
LABEL_14:
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t outlined init with copy of (key: String, value: SQLDataType)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  *(v7 - 536) = v2;
  *(v7 - 528) = v1;
  *(v7 - 520) = v6;
  v9 = *(v7 - 128);
  *(v7 - 512) = v3;
  *(v7 - 72) = v4;
  v10 = *(v5 + 36);
  v11 = *(v7 - 120);
  v12 = *(v7 - 112);

  return SQLExpressionEvaluator.execute(expression:payload:)(v0);
}

uint64_t OUTLINED_FUNCTION_122()
{

  return StorableValue.init(_:dataType:)(v2 - 96, v1, v0);
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v8 = OUTLINED_FUNCTION_2_1(v40);
  v37 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v39 = v12;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51();
  v38 = v14;
  v15 = v1 + 64;
  v16 = -1 << *(v1 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v1 + 64);
  if (!v5)
  {
    v20 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v15;
    v7[2] = ~v16;
    v7[3] = v20;
    v7[4] = v18;
    OUTLINED_FUNCTION_169();
    return;
  }

  if (!v3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v1 + 32);
    v34 = v7;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v16) >> 6;
    v35 = v1;
    v36 = v3;
    while (1)
    {
      if (v19 >= v3)
      {
        goto LABEL_25;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        while (1)
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v18 = 0;
            v7 = v34;
            goto LABEL_20;
          }

          v18 = *(v15 + 8 * v23);
          ++v20;
          if (v18)
          {
            v41 = v5;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v41 = v5;
      v23 = v20;
LABEL_16:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(v1 + 48);
      v27 = *(v1 + 56);
      v28 = (v26 + 16 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12(v31);
      (*(v32 + 16))(&v39[*(v40 + 48)], v27 + *(v32 + 72) * v25);
      *v39 = v29;
      *(v39 + 1) = v30;
      outlined init with take of UUID?(v39, v38, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      outlined init with take of UUID?(v38, v41, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v3 = v36;
      if (v22 == v36)
      {
        break;
      }

      v5 = v41 + *(v37 + 72);

      v19 = v22;
      v20 = v23;
      v1 = v35;
    }

    v20 = v23;
    v7 = v34;
    v1 = v35;
LABEL_20:
    v16 = v33;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

{
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_169();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

size_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_14BiomeSQLParser11SQLDataTypeO5valuet_Tt1g5(*(a1 + 16), 0);
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8) + 80);
  specialized Sequence._copySequenceContents(initializing:)();
  v5 = v4;

  outlined consume of [String : [String]].Iterator._Variant();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12[0] = v3 + v6;
  v12[1] = v5;
  result = _minimumMergeRunLength(_:)(v5);
  if (result >= v5)
  {
    if (v5)
    {
      result = specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, v12);
    }
  }

  else
  {
    v8 = result;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v10[0] = v9 + v6;
    v10[1] = v5 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, v12, v8);
    *(v9 + 16) = 0;
  }

  *a1 = v3;
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_90_1()
{
  v2 = v0[1];
  *(v1 - 192) = *v0;
  *(v1 - 184) = v2;
}

void closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_64();
  v2 = type metadata accessor for SQLRawDataType();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_80_2();
  SQLDataType.columnType()();
  if (!v9)
  {
    (*(v5 + 104))(v0, 1, v2);
    v10 = specialized == infix<A>(_:_:)(v1, v0);
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_94_2();
    v11(v12);
    (v11)(v1, v2);
    if (v10)
    {
      _StringGuts.grow(_:)(57);
      MEMORY[0x1865F6280](0x222873626128, 0xE600000000000000);
      v13 = OUTLINED_FUNCTION_20();
      MEMORY[0x1865F6280](v13);
      v14 = 0xD000000000000016;
      v15 = 0x8000000184DDC260;
    }

    else
    {
      _StringGuts.grow(_:)(42);

      v16 = OUTLINED_FUNCTION_20();
      MEMORY[0x1865F6280](v16);
      v14 = 0x524F203F203D2022;
      v15 = 0xEB00000000222820;
    }

    MEMORY[0x1865F6280](v14, v15);
    v17 = OUTLINED_FUNCTION_20();
    MEMORY[0x1865F6280](v17);
    OUTLINED_FUNCTION_72_2();
    MEMORY[0x1865F6280](0xD000000000000019);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - v8);
  v10 = *(v1 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v11 = OUTLINED_FUNCTION_41_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v12, v13);
    v14 = v27;
    Description = type metadata accessor for SQLExpression()[-1].Description;
    v16 = v1 + ((*(Description + 80) + 32) & ~*(Description + 80));
    v17 = Description[9];
    do
    {
      v18 = *(v2 + 48);
      v19 = SQLExpression.sql.getter();
      strcpy(&v26, "group_by_key_");
      HIWORD(v26) = -4864;
      MEMORY[0x1865F6280](v19);

      v20 = *(&v26 + 1);
      *v9 = v26;
      v9[1] = v20;
      SQLExpression.returnType.getter(v9 + v18);
      v27 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v22 + 1;
      v23 = *(v4 + 80);
      OUTLINED_FUNCTION_19_0();
      outlined init with take of UUID?(v9, v14 + v24 + *(v4 + 72) * v22, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
      v16 += v17;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_169();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v3 = *(v1 - 200);

  return outlined init with copy of StorableValue(v0, v3);
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void OUTLINED_FUNCTION_74_2()
{

  JUMPOUT(0x1865F6280);
}

uint64_t outlined destroy of (columnName: String, dataType: SQLDataType)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_95_0()
{
  result = (v0 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v2 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  return result;
}

void OUTLINED_FUNCTION_39_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_107(uint64_t a1)
{

  return outlined destroy of UUID?(a1, v1, v2);
}

ValueMetadata *OUTLINED_FUNCTION_107_0()
{

  return type metadata accessor for SQLDataType();
}

void OUTLINED_FUNCTION_107_1()
{

  JUMPOUT(0x1865F62C0);
}

uint64_t OUTLINED_FUNCTION_107_2()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t static KeyedAggregationMetadataCache.tableName(materializedViewName:)()
{
  OUTLINED_FUNCTION_86_2();
  _StringGuts.grow(_:)(36);

  OUTLINED_FUNCTION_72_2();
  MEMORY[0x1865F6280](0xD000000000000022);
  return v0;
}

uint64_t tableExists(sqlExpressionEvaluator:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(63);
  MEMORY[0x1865F6280](0xD00000000000003CLL, 0x8000000184DDCEF0);
  MEMORY[0x1865F6280](a2, a3);
  MEMORY[0x1865F6280](39, 0xE100000000000000);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v5, MEMORY[0x1E69E7CC0]);

  if (!v8)
  {
    if (v6)
    {

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t OUTLINED_FUNCTION_57_1()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

BiomeSQLParser::SQLRawDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDataType.columnType()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for SQLDataType();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = *(v7 + 16);
  v13(v11 - v10, v2, v4);
  v14 = (*(v7 + 88))(v12, v4);
  switch(v14)
  {
    case 0:
      goto LABEL_2;
    case 1:
LABEL_4:
      v15 = &enum case for SQLRawDataType.REAL(_:);
      goto LABEL_10;
    case 2:
LABEL_6:
      v15 = &enum case for SQLRawDataType.TEXT(_:);
      goto LABEL_10;
    case 3:
      goto LABEL_4;
    case 4:
      goto LABEL_9;
    case 5:
      goto LABEL_6;
    case 6:
LABEL_9:
      v15 = &enum case for SQLRawDataType.BLOB(_:);
      goto LABEL_10;
    case 7:
LABEL_2:
      v15 = &enum case for SQLRawDataType.INTEGER(_:);
LABEL_10:
      v16 = *v15;
      v17 = type metadata accessor for SQLRawDataType();
      OUTLINED_FUNCTION_12(v17);
      return (*(v18 + 104))(v3, v16);
  }

  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  OUTLINED_FUNCTION_63();
  v21 = v20;
  v20[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  v13(boxed_opaque_existential_0, v2, v4);
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 64) = 3;
  swift_willThrow();
  return (*(v7 + 8))(v12, v4);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [StorableValue] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [StorableValue] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type StorableValue and conformance StorableValue, type metadata accessor for StorableValue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [StorableValue] and conformance <A> [A]);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  result = v1 + a1;
  v6 = *(v3 - 168);
  v7 = *(v3 - 152);
  return result;
}

void OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 - 264) = a3;
  *(v4 - 176) = a2;
  v5 = *(v3 + 56);
}

void OUTLINED_FUNCTION_103_1()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x1865F6890);
}

uint64_t Schema.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Schema.JSONEach(with:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v13[0] = 0x65756C6176;
  v13[1] = 0xE500000000000000;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v4 = static _DictionaryStorage.allocate(capacity:)();

  _s10Foundation4UUIDVSgWOhTm_0(v13, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
  v7 = v6;

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v4[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v4[6] + 16 * v5);
    *v9 = 0x65756C6176;
    v9[1] = 0xE500000000000000;
    *(v4[7] + v5) = v3;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      v4[2] = v12;
      *a2 = 0x6361655F6E6F736ALL;
      a2[1] = 0xE900000000000068;
      a2[2] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1)
{
  *(v3 - 96) = 0u;
  *(v3 - 80) = 0u;
  v4 = *(a1 + 24);
  v5 = *(v2 + 16);
  return v1;
}

uint64_t ResultColumn.alias.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t *a3)
{
  v57 = a3;
  v5 = type metadata accessor for SQLDataType();
  Description = v5[-1].Description;
  v7 = *(Description + 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = (v46 - v16);
  v54 = *(a1 + 16);
  if (!v54)
  {
  }

  v17 = 0;
  v53 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v14 + 48);
  v51 = v11;
  v52 = v18;
  v56 = (Description + 32);
  v46[2] = Description + 8;
  v46[3] = Description + 16;
  v46[1] = Description + 40;
  v48 = v15;
  v49 = a1;
  v50 = Description;
  while (v17 < *(a1 + 16))
  {
    v19 = v55;
    outlined init with copy of Date?(v53 + *(v15 + 72) * v17, v55, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v21 = *v19;
    v20 = v19[1];
    v22 = *v56;
    v23 = v19 + v52;
    v24 = v5;
    (*v56)(v11, v23, v5);
    v25 = *v57;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_18;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v32 = v57;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, a2 & 1);
      v33 = *v32;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_20;
      }

      v27 = v34;
    }

    v36 = *v57;
    if (v31)
    {
      v37 = v50;
      v38 = v50[9] * v27;
      v39 = v47;
      v5 = v24;
      (v50[2])(v47, v36[7] + v38, v24);
      v11 = v51;
      v37[1](v51, v24);

      (v37[5])(v36[7] + v38, v39, v24);
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v40 = (v36[6] + 16 * v27);
      *v40 = v21;
      v40[1] = v20;
      v41 = v36[7] + v50[9] * v27;
      v11 = v51;
      v5 = v24;
      v22(v41, v51, v24);
      v42 = v36[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v36[2] = v44;
    }

    ++v17;
    a2 = 1;
    v15 = v48;
    a1 = v49;
    if (v54 == v17)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BiomeSQLParser::Schema __swiftcall Schema.init(tableName:columns:)(Swift::String tableName, Swift::OpaquePointer columns)
{
  *v2 = tableName;
  *(v2 + 16) = columns;
  result.tableName = tableName;
  result.columns = columns;
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_14BiomeSQLParser11SQLDataTypeO5valuet_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type StorableValue and conformance StorableValue(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)()
{
  OUTLINED_FUNCTION_86_2();
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_72_2();
  MEMORY[0x1865F6280](0xD000000000000019);
  return v0;
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return _s10Foundation4UUIDVSgWOhTm_0(v1, v0, v2);
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLRawDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x52454745544E49;
  v5 = 1415071060;
  v6 = 1112493122;
  if (v2 != 3)
  {
    v6 = 1280070990;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 1279346002;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SQLRawDataType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1415071060;
  v4 = 1112493122;
  if (v1 != 3)
  {
    v4 = 1280070990;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1279346002;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t bmstream_vtab_bestindex(uint64_t a1, int *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  a2[10] = 0;
  v50 = (a2 + 10);
  v4 = *(a1 + 24);
  v5 = objc_autoreleasePoolPush();
  v6 = v4;
  v7 = [v6 stream];

  if (v7)
  {
    v8 = [v6 stream];
    v9 = [v8 configuration];

    v10 = objc_alloc(MEMORY[0x1E698F140]);
    v11 = [v6 stream];
    v12 = [v11 identifier];
    v13 = [v9 storeConfig];
    v14 = [v9 eventClass];
    v15 = [v6 useCase];
    v16 = [v10 initWithStream:v12 permission:0 config:v13 includeTombstones:0 eventDataClass:v14 useCase:v15];

    LODWORD(v15) = [v16 frameCountInStreamDataStoreFromSegmentsContainingTime:0.0 to:CFAbsoluteTimeGetCurrent()];
    v7 = v15;
  }

  objc_autoreleasePoolPop(v5);
  *(a2 + 9) = v7;
  if ([v6 acceptPublisherOptions])
  {
    v17 = [v6 schema];
    v18 = [v17 columns];
    v19 = [v18 count];

    if (v19)
    {
      v20 = 0;
      while (1)
      {
        v21 = [v6 schema];
        v22 = [v21 columns];
        v23 = [v22 objectAtIndexedSubscript:v20];

        v24 = [v23 name];
        LOBYTE(v22) = [v24 isEqualToString:@"eventTimestamp"];

        if (v22)
        {
          break;
        }

        ++v20;
        v25 = [v6 schema];
        v26 = [v25 columns];
        v27 = [v26 count];

        if (v27 <= v20)
        {
          goto LABEL_36;
        }
      }

      if (a2[4] == 1)
      {
        v28 = *(a2 + 3);
        if (*v28 == v20)
        {
          a2[15] = 1;
          if (*(v28 + 4))
          {
            *v50 |= 4u;
          }
        }
      }

      if (*a2 < 1)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v30 = 0;
      v51 = 0;
      v48 = -1;
      v49 = -1;
      do
      {
        v31 = (*(a2 + 1) + v29);
        v32 = *v31;
        v33 = *(v31 + 4);
        v34 = *(v31 + 5);
        v35 = __biome_log_for_category();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v47 = [MEMORY[0x1E696AD98] numberWithInt:v30];
          v46 = [MEMORY[0x1E696AD98] numberWithInt:v32];
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v33];
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v34];
          *buf = 138413058;
          v54 = v47;
          v55 = 2112;
          v56 = v46;
          v57 = 2112;
          v58 = v45;
          v59 = 2112;
          v60 = v37;
          v38 = v37;
          _os_log_debug_impl(&dword_1848EE000, v35, OS_LOG_TYPE_DEBUG, "bmstream_vtab_bestindex constraint %@ - iColumn: %@; op: %@; usable: %@", buf, 0x2Au);
        }

        v36 = v32 != v20 || v34 == 0;
        if (!v36 && v33 <= 0x20)
        {
          if (((1 << v33) & 0x100000014) != 0)
          {
            ++HIDWORD(v51);
            v49 = v30;
          }

          else if (((1 << v33) & 0x10100) != 0)
          {
            LODWORD(v51) = v51 + 1;
            v48 = v30;
          }
        }

        ++v30;
        v29 += 12;
      }

      while (v30 < *a2);
      if (HIDWORD(v51) == 1)
      {
        v39 = a2[10];
        a2[10] = v39 | 1;
        v40 = *(a2 + 4);
        *(v40 + 8 * v49) = 1;
        if (v51 == 1)
        {
          *v50 = v39 | 3;
          v41 = 2;
LABEL_32:
          *(v40 + 8 * v48) = v41;
        }
      }

      else if (v51 == 1)
      {
        a2[10] |= 2u;
        v40 = *(a2 + 4);
        v41 = 1;
        goto LABEL_32;
      }

LABEL_33:
      v42 = __biome_log_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        bmstream_vtab_bestindex_cold_1(v50, v42);
      }
    }
  }

LABEL_36:

  objc_autoreleasePoolPop(context);
  v43 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t bmstream_vtab_open(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sqlite3_malloc(16);
  if (v5)
  {
    v6 = v5;
    *v5 = 0;
    v5[1] = 0;
    *a2 = v5;
    v7 = [[BMPublisherVirtualTableCursor alloc] initWithVirtualTable:*(a1 + 24)];
    v8 = v6[1];
    v6[1] = v7;

    v9 = 0;
  }

  else
  {
    v9 = 7;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

BOOL bmstream_vtab_eof(uint64_t a1)
{
  v1 = [*(a1 + 8) rowObject];
  v2 = v1 == 0;

  return v2;
}

uint64_t bmstream_vtab_disconnect(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  objc_storeWeak((a1 + 32), 0);
  sqlite3_free(a1);
  objc_autoreleasePoolPop(v2);
  return 0;
}

void bmstream_udf_destructor_callback(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    *a1 = 0;

    v3 = a1[1];
    a1[1] = 0;

    sqlite3_free(a1);
  }
}

void biome_each_vtab_destroy(void **a1)
{
  v2 = *a1;
  *a1 = 0;

  sqlite3_free(a1);
}

void bmstream_vtab_destroy(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeWeak(a1, 0);
  sqlite3_free(a1);

  objc_autoreleasePoolPop(v2);
}

void *static UnifiedLibrary.library.getter()
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0();
  }

  return &unk_1EF2A1980;
}

uint64_t outlined init with copy of AnyValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of StorableValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorableValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v60) = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  v7 = OUTLINED_FUNCTION_2_1(v59);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = (&v58 - v12);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v14 = OUTLINED_FUNCTION_2_1(v63);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - v22;
  v61 = a3;
  v62 = a1;
  v24 = *(a3 + 16);
  v25 = *(a1 + 16);
  if (v24 == v25)
  {
    v26 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v64 = MEMORY[0x1E69E7CC0];
      v27 = v21;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v26 = v64;
      v28 = *(v27 + 80);
      OUTLINED_FUNCTION_19_0();
      v30 = (v62 + v29);
      v31 = *(v27 + 72);
      while (1)
      {
        v32 = closure #2 in recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(v13 + *(v59 + 48), *v30, v30[1], (v30 + *(v63 + 48)), v60 & 1, v61, v62);
        if (v4)
        {
          break;
        }

        *v13 = v32;
        v13[1] = v33;
        v64 = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          v38 = OUTLINED_FUNCTION_4_9(v34);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v35 + 1, 1);
          v26 = v64;
        }

        *(v26 + 16) = v35 + 1;
        v36 = *(v9 + 80);
        OUTLINED_FUNCTION_19_0();
        outlined init with take of (key: String, value: SQLDataType)(v13, v26 + v37 + *(v9 + 72) * v35, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
        v30 = (v30 + v31);
        --v24;
        v4 = 0;
        if (!v24)
        {
          return v26;
        }
      }
    }
  }

  else
  {
    v39 = v21;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v40 = swift_allocError();
    v42 = v41;
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v59 = v41;
      v60 = v40;
      v64 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v26 = v64;
      v43 = *(v39 + 80);
      OUTLINED_FUNCTION_19_0();
      v45 = v62 + v44;
      v62 = *(v39 + 72);
      do
      {
        outlined init with copy of (key: String, value: SQLDataType)(v45, v23, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with take of (key: String, value: SQLDataType)(v23, v19, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        v46 = *v19;
        v47 = *(v19 + 1);
        v48 = *(v63 + 48);
        v49 = type metadata accessor for SQLDataType();
        OUTLINED_FUNCTION_12(v49);
        (*(v50 + 8))(&v19[v48]);
        v64 = v26;
        v52 = *(v26 + 16);
        v51 = *(v26 + 24);
        if (v52 >= v51 >> 1)
        {
          v54 = OUTLINED_FUNCTION_4_9(v51);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54, v52 + 1, 1);
          v26 = v64;
        }

        *(v26 + 16) = v52 + 1;
        v53 = v26 + 16 * v52;
        *(v53 + 32) = v46;
        *(v53 + 40) = v47;
        v45 += v62;
        --v25;
      }

      while (v25);
      v42 = v59;
    }

    v56 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5(v55);
    *v42 = v26;
    *(v42 + 8) = v56;
    *(v42 + 64) = 7;
    swift_willThrow();
  }

  return v26;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 1684632949;
  if (a1 != 6)
  {
    v4 = 1819047278;
  }

  v5 = 1635017060;
  if (a1 != 4)
  {
    v5 = 1852797802;
  }

  if (a1 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  v7 = 0x676E69727473;
  if (a1 != 2)
  {
    v7 = 1702125924;
    v6 = 0xE400000000000000;
  }

  v8 = 0x656C62756F64;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x72656765746E69;
  }

  if (a1 > 1u)
  {
    v3 = v6;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (a2 > 3u)
  {
    v11 = 0xE400000000000000;
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v9 != 1684632949)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 1819047278)
      {
LABEL_45:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_46;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 1635017060)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 1852797802)
    {
      goto LABEL_45;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x676E69727473)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1702125924)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x656C62756F64)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x72656765746E69)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1279346002;
    }

    else
    {
      v4 = 0x52454745544E49;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 2)
    {
      v4 = 1415071060;
    }

    else if (a1 == 3)
    {
      v4 = 1112493122;
    }

    else
    {
      v4 = 1280070990;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1279346002;
    }

    else
    {
      v8 = 0x52454745544E49;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 1112493122;
    if (a2 != 3)
    {
      v5 = 1280070990;
    }

    if (a2 == 2)
    {
      v6 = 1415071060;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE400000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_26_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_26_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v1;
  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = v10;
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v8 = *(a6 + 16);
  v9 = (a6 + 40);
  if (!v8)
  {
    return v14[0];
  }

  while (1)
  {
    v10 = *v9;
    v12[0] = *(v9 - 8);
    v13 = v10;

    a4(v14, v12);
    if (v6)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      return v14[0];
    }
  }
}

uint64_t outlined destroy of StorableValue(uint64_t a1)
{
  v2 = type metadata accessor for StorableValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SQLExpressionEvaluatorError()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return v0;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(*(type metadata accessor for StorableValue(0) - 8) + 80);
  OUTLINED_FUNCTION_19_0();
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDC0](v3, v4, v5);
}

{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR) - 8) + 80);
  OUTLINED_FUNCTION_19_0();
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDC0](v3, v4, v5);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_31()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 192);
  return *(v1 - 184);
}

double OUTLINED_FUNCTION_31_1@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  result = a2 + a3;
  *(v4 + a1) = result;
  v6 = *(v4 + *(v3 + 32));
  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_31_3()
{
  v2 = *(v0 + 8);
  *(v1 - 192) = *v0;
  *(v1 - 184) = v2;
}

uint64_t SQLExpressionEvaluator.__deallocating_deinit()
{
  SQLExpressionEvaluator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 208);

  return Optional<A>.hashValue.getter();
}

void specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_77_1();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v162 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v162);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v37);
  v38 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v39 = OUTLINED_FUNCTION_0_22(v38, &a17);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v44);
  v45 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v46 = OUTLINED_FUNCTION_0_22(v45, &a15);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &a14);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v58);
  v59 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v60 = OUTLINED_FUNCTION_0_22(v59, &a13);
  v160 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  v66 = v65 - v64;
  v67 = type metadata accessor for Date.ISO8601FormatStyle();
  v68 = OUTLINED_FUNCTION_0_22(v67, &a10);
  v166 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_25_4(v77, v141[0]);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v79 = OUTLINED_FUNCTION_47(v78);
  v81 = *(v80 + 64);
  v82 = MEMORY[0x1EEE9AC00](v79);
  v164 = v141 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_51();
  v165 = v84;
  v167 = type metadata accessor for StorableValue(0);
  v85 = OUTLINED_FUNCTION_2_1(v167);
  v87 = v86;
  v89 = *(v88 + 64);
  v90 = MEMORY[0x1EEE9AC00](v85);
  v92 = v141 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v94 = v141 - v93;
  v151 = v22;
  v95 = *(v22 + 40);
  Hasher.init(_seed:)();
  v161 = v26;
  v96 = *(v26 + 16);
  MEMORY[0x1865F6890](v96);
  if (v96)
  {
    v97 = v55;
    v98 = v161 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v149 = v160 + 104;
    v148 = v97 + 104;
    v147 = v48 + 104;
    v146 = v41 + 104;
    v99 = *(v87 + 72);
    v145 = *MEMORY[0x1E6969360];
    v141[1] = v34 + 32;
    v144 = *MEMORY[0x1E6969358];
    OUTLINED_FUNCTION_110_0(v166 + 8);
    v143 = *v100;
    v142 = *v101;
    v150 = v66;
    v103 = v102;
    v166 = v102;
    while (1)
    {
      outlined init with copy of StorableValue(v98, v94);
      outlined init with copy of StorableValue(v94, v92);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (v92[8])
          {
            v168 = *v92;
            LOBYTE(v169) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_12:
            v107 = Optional<A>.hashValue.getter();
          }

          else
          {
            v137 = OUTLINED_FUNCTION_7_5(*v92);
            if (!(v138 ^ v139 | v127))
            {
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              JUMPOUT(0x184912598);
            }

            if (v137 <= -9.22337204e18)
            {
              goto LABEL_28;
            }

            OUTLINED_FUNCTION_45_1();
            if (!v138)
            {
              goto LABEL_29;
            }

            Int.hashValue.getter();
            v107 = Int.hashValue.getter();
          }

LABEL_25:
          MEMORY[0x1865F6890](v107);
LABEL_26:
          outlined destroy of StorableValue(v94);
          v98 += v103;
          if (!--v96)
          {
            goto LABEL_27;
          }

          break;
        case 2u:
          v108 = v165;
          _s10Foundation4UUIDVSgWObTm_0(v92, v165, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v109 = v108;
          v110 = v164;
          outlined init with copy of Date?(v109, v164);
          v111 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(v110, 1, v111) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            Hasher._combine(_:)(0);
          }

          else
          {
            v160 = v111;
            OUTLINED_FUNCTION_16_0(&v175);
            v122(v150, v145, v155);
            v123 = OUTLINED_FUNCTION_46_1(&v174);
            v124(v123, v144, v156);
            OUTLINED_FUNCTION_16_0(&v173);
            v125(v154, v143, v157);
            OUTLINED_FUNCTION_16_0(&v172);
            v126(v158, v142, v159);
            OUTLINED_FUNCTION_51_0();
            OUTLINED_FUNCTION_29_3();
            if (v127)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_16_0(&v171);
            v128 = OUTLINED_FUNCTION_87_1();
            v129(v128, v110, v162);
            v130 = v152;
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v131 = v164;
            v132 = Date.ISO8601Format(_:)();
            v134 = v133;
            OUTLINED_FUNCTION_16_0(&v170);
            v135(v130, v153);
            (*(*(v160 - 8) + 8))(v131);
            v136 = MEMORY[0x1865F62C0](v132, v134);

            OUTLINED_FUNCTION_102_1();
            MEMORY[0x1865F6890](v136);
            v103 = v166;
          }

          v119 = v165;
          v120 = &_s10Foundation4DateVSgMd;
          v121 = &_s10Foundation4DateVSgMR;
LABEL_18:
          _s10Foundation4UUIDVSgWOhTm_0(v119, v120, v121);
          goto LABEL_26;
        case 3u:
          v112 = *(v92 + 1);
          v168 = *v92;
          v169 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v113 = Optional<A>.hashValue.getter();

          v107 = v113;
          goto LABEL_25;
        case 4u:
          v105 = *(v92 + 1);
          v168 = *v92;
          v169 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v106 = Optional<A>.hashValue.getter();

          v107 = v106;
          goto LABEL_25;
        case 5u:
          v115 = *(v92 + 1);
          v168 = *v92;
          v114 = *&v168;
          v169 = v115;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          lazy protocol witness table accessor for type Data and conformance Data();
          v103 = v166;
          v116 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v116);
          outlined consume of Data?(v114, v115);
          goto LABEL_26;
        case 6u:
          v117 = v163;
          _s10Foundation4UUIDVSgWObTm_0(v92, v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          lazy protocol witness table accessor for type UUID and conformance UUID();
          v118 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v118);
          v119 = v117;
          v103 = v166;
          v120 = &_s10Foundation4UUIDVSgMd;
          v121 = &_s10Foundation4UUIDVSgMR;
          goto LABEL_18;
        case 7u:
          v107 = OUTLINED_FUNCTION_88_0();
          goto LABEL_25;
        default:
          v104 = v92[8];
          v168 = *v92;
          LOBYTE(v169) = v104;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
          goto LABEL_12;
      }
    }
  }

LABEL_27:
  v140 = Hasher._finalize()();
  specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v161, v140);
  OUTLINED_FUNCTION_85_1();
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t SQLExpressionEvaluator.execute(expression:payload:)@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  OUTLINED_FUNCTION_1_0();
  v5 = type metadata accessor for SQLDataType();
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v110 = v7;
  v111 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v107 = (v10 - v11);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v106 - v13;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v106 - v15;
  v117 = type metadata accessor for StorableValue(0);
  v16 = OUTLINED_FUNCTION_2_1(v117);
  v122 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v121 = v20 - v21;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v106 - v23;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v106 - v25;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v106 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_14();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v106 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser7BindingVSgMd, &_s14BiomeSQLParser7BindingVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v106 - v38;
  v40 = type metadata accessor for Binding();
  v41 = OUTLINED_FUNCTION_2_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14();
  v118 = (v46 - v47);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v48);
  v119 = &v106 - v49;
  v113 = v2;
  v51 = SQLExpression.expressionString.getter() == 63 && v50 == 0xE100000000000000;
  v112 = v3;
  if (v51)
  {
  }

  else
  {
    Description = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((Description & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v52 = SQLExpression.bindings.getter();
  specialized Collection.first.getter(v52, type metadata accessor for Binding, v39);

  if (__swift_getEnumTagSinglePayload(v39, 1, v40) != 1)
  {
    v71 = *(v43 + 32);
    v72 = v119;
    v73 = OUTLINED_FUNCTION_16_1();
    v74(v73);
    Binding.name.getter();
    v75 = String.lowercased()();

    specialized Dictionary.subscript.getter(v75._countAndFlagsBits, v75._object, v1, v35);
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v32, 1, v117) == 1)
    {
      outlined destroy of UUID?(v32, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      *v76 = v75;
      *(v76 + 64) = 2;
      swift_willThrow();
      outlined destroy of UUID?(v35, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      return (*(v43 + 8))(v72, v40);
    }

    else
    {
      v120 = v35;
      v121 = v43;
      v122 = v40;

      v81 = v32;
      v82 = v115;
      outlined init with take of StorableValue(v81, v115);
      v83 = v108;
      StorableValue.dataType.getter(v108);
      v84 = v116;
      SQLExpression.returnType.getter(v116);
      LOBYTE(v84) = specialized == infix<A>(_:_:)(v83, v84);
      v86 = v110;
      v85 = v111;
      v87 = *(v110 + 8);
      v88 = OUTLINED_FUNCTION_16_1();
      v87(v88);
      (v87)(v83, v85);
      if (v84)
      {
        goto LABEL_26;
      }

      StorableValue.dataType.getter(v83);
      v89 = v116;
      v118 = *(v86 + 104);
      v118(v116, 2, v85);
      v90 = specialized == infix<A>(_:_:)(v83, v89);
      v91 = OUTLINED_FUNCTION_16_1();
      v87(v91);
      (v87)(v83, v85);
      if ((v90 & 1) == 0)
      {
        goto LABEL_29;
      }

      v92 = v89;
      SQLExpression.returnType.getter(v83);
      v118(v89, 5, v85);
      v93 = specialized == infix<A>(_:_:)(v83, v89);
      (v87)(v92, v85);
      (v87)(v83, v85);
      if (v93)
      {
LABEL_26:
        outlined destroy of UUID?(v120, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        (*(v121 + 8))(v119, v122);
        return outlined init with take of StorableValue(v82, v109);
      }

      else
      {
LABEL_29:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63();
        v94[3] = v85;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
        StorableValue.dataType.getter(boxed_opaque_existential_0);
        OUTLINED_FUNCTION_15();
        swift_willThrow();
        outlined destroy of StorableValue(v82);
        outlined destroy of UUID?(v120, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        return (*(v121 + 8))(v119, v122);
      }
    }
  }

  outlined destroy of UUID?(v39, &_s14BiomeSQLParser7BindingVSgMd, &_s14BiomeSQLParser7BindingVSgMR);
LABEL_10:
  v53 = SQLExpression.bindings.getter();
  v54 = 0;
  v55 = *(v53 + 16);
  v116 = (v43 + 16);
  v117 = v55;
  v115 = v43 + 8;
  v56._rawValue = MEMORY[0x1E69E7CC0];
  while (v117 != v54)
  {
    if (v54 >= *(v53 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v57 = v53 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v58 = *(v43 + 72);
    v119 = v54;
    v59 = v118;
    (*(v43 + 16))(v118, v57 + v58 * v54, v40);
    Binding.name.getter();
    v35 = v1;
    (*(v43 + 8))(v59, v40);
    v60 = String.lowercased()();

    if (!*(v1 + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(v60._countAndFlagsBits, v60._object), (v61 & 1) == 0))
    {

      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      *v69 = v60;
      *(v69 + 64) = 2;
      return swift_willThrow();
    }

    v62 = *(v1 + 7);
    Description = v122[4].Description;
    v63 = v114;
    outlined init with copy of SQLExpressionEvaluatorError();
    outlined init with take of StorableValue(v63, v120);
    outlined init with copy of SQLExpressionEvaluatorError();
    rawValue = v56._rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = *(v56._rawValue + 2);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      rawValue = v67;
    }

    v65 = rawValue[2];
    v56._rawValue = rawValue;
    if (v65 >= rawValue[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v56._rawValue = v68;
    }

    outlined destroy of StorableValue(v120);
    *(v56._rawValue + 2) = v65 + 1;
    outlined init with take of StorableValue(v121, v56._rawValue + ((LOBYTE(v122[5].Kind) + 32) & ~LOBYTE(v122[5].Kind)) + v65 * Description);
    v54 = v119 + 1;
    v1 = v35;
  }

  v123 = 0x205443454C4553;
  v124 = 0xE700000000000000;
  v77 = SQLExpression.expressionString.getter();
  MEMORY[0x1865F6280](v77);

  Description = v123;
  v1 = v124;

  v78._countAndFlagsBits = Description;
  v78._object = v1;
  v79 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v78, v56);
  if (v80)
  {

    return swift_bridgeObjectRelease_n();
  }

  v35 = v79;

  if (v35 && *(v35 + 2) == 1)
  {
    specialized Collection.first.getter(v35, &v123);

    if (v124)
    {

      v96 = v107;
      SQLExpression.returnType.getter(v107);
      v97 = OUTLINED_FUNCTION_7_2();
      static StorableValue.fromDatabaseValue(_:dataType:)(v97, v98, v99, v96, v100);
      (*(v110 + 8))(v96, v111);
      v101 = OUTLINED_FUNCTION_7_2();
      return outlined consume of DatabaseValue(v101, v102, v103);
    }

    goto LABEL_35;
  }

LABEL_36:
  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  MEMORY[0x1865F6280](0xD000000000000025, 0x8000000184DDC020);
  MEMORY[0x1865F6280](Description, v1);
  MEMORY[0x1865F6280](0xD000000000000015, 0x8000000184DDC050);
  if (v35)
  {
    v104 = *(v35 + 2);
  }

  else
  {
    v104 = 0;
  }

  v125 = v104;
  v105 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F6280](v105);

  result = OUTLINED_FUNCTION_9_2();
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t getEnumTagSinglePayload for Binding(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with copy of StorableValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorableValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void closure #1 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 error];
  if (v9)
  {
    v10 = v9;
    v11 = [a3 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    *(v16 + 16) = v10;
    *(v16 + 64) = 10;
    v17 = *(a4 + 16);
    *(a4 + 16) = v15;
  }

  else
  {
    v18 = a5 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_bookmark;
    v19 = type metadata accessor for BookmarkCache(0);
    v20 = *(v19 + 20);
    v21 = *(v18 + v20);
    *(v18 + v20) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v18 + *(v19 + 24)) = 1;
  }
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1(v28);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  OUTLINED_FUNCTION_2_1(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *(v1 + 16);
  if (v17)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v18 = OUTLINED_FUNCTION_92_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v17, 0);
    v19 = v29;
    v20 = *(v3 + 80);
    OUTLINED_FUNCTION_19_0();
    v22 = v1 + v21;
    v23 = *(v3 + 72);
    do
    {
      outlined init with copy of Date?(v22, v8, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
      swift_dynamicCast();
      v29 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v19 = v29;
      }

      *(v19 + 16) = v25 + 1;
      v26 = *(v11 + 80);
      OUTLINED_FUNCTION_19_0();
      outlined init with take of UUID?(v16, v19 + v27 + *(v11 + 72) * v25, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v22 += v23;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_169();
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_25_3();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_5_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_5_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t static StorableValue.fromDatabaseValue(_:dataType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v102 = a5;
  v103 = a4;
  v101 = a3;
  v7 = a3;
  v8 = type metadata accessor for UUID();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v99 = v10;
  v100 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v98 = v14 - v13;
  v15 = type metadata accessor for SQLDataType();
  v16 = OUTLINED_FUNCTION_2_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v97 - v25;
  v27 = *(v18 + 16);
  v28 = (v18 + 88);
  v29 = v7 == 4;
  v30 = a2;
  if (!v29 || a2 | a1)
  {
    v97[0] = *(v18 + 16);
    v97[1] = v18 + 16;
    v27(v23, v103, v15);
    v35 = (*v28)(v23, v15);
    if (!v35)
    {
      LOBYTE(v18) = v101;
      if (!v101)
      {
        v36 = v102;
        *v102 = a1;
        *(v36 + 8) = 0;
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    v37 = v35;
    switch(v35)
    {
      case 1:
        OUTLINED_FUNCTION_12_2();
        if (v38 == 1)
        {
          v39 = v102;
          *v102 = a1;
          *(v39 + 8) = 0;
          goto LABEL_9;
        }

        goto LABEL_40;
      case 2:
        OUTLINED_FUNCTION_12_2();
        if (v40 == 2)
        {
LABEL_17:
          OUTLINED_FUNCTION_19_1();
          OUTLINED_FUNCTION_8_1();
          swift_storeEnumTagMultiPayload();
        }

LABEL_40:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63();
        v57 = v56;
        *(v56 + 24) = &type metadata for DatabaseValue;
        *v56 = a1;
        *(v56 + 8) = a2;
        *(v56 + 16) = v18;
        *(v56 + 56) = v15;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v56 + 32));
        (v97[0])(boxed_opaque_existential_0, v103, v15);
        *(v57 + 64) = 3;
        swift_willThrow();
        v59 = OUTLINED_FUNCTION_104();
        return outlined copy of DatabaseValue(v59, v60, v18);
      case 3:
        OUTLINED_FUNCTION_12_2();
        if (v43 == 1)
        {
          v44 = v102;
          Date.init(timeIntervalSince1970:)();
          v45 = type metadata accessor for Date();
          v46 = v44;
          v47 = 0;
LABEL_25:
          __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);
          type metadata accessor for StorableValue(0);
          OUTLINED_FUNCTION_8_1();
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_40;
      case 4:
        OUTLINED_FUNCTION_12_2();
        if (v48 == 3)
        {
          OUTLINED_FUNCTION_19_1();
          OUTLINED_FUNCTION_8_1();
          swift_storeEnumTagMultiPayload();
          v49 = OUTLINED_FUNCTION_104();
          return outlined copy of Data._Representation(v49, v50);
        }

        goto LABEL_40;
      case 5:
        OUTLINED_FUNCTION_12_2();
        if (v51 == 2)
        {
          goto LABEL_17;
        }

        goto LABEL_40;
    }

    if (v35 != 6)
    {
      v61 = a1;
      v62 = v30;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      v64 = v63;
      if (v37 != 7)
      {
        *(v63 + 24) = v15;
        v66 = __swift_allocate_boxed_opaque_existential_0(v63);
        (v97[0])(v66, v103, v15);
        *(v64 + 32) = 0u;
        *(v64 + 48) = 0u;
        *(v64 + 64) = 3;
        swift_willThrow();
        return (*(v18 + 8))(v23, v15);
      }

      *(v63 + 24) = &type metadata for DatabaseValue;
      *v63 = v61;
      *(v63 + 8) = v62;
      LOBYTE(v18) = v101;
      *(v63 + 16) = v101;
      *(v63 + 56) = v15;
      v65 = __swift_allocate_boxed_opaque_existential_0((v63 + 32));
      (v97[0])(v65, v103, v15);
      *(v64 + 64) = 3;
      swift_willThrow();
      v59 = v61;
      v60 = v62;
      return outlined copy of DatabaseValue(v59, v60, v18);
    }

    OUTLINED_FUNCTION_12_2();
    if (v52 != 3)
    {
      goto LABEL_40;
    }

    v53 = OUTLINED_FUNCTION_104();
    outlined copy of Data._Representation(v53, v54);
    v55 = OUTLINED_FUNCTION_104();
    if (MEMORY[0x1865F5B30](v55) != 16)
    {
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      v70 = v69;
      *(v69 + 24) = &type metadata for DatabaseValue;
      *v69 = a1;
      *(v69 + 8) = a2;
      *(v69 + 16) = 3;
      *(v69 + 56) = v15;
      v71 = __swift_allocate_boxed_opaque_existential_0((v69 + 32));
      (v97[0])(v71, v103, v15);
      *(v70 + 64) = 3;
      return swift_willThrow();
    }

    switch(a2 >> 62)
    {
      case 1uLL:
        if (a1 > a1 >> 32)
        {
          __break(1u);
        }

        else
        {
          v72 = __DataStorage._bytes.getter();
          if (v72)
          {
            v73 = __DataStorage._offset.getter();
            if (__OFSUB__(a1, v73))
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v72 += a1 - v73;
          }

          a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          MEMORY[0x1865F59E0]();
          if (v72)
          {
            goto LABEL_62;
          }

          __break(1u);
LABEL_58:
          v74 = *(a1 + 16);
          v72 = __DataStorage._bytes.getter();
          if (!v72)
          {
            goto LABEL_61;
          }

          v75 = __DataStorage._offset.getter();
          if (!__OFSUB__(v74, v75))
          {
            v72 += v74 - v75;
LABEL_61:
            MEMORY[0x1865F59E0]();
            if (v72)
            {
LABEL_62:
              v76 = *v72;
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = v72[4];
              v81 = v72[5];
              v82 = v72[6];
              v83 = v72[7];
              v84 = v72[8];
              v85 = v72[9];
              v86 = v72[10];
              v87 = v72[11];
              v88 = v72[12];
              v89 = v72[13];
              v90 = v72[14];
              v91 = v72[15];
LABEL_63:
              v92 = v98;
              UUID.init(uuid:)();
              v93 = OUTLINED_FUNCTION_104();
              outlined consume of DatabaseValue(v93, v94, 3);
              v95 = v100;
              v96 = v102;
              (*(v99 + 32))(v102, v92, v100);
              __swift_storeEnumTagSinglePayload(v96, 0, 1, v95);
              type metadata accessor for StorableValue(0);
              OUTLINED_FUNCTION_8_1();
              return swift_storeEnumTagMultiPayload();
            }

LABEL_67:
            __break(1u);
            JUMPOUT(0x184914518);
          }
        }

        __break(1u);
        goto LABEL_66;
      case 2uLL:
        goto LABEL_58;
      default:
        goto LABEL_63;
    }
  }

  v31 = v15;
  v32 = v15;
  v33 = *(v18 + 16);
  v27(v97 - v25, v103, v32);
  v34 = (*v28)(v26, v31);
  switch(v34)
  {
    case 0:
    case 1:
      OUTLINED_FUNCTION_24_0();
LABEL_9:
      type metadata accessor for StorableValue(0);
      OUTLINED_FUNCTION_8_1();
      return swift_storeEnumTagMultiPayload();
    case 2:
LABEL_19:
      type metadata accessor for StorableValue(0);
      v42 = v102;
      *v102 = 0;
      v42[1] = 0;
      return swift_storeEnumTagMultiPayload();
    case 3:
      v45 = type metadata accessor for Date();
      v46 = v102;
      v47 = 1;
      goto LABEL_25;
    case 4:
      *v102 = xmmword_184D27CF0;
      type metadata accessor for StorableValue(0);
      OUTLINED_FUNCTION_8_1();
      return swift_storeEnumTagMultiPayload();
    case 5:
      goto LABEL_19;
    case 6:
      __swift_storeEnumTagSinglePayload(v102, 1, 1, v100);
      type metadata accessor for StorableValue(0);
      OUTLINED_FUNCTION_8_1();
      return swift_storeEnumTagMultiPayload();
    case 7:
      type metadata accessor for StorableValue(0);
      return swift_storeEnumTagMultiPayload();
  }

  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  OUTLINED_FUNCTION_63();
  v67[3] = v31;
  v68 = __swift_allocate_boxed_opaque_existential_0(v67);
  v33(v68, v103, v31);
  OUTLINED_FUNCTION_15();
  swift_willThrow();
  return (*(v18 + 8))(v26, v31);
}

uint64_t closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v9 = v8;
  v462 = a6;
  v468 = a5;
  v479 = a4;
  v476 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v430 = &v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v440 = &v395 - v18;
  v446 = type metadata accessor for TimeZone();
  v436 = *(v446 - 8);
  v19 = *(v436 + 64);
  v20 = MEMORY[0x1EEE9AC00](v446);
  v429 = &v395 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v439 = &v395 - v22;
  v445 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v435 = *(v445 - 8);
  v23 = *(v435 + 64);
  v24 = MEMORY[0x1EEE9AC00](v445);
  v428 = &v395 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v453 = &v395 - v26;
  v444 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v434 = *(v444 - 8);
  v27 = *(v434 + 64);
  v28 = MEMORY[0x1EEE9AC00](v444);
  v427 = &v395 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v471 = &v395 - v30;
  v443 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v433 = *(v443 - 8);
  v31 = *(v433 + 64);
  v32 = MEMORY[0x1EEE9AC00](v443);
  v34 = &v395 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v473 = &v395 - v35;
  v442 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v432 = *(v442 - 8);
  v36 = *(v432 + 64);
  v37 = MEMORY[0x1EEE9AC00](v442);
  v39 = &v395 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v438 = &v395 - v40;
  v441 = type metadata accessor for Date.ISO8601FormatStyle();
  v431 = *(v441 - 8);
  v41 = *(v431 + 64);
  v42 = MEMORY[0x1EEE9AC00](v441);
  v426 = &v395 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v437 = &v395 - v44;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45 = *(*(v450 - 8) + 64);
  MEMORY[0x1EEE9AC00](v450);
  v449 = &v395 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v448 = &v395 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v447 = &v395 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v451 = &v395 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v452 = &v395 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetSgMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetSgMR);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v467 = (&v395 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  v464 = (&v395 - v60);
  v454 = type metadata accessor for AggregationFunction.AggregationType();
  Description = v454[-1].Description;
  v62 = Description[8];
  MEMORY[0x1EEE9AC00](v454);
  v457 = &v395 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v463 = (&v395 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = MEMORY[0x1EEE9AC00](v66);
  v456 = &v395 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v455 = &v395 - v70;
  v71 = type metadata accessor for AggregationEvent(0);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8);
  v458 = &v395 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v472 = &v395 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v460 = &v395 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v461 = &v395 - v79;
  v470 = type metadata accessor for AggregationFunction();
  v459 = *(v470 - 1);
  v80 = *(v459 + 64);
  MEMORY[0x1EEE9AC00](v470);
  v469 = &v395 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = type metadata accessor for SQLExpression();
  v465 = v466[-1].Description;
  v82 = *(v465 + 64);
  MEMORY[0x1EEE9AC00](v466);
  v481 = &v395 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for StorableValue(0);
  v478 = *(v84 - 8);
  v85 = *(v478 + 64);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v87 = MEMORY[0x1EEE9AC00](v86);
  v89 = &v395 - v88;
  v90 = MEMORY[0x1EEE9AC00](v87);
  v91 = MEMORY[0x1EEE9AC00](v90);
  v92 = MEMORY[0x1EEE9AC00](v91);
  v93 = MEMORY[0x1EEE9AC00](v92);
  v94 = MEMORY[0x1EEE9AC00](v93);
  v95 = MEMORY[0x1EEE9AC00](v94);
  v96 = MEMORY[0x1EEE9AC00](v95);
  v480 = &v395 - v104;
  v105 = *a2;
  if (v105 == 1)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v106 = 1;
    v106[64] = 6;
    return swift_willThrow();
  }

  v417 = Description;
  v421 = v105;
  v422 = v100;
  v425 = v99;
  v420 = v98;
  v419 = v97;
  v416 = v89;
  v415 = v103;
  v424 = v96;
  v423 = v102;
  v418 = v101;
  v412 = a7;
  v413 = a8;
  v414 = a1;
  v477 = *(a2 + 1);
  v108 = v476;
  v109 = *(v476 + 16);
  v110 = MEMORY[0x1E69E7CC0];
  v411 = v34;
  v410 = v39;
  if (v109)
  {
    *&v482 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
    v475 = *(v465 + 16);
    v111 = v108 + ((*(v465 + 80) + 32) & ~*(v465 + 80));
    v112 = (v465 + 8);
    v476 = v465 + 16;
    v474 = *(v465 + 72);
    v113 = v466;
    v114 = v481;
    v110 = v482;
    v115 = v480;
    do
    {
      (v475)(v114, v111, v113);
      SQLExpressionEvaluator.execute(expression:payload:)(v115);
      if (v9)
      {
        (*v112)(v114, v113);
      }

      v9 = 0;
      (*v112)(v114, v113);
      v116 = v110;
      *&v482 = v110;
      v118 = *(v110 + 16);
      v117 = *(v110 + 24);
      if (v118 >= v117 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v117 > 1, v118 + 1, 1);
        v113 = v466;
        v116 = v482;
      }

      *(v116 + 16) = v118 + 1;
      v110 = v116;
      v115 = v480;
      outlined init with take of StorableValue(v480, v116 + ((*(v478 + 80) + 32) & ~*(v478 + 80)) + *(v478 + 72) * v118);
      v111 += v474;
      --v109;
      v114 = v481;
    }

    while (v109);
  }

  v119 = OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedAggregationMetadata;
  v120 = v9;
  v121 = specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v110);
  v122 = v471;
  v123 = v473;
  v124 = v472;
  if (v120)
  {
  }

  v125 = v121;
  v409 = v119;
  v474 = v110;
  if (v121)
  {
    if (*(v462 + 16) != v121[2])
    {

      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v140 = v468;
      *(v140 + 64) = 9;
      swift_willThrow();
    }

    v127 = 0;

    v480 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser19AggregationFunctionVGSaySDySS0F7Streams13StorableValueOGGG_AL0H0_psAE_pTg504_s14f11SQLParser19hi18VSDySS0A7Streams13kl11OGAD0C0_ps5C389_pIgngrzo_AC_AGtAdH_psAI_pIegnrzr_TR04_s12a223Streams5group33_69E06497FCCD36C7847396967BD3AC6FLL7changes2by8metadata20aggregationFunctions13resultColumns6having19expressionEvaluatorSayAA12ChangeRecordVGAM_Say0A9SQLParser13SQLExpressionVGAA20QueryPlannerMetadataCSayAN19cd92VGSayAN12ResultColumnVGAPSgAA0vR0CtKFyAA14GroupedChangesACLLVz_ALtKXEfU0_AA0Z0_pAU_SDySSAA13fG10OGtKXEfU0_Tf3nnnpf_nTf1cn_n(v126, v125);
  }

  else
  {
    v128 = *(v462 + 16);
    v129 = MEMORY[0x1E69E7CC0];
    if (v128)
    {
      *&v485 = MEMORY[0x1E69E7CC0];
      v130 = v462;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128, 0);
      v129 = v485;
      v131 = 0;
      v480 = *(v459 + 16);
      v132 = v130 + ((*(v459 + 80) + 32) & ~*(v459 + 80));
      v133 = (v459 + 8);
      v134 = *(v459 + 72);
      do
      {
        v135 = v129;
        v136 = v469;
        v137 = v470;
        (v480)(v469, v132, v470);
        AggregationFunction.newAggregation()();
        if (v131)
        {
          (*v133)(v136, v137);
          goto LABEL_25;
        }

        v481 = 0;
        (*v133)(v136, v137);
        v129 = v135;
        *&v485 = v135;
        v139 = *(v135 + 16);
        v138 = *(v135 + 24);
        if (v139 >= v138 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v138 > 1, v139 + 1, 1);
          v129 = v485;
        }

        *(v129 + 16) = v139 + 1;
        outlined init with take of Aggregation(&v482, v129 + 40 * v139 + 32);
        v132 += v134;
        --v128;
        v131 = v481;
        v124 = v472;
      }

      while (v128);
      v122 = v471;
      v123 = v473;
    }

    else
    {
      v481 = 0;
    }

    v480 = v129;
    v143 = *(v129 + 16);
    v144 = MEMORY[0x1E69E7CC0];
    if (v143)
    {
      *&v485 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143, 0);
      v145 = v480;
      v146 = 0;
      v144 = v485;
      v147 = v480 + 32;
      do
      {
        if (v146 >= *(v145 + 16))
        {
          __break(1u);
LABEL_161:

LABEL_162:

          goto LABEL_163;
        }

        outlined init with copy of Aggregation(v147, &v482);
        v148 = *(&v483 + 1);
        v149 = v484;
        __swift_project_boxed_opaque_existential_1(&v482, *(&v483 + 1));
        v150 = v481;
        v151 = (*(v149 + 40))(v148, v149);
        v481 = v150;
        if (v150)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v482);
        }

        v152 = v151;
        __swift_destroy_boxed_opaque_existential_1Tm(&v482);
        *&v485 = v144;
        v154 = *(v144 + 16);
        v153 = *(v144 + 24);
        v145 = v480;
        if (v154 >= v153 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v153 > 1, v154 + 1, 1);
          v145 = v480;
          v144 = v485;
        }

        ++v146;
        *(v144 + 16) = v154 + 1;
        *(v144 + 8 * v154 + 32) = v152;
        v147 += 40;
        v122 = v471;
        v123 = v473;
      }

      while (v143 != v146);
    }

    v155 = v468;
    v156 = v474;
    v157 = v481;
    specialized KeyedQueryPlannerMetadataCache.setValue(_:forKey:)(v144, v474);
    if (v157)
    {
    }

    v158 = v155 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord;
    specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v156);
    v280 = 0;
    if (v159)
    {

      MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
      specialized Dictionary.subscript.getter(v474, *(v158 + *(MatchingRecordCache + 28)));
      if (!v278 || (v279 = v277, , (v279 & 1) != 0))
      {
        v280 = 1;
      }
    }

    v282 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
    v283 = v158 + v282[8];
    v284 = v477;

    specialized OrderedDictionary.updateValue(_:forKey:)(v421, v284, v474);
    if (*(v158 + v282[9]) < *(*(v283 + 8) + 16))
    {
      specialized OrderedDictionary.removeFirst()();
    }

    v285 = v477;

    v286 = v282[7];

    specialized Dictionary._Variant.updateValue(_:forKey:)(0, v285, v280, v474);

    v127 = 0;
  }

  v141 = v468 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord;
  specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v474);
  v160 = v142;
  v396 = v141;
  if (!v142)
  {

    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v281 = v468;
    *(v281 + 64) = 9;
    swift_willThrow();
  }

  v161 = swift_allocObject();
  v395 = v161;
  *(v161 + 16) = v160;
  v476 = v161 + 16;
  v162 = v480;
  v400 = v480 + 32;
  v403 = (v417 + 88);
  v402 = 3;
  v401 = 4;
  v399 = (v417 + 8);
  v398 = (v417 + 96);
  v397 = (v465 + 8);
  v469 = (v477 + 64);
  v407 = v160;

  v163 = 0;
  v406 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v164 = *(v480 + 16);
    v165 = 0uLL;
    if (v163 == v164)
    {
      v166 = 0uLL;
      v167 = 0uLL;
    }

    else
    {
      if (v163 >= v164)
      {
        goto LABEL_219;
      }

      v168 = v163 + 1;
      *&v485 = v163;
      outlined init with copy of Aggregation(v400 + 40 * v163, &v485 + 8);
      v165 = v485;
      v166 = v486;
      v163 = v168;
      v167 = v487;
    }

    v482 = v165;
    v483 = v166;
    v484 = v167;
    if (!v167)
    {
      break;
    }

    v169 = v165;
    if ((v165 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x184917B58);
    }

    v405 = v163;
    if (v165 >= v162[2])
    {
      goto LABEL_214;
    }

    outlined init with copy of Aggregation(&v162[5 * v165 + 4], &v485);
    v170 = *(&v486 + 1);
    v171 = v487;
    __swift_project_boxed_opaque_existential_1(&v485, *(&v486 + 1));
    v417 = (*(v171 + 8))(v170, v171);
    v465 = v172;
    __swift_destroy_boxed_opaque_existential_1Tm(&v485);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()(v162);
      v162 = v272;
    }

    if (v169 >= v162[2])
    {
      goto LABEL_215;
    }

    v173 = &v162[5 * v169];
    v174 = v162;
    v175 = v173[7];
    v176 = v173[8];
    __swift_mutable_project_boxed_opaque_existential_1((v173 + 4), v175);
    v177 = v124;
    v178 = v124;
    v179 = v458;
    (*(v176 + 32))(v177, v458, 0, v477, v479, v175, v176);
    if (v127)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v482 + 1);
    }

    outlined init with take of StorableValue(v178, v461);
    outlined init with take of StorableValue(v179, v460);
    v408 = v174;
    v180 = v174[2];
    v404 = v169;
    if (v169 >= v180)
    {
      goto LABEL_216;
    }

    outlined init with copy of Aggregation((v173 + 4), &v485);
    v181 = *(&v486 + 1);
    v182 = v487;
    __swift_project_boxed_opaque_existential_1(&v485, *(&v486 + 1));
    v183 = (*(v182 + 40))(v181, v182);
    v481 = 0;
    v184 = v183;
    v185 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v273 = *(v185 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v185 = v274;
    }

    v124 = v472;
    v186 = v417;
    v187 = *(v185 + 16);
    if (v187 >= *(v185 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v185 = v275;
    }

    *(v185 + 16) = v187 + 1;
    v406 = v185;
    *(v185 + 8 * v187 + 32) = v184;
    __swift_destroy_boxed_opaque_existential_1Tm(&v485);
    outlined init with copy of StorableValue(v461, v422);
    v188 = v407;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v485 = v188;
    v190 = v465;
    v191 = specialized __RawDictionaryStorage.find<A>(_:)(v186, v465);
    v193 = v188[2];
    v194 = (v192 & 1) == 0;
    v195 = v193 + v194;
    if (__OFADD__(v193, v194))
    {
      goto LABEL_217;
    }

    v196 = v191;
    v197 = v192;
    v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v195))
    {
      v198 = specialized __RawDictionaryStorage.find<A>(_:)(v186, v190);
      v122 = v471;
      v123 = v473;
      if ((v197 & 1) != (v199 & 1))
      {
        goto LABEL_233;
      }

      v196 = v198;
    }

    else
    {
      v122 = v471;
      v123 = v473;
    }

    v200 = v485;
    v407 = v485;
    if (v197)
    {
      v201 = *(v485 + 56);
      v475 = *(v478 + 72);
      v202 = v475 * v196;
      v203 = v455;
      outlined init with take of StorableValue(v201 + v475 * v196, v455);
      outlined init with take of StorableValue(v422, v200[7] + v202);
      __swift_storeEnumTagSinglePayload(v203, 0, 1, v424);
    }

    else
    {
      *(v485 + 8 * (v196 >> 6) + 64) |= 1 << v196;
      v204 = (v200[6] + 16 * v196);
      *v204 = v186;
      v204[1] = v190;
      v205 = v200[7];
      v475 = *(v478 + 72);
      outlined init with take of StorableValue(v422, v205 + v475 * v196);
      v206 = v200[2];
      v207 = __OFADD__(v206, 1);
      v208 = v206 + 1;
      if (v207)
      {
        goto LABEL_220;
      }

      v200[2] = v208;
      v203 = v455;
      __swift_storeEnumTagSinglePayload(v455, 1, 1, v424);
    }

    v209 = v457;
    outlined destroy of UUID?(v203, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    v210 = v423;
    outlined init with copy of StorableValue(v460, v423);
    v211 = v456;
    specialized Dictionary._Variant.updateValue(_:forKey:)(v210, v465, v456);

    outlined destroy of UUID?(v211, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    if (v404 >= *(v462 + 16))
    {
      goto LABEL_218;
    }

    v212 = v462 + ((*(v459 + 80) + 32) & ~*(v459 + 80)) + *(v459 + 72) * v404;
    AggregationFunction.aggregationType.getter(v209);
    v213 = v454;
    v214 = (*v403)(v209, v454);
    v215 = v214 == v402 || v214 == v401;
    v127 = v481;
    v216 = v467;
    v162 = v408;
    if (!v215)
    {
      outlined destroy of StorableValue(v460, type metadata accessor for AggregationEvent);
      outlined destroy of StorableValue(v461, type metadata accessor for AggregationEvent);
      (*v399)(v209, v213);
      goto LABEL_104;
    }

    (*v398)(v209, v213);
    (*v397)(v209, v466);
    v217 = v461;
    v218 = v460;
    if (static StorableValue.== infix(_:_:)(v461, v460))
    {
      outlined destroy of StorableValue(v218, type metadata accessor for AggregationEvent);
      outlined destroy of StorableValue(v217, type metadata accessor for AggregationEvent);
      goto LABEL_104;
    }

    v219 = v396;
    specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(v474);
    if (v127)
    {

      outlined destroy of StorableValue(v460, type metadata accessor for AggregationEvent);
      outlined destroy of StorableValue(v461, type metadata accessor for AggregationEvent);

      __swift_destroy_boxed_opaque_existential_1Tm(&v482 + 1);
    }

    v481 = 0;
    v225 = 0;
    if (v220)
    {

      v221 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
      specialized Dictionary.subscript.getter(v474, *(v219 + *(v221 + 28)));
      if (!v223 || (v224 = v222, , (v224 & 1) != 0))
      {
        v225 = 1;
      }
    }

    v226 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
    v227 = v219 + v226[8];
    v228 = v477;

    specialized OrderedDictionary.updateValue(_:forKey:)(v421, v228, v474);
    if (*(v219 + v226[9]) < *(*(v227 + 8) + 16))
    {
      specialized OrderedDictionary.removeFirst()();
    }

    v229 = v477;

    v230 = v226[7];

    specialized Dictionary._Variant.updateValue(_:forKey:)(0, v229, v225, v474);

    v231 = 1 << *(v229 + 32);
    if (v231 < 64)
    {
      v232 = ~(-1 << v231);
    }

    else
    {
      v232 = -1;
    }

    v127 = v232 & *(v229 + 64);
    v233 = (v231 + 63) >> 6;

    v234 = 0;
    v235 = v469;
    v162 = &_sSS3key_12BiomeStreams13StorableValueO5valuetMd;
    v465 = v233;
    if (v127)
    {
      goto LABEL_85;
    }

    while (1)
    {
LABEL_86:
      v237 = v234 + 1;
      if (__OFADD__(v234, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      if (v237 >= v233)
      {
        break;
      }

      v127 = *&v235[8 * v237];
      ++v234;
      if (v127)
      {
        v236 = v123;
        v234 = v237;
        goto LABEL_90;
      }
    }

    v236 = v123;
    v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
    __swift_storeEnumTagSinglePayload(v216, 1, 1, v271);
    v127 = 0;
    while (2)
    {
      v247 = v216;
      v248 = v464;
      outlined init with take of UUID?(v247, v464, &_sSS3key_12BiomeStreams13StorableValueO5valuetSgMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetSgMR);
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
      if (__swift_getEnumTagSinglePayload(v248, 1, v249) != 1)
      {
        v251 = *v248;
        v250 = v248[1];
        outlined init with take of StorableValue(v248 + *(v249 + 48), v425);
        v252 = v476;
        v253 = *v476;
        v122 = swift_isUniquelyReferenced_nonNull_native();
        *&v485 = *v252;
        v254 = v485;
        v255 = specialized __RawDictionaryStorage.find<A>(_:)(v251, v250);
        v257 = v256;
        v258 = *(v254 + 16);
        v259 = (v256 & 1) == 0;
        if (__OFADD__(v258, v259))
        {
          __break(1u);
          goto LABEL_166;
        }

        v260 = v255;
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v122, v258 + v259))
        {
          v261 = specialized __RawDictionaryStorage.find<A>(_:)(v251, v250);
          if ((v257 & 1) != (v262 & 1))
          {
            goto LABEL_233;
          }

          v260 = v261;
        }

        if (v257)
        {

          v263 = v485;
          v264 = v475 * v260;
          v265 = v463;
          outlined init with take of StorableValue(*(v485 + 56) + v475 * v260, v463);
          outlined init with take of StorableValue(v425, v263[7] + v264);
          v266 = 0;
          v267 = v424;
          v123 = v473;
        }

        else
        {
          v263 = v485;
          *(v485 + 8 * (v260 >> 6) + 64) |= 1 << v260;
          v268 = (v263[6] + 16 * v260);
          *v268 = v251;
          v268[1] = v250;
          outlined init with take of StorableValue(v425, v263[7] + v475 * v260);
          v269 = v263[2];
          v207 = __OFADD__(v269, 1);
          v270 = v269 + 1;
          if (v207)
          {
            __break(1u);
            goto LABEL_171;
          }

          v263[2] = v270;
          v266 = 1;
          v267 = v424;
          v123 = v473;
          v265 = v463;
        }

        v235 = v469;
        v162 = &_sSS3key_12BiomeStreams13StorableValueO5valuetMd;
        __swift_storeEnumTagSinglePayload(v265, v266, 1, v267);
        outlined destroy of UUID?(v265, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        *v476 = v263;
        v216 = v467;
        v233 = v465;
        if (!v127)
        {
          goto LABEL_86;
        }

LABEL_85:
        v236 = v123;
        v237 = v234;
LABEL_90:
        v238 = __clz(__rbit64(v127));
        v127 &= v127 - 1;
        v239 = v238 | (v237 << 6);
        v240 = (*(v477 + 48) + 16 * v239);
        v241 = *v240;
        v242 = v240[1];
        v243 = v423;
        outlined init with copy of StorableValue(*(v477 + 56) + v475 * v239, v423);
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
        v245 = *(v244 + 48);
        v246 = v467;
        *v467 = v241;
        v246[1] = v242;
        v216 = v246;
        outlined init with take of StorableValue(v243, v246 + v245);
        __swift_storeEnumTagSinglePayload(v216, 0, 1, v244);

        continue;
      }

      break;
    }

    outlined destroy of StorableValue(v460, type metadata accessor for AggregationEvent);
    outlined destroy of StorableValue(v461, type metadata accessor for AggregationEvent);
    v127 = v481;
    v162 = v408;
    v124 = v472;
    v123 = v236;
    v122 = v471;
LABEL_104:
    __swift_destroy_boxed_opaque_existential_1Tm(&v482 + 1);
    v163 = v405;
  }

  specialized KeyedQueryPlannerMetadataCache.setValue(_:forKey:)(v406, v474);
  if (v127)
  {
  }

LABEL_118:

  v287 = *v414;
  v288 = *(*v414 + 16);
  v289 = v395;
  v408 = v162;
  v476 = v287;
  if (v288)
  {
    v290 = *(v287 + 40);
    Hasher.init(_seed:)();
    v291 = v474;
    v477 = *(v474 + 16);
    MEMORY[0x1865F6890]();
    v292 = *(v291 + 16);
    v481 = v127;
    v293 = v453;
    v294 = v420;
    if (v292)
    {
      v295 = v474 + ((*(v478 + 80) + 32) & ~*(v478 + 80));
      v472 = (v432 + 104);
      v480 = *(v478 + 72);
      v470 = (v433 + 104);
      v469 = (v434 + 104);
      LODWORD(v468) = *MEMORY[0x1E6969360];
      v467 = (v435 + 104);
      v463 = (v436 + 32);
      LODWORD(v466) = *MEMORY[0x1E6969358];
      LODWORD(v465) = *MEMORY[0x1E6969370];
      v462 = v431 + 8;
      LODWORD(v464) = *MEMORY[0x1E6969380];
      while (1)
      {
        outlined init with copy of StorableValue(v295, v294);
        outlined init with copy of StorableValue(v294, v419);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            if (*(v419 + 8))
            {
              *&v485 = *v419;
              BYTE8(v485) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_128:
              v298 = Optional<A>.hashValue.getter();
LABEL_130:
              MEMORY[0x1865F6890](v298);
              v293 = v453;
LABEL_131:
              outlined destroy of StorableValue(v420, type metadata accessor for StorableValue);
            }

            else
            {
              v319 = floor(*v419);
              if ((*&v319 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_225;
              }

              if (v319 <= -9.22337204e18)
              {
                goto LABEL_226;
              }

              if (v319 >= 9.22337204e18)
              {
                goto LABEL_227;
              }

              Int.hashValue.getter();
              v320 = Int.hashValue.getter();
              MEMORY[0x1865F6890](v320);
              outlined destroy of StorableValue(v420, type metadata accessor for StorableValue);
LABEL_143:
              v293 = v453;
            }

            v295 += v480;
            --v292;
            v294 = v420;
            if (!v292)
            {
              goto LABEL_144;
            }

            break;
          case 2u:
            v299 = v452;
            outlined init with take of UUID?(v419, v452, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v300 = v299;
            v301 = v451;
            outlined init with copy of Date?(v300, v451, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v302 = type metadata accessor for Date();
            if (__swift_getEnumTagSinglePayload(v301, 1, v302) == 1)
            {
              outlined destroy of UUID?(v301, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              Hasher._combine(_:)(0);
            }

            else
            {
              v475 = v302;
              (*v472)(v438, v468, v442);
              (*v470)(v123, v466, v443);
              (*v469)(v122, v465, v444);
              (*v467)(v293, v464, v445);
              v310 = v122;
              v311 = v440;
              TimeZone.init(secondsFromGMT:)();
              v312 = v446;
              if (__swift_getEnumTagSinglePayload(v311, 1, v446) == 1)
              {
                goto LABEL_231;
              }

              (*v463)(v439, v311, v312);
              v313 = v437;
              Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
              v314 = v451;
              v315 = Date.ISO8601Format(_:)();
              v317 = v316;
              (*v462)(v313, v441);
              (*(*(v475 - 8) + 8))(v314);
              v318 = MEMORY[0x1865F62C0](v315, v317);

              Hasher._combine(_:)(1u);
              MEMORY[0x1865F6890](v318);
              v122 = v310;
            }

            outlined destroy of UUID?(v452, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined destroy of StorableValue(v420, type metadata accessor for StorableValue);
            v127 = v481;
            goto LABEL_143;
          case 3u:
          case 4u:
            v296 = *(v419 + 8);
            *&v485 = *v419;
            *(&v485 + 1) = v296;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v297 = Optional<A>.hashValue.getter();
            v127 = v481;

            v298 = v297;
            v123 = v473;
            goto LABEL_130;
          case 5u:
            v305 = *(v419 + 8);
            *&v485 = *v419;
            v304 = v485;
            *(&v485 + 1) = v305;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
            lazy protocol witness table accessor for type Data and conformance Data();
            v122 = v471;
            v306 = Optional<A>.hashValue.getter();
            MEMORY[0x1865F6890](v306);
            v293 = v453;
            v127 = v481;
            v307 = v305;
            v123 = v473;
            outlined consume of Data?(v304, v307);
            goto LABEL_131;
          case 6u:
            v308 = v449;
            outlined init with take of UUID?(v419, v449, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            v309 = Optional<A>.hashValue.getter();
            MEMORY[0x1865F6890](v309);
            v293 = v453;
            outlined destroy of UUID?(v308, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            goto LABEL_131;
          case 7u:
            v298 = 0;
            goto LABEL_130;
          default:
            v303 = *(v419 + 8);
            *&v485 = *v419;
            BYTE8(v485) = v303;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
            goto LABEL_128;
        }
      }
    }

LABEL_144:
    v321 = Hasher._finalize()();
    v322 = v476;
    v323 = v476 + 56;
    v324 = -1 << *(v476 + 32);
    v325 = v321 & ~v324;
    v289 = v395;
    if ((*(v476 + 56 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v325))
    {
      v326 = ~v324;
      v480 = v476 + 56;
      v475 = ~v324;
      do
      {
        v327 = *(*(v322 + 48) + 8 * v325);
        if (*(v327 + 16) == v477)
        {
          if (!v477 || v327 == v474)
          {
            goto LABEL_162;
          }

          v328 = (*(v478 + 80) + 32) & ~*(v478 + 80);
          v329 = v327 + v328;
          v330 = v474 + v328;
          v331 = *(*(v322 + 48) + 8 * v325);

          v332 = 0;
          while (1)
          {
            if (v332 >= *(v327 + 16))
            {
              goto LABEL_221;
            }

            v333 = *(v478 + 72) * v332;
            v334 = v423;
            outlined init with copy of StorableValue(v329 + v333, v423);
            if (v332 >= *(v474 + 16))
            {
              goto LABEL_222;
            }

            v335 = v418;
            outlined init with copy of StorableValue(v330 + v333, v418);
            v336 = static StorableValue.== infix(_:_:)(v334, v335);
            outlined destroy of StorableValue(v335, type metadata accessor for StorableValue);
            outlined destroy of StorableValue(v334, type metadata accessor for StorableValue);
            if ((v336 & 1) == 0)
            {
              break;
            }

            if (v477 == ++v332)
            {
              goto LABEL_161;
            }
          }

          v323 = v480;
          v127 = v481;
          v289 = v395;
          v322 = v476;
          v326 = v475;
        }

        v325 = (v325 + 1) & v326;
      }

      while (((*(v323 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v325) & 1) != 0);
    }
  }

  LOBYTE(v255) = passesHaving #1 (payload:) in closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(v407, v412, v413, v289, v479);
  v250 = v127;
  if (v127)
  {
  }

LABEL_166:
  v481 = v250;
  if (v255)
  {
    v340 = v414;
    v341 = v414[1];
    v342 = swift_isUniquelyReferenced_nonNull_native();
    *&v482 = v340[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v407, v474, v342);
    v340[1] = v482;
    goto LABEL_172;
  }

LABEL_171:

LABEL_172:
  v346 = *(v476 + 40);
  Hasher.init(_seed:)();
  v347 = v474;
  v480 = *(v474 + 16);
  MEMORY[0x1865F6890]();
  v348 = *(v347 + 16);
  v349 = v416;
  if (v348)
  {
    v350 = v474 + ((*(v478 + 80) + 32) & ~*(v478 + 80));
    v473 = (v432 + 104);
    v351 = *(v478 + 72);
    v472 = (v433 + 104);
    v471 = (v434 + 104);
    LODWORD(v470) = *MEMORY[0x1E6969360];
    v469 = (v435 + 104);
    v465 = v436 + 32;
    LODWORD(v468) = *MEMORY[0x1E6969358];
    LODWORD(v467) = *MEMORY[0x1E6969370];
    v464 = (v431 + 8);
    LODWORD(v466) = *MEMORY[0x1E6969380];
    v475 = v351;
    while (1)
    {
      outlined init with copy of StorableValue(v350, v349);
      outlined init with copy of StorableValue(v349, v415);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (*(v415 + 8))
          {
            *&v485 = *v415;
            BYTE8(v485) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_181:
            v354 = Optional<A>.hashValue.getter();
LABEL_183:
            MEMORY[0x1865F6890](v354);
LABEL_190:
            outlined destroy of StorableValue(v416, type metadata accessor for StorableValue);
          }

          else
          {
            v375 = floor(*v415);
            if ((*&v375 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_228;
            }

            if (v375 <= -9.22337204e18)
            {
              goto LABEL_229;
            }

            if (v375 >= 9.22337204e18)
            {
              goto LABEL_230;
            }

            Int.hashValue.getter();
            v376 = Int.hashValue.getter();
            MEMORY[0x1865F6890](v376);
            outlined destroy of StorableValue(v416, type metadata accessor for StorableValue);
            v351 = v475;
          }

          v350 += v351;
          --v348;
          v349 = v416;
          if (!v348)
          {
            goto LABEL_197;
          }

          break;
        case 2u:
          v355 = v447;
          outlined init with take of UUID?(v415, v447, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v356 = v355;
          v357 = v448;
          outlined init with copy of Date?(v356, v448, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v477 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(v357, 1, v477) == 1)
          {
            outlined destroy of UUID?(v448, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            Hasher._combine(_:)(0);
          }

          else
          {
            (*v473)(v410, v470, v442);
            (*v472)(v411, v468, v443);
            (*v471)(v427, v467, v444);
            (*v469)(v428, v466, v445);
            v367 = v430;
            TimeZone.init(secondsFromGMT:)();
            v368 = v446;
            if (__swift_getEnumTagSinglePayload(v367, 1, v446) == 1)
            {
              goto LABEL_232;
            }

            (*v465)(v429, v367, v368);
            v369 = v426;
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v370 = v448;
            v371 = Date.ISO8601Format(_:)();
            v373 = v372;
            (*v464)(v369, v441);
            (*(*(v477 - 8) + 8))(v370);
            v374 = MEMORY[0x1865F62C0](v371, v373);

            Hasher._combine(_:)(1u);
            MEMORY[0x1865F6890](v374);
            v351 = v475;
          }

          v364 = v447;
          v365 = &_s10Foundation4DateVSgMd;
          v366 = &_s10Foundation4DateVSgMR;
LABEL_189:
          outlined destroy of UUID?(v364, v365, v366);
          goto LABEL_190;
        case 3u:
        case 4u:
          v352 = *(v415 + 8);
          *&v485 = *v415;
          *(&v485 + 1) = v352;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v353 = Optional<A>.hashValue.getter();

          v354 = v353;
          goto LABEL_183;
        case 5u:
          v360 = *(v415 + 8);
          *&v485 = *v415;
          v359 = v485;
          *(&v485 + 1) = v360;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          lazy protocol witness table accessor for type Data and conformance Data();
          v361 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v361);
          outlined consume of Data?(v359, v360);
          goto LABEL_190;
        case 6u:
          v362 = v449;
          outlined init with take of UUID?(v415, v449, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v363 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v363);
          v364 = v362;
          v365 = &_s10Foundation4UUIDVSgMd;
          v366 = &_s10Foundation4UUIDVSgMR;
          goto LABEL_189;
        case 7u:
          v354 = 0;
          goto LABEL_183;
        default:
          v358 = *(v415 + 8);
          *&v485 = *v415;
          BYTE8(v485) = v358;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
          goto LABEL_181;
      }
    }
  }

LABEL_197:
  v377 = Hasher._finalize()();
  v378 = v476;
  v379 = v476 + 56;
  v380 = -1 << *(v476 + 32);
  v381 = v377 & ~v380;
  if ((*(v476 + 56 + ((v381 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v381))
  {
    v382 = ~v380;
    v477 = v476 + 56;
    v475 = ~v380;
    do
    {
      v383 = *(*(v378 + 48) + 8 * v381);
      if (*(v383 + 16) == v480)
      {
        if (!v480 || v383 == v474)
        {
          goto LABEL_163;
        }

        v384 = (*(v478 + 80) + 32) & ~*(v478 + 80);
        v385 = v383 + v384;
        v386 = v474 + v384;

        v387 = 0;
        while (1)
        {
          if (v387 >= *(v383 + 16))
          {
            goto LABEL_223;
          }

          v388 = *(v478 + 72) * v387;
          v389 = v423;
          outlined init with copy of StorableValue(v385 + v388, v423);
          if (v387 >= *(v474 + 16))
          {
            goto LABEL_224;
          }

          v390 = v418;
          outlined init with copy of StorableValue(v386 + v388, v418);
          v391 = static StorableValue.== infix(_:_:)(v389, v390);
          outlined destroy of StorableValue(v390, type metadata accessor for StorableValue);
          outlined destroy of StorableValue(v389, type metadata accessor for StorableValue);
          if ((v391 & 1) == 0)
          {
            break;
          }

          if (v480 == ++v387)
          {
            goto LABEL_162;
          }
        }

        v378 = v476;
        v379 = v477;
        v382 = v475;
      }

      v381 = (v381 + 1) & v382;
    }

    while (((*(v379 + ((v381 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v381) & 1) != 0);
  }

  v392 = v414;
  v393 = *v414;
  swift_isUniquelyReferenced_nonNull_native();
  *&v482 = *v392;

  specialized _NativeSet.insertNew(_:at:isUnique:)(v394, v381);
  *v392 = v482;
LABEL_163:
  v337 = *(v395 + 16);
  v338 = v481;
  v339 = passesHaving #1 (payload:) in closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(v337, v412, v413, v395, v479);
  if (v338)
  {

LABEL_25:
  }

  if ((v339 & 1) == 0)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v474);
  }

  v343 = v414;
  v344 = v414[2];
  v345 = swift_isUniquelyReferenced_nonNull_native();
  *&v482 = v343[2];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v337, v474, v345);

  v343[2] = v482;
  return result;
}