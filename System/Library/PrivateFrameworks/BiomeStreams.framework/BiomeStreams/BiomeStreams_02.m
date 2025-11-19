__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for Binding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Binding.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_12(v10);
    outlined init with copy of MaterializedViewPhysicalPlan(v9 + *(v11 + 72) * v8, a4);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for StorableValue(0);
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, type metadata accessor for SQLDataType, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType, type metadata accessor for SQLDataType);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, type metadata accessor for SQLRawDataType, &lazy protocol witness table cache variable for type SQLRawDataType and conformance SQLRawDataType, type metadata accessor for SQLRawDataType);
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SQLDataType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72656765746E69;
  v5 = 1684632949;
  if (v2 != 6)
  {
    v5 = 1819047278;
  }

  v6 = 1635017060;
  if (v2 != 4)
  {
    v6 = 1852797802;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (v2 != 2)
  {
    v8 = 1702125924;
    v7 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C62756F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *specialized KeyedQueryPlannerMetadataCache.getValue(forKey:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for KeyedAggregationMetadataCache(0);
  v7 = *(v1 + v6[12]);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = (v1 + v6[15]);
  v10 = v9[1];
  if (!v10)
  {
    return 0;
  }

  v26 = *v9;
  v11 = v9[3];
  v27 = v9[2];
  v12 = *(v1 + v6[14]);
  v13 = *(v4 + v6[7]);

  v14 = specialized Dictionary.subscript.getter(a1, v13);
  v15._rawValue = v14;
  if (v12 != 1 && !v14)
  {
    v16 = (v4 + v8[8]);
    v17 = specialized OrderedDictionary.subscript.getter(a1, *v16, v16[1]);
    if (v17 == 1)
    {
      v24 = v16;
      v25 = *(v4 + v8[11]);

      v15._rawValue = v27(a1);

      if (!v3)
      {
        v18._countAndFlagsBits = v26;
        v18._object = v10;
        v19 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v18, v15);

        if (!v20)
        {
          if (v19)
          {
            _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5(v7);
            specialized _arrayForceCast<A, B>(_:)();

            v22 = *(v4 + v8[13]);
            static KeyedAggregationMetadataCache.metadataFromRow(_:groupBySchema:payloadSchema:)();
            v15._rawValue = v23;
          }

          else
          {
            v15._rawValue = 0;
          }

          specialized OrderedDictionary.updateValue(_:forKey:)(v15._rawValue, a1);
          if (*(v4 + v8[9]) < *(v24[1] + 16))
          {
            specialized OrderedDictionary.removeFirst()();
          }
        }
      }
    }

    else
    {
      v15._rawValue = v17;
    }
  }

  return v15._rawValue;
}

{
  v3 = v2;
  v4 = v1;
  MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
  v7 = *(v4 + MatchingRecordCache[12]);
  if (!v7)
  {
    return 0;
  }

  v8 = MatchingRecordCache;
  v9 = (v4 + MatchingRecordCache[15]);
  v10 = v9[1];
  if (!v10)
  {
    return 0;
  }

  sql = *v9;
  v11 = v9[3];
  v32 = v9[2];
  v12 = *(v4 + MatchingRecordCache[14]);
  v13 = *(v4 + MatchingRecordCache[7]);

  v33 = a1;
  v15 = specialized Dictionary.subscript.getter(a1, v13);
  v16 = v14;
  if (v12 == 1)
  {

    if (!v16)
    {
      return 0;
    }

    return (v15 & 1);
  }

  if (v14)
  {

    return (v15 & 1);
  }

  v30 = (v4 + v8[8]);
  v19 = specialized OrderedDictionary.subscript.getter(v33, *v30, v30[1]);
  if (v20 == 1)
  {
    v21 = *(v4 + v8[11]);

    v17._rawValue = v32(v33);

    if (!v3)
    {
      v22._countAndFlagsBits = sql;
      v22._object = v10;
      v23 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v22, v17);

      if (!v24)
      {
        if (v23)
        {
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5(v7);
          specialized _arrayForceCast<A, B>(_:)();

          v25 = *(v4 + v8[13]);
          static KeyedFirstMatchingRecordCache.metadataFromRow(_:groupBySchema:payloadSchema:)();
          v27 = v26;
          v29 = v28;

          v17._rawValue = (v29 & 1);
        }

        else
        {
          v17._rawValue = 0;
          v27 = 0;
        }

        specialized OrderedDictionary.updateValue(_:forKey:)(v17._rawValue, v27, v33);
        if (*(v4 + v8[9]) < *(v30[1] + 16))
        {
          specialized OrderedDictionary.removeFirst()();
        }
      }
    }
  }

  else
  {
    v17._rawValue = v19;
  }

  return v17._rawValue;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void closure #2 in static KeyedQueryPlannerMetadataCache.readMetadataSQL(materializedViewName:groupBySchema:)(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for StorableValue(0);
  v5 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v30 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 == v9)
  {
    v25[1] = v2;
    if (v8)
    {
      v10 = *(v6 + 80);
      v11 = (v10 + 32) & ~v10;
      v12 = a1 + v11;
      v13 = *(v6 + 72);
      v27 = v11 + 2 * v13;
      v28 = v10;
      v14 = MEMORY[0x1E69E7CC0];
      v26 = xmmword_184D29A90;
      while (1)
      {
        v31 = v8;
        v15 = v30;
        _s12BiomeStreams13StorableValueOWOcTm_0(v12, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = v26;
        v17 = v16 + v11;
        _s12BiomeStreams13StorableValueOWOcTm_0(v15, v16 + v11);
        _s12BiomeStreams13StorableValueOWObTm_1(v15, v17 + v13);
        v18 = *(v14 + 16);
        if (__OFADD__(v18, 2))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v14 + 24) >> 1, v19 < v18 + 2))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v20;
          v19 = *(v20 + 24) >> 1;
        }

        if (v19 - *(v14 + 16) < 2)
        {
          goto LABEL_15;
        }

        swift_arrayInitWithCopy();

        v21 = *(v14 + 16);
        v22 = __OFADD__(v21, 2);
        v23 = v21 + 2;
        if (v22)
        {
          goto LABEL_16;
        }

        *(v14 + 16) = v23;
        v12 += v13;
        v8 = v31 - 1;
        if (v31 == 1)
        {
          return;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v24 = v8;
    v24[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void static KeyedAggregationMetadataCache.metadataFromRow(_:groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_64();
  v205 = v0;
  v183 = v2;
  v4 = v3;
  v6 = v5;
  v201 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59(&v181 - v11);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v12 = OUTLINED_FUNCTION_2_1(v190);
  v187 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v188 = v17;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v192 = v19;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51();
  v186 = v21;
  v22 = OUTLINED_FUNCTION_43();
  v189 = type metadata accessor for StorableValue(v22);
  v23 = OUTLINED_FUNCTION_2_1(v189);
  v200 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v191 = v27;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v185 = v29;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_51();
  v203 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v34 = OUTLINED_FUNCTION_2_1(v33);
  v196 = v35;
  v197 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  v195 = v38;
  OUTLINED_FUNCTION_27();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v181 - v41;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_51();
  v194 = v43;
  v44 = 0;
  v45 = *(v4 + 16);
  v198 = v4;
  v199 = v45;
  v193 = v6 + 64;
  v46 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v204 = v46;
    if (v199 == v44)
    {
      if (*(v183 + 16))
      {
        v98 = 0;
        v99 = v183 + 32;
        v100 = MEMORY[0x1E69E7CC0];
        v101 = v188;
        v181 = *(v183 + 16);
        v183 += 32;
        do
        {
          v102 = *(v99 + 8 * v98);
          v193 = v98 + 1;
          v194 = v100;

          OUTLINED_FUNCTION_64_2();
          v199 = Dictionary.init(dictionaryLiteral:)();
          v103 = 0;
          v104 = *(v102 + 16);
          v195 = v102;
          v196 = v104;
          while (v196 != v103)
          {
            if (v103 >= *(v102 + 16))
            {
              goto LABEL_48;
            }

            v105 = v186;
            OUTLINED_FUNCTION_12_6();
            v108 = *(v107 + 72);
            v198 = v109;
            outlined init with copy of Date?(v102 + v106 + v108 * v109, v105, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
            v110 = v105[1];
            v111 = v105[2];
            v112 = v105[3];
            v113 = v190;
            v114 = *(v190 + 64);
            v115 = v192;
            v202 = *v105;
            v203 = v110;
            *v192 = v202;
            *(v115 + 1) = v110;
            *(v115 + 2) = v111;
            *(v115 + 3) = v112;
            v116 = type metadata accessor for SQLDataType();
            OUTLINED_FUNCTION_83(v116);
            v118 = v117;
            (*(v117 + 32))(&v115[v114], v105 + v114, v116);
            outlined init with copy of Date?(v115, v101, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
            v119 = *(v101 + 1);

            v120 = *(v101 + 3);
            v121 = *(v113 + 64);
            v122 = v201;
            if (!*(v201 + 16))
            {

LABEL_44:

              v204 = *(v118 + 8);
              v204(&v101[v121], v116);
              v205 = OUTLINED_FUNCTION_156_0();
              OUTLINED_FUNCTION_1_23();
              lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v168, v169);
              v170 = OUTLINED_FUNCTION_33_4();
              v172 = v171;
              v173 = v192;
              v174 = v182;
              outlined init with copy of Date?(v192, v182, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
              v175 = *v174;
              v176 = v174[1];
              v177 = v174[3];

              v178 = *(v190 + 64);
              *v172 = v175;
              v172[1] = v176;
              swift_storeEnumTagMultiPayload();
              v205 = v170;
              swift_willThrow();
              v204(v174 + v178, v116);
              v97 = v173;
              v95 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd;
              v96 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR;
              goto LABEL_15;
            }

            v123 = specialized __RawDictionaryStorage.find<A>(_:)(*(v101 + 2), *(v101 + 3));
            v125 = v124;

            if ((v125 & 1) == 0)
            {
              goto LABEL_44;
            }

            v126 = *(v122 + 56) + 24 * v123;
            v127 = v101;
            v129 = *v126;
            v128 = *(v126 + 8);
            v130 = *(v126 + 16);
            v131 = OUTLINED_FUNCTION_60_2();
            outlined copy of DatabaseValue(v131, v132, v130);
            (*(v118 + 8))(&v127[v121], v116);
            v133 = v185;
            v134 = OUTLINED_FUNCTION_60_2();
            v135 = v205;
            static StorableValue.fromDatabaseValue(_:dataType:)(v134, v136, v130, v137, v138);
            v205 = v135;
            if (v135)
            {

              v179 = OUTLINED_FUNCTION_60_2();
              outlined consume of DatabaseValue(v179, v180, v130);

              v95 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd;
              v96 = &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR;
              v97 = v192;
              goto LABEL_15;
            }

            LODWORD(v197) = v130;
            OUTLINED_FUNCTION_2_12();
            _s12BiomeStreams13StorableValueOWOcTm_0(v133, v191);
            v139 = v199;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v206 = v139;
            specialized __RawDictionaryStorage.find<A>(_:)(v202, v203);
            OUTLINED_FUNCTION_15_3();
            v145 = v143 + v144;
            if (__OFADD__(v143, v144))
            {
              goto LABEL_49;
            }

            v146 = v141;
            v147 = v142;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v145))
            {
              v148 = specialized __RawDictionaryStorage.find<A>(_:)(v202, v203);
              v150 = v184;
              if ((v147 & 1) != (v149 & 1))
              {
                goto LABEL_51;
              }

              v146 = v148;
            }

            else
            {
              v150 = v184;
            }

            v199 = v139;
            if (v147)
            {
              v151 = *(v200 + 72) * v146;
              _s12BiomeStreams13StorableValueOWObTm_1(v206[7] + v151, v150);
              _s12BiomeStreams13StorableValueOWObTm_1(v191, v206[7] + v151);
              v152 = OUTLINED_FUNCTION_60_2();
              outlined consume of DatabaseValue(v152, v153, v197);
              _s12BiomeStreams13StorableValueOWOhTm_1();
              v154 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_14_4(&v139[v146 >> 6]);
              v155 = (v139[6] + 16 * v146);
              v156 = v203;
              *v155 = v202;
              v155[1] = v156;
              _s12BiomeStreams13StorableValueOWObTm_1(v191, v139[7] + *(v200 + 72) * v146);

              v157 = OUTLINED_FUNCTION_60_2();
              outlined consume of DatabaseValue(v157, v158, v197);
              OUTLINED_FUNCTION_81();
              _s12BiomeStreams13StorableValueOWOhTm_1();
              OUTLINED_FUNCTION_142_0();
              if (v160)
              {
                goto LABEL_50;
              }

              v139[2] = v159;
              v154 = 1;
            }

            __swift_storeEnumTagSinglePayload(v150, v154, 1, v189);
            outlined destroy of (columnName: String, dataType: SQLDataType)(v150, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
            outlined destroy of (columnName: String, dataType: SQLDataType)(v192, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
            v103 = v198 + 1;
            v101 = v188;
            v102 = v195;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = *(v194 + 2);
            OUTLINED_FUNCTION_42_1();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v194 = v164;
          }

          v98 = v193;
          v100 = v194;
          v99 = v183;
          v162 = *(v194 + 2);
          v161 = *(v194 + 3);
          if (v162 >= v161 >> 1)
          {
            OUTLINED_FUNCTION_4_9(v161);
            OUTLINED_FUNCTION_71_1();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v99 = v183;
            v98 = v193;
            v100 = v165;
          }

          *(v100 + 16) = v162 + 1;
          *(v100 + 8 * v162 + 32) = v199;
        }

        while (v98 != v181);
      }

      goto LABEL_41;
    }

    OUTLINED_FUNCTION_12_6();
    v49 = *(v48 + 72);
    v202 = v50;
    v51 = v194;
    outlined init with copy of Date?(v198 + v47 + v49 * v50, v194, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v52 = *(v51 + 1);
    v53 = v197;
    v54 = *(v197 + 48);
    *v42 = *v51;
    *(v42 + 1) = v52;
    v55 = type metadata accessor for SQLDataType();
    OUTLINED_FUNCTION_83(v55);
    v57 = v56;
    (*(v56 + 32))(&v42[v54], &v51[v54], v55);
    v58 = v42;
    v59 = v42;
    v60 = v195;
    outlined init with copy of Date?(v59, v195, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v62 = *v60;
    v61 = *(v60 + 1);
    (*(v57 + 8))(&v60[*(v53 + 48)], v55);
    v63 = v201;
    if (!*(v201 + 16) || (v64 = OUTLINED_FUNCTION_77(), v66 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65), (v67 & 1) == 0))
    {

      OUTLINED_FUNCTION_156_0();
      OUTLINED_FUNCTION_1_23();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v91, v92);
      v93 = OUTLINED_FUNCTION_33_4();
      *v94 = v62;
      v94[1] = v61;
      swift_storeEnumTagMultiPayload();
      v205 = v93;
      swift_willThrow();
      v95 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd;
      v96 = &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR;
      v97 = v58;
LABEL_15:
      outlined destroy of (columnName: String, dataType: SQLDataType)(v97, v95, v96);
      goto LABEL_41;
    }

    v68 = v66;

    if (v68 < 0 || v68 >= 1 << *(v63 + 32))
    {
      break;
    }

    if (((*(v193 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
    {
      goto LABEL_47;
    }

    v69 = *(v63 + 56) + 24 * v68;
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    v73 = OUTLINED_FUNCTION_29_5();
    outlined copy of DatabaseValue(v73, v74, v72);
    v42 = v58;
    v75 = OUTLINED_FUNCTION_29_5();
    v76 = v205;
    static StorableValue.fromDatabaseValue(_:dataType:)(v75, v77, v72, v78, v79);
    v205 = v76;
    if (v76)
    {
      outlined destroy of (columnName: String, dataType: SQLDataType)(v58, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v166 = OUTLINED_FUNCTION_29_5();
      outlined consume of DatabaseValue(v166, v167, v72);

LABEL_41:
      OUTLINED_FUNCTION_65();
      return;
    }

    v80 = OUTLINED_FUNCTION_29_5();
    outlined consume of DatabaseValue(v80, v81, v72);
    OUTLINED_FUNCTION_2_12();
    v82 = OUTLINED_FUNCTION_133_0();
    _s12BiomeStreams13StorableValueOWOcTm_0(v82, v83);
    v46 = v204;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v46 + 2);
      OUTLINED_FUNCTION_42_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v46 = v89;
    }

    v85 = *(v46 + 2);
    v84 = *(v46 + 3);
    if (v85 >= v84 >> 1)
    {
      OUTLINED_FUNCTION_4_9(v84);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v46 = v90;
    }

    _s12BiomeStreams13StorableValueOWOhTm_1();
    outlined destroy of (columnName: String, dataType: SQLDataType)(v58, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    *(v46 + 2) = v85 + 1;
    OUTLINED_FUNCTION_12_6();
    _s12BiomeStreams13StorableValueOWObTm_1(v1, v46 + v86 + *(v87 + 72) * v85);
    v44 = v202 + 1;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void static KeyedFirstMatchingRecordCache.metadataFromRow(_:groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_64();
  v172 = v1;
  v154 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_84();
  v168 = type metadata accessor for SQLDataType();
  v7 = OUTLINED_FUNCTION_2_1(v168);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v158 = v12;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v16 = OUTLINED_FUNCTION_47(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v157 = v19;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51();
  v153 = v21;
  v22 = OUTLINED_FUNCTION_43();
  v150 = type metadata accessor for StorableValue(v22);
  v23 = OUTLINED_FUNCTION_2_1(v150);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v155 = v26;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_30();
  v156 = v28;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_30();
  v169 = v30;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_24_4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v161 = OUTLINED_FUNCTION_2_1(v32);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_9_0();
  v160 = v35;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_51();
  v159 = v38;
  v39 = 0;
  v162 = v6;
  v164 = *(v6 + 16);
  v167 = (v9 + 32);
  v152 = v9;
  v173 = v0;
  v165 = v0 + 64;
  v166 = (v9 + 8);
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v171 = v40;
    if (v164 == v39)
    {
      break;
    }

    OUTLINED_FUNCTION_12_6();
    v44 = v43;
    outlined init with copy of Date?(v162 + v41 + *(v42 + 72) * v43, v159, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v45 = *(v159 + 1);
    v46 = *(v161 + 48);
    *v3 = *v159;
    *(v3 + 1) = v45;
    (*v167)(&v3[v46], &v159[v46], v168);
    outlined init with copy of Date?(v3, v160, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v48 = *v160;
    v47 = v160[1];
    (*v166)(v160 + *(v161 + 48), v168);
    if (!*(v173 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v48, v47), (v49 & 1) == 0))
    {

      OUTLINED_FUNCTION_156_0();
      OUTLINED_FUNCTION_1_23();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v72, v73);
      OUTLINED_FUNCTION_33_4();
      *v74 = v48;
      v74[1] = v47;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      outlined destroy of (columnName: String, dataType: SQLDataType)(v3, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
LABEL_47:
      OUTLINED_FUNCTION_65();
      return;
    }

    OUTLINED_FUNCTION_121_0();

    if (v173 < 0 || v173 >= 1 << *(v173 + 32))
    {
      goto LABEL_49;
    }

    if (((*(v165 + ((v173 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v173) & 1) == 0)
    {
      goto LABEL_50;
    }

    v50 = *(v173 + 56) + 24 * v173;
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = OUTLINED_FUNCTION_37_2();
    outlined copy of DatabaseValue(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_37_2();
    static StorableValue.fromDatabaseValue(_:dataType:)(v57, v58, v59, v60, v61);
    if (v1)
    {
      outlined destroy of (columnName: String, dataType: SQLDataType)(v3, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v138 = OUTLINED_FUNCTION_37_2();
      outlined consume of DatabaseValue(v138, v139, v140);
LABEL_46:

      goto LABEL_47;
    }

    v62 = OUTLINED_FUNCTION_37_2();
    outlined consume of DatabaseValue(v62, v63, v64);
    OUTLINED_FUNCTION_2_12();
    _s12BiomeStreams13StorableValueOWOcTm_0(v2, v169);
    v40 = v171;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = *(v171 + 16);
      OUTLINED_FUNCTION_42_1();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = v70;
    }

    v66 = *(v40 + 16);
    v65 = *(v40 + 24);
    if (v66 >= v65 >> 1)
    {
      OUTLINED_FUNCTION_4_9(v65);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = v71;
    }

    _s12BiomeStreams13StorableValueOWOhTm_1();
    outlined destroy of (columnName: String, dataType: SQLDataType)(v3, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    *(v40 + 16) = v66 + 1;
    OUTLINED_FUNCTION_12_6();
    _s12BiomeStreams13StorableValueOWObTm_1(v169, v40 + v67 + *(v68 + 72) * v66);
    v39 = v44 + 1;
  }

  v75 = Dictionary.init(dictionaryLiteral:)();
  v76 = v154 + 64;
  v77 = 1 << *(v154 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v154 + 64);
  v80 = (v77 + 63) >> 6;

  v81 = 0;
  v82 = v157;
  v163 = v80;
  while (1)
  {
    v170 = v75;
    if (!v79)
    {
      break;
    }

LABEL_23:
    v79 &= v79 - 1;
    OUTLINED_FUNCTION_111_0();
    v86 = *v84;
    v85 = v84[1];
    (*(v152 + 16))(v151, v88 + *(v152 + 72) * v87, v168);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    v90 = *(v89 + 48);
    *v157 = v86;
    *(v157 + 1) = v85;
    v82 = v157;
    (*(v152 + 32))(&v157[v90], v151, v168);
    __swift_storeEnumTagSinglePayload(v157, 0, 1, v89);

LABEL_24:
    outlined init with take of UUID?(v82, v153, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    if (__swift_getEnumTagSinglePayload(v153, 1, v91) == 1)
    {

      goto LABEL_47;
    }

    v93 = *v153;
    v92 = v153[1];
    (*v167)(v158, v153 + *(v91 + 48), v168);
    if (!*(v173 + 16) || (v94 = OUTLINED_FUNCTION_52(), v96 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v95), (v97 & 1) == 0))
    {

      OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_1_23();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v141, v142);
      OUTLINED_FUNCTION_34_3();
      *v143 = v93;
      v143[1] = v92;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v144 = OUTLINED_FUNCTION_19_6();
      v145(v144);
      goto LABEL_47;
    }

    if ((v96 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v98 = *(v173 + 32);
    OUTLINED_FUNCTION_119();
    if (v101 == v102)
    {
      goto LABEL_51;
    }

    if (((*(v165 + ((v99 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
    {
      goto LABEL_52;
    }

    v103 = *(v100 + 56) + 24 * v99;
    v104 = *v103;
    v105 = *(v103 + 8);
    v106 = *(v103 + 16);
    v107 = OUTLINED_FUNCTION_29_5();
    outlined copy of DatabaseValue(v107, v108, v106);
    v109 = OUTLINED_FUNCTION_29_5();
    static StorableValue.fromDatabaseValue(_:dataType:)(v109, v110, v106, v158, v111);
    if (v172)
    {
      v146 = OUTLINED_FUNCTION_19_6();
      v147(v146);

      v148 = OUTLINED_FUNCTION_29_5();
      outlined consume of DatabaseValue(v148, v149, v106);

      goto LABEL_46;
    }

    v112 = OUTLINED_FUNCTION_29_5();
    outlined consume of DatabaseValue(v112, v113, v106);
    OUTLINED_FUNCTION_2_12();
    _s12BiomeStreams13StorableValueOWOcTm_0(v156, v155);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = OUTLINED_FUNCTION_52();
    specialized __RawDictionaryStorage.find<A>(_:)(v115, v116);
    v117 = *(v75 + 16);
    OUTLINED_FUNCTION_27_3();
    v122 = v120 + v121;
    if (__OFADD__(v120, v121))
    {
      goto LABEL_53;
    }

    v123 = v118;
    v124 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v122))
    {
      v125 = OUTLINED_FUNCTION_52();
      v127 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v126);
      if ((v124 & 1) != (v128 & 1))
      {
        goto LABEL_55;
      }

      v123 = v127;
    }

    if (v124)
    {

      v75 = v170;
      OUTLINED_FUNCTION_145_0();
      outlined assign with take of StorableValue(v155, v129);
      OUTLINED_FUNCTION_0_24();
      _s12BiomeStreams13StorableValueOWOhTm_1();
      v130 = OUTLINED_FUNCTION_19_6();
      v131(v130);
    }

    else
    {
      v75 = v170;
      OUTLINED_FUNCTION_14_4(v170 + 8 * (v123 >> 6));
      v132 = (*(v170 + 48) + 16 * v123);
      *v132 = v93;
      v132[1] = v92;
      OUTLINED_FUNCTION_145_0();
      _s12BiomeStreams13StorableValueOWObTm_1(v155, v133);
      _s12BiomeStreams13StorableValueOWOhTm_1();
      v134 = OUTLINED_FUNCTION_19_6();
      v135(v134);
      OUTLINED_FUNCTION_142_0();
      if (v102)
      {
        goto LABEL_54;
      }

      *(v170 + 16) = v136;
    }

    v82 = v157;
    v80 = v163;
    v76 = v154 + 64;
  }

  while (1)
  {
    v83 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v83 >= v80)
    {
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v137);
      v79 = 0;
      goto LABEL_24;
    }

    v79 = *(v76 + 8 * v83);
    ++v81;
    if (v79)
    {
      v81 = v83;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v2 = *(*(v1 - 328) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StorableValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = v2 + 64;
  v14 = -1 << *(v2 + 32);
  result = a2 & ~v14;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v16 = ~v14;
    v17 = *(a1 + 16);
    v26 = v2 + 64;
    v27 = a1;
    v25 = ~v14;
    while (1)
    {
      v18 = *(*(v2 + 48) + 8 * result);
      if (*(v18 + 16) == v17)
      {
        break;
      }

LABEL_13:
      result = (result + 1) & v16;
      if (((*(v13 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v17 && v18 != a1)
    {
      v28 = result;
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = v18 + v19;
      v21 = a1 + v19;

      v22 = 0;
      while (v22 < *(v18 + 16))
      {
        v23 = *(v6 + 72) * v22;
        result = outlined init with copy of StorableValue(v20 + v23, v12);
        if (v17 == v22)
        {
          goto LABEL_17;
        }

        outlined init with copy of StorableValue(v21 + v23, v10);
        v24 = static StorableValue.== infix(_:_:)(v12, v10);
        outlined destroy of StorableValue(v10);
        result = outlined destroy of StorableValue(v12);
        if ((v24 & 1) == 0)
        {

          a1 = v27;
          result = v28;
          v16 = v25;
          v13 = v26;
          goto LABEL_13;
        }

        if (v17 == ++v22)
        {

          return v28;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v155 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v155);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v35);
  v36 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v37 = OUTLINED_FUNCTION_0_22(v36, &a11);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a10);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v45);
  v46 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v47 = OUTLINED_FUNCTION_0_22(v46, &a9);
  v157 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &v165);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v56 = OUTLINED_FUNCTION_82_1();
  v57 = OUTLINED_FUNCTION_0_22(v56, &v164);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_4(v65, v147);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v67 = OUTLINED_FUNCTION_47(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_51();
  v72 = OUTLINED_FUNCTION_7(v71);
  v158[0] = type metadata accessor for StorableValue(v72);
  v73 = OUTLINED_FUNCTION_2_1(v158[0]);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_8_5(v76, v148);
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_6_3(v78, v79, v80, v81, v82, v83, v84, v85, v149);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVSgGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVSgGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v162);
  OUTLINED_FUNCTION_60_1();
  if (v86)
  {
    OUTLINED_FUNCTION_17_3(&v153);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_110_0(v87);
    OUTLINED_FUNCTION_64_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_41_1(*v88);
    OUTLINED_FUNCTION_23_2();
    if (v90)
    {
LABEL_3:
      v91 = __clz(__rbit64(v90));
      goto LABEL_9;
    }

LABEL_4:
    OUTLINED_FUNCTION_99_1();
    while (1)
    {
      if (__OFADD__(v95, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        JUMPOUT(0x18491AB18);
      }

      if (v95 + 1 >= v96)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1(v92, v93, v94);
      if (v97)
      {
        v91 = __clz(__rbit64(v97));
LABEL_9:
        v151 = v89;
        v98 = v91 | (v89 << 6);
        v99 = *(v22[6] + 8 * v98);
        v152 = *(v22[7] + 16 * v98);
        OUTLINED_FUNCTION_97_1();
        if ((v100 & 1) == 0)
        {
        }

        v101 = *(v24 + 40);
        Hasher.init(_seed:)();
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v99)
        {
          OUTLINED_FUNCTION_5_6(&v154);
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v102 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v102, v103);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v109)
                {
                  OUTLINED_FUNCTION_52_1(v108);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v104 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v130 = OUTLINED_FUNCTION_7_5(*&v108);
                  if (!(v131 ^ v132 | v121))
                  {
                    goto LABEL_59;
                  }

                  if (v130 <= -9.22337204e18)
                  {
                    goto LABEL_60;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v131)
                  {
                    goto LABEL_61;
                  }

                  Int.hashValue.getter();
                  v104 = Int.hashValue.getter();
                }

LABEL_34:
                MEMORY[0x1865F6890](v104);
LABEL_35:
                outlined destroy of StorableValue(v159);
LABEL_36:
                OUTLINED_FUNCTION_95_1();
                if (v121)
                {
                  goto LABEL_38;
                }

                break;
              case 2u:
                v105 = OUTLINED_FUNCTION_92_1();
                _s10Foundation4UUIDVSgWObTm_0(v105, v106, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v107 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v107);
                if (v121)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  v115 = OUTLINED_FUNCTION_40_1();
                  v116(v115);
                  OUTLINED_FUNCTION_35_2(&v161);
                  OUTLINED_FUNCTION_59_1();
                  v117();
                  OUTLINED_FUNCTION_36_0(&v160);
                  OUTLINED_FUNCTION_58_0();
                  v118();
                  v119 = OUTLINED_FUNCTION_44_1();
                  v120(v119);
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v121)
                  {
                    goto LABEL_62;
                  }

                  OUTLINED_FUNCTION_16_0(v158);
                  v122 = OUTLINED_FUNCTION_18_3();
                  v123(v122);
                  OUTLINED_FUNCTION_9_5(&v163);
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v124 = OUTLINED_FUNCTION_34_1(&v157);
                  v125(v124);
                  OUTLINED_FUNCTION_61_0();
                  v127 = *(v126 + 8);
                  v128 = OUTLINED_FUNCTION_74_1();
                  v129(v128);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1(&a12);
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v159);
                v23 = v158[1];
                goto LABEL_36;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v24 = Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v104 = OUTLINED_FUNCTION_57_1();
                goto LABEL_34;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                lazy protocol witness table accessor for type Data and conformance Data();
                v110 = OUTLINED_FUNCTION_43_0();
                MEMORY[0x1865F6890](v110);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_35;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v111, v112, v113, &_s10Foundation4UUIDVSgMR);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v114 = OUTLINED_FUNCTION_80_1();
                MEMORY[0x1865F6890](v114);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_35;
              case 7u:
                v104 = OUTLINED_FUNCTION_88_0();
                goto LABEL_34;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_38:
        v133 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_4(v133, &v156);
        OUTLINED_FUNCTION_37_0(v134);
        if (v121)
        {
          OUTLINED_FUNCTION_21_2();
          v22 = v150;
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v121 && (v137 & 1) != 0)
            {
              goto LABEL_58;
            }

            if (v136 == v138)
            {
              v136 = 0;
            }

            OUTLINED_FUNCTION_56_1(v136);
          }

          while (v121);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          v22 = v150;
        }

        OUTLINED_FUNCTION_1_20(v135);
        *(v140 + 16 * v139) = v152;
        ++*(v24 + 16);
        v89 = v151;
        if (v90)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_97_1();
    if (v141)
    {
      OUTLINED_FUNCTION_33_2();
      if (v131 != v132)
      {
        OUTLINED_FUNCTION_53_1(v142, v143);
      }

      else
      {
        v144 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v144, v145, v146);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v151 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v151);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v35);
  v36 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v37 = OUTLINED_FUNCTION_0_22(v36, &a12);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a11);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v45);
  v46 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v47 = OUTLINED_FUNCTION_0_22(v46, &a10);
  v152[1] = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &a9);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v56 = OUTLINED_FUNCTION_82_1();
  v57 = OUTLINED_FUNCTION_0_22(v56, &v163);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_4(v65, v143);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v67 = OUTLINED_FUNCTION_47(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_51();
  v72 = OUTLINED_FUNCTION_7(v71);
  v153 = type metadata accessor for StorableValue(v72);
  v73 = OUTLINED_FUNCTION_2_1(v153);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_8_5(v76, v144);
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_6_3(v78, v79, v80, v81, v82, v83, v84, v85, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGSgGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGSgGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v161);
  OUTLINED_FUNCTION_60_1();
  if (v86)
  {
    OUTLINED_FUNCTION_17_3(&v149);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_101_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_75_1(*MEMORY[0x1E6969380]);
    OUTLINED_FUNCTION_67_1();
    if (v91)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    v93 = v90;
    v94 = v146;
    while (1)
    {
      if (__OFADD__(v93, 1))
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
        JUMPOUT(0x18491BD4CLL);
      }

      if (v93 + 1 >= v89)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1(v87, v88, v94);
      if (v95)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3(v92);
        v22 = *(v97 + 8 * v96);
        OUTLINED_FUNCTION_109_0();
        if ((v98 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a14);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6(&v150);
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v99 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v99, v100);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v106)
                {
                  OUTLINED_FUNCTION_52_1(v105);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v101 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v125 = OUTLINED_FUNCTION_7_5(*&v105);
                  if (!(v126 ^ v127 | v116))
                  {
                    goto LABEL_60;
                  }

                  if (v125 <= -9.22337204e18)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v126)
                  {
                    goto LABEL_62;
                  }

                  Int.hashValue.getter();
                  v101 = Int.hashValue.getter();
                }

                v22 = &v158;
LABEL_35:
                MEMORY[0x1865F6890](v101);
LABEL_36:
                outlined destroy of StorableValue(v155);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v116)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v102 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v102, v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v104 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v104);
                if (v116)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  OUTLINED_FUNCTION_16_0(&v160);
                  OUTLINED_FUNCTION_87_1();
                  OUTLINED_FUNCTION_59_1();
                  v112();
                  OUTLINED_FUNCTION_35_2(&v159);
                  OUTLINED_FUNCTION_58_0();
                  v113();
                  OUTLINED_FUNCTION_36_0(&v157);
                  OUTLINED_FUNCTION_111();
                  v114();
                  OUTLINED_FUNCTION_46_1(&v156);
                  OUTLINED_FUNCTION_113_0();
                  v115();
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v116)
                  {
                    goto LABEL_63;
                  }

                  OUTLINED_FUNCTION_16_0(&v154);
                  v117 = OUTLINED_FUNCTION_18_3();
                  v118(v117);
                  OUTLINED_FUNCTION_9_5(&v162);
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v119 = OUTLINED_FUNCTION_34_1(&v153);
                  v120(v119);
                  OUTLINED_FUNCTION_61_0();
                  v122 = *(v121 + 8);
                  v123 = OUTLINED_FUNCTION_74_1();
                  v124(v123);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1(&a13);
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v155);
                v23 = v154;
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v156;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v101 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                lazy protocol witness table accessor for type Data and conformance Data();
                v107 = OUTLINED_FUNCTION_43_0();
                v22 = &v158;
                MEMORY[0x1865F6890](v107);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v108, v109, v110, &_s10Foundation4UUIDVSgMR);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v111 = OUTLINED_FUNCTION_80_1();
                v22 = &v158;
                MEMORY[0x1865F6890](v111);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v101 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        v128 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_4(v128, v152);
        OUTLINED_FUNCTION_37_0(v129);
        if (v116)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v116 && (v132 & 1) != 0)
            {
              goto LABEL_59;
            }

            if (v131 == v133)
            {
              v131 = 0;
            }

            OUTLINED_FUNCTION_56_1(v131);
          }

          while (v116);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v130);
        *(v135 + 8 * v134) = v148;
        OUTLINED_FUNCTION_27_1();
        v89 = v147;
        if (v136)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_109_0();
    if (v137)
    {
      OUTLINED_FUNCTION_33_2();
      if (v126 != v127)
      {
        OUTLINED_FUNCTION_53_1(v138, v139);
      }

      else
      {
        v140 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v140, v141, v142);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v155 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v155);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v35);
  v36 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v37 = OUTLINED_FUNCTION_0_22(v36, &a11);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a10);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v45);
  v46 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v47 = OUTLINED_FUNCTION_0_22(v46, &a9);
  v157 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &v165);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v56 = OUTLINED_FUNCTION_82_1();
  v57 = OUTLINED_FUNCTION_0_22(v56, &v164);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_4(v65, v148);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v67 = OUTLINED_FUNCTION_47(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_51();
  v72 = OUTLINED_FUNCTION_7(v71);
  v158[0] = type metadata accessor for StorableValue(v72);
  v73 = OUTLINED_FUNCTION_2_1(v158[0]);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_8_5(v76, v149);
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_6_3(v78, v79, v80, v81, v82, v83, v84, v85, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventtGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGG5value_AC10CacheEventO5eventtGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v162);
  OUTLINED_FUNCTION_60_1();
  if (v86)
  {
    OUTLINED_FUNCTION_17_3(&v153);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_110_0(v87);
    OUTLINED_FUNCTION_64_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_41_1(*v88);
    OUTLINED_FUNCTION_23_2();
    if (v89)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    OUTLINED_FUNCTION_99_1();
    while (1)
    {
      if (__OFADD__(v94, 1))
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
        JUMPOUT(0x18491D3C8);
      }

      if (v94 + 1 >= v95)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1(v91, v92, v93);
      if (v96)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3(v90);
        v99 = v98 + 16 * v97;
        v22 = *v99;
        v151 = *(v99 + 8);
        OUTLINED_FUNCTION_97_1();
        if ((v100 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a14);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6(&v154);
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v101 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v101, v102);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v108)
                {
                  OUTLINED_FUNCTION_52_1(v107);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v103 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v129 = OUTLINED_FUNCTION_7_5(*&v107);
                  if (!(v130 ^ v131 | v120))
                  {
                    goto LABEL_60;
                  }

                  if (v129 <= -9.22337204e18)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v130)
                  {
                    goto LABEL_62;
                  }

                  Int.hashValue.getter();
                  v103 = Int.hashValue.getter();
                }

                v22 = v161;
LABEL_35:
                MEMORY[0x1865F6890](v103);
LABEL_36:
                outlined destroy of StorableValue(v159);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v120)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v104 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v104, v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v106 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v106);
                if (v120)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  v114 = OUTLINED_FUNCTION_40_1();
                  v115(v114);
                  OUTLINED_FUNCTION_35_2(v161);
                  OUTLINED_FUNCTION_59_1();
                  v116();
                  OUTLINED_FUNCTION_36_0(v160);
                  OUTLINED_FUNCTION_58_0();
                  v117();
                  v118 = OUTLINED_FUNCTION_44_1();
                  v119(v118);
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v120)
                  {
                    goto LABEL_63;
                  }

                  OUTLINED_FUNCTION_16_0(v158);
                  v121 = OUTLINED_FUNCTION_18_3();
                  v122(v121);
                  OUTLINED_FUNCTION_9_5(&v163);
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v123 = OUTLINED_FUNCTION_34_1(&v157);
                  v124(v123);
                  OUTLINED_FUNCTION_61_0();
                  v126 = *(v125 + 8);
                  v127 = OUTLINED_FUNCTION_74_1();
                  v128(v127);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1(&a12);
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v159);
                v23 = v158[1];
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = v160;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v103 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                lazy protocol witness table accessor for type Data and conformance Data();
                v109 = OUTLINED_FUNCTION_43_0();
                v22 = v161;
                MEMORY[0x1865F6890](v109);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v110, v111, v112, &_s10Foundation4UUIDVSgMR);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v113 = OUTLINED_FUNCTION_80_1();
                v22 = v161;
                MEMORY[0x1865F6890](v113);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v103 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        v132 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_4(v132, &v156);
        OUTLINED_FUNCTION_37_0(v133);
        if (v120)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v120 && (v136 & 1) != 0)
            {
              goto LABEL_59;
            }

            if (v135 == v137)
            {
              v135 = 0;
            }

            OUTLINED_FUNCTION_56_1(v135);
          }

          while (v120);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v134);
        v140 = v139 + 16 * v138;
        *v140 = v152;
        *(v140 + 8) = v151;
        OUTLINED_FUNCTION_27_1();
        if (v141)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_97_1();
    if (v142)
    {
      OUTLINED_FUNCTION_33_2();
      if (v130 != v131)
      {
        OUTLINED_FUNCTION_53_1(v143, v144);
      }

      else
      {
        v145 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v145, v146, v147);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v151 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v151);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v35);
  v36 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v37 = OUTLINED_FUNCTION_0_22(v36, &a12);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a11);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v45);
  v46 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v47 = OUTLINED_FUNCTION_0_22(v46, &a10);
  v152[1] = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &a9);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v56 = OUTLINED_FUNCTION_82_1();
  v57 = OUTLINED_FUNCTION_0_22(v56, &v163);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_4(v65, v143);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v67 = OUTLINED_FUNCTION_47(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_51();
  v72 = OUTLINED_FUNCTION_7(v71);
  v153 = type metadata accessor for StorableValue(v72);
  v73 = OUTLINED_FUNCTION_2_1(v153);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_8_5(v76, v144);
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_6_3(v78, v79, v80, v81, v82, v83, v84, v85, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGSaySDySSAEGGGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v161);
  OUTLINED_FUNCTION_60_1();
  if (v86)
  {
    OUTLINED_FUNCTION_17_3(&v149);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_101_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_75_1(*MEMORY[0x1E6969380]);
    OUTLINED_FUNCTION_67_1();
    if (v91)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    v93 = v90;
    v94 = v146;
    while (1)
    {
      if (__OFADD__(v93, 1))
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
        JUMPOUT(0x184921A54);
      }

      if (v93 + 1 >= v89)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1(v87, v88, v94);
      if (v95)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3(v92);
        v22 = *(v97 + 8 * v96);
        OUTLINED_FUNCTION_109_0();
        if ((v98 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a14);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6(&v150);
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v99 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v99, v100);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v106)
                {
                  OUTLINED_FUNCTION_52_1(v105);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v101 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v125 = OUTLINED_FUNCTION_7_5(*&v105);
                  if (!(v126 ^ v127 | v116))
                  {
                    goto LABEL_60;
                  }

                  if (v125 <= -9.22337204e18)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v126)
                  {
                    goto LABEL_62;
                  }

                  Int.hashValue.getter();
                  v101 = Int.hashValue.getter();
                }

                v22 = &v158;
LABEL_35:
                MEMORY[0x1865F6890](v101);
LABEL_36:
                outlined destroy of StorableValue(v155);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v116)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v102 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v102, v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v104 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v104);
                if (v116)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  OUTLINED_FUNCTION_16_0(&v160);
                  OUTLINED_FUNCTION_87_1();
                  OUTLINED_FUNCTION_59_1();
                  v112();
                  OUTLINED_FUNCTION_35_2(&v159);
                  OUTLINED_FUNCTION_58_0();
                  v113();
                  OUTLINED_FUNCTION_36_0(&v157);
                  OUTLINED_FUNCTION_111();
                  v114();
                  OUTLINED_FUNCTION_46_1(&v156);
                  OUTLINED_FUNCTION_113_0();
                  v115();
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v116)
                  {
                    goto LABEL_63;
                  }

                  OUTLINED_FUNCTION_16_0(&v154);
                  v117 = OUTLINED_FUNCTION_18_3();
                  v118(v117);
                  OUTLINED_FUNCTION_9_5(&v162);
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v119 = OUTLINED_FUNCTION_34_1(&v153);
                  v120(v119);
                  OUTLINED_FUNCTION_61_0();
                  v122 = *(v121 + 8);
                  v123 = OUTLINED_FUNCTION_74_1();
                  v124(v123);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1(&a13);
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v155);
                v23 = v154;
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v156;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v101 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                lazy protocol witness table accessor for type Data and conformance Data();
                v107 = OUTLINED_FUNCTION_43_0();
                v22 = &v158;
                MEMORY[0x1865F6890](v107);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v108, v109, v110, &_s10Foundation4UUIDVSgMR);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v111 = OUTLINED_FUNCTION_80_1();
                v22 = &v158;
                MEMORY[0x1865F6890](v111);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v101 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        v128 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_4(v128, v152);
        OUTLINED_FUNCTION_37_0(v129);
        if (v116)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v116 && (v132 & 1) != 0)
            {
              goto LABEL_59;
            }

            if (v131 == v133)
            {
              v131 = 0;
            }

            OUTLINED_FUNCTION_56_1(v131);
          }

          while (v116);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v130);
        *(v135 + 8 * v134) = v148;
        OUTLINED_FUNCTION_27_1();
        v89 = v147;
        if (v136)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_109_0();
    if (v137)
    {
      OUTLINED_FUNCTION_33_2();
      if (v126 != v127)
      {
        OUTLINED_FUNCTION_53_1(v138, v139);
      }

      else
      {
        v140 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v140, v141, v142);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v162 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v162);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v35);
  v36 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v37 = OUTLINED_FUNCTION_0_22(v36, &a10);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a9);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v45);
  v46 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v47 = OUTLINED_FUNCTION_0_22(v46, &v176);
  v164 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &v175);
  v160 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v57 = OUTLINED_FUNCTION_82_1();
  v58 = OUTLINED_FUNCTION_0_22(v57, &v174);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_25_4(v66, v149);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v68 = OUTLINED_FUNCTION_47(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_51();
  v73 = OUTLINED_FUNCTION_7(v72);
  v165 = type metadata accessor for StorableValue(v73);
  v74 = OUTLINED_FUNCTION_2_1(v165);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_8_5(v77, v150);
  v79 = MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_6_3(v79, v80, v81, v82, v83, v84, v85, v86, v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v172);
  OUTLINED_FUNCTION_60_1();
  if (v87)
  {
    OUTLINED_FUNCTION_17_3(&v160);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    v155 = *MEMORY[0x1E6969370];
    v154 = *MEMORY[0x1E6969380];
    v164 = v24;
    v92 = v166;
    v153 = v90;
    if (v93)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    v95 = v91;
    v96 = v152;
    while (1)
    {
      if (__OFADD__(v95, 1))
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
        JUMPOUT(0x184925584);
      }

      if (v95 + 1 >= v90)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1(v88, v89, v96);
      if (v97)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3(v94);
        OUTLINED_FUNCTION_112_0((v99 + v98 * v100));
        v159 = *(v101 + 16);
        if ((v158 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a13);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v23)
        {
          OUTLINED_FUNCTION_5_6(&v161);
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v102 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v102, v103);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v109)
                {
                  OUTLINED_FUNCTION_52_1(v108);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v104 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v130 = OUTLINED_FUNCTION_7_5(*&v108);
                  if (!(v131 ^ v132 | v121))
                  {
                    goto LABEL_60;
                  }

                  if (v130 <= -9.22337204e18)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v131)
                  {
                    goto LABEL_62;
                  }

                  Int.hashValue.getter();
                  v104 = Int.hashValue.getter();
                }

                v22 = &v170;
LABEL_35:
                MEMORY[0x1865F6890](v104);
LABEL_36:
                outlined destroy of StorableValue(v167);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v121)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v105 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v105, v106, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v107 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v107);
                if (v121)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  OUTLINED_FUNCTION_16_0(&v171);
                  v115 = OUTLINED_FUNCTION_87_1();
                  v116(v115, v157);
                  v117 = OUTLINED_FUNCTION_35_2(&v169);
                  v118(v117, v156);
                  OUTLINED_FUNCTION_36_0(&v167);
                  OUTLINED_FUNCTION_59_1();
                  v119();
                  OUTLINED_FUNCTION_46_1(&v166);
                  OUTLINED_FUNCTION_58_0();
                  v120();
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v121)
                  {
                    goto LABEL_63;
                  }

                  OUTLINED_FUNCTION_16_0(&v164);
                  v122 = OUTLINED_FUNCTION_18_3();
                  v123(v122);
                  OUTLINED_FUNCTION_9_5(&v173);
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v124 = OUTLINED_FUNCTION_34_1(&v163);
                  v125(v124);
                  OUTLINED_FUNCTION_61_0();
                  v127 = *(v126 + 8);
                  v128 = OUTLINED_FUNCTION_74_1();
                  v129(v128);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v92);
                  OUTLINED_FUNCTION_94_1(&a11);
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v167);
                v92 = v166;
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = &v168;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v104 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                lazy protocol witness table accessor for type Data and conformance Data();
                v110 = OUTLINED_FUNCTION_43_0();
                v22 = &v170;
                MEMORY[0x1865F6890](v110);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v111, v112, v113, &_s10Foundation4UUIDVSgMR);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v114 = OUTLINED_FUNCTION_80_1();
                v22 = &v170;
                MEMORY[0x1865F6890](v114);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v104 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        v133 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_4(v133, &v162);
        OUTLINED_FUNCTION_37_0(v134);
        if (v121)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v121 && (v137 & 1) != 0)
            {
              goto LABEL_59;
            }

            if (v136 == v138)
            {
              v136 = 0;
            }

            OUTLINED_FUNCTION_56_1(v136);
          }

          while (v121);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v135);
        OUTLINED_FUNCTION_91_1(v140 + v139 * v141);
        *(v142 + 16) = v159;
        OUTLINED_FUNCTION_27_1();
        v90 = v153;
        if (v143)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    if (v158)
    {
      OUTLINED_FUNCTION_33_2();
      if (v131 != v132)
      {
        OUTLINED_FUNCTION_53_1(v144, v145);
      }

      else
      {
        v146 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v146, v147, v148);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

{
  OUTLINED_FUNCTION_77_1();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_63_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7(v31);
  v151 = type metadata accessor for TimeZone();
  v32 = OUTLINED_FUNCTION_2_1(v151);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v35);
  v36 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v37 = OUTLINED_FUNCTION_0_22(v36, &a11);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_47_1(v40);
  v41 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v42 = OUTLINED_FUNCTION_0_22(v41, &a10);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v45);
  v46 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v47 = OUTLINED_FUNCTION_0_22(v46, &a9);
  v153 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v53 = OUTLINED_FUNCTION_0_22(v52, &v161);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v56 = OUTLINED_FUNCTION_82_1();
  v57 = OUTLINED_FUNCTION_0_22(v56, &v160);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_24_2(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_4(v65, v146);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v67 = OUTLINED_FUNCTION_47(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_11_3();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_51();
  v72 = OUTLINED_FUNCTION_7(v71);
  v154[0] = type metadata accessor for StorableValue(v72);
  v73 = OUTLINED_FUNCTION_2_1(v154[0]);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_8_5(v76, v147);
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_6_3(v78, v79, v80, v81, v82, v83, v84, v85, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMd, &_ss18_DictionaryStorageCySay12BiomeStreams13StorableValueOGAC12ChangeRecordVGMR);
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_81_1(&v158);
  OUTLINED_FUNCTION_60_1();
  if (v86)
  {
    OUTLINED_FUNCTION_17_3(&v149);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_32_2(*MEMORY[0x1E6969360]);
    OUTLINED_FUNCTION_54_1(*MEMORY[0x1E6969358]);
    OUTLINED_FUNCTION_110_0(v87);
    OUTLINED_FUNCTION_64_1(*MEMORY[0x1E6969370]);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_41_1(*v88);
    OUTLINED_FUNCTION_23_2();
    if (v89)
    {
LABEL_3:
      OUTLINED_FUNCTION_15_2();
      goto LABEL_9;
    }

LABEL_4:
    OUTLINED_FUNCTION_99_1();
    while (1)
    {
      if (__OFADD__(v94, 1))
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
        JUMPOUT(0x184926F04);
      }

      if (v94 + 1 >= v95)
      {
        break;
      }

      OUTLINED_FUNCTION_93_1(v91, v92, v93);
      if (v96)
      {
        OUTLINED_FUNCTION_16_4();
LABEL_9:
        OUTLINED_FUNCTION_26_3(v90);
        OUTLINED_FUNCTION_112_0((v98 + 16 * v97));
        OUTLINED_FUNCTION_97_1();
        if ((v99 & 1) == 0)
        {
        }

        OUTLINED_FUNCTION_86_1(&a13);
        OUTLINED_FUNCTION_103_1();
        OUTLINED_FUNCTION_38_0();
        if (v24)
        {
          OUTLINED_FUNCTION_5_6(&v150);
          while (1)
          {
            OUTLINED_FUNCTION_76_0();
            v100 = OUTLINED_FUNCTION_74_1();
            outlined init with copy of StorableValue(v100, v101);
            switch(OUTLINED_FUNCTION_104_1())
            {
              case 1u:
                OUTLINED_FUNCTION_72_1();
                if (v107)
                {
                  OUTLINED_FUNCTION_52_1(v106);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_21:
                  v102 = Optional<A>.hashValue.getter();
                }

                else
                {
                  v128 = OUTLINED_FUNCTION_7_5(*&v106);
                  if (!(v129 ^ v130 | v119))
                  {
                    goto LABEL_60;
                  }

                  if (v128 <= -9.22337204e18)
                  {
                    goto LABEL_61;
                  }

                  OUTLINED_FUNCTION_45_1();
                  if (!v129)
                  {
                    goto LABEL_62;
                  }

                  Int.hashValue.getter();
                  v102 = Int.hashValue.getter();
                }

                v22 = v157;
LABEL_35:
                MEMORY[0x1865F6890](v102);
LABEL_36:
                outlined destroy of StorableValue(v155);
LABEL_37:
                OUTLINED_FUNCTION_95_1();
                if (v119)
                {
                  goto LABEL_39;
                }

                break;
              case 2u:
                v103 = OUTLINED_FUNCTION_92_1();
                v22 = &_s10Foundation4DateVSgMd;
                _s10Foundation4UUIDVSgWObTm_0(v103, v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                OUTLINED_FUNCTION_106_1();
                v105 = type metadata accessor for Date();
                OUTLINED_FUNCTION_28_3(v105);
                if (v119)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_83_1();
                }

                else
                {
                  v113 = OUTLINED_FUNCTION_40_1();
                  v114(v113);
                  OUTLINED_FUNCTION_35_2(v157);
                  OUTLINED_FUNCTION_59_1();
                  v115();
                  OUTLINED_FUNCTION_36_0(v156);
                  OUTLINED_FUNCTION_58_0();
                  v116();
                  v117 = OUTLINED_FUNCTION_44_1();
                  v118(v117);
                  OUTLINED_FUNCTION_51_0();
                  OUTLINED_FUNCTION_29_3();
                  if (v119)
                  {
                    goto LABEL_63;
                  }

                  OUTLINED_FUNCTION_16_0(v154);
                  v120 = OUTLINED_FUNCTION_18_3();
                  v121(v120);
                  OUTLINED_FUNCTION_9_5(&v159);
                  OUTLINED_FUNCTION_108_0();
                  OUTLINED_FUNCTION_96_1();
                  v122 = OUTLINED_FUNCTION_34_1(&v153);
                  v123(v122);
                  OUTLINED_FUNCTION_61_0();
                  v125 = *(v124 + 8);
                  v126 = OUTLINED_FUNCTION_74_1();
                  v127(v126);
                  OUTLINED_FUNCTION_107_1();
                  OUTLINED_FUNCTION_105_1();
                  OUTLINED_FUNCTION_102_1();
                  MEMORY[0x1865F6890](v23);
                  OUTLINED_FUNCTION_94_1(&a12);
                }

                OUTLINED_FUNCTION_79_1();
                outlined destroy of StorableValue(v155);
                v23 = v154[1];
                goto LABEL_37;
              case 3u:
              case 4u:
                OUTLINED_FUNCTION_30_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v22 = v156;
                Optional<A>.hashValue.getter();
                OUTLINED_FUNCTION_73_0();

                v102 = OUTLINED_FUNCTION_57_1();
                goto LABEL_35;
              case 5u:
                OUTLINED_FUNCTION_90_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                lazy protocol witness table accessor for type Data and conformance Data();
                v108 = OUTLINED_FUNCTION_43_0();
                v22 = v157;
                MEMORY[0x1865F6890](v108);
                OUTLINED_FUNCTION_78_1();
                goto LABEL_36;
              case 6u:
                OUTLINED_FUNCTION_55_0();
                OUTLINED_FUNCTION_39_1();
                _s10Foundation4UUIDVSgWObTm_0(v109, v110, v111, &_s10Foundation4UUIDVSgMR);
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v112 = OUTLINED_FUNCTION_80_1();
                v22 = v157;
                MEMORY[0x1865F6890](v112);
                OUTLINED_FUNCTION_19_4();
                goto LABEL_36;
              case 7u:
                v102 = OUTLINED_FUNCTION_88_0();
                goto LABEL_35;
              default:
                OUTLINED_FUNCTION_31_3();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                goto LABEL_21;
            }
          }
        }

LABEL_39:
        v131 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_4(v131, &v152);
        OUTLINED_FUNCTION_37_0(v132);
        if (v119)
        {
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_65_1();
          do
          {
            OUTLINED_FUNCTION_89_1();
            if (v119 && (v135 & 1) != 0)
            {
              goto LABEL_59;
            }

            if (v134 == v136)
            {
              v134 = 0;
            }

            OUTLINED_FUNCTION_56_1(v134);
          }

          while (v119);
          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          OUTLINED_FUNCTION_22_3();
          OUTLINED_FUNCTION_66_1();
        }

        OUTLINED_FUNCTION_1_20(v133);
        OUTLINED_FUNCTION_91_1(v138 + 16 * v137);
        OUTLINED_FUNCTION_27_1();
        if (v139)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_97_1();
    if (v140)
    {
      OUTLINED_FUNCTION_33_2();
      if (v129 != v130)
      {
        OUTLINED_FUNCTION_53_1(v141, v142);
      }

      else
      {
        v143 = OUTLINED_FUNCTION_48_0();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v143, v144, v145);
      }

      v22[2] = 0;
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_85_1();
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  v3 = *v0;
  v4 = v0[1];
  *(v1 - 152) = v3;
  *(v1 - 104) = v3;
  *(v1 - 96) = v4;
}

void OUTLINED_FUNCTION_8_6()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v3 = *(v1 + 36);

  return scanner_errposition(v3, v0);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = (*(v6 + 56) + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v14;
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 56) + 16 * result;
  *v9 = v10;
  *(v9 + 8) = v11 & 1;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v14;
  }

  return result;
}

uint64_t outlined consume of ChangeRecord??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined init with copy of Aggregation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18491AD38()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_81();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void COUNT_STAR.processEvent(changeRecord:expressionEvaluator:)()
{
  v2 = OUTLINED_FUNCTION_34_0();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  COUNT_STAR.getCurrentAggregationEvent()();
  if (!v1)
  {
    v5 = *(type metadata accessor for COUNT_STAR(0) + 24);
    v6 = *(v0 + v5);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + v5) = v8;
      COUNT_STAR.getCurrentAggregationEvent()();
      OUTLINED_FUNCTION_4_6();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }
}

void COUNT_STAR.getCurrentAggregationEvent()()
{
  OUTLINED_FUNCTION_212();
  v3 = OUTLINED_FUNCTION_107_0();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12_3();
  v7 = type metadata accessor for StorableValue(0);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_139();
  v12 = type metadata accessor for COUNT_STAR(v11);
  v16 = *(v0 + *(v12 + 24));
  v13 = *(v12 + 20);
  v14 = OUTLINED_FUNCTION_99_0();
  v2(v14);
  OUTLINED_FUNCTION_122();
  if (!v1)
  {
    v15 = OUTLINED_FUNCTION_27_0();
    (v2)(v15, v0 + v13, v3);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_135();
    _s12BiomeStreams13StorableValueOWObTm_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

double OUTLINED_FUNCTION_102_0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2 + *(v2 + a1);
  *(v2 + a1) = result;
  return result;
}

void OUTLINED_FUNCTION_102_1()
{

  Hasher._combine(_:)(1u);
}

void OUTLINED_FUNCTION_115_0()
{
  *(v0 + 16) = v1;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  v7 = *(v5 + 32);
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 - 376);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  v1 = **(v0 - 416);
  result = *(v0 - 400);
  v3 = *(v0 - 404);
  v4 = *(v0 - 360);
  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for BMStreamBase(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_152()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_152_0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 208) & 1;

  return outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(a1, a2, v4);
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_98_2();
  v9 = OUTLINED_FUNCTION_77();
  specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  OUTLINED_FUNCTION_15_3();
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
  {
    v18 = OUTLINED_FUNCTION_77();
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    if ((v17 & 1) == (v21 & 1))
    {
      v16 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v17)
  {
    v22 = *(v30 + 56);
    v23 = type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_12(v23);
    v25 = *(v24 + 72) * v16;
    _s12BiomeStreams13StorableValueOWObTm_1(v22 + v25, a3);
    _s12BiomeStreams13StorableValueOWObTm_1(a1, *(v30 + 56) + v25);
    result = __swift_storeEnumTagSinglePayload(a3, 0, 1, v23);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_94_2();
    specialized _NativeDictionary._insert(at:key:value:)(v27, v28, a2, a1, v30);
    v29 = type metadata accessor for StorableValue(0);
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v29);
  }

  *v3 = v30;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5);
  v9 = (v8 + 16 * v7);
  *v9 = v10;
  v9[1] = v11;
  v13 = *(v12 + 56);
  v14 = *(*(type metadata accessor for StorableValue(0) - 8) + 72);
  OUTLINED_FUNCTION_2_8();
  result = outlined init with take of MaterializedViewPhysicalPlan(a4, v15);
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

BOOL partial apply for closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(uint64_t a1)
{
  Description = type metadata accessor for SelectCore()[-1].Description;
  v4 = (*(Description + 80) + 32) & ~*(Description + 80);
  v5 = (Description[8] + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in scan(stream:metadata:maxBatchSize:selectCore:expressionEvaluator:)(a1, v8, v9, v1 + v4, v7, v10, v11);
}

id get_CDEventStreamsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDEventStreamsClass_softClass;
  v7 = get_CDEventStreamsClass_softClass;
  if (!get_CDEventStreamsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_CDEventStreamsClass_block_invoke;
    v3[3] = &unk_1E6E52EB0;
    v3[4] = &v4;
    __get_CDEventStreamsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18491BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id upperCaseInitialCharacter(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v2];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = [v1 characterAtIndex:i];
      if ((v5 - 97) < 0x1Au && i == 0)
      {
        v7 = v5 - 32;
      }

      else
      {
        v7 = v5;
      }

      [v3 appendFormat:@"%C", v7];
    }
  }

  return v3;
}

uint64_t specialized KeyedQueryPlannerMetadataCache.setValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for KeyedAggregationMetadataCache(0);
  v7 = v6;
  v8 = *(v2 + v6[12]);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = (v2 + v6[15]);
  v10 = v9[1];
  if (v10)
  {
    v36 = v3;
    v11 = v9[3];
    v33 = *v9;
    v34 = v9[2];
    v12 = *(v2 + v6[14]);
    v13 = *(v4 + v6[7]);

    v35 = v13;
    v14 = specialized Dictionary.subscript.getter(a2, v13);
    v15 = v14;
    if (v12 != 1)
    {
      if (v14)
      {

        goto LABEL_9;
      }

      v23 = (v4 + v7[8]);
      v24 = specialized OrderedDictionary.subscript.getter(a2, *v23, v23[1]);
      if (v24 == 1)
      {
        v31 = v23;
        v32 = *(v4 + v7[11]);

        v25._rawValue = v34(a2);

        if (v36 || (v26._object = v10, v26._countAndFlagsBits = v33, v27 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v26, v25), , v28))
        {
        }

        if (v27)
        {
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5(v8);
          specialized _arrayForceCast<A, B>(_:)();

          v29 = *(v4 + v7[13]);
          static KeyedAggregationMetadataCache.metadataFromRow(_:groupBySchema:payloadSchema:)();
          v15 = v30;
        }

        else
        {
          v15 = 0;
        }

        specialized OrderedDictionary.updateValue(_:forKey:)(v15, a2);
        if (*(v4 + v7[9]) < *(v31[1] + 16))
        {
          specialized OrderedDictionary.removeFirst()();
        }
      }

      else
      {
        v15 = v24;
      }
    }

    if (!v15)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_13;
    }

LABEL_9:

    if (!specialized Dictionary.subscript.getter(a2, v35) || (v17 = v16, , (v17 & 1) != 0))
    {
      v8 = 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:
  v18 = v4 + v7[8];

  specialized OrderedDictionary.updateValue(_:forKey:)(v19, a2);
  if (*(v4 + v7[9]) < *(*(v18 + 8) + 16))
  {
    specialized OrderedDictionary.removeFirst()();
  }

  v20 = v7[7];

  specialized Dictionary._Variant.updateValue(_:forKey:)(v21, v8, a2);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1865F6650);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t outlined consume of [[String : StorableValue]]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay14BiomeSQLParser19AggregationFunctionVGSaySDySS0F7Streams13StorableValueOGGG_AL0H0_psAE_pTg504_s14f11SQLParser19hi18VSDySS0A7Streams13kl11OGAD0C0_ps5C389_pIgngrzo_AC_AGtAdH_psAI_pIegnrzr_TR04_s12a223Streams5group33_69E06497FCCD36C7847396967BD3AC6FLL7changes2by8metadata20aggregationFunctions13resultColumns6having19expressionEvaluatorSayAA12ChangeRecordVGAM_Say0A9SQLParser13SQLExpressionVGAA20QueryPlannerMetadataCSayAN19cd92VGSayAN12ResultColumnVGAPSgAA0vR0CtKFyAA14GroupedChangesACLLVz_ALtKXEfU0_AA0Z0_pAU_SDySSAA13fG10OGtKXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AggregationFunction();
  Description = v6[-1].Description;
  v8 = *(Description + 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v48 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
  v13 = *(*(v59 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v59);
  v62 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v49 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v48 - v18;
  v19 = *(a1 + 16);
  v60 = *(a2 + 16);
  v61 = a1;
  if (v60 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v60;
  }

  v66 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
  v22 = v66;
  v57 = v19;
  v58 = Description;
  v54 = v20;
  if (v20)
  {
    v23 = 0;
    v52 = a2 + 32;
    v53 = Description + 16;
    v50 = v11;
    v51 = (Description + 32);
    while (v19 != v23)
    {
      result = (*(Description + 2))(v11, v61 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v23, v6);
      if (v60 == v23)
      {
        goto LABEL_27;
      }

      v24 = v3;
      v25 = v22;
      v26 = *(v52 + 8 * v23);
      v27 = *(v59 + 48);
      v28 = v62;
      (*v51)(v62, v11, v6);
      *(v28 + v27) = v26;

      v22 = v28;
      AggregationFunction.newAggregation()();
      if (v24)
      {

        outlined destroy of UUID?(v62, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
        return v22;
      }

      v29 = a2;
      v30 = v6;
      v32 = v64;
      v31 = v65;
      __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
      (*(v31 + 48))(v26, v32, v31);
      outlined destroy of UUID?(v62, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
      v22 = v25;
      v66 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
        v22 = v66;
      }

      ++v23;
      *(v22 + 16) = v34 + 1;
      result = outlined init with take of Aggregation(&v63, v22 + 40 * v34 + 32);
      v6 = v30;
      v19 = v57;
      Description = v58;
      a2 = v29;
      v11 = v50;
      v3 = 0;
      if (v54 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_12:
    v62 = Description + 16;
    v53 = (a2 + 32);
    v35 = (Description + 32);
    for (i = v54; v19 != i; ++i)
    {
      if (i >= v19)
      {
        goto LABEL_28;
      }

      result = (*(Description + 2))(v56, v61 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * i, v6);
      if (__OFADD__(i, 1))
      {
        goto LABEL_29;
      }

      if (v60 == i)
      {
        (*(Description + 1))(v56, v6);
        return v22;
      }

      if (i >= v60)
      {
        goto LABEL_30;
      }

      v37 = v22;
      v38 = *&v53[8 * i];
      v39 = v59;
      v40 = *(v59 + 48);
      v41 = v49;
      (*v35)(v49, v56, v6);
      *(v41 + v40) = v38;
      v42 = v55;
      outlined init with take of UUID?(v41, v55, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
      v43 = *(v42 + *(v39 + 48));

      v22 = v42;
      AggregationFunction.newAggregation()();
      if (v3)
      {
        outlined destroy of UUID?(v55, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);

        return v22;
      }

      v44 = v64;
      v45 = v65;
      __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
      (*(v45 + 48))(v43, v44, v45);
      outlined destroy of UUID?(v55, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMd, &_s14BiomeSQLParser19AggregationFunctionV_SDySS0A7Streams13StorableValueOGtMR);
      v22 = v37;
      v66 = v37;
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      if (v47 >= v46 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1);
        v22 = v66;
      }

      *(v22 + 16) = v47 + 1;
      result = outlined init with take of Aggregation(&v63, v22 + 40 * v47 + 32);
      v19 = v57;
      Description = v58;
    }

    return v22;
  }

  return result;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams11Aggregation_pMd, &_s12BiomeStreams11Aggregation_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMd, &_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS12BiomeStreams13StorableValueOGMd, &_sSDySS12BiomeStreams13StorableValueOGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGGMd, &_ss23_ContiguousArrayStorageCySaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tGMd, &_sSaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay12BiomeStreams13StorableValueOGGMd, &_ss23_ContiguousArrayStorageCySay12BiomeStreams13StorableValueOGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO04DataG0_pXpGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO04DataG0_pXpGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t passesHaving #1 (payload:) in closure #2 in group(changes:by:metadata:aggregationFunctions:resultColumns:having:expressionEvaluator:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v118 = a4;
  v112 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v101 - v9;
  v10 = type metadata accessor for StorableValue(0);
  v108 = *(v10 - 8);
  v109 = v10;
  v11 = *(v108 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v101 - v14;
  v119 = type metadata accessor for ResultColumn();
  Description = v119[-1].Description;
  v16 = *(Description + 8);
  v17 = MEMORY[0x1EEE9AC00](v119);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v117 = &v101 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v101 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v101 - v25;
  v27 = type metadata accessor for SQLExpression();
  v28 = v27[-1].Description;
  v29 = v28[8];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v116 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v101 - v32;
  v34 = a2;
  v36 = v35;
  outlined init with copy of Date?(v34, v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  if (__swift_getEnumTagSinglePayload(v26, 1, v36) == 1)
  {
    outlined destroy of UUID?(v26, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    LOBYTE(v37) = 1;
    return v37 & 1;
  }

  v115 = v28;
  v38 = v28[4];
  v102 = v33;
  v114 = v36;
  v38(v33, v26, v36);
  v39 = v112;
  v37 = *(v112 + 2);
  v111 = (Description + 32);
  v122 = (Description + 8);
  v123 = Description + 16;
  v121 = a1;

  v40 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  v41 = v119;
  v42 = v39;
  while (v37 != v40)
  {
    v43 = (Description[80] + 32) & ~Description[80];
    v44 = v42;
    v45 = *(Description + 9);
    (*(Description + 2))(v22, v42 + v43 + v45 * v40, v41);
    v46 = v41;
    ResultColumn.alias.getter();
    if (v47)
    {

      v112 = *v111;
      (v112)(v113, v22, v41);
      v48 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v48;
      v124 = v48;
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v46;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1);
        v41 = v119;
        v50 = v124;
      }

      v52 = v50[2];
      v51 = v50[3];
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v120 = v52 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1);
        v41 = v119;
        v53 = v120;
        v50 = v124;
      }

      ++v40;
      v50[2] = v53;
      v120 = v50;
      (v112)(v50 + v43 + v52 * v45, v113, v41);
      v42 = v44;
    }

    else
    {
      (*v122)(v22, v41);
      ++v40;
      v42 = v44;
    }
  }

  v54 = v120;
  v113 = *(v120 + 16);
  if (!v113)
  {
    v91 = v115;
LABEL_35:

    v97 = v102;
    v98 = v104;
    v99 = SQLExpressionEvaluator.evaluatesToTrue(expression:payload:)(v102);
    if (!v98)
    {
      LOBYTE(v37) = v99;
    }

    (v91[1])(v97, v114);

    return v37 & 1;
  }

  v37 = 0;
  v112 = (v120 + ((Description[80] + 32) & ~Description[80]));
  v111 = (v115 + 1);
  while (v37 < *(v54 + 16))
  {
    v55 = v117;
    (*(Description + 2))(v117, v112 + *(Description + 9) * v37, v41);
    v56 = ResultColumn.name.getter();
    v58 = v57;
    v59 = v116;
    ResultColumn.expression.getter(v116);
    (*(Description + 1))(v55, v41);
    v60 = SQLExpression.sql.getter();
    v62 = v61;
    (*v111)(v59, v114);
    v63 = *(v118 + 16);
    if (!*(v63 + 16))
    {

LABEL_25:
      v80 = v121;
      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v58);
      v83 = v82;

      if (v83)
      {
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v80;
        v85 = v80[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v84, v85);
        v86 = v124;
        v87 = *(v124[6] + 16 * v81 + 8);

        v88 = v110;
        outlined init with take of StorableValue(v86[7] + *(v108 + 72) * v81, v110);
        v121 = v86;
        v89 = v109;
        _NativeDictionary._delete(at:)();
        v90 = 0;
      }

      else
      {
        v90 = 1;
        v89 = v109;
        v88 = v110;
      }

      v91 = v115;
      v54 = v120;
      __swift_storeEnumTagSinglePayload(v88, v90, 1, v89);
      outlined destroy of UUID?(v88, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      v41 = v119;
      goto LABEL_32;
    }

    v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_25;
    }

    v67 = *(v63 + 56);
    v106 = *(v108 + 72);
    v68 = v105;
    outlined init with copy of StorableValue(v67 + v106 * v64, v105);
    outlined init with take of StorableValue(v68, v107);
    v69 = v121;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v124 = v69;
    v71 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v58);
    v73 = v69[2];
    v74 = (v72 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_40;
    }

    v76 = v71;
    v77 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v75))
    {
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v58);
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_42;
      }

      v76 = v78;
    }

    v41 = v119;
    if (v77)
    {

      v121 = v124;
      outlined assign with take of StorableValue(v107, v124[7] + v76 * v106);
    }

    else
    {
      v92 = v124;
      v124[(v76 >> 6) + 8] |= 1 << v76;
      v93 = (v92[6] + 16 * v76);
      *v93 = v56;
      v93[1] = v58;
      outlined init with take of StorableValue(v107, v92[7] + v76 * v106);
      v94 = v92[2];
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
        goto LABEL_41;
      }

      v121 = v92;
      v92[2] = v96;
    }

    v91 = v115;
    v54 = v120;
LABEL_32:
    if (v113 == ++v37)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> COUNT_STAR.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_0();
  if (!v8)
  {
    v16 = type metadata accessor for COUNT_STAR(0);
    v17 = 0;
    goto LABEL_8;
  }

  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_71_0();
    swift_once();
    if (!*(v2 + 16))
    {
      goto LABEL_12;
    }
  }

  v9 = OUTLINED_FUNCTION_110();
  specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_85_0();
  v12 = type metadata accessor for StorableValue(0);
  v13 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_92(v13, v14, v12);
  if (!v15)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v3, v19);
      goto LABEL_12;
    }

    if (*(v3 + 8) == 1)
    {
      goto LABEL_12;
    }

    v17 = *v3;
    v16 = type metadata accessor for COUNT_STAR(0);
LABEL_8:
    *(v1 + *(v16 + 24)) = v17;
    return;
  }

  outlined destroy of UUID?(v3, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
LABEL_12:
  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  v20 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_19_2(v20, v21);
  swift_willThrow();
}

uint64_t static BMPoirotSchematizerShim.searchValue(in:withFieldNumber:typeRawValue:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v26[1] = a5;
  v27 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v26 - v14;
  v16 = type metadata accessor for TypeSchema();
  v17 = OUTLINED_FUNCTION_2_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  static BMPoirotSchematizerShim.bmTypeToPoirotType(type:)(a4, v21 - v20);
  a6(a1, a2, a3, v22);
  static BMPoirotSchematizerShim.poirotValueToObjcValue(value:)(v15, v27);
  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  v23 = OUTLINED_FUNCTION_2_11();
  return v24(v23);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2)
{
  v377 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v8);
  v357 = type metadata accessor for TimeZone();
  v9 = OUTLINED_FUNCTION_2_1(v357);
  v341 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v327 - v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v17);
  v356 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v18 = OUTLINED_FUNCTION_2_1(v356);
  v340 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_0();
  v370 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v25);
  v355 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v26 = OUTLINED_FUNCTION_2_1(v355);
  v339 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_51();
  v371 = v32;
  v354 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v33 = OUTLINED_FUNCTION_2_1(v354);
  v338 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v39);
  v353 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v40 = OUTLINED_FUNCTION_2_1(v353);
  v337 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v46);
  v352 = type metadata accessor for Date.ISO8601FormatStyle();
  v47 = OUTLINED_FUNCTION_2_1(v352);
  v336 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_51();
  v343 = v53;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_28(v363);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v362 = &v327 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_51();
  v66 = OUTLINED_FUNCTION_7(v65);
  v67 = type metadata accessor for StorableValue(v66);
  v375 = OUTLINED_FUNCTION_2_1(v67);
  v376 = v68;
  v70 = *(v69 + 64);
  v71 = MEMORY[0x1EEE9AC00](v375);
  v73 = &v327 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = &v327 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75);
  v80 = &v327 - v79;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_30();
  v372 = v81;
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_30();
  v373 = v83;
  v85 = MEMORY[0x1EEE9AC00](v84);
  v87 = (&v327 - v86);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_51();
  v374 = v89;
  v342 = v2;
  v90 = *v2;
  v91 = *(*v2 + 16);
  v92 = *(*v2 + 24);
  if (v92 > v91 && (v88 & 1) != 0)
  {
    goto LABEL_3;
  }

  v348 = *v2;
  v331 = v16;
  if (v88)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMd, _ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMR);
    OUTLINED_FUNCTION_59_0(&v379);
    v98 = static _SetStorage.resize(original:capacity:move:)();
    v99 = v91[2];
    v364 = v98;
    if (v99)
    {
      v100 = v91[7];
      v328 = v91 + 7;
      v101 = 1 << *(v91 + 32);
      OUTLINED_FUNCTION_34_2();
      v346 = *MEMORY[0x1E6969360];
      OUTLINED_FUNCTION_10_6(&v366);
      v345 = v102;
      LODWORD(v335) = *MEMORY[0x1E6969358];
      OUTLINED_FUNCTION_10_6(&v367);
      v334 = v103;
      v333 = *MEMORY[0x1E6969370];
      OUTLINED_FUNCTION_10_6(&v368);
      v332 = v104;
      OUTLINED_FUNCTION_7_7(*MEMORY[0x1E6969380]);
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_53();
      v329 = v105;
      v330 = v110;
      if (v109)
      {
LABEL_9:
        v111 = v91;
        v112 = __clz(__rbit64(v109));
        v347 = (v109 - 1) & v109;
        goto LABEL_15;
      }

LABEL_10:
      v113 = v106;
      while (1)
      {
        v114 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_165;
        }

        if (v114 >= v105)
        {
          break;
        }

        ++v113;
        if (v328[v114])
        {
          v111 = v91;
          OUTLINED_FUNCTION_27_2();
          v347 = v116 & v115;
LABEL_15:
          v351 = v106;
          v117 = *(v107[6] + 8 * (v112 | (v106 << 6)));
          v118 = v108[5];
          Hasher.init(_seed:)();
          MEMORY[0x1865F6890](*(v117 + 16));
          v360 = v117;
          v119 = *(v117 + 16);
          v91 = v111;
          if (v119)
          {
            v120 = *(v376 + 80);
            OUTLINED_FUNCTION_19_0();
            v122 = v360 + v121;
            v370 = *(v123 + 72);
            while (1)
            {
              v124 = v374;
              outlined init with copy of StorableValue(v122, v374);
              outlined init with copy of StorableValue(v124, v87);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  if (v87[1])
                  {
                    v378 = *v87;
                    LOBYTE(v379) = 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_26:
                    v128 = Optional<A>.hashValue.getter();
                  }

                  else
                  {
                    v158 = OUTLINED_FUNCTION_7_5(*v87);
                    if (!(v160 ^ v96 | v159))
                    {
                      goto LABEL_171;
                    }

                    if (v158 <= -9.22337204e18)
                    {
                      goto LABEL_172;
                    }

                    OUTLINED_FUNCTION_45_1();
                    if (!v160)
                    {
                      goto LABEL_173;
                    }

                    Int.hashValue.getter();
                    v128 = Int.hashValue.getter();
                  }

LABEL_38:
                  MEMORY[0x1865F6890](v128);
LABEL_39:
                  outlined destroy of StorableValue(v374);
LABEL_40:
                  v122 += v370;
                  if (!--v119)
                  {
                    goto LABEL_41;
                  }

                  break;
                case 2u:
                  v129 = i;
                  v91 = &_s10Foundation4DateVSgMd;
                  _s10Foundation4UUIDVSgWObTm_1(v87, i, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v130 = v129;
                  v131 = v359;
                  outlined init with copy of Date?(v130, v359);
                  v365 = type metadata accessor for Date();
                  if (__swift_getEnumTagSinglePayload(v131, 1, v365) == 1)
                  {
                    _s10Foundation4UUIDVSgWOhTm_1(v131, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    Hasher._combine(_:)(0);
                    OUTLINED_FUNCTION_38_1();
                    OUTLINED_FUNCTION_53();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0(&v373);
                    OUTLINED_FUNCTION_21_3();
                    v143();
                    OUTLINED_FUNCTION_16_0(&v362);
                    OUTLINED_FUNCTION_20_5();
                    v144();
                    OUTLINED_FUNCTION_16_0(&v360);
                    OUTLINED_FUNCTION_18_4();
                    v145();
                    OUTLINED_FUNCTION_16_0(&v358);
                    OUTLINED_FUNCTION_19_5();
                    v146();
                    v147 = v368;
                    TimeZone.init(secondsFromGMT:)();
                    v148 = v357;
                    if (__swift_getEnumTagSinglePayload(v147, 1, v357) == 1)
                    {
                      goto LABEL_180;
                    }

                    OUTLINED_FUNCTION_16_0(&v357);
                    v149(v344, v147, v148);
                    Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
                    v150 = v359;
                    v151 = Date.ISO8601Format(_:)();
                    v153 = v152;
                    OUTLINED_FUNCTION_16_0(&v356);
                    v154 = OUTLINED_FUNCTION_26_4();
                    v155(v154);
                    OUTLINED_FUNCTION_28(v365);
                    (*(v156 + 8))(v150);
                    v157 = MEMORY[0x1865F62C0](v151, v153);

                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865F6890](v157);
                    v91 = v147;
                    OUTLINED_FUNCTION_53();
                    v132 = &_s10Foundation4DateVSgMd;
                    v133 = &_s10Foundation4DateVSgMR;
                  }

                  _s10Foundation4UUIDVSgWOhTm_1(i, v132, v133);
                  outlined destroy of StorableValue(v374);
                  goto LABEL_40;
                case 3u:
                  v134 = v87[1];
                  v378 = *v87;
                  v379 = v134;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  Optional<A>.hashValue.getter();

                  OUTLINED_FUNCTION_53();
                  goto LABEL_38;
                case 4u:
                  v126 = v87[1];
                  v378 = *v87;
                  v379 = v126;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v127 = Optional<A>.hashValue.getter();
                  OUTLINED_FUNCTION_53();

                  v128 = v127;
                  goto LABEL_38;
                case 5u:
                  v135 = *(v87 + 1);
                  v378 = *v87;
                  v379 = *&v135;
                  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                  lazy protocol witness table accessor for type Data and conformance Data();
                  OUTLINED_FUNCTION_38_1();
                  v136 = Optional<A>.hashValue.getter();
                  MEMORY[0x1865F6890](v136);
                  OUTLINED_FUNCTION_53();
                  outlined consume of Data?(v137, v135);
                  goto LABEL_39;
                case 6u:
                  OUTLINED_FUNCTION_22_4();
                  _s10Foundation4UUIDVSgWObTm_1(v138, v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  OUTLINED_FUNCTION_3_14();
                  lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(&lazy protocol witness table cache variable for type UUID and conformance UUID, v140);
                  v141 = OUTLINED_FUNCTION_14_3();
                  MEMORY[0x1865F6890](v141);
                  OUTLINED_FUNCTION_38_1();
                  _s10Foundation4UUIDVSgWOhTm_1(v142, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  goto LABEL_39;
                case 7u:
                  v128 = 0;
                  goto LABEL_38;
                default:
                  v125 = *(v87 + 8);
                  v378 = *v87;
                  LOBYTE(v379) = v125;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                  goto LABEL_26;
              }
            }
          }

LABEL_41:
          v161 = Hasher._finalize()();
          OUTLINED_FUNCTION_13_4(v161);
          OUTLINED_FUNCTION_37_1(v162);
          if (v159)
          {
            OUTLINED_FUNCTION_31_4();
            v107 = *(v169 - 256);
            do
            {
              if (++v166 == v168 && (v167 & 1) != 0)
              {
                goto LABEL_166;
              }

              v170 = v166 == v168;
              if (v166 == v168)
              {
                v166 = 0;
              }

              v167 |= v170;
              v171 = *(v164 + 8 * v166);
            }

            while (v171 == -1);
            v163 = __clz(__rbit64(~v171)) + (v166 << 6);
          }

          else
          {
            OUTLINED_FUNCTION_32_3();
            v107 = *(v165 - 256);
          }

          *(v164 + ((v163 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v163;
          *(v108[6] + 8 * v163) = v360;
          ++v108[2];
          v106 = v351;
          v105 = v329;
          v109 = v347;
          if (v347)
          {
            goto LABEL_9;
          }

          goto LABEL_10;
        }
      }

      v194 = 1 << *(v107 + 32);
      if (v194 >= 64)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v194 + 63) >> 6, v328);
        v107 = v348;
      }

      else
      {
        *v328 = -1 << v194;
      }

      v265 = v342;
      v107[2] = 0;

      goto LABEL_123;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMd, _ss11_SetStorageCySay12BiomeStreams13StorableValueOGGMR);
    if (v92 > v91)
    {
      OUTLINED_FUNCTION_59_0(&v379);
      v172 = static _SetStorage.copy(original:)();
      v173 = v91;
      v174 = v172;
      if (v91[2])
      {
        v175 = v172;
        v176 = (v172 + 56);
        v177 = v91 + 7;
        v178 = ((1 << *(v175 + 32)) + 63) >> 6;
        if (v175 != v91 || v176 >= &v91[v178 + 7])
        {
          memmove(v176, v91 + 7, 8 * v178);
          v173 = v348;
          v175 = v174;
        }

        v180 = 0;
        *(v175 + 16) = v173[2];
        v181 = 1 << *(v173 + 32);
        v182 = v173[7];
        v183 = -1;
        if (v181 < 64)
        {
          v183 = ~(-1 << v181);
        }

        v184 = v183 & v182;
        v185 = (v181 + 63) >> 6;
        if ((v183 & v182) == 0)
        {
          goto LABEL_64;
        }

        while (1)
        {
          v186 = __clz(__rbit64(v184));
          v184 &= v184 - 1;
          v187 = v186 | (v180 << 6);
          v188 = v174;
          v189 = v348;
          while (1)
          {
            *(*(v188 + 48) + 8 * v187) = *(v189[6] + 8 * v187);

            if (v184)
            {
              break;
            }

LABEL_64:
            v190 = v180;
            do
            {
              v180 = v190 + 1;
              if (__OFADD__(v190, 1))
              {
                goto LABEL_167;
              }

              if (v180 >= v185)
              {
                goto LABEL_119;
              }

              ++v190;
            }

            while (!v177[v180]);
            OUTLINED_FUNCTION_27_2();
            v184 = v192 & v191;
            v187 = v193 | (v180 << 6);
          }
        }
      }

LABEL_119:

      v90 = v174;
      *v342 = v174;
LABEL_3:
      v93 = v377;
      v94 = a2;
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_59_0(&v379);
    v195 = static _SetStorage.resize(original:capacity:move:)();
    v196 = v91[2];
    v364 = v195;
    if (v196)
    {
      v197 = v91[7];
      v328 = v91 + 7;
      v198 = 1 << *(v91 + 32);
      OUTLINED_FUNCTION_34_2();
      LODWORD(v359) = *MEMORY[0x1E6969360];
      OUTLINED_FUNCTION_10_6(&v366);
      v350 = v199;
      LODWORD(v349) = *MEMORY[0x1E6969358];
      OUTLINED_FUNCTION_10_6(&v367);
      v344 = v200;
      LODWORD(v343) = *MEMORY[0x1E6969370];
      OUTLINED_FUNCTION_10_6(&v368);
      v332 = v201;
      OUTLINED_FUNCTION_7_7(*MEMORY[0x1E6969380]);
      v206 = v360;
      v330 = v205;
      v329 = v207;
      if (!v202)
      {
        goto LABEL_76;
      }

      while (1)
      {
        v208 = __clz(__rbit64(v202));
        for (i = (v202 - 1) & v202; ; i = v212 & v211)
        {
          v368 = v203;
          v213 = *(v91[6] + 8 * (v208 | (v203 << 6)));
          v214 = v204[5];
          Hasher.init(_seed:)();
          MEMORY[0x1865F6890](*(v213 + 16));
          v215 = *(v213 + 16);
          v369 = v213;
          if (v215)
          {
            v216 = v376;
            v217 = *(v376 + 80);
            OUTLINED_FUNCTION_19_0();
            v219 = v213 + v218;

            v220 = *(v216 + 72);
            v221 = v365;
            v374 = v220;
            while (1)
            {
              outlined init with copy of StorableValue(v219, v221);
              outlined init with copy of StorableValue(v221, v73);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  if (v73[8])
                  {
                    v378 = *v73;
                    LOBYTE(v379) = 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_90:
                    v223 = Optional<A>.hashValue.getter();
                  }

                  else
                  {
                    v252 = OUTLINED_FUNCTION_7_5(*v73);
                    if (!(v160 ^ v96 | v159))
                    {
                      goto LABEL_177;
                    }

                    if (v252 <= -9.22337204e18)
                    {
                      goto LABEL_178;
                    }

                    OUTLINED_FUNCTION_45_1();
                    if (!v160)
                    {
                      goto LABEL_179;
                    }

                    Int.hashValue.getter();
                    v223 = Int.hashValue.getter();
                  }

LABEL_103:
                  MEMORY[0x1865F6890](v223);
LABEL_104:
                  outlined destroy of StorableValue(v221);
LABEL_105:
                  v219 += v220;
                  if (!--v215)
                  {
                    goto LABEL_108;
                  }

                  break;
                case 2u:
                  v224 = v351;
                  _s10Foundation4UUIDVSgWObTm_1(v73, v351, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v225 = v224;
                  v221 = v347;
                  outlined init with copy of Date?(v225, v347);
                  v371 = type metadata accessor for Date();
                  if (__swift_getEnumTagSinglePayload(v221, 1, v371) == 1)
                  {
                    _s10Foundation4UUIDVSgWOhTm_1(v221, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0(v381);
                    v236 = v206;
                    OUTLINED_FUNCTION_21_3();
                    v237();
                    OUTLINED_FUNCTION_16_0(&v372);
                    OUTLINED_FUNCTION_20_5();
                    v238();
                    OUTLINED_FUNCTION_16_0(&v360);
                    OUTLINED_FUNCTION_18_4();
                    v239();
                    OUTLINED_FUNCTION_16_0(&v358);
                    OUTLINED_FUNCTION_19_5();
                    v240();
                    v241 = v335;
                    TimeZone.init(secondsFromGMT:)();
                    v242 = v357;
                    if (__swift_getEnumTagSinglePayload(v241, 1, v357) == 1)
                    {
                      goto LABEL_182;
                    }

                    OUTLINED_FUNCTION_16_0(&v357);
                    v243(v334, v241, v242);
                    v206 = v236;
                    Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
                    v244 = v347;
                    v245 = Date.ISO8601Format(_:)();
                    v247 = v246;
                    OUTLINED_FUNCTION_16_0(&v356);
                    v248 = OUTLINED_FUNCTION_26_4();
                    v249(v248);
                    OUTLINED_FUNCTION_28(v371);
                    (*(v250 + 8))(v244);
                    *&v221 = COERCE_DOUBLE(MEMORY[0x1865F62C0](v245, v247));

                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865F6890](v221);
                  }

                  _s10Foundation4UUIDVSgWOhTm_1(v351, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  v251 = OUTLINED_FUNCTION_59_0(&v383);
                  outlined destroy of StorableValue(v251);
                  v220 = v374;
                  goto LABEL_105;
                case 3u:
                case 4u:
                  v221 = *(v73 + 1);
                  v378 = *v73;
                  v379 = *&v221;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v222 = Optional<A>.hashValue.getter();
                  OUTLINED_FUNCTION_24_3();

                  v223 = v222;
                  v206 = v360;
                  goto LABEL_103;
                case 5u:
                  v221 = *v73;
                  v227 = *(v73 + 1);
                  v378 = *v73;
                  v379 = *&v227;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
                  lazy protocol witness table accessor for type Data and conformance Data();
                  v228 = Optional<A>.hashValue.getter();
                  MEMORY[0x1865F6890](v228);
                  v229 = OUTLINED_FUNCTION_24_3();
                  v230 = v227;
                  v206 = v360;
                  outlined consume of Data?(v229, v230);
                  goto LABEL_104;
                case 6u:
                  OUTLINED_FUNCTION_22_4();
                  _s10Foundation4UUIDVSgWObTm_1(v231, v232, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  OUTLINED_FUNCTION_3_14();
                  lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(&lazy protocol witness table cache variable for type UUID and conformance UUID, v233);
                  v234 = OUTLINED_FUNCTION_14_3();
                  MEMORY[0x1865F6890](v234);
                  v235 = OUTLINED_FUNCTION_24_3();
                  v220 = v374;
                  _s10Foundation4UUIDVSgWOhTm_1(v235, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  goto LABEL_104;
                case 7u:
                  v223 = 0;
                  goto LABEL_103;
                default:
                  v226 = v73[8];
                  v378 = *v73;
                  LOBYTE(v379) = v226;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
                  goto LABEL_90;
              }
            }
          }

LABEL_108:
          v253 = Hasher._finalize()();
          OUTLINED_FUNCTION_13_4(v253);
          OUTLINED_FUNCTION_37_1(v254);
          if (v159)
          {
            OUTLINED_FUNCTION_31_4();
            v91 = *(v262 - 256);
            v205 = v330;
            v258 = v369;
            do
            {
              if (++v259 == v261 && (v260 & 1) != 0)
              {
                goto LABEL_169;
              }

              v263 = v259 == v261;
              if (v259 == v261)
              {
                v259 = 0;
              }

              v260 |= v263;
              v264 = *(v256 + 8 * v259);
            }

            while (v264 == -1);
            v255 = __clz(__rbit64(~v264)) + (v259 << 6);
          }

          else
          {
            OUTLINED_FUNCTION_32_3();
            v91 = *(v257 - 256);
            v205 = v330;
            v258 = v369;
          }

          *(v256 + ((v255 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v255;
          *(v204[6] + 8 * v255) = v258;
          ++v204[2];
          v203 = v368;
          v202 = i;
          if (i)
          {
            break;
          }

LABEL_76:
          v209 = v203;
          do
          {
            v210 = v209 + 1;
            if (__OFADD__(v209, 1))
            {
              goto LABEL_168;
            }

            if (v210 >= v205)
            {
              goto LABEL_120;
            }

            ++v209;
          }

          while (!v328[v210]);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

LABEL_120:

  v265 = v342;
LABEL_123:
  v266 = v364;
  *v265 = v364;
  v267 = *(v266 + 40);
  Hasher.init(_seed:)();
  v268 = v377;
  v269 = *(v377 + 16);
  MEMORY[0x1865F6890](v269);
  v270 = *(v268 + 16);
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_30_4();
  v271 = v366;
  if (v270)
  {
    v272 = *(v376 + 80);
    OUTLINED_FUNCTION_19_0();
    v274 = v377 + v273;
    OUTLINED_FUNCTION_10_6(&v366);
    v370 = v275;
    v374 = *(v276 + 72);
    OUTLINED_FUNCTION_10_6(&v367);
    v369 = v277;
    OUTLINED_FUNCTION_10_6(&v368);
    v368 = v278;
    LODWORD(v365) = *MEMORY[0x1E6969360];
    OUTLINED_FUNCTION_10_6(&v369);
    i = v279;
    v350 = v341 + 32;
    LODWORD(v360) = *MEMORY[0x1E6969358];
    LODWORD(v359) = *MEMORY[0x1E6969370];
    v349 = v336 + 8;
    LODWORD(v351) = *MEMORY[0x1E6969380];
    v280 = &_s10Foundation4DateVSgMR;
    while (1)
    {
      v281 = v373;
      outlined init with copy of StorableValue(v274, v373);
      outlined init with copy of StorableValue(v281, v372);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (v372[1])
          {
            v378 = *v372;
            LOBYTE(v379) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_132:
            v283 = Optional<A>.hashValue.getter();
          }

          else
          {
            v313 = OUTLINED_FUNCTION_7_5(*v372);
            if (!(v160 ^ v96 | v159))
            {
              goto LABEL_174;
            }

            if (v313 <= -9.22337204e18)
            {
              goto LABEL_175;
            }

            OUTLINED_FUNCTION_45_1();
            if (!v160)
            {
              goto LABEL_176;
            }

            Int.hashValue.getter();
            v283 = Int.hashValue.getter();
          }

LABEL_145:
          MEMORY[0x1865F6890](v283);
          OUTLINED_FUNCTION_30_4();
LABEL_146:
          outlined destroy of StorableValue(v373);
LABEL_147:
          v274 += v374;
          if (!--v270)
          {
            goto LABEL_148;
          }

          break;
        case 2u:
          v284 = v358;
          v285 = v280;
          _s10Foundation4UUIDVSgWObTm_1(v372, v358, &_s10Foundation4DateVSgMd, v280);
          outlined init with copy of Date?(v284, *&v271);
          v286 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(*&v271, 1, v286) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_1(*&v271, &_s10Foundation4DateVSgMd, v280);
            Hasher._combine(_:)(0);
          }

          else
          {
            v371 = v286;
            v296 = *v370;
            OUTLINED_FUNCTION_21_3();
            v297();
            OUTLINED_FUNCTION_16_0(&v385);
            OUTLINED_FUNCTION_20_5();
            v298();
            OUTLINED_FUNCTION_16_0(&v384);
            OUTLINED_FUNCTION_18_4();
            v299();
            OUTLINED_FUNCTION_16_0(&v382);
            OUTLINED_FUNCTION_19_5();
            v300();
            v301 = v367;
            TimeZone.init(secondsFromGMT:)();
            v302 = v357;
            if (__swift_getEnumTagSinglePayload(v301, 1, v357) == 1)
            {
              goto LABEL_181;
            }

            OUTLINED_FUNCTION_16_0(v381);
            v303(v331, v301, v302);
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v304 = v366;
            v305 = Date.ISO8601Format(_:)();
            v307 = v306;
            OUTLINED_FUNCTION_16_0(v380);
            v308 = OUTLINED_FUNCTION_26_4();
            v309(v308);
            OUTLINED_FUNCTION_28(v371);
            (*(v310 + 8))(COERCE_DOUBLE(*&v304));
            v311 = MEMORY[0x1865F62C0](v305, v307);

            Hasher._combine(_:)(1u);
            v312 = v311;
            v271 = v304;
            MEMORY[0x1865F6890](v312);
            v285 = &_s10Foundation4DateVSgMR;
          }

          _s10Foundation4UUIDVSgWOhTm_1(v358, &_s10Foundation4DateVSgMd, v285);
          outlined destroy of StorableValue(v373);
          OUTLINED_FUNCTION_30_4();
          v280 = v285;
          OUTLINED_FUNCTION_36_1();
          goto LABEL_147;
        case 3u:
        case 4u:
          v271 = v372[1];
          v378 = *v372;
          v379 = v271;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v282 = Optional<A>.hashValue.getter();
          OUTLINED_FUNCTION_25_5();
          OUTLINED_FUNCTION_36_1();

          v283 = v282;
          goto LABEL_145;
        case 5u:
          v271 = *v372;
          v288 = *(v372 + 1);
          v378 = *v372;
          v379 = *&v288;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          lazy protocol witness table accessor for type Data and conformance Data();
          v289 = Optional<A>.hashValue.getter();
          MEMORY[0x1865F6890](v289);
          OUTLINED_FUNCTION_30_4();
          OUTLINED_FUNCTION_25_5();
          OUTLINED_FUNCTION_36_1();
          outlined consume of Data?(v290, v288);
          goto LABEL_146;
        case 6u:
          OUTLINED_FUNCTION_22_4();
          _s10Foundation4UUIDVSgWObTm_1(v291, v292, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_3_14();
          lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(&lazy protocol witness table cache variable for type UUID and conformance UUID, v293);
          v294 = OUTLINED_FUNCTION_14_3();
          MEMORY[0x1865F6890](v294);
          OUTLINED_FUNCTION_30_4();
          v295 = OUTLINED_FUNCTION_25_5();
          _s10Foundation4UUIDVSgWOhTm_1(v295, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          goto LABEL_146;
        case 7u:
          v283 = 0;
          goto LABEL_145;
        default:
          v287 = *(v372 + 8);
          v378 = *v372;
          LOBYTE(v379) = v287;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
          goto LABEL_132;
      }
    }
  }

LABEL_148:
  v314 = Hasher._finalize()();
  v90 = v364;
  v315 = v364 + 56;
  v316 = -1 << *(v364 + 32);
  v94 = v314 & ~v316;
  if (((*(v364 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
  {
    v93 = v377;
    goto LABEL_4;
  }

  v317 = ~v316;
  v93 = v377;
  do
  {
    v318 = *(*(v90 + 48) + 8 * v94);
    if (*(v318 + 16) != v269)
    {
      goto LABEL_160;
    }

    v375 = v94;
    if (!v269 || v318 == v93)
    {
      goto LABEL_184;
    }

    v319 = *(v376 + 80);
    OUTLINED_FUNCTION_19_0();
    v321 = v318 + v320;
    v323 = v322 + v320;

    v324 = 0;
    while (1)
    {
      if (v324 >= *(v318 + 16))
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:

LABEL_184:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x184920484);
      }

      v325 = *(v376 + 72) * v324;
      outlined init with copy of StorableValue(v321 + v325, v80);
      if (v324 >= *(v377 + 16))
      {
        goto LABEL_164;
      }

      outlined init with copy of StorableValue(v323 + v325, v77);
      v326 = static StorableValue.== infix(_:_:)(v80, v77);
      outlined destroy of StorableValue(v77);
      outlined destroy of StorableValue(v80);
      if ((v326 & 1) == 0)
      {
        break;
      }

      if (v269 == ++v324)
      {
        goto LABEL_183;
      }
    }

    v93 = v377;
    v90 = v364;
    v94 = v375;
LABEL_160:
    v94 = (v94 + 1) & v317;
  }

  while (((*(v315 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) != 0);
LABEL_4:
  *(v90 + 8 * (v94 >> 6) + 56) |= 1 << v94;
  *(*(v90 + 48) + 8 * v94) = v93;
  v95 = *(v90 + 16);
  v96 = __OFADD__(v95, 1);
  v97 = v95 + 1;
  if (v96)
  {
    goto LABEL_170;
  }

  *(v90 + 16) = v97;
}

uint64_t static BMPoirotSchematizerShim.bmTypeToPoirotType(type:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xF)
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x1865F6280](0xD000000000000017, 0x8000000184DDC630);
    type metadata accessor for BMProtoDataType();
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_1E6E54838 + a1);
    v4 = type metadata accessor for TypeSchema();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t SQLExpression.expressionString.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t outlined init with take of Aggregation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);

  return swift_dynamicCast();
}

uint64_t outlined init with take of AnyValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AnyValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyValue(uint64_t a1)
{
  v2 = type metadata accessor for AnyValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for SQLExpression(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SQLExpressionEvaluator.evaluatesToTrue(expression:payload:)(uint64_t a1)
{
  v3 = type metadata accessor for SQLDataType();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v52 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = type metadata accessor for StorableValue(0);
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v53 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - v23;
  v25 = v54;
  SQLExpressionEvaluator.execute(expression:payload:)(&v48 - v23);
  if (!v25)
  {
    v50 = v11;
    v51 = v10;
    v48 = a1;
    v49 = v18;
    v54 = v22;
    v27 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
    v28 = *(v53 + 72);
    v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_184D29DA0;
    v31 = type metadata accessor for StorableValue;
    outlined init with copy of SQLExpressionEvaluatorError();
    outlined init with copy of SQLExpressionEvaluatorError();
    outlined init with copy of SQLExpressionEvaluatorError();
    v32 = SQLExpressionEvaluator.execute(stmt:bindingValues:)(v27, v30);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (v32 && *(v32 + 16) == 1)
    {
      specialized Collection.first.getter(v32, &v55);

      v33 = v54;
      if (v56)
      {
        v34 = v3;
        v35 = v57;

        v36 = v51;
        v37 = v52;
        (*(v52 + 104))(v51, 0, v34);
        v38 = OUTLINED_FUNCTION_81();
        static StorableValue.fromDatabaseValue(_:dataType:)(v38, v39, v35, v36, v40);
        (*(v37 + 8))(v36, v34);
        v42 = OUTLINED_FUNCTION_81();
        outlined consume of DatabaseValue(v42, v43, v35);
        v32 = v49;
        outlined init with copy of SQLExpressionEvaluatorError();
        v31 = v50;
        if (!swift_getEnumCaseMultiPayload())
        {
          outlined destroy of StorableValue(v33);
          outlined destroy of StorableValue(v24);
          v26 = (*v32 > 0) & ~*(v32 + 8);
          return v26 & 1;
        }

LABEL_12:
        outlined destroy of StorableValue(v32);
        v55 = 0;
        v56 = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        MEMORY[0x1865F6280](0xD000000000000029, 0x8000000184DDC070);
        v32 = MEMORY[0x1E69E7068];
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](0xD000000000000010, 0x8000000184DDC0A0);
        type metadata accessor for SQLExpression();
        _print_unlocked<A, B>(_:_:)();
        while (1)
        {
          OUTLINED_FUNCTION_9_2();
          __break(1u);
LABEL_14:
          v44 = String.init(cString:)();
          MEMORY[0x1865F6280](v44);

          MEMORY[0x1865F6280](v31 + 5, 0x8000000184DDC050);
          if (v32)
          {
            v45 = *(v32 + 16);
          }

          else
          {
            v45 = 0;
          }

          v58 = v45;
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v47;
          MEMORY[0x1865F6280](v46);
        }
      }
    }

    else
    {
      v31 = 0xD000000000000010;
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x1865F6280](0xD000000000000025, 0x8000000184DDC020);
      if (sqlite3_sql(v27))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return v26 & 1;
}

id __BMEventTimestampSQLColumn_block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:(*(*(a1 + 32) + 16))()];

  return v1;
}

NSString *__BMEventClassNameSQLColumn_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataType];

  return NSStringFromClass(v2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

void static KeyedAggregationMetadataCache.columnNames(groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v6 = OUTLINED_FUNCTION_2_1(v72);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_24_4();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v10 = OUTLINED_FUNCTION_2_1(v70);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51();
  v68 = v16;
  v17 = *(v5 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v65 = v3;
    v73 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_114();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v20, v21);
    v22 = *(v12 + 80);
    OUTLINED_FUNCTION_19_0();
    v24 = v5 + v23;
    v67 = *(v12 + 72);
    do
    {
      outlined init with copy of Date?(v24, v68, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      outlined init with take of UUID?(v68, v1, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v25 = *v1;
      v26 = *(v1 + 1);
      v27 = *(v70 + 48);
      v28 = type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_5_7(v28);
      (*(v29 + 8))(&v1[v27]);
      v31 = *(v73 + 16);
      v30 = *(v73 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_4_9(v30);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v31 + 1, 1);
      }

      *(v73 + 16) = v31 + 1;
      v32 = v73 + 16 * v31;
      *(v32 + 32) = v25;
      *(v32 + 40) = v26;
      v24 += v67;
      --v17;
    }

    while (v17);
    v18 = MEMORY[0x1E69E7CC0];
    v3 = v65;
  }

  v34 = 0;
  v64 = v3 + 32;
  v66 = *(v3 + 16);
  v35 = v18;
  while (1)
  {
    if (v34 == v66)
    {
      goto LABEL_27;
    }

    v36 = *(v64 + 8 * v34);
    v37 = *(v36 + 16);
    if (v37)
    {
      v69 = v35;
      v71 = v34;

      v38 = OUTLINED_FUNCTION_92_2();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v37, 0);
      v39 = v18;
      OUTLINED_FUNCTION_12_6();
      v41 = v36 + v40;
      v43 = *(v42 + 72);
      do
      {
        v44 = OUTLINED_FUNCTION_64_2();
        outlined init with copy of Date?(v44, v45, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v46 = OUTLINED_FUNCTION_20();
        outlined init with take of UUID?(v46, v47, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v48 = *(v0 + 1);

        v49 = *(v0 + 2);
        v50 = *(v0 + 3);
        v51 = *(v72 + 64);
        v52 = type metadata accessor for SQLDataType();
        OUTLINED_FUNCTION_5_7(v52);
        (*(v53 + 8))(&v0[v51]);
        v55 = *(v39 + 16);
        v54 = *(v39 + 24);
        if (v55 >= v54 >> 1)
        {
          v57 = OUTLINED_FUNCTION_4_9(v54);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v55 + 1, 1);
        }

        *(v39 + 16) = v55 + 1;
        v56 = v39 + 16 * v55;
        *(v56 + 32) = v49;
        *(v56 + 40) = v50;
        v41 += v43;
        --v37;
      }

      while (v37);

      v18 = MEMORY[0x1E69E7CC0];
      v35 = v69;
      v34 = v71;
    }

    else
    {
      v39 = v18;
    }

    v58 = *(v39 + 16);
    v59 = *(v35 + 16);
    if (__OFADD__(v59, v58))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v59 + v58 > *(v35 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v35 = v60;
    }

    ++v34;
    if (*(v39 + 16))
    {
      if ((*(v35 + 24) >> 1) - *(v35 + 16) < v58)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      if (v58)
      {
        v61 = *(v35 + 16);
        v62 = __OFADD__(v61, v58);
        v63 = v61 + v58;
        if (v62)
        {
          goto LABEL_30;
        }

        *(v35 + 16) = v63;
      }
    }

    else
    {

      if (v58)
      {
        __break(1u);
LABEL_27:
        specialized Array.append<A>(contentsOf:)(v35);
        OUTLINED_FUNCTION_169();
        return;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c11AggregationfG0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v173 = a5;
  v177 = a4;
  v178 = a2;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v182 = *(v183 - 8);
  v7 = *(v182 + 64);
  v8 = MEMORY[0x1EEE9AC00](v183);
  v176 = (&v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v187 = (&v172 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v186 = &v172 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v181 = &v172 - v14;
  v15 = type metadata accessor for StorableValue(0);
  v200 = *(v15 - 8);
  v16 = *(v200 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v174 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v175 = &v172 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v185 = &v172 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v180 = &v172 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v184 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v204 = &v172 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v179 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v172 - v32;
  j = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v189 = *(j - 8);
  v34 = *(v189 + 64);
  v35 = MEMORY[0x1EEE9AC00](j);
  v197 = &v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v205 = (&v172 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v188 = (&v172 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v45 = &v172 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v172 - v46);
  v199 = v15;
  v48 = Dictionary.init(dictionaryLiteral:)();
  v196 = a1;
  v49 = *(a1 + 16);
  v190 = a3;
  v50 = *(a3 + 16);
  if (v49 == v50)
  {
    v51 = 0;
    v194 = v33;
    v195 = v49;
    v192 = v45;
    v193 = v38;
    for (i = v47; ; v47 = i)
    {
      if (v51 == v49)
      {
        v52 = 1;
      }

      else
      {
        if (v51 >= v49)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v15 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_60;
        }

        v53 = v188;
        v54 = v190 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v51;
        v55 = *(v38 + 48);
        *v188 = v51;
        outlined init with copy of Date?(v54, v53 + v55, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        outlined init with take of UUID?(v53, v45, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
        v52 = 0;
        v49 = v51 + 1;
      }

      __swift_storeEnumTagSinglePayload(v45, v52, 1, v38);
      outlined init with take of UUID?(v45, v47, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
      if (__swift_getEnumTagSinglePayload(v47, 1, v38) == 1)
      {
        break;
      }

      v201 = v49;
      v202 = v48;
      v56 = *v47;
      isUniquelyReferenced_nonNull_native = (v47 + *(v38 + 48));
      v58 = *isUniquelyReferenced_nonNull_native;
      *&v203 = isUniquelyReferenced_nonNull_native[1];
      v59 = j;
      v60 = *(j + 48);
      v61 = type metadata accessor for SQLDataType();
      v62 = *(v61[-1].Description + 4);
      v63 = v197;
      v62(&v197[v60], isUniquelyReferenced_nonNull_native + v60, v61);
      v64 = *(v59 + 48);
      v65 = v205;
      v66 = v58;
      *v205 = v58;
      v67 = v203;
      *(v65 + 1) = v203;
      v62(v65 + v64, (v63 + v60), v61);
      v49 = v195;
      if (v56 >= v195)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:

        type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
        swift_allocError();
        *v157 = isUniquelyReferenced_nonNull_native;
        v157[1] = v63;
        goto LABEL_41;
      }

      v68 = *(v200 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(v196 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + v68 * v56, v204);
      v69 = v202;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v206 = v69;
      v63 = v66;
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
      v72 = *(v69 + 16);
      v73 = (v71 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_57;
      }

      v15 = v70;
      v75 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
      {
        v76 = v63;
        v77 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v67);
        v51 = v201;
        if ((v75 & 1) != (v78 & 1))
        {
          goto LABEL_82;
        }

        v15 = v77;
      }

      else
      {
        v76 = v63;
        v51 = v201;
      }

      v48 = v206;
      if (v75)
      {
        v79 = v15 * v68;
        v15 = type metadata accessor for StorableValue;
        v80 = v194;
        _s12BiomeStreams13StorableValueOWObTm_1(*(v206 + 56) + v79, v194);
        _s12BiomeStreams13StorableValueOWObTm_1(v204, *(v48 + 56) + v79);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v199);
      }

      else
      {
        *(v206 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v81 = (*(v48 + 48) + 16 * v15);
        *v81 = v76;
        v81[1] = v67;
        _s12BiomeStreams13StorableValueOWObTm_1(v204, *(v48 + 56) + v15 * v68);
        v82 = *(v48 + 16);
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        *(v48 + 16) = v84;
        v80 = v194;
        __swift_storeEnumTagSinglePayload(v194, 1, 1, v199);
      }

      outlined destroy of (columnName: String, dataType: SQLDataType)(v80, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      outlined destroy of (columnName: String, dataType: SQLDataType)(v205, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v45 = v192;
      v38 = v193;
    }

    v86 = *(v178 + 16);
    v87 = *(v177 + 16);
    if (v86 != v87)
    {
      v135 = *(v178 + 16);

      type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
      swift_allocError();
      *v136 = v87;
      v136[1] = v135;
      goto LABEL_41;
    }

    v88 = 0;
    v89 = v177 + 32;
    v90 = (v178 + 32);
    v193 = v177 + 32;
    v194 = v86;
    v192 = (v178 + 32);
LABEL_23:
    if (v88 != v86)
    {
      v91 = *(v89 + 8 * v88);
      v197 = v88 + 1;
      v92 = *&v90[8 * v88];
      v202 = *(v91 + 16);

      v201 = v92;

      v93 = 0;
      for (j = v91; ; v91 = j)
      {
        if (v202 == v93)
        {

          v88 = v197;
          v89 = v193;
          v86 = v194;
          v90 = v192;
          goto LABEL_23;
        }

        if (v93 >= *(v91 + 16))
        {
          goto LABEL_72;
        }

        v94 = v181;
        outlined init with copy of Date?(v91 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v93, v181, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v95 = *(v94 + 1);
        v97 = *(v94 + 2);
        v96 = *(v94 + 3);
        v98 = v183;
        v99 = *(v183 + 64);
        v100 = v186;
        *v186 = *v94;
        *(v100 + 1) = v95;
        v204 = v97;
        v205 = v96;
        *(v100 + 2) = v97;
        *(v100 + 3) = v96;
        v101 = type metadata accessor for SQLDataType();
        Description = v101[-1].Description;
        Description[4](&v100[v99], &v94[v99], v101);
        v103 = v187;
        outlined init with copy of Date?(v100, v187, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v105 = *v103;
        v104 = v103[1];
        v106 = v103[3];

        v107 = *(v98 + 64);
        v108 = v201;
        if (!*(v201 + 16))
        {

LABEL_43:

          v205 = Description[1];
          (v205)(v187 + v107, v101);
          v204 = type metadata accessor for MetadataSQLError(0);
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
          swift_allocError();
          v139 = v138;
          v140 = v186;
          v141 = v176;
          outlined init with copy of Date?(v186, v176, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v142 = *v141;
          v143 = v141[1];
          v144 = v141[3];

          v145 = *(v183 + 64);
          *v139 = v142;
          v139[1] = v143;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (v205)(v141 + v145, v101);
          return outlined destroy of (columnName: String, dataType: SQLDataType)(v140, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        }

        *&v203 = v93;
        v109 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v104);
        v111 = v110;

        if ((v111 & 1) == 0)
        {
          goto LABEL_43;
        }

        v112 = *(v200 + 72);
        v113 = *(v108 + 56) + v112 * v109;
        v114 = v180;
        _s12BiomeStreams13StorableValueOWOcTm_0(v113, v180);
        v115 = v114;
        v116 = v184;
        _s12BiomeStreams13StorableValueOWObTm_1(v115, v184);
        (Description[1])(v187 + v107, v101);
        _s12BiomeStreams13StorableValueOWOcTm_0(v116, v185);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v206 = v48;
        v119 = v204;
        v118 = v205;
        v120 = specialized __RawDictionaryStorage.find<A>(_:)(v204, v205);
        v122 = *(v48 + 16);
        v123 = (v121 & 1) == 0;
        v124 = v122 + v123;
        if (__OFADD__(v122, v123))
        {
          goto LABEL_73;
        }

        v125 = v120;
        v126 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v117, v124))
        {
          v127 = specialized __RawDictionaryStorage.find<A>(_:)(v119, v118);
          v129 = v179;
          v130 = v203;
          if ((v126 & 1) != (v128 & 1))
          {
            goto LABEL_82;
          }

          v125 = v127;
        }

        else
        {
          v129 = v179;
          v130 = v203;
        }

        v48 = v206;
        if (v126)
        {
          _s12BiomeStreams13StorableValueOWObTm_1(*(v206 + 56) + v125 * v112, v129);
          _s12BiomeStreams13StorableValueOWObTm_1(v185, *(v48 + 56) + v125 * v112);
          _s12BiomeStreams13StorableValueOWOhTm_1();
          v131 = 0;
        }

        else
        {
          *(v206 + 8 * (v125 >> 6) + 64) |= 1 << v125;
          v132 = (*(v48 + 48) + 16 * v125);
          *v132 = v119;
          v132[1] = v118;
          _s12BiomeStreams13StorableValueOWObTm_1(v185, *(v48 + 56) + v125 * v112);

          _s12BiomeStreams13StorableValueOWOhTm_1();
          v133 = *(v48 + 16);
          v83 = __OFADD__(v133, 1);
          v134 = v133 + 1;
          if (v83)
          {
            __break(1u);
            goto LABEL_77;
          }

          *(v48 + 16) = v134;
          v131 = 1;
        }

        __swift_storeEnumTagSinglePayload(v129, v131, 1, v199);
        outlined destroy of (columnName: String, dataType: SQLDataType)(v129, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
        outlined destroy of (columnName: String, dataType: SQLDataType)(v186, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v93 = v130 + 1;
      }
    }

    v146 = *(v173 + 16);
    v147 = (v173 + 40);
    v15 = MEMORY[0x1E69E7CC0];
    if (v146)
    {
      do
      {
        isUniquelyReferenced_nonNull_native = *(v147 - 1);
        v63 = *v147;
        v148 = *(v48 + 16);

        if (!v148)
        {
          goto LABEL_58;
        }

        v149 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v63);
        if ((v150 & 1) == 0)
        {
          goto LABEL_58;
        }

        v151 = v149;

        if (v151 < 0 || v151 >= 1 << *(v48 + 32))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (((*(v48 + 64 + ((v151 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
        {
          goto LABEL_78;
        }

        v152 = *(v200 + 72);
        _s12BiomeStreams13StorableValueOWOcTm_0(*(v48 + 56) + v152 * v151, v175);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = *(v15 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v155;
        }

        v153 = *(v15 + 16);
        if (v153 >= *(v15 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v156;
        }

        *(v15 + 16) = v153 + 1;
        _s12BiomeStreams13StorableValueOWObTm_1(v175, v15 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + v153 * v152);
        v147 += 2;
      }

      while (--v146);
    }

LABEL_61:

    v206 = v15;
    v158 = v195;
    if (v195)
    {
      v159 = *(v200 + 80);
      v160 = (v159 + 32) & ~v159;
      v161 = v196 + v160;
      v162 = *(v200 + 72);
      v204 = v160 + 2 * v162;
      v205 = v159;
      v163 = MEMORY[0x1E69E7CC0];
      v203 = xmmword_184D29A90;
      while (1)
      {
        v164 = v174;
        _s12BiomeStreams13StorableValueOWOcTm_0(v161, v174);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
        v165 = swift_allocObject();
        *(v165 + 16) = v203;
        v166 = v165 + v160;
        _s12BiomeStreams13StorableValueOWOcTm_0(v164, v165 + v160);
        _s12BiomeStreams13StorableValueOWObTm_1(v164, v166 + v162);
        v167 = *(v163 + 16);
        if (__OFADD__(v167, 2))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v168 = *(v163 + 24) >> 1, v168 < v167 + 2))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v163 = v169;
          v168 = *(v169 + 24) >> 1;
        }

        if (v168 - *(v163 + 16) < 2)
        {
          goto LABEL_80;
        }

        swift_arrayInitWithCopy();

        v170 = *(v163 + 16);
        v83 = __OFADD__(v170, 2);
        v171 = v170 + 2;
        if (v83)
        {
          goto LABEL_81;
        }

        *(v163 + 16) = v171;
        v161 += v162;
        if (!--v158)
        {
          goto LABEL_75;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
LABEL_74:
      v163 = MEMORY[0x1E69E7CC0];
LABEL_75:
      specialized Array.append<A>(contentsOf:)(v163);
      return v206;
    }
  }

  else
  {

    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v85 = v50;
    v85[1] = v49;
LABEL_41:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for StorableValue);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for AggregationFunction);
}

uint64_t OrderedDictionary.KeyWrapper.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for ChangeRecord(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t static StorableValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v179 = a1;
  v180 = a2;
  v176 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_2_1(v176);
  v166 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_94(v12 - v11);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_12(v168);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_29();
  v175 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = OUTLINED_FUNCTION_47(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_0();
  v165 = v21;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v173 = v23;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51();
  v177 = v25;
  OUTLINED_FUNCTION_43();
  v26 = type metadata accessor for Date.ISO8601FormatStyle();
  v27 = OUTLINED_FUNCTION_2_1(v26);
  v171 = v28;
  v172 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v170 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = OUTLINED_FUNCTION_47(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  v169 = v37;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30();
  v167 = v39;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_30();
  v174 = v41;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_51();
  v178 = v43;
  v44 = OUTLINED_FUNCTION_43();
  v45 = type metadata accessor for StorableValue(v44);
  v46 = OUTLINED_FUNCTION_12(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_67();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v164 - v51;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_96();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_49();
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v164 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = (&v164 - v60);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_95();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v164 - v63;
  outlined init with copy of StorableValue(v179, &v164 - v63);
  OUTLINED_FUNCTION_104();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v64;
      v80 = v64[8];
      outlined init with copy of StorableValue(v180, v61);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        OUTLINED_FUNCTION_1_12();
        v68 = v61;
        goto LABEL_42;
      }

      v81 = *(v61 + 8);
      if (v80)
      {
        if ((v61[1] & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_73;
      }

      if (v61[1])
      {
        goto LABEL_43;
      }

      v78 = vabdd_f64(v79, *v61) < 0.00001;
      return v78 & 1;
    case 2u:
      v73 = v178;
      outlined init with take of UUID?(v64, v178, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of StorableValue(v180, v58);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        outlined destroy of UUID?(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_1_12();
        v68 = v58;
        goto LABEL_42;
      }

      v74 = v174;
      outlined init with take of UUID?(v58, v174, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v75 = v167;
      outlined init with copy of Date?(v73, v167, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v76 = type metadata accessor for Date();
      OUTLINED_FUNCTION_92(v75, 1, v76);
      if (v77)
      {
        outlined destroy of UUID?(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v114 = 0;
        v116 = 0;
      }

      else
      {
        v113 = v170;
        default argument 0 of Date.ISO8601Format(_:)(v170);
        v114 = Date.ISO8601Format(_:)();
        v116 = v115;
        (*(v171 + 8))(v113, v172);
        OUTLINED_FUNCTION_28(v76);
        (*(v117 + 8))(v75, v76);
      }

      v118 = v169;
      outlined init with copy of Date?(v74, v169, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_92(v118, 1, v76);
      if (v77)
      {
        outlined destroy of UUID?(v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if (v116)
        {
          goto LABEL_68;
        }

        v122 = 0;
      }

      else
      {
        v119 = v170;
        default argument 0 of Date.ISO8601Format(_:)(v170);
        v120 = Date.ISO8601Format(_:)();
        v122 = v121;
        (*(v171 + 8))(v119, v172);
        OUTLINED_FUNCTION_28(v76);
        (*(v123 + 8))(v118, v76);
        if (v116)
        {
          if (v122)
          {
            if (v114 == v120 && v116 == v122)
            {
              v78 = 1;
            }

            else
            {
              OUTLINED_FUNCTION_77();
              OUTLINED_FUNCTION_89();
              v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            OUTLINED_FUNCTION_107(v74);
            v163 = v73;
LABEL_77:
            OUTLINED_FUNCTION_107(v163);
            return v78 & 1;
          }

LABEL_68:

          OUTLINED_FUNCTION_41();
          outlined destroy of UUID?(v139, v140, v141);
          OUTLINED_FUNCTION_41();
          goto LABEL_69;
        }
      }

      outlined destroy of UUID?(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v142 = OUTLINED_FUNCTION_52();
      outlined destroy of UUID?(v142, v143, &_s10Foundation4DateVSgMR);
      if (v122)
      {
LABEL_72:

LABEL_43:
        v78 = 0;
      }

      else
      {
LABEL_73:
        v78 = 1;
      }

      return v78 & 1;
    case 3u:
      v69 = *v64;
      v70 = *(v64 + 1);
      outlined init with copy of StorableValue(v180, v2);
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        OUTLINED_FUNCTION_1_12();
        v68 = v2;
        goto LABEL_42;
      }

      v71 = v2[1];
      if (!v70)
      {
        goto LABEL_45;
      }

      if (v71)
      {
        v72 = *v2;
        goto LABEL_16;
      }

      goto LABEL_72;
    case 4u:
      v69 = *v64;
      v70 = *(v64 + 1);
      outlined init with copy of StorableValue(v180, v4);
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        OUTLINED_FUNCTION_1_12();
        v68 = v4;
        goto LABEL_42;
      }

      v71 = v4[1];
      if (v70)
      {
        if (!v71)
        {
          goto LABEL_72;
        }

        v72 = *v4;
LABEL_16:
        v77 = v69 == v72 && v70 == v71;
        if (!v77)
        {
          OUTLINED_FUNCTION_81();
          v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v78 & 1;
        }

        goto LABEL_73;
      }

LABEL_45:
      if (!v71)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    case 5u:
      v83 = *v64;
      v82 = *(v64 + 1);
      outlined init with copy of StorableValue(v180, v5);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v110 = OUTLINED_FUNCTION_48();
        outlined consume of Data?(v110, v111);
        OUTLINED_FUNCTION_1_12();
        v68 = v5;
        goto LABEL_42;
      }

      v84 = *v5;
      v85 = v5[1];
      if (v82 >> 60 == 15)
      {
        if (v85 >> 60 == 15)
        {
          v86 = OUTLINED_FUNCTION_48();
          outlined consume of Data?(v86, v87);
          goto LABEL_73;
        }
      }

      else if (v85 >> 60 != 15)
      {
        v144 = OUTLINED_FUNCTION_48();
        outlined copy of Data?(v144, v145);
        v146 = OUTLINED_FUNCTION_70();
        outlined copy of Data?(v146, v147);
        v148 = OUTLINED_FUNCTION_48();
        v78 = MEMORY[0x1865F5B00](v148);
        v149 = OUTLINED_FUNCTION_70();
        outlined consume of Data?(v149, v150);
        v151 = OUTLINED_FUNCTION_70();
        outlined consume of Data?(v151, v152);
        v153 = OUTLINED_FUNCTION_48();
        outlined consume of Data?(v153, v154);
        v155 = OUTLINED_FUNCTION_48();
        outlined consume of Data?(v155, v156);
        return v78 & 1;
      }

      v125 = OUTLINED_FUNCTION_48();
      outlined consume of Data?(v125, v126);
      v127 = OUTLINED_FUNCTION_70();
      outlined consume of Data?(v127, v128);
      goto LABEL_43;
    case 6u:
      v88 = v177;
      outlined init with take of UUID?(v64, v177, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined init with copy of StorableValue(v180, v52);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        outlined destroy of UUID?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_1_12();
        v68 = v52;
        goto LABEL_42;
      }

      v89 = v173;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v90, v91, v92, v93);
      v94 = *(v168 + 48);
      v95 = v175;
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v96, v97, v98, v99);
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v100, v101, v102, v103);
      v104 = v176;
      OUTLINED_FUNCTION_92(v95, 1, v176);
      if (v77)
      {
        v105 = OUTLINED_FUNCTION_39();
        outlined destroy of UUID?(v105, v106, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v107, v108, v109);
        OUTLINED_FUNCTION_92(v95 + v94, 1, v104);
        if (v77)
        {
          outlined destroy of UUID?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          goto LABEL_73;
        }
      }

      else
      {
        v129 = v165;
        outlined init with copy of Date?(v95, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_92(v95 + v94, 1, v104);
        if (!v130)
        {
          v157 = v166;
          v158 = v95 + v94;
          v159 = v164;
          (*(v166 + 32))(v164, v158, v104);
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v160, v161);
          v78 = dispatch thunk of static Equatable.== infix(_:_:)();
          v162 = *(v157 + 8);
          v162(v159, v104);
          OUTLINED_FUNCTION_107(v89);
          OUTLINED_FUNCTION_107(v88);
          v162(v129, v104);
          v163 = v95;
          goto LABEL_77;
        }

        v131 = OUTLINED_FUNCTION_39();
        outlined destroy of UUID?(v131, v132, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_41();
        outlined destroy of UUID?(v133, v134, v135);
        (*(v166 + 8))(v129, v104);
      }

      v136 = &_s10Foundation4UUIDVSg_ADtMd;
      v137 = &_s10Foundation4UUIDVSg_ADtMR;
      v138 = v95;
LABEL_69:
      outlined destroy of UUID?(v138, v136, v137);
      goto LABEL_43;
    case 7u:
      outlined init with copy of StorableValue(v180, v6);
      v78 = swift_getEnumCaseMultiPayload() == 7;
      outlined destroy of StorableValue(v6, type metadata accessor for StorableValue);
      return v78 & 1;
    default:
      v65 = *v64;
      v66 = v64[8];
      outlined init with copy of StorableValue(v180, v3);
      OUTLINED_FUNCTION_72();
      if (!swift_getEnumCaseMultiPayload())
      {
        v78 = *(v3 + 8);
        if ((v66 & 1) == 0)
        {
          v78 = (v65 == *v3) & ~v78;
        }

        return v78 & 1;
      }

      OUTLINED_FUNCTION_1_12();
      v68 = v3;
LABEL_42:
      outlined destroy of StorableValue(v68, v67);
      goto LABEL_43;
  }
}

uint64_t OUTLINED_FUNCTION_92_0()
{
  v1 = *(*(v0 - 552) + 48);
  v2 = *(v0 - 120);
  return *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v1 - 552) = v0;
  v2 = *(*(v1 - 152) + 16);
  *(v1 - 544) = *(v0 + 40);
  result = *(v1 - 160);
  v4 = *(v1 - 144);
  return result;
}

void OUTLINED_FUNCTION_67_1()
{
  *(v6 - 224) = v5;
  v7 = *(v6 - 320);
  v8 = *(v6 - 208);
  *(v6 - 504) = v0;
  *(v6 - 392) = v4;
  *(v6 - 480) = v2;
  *(v6 - 488) = v3;
  *(v6 - 496) = v1;
}

void OUTLINED_FUNCTION_109_1()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_36()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void OUTLINED_FUNCTION_111_0()
{
  v1 = *(v0 - 248);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_106_0@<X0>(void *a1@<X8>)
{
  v7 = (v5 + v4);
  v8 = a1[1];
  *v7 = *a1;
  v7[1] = v8;
  v9 = v5 + v4 + *(v1 + 48);
  *v9 = *(v2 + *(v3 + 32));
  *(v9 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_106_1()
{

  return outlined init with copy of Date?(v0, v1);
}

uint64_t StorableValue.hash(into:)(uint64_t a1)
{
  v57[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_68();
  v8 = type metadata accessor for Date.ISO8601FormatStyle();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = OUTLINED_FUNCTION_47(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v57 - v22;
  v24 = type metadata accessor for StorableValue(0);
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v30 = v29 - v28;
  outlined init with copy of StorableValue(v1, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (*(v30 + 8))
      {
        v58 = *v30;
        LOBYTE(v59) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
        goto LABEL_9;
      }

      static StorableValue.hashForDouble(double:)(*v30);
      v33 = Int.hashValue.getter();
      return MEMORY[0x1865F6890](v33);
    case 2u:
      outlined init with take of UUID?(v30, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of Date?(v23, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v34 = type metadata accessor for Date();
      OUTLINED_FUNCTION_92(v3, 1, v34);
      if (v35)
      {
        outlined destroy of UUID?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        Hasher._combine(_:)(0);
      }

      else
      {
        default argument 0 of Date.ISO8601Format(_:)(v16);
        v49 = Date.ISO8601Format(_:)();
        v51 = v50;
        (*(v11 + 8))(v16, v8);
        OUTLINED_FUNCTION_28(v34);
        v53 = *(v52 + 8);
        v54 = OUTLINED_FUNCTION_86();
        v55(v54);
        v56 = MEMORY[0x1865F62C0](v49, v51);

        Hasher._combine(_:)(1u);
        MEMORY[0x1865F6890](v56);
      }

      v47 = &_s10Foundation4DateVSgMd;
      v48 = &_s10Foundation4DateVSgMR;
      v46 = v23;
      return outlined destroy of UUID?(v46, v47, v48);
    case 3u:
    case 4u:
      v31 = *(v30 + 8);
      v58 = *v30;
      v59 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v32 = Optional<A>.hashValue.getter();

      v33 = v32;
      return MEMORY[0x1865F6890](v33);
    case 5u:
      v38 = *(v30 + 8);
      v58 = *v30;
      v37 = *&v58;
      v59 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      v39 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v39);
      return outlined consume of Data?(v37, v38);
    case 6u:
      v41 = OUTLINED_FUNCTION_73();
      outlined init with take of UUID?(v41, v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_7_1();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v43, v44);
      v45 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v45);
      v46 = v2;
      v47 = &_s10Foundation4UUIDVSgMd;
      v48 = &_s10Foundation4UUIDVSgMR;
      return outlined destroy of UUID?(v46, v47, v48);
    case 7u:
      v33 = 0;
      return MEMORY[0x1865F6890](v33);
    default:
      v36 = *(v30 + 8);
      v58 = *v30;
      LOBYTE(v59) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
LABEL_9:
      v33 = Optional<A>.hashValue.getter();
      return MEMORY[0x1865F6890](v33);
  }
}

uint64_t static StorableValue.hashForDouble(double:)(double a1)
{
  v1 = floor(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return Int.hashValue.getter();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_98_2();
  specialized __RawDictionaryStorage.find<A>(_:)(a4, v12, v13, v14, v15, v16, v17, v18, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, vars0, vars8);
  v20 = v19;
  OUTLINED_FUNCTION_15_3();
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v21;
  OUTLINED_FUNCTION_138_0();
  if (v31 == v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMd, &_ss17_NativeDictionaryVySay12BiomeStreams13StorableValueOGAC12ChangeRecordV5value_AC10CacheEventO5eventtGMR);
    _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v29, v30, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, vars0a, vars8a);
  specialized __RawDictionaryStorage.find<A>(_:)(a4, v33, v34, v35, v36, v37, v38, v39, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, vars0b, vars8b);
  if ((v5 & 1) != (v41 & 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v40;
LABEL_7:
  if (v5)
  {
    v42 = (v54[7] + 24 * v20);
    result = *v42;
    v44 = *(v42 + 1);
    v45 = v42[16];
    *v42 = a1 & 1;
    *(v42 + 1) = a2;
    v42[16] = a3 & 1;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_68_1();
    specialized _NativeDictionary._insert(at:key:value:)(v46, v47, v48, a2, v49, v54);

    result = 0;
  }

  *v4 = v54;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3 & 1;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c11AggregationfG0V_Tt1g5(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v156 = a5;
  v159 = a4;
  v160 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  v164 = *(v165 - 8);
  v7 = *(v164 + 64);
  v8 = MEMORY[0x1EEE9AC00](v165);
  v158 = (&v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v169 = (&v155 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v168 = &v155 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v163 = &v155 - v14;
  v15 = type metadata accessor for StorableValue(0);
  v182 = *(v15 - 1);
  v16 = *(v182 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v157 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v167 = &v155 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v162 = &v155 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v166 = &v155 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v186 = &v155 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v161 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v155 - v30;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v171 = *(i - 8);
  v32 = *(v171 + 64);
  v33 = MEMORY[0x1EEE9AC00](i);
  v179 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v187 = (&v155 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v170 = (&v155 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v43 = &v155 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v155 - v44);
  v181 = v15;
  v46 = Dictionary.init(dictionaryLiteral:)();
  v178 = a1;
  v47 = *(a1 + 2);
  v172 = a3;
  v48 = *(a3 + 16);
  if (v47 != v48)
  {

    v15 = type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v83 = v48;
    v83[1] = v47;
LABEL_40:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v15;
  }

  v49 = 0;
  v175 = v36;
  v176 = v31;
  v177 = v47;
  v173 = v45;
  v174 = v43;
  while (1)
  {
    if (v49 == v47)
    {
      v50 = 1;
      v15 = v47;
    }

    else
    {
      if (v49 >= v47)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v15 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_60;
      }

      v51 = v170;
      v52 = v172 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v49;
      v53 = *(v36 + 48);
      *v170 = v49;
      outlined init with copy of Date?(v52, v51 + v53, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      outlined init with take of UUID?(v51, v43, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
      v50 = 0;
    }

    __swift_storeEnumTagSinglePayload(v43, v50, 1, v36);
    outlined init with take of UUID?(v43, v45, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v45, 1, v36) == 1)
    {
      v84 = *(v160 + 16);
      v85 = *(v159 + 16);
      if (v84 != v85)
      {
        v133 = *(v160 + 16);

        v15 = type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
        swift_allocError();
        *v134 = v85;
        v134[1] = v133;
        goto LABEL_40;
      }

      v86 = 0;
      v87 = v159 + 32;
      v88 = v160 + 32;
      v177 = v159 + 32;
      v178 = v84;
      v176 = (v160 + 32);
LABEL_22:
      if (v86 != v84)
      {
        v89 = *(v87 + 8 * v86);
        v179 = v86 + 1;
        v90 = *(v88 + 8 * v86);
        v184 = *(v89 + 16);

        v183 = v90;

        v91 = 0;
        for (i = v89; ; v89 = i)
        {
          if (v184 == v91)
          {

            v84 = v178;
            v86 = v179;
            v88 = v176;
            v87 = v177;
            goto LABEL_22;
          }

          if (v91 >= *(v89 + 16))
          {
            goto LABEL_63;
          }

          v92 = v163;
          outlined init with copy of Date?(v89 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v91, v163, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v93 = *(v92 + 1);
          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          v96 = v165;
          v97 = *(v165 + 64);
          v98 = v168;
          *v168 = *v92;
          *(v98 + 1) = v93;
          v186 = v95;
          v187 = v94;
          *(v98 + 2) = v95;
          *(v98 + 3) = v94;
          v99 = type metadata accessor for SQLDataType();
          Description = v99[-1].Description;
          Description[4](&v98[v97], &v92[v97], v99);
          v101 = v169;
          outlined init with copy of Date?(v98, v169, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v103 = *v101;
          v102 = v101[1];
          v104 = v101[3];

          v105 = *(v96 + 64);
          v106 = v183;
          if (!v183[2])
          {
            break;
          }

          v185 = v91;
          v107 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v102);
          v109 = v108;

          if ((v109 & 1) == 0)
          {
            goto LABEL_42;
          }

          v110 = *(v182 + 72);
          v111 = v106[7] + v110 * v107;
          v112 = v162;
          _s12BiomeStreams13StorableValueOWOcTm_0(v111, v162);
          v113 = v112;
          v114 = v166;
          _s12BiomeStreams13StorableValueOWObTm_1(v113, v166);
          (Description[1])(v169 + v105, v99);
          _s12BiomeStreams13StorableValueOWOcTm_0(v114, v167);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v188 = v46;
          v117 = v186;
          v116 = v187;
          v118 = specialized __RawDictionaryStorage.find<A>(_:)(v186, v187);
          v120 = *(v46 + 16);
          v121 = (v119 & 1) == 0;
          v122 = v120 + v121;
          if (__OFADD__(v120, v121))
          {
            goto LABEL_64;
          }

          v123 = v118;
          v124 = v119;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v122))
          {
            v125 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v116);
            v127 = v185;
            if ((v124 & 1) != (v126 & 1))
            {
              goto LABEL_68;
            }

            v123 = v125;
          }

          else
          {
            v127 = v185;
          }

          v46 = v188;
          if (v124)
          {
            v128 = v161;
            _s12BiomeStreams13StorableValueOWObTm_1(*(v188 + 56) + v123 * v110, v161);
            _s12BiomeStreams13StorableValueOWObTm_1(v167, *(v46 + 56) + v123 * v110);
            _s12BiomeStreams13StorableValueOWOhTm_1();
            v129 = 0;
          }

          else
          {
            *(v188 + 8 * (v123 >> 6) + 64) |= 1 << v123;
            v130 = (*(v46 + 48) + 16 * v123);
            *v130 = v117;
            v130[1] = v116;
            _s12BiomeStreams13StorableValueOWObTm_1(v167, *(v46 + 56) + v123 * v110);

            _s12BiomeStreams13StorableValueOWOhTm_1();
            v131 = *(v46 + 16);
            v81 = __OFADD__(v131, 1);
            v132 = v131 + 1;
            if (v81)
            {
              goto LABEL_65;
            }

            *(v46 + 16) = v132;
            v129 = 1;
            v128 = v161;
          }

          __swift_storeEnumTagSinglePayload(v128, v129, 1, v181);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v128, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v168, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v91 = v127 + 1;
        }

LABEL_42:

        v187 = Description[1];
        (v187)(v169 + v105, v99);
        v186 = type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
        swift_allocError();
        v136 = v135;
        v15 = v168;
        v137 = v158;
        outlined init with copy of Date?(v168, v158, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v138 = *v137;
        v139 = v137[1];
        v140 = v137[3];

        v141 = *(v165 + 64);
        *v136 = v138;
        v136[1] = v139;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (v187)(v137 + v141, v99);
        outlined destroy of (columnName: String, dataType: SQLDataType)(v15, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        return v15;
      }

      v143 = *(v156 + 16);
      v144 = (v156 + 40);
      v15 = MEMORY[0x1E69E7CC0];
      if (v143)
      {
        do
        {
          v54 = *(v144 - 1);
          v47 = *v144;
          v145 = *(v46 + 16);

          if (!v145)
          {
            goto LABEL_58;
          }

          v146 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v47);
          if ((v147 & 1) == 0)
          {
            goto LABEL_58;
          }

          v148 = v146;

          if (v148 < 0 || v148 >= 1 << *(v46 + 32))
          {
            goto LABEL_66;
          }

          if (((*(v46 + 64 + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v148) & 1) == 0)
          {
            goto LABEL_67;
          }

          v149 = *(v182 + 72);
          _s12BiomeStreams13StorableValueOWOcTm_0(*(v46 + 56) + v149 * v148, v157);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = v15[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v152;
          }

          v150 = v15[2];
          if (v150 >= v15[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v153;
          }

          v15[2] = v150 + 1;
          _s12BiomeStreams13StorableValueOWObTm_1(v157, v15 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + v150 * v149);
          v144 += 2;
        }

        while (--v143);
      }

LABEL_61:

      return v15;
    }

    v183 = v15;
    v184 = v46;
    v54 = *v45;
    v55 = (v45 + *(v36 + 48));
    v56 = *v55;
    v185 = v55[1];
    v57 = i;
    v58 = *(i + 48);
    v59 = type metadata accessor for SQLDataType();
    v60 = *(v59[-1].Description + 4);
    v61 = v179;
    v60(&v179[v58], v55 + v58, v59);
    v62 = *(v57 + 48);
    v63 = v187;
    v64 = v56;
    *v187 = v56;
    v15 = v185;
    *(v63 + 1) = v185;
    v60(v63 + v62, &v61[v58], v59);
    v47 = v177;
    if (v54 >= v177)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      v15 = type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
      swift_allocError();
      *v154 = v54;
      v154[1] = v47;
      goto LABEL_40;
    }

    v65 = *(v182 + 72);
    _s12BiomeStreams13StorableValueOWOcTm_0(&v178[((*(v182 + 80) + 32) & ~*(v182 + 80)) + v65 * v54], v186);
    v66 = v184;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v188 = v66;
    v68 = v64;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v15);
    v71 = *(v66 + 16);
    v72 = (v70 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_57;
    }

    v74 = v69;
    v75 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v67, v73))
    {
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v15);
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_68;
      }

      v74 = v76;
    }

    v46 = v188;
    if (v75)
    {
      v15 = type metadata accessor for StorableValue;
      v78 = v176;
      _s12BiomeStreams13StorableValueOWObTm_1(*(v188 + 56) + v74 * v65, v176);
      _s12BiomeStreams13StorableValueOWObTm_1(v186, *(v46 + 56) + v74 * v65);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v181);
      goto LABEL_18;
    }

    *(v188 + 8 * (v74 >> 6) + 64) |= 1 << v74;
    v79 = (*(v46 + 48) + 16 * v74);
    *v79 = v68;
    v79[1] = v15;
    _s12BiomeStreams13StorableValueOWObTm_1(v186, *(v46 + 56) + v74 * v65);
    v80 = *(v46 + 16);
    v81 = __OFADD__(v80, 1);
    v82 = v80 + 1;
    if (v81)
    {
      break;
    }

    *(v46 + 16) = v82;
    v78 = v176;
    __swift_storeEnumTagSinglePayload(v176, 1, 1, v181);

LABEL_18:
    outlined destroy of (columnName: String, dataType: SQLDataType)(v78, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    outlined destroy of (columnName: String, dataType: SQLDataType)(v187, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v43 = v174;
    v36 = v175;
    v45 = v173;
    v49 = v183;
  }

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
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void static KeyedFirstMatchingRecordCache.columnNames(groupBySchema:payloadSchema:)()
{
  OUTLINED_FUNCTION_204();
  v2 = v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v3 = OUTLINED_FUNCTION_2_1(v30);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_4();
  v9 = *(v2 + 16);
  if (v9)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v10 = OUTLINED_FUNCTION_92_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v9, 0);
    v11 = *(v5 + 80);
    OUTLINED_FUNCTION_19_0();
    v13 = v2 + v12;
    v29 = *(v5 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_86();
      outlined init with copy of Date?(v14, v15, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v16 = OUTLINED_FUNCTION_20();
      outlined init with take of UUID?(v16, v17, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      v19 = *v0;
      v18 = *(v0 + 1);
      v20 = *(v30 + 48);
      v21 = type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_5_7(v21);
      (*(v22 + 8))(&v0[v20]);
      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_4_9(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v24 + 1, 1);
      }

      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v18;
      v13 += v29;
      --v9;
    }

    while (v9);
  }

  v28 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5Tm(v27);
  specialized Array.append<A>(contentsOf:)(v28);
  OUTLINED_FUNCTION_169();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS12BiomeStreams13StorableValueO_GTt0g5Tm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  specialized Sequence._copySequenceContents(initializing:)();
  v4 = v3;
  outlined consume of [String : [String]].Iterator._Variant();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = OUTLINED_FUNCTION_22_2();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_1_18();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06insertF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU1_AA0c19FirstMatchingRecordG0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v162 = a6;
  v168 = a5;
  v172 = a3;
  v187 = type metadata accessor for SQLDataType();
  Description = v187[-1].Description;
  v9 = Description[8];
  MEMORY[0x1EEE9AC00](v187);
  v164 = &v161[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = &v161[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v171 = &v161[-v15];
  v16 = type metadata accessor for StorableValue(0);
  v186 = *(v16 - 8);
  v17 = *(v186 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v163 = &v161[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v170 = &v161[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v166 = &v161[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v169 = &v161[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v191 = &v161[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v165 = &v161[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v161[-v31];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v174 = *(v182 - 8);
  v33 = *(v174 + 64);
  v34 = MEMORY[0x1EEE9AC00](v182);
  v181 = &v161[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v192 = &v161[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v173 = &v161[-v39];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v44 = &v161[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v161[-v45];
  v185 = v16;
  v47 = Dictionary.init(dictionaryLiteral:)();
  v180 = a1;
  v48 = *(a1 + 16);
  v175 = a4;
  v49 = *(a4 + 16);
  if (v48 == v49)
  {
    v50 = 0;
    v183 = (Description + 4);
    v184 = Description;
    v178 = v37;
    v179 = v32;
    v176 = v46;
    v177 = v44;
    v190 = v48;
    while (1)
    {
      if (v50 == v48)
      {
        v51 = 1;
        v189 = v48;
      }

      else
      {
        if (v50 >= v48)
        {
          goto LABEL_66;
        }

        v52 = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          goto LABEL_67;
        }

        v53 = v173;
        v54 = v175 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v50;
        v55 = *(v37 + 48);
        *v173 = v50;
        outlined init with copy of Date?(v54, v53 + v55, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
        outlined init with take of UUID?(v53, v44, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
        v51 = 0;
        v189 = v52;
      }

      __swift_storeEnumTagSinglePayload(v44, v51, 1, v37);
      outlined init with take of UUID?(v44, v46, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
      if (__swift_getEnumTagSinglePayload(v46, 1, v37) == 1)
      {
        break;
      }

      v188 = v47;
      v56 = *v46;
      v57 = (v46 + *(v37 + 48));
      v58 = *v57;
      v59 = v57[1];
      v60 = v182;
      v61 = *(v182 + 48);
      v62 = *v183;
      v63 = v181;
      v64 = v187;
      (*v183)(&v181[v61], v57 + v61, v187);
      v65 = *(v60 + 48);
      v66 = v192;
      *v192 = v58;
      *(v66 + 8) = v59;
      v62(v66 + v65, &v63[v61], v64);
      if (v56 >= v190)
      {
        goto LABEL_64;
      }

      v67 = *(v186 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(v180 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + v67 * v56, v191);
      v68 = v188;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = v68;
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
      v72 = *(v68 + 16);
      v73 = (v71 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_65;
      }

      v75 = v70;
      v76 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
      {
        v77 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
        v48 = v190;
        if ((v76 & 1) != (v78 & 1))
        {
          goto LABEL_73;
        }

        v75 = v77;
      }

      else
      {
        v48 = v190;
      }

      v47 = v193;
      if (v76)
      {
        v79 = v75 * v67;
        v80 = v179;
        _s12BiomeStreams13StorableValueOWObTm_1(*(v193 + 56) + v79, v179);
        _s12BiomeStreams13StorableValueOWObTm_1(v191, *(v47 + 56) + v79);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v185);
      }

      else
      {
        *(v193 + 8 * (v75 >> 6) + 64) |= 1 << v75;
        v81 = (*(v47 + 48) + 16 * v75);
        *v81 = v58;
        v81[1] = v59;
        _s12BiomeStreams13StorableValueOWObTm_1(v191, *(v47 + 56) + v75 * v67);
        v82 = *(v47 + 16);
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          goto LABEL_68;
        }

        *(v47 + 16) = v84;
        v80 = v179;
        __swift_storeEnumTagSinglePayload(v179, 1, 1, v185);
      }

      outlined destroy of (columnName: String, dataType: SQLDataType)(v80, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      outlined destroy of (columnName: String, dataType: SQLDataType)(v192, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      Description = v184;
      v44 = v177;
      v37 = v178;
      v46 = v176;
      v50 = v189;
    }

    v87 = v172;
    v88 = v168;
    if (*(v172 + 16) != *(v168 + 16))
    {

      v85 = type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
      swift_allocError();
      v143 = *(v87 + 16);
      *v144 = v88[2];
      v144[1] = v143;
      goto LABEL_46;
    }

    v89 = (v168 + 64);
    v90 = 1 << *(v168 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v168 + 64);
    v93 = (v90 + 63) >> 6;
    v182 = (Description + 2);
    v190 = (Description + 1);

    v94 = 0;
    v95 = v171;
    v188 = v93;
    v189 = v88 + 8;
    if (!v92)
    {
LABEL_26:
      while (1)
      {
        v96 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v96 >= v93)
        {
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v111 = v167;
          __swift_storeEnumTagSinglePayload(v167, 1, 1, v142);
          v92 = 0;
          goto LABEL_31;
        }

        v92 = v89[v96];
        ++v94;
        if (v92)
        {
          v94 = v96;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    while (1)
    {
      v96 = v94;
LABEL_30:
      v97 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v98 = v97 | (v96 << 6);
      v99 = v88[7];
      v100 = (v88[6] + 16 * v98);
      v101 = v100[1];
      v192 = *v100;
      v102 = v99 + Description[9] * v98;
      v103 = Description[2];
      v104 = Description;
      v105 = v164;
      v106 = v187;
      v103(v164, v102, v187);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v108 = *(v107 + 48);
      v109 = v167;
      *v167 = v192;
      v109[1] = v101;
      v110 = v104[4];
      v111 = v109;
      v110(v109 + v108, v105, v106);
      __swift_storeEnumTagSinglePayload(v111, 0, 1, v107);

      v95 = v171;
LABEL_31:
      outlined init with take of UUID?(v111, v95, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
      v112 = v95;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      if (__swift_getEnumTagSinglePayload(v112, 1, v113) == 1)
      {
        break;
      }

      v115 = *v112;
      v114 = v112[1];
      v116 = *(v113 + 48);
      if (!*(v172 + 16) || (v117 = specialized __RawDictionaryStorage.find<A>(_:)(v115, v114), (v118 & 1) == 0))
      {

        v85 = type metadata accessor for MetadataSQLError(0);
        lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
        swift_allocError();
        *v146 = v115;
        v146[1] = v114;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v190)(&v116[v171], v187);
        return v85;
      }

      v119 = *(v172 + 56);
      v120 = *(v186 + 72);
      v191 = v116;
      v192 = v120;
      v121 = v166;
      _s12BiomeStreams13StorableValueOWOcTm_0(v119 + v120 * v117, v166);
      v122 = v121;
      v123 = v169;
      _s12BiomeStreams13StorableValueOWObTm_1(v122, v169);
      _s12BiomeStreams13StorableValueOWOcTm_0(v123, v170);
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v47;
      v125 = v115;
      v126 = v115;
      v127 = v114;
      v128 = specialized __RawDictionaryStorage.find<A>(_:)(v126, v114);
      v130 = *(v47 + 16);
      v131 = (v129 & 1) == 0;
      v132 = v130 + v131;
      if (__OFADD__(v130, v131))
      {
        goto LABEL_69;
      }

      v133 = v128;
      v134 = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v124, v132))
      {
        v135 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v127);
        if ((v134 & 1) != (v136 & 1))
        {
          goto LABEL_73;
        }

        v133 = v135;
      }

      v47 = v193;
      if (v134)
      {
        v137 = v133 * v192;
        v138 = v165;
        _s12BiomeStreams13StorableValueOWObTm_1(*(v193 + 56) + v133 * v192, v165);
        _s12BiomeStreams13StorableValueOWObTm_1(v170, *(v47 + 56) + v137);
        __swift_storeEnumTagSinglePayload(v138, 0, 1, v185);
      }

      else
      {
        *(v193 + 8 * (v133 >> 6) + 64) |= 1 << v133;
        v139 = (*(v47 + 48) + 16 * v133);
        *v139 = v125;
        v139[1] = v127;
        _s12BiomeStreams13StorableValueOWObTm_1(v170, *(v47 + 56) + v133 * v192);
        v140 = *(v47 + 16);
        v83 = __OFADD__(v140, 1);
        v141 = v140 + 1;
        if (v83)
        {
          goto LABEL_70;
        }

        *(v47 + 16) = v141;
        v138 = v165;
        __swift_storeEnumTagSinglePayload(v165, 1, 1, v185);
      }

      outlined destroy of (columnName: String, dataType: SQLDataType)(v138, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      _s12BiomeStreams13StorableValueOWOhTm_1();
      v95 = v171;
      (*v190)(&v191[v171], v187);
      v88 = v168;
      Description = v184;
      v93 = v188;
      v89 = v189;
      if (!v92)
      {
        goto LABEL_26;
      }
    }

    v147 = *(v162 + 16);
    v148 = (v162 + 40);
    v85 = MEMORY[0x1E69E7CC0];
    if (!v147)
    {
LABEL_62:

      return v85;
    }

    while (1)
    {
      v150 = *(v148 - 1);
      v149 = *v148;
      v151 = *(v47 + 16);

      if (!v151)
      {
        break;
      }

      v152 = specialized __RawDictionaryStorage.find<A>(_:)(v150, v149);
      if ((v153 & 1) == 0)
      {
        break;
      }

      v154 = v152;

      if (v154 < 0 || v154 >= 1 << *(v47 + 32))
      {
        goto LABEL_71;
      }

      if (((*(v47 + 64 + ((v154 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v154) & 1) == 0)
      {
        goto LABEL_72;
      }

      v155 = *(v186 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(*(v47 + 56) + v155 * v154, v163);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = *(v85 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v85 = v158;
      }

      v156 = *(v85 + 16);
      if (v156 >= *(v85 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v85 = v159;
      }

      *(v85 + 16) = v156 + 1;
      _s12BiomeStreams13StorableValueOWObTm_1(v163, v85 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + v156 * v155);
      v148 += 2;
      if (!--v147)
      {
        goto LABEL_62;
      }
    }

    v85 = type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v160 = v150;
    v160[1] = v149;
  }

  else
  {

    v85 = type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v86 = v49;
    v86[1] = v48;
  }

LABEL_46:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v85;
}

uint64_t sub_1849284DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

id BMEventBookmarkSQLColumns()
{
  v29[4] = *MEMORY[0x1E69E9840];
  v0 = [BMSQLEventMetadataColumn alloc];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __BMEventBookmarkSQLColumns_block_invoke_5;
  v27 = &unk_1E6E53388;
  v28 = &__block_literal_global_34;
  v1 = [BMSQLEventMetadataColumn initWithName:v0 dataType:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" requestOnly:@"_bookmark.streamId" extractBlock:2 setValueBlock:1];
  v29[0] = v1;
  v2 = [BMSQLEventMetadataColumn alloc];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __BMEventBookmarkSQLColumns_block_invoke_6;
  v22 = &unk_1E6E53388;
  v23 = &__block_literal_global_36_0;
  v3 = [BMSQLEventMetadataColumn initWithName:v2 dataType:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" requestOnly:@"_bookmark.segmentName" extractBlock:2 setValueBlock:1];
  v29[1] = v3;
  v4 = [BMSQLEventMetadataColumn alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __BMEventBookmarkSQLColumns_block_invoke_7;
  v17[3] = &unk_1E6E53410;
  v18 = &__block_literal_global_38;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __BMEventBookmarkSQLColumns_block_invoke_8;
  v15[3] = &unk_1E6E53388;
  v16 = &__block_literal_global_38;
  v5 = [(BMSQLEventMetadataColumn *)v4 initWithName:@"_bookmark.iterationStartTime" dataType:1 requestOnly:1 extractBlock:v17 setValueBlock:v15];
  v29[2] = v5;
  v6 = [BMSQLEventMetadataColumn alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __BMEventBookmarkSQLColumns_block_invoke_9;
  v13[3] = &unk_1E6E53410;
  v14 = &__block_literal_global_41;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __BMEventBookmarkSQLColumns_block_invoke_10;
  v11[3] = &unk_1E6E53388;
  v12 = &__block_literal_global_41;
  v7 = [(BMSQLEventMetadataColumn *)v6 initWithName:@"_bookmark.offset" dataType:0 requestOnly:1 extractBlock:v13 setValueBlock:v11];
  v29[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id get_DKDiscoverabilitySignalsMetadataKeyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKDiscoverabilitySignalsMetadataKeyClass_softClass;
  v7 = get_DKDiscoverabilitySignalsMetadataKeyClass_softClass;
  if (!get_DKDiscoverabilitySignalsMetadataKeyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_DKDiscoverabilitySignalsMetadataKeyClass_block_invoke;
    v3[3] = &unk_1E6E52EB0;
    v3[4] = &v4;
    __get_DKDiscoverabilitySignalsMetadataKeyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_184928AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BMPBIntentEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          if (v13 == 10)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 92) |= 0x10u;
            while (1)
            {
              v54 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v54 & 0x7F) << v31;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                LOBYTE(v37) = 0;
                goto LABEL_90;
              }
            }

            v37 = (v33 != 0) & ~[a2 hasError];
LABEL_90:
            *(a1 + 88) = v37;
            goto LABEL_98;
          }

          if (v13 == 11)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 92) |= 8u;
            while (1)
            {
              v51 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v51 & 0x7F) << v39;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v41;
            }

LABEL_94:
            v46 = 64;
            goto LABEL_95;
          }

          if (v13 != 12)
          {
LABEL_79:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_98;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          switch(v13)
          {
            case 7:
              v25 = 0;
              v26 = 0;
              v27 = 0;
              *(a1 + 92) |= 2u;
              while (1)
              {
                v52 = 0;
                v28 = [a2 position] + 1;
                if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                {
                  v30 = [a2 data];
                  [v30 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v27 |= (v52 & 0x7F) << v25;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v11 = v26++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_88;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v27;
              }

LABEL_88:
              v46 = 40;
LABEL_95:
              *(a1 + v46) = v22;
              goto LABEL_98;
            case 8:
              v14 = PBReaderReadData();
              v15 = 56;
              break;
            case 9:
              v14 = PBReaderReadString();
              v15 = 72;
              break;
            default:
              goto LABEL_79;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          case 6:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 92) |= 4u;
            while (1)
            {
              v53 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v53 & 0x7F) << v16;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_84;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_84:
            v46 = 44;
            goto LABEL_95;
          default:
            goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            *(a1 + 92) |= 1u;
            v49 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v49;
            goto LABEL_98;
          case 2:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 80;
            break;
          default:
            goto LABEL_79;
        }
      }

      v38 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_98:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t typeWithBMPBIntentType(uint64_t result)
{
  if (result < 4)
  {
    return result;
  }

  v1 = __biome_log_for_category();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    typeWithBMPBIntentType_cold_1();
  }

  return 0;
}

uint64_t interactionDirectionWithPB(uint64_t result)
{
  if (result < 4)
  {
    return result;
  }

  v1 = __biome_log_for_category();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    interactionDirectionWithPB_cold_1();
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.add(library:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  closure #1 in static UnifiedLibrary.Library.add(library:)(&v4[4], a1, a2);
  os_unfair_lock_unlock(v4 + 6);
}

void type metadata accessor for Int64?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t static UnifiedLibrary.set(bmLibraryStreamBasesFunc:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0();
  }

  return a3(a1, a2);
}

void *__getBiomeLibraryNodeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E6E53B20;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_1;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_1)
  {
    __getBiomeLibraryNodeSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BiomeLibraryNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryNodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void closure #1 in variable initialization expression of static UnifiedLibrary.initializedLibrary()
{
  v0 = objc_opt_self();
  v8 = protocol witness for static LibraryBase.databaseResourceIdentifier(legacyViewName:) in conformance UnifiedLibrary.Library;
  v9 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?);
  v7 = &block_descriptor_0;
  v1 = _Block_copy(&v4);

  [v0 setLegacyViewResourceMappingCallback_];
  _Block_release(v1);
  v8 = protocol witness for static LibraryBase.streamIdentifier(legacyStreamName:) in conformance UnifiedLibrary.Library;
  v9 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?);
  v7 = &block_descriptor_24;
  v2 = _Block_copy(&v4);

  [v0 setLegacyStreamNameMappingCallback_];
  _Block_release(v2);
  v8 = protocol witness for static LibraryBase.streamIdentifier(uuidString:) in conformance UnifiedLibrary.Library;
  v9 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?);
  v7 = &block_descriptor_27;
  v3 = _Block_copy(&v4);

  [v0 setUUIDStreamNameMappingCallback_];
  _Block_release(v3);
}

uint64_t static UnifiedLibrary.add(library:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0();
  }

  return static UnifiedLibrary.Library.add(library:)(a1, a2);
}

uint64_t one-time initialization function for lockedLibraries()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay12BiomeStreams11LibraryBase_pXpGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay12BiomeStreams11LibraryBase_pXpGSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  static UnifiedLibrary.Library.lockedLibraries = result;
  return result;
}

uint64_t closure #1 in static UnifiedLibrary.Library.add(library:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = (*result + 32);
  v7 = *(*result + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 2;
    if (v8 == a2)
    {
      return result;
    }
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v9 = *(*v5 + 16);
  result = specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v10 = *v5;
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *v5 = v10;
  return result;
}

id BMConvertObjectToJSONString(void *a1, void *a2)
{
  v3 = a1;
  if (!v3 || ([MEMORY[0x1E695DFB0] null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v3))
  {
    v8 = 0;
  }

  else
  {
    v11 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v11];
    v6 = v11;
    v7 = v6;
    if (v5)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    }

    else if (a2)
    {
      v9 = v6;
      v8 = 0;
      *a2 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id __BMEventBookmarkSQLColumns_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  v3 = [v2 streamId];

  return v3;
}

id __BMEventBookmarkSQLColumns_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  v3 = [v2 segmentName];

  return v3;
}

uint64_t __BMEventBookmarkSQLColumns_block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  (*(*(a1 + 32) + 16))();

  return [v1 numberWithDouble:?];
}

double __BMEventBookmarkSQLColumns_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  [v2 iterationStartTime];
  v4 = v3;

  return v4;
}

uint64_t __BMEventBookmarkSQLColumns_block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedLong:v2];
}

uint64_t __BMEventBookmarkSQLColumns_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];
  v3 = [v2 offset];

  return v3;
}

uint64_t BiomeLibraryInternalLibrary()
{
  v1 = 0;
  result = BiomeLibraryInternalLibraryCore();
  if (!result)
  {
    BiomeLibraryInternalLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for ResultColumn);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for AggregationFunction);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SQLExpression);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for StorableValue);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for Schema);
}