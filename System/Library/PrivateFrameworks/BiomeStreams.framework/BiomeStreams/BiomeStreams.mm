uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BiomeLibraryNodeBridge()
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = getBiomeLibraryNodeSymbolLoc_ptr;
  v15 = getBiomeLibraryNodeSymbolLoc_ptr;
  if (!getBiomeLibraryNodeSymbolLoc_ptr)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getBiomeLibraryNodeSymbolLoc_block_invoke;
    v11[3] = &unk_1E6E52EB0;
    v11[4] = &v12;
    __getBiomeLibraryNodeSymbolLoc_block_invoke(v11);
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    BiomeLibraryNodeBridge_cold_2();
  }

  v1 = v0();
  if (!v1)
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BiomeLibraryNodeBridge_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return v1;
}

void sub_1848F0DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryInternalLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = BiomeLibraryInternalLibraryCore_frameworkLibrary;
  v6 = BiomeLibraryInternalLibraryCore_frameworkLibrary;
  if (!BiomeLibraryInternalLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E6E53AF8;
    v8 = *off_1E6E53B08;
    v9 = 0;
    v4[3] = _sl_dlopen();
    BiomeLibraryInternalLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1848F0F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BMSQLEventMetadataColumn *BMEventTimestampSQLColumn()
{
  v0 = [BMSQLEventMetadataColumn alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __BMEventTimestampSQLColumn_block_invoke_2;
  v5[3] = &unk_1E6E53360;
  v6 = &__block_literal_global_10;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BMEventTimestampSQLColumn_block_invoke_3;
  v3[3] = &unk_1E6E53388;
  v4 = &__block_literal_global_10;
  v1 = [(BMSQLEventMetadataColumn *)v0 initWithName:@"eventTimestamp" dataType:3 requestOnly:0 extractBlock:v5 setValueBlock:v3];

  return v1;
}

BMSQLEventMetadataColumn *BMEventBodyDataSQLColumn()
{
  v0 = [BMSQLEventMetadataColumn initWithName:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" dataType:@"_eventBodyData" requestOnly:4 extractBlock:1 setValueBlock:?];

  return v0;
}

BMSQLEventMetadataColumn *BMEventClassNameSQLColumn()
{
  v0 = [BMSQLEventMetadataColumn initWithName:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" dataType:@"_eventClassName" requestOnly:2 extractBlock:1 setValueBlock:?];

  return v0;
}

id BiomeLibraryInternalNodeBridge()
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_12;
  }

  if (!BiomeLibraryInternalLibraryCore() || !BiomeLibraryInternalLibraryCore() || !getBiomeLibraryInternalNodeSymbolLoc())
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BiomeLibraryInternalNodeBridge_cold_3(v2, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_11;
  }

  BiomeLibraryInternalNodeSymbolLoc = getBiomeLibraryInternalNodeSymbolLoc();
  if (!BiomeLibraryInternalNodeSymbolLoc)
  {
    BiomeLibraryInternalNodeBridge_cold_2();
  }

  v1 = BiomeLibraryInternalNodeSymbolLoc();
  if (!v1)
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BiomeLibraryInternalNodeBridge_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

LABEL_11:

LABEL_12:
    v1 = 0;
  }

  return v1;
}

uint64_t getBiomeLibraryInternalNodeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBiomeLibraryInternalNodeSymbolLoc_ptr;
  v6 = getBiomeLibraryInternalNodeSymbolLoc_ptr;
  if (!getBiomeLibraryInternalNodeSymbolLoc_ptr)
  {
    v1 = BiomeLibraryInternalLibrary();
    v4[3] = dlsym(v1, "BiomeLibraryInternalNode");
    getBiomeLibraryInternalNodeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1848F1488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryAndInternalLibraryNode()
{
  v0 = BiomeLibraryNodeBridge();
  v1 = BiomeLibraryInternalNodeBridge();

  return objc_opt_class();
}

uint64_t getEnumTagSinglePayload for UpdatedObjectDiffConfig(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    OUTLINED_FUNCTION_42_0();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 16))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v11;

      return v12;
    }
  }

  return 0;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 2);
  if (v6 <= v9)
  {
    v10 = *(v0 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_1_18();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = v0 + 32;
  if (v1)
  {
    if (v11 != v0 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMR);
  OUTLINED_FUNCTION_19_3();
  v9 = type metadata accessor for AggregationFunction();
  OUTLINED_FUNCTION_83(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(type metadata accessor for AggregationFunction, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMR);
    v9 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_18();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMd, &_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMR);
    v9 = OUTLINED_FUNCTION_22_2();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_72();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS12BiomeStreams13StorableValueOGMd, &_sSDySS12BiomeStreams13StorableValueOGMR);
    OUTLINED_FUNCTION_72();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
  v9 = OUTLINED_FUNCTION_19_3();
  v10 = type metadata accessor for StorableValue(v9);
  OUTLINED_FUNCTION_83(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(type metadata accessor for StorableValue, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_72();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams11Aggregation_pMd, &_s12BiomeStreams11Aggregation_pMR);
    OUTLINED_FUNCTION_72();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v9 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_18();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_14_2();
  if (v3)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v9 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_18();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  OUTLINED_FUNCTION_19_3();
  v9 = type metadata accessor for Schema();
  OUTLINED_FUNCTION_83(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(type metadata accessor for Schema, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams8DataflowVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams8DataflowVGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 128);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[128 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy12BiomeStreams28MaterializedViewPhysicalPlanVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams28MaterializedViewPhysicalPlanVGMR);
  v9 = OUTLINED_FUNCTION_19_3();
  v10 = type metadata accessor for MaterializedViewPhysicalPlan(v9);
  OUTLINED_FUNCTION_83(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(type metadata accessor for MaterializedViewPhysicalPlan, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

uint64_t static LibraryBase.view(legacyViewName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4);
  result = v7(v6);
  if (!*(result + 16))
  {
LABEL_16:

    return OUTLINED_FUNCTION_104();
  }

  v9 = 0;
  v10 = result + 32;
  v26 = result;
  v23 = result + 32;
  v24 = *(result + 16);
  while (2)
  {
    if (v9 < *(result + 16))
    {
      v25 = v9 + 1;
      OUTLINED_FUNCTION_18_2(*(v10 + 16 * v9), *(v10 + 16 * v9 + 8));
      result = v11();
      v12 = result;
      v13 = result + 40;
      v14 = -*(result + 16);
      v15 = -1;
      while (v14 + v15 != -1)
      {
        if (++v15 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v16 = *(v13 - 8);
        v17 = *(*v13 + 24);
        v18 = OUTLINED_FUNCTION_104();
        if (v19(v18) == v5 && v20 == v4)
        {

          goto LABEL_16;
        }

        v13 += 16;
        v22 = OUTLINED_FUNCTION_13_2();

        if (v22)
        {

          goto LABEL_16;
        }
      }

      v9 = v25;
      result = v26;
      v10 = v23;
      if (v25 != v24)
      {
        continue;
      }

      goto LABEL_16;
    }

    break;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UnifiedLibrary.Library.databaseResources.getter()
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = static UnifiedLibrary.Library.lockedLibraries;

    os_unfair_lock_lock(v0 + 6);
    v1 = *&v0[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v0 + 6);

    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(v3 - 8);
      v6 = (*(*v3 + 8))();
      v7 = *(v6 + 16);
      v8 = *(v4 + 16);
      if (__OFADD__(v8, v7))
      {
        break;
      }

      v9 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v4 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v10;
      }

      if (*(v9 + 16))
      {
        v11 = *(v4 + 16);
        if ((*(v4 + 24) >> 1) - v11 < v7)
        {
          goto LABEL_20;
        }

        memcpy((v4 + 16 * v11 + 32), (v9 + 32), 16 * v7);

        if (v7)
        {
          v12 = *(v4 + 16);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_21;
          }

          *(v4 + 16) = v14;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_19;
        }
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v4;
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return outlined copy of LibraryArtifact.Table?(a1, v1);
}

unint64_t OUTLINED_FUNCTION_12_1(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = *(a5 + 48);
  return result;
}

void OUTLINED_FUNCTION_99()
{
  v1 = *(v0 - 336);
  v2 = *(v0 - 216);
  v3 = *(v0 - 248);
}

uint64_t OUTLINED_FUNCTION_99_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v2 = *(v0 - 320);

  return Optional<A>.hashValue.getter();
}

void OUTLINED_FUNCTION_11()
{
  v2 = v1 + *(v0 + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2)
{

  return outlined copy of LibraryArtifact.Table?(a1, a2);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return errcode();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  result = v1 + *(v0 + 40);
  v4 = *(v2 - 152);
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_5_4()
{
  v2 = *(v0 - 248);
  v1 = *(v0 - 240);
  v3 = *(v0 - 272);
  v4 = *(v0 - 512);
}

void OUTLINED_FUNCTION_5_6(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 288) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t OUTLINED_FUNCTION_5_8()
{
  v3 = *v1;

  return scanner_errposition(v3, v0);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1)
{
  v4 = *(v2 + 16);
  result = a1 + *(v1 + 36);
  v6 = *(v3 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_3()
{
  v2 = (v1 + *(v0 + 44));
  *v2 = 7235949;
  v2[1] = 0xE300000000000000;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return errcode();
}

void OUTLINED_FUNCTION_10_3()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  _StringGuts.grow(_:)(34);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return scanner_errposition(v1, v0);
}

uint64_t outlined init with take of MaterializedViewPhysicalPlan(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v4 = *(v2 - 96);
  *v4 = v0;
  v4[1] = v1;

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 64) = 8;
}

uint64_t OUTLINED_FUNCTION_19_4()
{
  v5 = v0;
  v6 = *(v3 - 208);

  return _s10Foundation4UUIDVSgWOhTm_0(v5, v2, v1);
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  v1 = **(v0 - 144);
  result = *(v0 - 216);
  v3 = *(v0 - 128);
  return result;
}

uint64_t IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, const char *a7, uint64_t a8)
{
  v49 = a8;
  v55 = a3;
  v56 = a7;
  v48 = a5;
  v54 = a1;
  v12 = type metadata accessor for OSSignpostID();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v53 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45[-v21];
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v52 = v8;
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();

  v25 = OS_os_log.signpostsEnabled.getter();
  v51 = a2;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v46 = v24;
    v27 = v26;
    v28 = swift_slowAlloc();
    v47 = v12;
    v57 = v28;
    *v27 = 136446722;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, a6, &v57);
    *(v27 + 12) = 2082;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, a4, &v57);
    *(v27 + 22) = 2082;
    *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, a2, &v57);
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v23, v46, v29, v56, "stream:%{public}s database:%{public}s view:%{public}s", v27, 0x20u);
    swift_arrayDestroy();
    v12 = v47;
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
  }

  v30 = v22;
  v31 = v53;
  (*(v53 + 16))(v19, v22, v12);
  v32 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_35_0(v32);
  v33 = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_3_9();
    swift_once();
  }

  v34 = v55;
  if (static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(v55, a4))
  {
    *&v45[-64] = MEMORY[0x1EEE9AC00](v54);
    *&v45[-56] = v35;
    *&v45[-48] = v34;
    *&v45[-40] = a4;
    v36 = v52;
    *&v45[-32] = v52;
    *&v45[-24] = v37;
    *&v45[-16] = v38;
    v39 = v50;
    (*(v38 + 24))();
    if (!v39)
    {
      v42 = v36;
      v43 = v33;
      v40 = v56;
      goto LABEL_11;
    }

    v40 = v56;
  }

  else
  {
    lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    OUTLINED_FUNCTION_63();
    *v41 = v34;
    *(v41 + 8) = a4;
    *(v41 + 16) = 0;
    swift_willThrow();

    v40 = v56;
    v36 = v52;
  }

  v42 = v36;
  v43 = v33;
LABEL_11:
  $defer #1 () in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(v42, v43, v40);

  return (*(v31 + 8))(v30, v12);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  v2 = *(v0 - 296);
}

void OUTLINED_FUNCTION_33_3()
{

  JUMPOUT(0x1865F7B70);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return swift_allocError();
}

uint64_t closure #1 in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a7;
  v91 = a6;
  v98 = a5;
  v99 = a1;
  v95 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v10 = *(v95 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v95);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v88 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v94 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v88 - v21;
  if (one-time initialization token for compute != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logging.compute);

  v88 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v96 = v14;
  v89 = a4;
  v90 = a3;
  if (v26)
  {
    v27 = a3;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v103 = v29;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, a2, &v103);
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, a4, &v103);
    _os_log_impl(&dword_1848EE000, v24, v25, "IncrementalViewManager: updating materialized view for %s in %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865F7B70](v29, -1, -1);
    MEMORY[0x1865F7B70](v28, -1, -1);
  }

  v30 = 0;
  v31 = *(v98 + 16);
  v32 = *(v31 + 16);
  while (1)
  {
    if (v32 == v30)
    {
      v37 = 1;
      v10 = v97;
      goto LABEL_17;
    }

    if (v30 >= *(v31 + 16))
    {
      __break(1u);
LABEL_33:

      goto LABEL_23;
    }

    outlined init with copy of MaterializedViewPhysicalPlan(v31 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v16);
    MaterializedView.name.getter();
    v33 = String.lowercased()();

    v34 = String.lowercased()();
    if (v33._countAndFlagsBits == v34._countAndFlagsBits && v33._object == v34._object)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_16;
    }

    outlined destroy of MaterializedViewPhysicalPlan(v16);
    ++v30;
  }

LABEL_16:
  v10 = v97;
  outlined init with take of MaterializedViewPhysicalPlan(v16, v97);
  v37 = 0;
LABEL_17:
  v38 = v95;
  __swift_storeEnumTagSinglePayload(v10, v37, 1, v95);
  v39 = v94;
  outlined init with copy of Date?(v10, v94, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v38);
  v32 = v96;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of UUID?(v39, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
    lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    swift_allocError();
    *v41 = v99;
    *(v41 + 8) = a2;
    *(v41 + 16) = 3;
    swift_willThrow();

    return outlined destroy of UUID?(v10, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  }

  outlined init with take of MaterializedViewPhysicalPlan(v39, v96);
  v42 = v93;
  v43 = IncrementalViewManager.cachedDatabaseWithAccess(for:)(v91, v92);
  if (v42)
  {
    goto LABEL_23;
  }

  v44 = v43;
  v45 = *(v43 + 2);
  v46 = sqlite3_exec(v45, "begin", 0, 0, 0);
  if (v46)
  {
    v47 = BMSQLDatabaseError(v46, v45, 0);
    swift_getErrorValue();
    v48 = Error.localizedDescription.getter();
    v50 = v49;

    v103 = v48;
    v104 = v50;
    strcpy(v102, "BMSQLDatabase");
    v102[7] = -4864;
    v100 = 0x62617461444C5153;
    v101 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v51 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v53 = v52;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v54 = xmmword_184D29AB0;
    *(v54 + 16) = v51;
    *(v54 + 24) = v53;
    *(v54 + 32) = 1;
    goto LABEL_22;
  }

  v57 = v89;
  IncrementalViewManager.update(database:materializedViewPlan:databaseName:)(*(v44 + 16), v32, v90, v89);
  v58 = *(v44 + 16);
  v59 = sqlite3_exec(v58, "commit", 0, 0, 0);
  if (!v59)
  {

    v16 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v79))
    {
      v80 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103 = v98;
      *v80 = 136315650;
      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, a2, &v103);
      *(v80 + 12) = 2080;
      *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v57, &v103);
      *(v80 + 22) = 2080;
      v81 = [*(v44 + 24) description];
      v82 = v32;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v44;
      v85 = v84;

      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v103);

      *(v80 + 24) = v86;
      _os_log_impl(&dword_1848EE000, v16, v79, "IncrementalViewManager: updated materialized view for %s in %s. Access assertion: %s", v80, 0x20u);
      v87 = v98;
      swift_arrayDestroy();
      MEMORY[0x1865F7B70](v87, -1, -1);
      MEMORY[0x1865F7B70](v80, -1, -1);

      v55 = v82;
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v60 = BMSQLDatabaseError(v59, v58, 0);
  swift_getErrorValue();
  v61 = Error.localizedDescription.getter();
  v63 = v62;

  v103 = v61;
  v104 = v63;
  strcpy(v102, "BMSQLDatabase");
  v102[7] = -4864;
  v100 = 0x62617461444C5153;
  v101 = 0xEB00000000657361;
  lazy protocol witness table accessor for type String and conformance String();
  v64 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v66 = v65;

  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  v67 = swift_allocError();
  *v68 = xmmword_184D29AC0;
  *(v68 + 16) = v64;
  *(v68 + 24) = v66;
  *(v68 + 32) = 1;
  swift_willThrow();
  v69 = *(v44 + 16);
  v70 = sqlite3_exec(v69, "rollback", 0, 0, 0);
  if (!v70)
  {
LABEL_22:
    swift_willThrow();

LABEL_23:
    v55 = v32;
LABEL_24:
    outlined destroy of MaterializedViewPhysicalPlan(v55);
    return outlined destroy of UUID?(v10, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  }

  v71 = BMSQLDatabaseError(v70, v69, 0);
  swift_getErrorValue();
  v72 = Error.localizedDescription.getter();
  v74 = v73;

  v103 = v72;
  v104 = v74;
  strcpy(v102, "BMSQLDatabase");
  v102[7] = -4864;
  v100 = 0x62617461444C5153;
  v101 = 0xEB00000000657361;
  lazy protocol witness table accessor for type String and conformance String();
  v75 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v77 = v76;

  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  swift_allocError();
  *v78 = xmmword_184D29AD0;
  *(v78 + 16) = v75;
  *(v78 + 24) = v77;
  *(v78 + 32) = 1;
  swift_willThrow();

  outlined destroy of MaterializedViewPhysicalPlan(v32);
  return outlined destroy of UUID?(v10, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
}

void IncrementalViewManager.update(database:materializedViewPlan:databaseName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v268 = a4;
  v264 = a3;
  v262 = type metadata accessor for OSSignpostError();
  v6 = OUTLINED_FUNCTION_2_1(v262);
  v272 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v278 = (v11 - v10);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  v12 = OUTLINED_FUNCTION_2_1(v280);
  v279 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_7(v252 - v18);
  v276 = type metadata accessor for StorableValue(v19);
  v20 = OUTLINED_FUNCTION_2_1(v276);
  v295 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v26 = OUTLINED_FUNCTION_7(v25 - v24);
  v275 = type metadata accessor for MaterializedViewPhysicalPlan(v26);
  v27 = OUTLINED_FUNCTION_12(v275);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7(v252 - v31);
  v274 = type metadata accessor for OSSignpostID();
  v32 = OUTLINED_FUNCTION_2_1(v274);
  v271 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_7(v252 - v38);
  v292 = type metadata accessor for SQLExpression();
  v39 = OUTLINED_FUNCTION_2_1(v292);
  v283 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_7(v44 - v43);
  v45 = type metadata accessor for ResultColumn();
  v46 = OUTLINED_FUNCTION_2_1(v45);
  v286 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  v52 = v51 - v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v54 = OUTLINED_FUNCTION_2_1(v53);
  v290 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = v252 - v58;
  v60 = type metadata accessor for Schema();
  v61 = OUTLINED_FUNCTION_2_1(v60);
  *&v270 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  v67 = (v66 - v65);
  v68 = type metadata accessor for MaterializedView();
  v69 = OUTLINED_FUNCTION_2_1(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  (*(v74 + 16))(v73 - v72, a2);
  PlannerMetadata = type metadata accessor for QueryPlannerMetadata(0);
  OUTLINED_FUNCTION_35_0(PlannerMetadata);
  v76 = v289;
  QueryPlannerMetadata.init(materializedView:database:cacheSize:)();
  v281 = v76;
  if (!v76)
  {
    v253 = v59;
    v287 = v53;
    v288 = v52;
    v78 = v286;
    v289 = v45;
    v258 = v67;
    v259 = v60;
    *&v260 = a1;
    v261 = v77;
    v257 = MaterializedView.name.getter();
    v256 = v79;
    v255 = MaterializedView.name.getter();
    v254 = v80;
    v81 = *(v275 + 5);
    v265 = a2;
    v82 = a2 + v81;
    v83 = *(type metadata accessor for SelectCorePhysicalPlan(0) + 20);
    v252[2] = v82;
    v84 = SelectCore.select.getter();
    v85 = *(v84 + 16);
    if (v85)
    {
      v300[0]._rawValue = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85, 0);
      v286 = v78[2];
      rawValue = v300[0]._rawValue;
      v87 = *(v78 + 80);
      OUTLINED_FUNCTION_19_0();
      v252[1] = v84;
      v90 = v84 + v89;
      *&v284 = *(v88 + 56);
      v283 += 8;
      v282 = v88 - 8;
      v91 = v289;
      v92 = v253;
      do
      {
        v93 = v288;
        v94 = v88;
        (v286)(v288, v90, v91);
        v95 = *(v287 + 48);
        *v92 = ResultColumn.name.getter();
        v92[1] = v96;
        v97 = v291;
        ResultColumn.expression.getter(v291);
        SQLExpression.returnType.getter(v92 + v95);
        v91 = v289;
        OUTLINED_FUNCTION_16_0(v306);
        v98(v97, v292);
        OUTLINED_FUNCTION_16_0(&v305._object);
        v99(v93, v91);
        v300[0]._rawValue = rawValue;
        v101 = rawValue[2];
        v100 = rawValue[3];
        if (v101 >= v100 >> 1)
        {
          v105 = OUTLINED_FUNCTION_22_0(v100);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v105, v101 + 1, 1);
          v91 = v289;
          rawValue = v300[0]._rawValue;
        }

        rawValue[2] = v101 + 1;
        v102 = *(v290 + 80);
        OUTLINED_FUNCTION_19_0();
        outlined init with take of UUID?(v92, rawValue + v103 + *(v104 + 72) * v101, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
        v90 += v284;
        --v85;
        v88 = v94;
      }

      while (v85);
    }

    else
    {

      rawValue = MEMORY[0x1E69E7CC0];
    }

    v106 = v272;
    v107 = v260;
    v108 = v271;
    v109 = v275;
    if (rawValue[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      OUTLINED_FUNCTION_25_0();
      v110 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC8];
    }

    v111 = v258;
    v300[0]._rawValue = v110;
    v112 = v281;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(rawValue, 1, v300);
    v113 = v112;
    if (v112)
    {
LABEL_84:

      __break(1u);
    }

    else
    {
      v114._countAndFlagsBits = v255;
      v114._object = v254;
      Schema.init(tableName:columns:)(v114, v300[0]);
      v115 = v111;
      v116 = Schema.columns.getter();
      (*(v270 + 8))(v115, v259);
      v117 = (v265 + *(v109 + 28));
      v118 = *v117;
      v119 = v117[1];

      DBViewWriter.init(database:tableName:schema:createTableSQL:)(v107, v257, v256, v116, v118, v119, &v301);
      v281 = 0;
      v256 = v301;
      v275 = v108 + 2;
      v271 = v108 + 1;
      v258 = v106 + 44;
      v255 = (v106 + 4);
      v120 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter;
      LODWORD(v257) = *MEMORY[0x1E69E93E8];
      *&v121 = 136446466;
      v270 = v121;
      *&v121 = 134218242;
      v260 = v121;
      v284 = xmmword_184D29A90;
      v122 = v269;
      v259 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter;
      while (1)
      {
        OSSignposter.logHandle.getter();
        v123 = v273;
        OSSignpostID.init(log:)();
        OUTLINED_FUNCTION_10_1();
        outlined init with copy of MaterializedViewPhysicalPlan(v265, v122);
        v124 = v268;

        v125 = OSSignposter.logHandle.getter();
        v126 = static os_signpost_type_t.begin.getter();

        if (OS_os_log.signpostsEnabled.getter())
        {
          v127 = v124;
          v128 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v300[0]._rawValue = v106;
          *v128 = v270;
          *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v127, v300);
          *(v128 + 12) = 2082;
          v129 = MaterializedView.name.getter();
          v120 = v130;
          outlined destroy of MaterializedViewPhysicalPlan(v122);
          v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v120, v300);

          *(v128 + 14) = v131;
          v132 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1848EE000, v125, v126, v132, "IncrementalViewUpdateBatch", "database:%{public}s view:%{public}s", v128, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
        }

        else
        {

          outlined destroy of MaterializedViewPhysicalPlan(v122);
        }

        v133 = v267;
        OUTLINED_FUNCTION_16_0(&v301);
        v134(v266, v123, v274);
        v135 = type metadata accessor for OSSignpostIntervalState();
        OUTLINED_FUNCTION_35_0(v135);
        OUTLINED_FUNCTION_25_0();
        v136 = OSSignpostIntervalState.init(id:isOpen:)();
        v137 = OUTLINED_FUNCTION_20_1();
        v138 = v281;
        v139 = SelectCorePhysicalPlan.update(metadata:)(v137);
        v141 = v265;
        v281 = v138;
        if (v138)
        {
          break;
        }

        v142 = v139;
        LODWORD(v272) = v140;
        v282 = v136;
        if (one-time initialization token for compute != -1)
        {
          OUTLINED_FUNCTION_9_1();
          swift_once();
        }

        v143 = type metadata accessor for Logger();
        v144 = __swift_project_value_buffer(v143, static Logging.compute);
        OUTLINED_FUNCTION_10_1();
        outlined init with copy of MaterializedViewPhysicalPlan(v141, v133);

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.debug.getter();
        v147 = os_log_type_enabled(v145, v146);
        v148 = v279;
        if (v147)
        {
          v149 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v300[0]._rawValue = v106;
          *v149 = v260;
          *(v149 + 4) = v142[2];

          *(v149 + 12) = 2080;
          v150 = MaterializedView.name.getter();
          v120 = v151;
          outlined destroy of MaterializedViewPhysicalPlan(v133);
          v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v120, v300);

          *(v149 + 14) = v144;
          _os_log_impl(&dword_1848EE000, v145, v146, "persisting %ld changes for materialized view %s", v149, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v106);
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
        }

        else
        {

          outlined destroy of MaterializedViewPhysicalPlan(v133);
        }

        OUTLINED_FUNCTION_29_0();
        OUTLINED_FUNCTION_28_0();
        LODWORD(v292) = 0;
        v152 = 0;
        v288 = v142[2];
        v287 = (v142 + 4);
        v153 = v281;
        v286 = v142;
        while (v152 != v288)
        {
          if (v152 >= v142[2])
          {
            __break(1u);
LABEL_78:

            v239 = BMSQLDatabaseError(v144, v256, 0);
            swift_getErrorValue();
            v240 = Error.localizedDescription.getter();
            v242 = v241;

            v300[0]._rawValue = v240;
            v300[1]._rawValue = v242;
            OUTLINED_FUNCTION_1();
            v298 = v243;
            v299 = v244;
            OUTLINED_FUNCTION_2_7();
            v296 = v245;
            v297 = v246;
            lazy protocol witness table accessor for type String and conformance String();
            OUTLINED_FUNCTION_13_1();
            v247 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v249 = v248;

            lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
            OUTLINED_FUNCTION_63();
            v250 = v292;
            *v251 = v152;
            *(v251 + 8) = v250;
            *(v251 + 16) = v247;
            *(v251 + 24) = v249;
            *(v251 + 32) = 1;
            swift_willThrow();

            OUTLINED_FUNCTION_33_0();

            OUTLINED_FUNCTION_20_1();

LABEL_73:
            v233 = OUTLINED_FUNCTION_1_16();
            v234(v233);
            goto LABEL_74;
          }

          v154 = (v287 + 16 * v152);
          v155 = *v154;
          v156 = *(v154 + 1);
          v157 = v303;

          v158 = recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(v157, v155, v156);
          if (v153)
          {
            v231 = OUTLINED_FUNCTION_1_16();
            v232(v231);

            goto LABEL_71;
          }

          v291 = v152 + 1;
          v290 = v156;
          if (v155)
          {
            if ((v292 & 1) == 0)
            {
              v152 = v306[0];
              v181 = v158;
              v292 = v306[1];
              v106 = String.utf8CString.getter();
              OUTLINED_FUNCTION_13_1();
              v144 = sqlite3_exec(v182, v183, v184, v185, v186);

              v158 = v181;
              if (v144)
              {
                goto LABEL_78;
              }
            }

            v187 = *(v158 + 16);
            if (v187)
            {
              v281 = 0;
              v300[0]._rawValue = MEMORY[0x1E69E7CC0];
              v188 = v158;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v187, 0);
              v292 = v300[0]._rawValue;
              v189 = *(v148 + 80);
              OUTLINED_FUNCTION_19_0();
              v289 = v188;
              v191 = v188 + v190;
              v283 = *(v148 + 72);
              v146 = v295;
              v192 = v293;
              do
              {
                outlined init with copy of Date?(v191, v120, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
                v193 = *(v146 + 72);
                v194 = (*(v146 + 80) + 32) & ~*(v146 + 80);
                v106 = swift_allocObject();
                *(v106 + 1) = v284;
                outlined init with copy of Date?(v120, v192, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                v195 = *(v192 + 8);

                v196 = v280;
                outlined init with take of MaterializedViewPhysicalPlan(v192 + *(v280 + 48), v106 + v194);
                v197 = v277;
                outlined init with copy of Date?(v120, v277, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                v198 = *(v197 + 8);

                outlined init with take of MaterializedViewPhysicalPlan(v197 + *(v196 + 48), v106 + v194 + v193);
                outlined destroy of UUID?(v120, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                OUTLINED_FUNCTION_23_0();
                v300[0]._rawValue = v199;
                v201 = v199[2];
                v200 = v199[3];
                if (v201 >= v200 >> 1)
                {
                  v203 = OUTLINED_FUNCTION_22_0(v200);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v203, v201 + 1, 1);
                  v292 = v300[0]._rawValue;
                }

                OUTLINED_FUNCTION_23_0();
                *(v202 + 16) = v201 + 1;
                *(v202 + 8 * v201 + 32) = v106;
                v191 += v283;
                --v187;
                v192 = v293;
                v120 = v294;
                v146 = v295;
              }

              while (v187);

              OUTLINED_FUNCTION_28_0();
              v113 = MEMORY[0x1E69E7CC0];
              v142 = v286;
            }

            else
            {

              v113 = MEMORY[0x1E69E7CC0];
              v292 = MEMORY[0x1E69E7CC0];
            }

            v120 = 0;
            OUTLINED_FUNCTION_23_0();
            v289 = *(v204 + 16);
            while (1)
            {
              v152 = v291;
              if (v289 == v120)
              {
                break;
              }

              OUTLINED_FUNCTION_23_0();
              if (v120 >= *(v205 + 16))
              {
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }

              OUTLINED_FUNCTION_23_0();
              v207 = v206 + 8 * v120;
              v146 = *(v207 + 32);
              v208 = *(v146 + 16);
              Kind = v113[1].Kind;
              if (__OFADD__(Kind, v208))
              {
                goto LABEL_80;
              }

              v210 = *(v207 + 32);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v106 = v113, Kind + v208 > (v113[1].Description >> 1)))
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v106 = v211;
              }

              if (*(v146 + 16))
              {
                if ((*(v106 + 3) >> 1) - *(v106 + 2) < v208)
                {
                  goto LABEL_82;
                }

                v212 = (*(v295 + 80) + 32) & ~*(v295 + 80);
                v213 = *(v295 + 72);
                swift_arrayInitWithCopy();

                OUTLINED_FUNCTION_28_0();
                if (v208)
                {
                  v214 = *(v106 + 2);
                  v215 = __OFADD__(v214, v208);
                  v216 = v214 + v208;
                  if (v215)
                  {
                    goto LABEL_83;
                  }

                  *(v106 + 2) = v216;
                }
              }

              else
              {

                OUTLINED_FUNCTION_28_0();
                if (v208)
                {
                  goto LABEL_81;
                }
              }

              ++v120;
              v113 = v106;
            }

            v144 = v302;
            SQLExpressionEvaluator.execute(sql:bindingValues:)(v305, v113);
            v153 = v217;
            v148 = v279;
            if (v217)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_25_0();

            OUTLINED_FUNCTION_33_0();

            LODWORD(v292) = 1;
            OUTLINED_FUNCTION_29_0();
          }

          else
          {
            v159 = *(v158 + 16);
            if (v159)
            {
              v281 = 0;
              v300[0]._rawValue = MEMORY[0x1E69E7CC0];
              v160 = v158;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159, 0);
              v161 = v300[0]._rawValue;
              v162 = *(v148 + 80);
              OUTLINED_FUNCTION_19_0();
              v289 = v160;
              v164 = v160 + v163;
              v165 = *(v148 + 72);
              v166 = v280;
              do
              {
                outlined init with copy of Date?(v164, v120, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                v167 = v120;
                v168 = v293;
                outlined init with take of UUID?(v167, v293, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                v169 = *(v168 + 8);

                v170 = *(v166 + 48);
                OUTLINED_FUNCTION_2_8();
                outlined init with take of MaterializedViewPhysicalPlan(v168 + v171, v146);
                v300[0]._rawValue = v161;
                v172 = v146;
                v174 = v161[2];
                v173 = v161[3];
                if (v174 >= v173 >> 1)
                {
                  v179 = OUTLINED_FUNCTION_22_0(v173);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v179, v174 + 1, 1);
                  v166 = v280;
                  v161 = v300[0]._rawValue;
                }

                v161[2] = v174 + 1;
                v175 = *(v295 + 80);
                OUTLINED_FUNCTION_19_0();
                v177 = *(v176 + 72);
                OUTLINED_FUNCTION_2_8();
                outlined init with take of MaterializedViewPhysicalPlan(v172, v178);
                v164 += v165;
                --v159;
                v120 = v294;
                v146 = v172;
              }

              while (v159);

              v106 = v278;
              v148 = v279;
              v142 = v286;
            }

            else
            {

              v161 = MEMORY[0x1E69E7CC0];
            }

            v144 = v302;
            SQLExpressionEvaluator.execute(sql:bindingValues:)(v304, v161);
            v153 = v180;
            v152 = v291;
            if (v180)
            {
LABEL_72:
              OUTLINED_FUNCTION_33_0();

              OUTLINED_FUNCTION_20_1();

              goto LABEL_73;
            }

            OUTLINED_FUNCTION_25_0();

            OUTLINED_FUNCTION_33_0();
          }
        }

        QueryPlannerMetadata.storeMetadata()();
        if (v218)
        {
          v237 = OUTLINED_FUNCTION_1_16();
          v238(v237);
LABEL_71:

          OUTLINED_FUNCTION_20_1();

LABEL_74:
          outlined destroy of DBViewWriter(&v301);
          return;
        }

        v281 = 0;
        v120 = v259;
        v219 = OSSignposter.logHandle.getter();
        v220 = v263;
        OSSignpostIntervalState.signpostID.getter();
        v221 = static os_signpost_type_t.end.getter();
        v222 = OS_os_log.signpostsEnabled.getter();
        v122 = v269;
        if (v222)
        {

          checkForErrorAndConsumeState(state:)();

          OUTLINED_FUNCTION_16_0(v285);
          v223 = v262;
          v225 = v224(v106, v262);
          v226 = "[Error] Interval already ended";
          if (v225 != v257)
          {
            OUTLINED_FUNCTION_16_0(&v283);
            v227(v106, v223);
            v226 = "";
          }

          v106 = swift_slowAlloc();
          *v106 = 0;
          v228 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1848EE000, v219, v221, v228, "IncrementalViewUpdateBatch", v226, v106, 2u);
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
        }

        v229 = *v271;
        v230 = v274;
        (*v271)(v220, v274);
        v229(v273, v230);
        if (v272)
        {
          outlined destroy of DBViewWriter(&v301);
          OUTLINED_FUNCTION_20_1();

          return;
        }
      }

      v235 = OUTLINED_FUNCTION_1_16();
      v236(v235);

      OUTLINED_FUNCTION_20_1();

      outlined destroy of DBViewWriter(&v301);
    }
  }
}

uint64_t outlined destroy of MaterializedViewPhysicalPlan(uint64_t a1)
{
  v2 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1848F59E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_84();
  v6 = type metadata accessor for MaterializedView();
  v7 = OUTLINED_FUNCTION_83(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for SelectCorePhysicalPlan(0);
    OUTLINED_FUNCTION_83(v11);
    if (*(v12 + 84) != a2)
    {
      return OUTLINED_FUNCTION_98(*(v3 + *(a3 + 24)));
    }

    v10 = OUTLINED_FUNCTION_100();
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void OUTLINED_FUNCTION_65_2()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 120);
  v3 = *(v0 - 160);
  *(v0 - 112) = v3;
  v4 = *(v3 + 24);
  v5 = *(v3 + 16) + 1;
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_10()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return errstart(20, 0);
}

void OUTLINED_FUNCTION_25()
{
  v2 = *(v1 - 192);
  *v0 = *(v1 - 120);
  v0[1] = v2;
}

id OUTLINED_FUNCTION_25_1(uint64_t a1)
{

  return BMSQLDatabaseError(a1, v1, 0);
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_9_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 272);
  v5 = *(v1 - 264);
  v6 = *(v1 - 256);

  return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return errcode();
}

uint64_t OUTLINED_FUNCTION_16()
{
  v3 = v1 + *(v0 + 44);

  return String.lowercased()()._countAndFlagsBits;
}

double OUTLINED_FUNCTION_15()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

void OUTLINED_FUNCTION_29_1()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  *(v1 - 152) = *v0;
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  v2 = *(*(v0 + 56) + 8);
  result = v1;
  v4 = *(v0 + 32);
  return result;
}

uint64_t type metadata accessor for StorableValue(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;
  return v2 - 112;
}

void OUTLINED_FUNCTION_7_6()
{
  *(v0 + 408) = 34;
  *(v0 + 416) = 0xE100000000000000;
  v3 = *v1;
  v4 = v1[1];

  JUMPOUT(0x1865F6280);
}

void OUTLINED_FUNCTION_7_7(int a1@<W8>)
{
  *(v1 - 604) = a1;
  *(v1 - 616) = *(v1 - 528) + 104;
  *(v1 - 624) = *(v1 - 520) + 32;
  *(v1 - 632) = *(v1 - 560) + 8;
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  v3 = *(v1 - 8);

  return scanner_errposition(v3, v0);
}

uint64_t OUTLINED_FUNCTION_41_0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_41_1(int a1@<W8>)
{
  *(v3 - 460) = a1;
  *(v3 - 472) = v1 + 32;
  *(v3 - 480) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_80_1()
{
  v2 = *(v0 - 232);

  return Optional<A>.hashValue.getter();
}

void OUTLINED_FUNCTION_24_0()
{
  v1 = *(v0 - 96);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  result = v1;
  *(v2 - 128) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t result)
{
  *(v1 - 232) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_3()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

uint64_t bind(_:to:db:)(uint64_t a1, sqlite3_stmt *a2, sqlite3 *a3)
{
  v168 = a3;
  v193 = a2;
  v210 = *MEMORY[0x1E69E9840];
  v200 = type metadata accessor for UUID();
  v4 = *(v200 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v165 = v6;
  v7 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v159 - v13;
  v174 = type metadata accessor for Date();
  v15 = *(v174 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v171 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v189 = &v159 - v23;
  v197 = type metadata accessor for SQLDataType();
  Description = v197[-1].Description;
  v25 = *(Description + 8);
  MEMORY[0x1EEE9AC00](&v197[-1].Description);
  v196 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for StorableValue(0);
  v186 = *(v204 - 8);
  v27 = *(v186 + 64);
  v28 = MEMORY[0x1EEE9AC00](v204);
  v166 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v173 = &v159 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v172 = &v159 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v167 = &v159 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v176 = &v159 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v175 = &v159 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v182 = &v159 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v184 = &v159 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v202 = &v159 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v205 = &v159 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12BiomeStreams13StorableValueO7elementtMd, &_sSi6offset_12BiomeStreams13StorableValueO7elementtMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v185 = (&v159 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12BiomeStreams13StorableValueO7elementtSgMd, &_sSi6offset_12BiomeStreams13StorableValueO7elementtSgMR);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v199 = &v159 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v198 = &v159 - v54;
  v55 = 0;
  v187 = a1;
  v56 = *(a1 + 16);
  v177 = 7;
  v194 = (Description + 104);
  v178 = 6;
  v180 = 4;
  v179 = 5;
  v183 = 2;
  v162 = Description;
  v195 = (Description + 88);
  v164 = (v4 + 32);
  v163 = (v4 + 8);
  v170 = (v15 + 32);
  v169 = (v15 + 8);
  v57 = &_s10Foundation4UUIDVSgMd;
  v181 = 3;
  v190 = 1;
  v201 = 0;
  v191 = v56;
  v188 = v22;
  v192 = v47;
  while (1)
  {
    if (v55 == v56)
    {
      v58 = 1;
      v203 = v56;
      v59 = v200;
      v60 = v199;
    }

    else
    {
      if (v55 >= v56)
      {
        goto LABEL_150;
      }

      v61 = v55 + 1;
      v59 = v200;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_151;
      }

      v62 = v187 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v55;
      v63 = *(v47 + 48);
      *v185 = v55;
      outlined init with copy of SQLExpressionEvaluatorError();
      v60 = v199;
      outlined init with take of (offset: Int, element: StorableValue)();
      v58 = 0;
      v203 = v61;
    }

    v64 = v198;
    __swift_storeEnumTagSinglePayload(v60, v58, 1, v47);
    outlined init with take of (offset: Int, element: StorableValue)();
    result = __swift_getEnumTagSinglePayload(v64, 1, v47);
    if (result == 1)
    {
      goto LABEL_145;
    }

    v66 = v47;
    v67 = v57;
    v68 = v64;
    v69 = *v64;
    outlined init with take of StorableValue(v68 + *(v66 + 48), v205);
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v70 < 0xFFFFFFFF80000000)
    {
      goto LABEL_148;
    }

    if (v70 > 0x7FFFFFFF)
    {
      goto LABEL_149;
    }

    outlined init with copy of SQLExpressionEvaluatorError();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v197;
    v73 = v196;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        (*v194)(v196, v190, v197);
        break;
      case 2:
        (*v194)(v196, v181, v197);
        goto LABEL_21;
      case 3:
        outlined destroy of StorableValue(v202);
        (*v194)(v73, v183, v72);
        break;
      case 4:
        outlined destroy of StorableValue(v202);
        (*v194)(v73, v179, v72);
        break;
      case 5:
        outlined destroy of StorableValue(v202);
        (*v194)(v73, v180, v72);
        break;
      case 6:
        (*v194)(v196, v178, v197);
LABEL_21:
        outlined destroy of StorableValue(v202);
        break;
      case 7:
        (*v194)(v196, v177, v197);
        break;
      default:
        (*v194)(v196, v201, v197);
        break;
    }

    v74 = (*v195)(v73, v72);
    if (v74 == v201)
    {
      v75 = v184;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_141;
      }

      if ((v75[8] & 1) == 0)
      {
        v76 = sqlite3_bind_int64(v193, v70, *v75);
        goto LABEL_59;
      }

LABEL_58:
      v76 = sqlite3_bind_null(v193, v70);
LABEL_59:
      v81 = v76;
      goto LABEL_60;
    }

    v77 = v188;
    if (v74 == v190)
    {
      v75 = v182;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_141;
      }

      if (v75[8])
      {
        goto LABEL_58;
      }

      v76 = sqlite3_bind_double(v193, v70, *v75);
      goto LABEL_59;
    }

    if (v74 == v183)
    {
      v75 = v176;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_141;
      }

      goto LABEL_32;
    }

    if (v74 == v181)
    {
      v82 = v175;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v149 = v82;
LABEL_142:
        outlined destroy of StorableValue(v149);
LABEL_143:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        swift_allocError();
        v151 = v150;
        v150[3] = v204;
        __swift_allocate_boxed_opaque_existential_0(v150);
        v152 = v205;
        outlined init with copy of SQLExpressionEvaluatorError();
        *(v151 + 2) = 0u;
        *(v151 + 3) = 0u;
        *(v151 + 64) = 3;
        swift_willThrow();
        v148 = v152;
        goto LABEL_144;
      }

      outlined init with take of (offset: Int, element: StorableValue)();
      outlined init with copy of UUID?();
      v83 = v174;
      if (__swift_getEnumTagSinglePayload(v77, 1, v174) == 1)
      {
        outlined destroy of UUID?(v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v81 = sqlite3_bind_null(v193, v70);
      }

      else
      {
        v90 = v171;
        (*v170)(v171, v188, v83);
        v91 = v83;
        Date.timeIntervalSince1970.getter();
        v81 = sqlite3_bind_double(v193, v70, v92);
        (*v169)(v90, v91);
      }

      outlined destroy of UUID?(v189, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_60;
    }

    if (v74 == v180)
    {
      v75 = v172;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_141;
      }

      v84 = *(v75 + 1);
      if (v84 >> 60 == 15)
      {
        goto LABEL_58;
      }

      v85 = *v75;
      switch(v84 >> 62)
      {
        case 1uLL:
          if (v85 >> 32 < v85)
          {
            goto LABEL_157;
          }

          v161 = *v75;
          v160 = v85;
          v115 = __DataStorage._bytes.getter();
          if (v115)
          {
            v116 = __DataStorage._offset.getter();
            v117 = v160;
            if (__OFSUB__(v160, v116))
            {
              goto LABEL_162;
            }

            v115 += v160 - v116;
          }

          else
          {
            v117 = v160;
          }

          v123 = (v85 >> 32) - v117;
          v124 = MEMORY[0x1865F59E0]();
          if (v124 >= v123)
          {
            v103 = v123;
          }

          else
          {
            v103 = v124;
          }

          v104 = v115;
          if (v115)
          {
            if (v103 < 0xFFFFFFFF80000000)
            {
              goto LABEL_155;
            }

            if (v103 > 0x7FFFFFFF)
            {
              goto LABEL_156;
            }
          }

          else
          {
            LODWORD(v103) = 0;
          }

LABEL_102:
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v81 = sqlite3_bind_blob(v193, v70, v104, v103, SQLITE_TRANSIENT);
          v105 = v161;
LABEL_105:
          outlined consume of Data?(v105, v84);
          break;
        case 2uLL:
          v161 = *v75;
          v96 = *(v85 + 16);
          v160 = *(v85 + 24);
          v97 = __DataStorage._bytes.getter();
          if (!v97)
          {
            goto LABEL_66;
          }

          v98 = __DataStorage._offset.getter();
          if (__OFSUB__(v96, v98))
          {
            goto LABEL_161;
          }

          v97 += v96 - v98;
LABEL_66:
          v99 = __OFSUB__(v160, v96);
          v100 = v160 - v96;
          if (v99)
          {
            goto LABEL_158;
          }

          v101 = MEMORY[0x1865F59E0]();
          if (v101 >= v100)
          {
            v102 = v100;
          }

          else
          {
            v102 = v101;
          }

          if (v97)
          {
            v103 = v102;
          }

          else
          {
            v103 = 0;
          }

          if (v103 < 0xFFFFFFFF80000000)
          {
            goto LABEL_159;
          }

          if (v103 > 0x7FFFFFFF)
          {
            goto LABEL_160;
          }

          v104 = v97;
          goto LABEL_102;
        case 3uLL:
          *(&__dst + 6) = 0;
          *&__dst = 0;
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v87 = SQLITE_TRANSIENT;
          v88 = v193;
          v89 = v70;
          v86 = 0;
          goto LABEL_79;
        default:
          *&__dst = *v75;
          WORD4(__dst) = v84;
          BYTE10(__dst) = BYTE2(v84);
          BYTE11(__dst) = BYTE3(v84);
          BYTE12(__dst) = BYTE4(v84);
          BYTE13(__dst) = BYTE5(v84);
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v86 = BYTE6(v84);
          v87 = SQLITE_TRANSIENT;
          v88 = v193;
          v89 = v70;
LABEL_79:
          v81 = sqlite3_bind_blob(v88, v89, &__dst, v86, v87);
          v105 = v85;
          goto LABEL_105;
      }

      goto LABEL_60;
    }

    v75 = v173;
    if (v74 == v179)
    {
      v75 = v167;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_141;
      }

LABEL_32:
      if (!*(v75 + 1))
      {
        goto LABEL_58;
      }

      v78 = *v75;
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        swift_once();
      }

      v79 = SQLITE_TRANSIENT;
      v80 = String.utf8CString.getter();

      v81 = sqlite3_bind_text(v193, v70, (v80 + 32), -1, v79);

LABEL_60:
      v57 = v67;
      goto LABEL_61;
    }

    if (v74 != v178)
    {
      if (v74 != v177)
      {
        goto LABEL_152;
      }

      v94 = v166;
      outlined init with copy of SQLExpressionEvaluatorError();
      v95 = swift_getEnumCaseMultiPayload();
      outlined destroy of StorableValue(v94);
      if (v95 != 7)
      {
        goto LABEL_143;
      }

      goto LABEL_58;
    }

    outlined init with copy of SQLExpressionEvaluatorError();
    if (swift_getEnumCaseMultiPayload() != 6)
    {
LABEL_141:
      v149 = v75;
      goto LABEL_142;
    }

    outlined init with take of (offset: Int, element: StorableValue)();
    v161 = v14;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v12, 1, v59) == 1)
    {
      outlined destroy of UUID?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v93 = sqlite3_bind_null(v193, v70);
      v14 = v161;
      v81 = v93;
      outlined destroy of UUID?(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v57 = &_s10Foundation4UUIDVSgMd;
      goto LABEL_61;
    }

    (*v164)(v7, v12, v59);
    v106 = v165;
    if (v165)
    {
      if (v165 >= 15)
      {
        v107 = type metadata accessor for __DataStorage();
        v108 = *(v107 + 48);
        v109 = *(v107 + 52);
        swift_allocObject();
        __DataStorage.init(bytes:length:)();
        v110 = v165;
        if (v165 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          inited = swift_initStackObject();
          *(inited + 2) = 0;
          *(inited + 3) = v110;
          v128 = __DataStorage._bytes.getter();
          if (v128)
          {
            v129 = v128;
            v130 = __DataStorage._offset.getter();
            if (__OFSUB__(0, v130))
            {
              goto LABEL_163;
            }

            v131 = (v129 - v130);
          }

          else
          {
            v131 = 0;
          }

          v161 = inited;
          v134 = MEMORY[0x1865F59E0]();
          if (v134 >= v165)
          {
            v135 = v165;
          }

          else
          {
            v135 = v134;
          }

          if (v131)
          {
            if (v135 < 0xFFFFFFFF80000000)
            {
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
            }

            if (v135 > 0x7FFFFFFF)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v135 = 0;
          }

          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v160 = v135;
            swift_once();
            LODWORD(v135) = v160;
          }

          v81 = sqlite3_bind_blob(v193, v70, v131, v135, SQLITE_TRANSIENT);
        }

        else
        {
          v111 = __DataStorage._bytes.getter();
          if (v111)
          {
            v112 = v111;
            v113 = __DataStorage._offset.getter();
            if (__OFSUB__(0, v113))
            {
              goto LABEL_164;
            }

            v114 = (v112 - v113);
          }

          else
          {
            v114 = 0;
          }

          v132 = MEMORY[0x1865F59E0]();
          v161 = v114;
          if (v114)
          {
            if (v132 >= v165)
            {
              v133 = v165;
            }

            else
            {
              v133 = v132;
            }

            if (v133 < 0xFFFFFFFF80000000)
            {
              goto LABEL_154;
            }
          }

          else
          {
            LODWORD(v133) = 0;
          }

          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v136 = v133;
            swift_once();
            LODWORD(v133) = v136;
          }

          v81 = sqlite3_bind_blob(v193, v70, v161, v133, SQLITE_TRANSIENT);
        }

        (*v163)(v7, v200);
        v125 = v14;
        v57 = v67;
        v126 = v67;
        goto LABEL_137;
      }

      *(&__dst + 6) = 0;
      *&__dst = 0;
      BYTE14(__dst) = v165;
      memcpy(&__dst, v7, v165);
      v208[0] = __dst;
      *(v208 + 6) = *(&__dst + 6);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        swift_once();
      }

      v118 = SQLITE_TRANSIENT;
      p_dst = v208;
      v122 = v106;
      v120 = v193;
      v121 = v70;
    }

    else
    {
      *(&__dst + 6) = 0;
      *&__dst = 0;
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        swift_once();
      }

      v118 = SQLITE_TRANSIENT;
      p_dst = &__dst;
      v120 = v193;
      v121 = v70;
      v122 = 0;
    }

    v81 = sqlite3_bind_blob(v120, v121, p_dst, v122, v118);
    (*v163)(v7, v200);
    v125 = v14;
    v57 = v67;
    v126 = v67;
LABEL_137:
    outlined destroy of UUID?(v125, v126, &_s10Foundation4UUIDVSgMR);
LABEL_61:
    v47 = v192;
    if (v81)
    {
      if (!sqlite3_sql(v193))
      {
        __break(1u);
        JUMPOUT(0x1848F7C60);
      }

      v137 = String.init(cString:)();
      v139 = v138;
      v140 = BMSQLDatabaseError(v81, v168, 0);
      swift_getErrorValue();
      v141 = Error.localizedDescription.getter();
      v143 = v142;

      *&__dst = v141;
      *(&__dst + 1) = v143;
      strcpy(v208, "BMSQLDatabase");
      HIWORD(v208[1]) = -4864;
      v206 = 0x62617461444C5153;
      v207 = 0xEB00000000657361;
      lazy protocol witness table accessor for type String and conformance String();
      v144 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v146 = v145;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v147 = v137;
      *(v147 + 8) = v139;
      *(v147 + 16) = v144;
      *(v147 + 24) = v146;
      *(v147 + 32) = 2;
      swift_willThrow();
      v148 = v205;
LABEL_144:
      result = outlined destroy of StorableValue(v148);
      goto LABEL_145;
    }

    outlined destroy of StorableValue(v205);
    v56 = v191;
    v55 = v203;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  swift_allocError();
  v155 = v154;
  v156 = v197;
  v154[3] = v197;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v154);
  v158 = v205;
  StorableValue.dataType.getter(boxed_opaque_existential_0);
  *(v155 + 2) = 0u;
  *(v155 + 3) = 0u;
  *(v155 + 64) = 3;
  swift_willThrow();
  outlined destroy of StorableValue(v158);
  result = v162[1](v196, v156);
LABEL_145:
  v153 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLExpressionEvaluator.execute(sql:bindingValues:)(Swift::String sql, Swift::OpaquePointer bindingValues)
{
  v3 = v2;
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v48[1] = *MEMORY[0x1E69E9840];
  if (*(*(v2 + 32) + 16) && (, v7 = OUTLINED_FUNCTION_52(), specialized __RawDictionaryStorage.find<A>(_:)(v7, v8), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(v2 + 32);
  }

  else
  {
    v12 = *(v2 + 24);
    v48[0] = 0;
    OUTLINED_FUNCTION_52();
    v13 = String.utf8CString.getter();
    v16 = OUTLINED_FUNCTION_18_0(v12, (v13 + 32), v14, v15, v48);

    if (v16 || (v35 = v48[0]) == 0)
    {
      v17 = BMSQLDatabaseError(v16, v12, 0);
      swift_getErrorValue();
      Error.localizedDescription.getter();

      OUTLINED_FUNCTION_1();
      v46 = v18;
      OUTLINED_FUNCTION_2_7();
      v44 = v19;
      v45 = v20;
      v21 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_14_1(v21, v22, v23, v24, v25, v26, MEMORY[0x1E69E6158], v27, MEMORY[0x1E69E6158], v21, v21, v21, v44, v45, v46);
      OUTLINED_FUNCTION_3_10();
      v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v30 = v29;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      v31 = OUTLINED_FUNCTION_63();
      *v32 = countAndFlagsBits;
      v32[1] = object;
      v32[2] = v28;
      v32[3] = v30;
      OUTLINED_FUNCTION_20_2(v31, v32);

      goto LABEL_10;
    }

    v36 = *(v3 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v3 + 32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
    *(v3 + 32) = v47;
  }

  v38 = OUTLINED_FUNCTION_52();
  v41 = specialized Dictionary.subscript.getter(v38, v39, v40);
  if (!v41)
  {
    _StringGuts.grow(_:)(50);

    v43 = OUTLINED_FUNCTION_52();
    MEMORY[0x1865F6280](v43);
    v33 = OUTLINED_FUNCTION_9_2();
    __break(1u);
    goto LABEL_12;
  }

  v33 = SQLExpressionEvaluator.execute(stmt:bindingValues:)(v41, bindingValues._rawValue);
LABEL_10:
  v42 = *MEMORY[0x1E69E9840];
LABEL_12:
  result.value._rawValue = v33;
  result.is_nil = v34;
  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return v4;
}

uint64_t outlined init with copy of MaterializedViewPhysicalPlan(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return v4;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_1_16()
{
  v1 = **(v0 - 464);
  result = *(v0 - 448);
  v3 = *(v0 - 440);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t result, uint64_t a2)
{
  *(v2 - 112) = 0x336574696C71732ELL;
  *(v2 - 104) = 0xE800000000000000;
  *(v2 - 128) = result;
  *(v2 - 120) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_20(unint64_t a1@<X8>)
{
  *(v1 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  *(*(v2 + 48) + 8 * a1) = *(v3 - 288);
  v4 = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return _s10Foundation4UUIDVSgWOhTm_0(v1, v0, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1848F837C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_84();
  v8 = type metadata accessor for MaterializedView();
  v9 = OUTLINED_FUNCTION_83(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for SelectCorePhysicalPlan(0);
    result = OUTLINED_FUNCTION_83(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v12 = OUTLINED_FUNCTION_100();
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t getEnumTagSinglePayload for MaterializedView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t (*IncrementalViewManager.cachedDatabaseWithAccess(for:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v131 = *MEMORY[0x1E69E9840];
  v119 = type metadata accessor for URL.DirectoryHint();
  v118 = *(v119 - 8);
  v6 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = v105 - v10;
  v123 = type metadata accessor for URL();
  v120 = *(v123 - 1);
  v11 = *(v120 + 64);
  v12 = MEMORY[0x1EEE9AC00](v123);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v105 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v105 - v18;
  v20 = *(a2 + 8);
  v21 = *(v20 + 8);
  v121 = a1;
  v122 = v21;
  v22 = v21(a1, v20);
  v24 = v23;
  v25 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses;
  v26 = specialized Dictionary.subscript.getter(v22, v23, *(v3 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses));
  if (v26)
  {
    v27 = v26;
LABEL_3:

    goto LABEL_18;
  }

  v112 = v14;
  v113 = v17;
  v107 = v22;
  v108 = v25;
  v115 = v24;
  v109 = v3;
  v114 = v19;
  v28 = v123;
  type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMResourceSpecifier, 0x1E698E9F8);
  v29 = v121;
  v27 = v122;
  v30 = v122(v121, v20);
  v32 = BMResourceSpecifier.__allocating_init(type:name:)(3, v30, v31);
  v33 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];
  v129 = 0;
  v34 = [v33 requestAccessToResource:v32 mode:3 error:&v129];
  if (!v34)
  {
    v65 = v33;
    v66 = v129;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_18;
  }

  v35 = v34;
  v110 = v32;
  v36 = v129;
  v37 = [v35 path];
  v111 = v33;
  if (v37)
  {
    v38 = v37;
    v106 = v35;
    v105[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105[0] = v39;

    v40 = v27(v29, v20);
    v129 = 0x336574696C71732ELL;
    v130 = 0xE800000000000000;
    v127[0] = v40;
    v127[1] = v41;
    v127[0] = String.init<A>(_:)();
    v127[1] = v42;
    String.append<A>(contentsOf:)();
    v43 = v127[1];
    v122 = v127[0];
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v28);
    v44 = *MEMORY[0x1E6968F70];
    v45 = v118;
    v46 = *(v118 + 104);
    v47 = v117;
    v48 = v119;
    v46(v117, v44, v119);
    v49 = v112;
    URL.init(filePath:directoryHint:relativeTo:)();
    v129 = v122;
    v130 = v43;
    v46(v47, v44, v48);
    lazy protocol witness table accessor for type String and conformance String();
    v50 = v113;
    URL.appending<A>(component:directoryHint:)();
    (*(v45 + 8))(v47, v48);
    v51 = v120 + 8;
    v27 = *(v120 + 8);
    v52 = v49;
    v53 = v123;
    v27(v52, v123);

    v54 = v114;
    URL.standardizedFileURL.getter();
    v27(v50, v53);
    ppDb = 0;
    URL.path(percentEncoded:)(0);
    v55 = String.utf8CString.getter();

    v56 = sqlite3_open_v2((v55 + 32), &ppDb, 2, 0);

    if (v56 || (v80 = ppDb) == 0)
    {

      v57 = BMSQLDatabaseError(v56, ppDb, 0);
      swift_getErrorValue();
      v58 = Error.localizedDescription.getter();
      v60 = v59;

      v129 = v58;
      v130 = v60;
      strcpy(v127, "BMSQLDatabase");
      HIWORD(v127[1]) = -4864;
      v125 = 0x62617461444C5153;
      v126 = 0xEB00000000657361;
      v61 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v63 = v62;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v63;
      *(v64 + 16) = 0;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0;
      swift_willThrow();
      swift_unknownObjectRelease();

      v27(v54, v53);
      goto LABEL_18;
    }

    v120 = v51;
    v81 = sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, 0);
    v82 = v111;
    v83 = v106;
    if (v81)
    {
      v84 = v81;

      v85 = BMSQLDatabaseError(v84, v80, 0);
      swift_getErrorValue();
      v86 = Error.localizedDescription.getter();
      v88 = v87;

      v129 = v86;
      v130 = v88;
      strcpy(v127, "BMSQLDatabase");
      HIWORD(v127[1]) = -4864;
      v125 = 0x62617461444C5153;
      v126 = 0xEB00000000657361;
      v89 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v91 = v90;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v92 = 0xD000000000000017;
      *(v92 + 8) = 0x8000000184DDBE30;
      *(v92 + 16) = v89;
      *(v92 + 24) = v91;
      *(v92 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();

      v27(v54, v123);
      goto LABEL_18;
    }

    v27(v54, v53);

    type metadata accessor for DatabaseWithAccess();
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v83;
    v100 = v109;
    if (*(v109 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_useCache))
    {
      v101 = v99;

      v102 = v108;
      v103 = *(v100 + v108);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v100 + v102);
      v27 = v101;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v107, v115, isUniquelyReferenced_nonNull_native);
      *(v100 + v102) = v129;
    }

    else
    {
      v27 = v99;
    }

    goto LABEL_3;
  }

  if (one-time initialization token for compute != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logging.compute);
  swift_unknownObjectRetain();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    LODWORD(v124) = v69;
    v71 = v70;
    v123 = swift_slowAlloc();
    v129 = v123;
    *v71 = 136315138;
    v72 = [v35 description];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v129);
    v77 = v111;

    *(v71 + 4) = v76;
    v27 = v122;
    _os_log_impl(&dword_1848EE000, v68, v124, "IncrementalViewManager: Access assertion: %s has a nil path", v71, 0xCu);
    v78 = v123;
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    MEMORY[0x1865F7B70](v78, -1, -1);
    MEMORY[0x1865F7B70](v71, -1, -1);

    v79 = v110;
  }

  else
  {

    v79 = v110;
    v77 = v111;
  }

  v93 = v27(v29, v20);
  v95 = v94;
  lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
  swift_allocError();
  *v96 = v93;
  *(v96 + 8) = v95;
  *(v96 + 16) = 0;
  swift_willThrow();

  swift_unknownObjectRelease();
LABEL_18:
  v97 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_132()
{
  v2 = *(v1 - 136);
  result = *(v1 - 256);
  *(v1 - 152) = *(v0 + 32);
  *(v1 - 144) = v0 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_1@<X0>(void *a1@<X8>)
{
  v3 = (v1 + v2);
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  return 0;
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return dispatch thunk of Sequence.makeIterator()();
}

void OUTLINED_FUNCTION_30_3()
{
  v2 = *v0;
  v3 = *(*(v1 - 208) + 8);
  *(v1 - 192) = v2;
  *(v1 - 184) = v3;
}

uint64_t static BookmarkCache.createBookmarkTableSQL(materializedViewName:)()
{
  OUTLINED_FUNCTION_86_2();
  _StringGuts.grow(_:)(97);
  MEMORY[0x1865F6280](0xD00000000000001BLL, 0x8000000184DDC1D0);

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_136_0();
  MEMORY[0x1865F6280]();
  MEMORY[0x1865F6280](v1, v0);

  MEMORY[0x1865F6280](0xD000000000000044, 0x8000000184DDCF30);
  return 0;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_30_0(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs13OpaquePointerVGMd, &_ss17_NativeDictionaryVySSs13OpaquePointerVGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams18DatabaseWithAccess33_F8FA2739982A459A6E4E81EADE21431CLLCGMd, &_ss17_NativeDictionaryVySS12BiomeStreams18DatabaseWithAccess33_F8FA2739982A459A6E4E81EADE21431CLLCGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_86_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;
  v4 = *(v2 + 40);

  return Hasher.init(_seed:)();
}

void QueryPlannerMetadata.init(materializedView:database:cacheSize:)()
{
  OUTLINED_FUNCTION_64();
  v116 = v4;
  v117 = v1;
  v111 = v5;
  v7 = v6;
  v125 = *MEMORY[0x1E69E9840];
  v115 = *v0;
  MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
  v9 = OUTLINED_FUNCTION_47(MatchingRecordCache);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9();
  v109 = v12;
  v13 = OUTLINED_FUNCTION_43();
  v14 = type metadata accessor for KeyedAggregationMetadataCache(v13);
  v15 = OUTLINED_FUNCTION_47(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  v110 = v18;
  OUTLINED_FUNCTION_43();
  v19 = type metadata accessor for MaterializedView();
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v108 = v25;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30();
  v112 = v27;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - v29;
  v113 = type metadata accessor for BookmarkCache(0);
  v31 = OUTLINED_FUNCTION_12(v113);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_80_2();
  v118 = v0;
  v35 = *(v22 + 16);
  v114 = v0 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_materializedView;
  v35();
  v119 = v7;
  (v35)(v30, v7, v19);
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v36 = v117;
  v37 = v116;
  v38 = SQLExpressionEvaluator.init(db:)(v116);
  v117 = v36;
  if (v36)
  {
    v39 = *(v22 + 8);
    v40 = OUTLINED_FUNCTION_51_1();
    v39(v40);
    (v39)(v30, v19);
    v41 = v118;
LABEL_10:
    (v39)(v114, v19);
    v53 = *(*v41 + 48);
    v54 = *(*v41 + 52);
    swift_deallocPartialClassInstance();
LABEL_11:
    v55 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_65();
    return;
  }

  v102 = v3;
  v103 = v2;
  v104 = v35;
  v105 = v22 + 16;
  v107 = v22;
  v42 = v38;
  v121._countAndFlagsBits = MaterializedView.name.getter();
  v121._object = v43;

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_136_0();
  MEMORY[0x1865F6280]();

  object = v121._object;
  countAndFlagsBits = v121._countAndFlagsBits;
  MaterializedView.name.getter();
  v45 = static BookmarkCache.createBookmarkTableSQL(materializedViewName:)();
  v47 = v46;

  v48._countAndFlagsBits = v45;
  v49 = v42;
  v48._object = v47;
  SQLExpressionEvaluator.execute(sql:bindingValues:)(v48, MEMORY[0x1E69E7CC0]);
  if (v50)
  {

LABEL_7:

LABEL_8:
    v39 = *(v107 + 8);
LABEL_9:
    v52 = OUTLINED_FUNCTION_51_1();
    v39(v52);
    (v39)(v30, v19);
    v41 = v118;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_121_0();

  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v121._countAndFlagsBits = 0xD00000000000001FLL;
  v121._object = 0x8000000184DDCED0;
  MEMORY[0x1865F6280](countAndFlagsBits, object);
  SQLExpressionEvaluator.execute(sql:bindingValues:)(v121, MEMORY[0x1E69E7CC0]);
  if (v51)
  {

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_121_0();

  v56 = *(v113 + 20);
  if (!v42)
  {
    v117 = *(v113 + 20);

    v67 = 0;
    v68 = v107;
    v59 = v112;
    goto LABEL_20;
  }

  v57 = v107;
  if (*(v42 + 16) != 1)
  {

    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_1_23();
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v82, v83);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_62_2();
    swift_willThrow();

    v39 = *(v57 + 8);
    goto LABEL_9;
  }

  v117 = *(v113 + 20);
  specialized Collection.first.getter(v42, &v121);

  if (v121._object)
  {
    v101 = v122;
    countAndFlagsBits = v123;
    v58 = v124;

    v59 = v112;
    if (v58 != 3)
    {
      v91 = OUTLINED_FUNCTION_47_2();
      outlined consume of DatabaseValue(v91, v92, v58);
      OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_1_23();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v93, v94);
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_62_2();
      swift_willThrow();

      goto LABEL_8;
    }

    v100 = objc_opt_self();
    v60 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Set._bridgeToObjectiveC()().super.isa;

    OUTLINED_FUNCTION_47_2();
    v62 = Data._bridgeToObjectiveC()().super.isa;
    v121._countAndFlagsBits = 0;
    v63 = [v100 unarchivedObjectOfClasses:isa fromData:v62 error:&v121];

    if (v63)
    {
      v64 = v121._countAndFlagsBits;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
      if (swift_dynamicCast())
      {
        v65 = OUTLINED_FUNCTION_47_2();
        outlined consume of DatabaseValue(v65, v66, 3);
        v67 = v120;
        v68 = v107;
        v49 = v42;
LABEL_20:
        v69 = v102;
        *(v102 + v117) = v67;
        (*(v68 + 32))(v69, v30, v19);
        v70 = v113;
        *(v69 + *(v113 + 24)) = 0;
        *(v69 + *(v70 + 28)) = v37;
        *(v69 + *(v70 + 32)) = v49;
        v71 = v103;
        _s12BiomeStreams13StorableValueOWObTm_1(v69, v103);
        v72 = v118;
        _s12BiomeStreams13StorableValueOWObTm_1(v71, v118 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_bookmark);
        v73 = v104;
        (v104)(v59, v119, v19);
        v74 = v59;
        v76 = v110;
        v75 = v111;
        KeyedAggregationMetadataCache.init(materializedView:database:cacheSize:)(v74, v37, v111, v77, v78, v79, v80, v81, v100, v101, v102, v103, v104, v105, countAndFlagsBits, v107, v108, v109, v110, v111);
        _s12BiomeStreams13StorableValueOWObTm_1(v76, v72 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedAggregationMetadata);
        v84 = v108;
        (v73)(v108, v119, v19);
        v85 = v109;
        KeyedFirstMatchingRecordCache.init(materializedView:database:cacheSize:)(v84, v37, v75, v86, v87, v88, v89, v90, v100, v101, v102, v103, v104, v105, countAndFlagsBits, v107, v108, v109, v110, v111);
        (*(v68 + 8))(v119, v19);
        _s12BiomeStreams13StorableValueOWObTm_1(v85, v72 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_1_23();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v96, v97);
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_62_2();
    }

    else
    {
      v95 = v121._countAndFlagsBits;
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();

    v98 = OUTLINED_FUNCTION_47_2();
    outlined consume of DatabaseValue(v98, v99, 3);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t *SQLExpressionEvaluator.init(db:)(uint64_t a1)
{
  v3 = v1;
  v36 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v1[3] = a1;
  *(v1 + 16) = 0;
  v1[4] = Dictionary.init(dictionaryLiteral:)();
  v5 = OUTLINED_FUNCTION_16_1();
  v10 = OUTLINED_FUNCTION_18_0(v5, v6, v7, v8, v9);
  v11 = OUTLINED_FUNCTION_25_1(v10);
  swift_getErrorValue();
  Error.localizedDescription.getter();

  OUTLINED_FUNCTION_1();
  v35 = v12;
  OUTLINED_FUNCTION_2_7();
  v33 = v13;
  v34 = v14;
  v15 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_14_1(v15, v16, v17, v18, v19, v20, v21, v22, v31, v32, v15, v15, v33, v34, v35);
  OUTLINED_FUNCTION_3_10();
  v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v25 = v24;

  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  v26 = OUTLINED_FUNCTION_63();
  *v27 = 0xD000000000000054;
  v27[1] = v2;
  v27[2] = v23;
  v27[3] = v25;
  OUTLINED_FUNCTION_20_2(v26, v27);
  v28 = v3[4];

  OUTLINED_FUNCTION_26_1();
  v29 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t MaterializedView.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OUTLINED_FUNCTION_88()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 192);
  return *(v1 - 184);
}

void OUTLINED_FUNCTION_88_1()
{

  JUMPOUT(0x1865F6280);
}

uint64_t SQLExpressionEvaluator.execute(stmt:bindingValues:)(sqlite3_stmt *a1, uint64_t a2)
{
  v6 = a1;
  v7 = *(v2 + 24);
  bind(_:to:db:)(a2, a1, v7);
  if (v3)
  {
    v8 = sqlite3_reset(v6);
    if (!v8)
    {
      return v5;
    }

    v9 = BMSQLDatabaseError(v8, v7, 0);
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;

    v105 = v10;
    v106 = v12;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v13;

    if (one-time initialization token for SQL != -1)
    {
LABEL_54:
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logging.SQL);

    v16 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v5))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v105 = v18;
      *v17 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v105);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1848EE000, v16, v5, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1865F7B70](v18, -1, -1);
      MEMORY[0x1865F7B70](v17, -1, -1);
    }

    else
    {
    }

    if (sqlite3_sql(v6))
    {
LABEL_24:
      v46 = String.init(cString:)();
      specialized Dictionary._Variant.removeValue(forKey:)(v46, v47);

      sqlite3_finalize(v6);
      return v5;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v20 = sqlite3_step(v6);
  if (v20 == 101)
  {
    v49 = sqlite3_reset(v6);
    if (!v49)
    {
      return 0;
    }

    v50 = BMSQLDatabaseError(v49, v7, 0);
    swift_getErrorValue();
    v51 = Error.localizedDescription.getter();
    v53 = v52;

    v105 = v51;
    v106 = v53;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v54;

    if (one-time initialization token for SQL == -1)
    {
LABEL_28:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logging.SQL);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v105 = v59;
        *v58 = 136315138;
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v105);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_1848EE000, v56, v57, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1865F7B70](v59, -1, -1);
        MEMORY[0x1865F7B70](v58, -1, -1);
      }

      else
      {
      }

      if (!sqlite3_sql(v6))
      {
        goto LABEL_60;
      }

      v98 = String.init(cString:)();
      specialized Dictionary._Variant.removeValue(forKey:)(v98, v99);

      sqlite3_finalize(v6);
      return 0;
    }

LABEL_56:
    swift_once();
    goto LABEL_28;
  }

  if (v20 == 100)
  {
    v100 = v7;
    object = sqlite3_column_count(v6);
    v21 = Dictionary.init(dictionaryLiteral:)();
    v102 = object;
    if ((object & 0x80000000) == 0)
    {
      v5 = v21;
      v22 = 0;
      v101 = v6;
      while (v102 != v22)
      {
        if (v22 == 0x7FFFFFFF)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (!sqlite3_column_name(v6, v22))
        {
          __break(1u);
          goto LABEL_58;
        }

        String.init(cString:)();
        v23 = String.lowercased()();
        countAndFlagsBits = v23._countAndFlagsBits;
        object = v23._object;

        v103 = v22;
        v24 = DatabaseValue.init(stmt:index:)(v6, v22);
        v26 = v25;
        v28 = v27;
        v104 = v24;
        outlined copy of DatabaseValue(v24, v25, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v5;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v23._countAndFlagsBits, v23._object);
        v32 = *(v5 + 2);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_52;
        }

        v35 = v30;
        v36 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13DatabaseValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13DatabaseValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
        {
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v23._countAndFlagsBits, v23._object);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_62;
          }

          v35 = v37;
        }

        v5 = v105;
        if (v36)
        {
          v39 = *(v105 + 7) + 24 * v35;
          v40 = *v39;
          countAndFlagsBits = *(v39 + 8);
          v41 = *(v39 + 16);
          v6 = v104;
          *v39 = v104;
          *(v39 + 8) = v26;
          *(v39 + 16) = v28;
        }

        else
        {
          *(v105 + (v35 >> 6) + 8) |= 1 << v35;
          *(*(v5 + 6) + 16 * v35) = v23;
          v42 = *(v5 + 7) + 24 * v35;
          v6 = v104;
          *v42 = v104;
          *(v42 + 8) = v26;
          *(v42 + 16) = v28;
          v43 = *(v5 + 2);
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_53;
          }

          v40 = 0;
          countAndFlagsBits = 0;
          *(v5 + 2) = v45;
          v41 = -1;
        }

        outlined consume of DatabaseValue(v6, v26, v28);
        outlined consume of DatabaseValue?(v40, countAndFlagsBits, v41);
        v22 = v103 + 1;
        v6 = v101;
      }

      v85 = sqlite3_reset(v6);
      if (!v85)
      {
        return v5;
      }

      v61 = v5;
      v86 = BMSQLDatabaseError(v85, v100, 0);
      swift_getErrorValue();
      v87 = Error.localizedDescription.getter();
      v89 = v88;

      v105 = v87;
      v106 = v89;
      lazy protocol witness table accessor for type String and conformance String();
      v90 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v92 = v91;

      if (one-time initialization token for SQL != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, static Logging.SQL);

      v81 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v105 = v96;
        *v95 = 136315138;
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v105);

        *(v95 + 4) = v97;
        _os_log_impl(&dword_1848EE000, v81, v94, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x1865F7B70](v96, -1, -1);
        MEMORY[0x1865F7B70](v95, -1, -1);
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_56;
  }

  v61 = v7;
  v62 = BMSQLDatabaseError(v20, v7, 0);
  swift_getErrorValue();
  v63 = Error.localizedDescription.getter();
  v65 = v64;

  v105 = v63;
  v106 = v65;
  lazy protocol witness table accessor for type String and conformance String();
  v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v68 = v67;

  if (!sqlite3_sql(v6))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v5 = String.init(cString:)();
  v70 = v69;
  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  swift_allocError();
  *v71 = v5;
  *(v71 + 8) = v70;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = 1;
  swift_willThrow();
  v72 = sqlite3_reset(v6);
  if (!v72)
  {
    return v5;
  }

  v73 = BMSQLDatabaseError(v72, v61, 0);
  swift_getErrorValue();
  v74 = Error.localizedDescription.getter();
  v76 = v75;

  v105 = v74;
  v106 = v76;
  v77 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v79 = v78;

  if (one-time initialization token for SQL != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static Logging.SQL);

  v81 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v81, v5))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v105 = v83;
    *v82 = 136315138;
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v105);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_1848EE000, v81, v5, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1865F7B70](v83, -1, -1);
    MEMORY[0x1865F7B70](v82, -1, -1);
  }

  else
  {
  }

  if (sqlite3_sql(v6))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_48:

LABEL_49:

  v5 = v61;
  if (sqlite3_sql(v6))
  {
    goto LABEL_24;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

const void *DatabaseValue.init(stmt:index:)(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2) - 1;
  result = 0;
  switch(v4)
  {
    case 0:
      return sqlite3_column_int64(a1, a2);
    case 1:
      return COERCE_CONST_VOID_(sqlite3_column_double(a1, a2));
    case 2:
      if (!sqlite3_column_text(a1, a2))
      {
        __break(1u);
LABEL_10:
        _StringGuts.grow(_:)(33);

        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865F6280](v8);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x1848FAECCLL);
      }

      return String.init(cString:)();
    case 3:
      result = sqlite3_column_blob(a1, a2);
      if (result)
      {
        v6 = result;
        v7 = sqlite3_column_bytes(a1, a2);
        return MEMORY[0x1865F5B20](v6, v7);
      }

      return result;
    case 4:
      return result;
    default:
      goto LABEL_10;
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of DatabaseValue?(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of DatabaseValue(result, a2, a3);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12BiomeStreams13DatabaseValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Dictionary.startIndex.getter();
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v7 = specialized Dictionary.subscript.getter(v19, result, v5, 0, a1);
    v8 = v12;
    v9 = v19[0];
    v10 = v19[1];
    v11 = v20;

    v13 = OUTLINED_FUNCTION_7_2();
    outlined copy of DatabaseValue(v13, v14, v15);

    v16 = OUTLINED_FUNCTION_7_2();
    result = outlined consume of DatabaseValue(v16, v17, v18);
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for Schema, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for LogicalPlan, a2);
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(a5 + 56) + 24 * a2;
    v9 = *(v8 + 8);
    *result = *v8;
    *(result + 8) = v9;
    v10 = *(v8 + 16);
    *(result + 16) = v10;

    v11 = OUTLINED_FUNCTION_2_5();
    outlined copy of DatabaseValue(v11, v12, v10);
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = (*(a5 + 48) + 16 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = type metadata accessor for StorableValue(0);
    outlined init with copy of StorableValue(v7 + *(*(v11 - 8) + 72) * a2, v6);

    return OUTLINED_FUNCTION_2_5();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined copy of DatabaseValue(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of DatabaseValue(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_75_1(int a1@<W8>)
{
  *(v3 - 452) = a1;
  *(v3 - 464) = v1 + 32;
  *(v3 - 472) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

void OUTLINED_FUNCTION_73_1()
{

  JUMPOUT(0x1865F6280);
}

uint64_t outlined init with take of StorableValue(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return a2;
}

{
  v4 = type metadata accessor for StorableValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s12BiomeStreams13StorableValueOWObTm_0()
{
  v1 = OUTLINED_FUNCTION_147();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_81();
  v7(v6);
  return v0;
}

uint64_t _s12BiomeStreams13StorableValueOWObTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return a2;
}

void KeyedAggregationMetadataCache.init(materializedView:database:cacheSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v22;
  a20 = v23;
  v304 = v20;
  v305 = v24;
  v26 = v25;
  v307 = v27;
  v292 = v28;
  v287 = type metadata accessor for SQLRawDataType();
  v29 = OUTLINED_FUNCTION_2_1(v287);
  v285 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v33);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v34 = OUTLINED_FUNCTION_12(v291);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v38);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v39 = OUTLINED_FUNCTION_2_1(v286);
  v298 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_51();
  v295 = v44;
  OUTLINED_FUNCTION_43();
  v306 = type metadata accessor for SQLDataType();
  v45 = OUTLINED_FUNCTION_2_1(v306);
  v302 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  v296 = v49;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_51();
  v301 = v51;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v52 = OUTLINED_FUNCTION_2_1(v303);
  v300 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_0();
  v299 = v56;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_45_0();
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v269 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v269 - v62;
  v64 = type metadata accessor for SelectCore();
  v65 = OUTLINED_FUNCTION_2_1(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_14();
  v72 = (v70 - v71);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v269 - v74;
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v76 = v304;
  v77 = SQLExpressionEvaluator.init(db:)(v26);
  if (v76)
  {
    v78 = type metadata accessor for MaterializedView();
    OUTLINED_FUNCTION_5_7(v78);
    (*(v79 + 8))(v307);
LABEL_8:
    OUTLINED_FUNCTION_65();
    return;
  }

  v297 = v72;
  v283 = v63;
  v294 = v61;
  v282 = v21;
  v304 = v26;
  v281 = v77;
  v293 = 0;
  MaterializedView.select.getter(v75);
  v80 = SelectCore.groupBy.getter();
  v81 = *(v67 + 8);
  v82 = OUTLINED_FUNCTION_133_0();
  v81(v82);
  if (!v80)
  {
    v88 = MEMORY[0x1E69E7CC0];
    v89 = type metadata accessor for KeyedAggregationMetadataCache(0);
    v90 = OUTLINED_FUNCTION_127_0(v89);
    v91 = v292;
    *(v292 + v92) = 0;
    *(v91 + *(v90 + 52)) = v88;
    v93 = OUTLINED_FUNCTION_140_0(v90);
    *(v91 + v94) = v95;
    v96 = (v91 + *(v93 + 60));
    *v96 = 0u;
    v96[1] = 0u;
    v98 = v304;
    v97 = v305;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySS12BiomeStreams13StorableValueOGG5value_AA10CacheEventO5eventtMd, &_sSaySDySS12BiomeStreams13StorableValueOGG5value_AA10CacheEventO5eventtMR);
    lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
    OUTLINED_FUNCTION_90_2();
    v99 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for KeyedAggregationMetadataCache(0);
    *(v91 + v80[7]) = v99;
    v100 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySS12BiomeStreams13StorableValueOGGSgMd, &_sSaySDySS12BiomeStreams13StorableValueOGGSgMR);
    OUTLINED_FUNCTION_90_2();
    v101 = Dictionary.init(dictionaryLiteral:)();
    v102 = (v91 + v80[8]);
    *v102 = v100;
    v102[1] = v101;
    *(v91 + v80[9]) = v97;
    v103 = type metadata accessor for MaterializedView();
    OUTLINED_FUNCTION_12(v103);
    v105 = *(v104 + 32);
    v106 = OUTLINED_FUNCTION_60_2();
    v107(v106);
    v108 = MEMORY[0x1E69E7CD0];
    *(v91 + v80[6]) = MEMORY[0x1E69E7CD0];
    *(v91 + v80[5]) = v108;
    *(v91 + v80[10]) = v98;
    *(v91 + v80[11]) = v281;
    goto LABEL_8;
  }

  v310._countAndFlagsBits = v80;

  v83 = v293;
  specialized MutableCollection<>.sort(by:)();
  v84 = v83;
  if (v83)
  {
    goto LABEL_83;
  }

  countAndFlagsBits = v310._countAndFlagsBits;
  v86 = v297;
  MaterializedView.select.getter(v297);
  selectAndHavingAggregateFunctions(selectCore:)(v86);
  v87 = OUTLINED_FUNCTION_60_2();
  v81(v87);
  static KeyedAggregationMetadataCache.payloadSchema(aggregationFunctions:)();
  v110 = v109;

  _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
  v112 = v111;
  MaterializedView.name.getter();
  static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
  v80 = v113;

  v114 = OUTLINED_FUNCTION_20();
  v116 = tableExists(sqlExpressionEvaluator:tableName:)(v114, v115, v80);
  v293 = 0;
  v274 = v112;
  v272 = countAndFlagsBits;
  v117 = v116;

  v98 = v304;
  v271 = v117;
  v273 = v110;
  if (v117)
  {
    v97 = v305;
LABEL_11:

    v118 = type metadata accessor for KeyedAggregationMetadataCache(0);
    v119 = OUTLINED_FUNCTION_127_0(v118);
    v120 = v292;
    *(v292 + v121) = v272;
    *(v120 + *(v119 + 52)) = v273;
    OUTLINED_FUNCTION_140_0(v119);
    *(v124 + v123) = v122 & ~v271;

    v125 = MaterializedView.name.getter();
    _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
    v84 = v126;

    v127 = *(v84 + 16);
    v303 = v84;
    if (v127)
    {
      OUTLINED_FUNCTION_46_2();
      _StringGuts.grow(_:)(28);

      strcpy(&v310, "SELECT * FROM ");
      HIBYTE(v310._object) = -18;
      OUTLINED_FUNCTION_77();
      static KeyedAggregationMetadataCache.tableName(materializedViewName:)();

      v128 = OUTLINED_FUNCTION_94_2();
      MEMORY[0x1865F6280](v128);

      OUTLINED_FUNCTION_88_1();
      v129 = *(v84 + 16);
      v130 = MEMORY[0x1E69E7CC0];
      if (v129)
      {
        v301 = v80;
        v308 = MEMORY[0x1E69E7CC0];
        v131 = OUTLINED_FUNCTION_41_2();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v131, v132, v133);
        v134 = 0;
        OUTLINED_FUNCTION_12_6();
        v302 = v84 + v136;
        v137 = v293;
        v138 = v284;
        while (1)
        {
          v306 = v130;
          if (v134 >= *(v84 + 16))
          {
            goto LABEL_81;
          }

          outlined init with copy of Date?(v302 + *(v135 + 72) * v134, v138, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
          v139 = *v138;
          v140 = v138[1];
          v141 = *(v286 + 48);
          closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
          if (v137)
          {

            v265 = type metadata accessor for MaterializedView();
            OUTLINED_FUNCTION_5_7(v265);
            (*(v266 + 8))(v307);
            outlined destroy of (columnName: String, dataType: SQLDataType)(v138, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);

            goto LABEL_67;
          }

          v144 = v142;
          v145 = v143;
          outlined destroy of (columnName: String, dataType: SQLDataType)(v138, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
          v130 = v306;
          v308 = v306;
          Kind = v306[1].Kind;
          Description = v306[1].Description;
          if (Kind >= Description >> 1)
          {
            v149 = OUTLINED_FUNCTION_4_9(Description);
            v293 = 0;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v149, Kind + 1, 1);
            v138 = v284;
            v137 = v293;
            v130 = v308;
          }

          ++v134;
          v130[1].Kind = Kind + 1;
          v148 = &v130[Kind];
          v148[2].Kind = v144;
          v148[2].Description = v145;
          v84 = v303;
          v98 = v304;
          v135 = v298;
          if (v129 == v134)
          {
            v293 = v137;
            v91 = v292;
            v97 = v305;
            v80 = v301;
            goto LABEL_68;
          }
        }
      }

      v91 = v292;
LABEL_68:
      v308 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_75_2();

      OUTLINED_FUNCTION_74_2();

      MEMORY[0x1865F6280](41, 0xE100000000000000);
      object = v310._object;
      v254 = v310._countAndFlagsBits;
    }

    else
    {
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(16);

      strcpy(&v310, "SELECT * FROM ");
      HIBYTE(v310._object) = -18;
      OUTLINED_FUNCTION_77();
      static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
      OUTLINED_FUNCTION_75_2();

      MEMORY[0x1865F6280](v84, v125);

      object = v310._object;
      v254 = v310._countAndFlagsBits;
      v91 = v292;
    }

    v267 = swift_allocObject();
    *(v267 + 16) = v303;
    v268 = (v91 + v80[15]);
    *v268 = v254;
    v268[1] = object;
    v268[2] = closure #2 in static KeyedQueryPlannerMetadataCache.readMetadataSQL(materializedViewName:groupBySchema:)partial apply;
    v268[3] = v267;
    goto LABEL_7;
  }

  v150 = Dictionary.init(dictionaryLiteral:)();
  v151 = 0;
  v152 = *(v110 + 16);
  v297 = (v302 + 32);
  v275 = v302 + 40;
  v279 = (v302 + 8);
  v97 = v305;
  v84 = v303;
  v153 = v282;
  v154 = v283;
LABEL_21:
  v155 = v300;
  while (1)
  {
    if (v152 == v151)
    {
      v303 = *(v274 + 16);
      if (!v303)
      {
LABEL_50:

        v224 = v307;
        v84 = MaterializedView.name.getter();
        OUTLINED_FUNCTION_46_2();
        _StringGuts.grow(_:)(33);

        OUTLINED_FUNCTION_49_1();
        OUTLINED_FUNCTION_70();
        static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
        OUTLINED_FUNCTION_75_2();

        OUTLINED_FUNCTION_74_2();

        OUTLINED_FUNCTION_109_1();
        v225 = *(v150 + 16);
        v226 = MEMORY[0x1E69E7CC0];
        if (v225)
        {
          v311 = MEMORY[0x1E69E7CC0];
          v227 = OUTLINED_FUNCTION_41_2();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v227, v228, v229);
          v226 = v311;
          v230 = specialized Dictionary.startIndex.getter(v150);
          v233 = v302;
          v294 = (v302 + 16);
          v295 = v150 + 64;
          v285 += 8;
          while ((v230 & 0x8000000000000000) == 0 && v230 < 1 << *(v150 + 32))
          {
            v84 = v291;
            if (((*(v295 + ((v230 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
            {
              goto LABEL_78;
            }

            LODWORD(v299) = v232;
            v300 = v231;
            v301 = v225;
            v303 = v226;
            if (*(v150 + 36) != v231)
            {
              goto LABEL_79;
            }

            v234 = *(v291 + 48);
            v235 = *(v150 + 56);
            v236 = (*(v150 + 48) + 16 * v230);
            v237 = *v236;
            v238 = v236[1];
            v239 = *(v233 + 72);
            v296 = v230;
            v240 = v306;
            v241 = v290;
            (*(v233 + 16))(v290 + v234, v235 + v239 * v230, v306);
            v242 = v289;
            *v289 = v237;
            *(v242 + 8) = v238;
            (*(v233 + 32))(v242 + *(v84 + 48), v241 + v234, v240);
            OUTLINED_FUNCTION_141_0();

            MEMORY[0x1865F6280](v237, v238);
            MEMORY[0x1865F6280](8226, 0xE200000000000000);
            v243 = v288;
            SQLDataType.columnType()();
            v293 = v244;
            if (v244)
            {

              v256 = type metadata accessor for MaterializedView();
              OUTLINED_FUNCTION_5_7(v256);
              (*(v257 + 8))(v307);
              outlined destroy of (columnName: String, dataType: SQLDataType)(v242, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);

              goto LABEL_8;
            }

            v245 = SQLRawDataType.rawValue.getter();
            v247 = v246;
            OUTLINED_FUNCTION_16_0(&a13);
            v248(v243, v287);
            MEMORY[0x1865F6280](v245, v247);

            v249 = v308;
            v84 = v309;
            outlined destroy of (columnName: String, dataType: SQLDataType)(v242, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
            v226 = v303;
            v312 = v303;
            v251 = *(v303 + 16);
            v250 = *(v303 + 24);
            if (v251 >= v250 >> 1)
            {
              v253 = OUTLINED_FUNCTION_4_9(v250);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v253, v251 + 1, 1);
              v226 = v312;
            }

            *(v226 + 16) = v251 + 1;
            v252 = v226 + 16 * v251;
            *(v252 + 32) = v249;
            *(v252 + 40) = v84;
            v230 = specialized _NativeDictionary.index(after:)(v296, v300, v299 & 1, v150);
            v233 = v302;
            v225 = (v301 - 1);
            v98 = v304;
            v97 = v305;
            if (v301 == 1)
            {
              outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v230, v231, v232 & 1);
              v224 = v307;
              goto LABEL_64;
            }
          }

          goto LABEL_77;
        }

LABEL_64:
        v308 = v226;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v258 = BidirectionalCollection<>.joined(separator:)();
        v260 = v259;

        MEMORY[0x1865F6280](v258, v260);

        OUTLINED_FUNCTION_73_1();

        v80 = v310._object;
        v261 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v310, MEMORY[0x1E69E7CC0]);
        if (v262)
        {
          v263 = type metadata accessor for MaterializedView();
          OUTLINED_FUNCTION_5_7(v263);
          (*(v264 + 8))(v224);

LABEL_67:

          goto LABEL_8;
        }

        v274 = v261;
        v293 = 0;

        goto LABEL_11;
      }

      v196 = 0;
      v197 = *(v298 + 80);
      OUTLINED_FUNCTION_19_0();
      v198 = *(v286 + 48);
      v300 = v200 + v199;
      v301 = v198;
      v201 = v295;
      v202 = v296;
      v203 = v306;
      while (1)
      {
        if (v196 >= *(v274 + 16))
        {
          goto LABEL_74;
        }

        v84 = v201;
        outlined init with copy of Date?(v300 + *(v298 + 72) * v196, v201, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
        v205 = *v84;
        v204 = *(v84 + 8);
        v206 = *v297;
        (*v297)(v202, v301 + v84, v203);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v310._countAndFlagsBits = v150;
        specialized __RawDictionaryStorage.find<A>(_:)(v205, v204);
        v208 = *(v150 + 16);
        OUTLINED_FUNCTION_27_3();
        v213 = v211 + v212;
        if (__OFADD__(v211, v212))
        {
          goto LABEL_75;
        }

        v214 = v209;
        v84 = v210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v213))
        {
          v215 = specialized __RawDictionaryStorage.find<A>(_:)(v205, v204);
          v217 = v302;
          v202 = v296;
          if ((v84 & 1) != (v216 & 1))
          {
            goto LABEL_82;
          }

          v214 = v215;
          if ((v84 & 1) == 0)
          {
LABEL_45:
            v150 = v310._countAndFlagsBits;
            OUTLINED_FUNCTION_14_4(v310._countAndFlagsBits + 8 * (v214 >> 6));
            v218 = (*(v150 + 48) + 16 * v214);
            *v218 = v205;
            v218[1] = v204;
            v219 = *(v150 + 56) + *(v217 + 72) * v214;
            v203 = v306;
            v206(v219, v202, v306);
            v220 = *(v150 + 16);
            v192 = __OFADD__(v220, 1);
            v221 = v220 + 1;
            if (v192)
            {
              goto LABEL_80;
            }

            *(v150 + 16) = v221;
            goto LABEL_49;
          }
        }

        else
        {
          v217 = v302;
          v202 = v296;
          if ((v84 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        v150 = v310._countAndFlagsBits;
        v222 = *(v310._countAndFlagsBits + 56) + *(v217 + 72) * v214;
        v223 = *(v217 + 40);
        v203 = v306;
        v223(v222, v202, v306);
LABEL_49:
        v98 = v304;
        v97 = v305;
        v201 = v295;
        if (v303 == ++v196)
        {
          goto LABEL_50;
        }
      }
    }

    if (v151 >= *(v110 + 16))
    {
      break;
    }

    v156 = *(v110 + 8 * v151++ + 32);
    if (*(v156 + 16))
    {
      v276 = *(v156 + 16);
      v269 = v152;
      v270 = v151;
      v278 = *(v84 + 64);
      v157 = *(v300 + 80);
      OUTLINED_FUNCTION_19_0();
      v277 = v158 + v159;
      v280 = v158;

      v160 = 0;
      while (v160 < *(v280 + 16))
      {
        outlined init with copy of Date?(v277 + *(v155 + 72) * v160, v154, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v161 = *v154;
        v162 = *(v154 + 16);
        v163 = *(v154 + 24);
        v164 = *(v84 + 64);
        v165 = v154;
        v166 = v150;
        v167 = v294;
        *v294 = v161;
        *(v167 + 2) = v162;
        *(v167 + 3) = v163;
        v84 = v297;
        v168 = *v297;
        v169 = v306;
        (*v297)(v167 + v164, v165 + v278, v306);
        outlined init with copy of Date?(v167, v153, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v170 = v153[1];

        v172 = v153[2];
        v171 = v153[3];
        v173 = v299;
        outlined init with copy of Date?(v167, v299, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v174 = *(v173 + 8);

        v175 = *(v173 + 24);

        v168(v301, v173 + *(v303 + 64), v169);
        v176 = swift_isUniquelyReferenced_nonNull_native();
        v310._countAndFlagsBits = v166;
        v177 = OUTLINED_FUNCTION_68_1();
        specialized __RawDictionaryStorage.find<A>(_:)(v177, v178);
        OUTLINED_FUNCTION_15_3();
        v183 = v181 + v182;
        if (__OFADD__(v181, v182))
        {
          goto LABEL_73;
        }

        v84 = v179;
        v184 = v180;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v176, v183))
        {
          v185 = OUTLINED_FUNCTION_68_1();
          specialized __RawDictionaryStorage.find<A>(_:)(v185, v186);
          OUTLINED_FUNCTION_50_1();
          if (!v188)
          {
            goto LABEL_82;
          }

          v84 = v187;
        }

        v154 = v283;
        if (v184)
        {

          v150 = v310._countAndFlagsBits;
          v189 = v306;
          (*(v302 + 40))(*(v310._countAndFlagsBits + 56) + *(v302 + 72) * v84, v301, v306);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v294, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        }

        else
        {
          v150 = v310._countAndFlagsBits;
          OUTLINED_FUNCTION_14_4(v310._countAndFlagsBits + 8 * (v84 >> 6));
          v190 = (*(v150 + 48) + 16 * v84);
          *v190 = v172;
          v190[1] = v171;
          v189 = v306;
          (v168)(*(v150 + 56) + *(v302 + 72) * v84, v301);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v294, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v191 = *(v150 + 16);
          v192 = __OFADD__(v191, 1);
          v193 = v191 + 1;
          if (v192)
          {
            goto LABEL_76;
          }

          *(v150 + 16) = v193;
        }

        v194 = v304;
        v195 = v305;
        v84 = v303;
        v153 = v282;
        ++v160;
        (*v279)(v282 + *(v303 + 64), v189);
        v155 = v300;
        if (v276 == v160)
        {

          v110 = v273;
          v151 = v270;
          v152 = v269;
          v97 = v195;
          v98 = v194;
          goto LABEL_21;
        }
      }

      goto LABEL_72;
    }
  }

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
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_83:

  __break(1u);
}

uint64_t sub_1848FC994()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_50_0()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return type metadata accessor for Date.ISO8601FormatStyle();
}

uint64_t OUTLINED_FUNCTION_61@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  *(v4 + 8) = v2 & 1;
  result = v4;
  v6 = *(v3 - 168);
  return result;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_97_2();
  v8 = type metadata accessor for SQLExpression();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_148_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_80_2();
  v40 = v7;
  if (v5 != v7)
  {
    v16 = v15;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v19 = *(v17 + 56);
    v48 = (v17 - 8);
    v49 = v18;
    v46 = (v17 + 16);
    v47 = *v3;
    v20 = *v3 + v19 * (v5 - 1);
    v45 = -v19;
    v21 = v0 - v5;
    v39 = v19;
    v22 = *v3 + v19 * v5;
    while (2)
    {
      v43 = v20;
      v44 = v5;
      v41 = v22;
      v42 = v21;
      v23 = v20;
      while (1)
      {
        OUTLINED_FUNCTION_113_1();
        v49();
        (v49)(v16, v23, v8);
        v24 = SQLExpression.sql.getter();
        v25 = v1;
        v26 = v16;
        v28 = v27;
        if (v24 == SQLExpression.sql.getter() && v28 == v29)
        {
          break;
        }

        OUTLINED_FUNCTION_70();
        v31 = OUTLINED_FUNCTION_85();

        v32 = *v48;
        (*v48)(v26, v8);
        v33 = OUTLINED_FUNCTION_94_2();
        v32(v33);
        v16 = v26;
        v1 = v25;
        if (v31)
        {
          if (!v47)
          {
            __break(1u);
            return;
          }

          v34 = *v46;
          OUTLINED_FUNCTION_113_1();
          v34();
          swift_arrayInitWithTakeFrontToBack();
          v35 = OUTLINED_FUNCTION_35_3();
          (v34)(v35);
          v23 += v45;
          v22 += v45;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v37 = *v48;
      (*v48)(v26, v8);
      v38 = OUTLINED_FUNCTION_94_2();
      v37(v38);
      v16 = v26;
      v1 = v25;
LABEL_14:
      v5 = v44 + 1;
      v20 = v43 + v39;
      v21 = v42 - 1;
      v22 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_64();
  v54 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_84();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v51 = v15;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_67();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_51();
  v43 = v8;
  if (v6 != v8)
  {
    v20 = v18;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v52 = (v21 - 8);
    v53 = v22;
    v24 = *v4 + v23 * (v6 - 1);
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = v0 - v6;
    v50 = *v4;
    v42 = v23;
    v26 = *v4 + v23 * v6;
    while (2)
    {
      v46 = v24;
      v47 = v6;
      v44 = v26;
      v45 = v25;
      v27 = v25;
      while (1)
      {
        v55 = v27;
        v53(v20, v26, v11);
        v28 = (v53)(v1, v24, v11);
        v29 = (v54)(v28);
        v30 = v20;
        v32 = v31;
        if (v29 == v54() && v32 == v33)
        {
          break;
        }

        v35 = OUTLINED_FUNCTION_85();

        v36 = *v52;
        v37 = OUTLINED_FUNCTION_58();
        v36(v37);
        (v36)(v30, v11);
        v20 = v30;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return;
          }

          v38 = *v49;
          v39 = OUTLINED_FUNCTION_50();
          v38(v39);
          OUTLINED_FUNCTION_82();
          swift_arrayInitWithTakeFrontToBack();
          (v38)(v24, v51, v11);
          v24 += v48;
          v26 += v48;
          v27 = v55 + 1;
          if (v55 != -1)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v40 = *v52;
      v41 = OUTLINED_FUNCTION_58();
      v40(v41);
      (v40)(v30, v11);
      v20 = v30;
LABEL_13:
      v6 = v47 + 1;
      v24 = v46 + v42;
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_65();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 152);
  v4 = *(v1 - 192);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t SQLExpression.sql.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t OUTLINED_FUNCTION_51_0()
{
  v2 = *(v0 - 280);

  return TimeZone.init(secondsFromGMT:)();
}

uint64_t selectAndHavingAggregateFunctions(selectCore:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = type metadata accessor for SQLExpression();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_51();
  v55 = v18;
  OUTLINED_FUNCTION_43();
  v19 = type metadata accessor for ResultColumn();
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v57 = a1;
  v25 = SelectCore.select.getter();
  v26 = *(v25 + 16);
  v56 = v11;
  if (v26)
  {
    v53 = v25;
    v54 = v7;
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v29 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v30 = *(v27 + 56);
    v60 = (v11 + 8);
    v61 = v28;
    v62 = v27;
    v63 = v8;
    v58 = (v27 - 8);
    v59 = v30;
    v31 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v32 = OUTLINED_FUNCTION_74();
      v33 = v19;
      v61(v32);
      ResultColumn.expression.getter(v16);
      v34 = SQLExpression.aggregationFunctions.getter();
      (*v60)(v16, v63);
      v35 = *(v34 + 16);
      v36 = *(v31 + 16);
      v37 = (v36 + v35);
      if (__OFADD__(v36, v35))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v37 > *(v31 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v31 = v38;
      }

      if (*(v34 + 16))
      {
        v37 = ((*(v31 + 24) >> 1) - *(v31 + 16));
        Description = type metadata accessor for AggregationFunction()[-1].Description;
        if (v37 < v35)
        {
          goto LABEL_22;
        }

        v40 = (*(Description + 80) + 32) & ~*(Description + 80);
        v41 = Description[9];
        swift_arrayInitWithCopy();

        v19 = v33;
        if (v35)
        {
          v42 = *(v31 + 16);
          v43 = __OFADD__(v42, v35);
          v44 = v42 + v35;
          if (v43)
          {
            goto LABEL_23;
          }

          *(v31 + 16) = v44;
        }
      }

      else
      {

        v19 = v33;
        if (v35)
        {
          goto LABEL_21;
        }
      }

      v45 = *v58;
      v46 = OUTLINED_FUNCTION_73();
      v47(v46);
      v29 += v59;
      if (!--v26)
      {

        v8 = v63;
        v7 = v54;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);

    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v65 = v31;
    SelectCore.having.getter(v7);
    OUTLINED_FUNCTION_92(v7, 1, v8);
    if (v48)
    {
      outlined destroy of UUID?(v7, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    }

    else
    {
      v50 = v55;
      v49 = v56;
      (*(v56 + 32))(v55, v7, v8);
      v51 = SQLExpression.aggregationFunctions.getter();
      specialized Array.append<A>(contentsOf:)(v51);
      (*(v49 + 8))(v50, v8);
      v31 = v65;
    }

    v64 = v31;

    specialized MutableCollection<>.sort(by:)(&v64);

    return v64;
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)()
{
  OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_83(v1);
  v3 = v2;
  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = v4 + v7;
  v19 = v6;
  v8 = _minimumMergeRunLength(_:)(v6);
  if (v8 >= v6)
  {
    if (v6)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
    }
  }

  else
  {
    v13 = v8;
    if (v6 >= 2)
    {
      OUTLINED_FUNCTION_68_1();
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v6 >> 1;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v16, &v17, &v18, v13, v9, v10, v11, v12, v15, (v14 + v7), v6 >> 1, v17, v18, v19, v20, v21, v22, v23, v24, v25);
    *(v14 + 16) = 0;
  }

  *v0 = v4;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMR, type metadata accessor for SQLExpression, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMR, type metadata accessor for AggregationFunction, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  if (a3)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMR);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_22;
  }

  v14[2] = v9;
  v14[3] = 2 * ((v15 - v13) / v12);
LABEL_17:
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8) + 80);
  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_104_2()
{
  v2 = **(v1 - 144);
  result = v0;
  v4 = *(v1 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_6_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 - 200) = &a9 - v9;
  if (*(*v11 + 24) > v10)
  {
    v13 = *(*v11 + 24);
  }
}

void OUTLINED_FUNCTION_6_4()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  v3 = *(v1 - 4);

  return scanner_errposition(v3, v0);
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return BidirectionalCollection<>.joined(separator:)();
}

void OUTLINED_FUNCTION_38_0()
{
  *(v1 - 288) = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 - 216);
}

uint64_t outlined destroy of StorableValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s12BiomeStreams13StorableValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s12BiomeStreams13StorableValueOWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_97_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_5_7(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t _s10Foundation4UUIDVSgWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWObTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 72) = v6;
  *(v7 - 120) = a4;
  *(v7 - 112) = a5;
  *(v7 - 240) = a2;
  *(v7 - 264) = result;
  v8 = *(*(a6 + 16) - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_98@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void KeyedFirstMatchingRecordCache.init(materializedView:database:cacheSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v481 = v20;
  v432 = v27;
  v29 = v28;
  v458 = v30;
  v434 = v31;
  v455 = type metadata accessor for SQLRawDataType();
  v32 = OUTLINED_FUNCTION_2_1(v455);
  v437 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v36);
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v37 = OUTLINED_FUNCTION_12(v467);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v41);
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v42 = OUTLINED_FUNCTION_2_1(v433);
  v441 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v49 = OUTLINED_FUNCTION_47(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v477 = v52;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_51();
  v470 = v54;
  OUTLINED_FUNCTION_43();
  v452 = type metadata accessor for SQLExpression();
  v55 = OUTLINED_FUNCTION_2_1(v452);
  v480 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_51();
  v449 = v60;
  OUTLINED_FUNCTION_43();
  v453 = type metadata accessor for ResultColumn();
  v61 = OUTLINED_FUNCTION_2_1(v453);
  v454 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_51();
  v448 = v67;
  OUTLINED_FUNCTION_43();
  v474 = type metadata accessor for SQLDataType();
  v68 = OUTLINED_FUNCTION_2_1(v474);
  v472 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_30();
  v479 = v75;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_30();
  v478 = v77;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_51();
  v471 = v79;
  OUTLINED_FUNCTION_43();
  v463 = type metadata accessor for Schema();
  v80 = OUTLINED_FUNCTION_2_1(v463);
  v462 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_14();
  v86 = v84 - v85;
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v425 - v90;
  v476 = type metadata accessor for FromClause();
  v92 = OUTLINED_FUNCTION_2_1(v476);
  v473 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_9();
  v466 = v96;
  OUTLINED_FUNCTION_43();
  v459 = type metadata accessor for SelectCore();
  v97 = OUTLINED_FUNCTION_2_1(v459);
  v444 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_24_4();
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v103 = v481;
  v104 = SQLExpressionEvaluator.init(db:)(v29);
  if (v103)
  {
    v105 = type metadata accessor for MaterializedView();
    OUTLINED_FUNCTION_5_7(v105);
    v107 = *(v106 + 8);
    v108 = OUTLINED_FUNCTION_147_0();
    v109(v108);
LABEL_3:
    OUTLINED_FUNCTION_65();
    return;
  }

  v481 = v91;
  v468 = v21;
  v427 = v86;
  v428 = v23;
  v446 = v24;
  v429 = v104;
  v440 = 0;
  v426 = v29;
  v445 = MEMORY[0x1E69E7CC0];
  v110 = v474;
  v111 = Dictionary.init(dictionaryLiteral:)();
  MaterializedView.select.getter(v22);
  v112 = v466;
  SelectCore.from.getter(v466);
  v113 = *(v444 + 8);
  v444 += 8;
  v430 = v113;
  v113(v22, v459);
  v114 = v112;
  v115 = FromClause.schemas.getter();
  (*(v473 + 1))(v112, v476);
  v116 = 0;
  v476 = *(v115 + 16);
  v460 = v462 + 16;
  LODWORD(v466) = 7;
  v464 = v472 + 104;
  v117 = (v472 + 8);
  v465 = v462 + 8;
  v443 = v462 + 32;
  v473 = v472 + 8;
  OUTLINED_FUNCTION_134_0();
  v475 = v111;
  v469 = v118;
LABEL_5:
  v120 = v480;
  v119 = v481;
  v121 = v463;
  while (v476 != v116)
  {
    if (v116 >= v118[2])
    {
      __break(1u);
LABEL_126:

      v400 = type metadata accessor for MaterializedView();
      OUTLINED_FUNCTION_5_7(v400);
      v402 = *(v401 + 8);
      v403 = OUTLINED_FUNCTION_147_0();
      v404(v403);
      outlined destroy of (columnName: String, dataType: SQLDataType)(v111, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
LABEL_131:

      goto LABEL_3;
    }

    v122 = v462;
    v123 = *(v462 + 80);
    OUTLINED_FUNCTION_19_0();
    v457 = v124;
    v456 = *(v122 + 72);
    (*(v122 + 16))(v119, v125 + v124 + v456 * v116, v121);
    v126 = Schema.tableName.getter();
    v128 = v127;
    OUTLINED_FUNCTION_16_0(&a18);
    v129 = v471;
    v130(v471, v466, v110);
    static Schema.JSONEach(with:)(v129, v468);
    (*v117)(v129, v110);
    v131 = Schema.tableName.getter();
    v114 = v132;
    v133 = *(v122 + 8);
    v134 = OUTLINED_FUNCTION_69_1();
    v133(v134);
    v135 = v126 == v131 && v128 == v114;
    if (v135)
    {
    }

    else
    {
      OUTLINED_FUNCTION_52();
      v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v136 & 1) == 0)
      {
        OUTLINED_FUNCTION_124_0();
        v138 = *v137;
        (*v137)(v427, v481, v463);
        v139 = v445;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v484._countAndFlagsBits = v139;
        v110 = v474;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v141 = *(v139 + 16);
          v142 = OUTLINED_FUNCTION_129_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v142, v143, v144);
        }

        OUTLINED_FUNCTION_134_0();
        v147 = *(countAndFlagsBits + 16);
        v146 = *(countAndFlagsBits + 24);
        if (v147 >= v146 >> 1)
        {
          OUTLINED_FUNCTION_4_9(v146);
          v114 = &v484;
          OUTLINED_FUNCTION_71_1();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v148, v149, v150);
          OUTLINED_FUNCTION_134_0();
          countAndFlagsBits = v484._countAndFlagsBits;
        }

        v116 = (v116 + 1);
        *(countAndFlagsBits + 16) = v147 + 1;
        v445 = countAndFlagsBits;
        OUTLINED_FUNCTION_124_0();
        v138();
        v111 = v475;
        v117 = v473;
        v118 = v469;
        goto LABEL_5;
      }
    }

    v119 = v481;
    v121 = v463;
    (v133)(v481, v463);
    v116 = (v116 + 1);
    v110 = v474;
    v111 = v475;
    v117 = v473;
    v120 = v480;
    OUTLINED_FUNCTION_134_0();
    v118 = v469;
  }

  v443 = *(v445 + 16);
  if (v443)
  {
    v151 = v462;
    v152 = *(v462 + 80);
    OUTLINED_FUNCTION_19_0();
    v456 = v153 + v155;
    object = v472;
    v476 = (v472 + 16);
    v481 = v472 + 32;
    v464 = v472 + 40;
    v157 = v467;
    while (1)
    {
      if (v154 >= *(v153 + 16))
      {
        goto LABEL_138;
      }

      v158 = v154;
      (*(v151 + 16))(v114, v456 + *(v151 + 72) * v154, v463);
      v457 = v158 + 1;
      v159 = v114;
      v160 = Schema.columns.getter();
      v161 = v477;
      v162 = v160;
      (*(v151 + 8))(v159, v463);
      v163 = 0;
      v164 = *(v162 + 64);
      v466 = v162;
      OUTLINED_FUNCTION_58_1();
      v119 = v167 & v166;
      v169 = ((v168 + 63) >> 6);
      v468 = v169;
      v469 = v165;
      if ((v167 & v166) != 0)
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_26:
        v170 = (v163 + 1);
        if (__OFADD__(v163, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v170 >= v169)
        {
          break;
        }

        v119 = v165[v170];
        ++v163;
        if (v119)
        {
          v163 = v170;
          goto LABEL_30;
        }
      }

      __swift_storeEnumTagSinglePayload(v161, 1, 1, v157);
      v119 = 0;
LABEL_31:
      v180 = v161;
      v181 = v470;
      outlined init with take of UUID?(v180, v470, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
      if (__swift_getEnumTagSinglePayload(v181, 1, v157) != 1)
      {
        break;
      }

      OUTLINED_FUNCTION_124_0();
      v154 = v457;
      v119 = v458;
      v151 = v462;
      v114 = v461;
      v153 = v445;
      if (v457 == v211)
      {

        goto LABEL_49;
      }
    }

    v182 = v181;
    v183 = *v181;
    v184 = v181[1];
    v185 = v182 + *(v157 + 48);
    v475 = *v481;
    v475(v478, v185, v110);
    OUTLINED_FUNCTION_81();
    v186 = String.lowercased()();
    v157 = v186._countAndFlagsBits;
    object = v186._object;

    Kind = v476->Kind;
    OUTLINED_FUNCTION_113_1();
    v188();
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v484._countAndFlagsBits = v111;
    v189 = OUTLINED_FUNCTION_133_0();
    specialized __RawDictionaryStorage.find<A>(_:)(v189, v190);
    v191 = *(v111 + 16);
    OUTLINED_FUNCTION_27_3();
    v111 = v194 + v195;
    if (__OFADD__(v194, v195))
    {
      __break(1u);
      goto LABEL_96;
    }

    v196 = v192;
    v197 = v193;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
    v198 = OUTLINED_FUNCTION_87_2();
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v198, v111))
    {
      v199 = OUTLINED_FUNCTION_133_0();
      specialized __RawDictionaryStorage.find<A>(_:)(v199, v200);
      OUTLINED_FUNCTION_50_1();
      v120 = v480;
      if (!v135)
      {
        goto LABEL_147;
      }

      v196 = v201;
    }

    else
    {
      v120 = v480;
    }

    v161 = v477;
    if (v197)
    {

      v111 = v484._countAndFlagsBits;
      v202 = OUTLINED_FUNCTION_117_0();
      v110 = v474;
      (*(v186._object + 5))(v202, v479, v474);
      v203 = OUTLINED_FUNCTION_116_0();
      v204(v203);
    }

    else
    {
      v111 = v484._countAndFlagsBits;
      OUTLINED_FUNCTION_14_4(v484._countAndFlagsBits + 8 * (v196 >> 6));
      *(*(v111 + 48) + 16 * v196) = v186;
      v205 = OUTLINED_FUNCTION_117_0();
      v110 = v474;
      v475(v205, v479, v474);
      v206 = OUTLINED_FUNCTION_116_0();
      v207(v206);
      v208 = *(v111 + 16);
      v209 = __OFADD__(v208, 1);
      v210 = v208 + 1;
      if (v209)
      {
        __break(1u);
LABEL_111:
        OUTLINED_FUNCTION_10_7();
        _StringGuts.grow(_:)(16);

        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_75_2();

        MEMORY[0x1865F6280](v157, v110);

        goto LABEL_133;
      }

      *(v111 + 16) = v210;
    }

    v157 = v467;
    v169 = v468;
    v165 = v469;
    if (!v119)
    {
      goto LABEL_26;
    }

LABEL_30:
    v119 &= v119 - 1;
    OUTLINED_FUNCTION_111_0();
    v173 = *v171;
    v172 = v171[1];
    (*(object + 2))(v471, v175 + *(object + 9) * v174, v110);
    v176 = *(v157 + 48);
    v177 = v477;
    *v477 = v173;
    *(v177 + 1) = v172;
    v161 = v177;
    v178 = *(object + 4);
    OUTLINED_FUNCTION_113_1();
    v179();
    __swift_storeEnumTagSinglePayload(v161, 0, 1, v157);

    v120 = v480;
    goto LABEL_31;
  }

LABEL_48:

  OUTLINED_FUNCTION_70_1();
LABEL_49:
  MaterializedView.select.getter(v428);
  v212 = SelectCore.select.getter();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_123();
  v213();
  v157 = 0;
  v214 = *(v212 + 16);
  OUTLINED_FUNCTION_137_0();
  v479 = (v120 + 8);
  v480 = v215 + 8;
  v481 = v215 + 16;
  v477 = v215 + 32;
  v478 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_89_2();
  v216 = v450;
  OUTLINED_FUNCTION_103_2();
LABEL_50:
  v218 = v448;
  while (1)
  {
    if (v214 == v157)
    {

      v477 = *(v478 + 16);
      if (!v477)
      {
        v275 = v446;
LABEL_79:

        MaterializedView.select.getter(v275);
        v196 = SelectCore.groupBy.getter();
        OUTLINED_FUNCTION_123();
        v292();
        if (v196)
        {
          v484._countAndFlagsBits = v196;

          v293 = v440;
          specialized MutableCollection<>.sort(by:)();
          v157 = v293;
          object = v434;
          if (v293)
          {
            goto LABEL_148;
          }

          v294 = v484._countAndFlagsBits;
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
          v481 = v295;
          MaterializedView.name.getter();
          static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
          v196 = v296;

          v297 = OUTLINED_FUNCTION_29_5();
          tableExists(sqlExpressionEvaluator:tableName:)(v297, v298, v196);
          OUTLINED_FUNCTION_128_0();
          v157 = v474;
          v466 = v294;
          LODWORD(v468) = v299;

          v475 = v111;
          if (v468)
          {
            v157 = v466;
          }

          else
          {
LABEL_96:
            v343 = v481;
            v479 = *(v481 + 2);
            if (v479)
            {
              v478 = *(v433 + 48);
              v344 = *(v441 + 80);
              OUTLINED_FUNCTION_19_0();
              v477 = &v343[v345];
              v480 = v472 + 32;
              v476 = (v472 + 40);

              v346 = v111;
              v347 = 0;
              v348 = v438;
              v349 = v439;
              while (v347 < *(v343 + 2))
              {
                outlined init with copy of Date?(&v477[*(v441 + 72) * v347], v348, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
                v350 = v157;
                v351 = v346;
                v352 = *v348;
                v157 = v348[1];
                v353 = *v480;
                (*v480)(v349, v348 + v478, v350);
                v120 = swift_isUniquelyReferenced_nonNull_native();
                v484._countAndFlagsBits = v351;
                specialized __RawDictionaryStorage.find<A>(_:)(v352, v157);
                v354 = *(v351 + 16);
                OUTLINED_FUNCTION_27_3();
                v359 = v357 + v358;
                if (__OFADD__(v357, v358))
                {
                  goto LABEL_141;
                }

                v360 = v355;
                v119 = v356;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
                v361 = OUTLINED_FUNCTION_87_2();
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v361, v359))
                {
                  v362 = specialized __RawDictionaryStorage.find<A>(_:)(v352, v157);
                  v120 = v455;
                  v364 = v437;
                  if ((v119 & 1) != (v363 & 1))
                  {
                    goto LABEL_147;
                  }

                  v360 = v362;
                }

                else
                {
                  OUTLINED_FUNCTION_103_2();
                  v364 = v437;
                }

                v349 = v439;
                if (v119)
                {

                  v346 = v484._countAndFlagsBits;
                  v365 = OUTLINED_FUNCTION_85_2(*(v484._countAndFlagsBits + 56));
                  v157 = v474;
                  (*(v366 + 40))(v365, v349, v474);
                }

                else
                {
                  OUTLINED_FUNCTION_14_4(v484._countAndFlagsBits + 8 * (v360 >> 6));
                  v368 = (*(v367 + 48) + 16 * v360);
                  *v368 = v352;
                  v368[1] = v157;
                  v346 = v367;
                  v157 = v474;
                  v353(*(v367 + 56) + *(v472 + 9) * v360, v349, v474);
                  OUTLINED_FUNCTION_142_0();
                  if (v209)
                  {
                    goto LABEL_145;
                  }

                  *(v346 + 16) = v369;
                }

                OUTLINED_FUNCTION_70_1();
                v348 = v438;
                v343 = v481;
                if (v479 == ++v347)
                {
                  goto LABEL_113;
                }
              }

              goto LABEL_140;
            }

            v346 = v111;
            v364 = v437;
LABEL_113:

            MaterializedView.name.getter();
            OUTLINED_FUNCTION_96_2();
            OUTLINED_FUNCTION_46_2();
            _StringGuts.grow(_:)(33);

            OUTLINED_FUNCTION_49_1();
            OUTLINED_FUNCTION_35_3();
            v370 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
            v372 = v371;

            MEMORY[0x1865F6280](v370, v372);

            OUTLINED_FUNCTION_109_1();
            v373 = *(v346 + 16);
            v374 = MEMORY[0x1E69E7CC0];
            if (v373)
            {
              v485 = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v373, 0);
              v374 = v485;
              v375 = specialized Dictionary.startIndex.getter(v346);
              v476 = (v346 + 64);
              v470 = v472 + 32;
              v471 = v472 + 16;
              v469 = (v364 + 8);
              v473 = v346;
              while ((v375 & 0x8000000000000000) == 0 && v375 < 1 << *(v346 + 32))
              {
                v378 = v442;
                v119 = v435;
                if (((*(&v476->Kind + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v375) & 1) == 0)
                {
                  goto LABEL_143;
                }

                LODWORD(v478) = v377;
                v480 = v373;
                v481 = v374;
                v379 = *(v346 + 36);
                v479 = v376;
                if (v379 != v376)
                {
                  goto LABEL_144;
                }

                v380 = v467;
                v381 = *(v467 + 48);
                v382 = *(v346 + 56);
                v383 = (*(v346 + 48) + 16 * v375);
                v384 = *v383;
                v385 = v383[1];
                v386 = v472;
                v387 = *(v472 + 9);
                v477 = v375;
                v388 = v474;
                (*(v472 + 2))(v435 + v381, v382 + v387 * v375, v474);
                *v378 = v384;
                v378[1] = v385;
                v386[4](v442 + *(v380 + 48), v119 + v381, v388);
                OUTLINED_FUNCTION_141_0();

                v389 = OUTLINED_FUNCTION_35_3();
                MEMORY[0x1865F6280](v389);
                MEMORY[0x1865F6280](8226, 0xE200000000000000);
                v111 = v442;
                SQLDataType.columnType()();
                OUTLINED_FUNCTION_128_0();
                if (v390)
                {
                  goto LABEL_126;
                }

                SQLRawDataType.rawValue.getter();
                OUTLINED_FUNCTION_96_2();
                (*v469)(v391, v120);
                v392 = OUTLINED_FUNCTION_35_3();
                MEMORY[0x1865F6280](v392);

                v157 = v482;
                v393 = v483;
                outlined destroy of (columnName: String, dataType: SQLDataType)(v111, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
                v374 = v481;
                v486 = v481;
                v395 = *(v481 + 2);
                v394 = *(v481 + 3);
                if (v395 >= v394 >> 1)
                {
                  OUTLINED_FUNCTION_4_9(v394);
                  OUTLINED_FUNCTION_71_1();
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v397, v398, v399);
                  v374 = v486;
                }

                *(v374 + 2) = v395 + 1;
                v396 = &v374[16 * v395];
                *(v396 + 4) = v157;
                *(v396 + 5) = v393;
                v346 = v473;
                v375 = specialized _NativeDictionary.index(after:)(v477, v479, v478 & 1, v473);
                v373 = (v480 - 1);
                v111 = v475;
                v120 = v455;
                if (v480 == 1)
                {
                  outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v375, v376, v377 & 1);
                  goto LABEL_127;
                }
              }

              goto LABEL_142;
            }

            v111 = v475;
LABEL_127:
            v482 = v374;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            BidirectionalCollection<>.joined(separator:)();
            OUTLINED_FUNCTION_96_2();

            v405 = OUTLINED_FUNCTION_35_3();
            MEMORY[0x1865F6280](v405);

            OUTLINED_FUNCTION_73_1();

            v196 = v484._object;
            SQLExpressionEvaluator.execute(sql:bindingValues:)(v484, MEMORY[0x1E69E7CC0]);
            OUTLINED_FUNCTION_70_1();
            OUTLINED_FUNCTION_128_0();
            if (v406)
            {
              v407 = type metadata accessor for MaterializedView();
              OUTLINED_FUNCTION_5_7(v407);
              (*(v408 + 8))(v119);

              goto LABEL_3;
            }

            object = v434;
            v157 = v466;
          }

          MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
          v308 = OUTLINED_FUNCTION_127_0(MatchingRecordCache);
          *&object[v309] = v157;
          OUTLINED_FUNCTION_140_0(v308);
          object[v311] = v310 & ~v468;

          v110 = MaterializedView.name.getter();
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
          v163 = v312;

          if (!*(v163 + 2))
          {
            goto LABEL_111;
          }

          OUTLINED_FUNCTION_46_2();
          _StringGuts.grow(_:)(28);

          OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_75_2();

          OUTLINED_FUNCTION_74_2();

          OUTLINED_FUNCTION_88_1();
          v157 = *(v163 + 2);
          v313 = MEMORY[0x1E69E7CC0];
          if (v157)
          {
            v478 = v196;
            v482 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v157, 0);
            v314 = 0;
            OUTLINED_FUNCTION_12_6();
            v480 = &v163[v317];
            v318 = v431;
            v319 = v163;
            v479 = v163;
            while (1)
            {
              v481 = v316;
              if (v314 >= *(v319 + 2))
              {
                goto LABEL_146;
              }

              v320 = v157;
              outlined init with copy of Date?(&v480[*(v315 + 72) * v314], v318, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
              v321 = *v318;
              v322 = v318[1];
              v323 = v318 + *(v433 + 48);
              v324 = v440;
              closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
              OUTLINED_FUNCTION_128_0();
              if (v324)
              {

                v409 = type metadata accessor for MaterializedView();
                OUTLINED_FUNCTION_5_7(v409);
                v411 = *(v410 + 8);
                v412 = OUTLINED_FUNCTION_147_0();
                v413(v412);
                outlined destroy of (columnName: String, dataType: SQLDataType)(v318, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);

                goto LABEL_131;
              }

              v119 = v325;
              v327 = v326;
              outlined destroy of (columnName: String, dataType: SQLDataType)(v318, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
              v316 = v481;
              v482 = v481;
              v329 = *(v481 + 2);
              v328 = *(v481 + 3);
              if (v329 >= v328 >> 1)
              {
                v331 = OUTLINED_FUNCTION_4_9(v328);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v331, v329 + 1, 1);
                v318 = v431;
                v316 = v482;
              }

              ++v314;
              *(v316 + 2) = v329 + 1;
              v330 = &v316[16 * v329];
              *(v330 + 4) = v119;
              *(v330 + 5) = v327;
              v157 = v320;
              v111 = v475;
              v315 = v441;
              v319 = v479;
              if (v320 == v314)
              {
                v163 = v479;
                OUTLINED_FUNCTION_70_1();
                object = v434;
                v196 = v478;
                break;
              }
            }
          }

          v482 = v313;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_75_2();

          OUTLINED_FUNCTION_74_2();

          MEMORY[0x1865F6280](41, 0xE100000000000000);
LABEL_133:
          v414 = v484._countAndFlagsBits;
          v415 = v484._object;
          v416 = swift_allocObject();
          *(v416 + 16) = v163;
          v417 = &object[*(v196 + 60)];
          *v417 = v414;
          v417[1] = v415;
          v417[2] = partial apply for closure #2 in static KeyedQueryPlannerMetadataCache.readMetadataSQL(materializedViewName:groupBySchema:);
          v417[3] = v416;
        }

        else
        {
          v300 = type metadata accessor for KeyedFirstMatchingRecordCache(0);
          v301 = OUTLINED_FUNCTION_127_0(v300);
          object = v434;
          *&v434[v302] = 0;
          v303 = OUTLINED_FUNCTION_140_0(v301);
          object[v304] = v305;
          v306 = &object[*(v303 + 60)];
          *v306 = 0u;
          *(v306 + 1) = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams12ChangeRecordV5value_AA10CacheEventO5eventtMd, &_s12BiomeStreams12ChangeRecordV5value_AA10CacheEventO5eventtMR);
        lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
        OUTLINED_FUNCTION_90_2();
        v418 = Dictionary.init(dictionaryLiteral:)();
        type metadata accessor for KeyedFirstMatchingRecordCache(0);
        *&object[*(v196 + 28)] = v418;
        v419 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams12ChangeRecordVSgMd, &_s12BiomeStreams12ChangeRecordVSgMR);
        OUTLINED_FUNCTION_90_2();
        v420 = Dictionary.init(dictionaryLiteral:)();
        v421 = &object[*(v196 + 32)];
        *v421 = v419;
        *(v421 + 1) = v420;
        *&object[*(v196 + 36)] = v432;
        v422 = type metadata accessor for MaterializedView();
        OUTLINED_FUNCTION_12(v422);
        (*(v423 + 32))(object, v119);
        v424 = MEMORY[0x1E69E7CD0];
        *&object[*(v196 + 24)] = MEMORY[0x1E69E7CD0];
        *&object[*(v196 + 20)] = v424;
        *&object[*(v196 + 40)] = v426;
        *&object[*(v196 + 44)] = v429;
        *&object[*(v196 + 52)] = v111;
        goto LABEL_3;
      }

      v238 = 0;
      OUTLINED_FUNCTION_137_0();
      OUTLINED_FUNCTION_12_6();
      v476 = (v240 + v239);
      v470 = v472 + 32;
      v468 = v472 + 16;
      v469 = (v472 + 40);
      OUTLINED_FUNCTION_126_0();
      while (1)
      {
        if (v238 >= *(v478 + 16))
        {
          goto LABEL_136;
        }

        v242 = *(v241 + 72);
        v243 = OUTLINED_FUNCTION_125_0();
        v244(v243);
        v245 = v111;
        v246 = ResultColumn.name.getter();
        v248 = v247;
        if (*(v245 + 16))
        {
          v249 = OUTLINED_FUNCTION_69_1();
          v251 = specialized __RawDictionaryStorage.find<A>(_:)(v249, v250);
          if (v252)
          {
            v475 = v245;
            v253 = v472;
            (*(v472 + 2))(v216, *(v245 + 56) + *(v472 + 9) * v251, v474);
            v216 = v449;
            ResultColumn.expression.getter(v449);
            SQLExpression.returnType.getter(v471);
            v254 = OUTLINED_FUNCTION_104_2();
            v255(v254, v157);
            lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType, type metadata accessor for SQLDataType);
            v256 = dispatch thunk of static Equatable.== infix(_:_:)();
            v257 = *(v253 + 1);
            v258 = OUTLINED_FUNCTION_70();
            v157 = v473;
            v257(v258);
            if ((v256 & 1) == 0)
            {

              OUTLINED_FUNCTION_156_0();
              OUTLINED_FUNCTION_1_23();
              lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v332, v333);
              OUTLINED_FUNCTION_33_4();
              *v334 = v246;
              v334[1] = v248;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              v335 = type metadata accessor for MaterializedView();
              OUTLINED_FUNCTION_5_7(v335);
              v337 = *(v336 + 8);
              v338 = OUTLINED_FUNCTION_147_0();
              v339(v338);
              v340 = OUTLINED_FUNCTION_86();
              v257(v340);
              OUTLINED_FUNCTION_83_2();
              v342(*(v341 - 256), v453);

              goto LABEL_3;
            }

            v259 = OUTLINED_FUNCTION_86();
            v257(v259);
            v245 = v475;
            OUTLINED_FUNCTION_126_0();
          }
        }

        v260 = v447;
        ResultColumn.expression.getter(v447);
        SQLExpression.returnType.getter(v451);
        (*v479)(v260, v157);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v484._countAndFlagsBits = v245;
        v261 = OUTLINED_FUNCTION_69_1();
        specialized __RawDictionaryStorage.find<A>(_:)(v261, v262);
        v263 = *(v245 + 16);
        OUTLINED_FUNCTION_27_3();
        v268 = v266 + v267;
        if (__OFADD__(v266, v267))
        {
          goto LABEL_137;
        }

        v269 = v264;
        v157 = v265;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        v270 = OUTLINED_FUNCTION_87_2();
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v270, v268))
        {
          v271 = OUTLINED_FUNCTION_69_1();
          v273 = specialized __RawDictionaryStorage.find<A>(_:)(v271, v272);
          v120 = v455;
          v275 = v446;
          if ((v157 & 1) != (v274 & 1))
          {
            goto LABEL_147;
          }

          v269 = v273;
          OUTLINED_FUNCTION_89_2();
          if ((v157 & 1) == 0)
          {
LABEL_72:
            OUTLINED_FUNCTION_14_4(v484._countAndFlagsBits + 8 * (v269 >> 6));
            v277 = (*(v276 + 48) + 16 * v269);
            *v277 = v246;
            v277[1] = v248;
            v111 = v276;
            v278 = OUTLINED_FUNCTION_85_2(*(v276 + 56));
            (*(v279 + 32))(v278, v451, v474);
            OUTLINED_FUNCTION_83_2();
            v281 = *(v280 - 256);
            v282 = OUTLINED_FUNCTION_81();
            v283(v282);
            v284 = *(v111 + 16);
            v209 = __OFADD__(v284, 1);
            v285 = v284 + 1;
            if (v209)
            {
              goto LABEL_139;
            }

            *(v111 + 16) = v285;
            goto LABEL_76;
          }
        }

        else
        {
          OUTLINED_FUNCTION_103_2();
          OUTLINED_FUNCTION_89_2();
          v275 = v446;
          if ((v157 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v111 = v484._countAndFlagsBits;
        v286 = OUTLINED_FUNCTION_85_2(*(v484._countAndFlagsBits + 56));
        (*(v287 + 40))(v286, v451, v474);
        OUTLINED_FUNCTION_83_2();
        v289 = *(v288 - 256);
        v290 = OUTLINED_FUNCTION_81();
        v291(v290);
LABEL_76:
        ++v238;
        v119 = v458;
        v157 = v452;
        v241 = v454;
        if (v477 == v238)
        {
          goto LABEL_79;
        }
      }
    }

    if (v157 >= *(v212 + 16))
    {
      break;
    }

    v119 = (*(v217 + 80) + 32) & ~*(v217 + 80);
    v120 = *(v217 + 72);
    v219 = OUTLINED_FUNCTION_125_0();
    v220(v219);
    ResultColumn.alias.getter();
    if (v221)
    {

      v216 = v449;
      ResultColumn.expression.getter(v449);
      v222 = SQLExpression.aggregationFunctions.getter();
      v223 = OUTLINED_FUNCTION_104_2();
      v224(v223, v452);
      v225 = *(v222 + 16);
      v218 = v448;

      if (!v225)
      {
        v476 = *v477;
        (v476)(v436, v218, v453);
        v226 = v478;
        v227 = swift_isUniquelyReferenced_nonNull_native();
        v484._countAndFlagsBits = v226;
        v475 = v111;
        if ((v227 & 1) == 0)
        {
          v228 = *(v226 + 16);
          v229 = OUTLINED_FUNCTION_129_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v229, v230, v231);
          OUTLINED_FUNCTION_89_2();
          v226 = v484._countAndFlagsBits;
        }

        v233 = *(v226 + 16);
        v232 = *(v226 + 24);
        v234 = v226;
        if (v233 >= v232 >> 1)
        {
          OUTLINED_FUNCTION_4_9(v232);
          OUTLINED_FUNCTION_71_1();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v235, v236, v237);
          OUTLINED_FUNCTION_89_2();
          v234 = v484._countAndFlagsBits;
        }

        ++v157;
        *(v234 + 16) = v233 + 1;
        v478 = v234;
        (v476)(v234 + v119 + v233 * v120);
        OUTLINED_FUNCTION_70_1();
        v111 = v475;
        OUTLINED_FUNCTION_103_2();
        OUTLINED_FUNCTION_137_0();
        goto LABEL_50;
      }
    }

    (*v480)(v218, v453);
    ++v157;
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_103_2();
    OUTLINED_FUNCTION_137_0();
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_148:

  __break(1u);
}

void AggregationFunction.newAggregation()()
{
  OUTLINED_FUNCTION_64();
  v269 = v1;
  v271 = v2;
  v273 = type metadata accessor for SQLExpression();
  v3 = OUTLINED_FUNCTION_2_1(v273);
  v272 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v265 = v7;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v267 = v9;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51();
  v261 = v11;
  OUTLINED_FUNCTION_43();
  v12 = type metadata accessor for AggregationFunction.AggregationType();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v270 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v19 = v18 - v17;
  v20 = type metadata accessor for SQLDataType();
  v21 = OUTLINED_FUNCTION_2_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v263 = v26;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_30();
  v266 = v28;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_30();
  v260 = v30;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&object - v32);
  AggregationFunction.name()();
  v34 = String.lowercased()();
  v35 = v19;
  v36 = v270;

  AggregationFunction.returnType.getter(v33);
  AggregationFunction.aggregationType.getter(v19);
  v37 = *(v36 + 11);
  v38 = OUTLINED_FUNCTION_39();
  v40 = v39(v38);
  if (!v40)
  {
    v41 = OUTLINED_FUNCTION_21();
    v42(v41);
    v43 = type metadata accessor for AVG(0);
    v44 = v271;
    v271[3] = v43;
    v44[4] = &protocol witness table for AVG;
    __swift_allocate_boxed_opaque_existential_0Tm(v44);
    OUTLINED_FUNCTION_62_0();
    v45 = *(v272 + 4);
    v48 = OUTLINED_FUNCTION_38(v46, v47);
    v49(v48);
    (*(v23 + 32))(v0 + v43[6], v33, v20);
    *(&v0->_countAndFlagsBits + v43[7]) = 0;
    *(&v0->_countAndFlagsBits + v43[8]) = 0;
    *v0 = v34;
    goto LABEL_9;
  }

  v50 = v271;
  countAndFlagsBits = v34._countAndFlagsBits;
  object = v34._object;
  v262 = v33;
  v51 = v23;
  v264 = v20;
  if (v40 == 1)
  {
    v52 = OUTLINED_FUNCTION_21();
    v53(v52);
    v54 = type metadata accessor for COUNT(0);
    OUTLINED_FUNCTION_55(v54, &protocol witness table for COUNT);
    OUTLINED_FUNCTION_62_0();
    v55 = *(v272 + 4);
    v58 = OUTLINED_FUNCTION_38(v56, v57);
    v59(v58);
    v60 = OUTLINED_FUNCTION_46(*(v54 + 24));
    v61(v60);
    *(v50 + *(v54 + 28)) = 0;
LABEL_5:
    *v50 = countAndFlagsBits;
LABEL_8:
    v50[1] = object;
    goto LABEL_9;
  }

  v62 = v272;
  v63 = countAndFlagsBits;
  switch(v40)
  {
    case 2:
      v64 = OUTLINED_FUNCTION_21();
      v65(v64);
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionV10expression_ACSg9separatortMd, &_s14BiomeSQLParser13SQLExpressionV10expression_ACSg9separatortMR) + 48);
      v67 = type metadata accessor for GROUP_CONCAT(0);
      OUTLINED_FUNCTION_55(v67, &protocol witness table for GROUP_CONCAT);
      OUTLINED_FUNCTION_62_0();
      v68 = *(v62 + 4);
      v71 = OUTLINED_FUNCTION_38(v69, v70);
      v72(v71);
      outlined init with take of UUID?(v35 + v66, v50 + v67[6], &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      v73 = OUTLINED_FUNCTION_46(v67[7]);
      v74(v73);
      v75 = (v50 + v67[8]);
      *v75 = 0;
      v75[1] = 0;
      *v50 = v63;
      goto LABEL_8;
    case 3:
      v76 = OUTLINED_FUNCTION_21();
      v77(v76);
      v78 = *(v62 + 4);
      v79 = v267;
      OUTLINED_FUNCTION_18();
      v80();
      v81 = v51;
      v82 = (v51 + 16);
      v83 = *(v51 + 16);
      v84 = v266;
      v85 = v262;
      v86 = v264;
      v270 = v82;
      v83(v266, v262, v264);
      v87 = (*(v81 + 88))(v84, v86);
      if (!v87)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVys5Int64VGMd, &_s12BiomeStreams3MAXVys5Int64VGMR);
        OUTLINED_FUNCTION_44();
        v89 = OUTLINED_FUNCTION_55(v88, &protocol witness table for MAX<A>);
        v90 = OUTLINED_FUNCTION_8_0(v89);
        v91(v90, v86, v36);
        v83(v50 + v79[10], v85, v86);
        v92 = (v50 + v79[11]);
        *v92 = String.lowercased()();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_25();
        v93 = *(v62 + 1);
        v94 = OUTLINED_FUNCTION_57();
        v95(v94);
        (*(v81 + 8))(v85, v264);
        goto LABEL_9;
      }

      v265 = v81;
      v111 = v85;
      switch(v87)
      {
        case 1:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVySdGMd, &_s12BiomeStreams3MAXVySdGMR);
          OUTLINED_FUNCTION_44();
          v113 = OUTLINED_FUNCTION_55(v112, &protocol witness table for MAX<A>);
          v114 = OUTLINED_FUNCTION_3_5(v113);
          v115(v114);
          v116 = OUTLINED_FUNCTION_26();
          (v83)(v116);
          *v85 = OUTLINED_FUNCTION_16();
          v85[1] = v117;
          OUTLINED_FUNCTION_11();
LABEL_35:
          OUTLINED_FUNCTION_25();
          v187 = *(v62 + 1);
          v188 = OUTLINED_FUNCTION_57();
          v189(v188);
          v190 = *(v265 + 8);
          v153 = OUTLINED_FUNCTION_76();
          goto LABEL_36;
        case 2:
          goto LABEL_24;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVy10Foundation4DateVGMd, &_s12BiomeStreams3MAXVy10Foundation4DateVGMR);
          OUTLINED_FUNCTION_44();
          v178 = OUTLINED_FUNCTION_55(v177, &protocol witness table for MAX<A>);
          v179 = OUTLINED_FUNCTION_3_5(v178);
          v180(v179);
          v181 = OUTLINED_FUNCTION_26();
          (v83)(v181);
          *v85 = OUTLINED_FUNCTION_16();
          v85[1] = v182;
          OUTLINED_FUNCTION_87();
          type metadata accessor for Date();
          break;
        case 4:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVy10Foundation4DataVGMd, &_s12BiomeStreams3MAXVy10Foundation4DataVGMR);
          v141 = v86;
          OUTLINED_FUNCTION_44();
          v204 = OUTLINED_FUNCTION_55(v203, &protocol witness table for MAX<A>);
          v205 = OUTLINED_FUNCTION_3_5(v204);
          v206(v205);
          v207 = OUTLINED_FUNCTION_20_0();
          v208(v207);
          *v111 = OUTLINED_FUNCTION_16();
          v111[1] = v209;
          *(v50 + v79[12]) = xmmword_184D27CF0;
          goto LABEL_25;
        case 5:
LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVySSGMd, &_s12BiomeStreams3MAXVySSGMR);
          v141 = v86;
          OUTLINED_FUNCTION_44();
          v143 = OUTLINED_FUNCTION_55(v142, &protocol witness table for MAX<A>);
          v144 = OUTLINED_FUNCTION_3_5(v143);
          v145(v144);
          v146 = OUTLINED_FUNCTION_20_0();
          v147(v146);
          *v111 = OUTLINED_FUNCTION_16();
          v111[1] = v148;
          v149 = (v50 + v79[12]);
          *v149 = 0;
          v149[1] = 0;
LABEL_25:
          OUTLINED_FUNCTION_25();
          v150 = *(v62 + 1);
          v151 = OUTLINED_FUNCTION_57();
          v152(v151);
          v153 = OUTLINED_FUNCTION_71();
          v155 = v141;
LABEL_36:
          v154(v153, v155);
          goto LABEL_9;
        case 6:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVy10Foundation4UUIDVGMd, &_s12BiomeStreams3MAXVy10Foundation4UUIDVGMR);
          OUTLINED_FUNCTION_44();
          v229 = OUTLINED_FUNCTION_55(v228, &protocol witness table for MAX<A>);
          v230 = OUTLINED_FUNCTION_3_5(v229);
          v231(v230);
          v232 = OUTLINED_FUNCTION_26();
          (v83)(v232);
          *v85 = OUTLINED_FUNCTION_16();
          v85[1] = v233;
          OUTLINED_FUNCTION_87();
          type metadata accessor for UUID();
          break;
        case 7:
          v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVys5Int64VGMd, &_s12BiomeStreams3MAXVys5Int64VGMR);
          v240 = OUTLINED_FUNCTION_55(v239, &protocol witness table for MAX<A>);
          OUTLINED_FUNCTION_8_0(v240);
          v141 = v86;
          OUTLINED_FUNCTION_18();
          v241();
          v242 = OUTLINED_FUNCTION_20_0();
          v243(v242);
          *v111 = OUTLINED_FUNCTION_16();
          v111[1] = v244;
          OUTLINED_FUNCTION_11();
          goto LABEL_25;
        default:

          lazy protocol witness table accessor for type SQLError and conformance SQLError();
          OUTLINED_FUNCTION_63();
          v251[3] = v86;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v251);
          v83(boxed_opaque_existential_0Tm, v85, v86);
          OUTLINED_FUNCTION_15();
          swift_willThrow();
          (*(v62 + 1))(v267, v273);
          v253 = *(v265 + 8);
          v253(v85, v86);
          v253(v266, v86);
          goto LABEL_9;
      }

      OUTLINED_FUNCTION_102();
      __swift_storeEnumTagSinglePayload(v183, v184, v185, v186);
      goto LABEL_35;
    case 4:
      v96 = OUTLINED_FUNCTION_21();
      v97(v96);
      v98 = v265;
      (*(v62 + 4))(v265, v35, v273);
      v99 = v51;
      v100 = v62;
      v101 = (v51 + 16);
      v102 = *(v51 + 16);
      v103 = v263;
      v104 = v264;
      v102(v263, v262, v264);
      v105 = (*(v99 + 88))(v103, v104);
      if (!v105)
      {
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVys5Int64VGMd, &_s12BiomeStreams3MINVys5Int64VGMR);
        v107 = v262;
        v108 = v98;
        v109 = v106;
        v110 = OUTLINED_FUNCTION_55(v106, &protocol witness table for MIN<A>);
        (*(v100 + 2))(v110 + *(v109 + 36), v108, v273);
        v102(v110 + *(v109 + 40), v107, v104);
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_25();
        (*(v100 + 1))(v265, v273);
        (*(v99 + 8))(v107, v104);
        goto LABEL_9;
      }

      v270 = v102;
      if (v105 == 1)
      {
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVySdGMd, &_s12BiomeStreams3MINVySdGMR);
        v132 = OUTLINED_FUNCTION_55(v131, &protocol witness table for MIN<A>);
        v133 = OUTLINED_FUNCTION_6_0(v132);
        v134(v133, v98, v273);
        v135 = OUTLINED_FUNCTION_5_1();
        v136(v135);
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_25();
        (*(v100 + 1))(v98, v273);
        v137 = *(v99 + 8);
        v138 = OUTLINED_FUNCTION_86();
        v140(v138, v139);
        goto LABEL_9;
      }

      v170 = v99;
      switch(v105)
      {
        case 2:
LABEL_31:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVySSGMd, &_s12BiomeStreams3MINVySSGMR);
          OUTLINED_FUNCTION_44();
          v172 = OUTLINED_FUNCTION_55(v171, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v172);
          OUTLINED_FUNCTION_34();
          v173();
          v174 = OUTLINED_FUNCTION_5_1();
          v175(v174);
          OUTLINED_FUNCTION_4_3();
          v176 = (v50 + *(v98 + 48));
          *v176 = 0;
          v176[1] = 0;
LABEL_48:
          OUTLINED_FUNCTION_25();
          (*(v100 + 1))(v99, v63);
          v225 = *(v170 + 8);
          v226 = OUTLINED_FUNCTION_86();
          v227(v226);
          goto LABEL_9;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVy10Foundation4DateVGMd, &_s12BiomeStreams3MINVy10Foundation4DateVGMR);
          OUTLINED_FUNCTION_44();
          v195 = OUTLINED_FUNCTION_55(v194, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v195);
          OUTLINED_FUNCTION_34();
          v196();
          v197 = OUTLINED_FUNCTION_5_1();
          v198(v197);
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_87();
          type metadata accessor for Date();
          break;
        case 4:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVy10Foundation4DataVGMd, &_s12BiomeStreams3MINVy10Foundation4DataVGMR);
          OUTLINED_FUNCTION_44();
          v221 = OUTLINED_FUNCTION_55(v220, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v221);
          OUTLINED_FUNCTION_34();
          v222();
          v223 = OUTLINED_FUNCTION_5_1();
          v224(v223);
          OUTLINED_FUNCTION_4_3();
          *(v50 + *(v98 + 48)) = xmmword_184D27CF0;
          goto LABEL_48;
        case 5:
          goto LABEL_31;
        case 6:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVy10Foundation4UUIDVGMd, &_s12BiomeStreams3MINVy10Foundation4UUIDVGMR);
          OUTLINED_FUNCTION_44();
          v235 = OUTLINED_FUNCTION_55(v234, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v235);
          OUTLINED_FUNCTION_34();
          v236();
          v237 = OUTLINED_FUNCTION_5_1();
          v238(v237);
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_87();
          type metadata accessor for UUID();
          break;
        case 7:
          v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVys5Int64VGMd, &_s12BiomeStreams3MAXVys5Int64VGMR);
          v246 = OUTLINED_FUNCTION_55(v245, &protocol witness table for MAX<A>);
          OUTLINED_FUNCTION_6_0(v246);
          v99 = v265;
          OUTLINED_FUNCTION_34();
          v247();
          v248 = OUTLINED_FUNCTION_5_1();
          v249(v248);
          *v101 = OUTLINED_FUNCTION_16();
          v101[1] = v250;
          OUTLINED_FUNCTION_11();
          goto LABEL_48;
        default:

          lazy protocol witness table accessor for type SQLError and conformance SQLError();
          OUTLINED_FUNCTION_63();
          v254 = v264;
          v255[3] = v264;
          v256 = __swift_allocate_boxed_opaque_existential_0Tm(v255);
          v257 = v262;
          v270(v256, v262, v254);
          OUTLINED_FUNCTION_15();
          swift_willThrow();
          (*(v272 + 1))(v265, v273);
          v258 = *(v99 + 8);
          v258(v257, v254);
          v258(v263, v254);
          goto LABEL_9;
      }

      OUTLINED_FUNCTION_102();
      __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
      goto LABEL_48;
    case 5:
      v118 = OUTLINED_FUNCTION_21();
      v119(v118);
      v120 = *(v62 + 4);
      OUTLINED_FUNCTION_18();
      v272 = v121;
      v121();
      v122 = v260;
      v123 = v264;
      (*(v51 + 104))(v260, 0, v264);
      v124 = v262;
      v125 = OUTLINED_FUNCTION_72();
      v127 = specialized == infix<A>(_:_:)(v125, v126);
      (*(v51 + 8))(v122, v123);
      if (v127)
      {
        v128 = type metadata accessor for SUM_INT(0);
        v129 = v128;
        v130 = &protocol witness table for SUM_INT;
      }

      else
      {
        v128 = type metadata accessor for SUM_NON_INT(0);
        v129 = v128;
        v130 = &protocol witness table for SUM_NON_INT;
      }

      OUTLINED_FUNCTION_55(v128, v130);
      OUTLINED_FUNCTION_62_0();
      (v272)(v168 + v169, v261, v36);
      (*(v51 + 32))(v50 + v129[6], v124, v123);
      *(v50 + v129[7]) = 0;
      *(v50 + v129[8]) = 0;
      goto LABEL_5;
  }

  v156 = object;
  if (v40 == 6)
  {
    v157 = OUTLINED_FUNCTION_21();
    v158(v157);
    v159 = type metadata accessor for TOTAL(0);
    OUTLINED_FUNCTION_55(v159, &protocol witness table for TOTAL);
    OUTLINED_FUNCTION_62_0();
    v160 = *(v62 + 4);
    v163 = OUTLINED_FUNCTION_38(v161, v162);
    v164(v163);
    v165 = OUTLINED_FUNCTION_46(*(v159 + 24));
    v166(v165);
    v167 = *(v159 + 28);
  }

  else
  {
    if (v40 != 7)
    {

      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      v211 = v210;
      v212 = v264;
      v210[3] = v264;
      v213 = __swift_allocate_boxed_opaque_existential_0Tm(v210);
      (*(v51 + 16))(v213, v262, v212);
      *(v211 + 2) = 0u;
      *(v211 + 3) = 0u;
      *(v211 + 64) = 3;
      swift_willThrow();
      v214 = *(v51 + 8);
      v215 = OUTLINED_FUNCTION_77();
      v216(v215);
      v217 = *(v36 + 1);
      v218 = OUTLINED_FUNCTION_39();
      v219(v218);
      goto LABEL_9;
    }

    v191 = type metadata accessor for COUNT_STAR(0);
    OUTLINED_FUNCTION_55(v191, &protocol witness table for COUNT_STAR);
    OUTLINED_FUNCTION_62_0();
    (*(v51 + 32))(v192 + v193, v262, v264);
    v167 = *(v191 + 24);
  }

  *(v50 + v167) = 0;
  *v50 = v63;
  v50[1] = v156;
LABEL_9:
  OUTLINED_FUNCTION_65();
}

void static KeyedAggregationMetadataCache.payloadSchema(aggregationFunctions:)()
{
  OUTLINED_FUNCTION_64();
  v1 = v0;
  v3 = v2;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v4 = OUTLINED_FUNCTION_12(v178);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v8);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  OUTLINED_FUNCTION_2_1(v175);
  v174 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v12);
  v195 = v152 - v13;
  v14 = OUTLINED_FUNCTION_43();
  v166 = type metadata accessor for StorableValue(v14);
  v15 = OUTLINED_FUNCTION_2_1(v166);
  v165 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  v167 = v19;
  OUTLINED_FUNCTION_43();
  v187 = type metadata accessor for SQLDataType();
  v20 = OUTLINED_FUNCTION_2_1(v187);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v25);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  v26 = OUTLINED_FUNCTION_12(v170);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_51();
  v172 = v31;
  OUTLINED_FUNCTION_43();
  v32 = type metadata accessor for AggregationFunction();
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9();
  v183 = v38;
  v39 = *(v3 + 16);
  if (v39)
  {
    v153 = *(v3 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
    v41 = *(v35 + 16);
    v40 = v35 + 16;
    v159 = v41;
    v42 = *(v40 + 64);
    OUTLINED_FUNCTION_19_0();
    v158 = v3 + v45;
    v152[7] = 7;
    v164 = v22 + 104;
    v152[6] = 6;
    v152[5] = 4;
    v152[4] = 5;
    v152[3] = 2;
    v152[2] = 3;
    v182 = v22 + 32;
    v162 = v22 + 40;
    v193 = v22 + 16;
    v156 = v40 - 8;
    v152[1] = 1;
    v152[0] = 0;
    v157 = *(v40 + 56);
    v184 = v22;
    v155 = v32;
    v154 = v40;
    while (1)
    {
      v161 = v43;
      v163 = v44;
      OUTLINED_FUNCTION_124_0();
      v159(v183, v46 + v157 * v47, v32);
      AggregationFunction.newAggregation()();
      if (v1)
      {
        break;
      }

      v48 = v199;
      __swift_project_boxed_opaque_existential_1(&v197, v198);
      v49 = *(v48 + 40);
      v50 = OUTLINED_FUNCTION_35_3();
      v52 = v51(v50);
      v160 = 0;
      ++v163;
      v53 = Dictionary.init(dictionaryLiteral:)();
      v55 = v52 + 8;
      v54 = v52[8];
      OUTLINED_FUNCTION_58_1();
      v58 = v57 & v56;
      v60 = (v59 + 63) >> 6;

      v61 = 0;
      v189 = v60;
      v190 = (v52 + 8);
      v191 = v52;
LABEL_5:
      v186 = v53;
      if (v58)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v62 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          JUMPOUT(0x184901CD0);
        }

        if (v62 >= v60)
        {
          break;
        }

        v58 = v55[v62];
        ++v61;
        if (v58)
        {
          v61 = v62;
LABEL_10:
          v63 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v64 = v63 | (v61 << 6);
          v65 = v52[7];
          v66 = (v52[6] + 16 * v64);
          v68 = *v66;
          v67 = v66[1];
          v69 = v170;
          v70 = v172;
          _s12BiomeStreams13StorableValueOWOcTm_0(v65 + *(v165 + 72) * v64, v172 + *(v170 + 48));
          *v70 = v68;
          v70[1] = v67;
          v71 = v169;
          outlined init with copy of Date?(v70, v169, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
          v72 = *(v71 + 8);
          v192 = *v71;
          v194 = v72;
          v73 = v173;
          outlined init with copy of Date?(v70, v173, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
          v74 = *(v73 + 8);

          _s12BiomeStreams13StorableValueOWOcTm_0(v73 + *(v69 + 48), v167);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v76 = v186;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              v77 = OUTLINED_FUNCTION_6_5();
              v79 = (&v181 + 4);
              goto LABEL_18;
            case 2:
              v80 = OUTLINED_FUNCTION_6_5();
              v82 = &v182;
              goto LABEL_20;
            case 3:
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              v77 = OUTLINED_FUNCTION_6_5();
              v79 = (&v182 + 4);
              goto LABEL_18;
            case 4:
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              v77 = OUTLINED_FUNCTION_6_5();
              v79 = &v183;
              goto LABEL_18;
            case 5:
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              v77 = OUTLINED_FUNCTION_6_5();
              v79 = (&v183 + 4);
              goto LABEL_18;
            case 6:
              v80 = OUTLINED_FUNCTION_6_5();
              v82 = &v184;
LABEL_20:
              v81(v80, *(v82 - 64), v187);
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              goto LABEL_21;
            case 7:
              v77 = OUTLINED_FUNCTION_6_5();
              v79 = (&v184 + 4);
              goto LABEL_18;
            default:
              v77 = OUTLINED_FUNCTION_6_5();
              v79 = &v181;
LABEL_18:
              v78(v77, *(v79 - 64), v187);
LABEL_21:
              v83 = v194;
              v84 = v192;
              OUTLINED_FUNCTION_0_24();
              _s12BiomeStreams13StorableValueOWOhTm_1();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v196 = v76;
              v86 = OUTLINED_FUNCTION_68_1();
              specialized __RawDictionaryStorage.find<A>(_:)(v86, v87);
              OUTLINED_FUNCTION_15_3();
              v92 = v90 + v91;
              if (__OFADD__(v90, v91))
              {
                goto LABEL_65;
              }

              v93 = v88;
              v94 = v89;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
              if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v92))
              {
                goto LABEL_25;
              }

              v95 = OUTLINED_FUNCTION_68_1();
              v97 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v96);
              if ((v94 & 1) != (v98 & 1))
              {
                goto LABEL_67;
              }

              v93 = v97;
LABEL_25:
              if (v94)
              {

                v53 = v196;
                v99 = OUTLINED_FUNCTION_144_0();
                (*(v100 + 40))(v99, v171, v187);
                outlined destroy of (columnName: String, dataType: SQLDataType)(v172, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
              }

              else
              {
                v53 = v196;
                OUTLINED_FUNCTION_14_4(v196 + 8 * (v93 >> 6));
                v101 = (*(v53 + 48) + 16 * v93);
                *v101 = v84;
                v101[1] = v83;
                v102 = OUTLINED_FUNCTION_144_0();
                (*(v103 + 32))(v102, v171, v187);
                outlined destroy of (columnName: String, dataType: SQLDataType)(v172, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                OUTLINED_FUNCTION_142_0();
                if (v105)
                {
                  goto LABEL_66;
                }

                *(v53 + 16) = v104;
              }

              v106 = *(v170 + 48);
              OUTLINED_FUNCTION_0_24();
              _s12BiomeStreams13StorableValueOWOhTm_1();
              v55 = v190;
              v52 = v191;
              v60 = v189;
              break;
          }

          goto LABEL_5;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v197._countAndFlagsBits);
      v107 = *(v53 + 16);
      if (v107)
      {
        v196 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107, 0);
        v194 = v196;
        v110 = specialized Dictionary.startIndex.getter(v53);
        v111 = 0;
        v112 = v53 + 64;
        v179 = v108;
        v168 = v53 + 72;
        v180 = v107;
        v181 = v53 + 64;
        do
        {
          if (v110 < 0 || v110 >= 1 << *(v53 + 32))
          {
            goto LABEL_59;
          }

          if ((*(v112 + 8 * (v110 >> 6)) & (1 << v110)) == 0)
          {
            goto LABEL_60;
          }

          if (*(v53 + 36) != v108)
          {
            goto LABEL_61;
          }

          v190 = 1 << v110;
          v191 = v110 >> 6;
          v188 = v111;
          v189 = v108;
          v185 = v109;
          v113 = v178;
          v114 = *(v178 + 48);
          v115 = (*(v53 + 48) + 16 * v110);
          v117 = *v115;
          v116 = v115[1];
          v118 = v184;
          v119 = *(v53 + 56) + *(v184 + 72) * v110;
          v192 = *(v184 + 16);
          v120 = v176;
          v121 = v187;
          v192(v176 + v114, v119, v187);
          v122 = v177;
          *v177 = v117;
          *(v122 + 8) = v116;
          v123 = *(v113 + 48);
          (*(v118 + 32))(v122 + v123, v120 + v114, v121);
          v124 = *(v175 + 64);

          v197 = AggregationFunction.name()();

          MEMORY[0x1865F6280](95, 0xE100000000000000);

          MEMORY[0x1865F6280](v117, v116);

          object = v197._object;
          countAndFlagsBits = v197._countAndFlagsBits;
          v192(&v195[v124], v122 + v123, v121);
          *v195 = v117;
          *(v195 + 1) = v116;
          *(v195 + 1) = __PAIR128__(object, countAndFlagsBits);
          v127 = v195;

          v128 = v194;
          outlined destroy of (columnName: String, dataType: SQLDataType)(v122, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v196 = v128;
          v130 = *(v128 + 16);
          v129 = *(v128 + 24);
          v194 = v128;
          if (v130 >= v129 >> 1)
          {
            OUTLINED_FUNCTION_4_9(v129);
            OUTLINED_FUNCTION_71_1();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v142, v143, v144);
            v194 = v196;
          }

          *(v194 + 16) = v130 + 1;
          OUTLINED_FUNCTION_12_6();
          outlined init with take of UUID?(v127, v132 + v131 + *(v133 + 72) * v130, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v53 = v186;
          v134 = 1 << *(v186 + 32);
          v112 = v181;
          if (v110 >= v134)
          {
            goto LABEL_62;
          }

          v135 = *(v181 + 8 * v191);
          if ((v135 & v190) == 0)
          {
            goto LABEL_63;
          }

          if (*(v186 + 36) != v189)
          {
            goto LABEL_64;
          }

          v136 = v135 & (-2 << (v110 & 0x3F));
          if (v136)
          {
            v134 = __clz(__rbit64(v136)) | v110 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v137 = v191 << 6;
            v138 = v191 + 1;
            v139 = (v168 + 8 * v191);
            while (v138 < (v134 + 63) >> 6)
            {
              v141 = *v139++;
              v140 = v141;
              v137 += 64;
              ++v138;
              if (v141)
              {
                outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v110, v189, v185 & 1);
                v134 = __clz(__rbit64(v140)) + v137;
                goto LABEL_48;
              }
            }

            outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v110, v189, v185 & 1);
          }

LABEL_48:
          v109 = 0;
          v111 = v188 + 1;
          v110 = v134;
          v108 = v179;
        }

        while (v188 + 1 != v180);
      }

      else
      {

        v194 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_16_0(&v188);
      v32 = v155;
      v145(v183, v155);
      v43 = v161;
      v200 = v161;
      v147 = *(v161 + 16);
      v146 = *(v161 + 24);
      v1 = v160;
      if (v147 >= v146 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v146);
        OUTLINED_FUNCTION_71_1();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v148, v149, v150);
        v43 = v200;
      }

      *(v43 + 16) = v147 + 1;
      *(v43 + 8 * v147 + 32) = v194;
      v44 = v163;
      if (v163 == v153)
      {
        goto LABEL_57;
      }
    }

    OUTLINED_FUNCTION_16_0(&v188);
    v151(v183, v32);
  }

LABEL_57:
  OUTLINED_FUNCTION_65();
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28(v4);
  (*(v5 + 8))(a1);
  return a1;
}

Swift::String __swiftcall AggregationFunction.name()()
{
  outlined init with copy of AggregationFunction.AggregationType(v0, &v23);
  if (v35 > 3u)
  {
    if (v35 <= 5u)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      if (v35 == 4)
      {
        v1 = 678324589;
      }

      else
      {
        v1 = 678262131;
      }

      goto LABEL_18;
    }

    if (v35 != 6)
    {
      v3 = 0xE800000000000000;
      v2 = 0x292A28746E756F63;
      goto LABEL_21;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v1 = 0x286C61746F74;
  }

  else
  {
    if (v35 > 1u)
    {
      if (v35 == 2)
      {
        v19 = v25;
        v20 = v26;
        v21 = v27;
        v22 = v28;
        v17 = v23;
        v18 = v24;
        v16[2] = v31;
        v16[3] = v32;
        v16[4] = v33;
        v16[5] = v34;
        v16[0] = v29;
        v16[1] = v30;
        outlined init with copy of PgQuery_Alias?(v16, &v8, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v9 + 1))
        {
          v14[2] = v10;
          v14[3] = v11;
          v14[4] = v12;
          v15 = v13;
          v14[0] = v8;
          v14[1] = v9;
          *&v8 = 0;
          *(&v8 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          strcpy(&v8, "group_concat(");
          HIWORD(v8) = -4864;
          MEMORY[0x1865F6280](v22, *(&v22 + 1));
          MEMORY[0x1865F6280](8236, 0xE200000000000000);
          MEMORY[0x1865F6280](v15, *(&v15 + 1));
          MEMORY[0x1865F6280](41, 0xE100000000000000);
          v3 = *(&v8 + 1);
          v2 = v8;
          outlined destroy of SQLExpression(v14);
        }

        else
        {
          _s10Foundation4UUIDVSgWOhTm_0(&v8, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          *&v14[0] = 0;
          *(&v14[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          strcpy(v14, "group_concat(");
          HIWORD(v14[0]) = -4864;
          MEMORY[0x1865F6280](v22, *(&v22 + 1));
          MEMORY[0x1865F6280](41, 0xE100000000000000);
          v3 = *(&v14[0] + 1);
          v2 = *&v14[0];
        }

        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_20;
      }

      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      v1 = 678977901;
      goto LABEL_18;
    }

    if (!v35)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      v1 = 677869153;
LABEL_18:
      v4 = 0xE400000000000000;
      goto LABEL_19;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v1 = 0x28746E756F63;
  }

  v4 = 0xE600000000000000;
LABEL_19:
  *&v16[0] = v1;
  *(&v16[0] + 1) = v4;
  MEMORY[0x1865F6280](v22, *(&v22 + 1));
  MEMORY[0x1865F6280](41, 0xE100000000000000);
  v3 = *(&v16[0] + 1);
  v2 = *&v16[0];
LABEL_20:
  outlined destroy of SQLExpression(&v17);
LABEL_21:
  v5 = v2;
  v6 = v3;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return MEMORY[0x1EEDC70C8](v2, v1, a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_22@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_0_27(_DWORD *a1)
{
  *a1 = -1;

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 120) = a5;
  *(v6 - 112) = v5;
  *(v6 - 136) = a1;
  *(v6 - 128) = a4;
  *(v6 - 160) = a2;

  return type metadata accessor for String.Encoding();
}

uint64_t COUNT_STAR.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v4, xmmword_184D29AA0);
  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_71_0();
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_30_1(&static COUNT_STAR.countKey);
  v6 = type metadata accessor for COUNT_STAR(v5);
  OUTLINED_FUNCTION_164(*(v0 + *(v6 + 24)));
  OUTLINED_FUNCTION_140();
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t outlined init with copy of StorableValue()
{
  v1 = OUTLINED_FUNCTION_147();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_81();
  v7(v6);
  return v0;
}

uint64_t _s12BiomeStreams13StorableValueOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_81();
  v9(v8);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_83(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpression(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  Description = type metadata accessor for AggregationFunction()[-1].Description;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (Description[80] + 32) & ~Description[80];
  v12 = v3 + v6;
  v13 = v5;
  v7 = _minimumMergeRunLength(_:)(v5);
  if (v7 >= v5)
  {
    if (v5)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
    }
  }

  else
  {
    v8 = v7;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v10, &v11, &v12, v8, type metadata accessor for AggregationFunction, AggregationFunction.name(), AggregationFunction.name(), type metadata accessor for AggregationFunction, specialized UnsafeMutablePointer.moveInitialize(from:count:), (v9 + v6), v5 >> 1, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    *(v9 + 16) = 0;
  }

  *a1 = v3;
}

{
  Description = type metadata accessor for SQLExpression()[-1].Description;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (Description[80] + 32) & ~Description[80];
  v12 = v3 + v6;
  v13 = v5;
  v7 = _minimumMergeRunLength(_:)(v5);
  if (v7 >= v5)
  {
    if (v5)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
    }
  }

  else
  {
    v8 = v7;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v10, &v11, &v12, v8, type metadata accessor for SQLExpression, SQLExpression.sql.getter, SQLExpression.sql.getter, type metadata accessor for SQLExpression, specialized UnsafeMutablePointer.moveInitialize(from:count:), (v9 + v6), v5 >> 1, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    *(v9 + 16) = 0;
  }

  *a1 = v3;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14BiomeSQLParser19AggregationFunctionV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_19_3();
  v11 = *(a5(v10) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v12)
  {
    if (result - v13 != 0x8000000000000000 || v12 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v12);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser19AggregationFunctionV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 192) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 192) & 7;
  }
}

uint64_t outlined init with copy of PgQuery_Alias?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_87_0()
{
  v2 = *(v0 - 136);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_47_2()
{
  result = *(v0 - 296);
  v2 = *(v0 - 256);
  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}