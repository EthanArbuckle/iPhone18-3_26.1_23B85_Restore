uint64_t getEnumTagSinglePayload for SQLDatabaseError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLDatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SQLDatabaseHandle()
{
  result = type metadata singleton initialization cache for SQLDatabaseHandle;
  if (!type metadata singleton initialization cache for SQLDatabaseHandle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SQLDatabaseHandle()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLResultSet(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SQLDatabase(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SQLDatabase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError()
{
  result = lazy protocol witness table cache variable for type SQLDatabaseError and conformance SQLDatabaseError;
  if (!lazy protocol witness table cache variable for type SQLDatabaseError and conformance SQLDatabaseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDatabaseError and conformance SQLDatabaseError);
  }

  return result;
}

unint64_t type metadata accessor for BMResourceSpecifier()
{
  result = lazy cache variable for type metadata for BMResourceSpecifier;
  if (!lazy cache variable for type metadata for BMResourceSpecifier)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BMResourceSpecifier);
  }

  return result;
}

uint64_t DatabaseWithAccess.deinit()
{
  v1 = v0;
  v2 = sqlite3_close_v2(*(v0 + 16));
  if (v2)
  {
    v3 = BMSQLDatabaseError(v2, *(v0 + 16), 0);
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = v5;

    v18[0] = v4;
    v18[1] = v6;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v9 = v8;

    if (one-time initialization token for SQL != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.SQL);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v18);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1848EE000, v11, v12, "SQLExpressionEvaluator: Failed to close database connection with error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1865F7B70](v14, -1, -1);
      MEMORY[0x1865F7B70](v13, -1, -1);
    }

    else
    {
    }
  }

  v16 = *(v1 + 24);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t DatabaseWithAccess.__deallocating_deinit()
{
  v0 = DatabaseWithAccess.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t IncrementalViewManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  IncrementalViewManager.init()();
  return v3;
}

uint64_t IncrementalViewManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v117 = v4;
  v118 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v116 = (&v91 - v7);
  v95 = type metadata accessor for DatabaseCatalog();
  v8 = OUTLINED_FUNCTION_2_1(v95);
  v94 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v104 = v13 - v12;
  v14 = type metadata accessor for Logger();
  v15 = OUTLINED_FUNCTION_2_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  v23 = type metadata accessor for OSSignposter();
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v31 = v30 - v29;
  v32 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses;
  type metadata accessor for DatabaseWithAccess();
  *(v1 + v32) = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for compute != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_9_1();
    swift_once();
  }

  v33 = __swift_project_value_buffer(v14, static Logging.compute);
  (*(v17 + 16))(v22, v33, v14);
  OSSignposter.init(logger:)();
  (v26[4])(v1 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter, v31, v23);
  v120[3]._rawValue = &unk_1EF2A1310;
  v120[4]._rawValue = lazy protocol witness table accessor for type IPCSFeatureFlag and conformance IPCSFeatureFlag();
  v34 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  *(v1 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_useCache) = (v34 & 1) == 0;
  type metadata accessor for SQLExpressionEvaluator();
  v23 = swift_allocObject();
  v35 = SQLExpressionEvaluator.init(isReadOnly:)(1);
  v107 = 0;
  v26 = v35;
  v93 = BiomeLibraryNodeBridge();
  v92 = BiomeLibraryNodeBridge();
  v36 = [v92 allStreams];
  type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMStreamBase, off_1E6E52140);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v120[0]._rawValue = MEMORY[0x1E69E7CC0];
  v38 = specialized Array._getCount()(v37);
  v14 = 0;
  v102 = v37 & 0xC000000000000001;
  v103 = v38;
  v101 = v37 & 0xFFFFFFFFFFFFFF8;
  v96 = v37;
  v100 = v37 + 32;
  v114 = 2;
  v112 = 1;
  v113 = 0;
  v110 = 4;
  v111 = 3;
  v22 = &selRef_referrerBundleID;
  v109 = 6;
  v115 = 5;
  v108 = 7;
  v97 = xmmword_184D29A90;
  v17 = v104;
  v99 = v1;
  v98 = v26;
  while (v14 != v103)
  {
    if (v102)
    {
      v39 = MEMORY[0x1865F65C0](v14, v96);
    }

    else
    {
      if (v14 >= *(v101 + 16))
      {
        goto LABEL_43;
      }

      v39 = *(v100 + 8 * v14);
    }

    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v105 = v39;
    v106 = v14;
    v41 = [v39 schema];
    v42 = [v41 columns];

    type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMSQLColumn, off_1E6E51FA0);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v63 = v22;
      }

      else
      {
        v63 = v22 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = MEMORY[0x1865F6650](v63);
      if (!v14)
      {
LABEL_32:

        v44 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }
    }

    else
    {
      v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    v119[0] = MEMORY[0x1E69E7CC0];
    v23 = v119;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      goto LABEL_44;
    }

    v43 = 0;
    v44 = v119[0];
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1865F65C0](v43, v22);
      }

      else
      {
        v45 = *(v22 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = *(v118 + 48);
      v48 = [v45 name];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = v116;
      *v116 = v49;
      v52[1] = v51;
      v53 = v52;
      v54 = [v46 dataType];

      v55 = type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12(v55);
      v57 = v115;
      switch(v54)
      {
        case 0uLL:
          v57 = v113;
          break;
        case 1uLL:
          v57 = v112;
          break;
        case 2uLL:
          v57 = v114;
          break;
        case 3uLL:
          v57 = v111;
          break;
        case 4uLL:
          v57 = v110;
          break;
        case 5uLL:
          break;
        case 6uLL:
          v57 = v109;
          break;
        default:
          v57 = v108;
          break;
      }

      (*(v56 + 104))(v53 + v47, v57);
      v119[0] = v44;
      v59 = *(v44 + 16);
      v58 = *(v44 + 24);
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
        v44 = v119[0];
      }

      ++v43;
      *(v44 + 16) = v59 + 1;
      v60 = *(v117 + 80);
      OUTLINED_FUNCTION_19_0();
      outlined init with take of UUID?(v53, v44 + v61 + *(v62 + 72) * v59, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    }

    while (v14 != v43);

LABEL_33:
    v64 = v107;
    if (*(v44 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      OUTLINED_FUNCTION_25_0();
      v65 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC8];
    }

    v119[0] = v65;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v44, 1, v119);
    v107 = v64;
    if (v64)
    {
      swift_unexpectedError();
      __break(1u);
      goto LABEL_47;
    }

    v66._rawValue = v119[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
    OUTLINED_FUNCTION_84();
    Description = type metadata accessor for Schema()[-1].Description;
    v68 = Description[9];
    v69 = (*(Description + 80) + 32) & ~*(Description + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v97;
    v22 = &selRef_referrerBundleID;
    v70 = v105;
    v71 = [v105 schema];
    v72 = [v71 tableName];

    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76._countAndFlagsBits = v73;
    v76._object = v75;
    v121 = Schema.init(tableName:columns:)(v76, v66);
    v77 = [v70 schema];
    v78 = [v77 tableName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = String.lowercased()();

    Schema.init(tableName:columns:)(v79, v66);

    v23 = v120;
    specialized Array.append<A>(contentsOf:)(v31, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for Schema);
    v17 = v104;
    v26 = v98;
    v14 = v106;
    v1 = v99;
  }

  DatabaseCatalog.init(schemas:)(v120[0]);
  swift_unknownObjectRelease();
  v64 = v107;
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_3_9();
    swift_once();
  }

  v80 = static UnifiedLibrary.Library.orderedDataflows.getter();
  MEMORY[0x1EEE9AC00](v80);
  v81 = v93;
  *(&v91 - 4) = v17;
  *(&v91 - 3) = v81;
  v89 = v26;
  v82 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in IncrementalViewManager.init(), (&v91 - 6), v80);
  if (!v64)
  {
    v83 = v82;
    swift_unknownObjectRelease();

    *(v1 + 16) = v83;
    *(v1 + 24) = v26;
    v84 = OUTLINED_FUNCTION_21_0();
    v85(v84);
    return v1;
  }

LABEL_47:
  v107 = v64;

  swift_unknownObjectRelease();

  v87 = OUTLINED_FUNCTION_21_0();
  v88(v87);
  v120[0]._rawValue = 0;
  v120[1]._rawValue = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1865F6280](0xD00000000000002CLL, 0x8000000184DDBB10);
  v119[0] = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v90 = 0;
  v89 = 87;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in IncrementalViewManager.init()(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a4;
  v122 = a3;
  v132 = a5;
  v133[15] = *MEMORY[0x1E69E9840];
  v116 = type metadata accessor for FromClause();
  Description = v116[-1].Description;
  v8 = Description[8];
  MEMORY[0x1EEE9AC00](v116);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser6SchemaVSgMd, &_s14BiomeSQLParser6SchemaVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v108 - v13;
  v120 = type metadata accessor for SelectCore();
  v119 = v120[-1].Description;
  v14 = v119[8];
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SelectCorePhysicalPlan(0);
  v16 = *(*(v114 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v114);
  v113 = (&v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v108 - v19;
  v131 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v20 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v121 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LogicalPlanType();
  v23 = v22[-1].Description;
  v24 = v23[8];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for MaterializedView();
  v126 = v127[-1].Description;
  v27 = v126[8];
  v28 = MEMORY[0x1EEE9AC00](v127);
  v124 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v125 = &v108 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser11LogicalPlanVSgMd, &_s14BiomeSQLParser11LogicalPlanVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v108 - v33;
  v35 = type metadata accessor for LogicalPlan();
  v129 = v35[-1].Description;
  v130 = v35;
  v36 = v129[8];
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[6];
  v39 = a1[7];
  v40 = a1[13];
  v110 = a1[12];
  v123 = v40;
  v42 = a1[14];
  v41 = a1[15];
  v43 = v38 == 0xD000000000000010 && 0x8000000184DDBE90 == v39;
  if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    parse(sql:catalog:)(v42, v41, a2);
    if (!v5)
    {
      if (*(v44 + 16) != 1)
      {

        goto LABEL_12;
      }

      specialized Collection.first.getter(v44, v34);

      v45 = v130;
      if (__swift_getEnumTagSinglePayload(v34, 1, v130) == 1)
      {
        outlined destroy of UUID?(v34, &_s14BiomeSQLParser11LogicalPlanVSgMd, &_s14BiomeSQLParser11LogicalPlanVSgMR);
LABEL_12:
        lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
        swift_allocError();
        *v46 = v42;
        *(v46 + 8) = v41;
        *(v46 + 16) = 1;
        swift_willThrow();

        goto LABEL_13;
      }

      v48 = v129[4];
      v109 = v23;
      v49 = v128;
      v48(v128, v34, v45);
      v50 = v49;
      v51 = v109;
      LogicalPlan.plan.getter(v26);
      if ((v51[11])(v26, v22) != 1)
      {
        (v129[1])(v50, v130);
        (v51[1])(v26, v22);
        goto LABEL_12;
      }

      (v51[12])(v26, v22);
      v52 = v126;
      v53 = v125;
      v54 = v127;
      (v126[4])(v125, v26, v127);
      v55 = v52[2];
      v56 = v124;
      v55(v124, v53, v54);
      v57 = v121;
      v55(v121, v56, v54);
      v58 = v122;
      swift_unknownObjectRetain();

      v59 = v118;
      MaterializedView.select.getter(v118);
      SelectCore.from.getter(v10);
      v60 = FromClause.schemas.getter();
      (Description[1])(v10, v116);
      v61 = v117;
      specialized Collection.first.getter(v60, v117);

      v62 = type metadata accessor for Schema();
      if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
      {
        outlined destroy of UUID?(v61, &_s14BiomeSQLParser6SchemaVSgMd, &_s14BiomeSQLParser6SchemaVSgMR);

        v63 = 0;
        v64 = 0;
LABEL_29:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        swift_allocError();
        *v87 = v63;
        *(v87 + 8) = v64;
        *(v87 + 64) = 5;
        swift_willThrow();
        swift_unknownObjectRelease();
        (v119[1])(v59, v120);
        v88 = v126[1];
        v89 = v127;
        v88(v124, v127);
        v88(v125, v89);
        (v129[1])(v128, v130);
        v88(v57, v89);
        goto LABEL_13;
      }

      v63 = Schema.tableName.getter();
      v64 = v65;
      (*(v62[-1].Description + 1))(v61, v62);

      v66 = MEMORY[0x1865F6160](v63, v64);
      v133[0] = 0;
      v67 = [v58 streamWithIdentifier:v66 error:v133];

      if (!v67)
      {
        v85 = v133[0];

        v86 = _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_29;
      }

      v68 = v133[0];

      v69 = v114;
      v70 = v113;
      (v119[2])(v113 + *(v114 + 20), v59, v120);
      *(v70 + *(v69 + 24)) = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_184D29AA0;
      *(inited + 32) = v63;
      *(inited + 40) = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
      v72 = static _SetStorage.allocate(capacity:)();
      v73 = v72 + 56;
      v75 = *(inited + 32);
      v74 = *(inited + 40);
      v76 = *(v72 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v77 = Hasher._finalize()();
      v78 = ~(-1 << *(v72 + 32));
      while (1)
      {
        v79 = v77 & v78;
        v80 = (v77 & v78) >> 6;
        v81 = *(v73 + 8 * v80);
        v82 = 1 << (v77 & v78);
        if ((v82 & v81) == 0)
        {
          break;
        }

        v83 = (*(v72 + 48) + 16 * v79);
        v84 = *v83 == v75 && v83[1] == v74;
        if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_32;
        }

        v77 = v79 + 1;
      }

      *(v73 + 8 * v80) = v82 | v81;
      v90 = (*(v72 + 48) + 16 * v79);
      *v90 = v75;
      v90[1] = v74;
      v91 = *(v72 + 16);
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (v92)
      {
        __break(1u);
      }

      *(v72 + 16) = v93;
LABEL_32:
      v94 = v121;
      v95 = v118;
      v97 = v128;
      v96 = v129;
      swift_unknownObjectRelease();
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      (v119[1])(v95, v120);
      v98 = v126[1];
      v99 = v127;
      v98(v124, v127);
      v98(v125, v99);
      (v96[1])(v97, v130);
      v100 = v113;
      *v113 = v72;
      v101 = v114;
      *(v100 + *(v114 + 28)) = 1024;
      v102 = v112;
      *(v100 + *(v101 + 32)) = v112;
      v103 = v111;
      outlined init with take of MaterializedViewPhysicalPlan(v100, v111);
      v104 = v131;
      outlined init with take of MaterializedViewPhysicalPlan(v103, v94 + *(v131 + 20));
      *(v94 + *(v104 + 24)) = v102;
      v105 = (v94 + *(v104 + 28));
      v106 = v123;
      *v105 = v110;
      v105[1] = v106;
      v107 = v132;
      outlined init with take of MaterializedViewPhysicalPlan(v94, v132);
      __swift_storeEnumTagSinglePayload(v107, 0, 1, v104);
      swift_retain_n();
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v131);
  }

LABEL_13:
  v47 = *MEMORY[0x1E69E9840];
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v25 = &v24 - v14;
  v15 = *(a3 + 16);
  v16 = (a3 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  if (v15)
  {
    while (1)
    {
      memcpy(__dst, v16, 0x80uLL);
      memcpy(v30, v16, sizeof(v30));
      outlined init with copy of Dataflow(__dst, v29);
      a1(v30);
      if (v3)
      {
        break;
      }

      memcpy(v29, v30, sizeof(v29));
      outlined destroy of Dataflow(v29);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        outlined destroy of UUID?(v9, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
      }

      else
      {
        v18 = v25;
        outlined init with take of MaterializedViewPhysicalPlan(v9, v25);
        outlined init with take of MaterializedViewPhysicalPlan(v18, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v17 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v21;
        }

        v19 = *(v17 + 16);
        if (v19 >= *(v17 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v22;
        }

        *(v17 + 16) = v19 + 1;
        outlined init with take of MaterializedViewPhysicalPlan(v28, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19);
        a1 = v27;
      }

      v16 += 128;
      if (!--v15)
      {
        return v17;
      }
    }

    memcpy(v29, v30, sizeof(v29));
    outlined destroy of Dataflow(v29);
  }

  return v17;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalViewManager.clearAndRegenerate(viewName:databaseName:streamIdentifier:)(Swift::String viewName, Swift::String databaseName, Swift::String streamIdentifier)
{
  countAndFlagsBits = streamIdentifier._countAndFlagsBits;
  object = streamIdentifier._object;
  v5 = databaseName._object;
  v43 = viewName._countAndFlagsBits;
  v44 = databaseName._countAndFlagsBits;
  v6 = viewName._object;
  v7 = type metadata accessor for OSSignpostID();
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v42 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36[-v16];
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v41 = v3;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    v37 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v7;
    v45 = v22;
    *v21 = 136446722;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v45);
    *(v21 + 12) = 2082;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v5, &v45);
    *(v21 + 22) = 2082;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v6, &v45);
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v18, v37, v23, "IncrementalViewClearAndRegenerate", "stream:%{public}s database:%{public}s view:%{public}s", v21, 0x20u);
    swift_arrayDestroy();
    v7 = v38;
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
  }

  v24 = v42;
  (*(v42 + 16))(v14, v17, v7);
  v25 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_35_0(v25);
  v26 = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_3_9();
    swift_once();
  }

  v27 = v44;
  v28 = static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(v44, v5);
  v29 = v41;
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28);
    v30 = v43;
    *&v36[-64] = v29;
    *&v36[-56] = v30;
    *&v36[-48] = v6;
    *&v36[-40] = v31;
    *&v36[-32] = v32;
    *&v36[-24] = v27;
    *&v36[-16] = v5;
    v33 = v40;
    (*(v32 + 24))();
    if (!v33)
    {
      v35 = v29;
      goto LABEL_11;
    }
  }

  else
  {
    lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    OUTLINED_FUNCTION_63();
    *v34 = v27;
    *(v34 + 8) = v5;
    *(v34 + 16) = 0;
    swift_willThrow();
  }

  v35 = v29;
LABEL_11:
  $defer #1 () in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(v35, v26, "IncrementalViewClearAndRegenerate");

  (*(v24 + 8))(v17, v7);
}

uint64_t closure #1 in IncrementalViewManager.clear(viewName:databaseName:streamIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v96 = a7;
  v95 = a6;
  v103 = a5;
  v98 = a3;
  v104 = a1;
  v100 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v9 = *(v100 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v100);
  v102 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v93 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v99 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v93 - v19;
  if (one-time initialization token for compute != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logging.compute);

  v93 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  v25 = os_log_type_enabled(v23, v24);
  v101 = v20;
  v94 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v108 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, a2, &v108);
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, a4, &v108);
    _os_log_impl(&dword_1848EE000, v23, v24, "IncrementalViewManager: clearing materialized view for %s in %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865F7B70](v27, -1, -1);
    MEMORY[0x1865F7B70](v26, -1, -1);
  }

  v28 = 0;
  v29 = *(v103 + 16);
  v30 = *(v29 + 16);
  while (1)
  {
    if (v30 == v28)
    {
      v35 = 1;
      v30 = v101;
      goto LABEL_17;
    }

    if (v28 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    outlined init with copy of MaterializedViewPhysicalPlan(v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, v14);
    MaterializedView.name.getter();
    v31 = String.lowercased()();

    v32 = String.lowercased()();
    if (v31._countAndFlagsBits == v32._countAndFlagsBits && v31._object == v32._object)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_16;
    }

    outlined destroy of MaterializedViewPhysicalPlan(v14);
    ++v28;
  }

LABEL_16:
  v30 = v101;
  outlined init with take of MaterializedViewPhysicalPlan(v14, v101);
  v35 = 0;
LABEL_17:
  v36 = v100;
  __swift_storeEnumTagSinglePayload(v30, v35, 1, v100);
  v37 = v99;
  outlined init with copy of Date?(v30, v99, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v36);
  v39 = v102;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of UUID?(v37, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
    lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    swift_allocError();
    *v40 = v104;
    *(v40 + 8) = a2;
    *(v40 + 16) = 3;
    swift_willThrow();

LABEL_26:
    v55 = v30;
    return outlined destroy of UUID?(v55, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  }

  outlined init with take of MaterializedViewPhysicalPlan(v37, v102);
  v41 = v97;
  v42 = IncrementalViewManager.cachedDatabaseWithAccess(for:)(v95, v96);
  if (v41)
  {
    v43 = v39;
LABEL_25:
    outlined destroy of MaterializedViewPhysicalPlan(v43);
    goto LABEL_26;
  }

  v44 = v42;
  v45 = *(v42 + 2);
  v46 = sqlite3_exec(v45, "begin", 0, 0, 0);
  if (v46)
  {
    v47 = BMSQLDatabaseError(v46, v45, 0);
    swift_getErrorValue();
    v48 = Error.localizedDescription.getter();
    v50 = v49;

    v108 = v48;
    v109 = v50;
    strcpy(v107, "BMSQLDatabase");
    v107[7] = -4864;
    v105 = 0x62617461444C5153;
    v106 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v51 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v53 = v52;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v54 = xmmword_184D29AB0;
    *(v54 + 16) = v51;
    *(v54 + 24) = v53;
    *(v54 + 32) = 1;
    goto LABEL_23;
  }

  v57._rawValue = *(v44 + 2);
  v58 = MaterializedView.name.getter();
  v60 = v59;
  v61._countAndFlagsBits = v58;
  v61._object = v60;
  IncrementalViewManager.clear(database:materializedViewName:)(v57, v61);
  v63 = v62;
  if (v62)
  {

    goto LABEL_32;
  }

  v64 = *(v44 + 2);
  v65 = sqlite3_exec(v64, "commit", 0, 0, 0);
  if (v65)
  {
    v66 = BMSQLDatabaseError(v65, v64, 0);
    swift_getErrorValue();
    v67 = Error.localizedDescription.getter();
    v69 = v68;

    v108 = v67;
    v109 = v69;
    strcpy(v107, "BMSQLDatabase");
    v107[7] = -4864;
    v105 = 0x62617461444C5153;
    v106 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v72 = v71;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v63 = swift_allocError();
    *v73 = xmmword_184D29AC0;
    *(v73 + 16) = v70;
    *(v73 + 24) = v72;
    *(v73 + 32) = 1;
    swift_willThrow();
LABEL_32:
    v74 = *(v44 + 2);
    v75 = sqlite3_exec(v74, "rollback", 0, 0, 0);
    if (v75)
    {
      v76 = BMSQLDatabaseError(v75, v74, 0);
      swift_getErrorValue();
      v77 = Error.localizedDescription.getter();
      v79 = v78;

      v108 = v77;
      v109 = v79;
      strcpy(v107, "BMSQLDatabase");
      v107[7] = -4864;
      v105 = 0x62617461444C5153;
      v106 = 0xEB00000000657361;
      lazy protocol witness table accessor for type String and conformance String();
      v80 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v82 = v81;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v83 = xmmword_184D29AD0;
      *(v83 + 16) = v80;
      *(v83 + 24) = v82;
      *(v83 + 32) = 1;
      swift_willThrow();

      outlined destroy of MaterializedViewPhysicalPlan(v102);
      goto LABEL_26;
    }

LABEL_23:
    swift_willThrow();

LABEL_24:
    v43 = v102;
    goto LABEL_25;
  }

  v84 = v94;

  v14 = Logger.logObject.getter();
  v85 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v14, v85))
  {
LABEL_38:

    goto LABEL_24;
  }

  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v108 = v87;
  *v86 = 136315650;
  *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, a2, &v108);
  *(v86 + 12) = 2080;
  *(v86 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v84, &v108);
  *(v86 + 22) = 2080;
  v88 = [*(v44 + 3) description];
  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v90;

  v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v108);

  *(v86 + 24) = v92;
  _os_log_impl(&dword_1848EE000, v14, v85, "IncrementalViewManager: cleared materialized views for %s in %s.Access assertion: %s", v86, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865F7B70](v87, -1, -1);
  MEMORY[0x1865F7B70](v86, -1, -1);

  outlined destroy of MaterializedViewPhysicalPlan(v102);
  v55 = v101;
  return outlined destroy of UUID?(v55, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalViewManager.clear(database:materializedViewName:)(Swift::OpaquePointer database, Swift::String materializedViewName)
{
  object = materializedViewName._object;
  countAndFlagsBits = materializedViewName._countAndFlagsBits;
  _StringGuts.grow(_:)(23);

  MEMORY[0x1865F6280](countAndFlagsBits, object);
  String.utf8CString.getter();
  OUTLINED_FUNCTION_13_1();
  v10 = sqlite3_exec(v5, v6, v7, v8, v9);

  if (v10)
  {
    v11 = BMSQLDatabaseError(v10, database._rawValue, 0);
    swift_getErrorValue();
    Error.localizedDescription.getter();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_13_1();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    OUTLINED_FUNCTION_63();
    *v15 = 0xD000000000000015;
    *(v15 + 8) = 0x8000000184DDBE10;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = 1;
    swift_willThrow();
  }

  else
  {

    type metadata accessor for QueryPlannerMetadata(0);
    static QueryPlannerMetadata.clearMetadata(materializedViewName:database:)();
  }
}

uint64_t closure #1 in IncrementalViewManager.clearAndRegenerate(viewName:databaseName:streamIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v72 = a7;
  v71 = a6;
  v74 = a5;
  v73 = a4;
  v81 = a2;
  v78 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v9 = *(v78 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v78);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v79 = a1;
  v80 = &v70 - v20;
  v21 = 0;
  v22 = *(a1 + 16);
  v23 = *(v22 + 16);
  while (1)
  {
    if (v23 == v21)
    {
      v28 = 1;
      v29 = v80;
      goto LABEL_13;
    }

    if (v21 >= *(v22 + 16))
    {
      break;
    }

    outlined init with copy of MaterializedViewPhysicalPlan(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v14);
    MaterializedView.name.getter();
    v24 = String.lowercased()();

    v25 = String.lowercased()();
    if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
    {

LABEL_12:
      v29 = v80;
      outlined init with take of MaterializedViewPhysicalPlan(v14, v80);
      v28 = 0;
LABEL_13:
      v30 = v78;
      __swift_storeEnumTagSinglePayload(v29, v28, 1, v78);
      v31 = v77;
      outlined init with copy of Date?(v29, v77, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
      if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
      {
        outlined destroy of UUID?(v31, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
        lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
        swift_allocError();
        *v32 = v81;
        *(v32 + 8) = a3;
        *(v32 + 16) = 3;
        swift_willThrow();

        return outlined destroy of UUID?(v29, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
      }

      v33 = v76;
      outlined init with take of MaterializedViewPhysicalPlan(v31, v76);
      v34 = v75;
      v35 = IncrementalViewManager.cachedDatabaseWithAccess(for:)(v73, v74);
      if (!v34)
      {
        v36 = *(v35 + 2);

        v37 = sqlite3_exec(v36, "begin", 0, 0, 0);
        if (v37)
        {
          v38 = BMSQLDatabaseError(v37, v36, 0);
          swift_getErrorValue();
          v39 = Error.localizedDescription.getter();
          v41 = v40;

          v85 = v39;
          v86 = v41;
          strcpy(v84, "BMSQLDatabase");
          v84[7] = -4864;
          v82 = 0x62617461444C5153;
          v83 = 0xEB00000000657361;
          lazy protocol witness table accessor for type String and conformance String();
          v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v44 = v43;

          lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
          swift_allocError();
          *v45 = xmmword_184D29AB0;
          *(v45 + 16) = v42;
          *(v45 + 24) = v44;
          *(v45 + 32) = 1;
          goto LABEL_18;
        }

        v46 = MaterializedView.name.getter();
        v48 = v47;
        v49._countAndFlagsBits = v46;
        v49._object = v48;
        IncrementalViewManager.clear(database:materializedViewName:)(v36, v49);
        v51 = v50;
        if (v50)
        {

          goto LABEL_25;
        }

        IncrementalViewManager.update(database:materializedViewPlan:databaseName:)(v36, v33, v71, v72);
        v52 = sqlite3_exec(v36, "commit", 0, 0, 0);
        if (v52)
        {
          v53 = BMSQLDatabaseError(v52, v36, 0);
          swift_getErrorValue();
          v54 = Error.localizedDescription.getter();
          v56 = v55;

          v85 = v54;
          v86 = v56;
          strcpy(v84, "BMSQLDatabase");
          v84[7] = -4864;
          v82 = 0x62617461444C5153;
          v83 = 0xEB00000000657361;
          lazy protocol witness table accessor for type String and conformance String();
          v57 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v59 = v58;

          lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
          v51 = swift_allocError();
          *v60 = xmmword_184D29AC0;
          *(v60 + 16) = v57;
          *(v60 + 24) = v59;
          *(v60 + 32) = 1;
          swift_willThrow();
LABEL_25:
          v61 = sqlite3_exec(v36, "rollback", 0, 0, 0);
          if (v61)
          {
            v62 = BMSQLDatabaseError(v61, v36, 0);
            swift_getErrorValue();
            v63 = Error.localizedDescription.getter();
            v65 = v64;

            v85 = v63;
            v86 = v65;
            strcpy(v84, "BMSQLDatabase");
            v84[7] = -4864;
            v82 = 0x62617461444C5153;
            v83 = 0xEB00000000657361;
            lazy protocol witness table accessor for type String and conformance String();
            v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v68 = v67;

            lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
            swift_allocError();
            *v69 = xmmword_184D29AD0;
            *(v69 + 16) = v66;
            *(v69 + 24) = v68;
            *(v69 + 32) = 1;
            swift_willThrow();

            outlined destroy of MaterializedViewPhysicalPlan(v33);
            return outlined destroy of UUID?(v29, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
          }

LABEL_18:
          swift_willThrow();
        }
      }

      outlined destroy of MaterializedViewPhysicalPlan(v33);
      return outlined destroy of UUID?(v29, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_12;
    }

    result = outlined destroy of MaterializedViewPhysicalPlan(v14);
    ++v21;
  }

  __break(1u);
  return result;
}

uint64_t IncrementalViewManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter;
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses);

  return v0;
}

uint64_t IncrementalViewManager.__deallocating_deinit()
{
  IncrementalViewManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t IncrementalViewManager.UpdateError.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(48);

      OUTLINED_FUNCTION_14_0();
      v6 = v8 + 23;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(52);
      MEMORY[0x1865F6280](0xD000000000000031, 0x8000000184DDBD60);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_14_0();
      goto LABEL_7;
    case 4:
      return 0xD000000000000021;
    default:
      OUTLINED_FUNCTION_3_8();
      _StringGuts.grow(_:)(31);

      OUTLINED_FUNCTION_14_0();
      v6 = v5 + 6;
LABEL_7:
      v9 = v6;
LABEL_8:
      MEMORY[0x1865F6280](a1, a2);
      MEMORY[0x1865F6280](34, 0xE100000000000000);
      return v9;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type IPCSFeatureFlag and conformance IPCSFeatureFlag()
{
  result = lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag;
  if (!lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag;
  if (!lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IPCSFeatureFlag and conformance IPCSFeatureFlag);
  }

  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v6 = type metadata accessor for SQLDataType();
  Description = v6[-1].Description;
  v8 = *(Description + 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = (v42 - v15);
  v49 = *(a1 + 16);
  if (!v49)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = a1;
  v16 = 0;
  v48 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v46 = Description;
  v47 = v17;
  v51 = (Description + 32);
  v44 = v10;
  v45 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v50;
    outlined init with copy of Date?(v48 + *(v14 + 72) * v16, v50, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    v21 = v19[1];
    v55 = *v19;
    v20 = v55;
    v56 = v21;
    v22 = *v51;
    (*v51)(v10, v19 + v47, v6);
    v23 = *v52;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a2)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
      _NativeDictionary.copy()();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = *v52;
    *(*v52 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v35 = (v34[6] + 16 * v25);
    *v35 = v20;
    v35[1] = v21;
    v6 = v45;
    v36 = v34[7] + *(v46 + 9) * v25;
    v10 = v44;
    v22(v36, v44, v45);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v16;
    v34[2] = v39;
    a2 = 1;
    a1 = v43;
    v14 = v18;
    if (v49 == v16)
    {
      goto LABEL_13;
    }
  }

  v30 = v52;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a2 & 1);
  v31 = *v30;
  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v25 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();

  v57 = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v46 + 1))(v44, v45);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1865F6280](0xD00000000000001BLL, 0x8000000184DDBED0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F6280](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError()
{
  result = lazy protocol witness table cache variable for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError;
  if (!lazy protocol witness table cache variable for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError);
  }

  return result;
}

uint64_t type metadata accessor for IncrementalViewManager()
{
  result = type metadata singleton initialization cache for IncrementalViewManager;
  if (!type metadata singleton initialization cache for IncrementalViewManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for IncrementalViewManager()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12BiomeStreams22IncrementalViewManagerC11UpdateErrorO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for IncrementalViewManager.UpdateError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalViewManager.UpdateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for IncrementalViewManager.UpdateError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for IPCSFeatureFlag(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SQLExpressionEvaluatorError.description.getter()
{
  v0 = type metadata accessor for SQLExpression();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = type metadata accessor for SQLExpressionEvaluatorError();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  outlined init with copy of SQLExpressionEvaluatorError();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionV10expression_SS7messagetMd, &_s14BiomeSQLParser13SQLExpressionV10expression_SS7messagetMR) + 48));
    v18 = *v16;
    v17 = v16[1];
    v19 = OUTLINED_FUNCTION_17_0();
    v20(v19);
    _StringGuts.grow(_:)(48);
    MEMORY[0x1865F6280](0xD00000000000002ALL, 0x8000000184DDBF40);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F6280](8238, 0xE200000000000000);
    MEMORY[0x1865F6280](v18, v17);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_17_0();
    v22(v21);
    _StringGuts.grow(_:)(27);
    MEMORY[0x1865F6280](0xD000000000000019, 0x8000000184DDBF70);
    _print_unlocked<A, B>(_:_:)();
  }

  (*(v3 + 8))(v8, v0);
  return 0;
}

uint64_t *SQLExpressionEvaluator.init(isReadOnly:)(char a1)
{
  v3 = v1;
  ppDb[1] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  ppDb[0] = 0;
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = sqlite3_open_v2(":memory:", ppDb, v5, 0);
  if (v6 || !ppDb[0])
  {
    v21 = BMSQLDatabaseError(v6, ppDb[0], 0);
    swift_getErrorValue();
    Error.localizedDescription.getter();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_3_10();
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v24 = v23;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    OUTLINED_FUNCTION_63();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    v1[3] = ppDb[0];
    *(v1 + 16) = 1;
    v1[4] = Dictionary.init(dictionaryLiteral:)();
    v7 = v1[3];
    v8 = OUTLINED_FUNCTION_16_1();
    v13 = OUTLINED_FUNCTION_18_0(v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_25_1(v13);
    swift_getErrorValue();
    Error.localizedDescription.getter();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_3_10();
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v17 = v16;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v18 = OUTLINED_FUNCTION_63();
    *v19 = 0xD000000000000054;
    v19[1] = v2;
    v19[2] = v15;
    v19[3] = v17;
    OUTLINED_FUNCTION_20_2(v18, v19);
    v20 = v3[4];
  }

  OUTLINED_FUNCTION_26_1();
  v26 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t type metadata accessor for SQLExpressionEvaluatorError()
{
  result = type metadata singleton initialization cache for SQLExpressionEvaluatorError;
  if (!type metadata singleton initialization cache for SQLExpressionEvaluatorError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v10 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs13OpaquePointerVGMd, &_ss17_NativeDictionaryVySSs13OpaquePointerVGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  _NativeDictionary._delete(at:)();
  *v3 = v14;
  return v12;
}

uint64_t outlined init with take of (offset: Int, element: StorableValue)()
{
  OUTLINED_FUNCTION_1_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_81();
  v7(v6);
  return v0;
}

unint64_t lazy protocol witness table accessor for type StorableValue and conformance StorableValue()
{
  result = lazy protocol witness table cache variable for type StorableValue and conformance StorableValue;
  if (!lazy protocol witness table cache variable for type StorableValue and conformance StorableValue)
  {
    type metadata accessor for StorableValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue and conformance StorableValue);
  }

  return result;
}

uint64_t outlined init with copy of UUID?()
{
  OUTLINED_FUNCTION_1_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_81();
  v7(v6);
  return v0;
}

void type metadata completion function for SQLExpressionEvaluatorError()
{
  type metadata accessor for (expression: SQLExpression)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (expression: SQLExpression, message: String)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (expression: SQLExpression)()
{
  if (!lazy cache variable for type metadata for (expression: SQLExpression))
  {
    v0 = type metadata accessor for SQLExpression();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (expression: SQLExpression));
    }
  }
}

void type metadata accessor for (expression: SQLExpression, message: String)()
{
  if (!lazy cache variable for type metadata for (expression: SQLExpression, message: String))
  {
    type metadata accessor for SQLExpression();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (expression: SQLExpression, message: String));
    }
  }
}

uint64_t one-time initialization function for numeratorKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static AVG.numeratorKey = v1;
  return result;
}

uint64_t one-time initialization function for denominatorKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static AVG.denominatorKey = v1;
  return result;
}

void AVG.getCurrentAggregationEvent()()
{
  OUTLINED_FUNCTION_212();
  v4 = OUTLINED_FUNCTION_107_0();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_33_1();
  v15 = type metadata accessor for StorableValue(v14);
  v16 = OUTLINED_FUNCTION_47(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v31 - v20);
  v22 = type metadata accessor for AVG(0);
  v23 = *(v0 + v22[8]);
  if (v23)
  {
    v24 = *(v0 + v22[7]) / v23;
    *(&v32 + 1) = MEMORY[0x1E69E63B0];
    *&v31 = v24;
    v25 = v22[6];
    v26 = *(v7 + 16);
    v26(v12, v0 + v25, v4);
    StorableValue.init(_:dataType:)(&v31, v12, v2);
    if (!v1)
    {
      v27 = OUTLINED_FUNCTION_27_0();
      v26(v27, v0 + v25, v4);
LABEL_6:
      OUTLINED_FUNCTION_3_11();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v28 = v22[6];
    v29 = *(v7 + 16);
    v29(v3, v0 + v28, v4);
    StorableValue.init(_:dataType:)(&v31, v3, v21);
    if (!v1)
    {
      v30 = OUTLINED_FUNCTION_27_0();
      v29(v30, v0 + v28, v4);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

void AVG.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_121();
  v11 = OUTLINED_FUNCTION_200(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_43();
  v140 = type metadata accessor for Date();
  v15 = OUTLINED_FUNCTION_2_1(v140);
  v138 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = OUTLINED_FUNCTION_47(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_205();
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_33_1();
  v30 = type metadata accessor for AggregationEvent(v29);
  v31 = OUTLINED_FUNCTION_47(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  AVG.getCurrentAggregationEvent()();
  if (!v142)
  {
    v34 = type metadata accessor for AVG(0);
    v35 = v0 + *(v34 + 20);
    SQLExpressionEvaluator.execute(expression:payload:)(v4);
    v141 = v34;
    v36 = v0;
    OUTLINED_FUNCTION_1_17();
    outlined init with copy of StorableValue();
    v37 = v139;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_179();
        if ((v60 & 1) == 0)
        {
          v61 = *v59;
          OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_31_1(v62, v63, v64);
          if (!v47)
          {
            goto LABEL_64;
          }

          __break(1u);
          goto LABEL_19;
        }

        goto LABEL_65;
      case 2u:
LABEL_19:
        outlined init with take of UUID?(v1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_86_0();
        outlined init with copy of Date?(v65, v66, v67, &_s10Foundation4DateVSgMR);
        v68 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_92(v68, v69, v140);
        if (v56)
        {
          v70 = OUTLINED_FUNCTION_113();
          outlined destroy of UUID?(v70, v71, &_s10Foundation4DateVSgMR);
          outlined destroy of UUID?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v93 = *(v138 + 32);
          v0 = v2;
          v94 = OUTLINED_FUNCTION_108();
          v95(v94);
          Date.timeIntervalSince1970.getter();
          v97 = v96;
          v98 = *(v138 + 8);
          v99 = OUTLINED_FUNCTION_50();
          v100(v99);
          outlined destroy of UUID?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          *(v36 + *(v141 + 28)) = v97 + *(v36 + *(v141 + 28));
          v101 = *(v141 + 32);
          v102 = *(v36 + v101);
          v47 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v47)
          {
            __break(1u);
            goto LABEL_83;
          }

          *(v36 + v101) = v103;
        }

        goto LABEL_65;
      case 3u:
        goto LABEL_7;
      case 4u:
        OUTLINED_FUNCTION_177();
        if (!v0)
        {
          goto LABEL_65;
        }

        v79 = *v78;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v80);
        OUTLINED_FUNCTION_8_2();
        if ((v0 & 0x1000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if ((v0 & 0x2000000000000000) == 0)
        {
          if ((v83 & 0x1000000000000000) == 0)
          {
LABEL_81:
            OUTLINED_FUNCTION_162();
            _StringGuts._slowWithCString<A>(_:)();

            goto LABEL_54;
          }

          OUTLINED_FUNCTION_95_0();
          if (!v56 & v55 || (OUTLINED_FUNCTION_94_0(), (v84 & 1) == 0))
          {
            v85 = _swift_stdlib_strtod_clocale();
            if (v85)
            {
              OUTLINED_FUNCTION_93_0(v85);
            }
          }

          goto LABEL_53;
        }

        OUTLINED_FUNCTION_23_1(v81, v82, v83);
        if (!(!v56 & v55))
        {
          switch(v106)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_71;
            default:
              goto LABEL_53;
          }
        }

        if (v107 == 32)
        {
          goto LABEL_53;
        }

LABEL_71:
        v127 = OUTLINED_FUNCTION_163();
        if (!v127)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_209(v127);
        OUTLINED_FUNCTION_137();
        goto LABEL_54;
      case 5u:
        if (v1[1] >> 60 == 15)
        {
          goto LABEL_65;
        }

        v86 = *v1;
        static String.Encoding.utf8.getter();
        OUTLINED_FUNCTION_112();
        String.init(data:encoding:)();
        if (!v87)
        {
          v108 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v108, v109);
          v112 = OUTLINED_FUNCTION_178();
          goto LABEL_63;
        }

        v37 = v87;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v88);
        OUTLINED_FUNCTION_8_2();
        if ((v37 & 0x1000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if ((v37 & 0x2000000000000000) != 0)
        {
          goto LABEL_57;
        }

        if ((v89 & 0x1000000000000000) == 0)
        {
          goto LABEL_84;
        }

        switch(*((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
        {
          case 0:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            goto LABEL_38;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            goto LABEL_77;
          default:
            if (*((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 32)
            {
              goto LABEL_38;
            }

LABEL_77:
            v132 = _swift_stdlib_strtod_clocale();
            if (v132)
            {
              v133 = *v132;
              v134 = OUTLINED_FUNCTION_112();
              outlined consume of Data?(v134, v135);
              v92 = v133 == 0;
            }

            else
            {
LABEL_38:
              v90 = OUTLINED_FUNCTION_112();
              outlined consume of Data?(v90, v91);
              v92 = 0;
            }

            break;
        }

        goto LABEL_60;
      case 6u:
        v72 = OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_31_1(v73, v72, v74);
        if (!v47)
        {
          *(v0 + v75) = v76;
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v1, v77);
          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_80;
      case 7u:
        goto LABEL_65;
      default:
        OUTLINED_FUNCTION_179();
        if (v39)
        {
          goto LABEL_65;
        }

        v40 = *v38;
        OUTLINED_FUNCTION_97_0();
        *(v0 + v43) = v42 + v41;
        v45 = *(v44 + 32);
        v46 = *(v0 + v45);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (!v47)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_7:
        OUTLINED_FUNCTION_177();
        if (!v0)
        {
          goto LABEL_65;
        }

        v50 = *v49;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v51);
        OUTLINED_FUNCTION_8_2();
        if ((v0 & 0x1000000000000000) != 0)
        {
          goto LABEL_80;
        }

        if ((v0 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_23_1(v52, v53, v54);
          if (!(!v56 & v55))
          {
            switch(v104)
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_68;
              default:
                goto LABEL_49;
            }
          }

          if (v105 == 32)
          {
            goto LABEL_49;
          }

LABEL_68:
          v126 = OUTLINED_FUNCTION_163();
          if (!v126)
          {
LABEL_49:

            goto LABEL_50;
          }

          OUTLINED_FUNCTION_209(v126);
          OUTLINED_FUNCTION_137();
        }

        else
        {
          if ((v54 & 0x1000000000000000) != 0)
          {
            OUTLINED_FUNCTION_95_0();
            if (!v56 & v55 || (OUTLINED_FUNCTION_94_0(), (v57 & 1) == 0))
            {
              v58 = _swift_stdlib_strtod_clocale();
              if (v58)
              {
                OUTLINED_FUNCTION_93_0(v58);
              }
            }

            goto LABEL_49;
          }

LABEL_80:
          OUTLINED_FUNCTION_162();
          _StringGuts._slowWithCString<A>(_:)();
        }

LABEL_50:
        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_31_1(v114, v115, v116);
        if (!v47)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_53:

LABEL_54:
        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_31_1(v117, v118, v119);
        if (!v47)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_57:
        OUTLINED_FUNCTION_28_1(v89, v37 & 0xFFFFFFFFFFFFFFLL);
        if (!(!v56 & v55))
        {
          switch(v120)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_74;
            default:
              goto LABEL_59;
          }
        }

        if (v121 == 32)
        {
          goto LABEL_59;
        }

LABEL_74:
        v128 = OUTLINED_FUNCTION_163();
        if (v128)
        {
          v129 = *v128;
          v130 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v130, v131);

          v92 = v129 == 0;
        }

        else
        {
LABEL_59:
          v122 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v122, v123);

          v92 = 0;
        }

        while (1)
        {
LABEL_60:
          v111 = v141;
          v112 = v144;
          if (!v92)
          {
            v112 = 0.0;
          }

          v110 = *(v141 + 28);
          v113 = *(v0 + v110);
LABEL_63:
          *(v0 + v110) = v112 + v113;
          v45 = *(v111 + 32);
          v124 = *(v0 + v45);
          v47 = __OFADD__(v124, 1);
          v48 = v124 + 1;
          if (!v47)
          {
            break;
          }

LABEL_83:
          __break(1u);
LABEL_84:
          OUTLINED_FUNCTION_162();
          _StringGuts._slowWithCString<A>(_:)();
          v136 = OUTLINED_FUNCTION_112();
          outlined consume of Data?(v136, v137);

          v92 = v143;
        }

LABEL_64:
        *(v0 + v45) = v48;
LABEL_65:
        AVG.getCurrentAggregationEvent()();
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v4, v125);
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
        break;
    }
  }

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_124();
}

uint64_t AVG.aggregationMetadata()()
{
  OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_64_0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_184D29A90;
  v7 = v6 + v1;
  v8 = v6 + v1 + *(v3 + 48);
  if (one-time initialization token for numeratorKey != -1)
  {
    OUTLINED_FUNCTION_82_0();
    swift_once();
  }

  v9 = OUTLINED_FUNCTION_142(&static AVG.numeratorKey);
  v10 = type metadata accessor for AVG(v9);
  OUTLINED_FUNCTION_68_0(v10);
  OUTLINED_FUNCTION_146();
  swift_storeEnumTagMultiPayload();
  v11 = *(v3 + 48);
  v12 = one-time initialization token for denominatorKey;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_81_0();
    swift_once();
  }

  v13 = (v7 + v5);
  v14 = v7 + v5 + v11;
  v15 = *(&static AVG.denominatorKey + 1);
  *v13 = static AVG.denominatorKey;
  v13[1] = v15;
  *v14 = *(v0 + *(v2 + 32));
  *(v14 + 8) = 0;
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_169();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVG.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_65_0();
  if (!*(v2 + 16))
  {
    v16 = type metadata accessor for AVG(0);
    v17 = 0;
    *(v1 + *(v16 + 28)) = 0;
    goto LABEL_13;
  }

  if (one-time initialization token for numeratorKey != -1)
  {
    OUTLINED_FUNCTION_82_0();
    swift_once();
    if (!*(v2 + 16))
    {
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_165(&static AVG.numeratorKey);
  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (one-time initialization token for denominatorKey != -1)
  {
    OUTLINED_FUNCTION_81_0();
    swift_once();
  }

  if (!*(v2 + 16))
  {
    goto LABEL_21;
  }

  v11 = OUTLINED_FUNCTION_109();
  specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_125();
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_26_2(v4);
  if (v14)
  {
    v15 = v4;
LABEL_11:
    outlined destroy of UUID?(v15, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    goto LABEL_21;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_20();
    v25 = v4;
LABEL_20:
    _s12BiomeStreams13StorableValueOWOhTm_0(v25, v24);
    goto LABEL_21;
  }

  if (*(v4 + 8))
  {
LABEL_21:
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v26 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_19_2(v26, v27);
    swift_willThrow();

    goto LABEL_22;
  }

  v19 = *v4;
  v16 = type metadata accessor for AVG(0);
  *(v1 + *(v16 + 28)) = v19;
  OUTLINED_FUNCTION_86_0();
  specialized Dictionary.subscript.getter(v20, v21, v22, v23);
  OUTLINED_FUNCTION_26_2(v3);
  if (v14)
  {
    v15 = v3;
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_20();
    v25 = v3;
    goto LABEL_20;
  }

  if (*(v3 + 8) == 1)
  {
    goto LABEL_21;
  }

  v17 = *v3;
LABEL_13:
  *(v1 + *(v16 + 32)) = v17;
LABEL_22:
  OUTLINED_FUNCTION_124();
}

uint64_t one-time initialization function for countKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static COUNT.countKey = v1;
  return result;
}

{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static COUNT_STAR.countKey = v1;
  return result;
}

void COUNT.getCurrentAggregationEvent()()
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
  v12 = type metadata accessor for COUNT(v11);
  v13 = *(OUTLINED_FUNCTION_117(v12) + 24);
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

void COUNT.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_64();
  v44[2] = v4;
  v44[3] = v5;
  v44[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_206();
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v44 - v22;
  v24 = OUTLINED_FUNCTION_34_0();
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_138();
  COUNT.getCurrentAggregationEvent()();
  if (v1)
  {
LABEL_32:
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v44[0] = v12;
    v27 = v0 + *(type metadata accessor for COUNT(0) + 20);
    SQLExpressionEvaluator.execute(expression:payload:)(v23);
    OUTLINED_FUNCTION_1_17();
    outlined init with copy of StorableValue();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        goto LABEL_11;
      case 2u:
        goto LABEL_15;
      case 3u:
        goto LABEL_7;
      case 4u:
        if (!v2[1])
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_39_0();
        if (!v30)
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_28:
        v42 = v2[1];
        if (v42 >> 60 == 15)
        {
          goto LABEL_31;
        }

        outlined consume of Data?(*v2, v42);
        OUTLINED_FUNCTION_39_0();
        if (!v30)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      case 5u:
        goto LABEL_28;
      case 6u:
        v38 = v44[0];
        outlined init with take of UUID?(v2, v44[0], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v39 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_92(v38, 1, v39);
        if (v32)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_39_0();
        if (v30)
        {
          goto LABEL_34;
        }

        *(v0 + v40) = v41;
LABEL_22:
        v35 = &_s10Foundation4UUIDVSgMd;
        v36 = &_s10Foundation4UUIDVSgMR;
        v37 = v38;
        goto LABEL_23;
      case 7u:
        goto LABEL_31;
      default:
        if (v2[1])
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_39_0();
        if (!v30)
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_7:
        if (!v2[1])
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_39_0();
        if (!v30)
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_11:
        if (v2[1])
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_39_0();
        if (!v30)
        {
LABEL_30:
          *(v0 + v28) = v29;
LABEL_31:
          COUNT.getCurrentAggregationEvent()();
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v23, v43);
          OUTLINED_FUNCTION_4_6();
          _s12BiomeStreams13StorableValueOWObTm_0();
          goto LABEL_32;
        }

        __break(1u);
LABEL_15:
        outlined init with take of UUID?(v2, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v31 = type metadata accessor for Date();
        OUTLINED_FUNCTION_92(v3, 1, v31);
        if (v32)
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_39_0();
        if (!v30)
        {
          *(v0 + v33) = v34;
LABEL_18:
          v35 = &_s10Foundation4DateVSgMd;
          v36 = &_s10Foundation4DateVSgMR;
          v37 = v3;
LABEL_23:
          outlined destroy of UUID?(v37, v35, v36);
          goto LABEL_31;
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        break;
    }
  }
}

uint64_t COUNT.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0(v0);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v3, xmmword_184D29AA0);
  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_74_0();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_30_1(&static COUNT.countKey);
  v5 = type metadata accessor for COUNT(v4);
  OUTLINED_FUNCTION_117(v5);
  OUTLINED_FUNCTION_164(v6);
  OUTLINED_FUNCTION_140();
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> COUNT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
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
    v16 = type metadata accessor for COUNT(0);
    v17 = 0;
    goto LABEL_8;
  }

  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_74_0();
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
    v16 = type metadata accessor for COUNT(0);
LABEL_8:
    *(v1 + *(v16 + 28)) = v17;
    return;
  }

  outlined destroy of UUID?(v3, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
LABEL_12:
  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  v20 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_19_2(v20, v21);
  swift_willThrow();
}

uint64_t one-time initialization function for sumKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_INT.sumKey = v1;
  return result;
}

{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_NON_INT.sumKey = v1;
  return result;
}

uint64_t one-time initialization function for isNonNullEventSeenKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_INT.isNonNullEventSeenKey = v1;
  return result;
}

{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static SUM_NON_INT.isNonNullEventSeenKey = v1;
  return result;
}

void SUM_INT.getCurrentAggregationEvent()()
{
  OUTLINED_FUNCTION_212();
  v6 = OUTLINED_FUNCTION_107_0();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_33_1();
  v12 = type metadata accessor for StorableValue(v11);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_65_0();
  v17 = type metadata accessor for SUM_INT(0);
  if (*(v0 + *(v17 + 32)))
  {
    v18 = OUTLINED_FUNCTION_117(v17);
    v19 = OUTLINED_FUNCTION_161(v18);
    v5(v19);
    OUTLINED_FUNCTION_202();
    if (!v1)
    {
      v20 = OUTLINED_FUNCTION_27_0();
      (v5)(v20, v0 + v2, v6);
LABEL_6:
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_135();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_118(v17);
    v4(v21);
    OUTLINED_FUNCTION_203();
    if (!v1)
    {
      v22 = OUTLINED_FUNCTION_27_0();
      (v4)(v22, v0 + v3, v6);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

void SUM_INT.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v0;
  v32[1] = v4;
  v5 = type metadata accessor for StorableValue(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = OUTLINED_FUNCTION_34_0();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  SUM_INT.getCurrentAggregationEvent()();
  if (v1)
  {
    goto LABEL_4;
  }

  v32[0] = v2;
  v18 = type metadata accessor for SUM_INT(0);
  v19 = v0 + *(v18 + 20);
  SQLExpressionEvaluator.execute(expression:payload:)(v11);
  v20 = v18;
  OUTLINED_FUNCTION_1_17();
  v21 = v32[0];
  outlined init with copy of StorableValue();
  if (swift_getEnumCaseMultiPayload())
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63();
    v23 = v22;
    v22[3] = v5;
    __swift_allocate_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_1_17();
    outlined init with copy of StorableValue();
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    *(v23 + 64) = 3;
    swift_willThrow();
    _s12BiomeStreams13StorableValueOWOhTm_0(v11, type metadata accessor for StorableValue);
    OUTLINED_FUNCTION_2_9();
    _s12BiomeStreams13StorableValueOWOhTm_0(v17, v24);
    _s12BiomeStreams13StorableValueOWOhTm_0(v21, type metadata accessor for StorableValue);
LABEL_4:
    OUTLINED_FUNCTION_65();
    return;
  }

  if (*(v21 + 8))
  {
LABEL_10:
    SUM_INT.getCurrentAggregationEvent()();
    OUTLINED_FUNCTION_0_20();
    _s12BiomeStreams13StorableValueOWOhTm_0(v11, v31);
    OUTLINED_FUNCTION_4_6();
    _s12BiomeStreams13StorableValueOWObTm_0();
    goto LABEL_4;
  }

  v25 = *v21;
  v26 = *(v20 + 32);
  if ((*(v3 + v26) & 1) == 0)
  {
    *(v3 + v26) = 1;
  }

  v27 = *(v20 + 28);
  v28 = *(v3 + v27);
  v29 = __OFADD__(v28, v25);
  v30 = v28 + v25;
  if (!v29)
  {
    *(v3 + v27) = v30;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t SUM_INT.aggregationMetadata()()
{
  OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0(v0);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_64_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_190(v3, xmmword_184D29A90);
  if (one-time initialization token for sumKey != -1)
  {
    OUTLINED_FUNCTION_84_0();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_142(&static SUM_INT.sumKey);
  v5 = type metadata accessor for SUM_INT(v4);
  OUTLINED_FUNCTION_68_0(v5);
  OUTLINED_FUNCTION_146();
  swift_storeEnumTagMultiPayload();
  v6 = one-time initialization token for isNonNullEventSeenKey;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_83_0();
    swift_once();
  }

  OUTLINED_FUNCTION_106_0(&static SUM_INT.isNonNullEventSeenKey);

  OUTLINED_FUNCTION_169();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SUM_INT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_65_0();
  if (*(v2 + 16))
  {
    if (one-time initialization token for sumKey != -1)
    {
      OUTLINED_FUNCTION_84_0();
      swift_once();
      if (!*(v2 + 16))
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_165(&static SUM_INT.sumKey);
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (one-time initialization token for isNonNullEventSeenKey != -1)
    {
      OUTLINED_FUNCTION_83_0();
      swift_once();
    }

    if (!*(v2 + 16))
    {
      goto LABEL_17;
    }

    v11 = OUTLINED_FUNCTION_109();
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_125();
    type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_26_2(v4);
    if (v14)
    {
      v15 = v4;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_0_20();
        v19 = v4;
LABEL_15:
        _s12BiomeStreams13StorableValueOWOhTm_0(v19, v18);
        goto LABEL_17;
      }

      if (*(v4 + 8) == 1)
      {
        goto LABEL_17;
      }

      v22 = *v4;
      *(v1 + *(type metadata accessor for SUM_INT(0) + 28)) = v22;
      OUTLINED_FUNCTION_86_0();
      specialized Dictionary.subscript.getter(v23, v24, v25, v26);
      OUTLINED_FUNCTION_26_2(v3);
      if (!v14)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          if ((*(v3 + 8) & 1) == 0 && *v3 < 2uLL)
          {
            OUTLINED_FUNCTION_193(*v3);
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_0_20();
        v19 = v3;
        goto LABEL_15;
      }

      v15 = v3;
    }

    outlined destroy of UUID?(v15, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
LABEL_17:
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v20 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_19_2(v20, v21);
    swift_willThrow();

    goto LABEL_18;
  }

  v16 = type metadata accessor for SUM_INT(0);
  OUTLINED_FUNCTION_189(v16);
LABEL_18:
  OUTLINED_FUNCTION_65();
}

void SUM_NON_INT.getCurrentAggregationEvent()()
{
  OUTLINED_FUNCTION_212();
  v6 = OUTLINED_FUNCTION_107_0();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_33_1();
  v12 = type metadata accessor for StorableValue(v11);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_65_0();
  v17 = type metadata accessor for SUM_NON_INT(0);
  if (*(v0 + *(v17 + 32)))
  {
    v22 = *(v0 + *(v17 + 28));
    v18 = OUTLINED_FUNCTION_161(v17);
    v5(v18);
    OUTLINED_FUNCTION_202();
    if (!v1)
    {
      v19 = OUTLINED_FUNCTION_27_0();
      (v5)(v19, v0 + v2, v6);
LABEL_6:
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_135();
      _s12BiomeStreams13StorableValueOWObTm_0();
    }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_118(v17);
    v4(v20);
    OUTLINED_FUNCTION_203();
    if (!v1)
    {
      v21 = OUTLINED_FUNCTION_27_0();
      (v4)(v21, v0 + v3, v6);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_211();
}

void SUM_NON_INT.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_121();
  v153 = v5;
  v154 = v1;
  v151 = v6;
  v152 = v7;
  v148 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v142 - v13;
  OUTLINED_FUNCTION_43();
  v14 = type metadata accessor for String.Encoding();
  v15 = OUTLINED_FUNCTION_47(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  v149 = v18;
  OUTLINED_FUNCTION_43();
  v19 = type metadata accessor for Date();
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v146 = v21;
  v147 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_3();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = OUTLINED_FUNCTION_47(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v142 - v29;
  v31 = type metadata accessor for StorableValue(0);
  v32 = OUTLINED_FUNCTION_12(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v142 - v39;
  v41 = OUTLINED_FUNCTION_34_0();
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_138();
  v44 = v154;
  SUM_NON_INT.getCurrentAggregationEvent()();
  if (v44)
  {
    goto LABEL_61;
  }

  v144 = v4;
  v145 = v37;
  v45 = v150;
  v143 = v2;
  v154 = v3;
  v46 = type metadata accessor for SUM_NON_INT(0);
  v47 = v0 + v46[5];
  SQLExpressionEvaluator.execute(expression:payload:)(v40);
  v152 = 0;
  OUTLINED_FUNCTION_1_17();
  outlined init with copy of StorableValue();
  v48 = v0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if ((v145[1] & 1) == 0)
      {
        v61 = *v145;
        OUTLINED_FUNCTION_160();
        if ((v64 & 1) == 0)
        {
          OUTLINED_FUNCTION_159(v62);
        }

        OUTLINED_FUNCTION_102_0(v46[7], v63);
      }

      goto LABEL_59;
    case 2u:
      v65 = v30;
      OUTLINED_FUNCTION_127();
      outlined init with take of UUID?(v66, v67, v68, v69);
      v70 = v144;
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v71, v72, v73, &_s10Foundation4DateVSgMR);
      v74 = OUTLINED_FUNCTION_151();
      v75 = v147;
      OUTLINED_FUNCTION_92(v74, v76, v147);
      if (v77)
      {
        v78 = OUTLINED_FUNCTION_135();
        outlined destroy of UUID?(v78, v79, &_s10Foundation4DateVSgMR);
        outlined destroy of UUID?(v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v103 = v146;
        v104 = *(v146 + 32);
        v105 = v143;
        v106 = OUTLINED_FUNCTION_108();
        v107(v106);
        OUTLINED_FUNCTION_160();
        if ((v109 & 1) == 0)
        {
          OUTLINED_FUNCTION_159(v108);
        }

        Date.timeIntervalSince1970.getter();
        v111 = v110;
        (*(v103 + 8))(v105, v75);
        outlined destroy of UUID?(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        *(v48 + v46[7]) = v111 + *(v48 + v46[7]);
      }

      goto LABEL_59;
    case 3u:
      v53 = v145[1];
      if (!v53)
      {
        goto LABEL_59;
      }

      v54 = *v145;
      OUTLINED_FUNCTION_160();
      if ((v56 & 1) == 0)
      {
        OUTLINED_FUNCTION_159(v55);
      }

      OUTLINED_FUNCTION_96_0();
      MEMORY[0x1EEE9AC00](v57);
      OUTLINED_FUNCTION_8_2();
      if ((v53 & 0x1000000000000000) != 0)
      {
        goto LABEL_79;
      }

      if ((v53 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_23_1(v58, v59, v60);
        if (!(!v77 & v91))
        {
          switch(v113)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_71;
            default:
              goto LABEL_53;
          }
        }

        goto LABEL_70;
      }

      if ((v60 & 0x1000000000000000) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_79;
    case 4u:
      v83 = v145[1];
      if (!v83)
      {
        goto LABEL_59;
      }

      v84 = *v145;
      OUTLINED_FUNCTION_160();
      if ((v86 & 1) == 0)
      {
        OUTLINED_FUNCTION_159(v85);
      }

      OUTLINED_FUNCTION_96_0();
      MEMORY[0x1EEE9AC00](v87);
      OUTLINED_FUNCTION_8_2();
      if ((v83 & 0x1000000000000000) != 0)
      {
        goto LABEL_79;
      }

      if ((v83 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_23_1(v88, v89, v90);
        if (!(!v77 & v91))
        {
          switch(v115)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_71;
            default:
              goto LABEL_53;
          }
        }

LABEL_70:
        if (v114 == 32)
        {
          goto LABEL_53;
        }

LABEL_71:
        v129 = OUTLINED_FUNCTION_163();
        if (!v129)
        {
LABEL_53:

          goto LABEL_54;
        }

        OUTLINED_FUNCTION_209(v129);
        OUTLINED_FUNCTION_137();
      }

      else
      {
        if ((v90 & 0x1000000000000000) != 0)
        {
LABEL_29:
          OUTLINED_FUNCTION_95_0();
          if (!v77 & v91 || (OUTLINED_FUNCTION_94_0(), (v92 & 1) == 0))
          {
            v93 = _swift_stdlib_strtod_clocale();
            if (v93)
            {
              OUTLINED_FUNCTION_93_0(v93);
            }
          }

          goto LABEL_53;
        }

LABEL_79:
        v138 = v152;
        _StringGuts._slowWithCString<A>(_:)();
        v152 = v138;
      }

LABEL_54:
      v116 = OUTLINED_FUNCTION_66_0();
      if (v77)
      {
        v116 = v117;
      }

      v118 = v46[7];
      goto LABEL_58;
    case 5u:
      if (v145[1] >> 60 == 15)
      {
        goto LABEL_59;
      }

      v94 = *v145;
      v95 = v46[8];
      if ((*(v0 + v95) & 1) == 0)
      {
        *(v0 + v95) = 1;
      }

      static String.Encoding.utf8.getter();
      OUTLINED_FUNCTION_52();
      String.init(data:encoding:)();
      if (!v96)
      {
        v123 = OUTLINED_FUNCTION_52();
        outlined consume of Data?(v123, v124);
        goto LABEL_59;
      }

      v97 = v96;
      OUTLINED_FUNCTION_96_0();
      MEMORY[0x1EEE9AC00](v98);
      OUTLINED_FUNCTION_8_2();
      if ((v97 & 0x1000000000000000) != 0)
      {
        goto LABEL_80;
      }

      if ((v97 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_28_1(v99, v97 & 0xFFFFFFFFFFFFFFLL);
        if (!(!v77 & v91))
        {
          switch(v125)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_74;
            default:
              goto LABEL_66;
          }
        }

        if (v126 != 32)
        {
LABEL_74:
          v130 = OUTLINED_FUNCTION_163();
          if (v130)
          {
            v131 = *v130;
            v132 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_210(v132, v133);
            v102 = v131 == 0;
            goto LABEL_67;
          }
        }

LABEL_66:
        v127 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_210(v127, v128);
        v102 = 0;
        goto LABEL_67;
      }

      if ((v99 & 0x1000000000000000) != 0)
      {
        switch(*((v97 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
        {
          case 0:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            goto LABEL_41;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            goto LABEL_77;
          default:
            if (*((v97 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 32)
            {
              goto LABEL_41;
            }

LABEL_77:
            v134 = _swift_stdlib_strtod_clocale();
            if (v134)
            {
              v135 = *v134;
              v136 = OUTLINED_FUNCTION_52();
              outlined consume of Data?(v136, v137);
              v102 = v135 == 0;
            }

            else
            {
LABEL_41:
              v100 = OUTLINED_FUNCTION_52();
              outlined consume of Data?(v100, v101);
              v102 = 0;
            }

            break;
        }
      }

      else
      {
LABEL_80:
        OUTLINED_FUNCTION_162();
        v139 = v152;
        _StringGuts._slowWithCString<A>(_:)();
        v152 = v139;
        v140 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_210(v140, v141);
        v102 = v155;
      }

LABEL_67:
      v116 = v156;
      if (!v102)
      {
        v116 = 0.0;
      }

      v118 = v46[7];
LABEL_58:
      OUTLINED_FUNCTION_102_0(v118, v116);
LABEL_59:
      v119 = v152;
      SUM_NON_INT.getCurrentAggregationEvent()();
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v40, v120);
      if (v119)
      {
LABEL_60:
        OUTLINED_FUNCTION_2_9();
        _s12BiomeStreams13StorableValueOWOhTm_0(v121, v122);
      }

      else
      {
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
      }

LABEL_61:
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_124();
      return;
    case 6u:
      outlined init with take of UUID?(v145, v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v80 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_92(v45, 1, v80);
      if (!v77)
      {
        OUTLINED_FUNCTION_160();
        if ((v82 & 1) == 0)
        {
          OUTLINED_FUNCTION_159(v81);
        }
      }

      OUTLINED_FUNCTION_184(v46[7]);
      outlined destroy of UUID?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_59;
    case 7u:
      goto LABEL_59;
    default:
      v49 = *v145;
      v50 = *(v145 + 8);
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63();
      if (v50)
      {
        v49 = 0;
        v52 = 0;
        *(v51 + 8) = 0;
        *(v51 + 16) = 0;
      }

      else
      {
        v52 = MEMORY[0x1E69E7360];
      }

      *v51 = v49;
      *(v51 + 24) = v52;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 0u;
      *(v51 + 64) = 3;
      swift_willThrow();
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v40, v112);
      goto LABEL_60;
  }
}

uint64_t SUM_NON_INT.aggregationMetadata()()
{
  OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_46_0(v0);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_64_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_190(v3, xmmword_184D29A90);
  if (one-time initialization token for sumKey != -1)
  {
    OUTLINED_FUNCTION_80_0();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_142(&static SUM_NON_INT.sumKey);
  v5 = type metadata accessor for SUM_NON_INT(v4);
  OUTLINED_FUNCTION_68_0(v5);
  OUTLINED_FUNCTION_146();
  swift_storeEnumTagMultiPayload();
  v6 = one-time initialization token for isNonNullEventSeenKey;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_79_0();
    swift_once();
  }

  OUTLINED_FUNCTION_106_0(&static SUM_NON_INT.isNonNullEventSeenKey);

  OUTLINED_FUNCTION_169();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SUM_NON_INT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_65_0();
  if (*(v2 + 16))
  {
    if (one-time initialization token for sumKey != -1)
    {
      OUTLINED_FUNCTION_80_0();
      swift_once();
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_165(&static SUM_NON_INT.sumKey);
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    if (one-time initialization token for isNonNullEventSeenKey != -1)
    {
      OUTLINED_FUNCTION_79_0();
      swift_once();
    }

    if (!*(v2 + 16))
    {
      goto LABEL_20;
    }

    v11 = OUTLINED_FUNCTION_109();
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_125();
    type metadata accessor for StorableValue(0);
    OUTLINED_FUNCTION_26_2(v4);
    if (v14)
    {
      v15 = v4;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        OUTLINED_FUNCTION_0_20();
        v24 = v4;
LABEL_19:
        _s12BiomeStreams13StorableValueOWOhTm_0(v24, v23);
        goto LABEL_20;
      }

      if (*(v4 + 8))
      {
LABEL_20:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v25 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_2(v25, v26);
        swift_willThrow();

        goto LABEL_21;
      }

      v18 = *v4;
      *(v1 + *(type metadata accessor for SUM_NON_INT(0) + 28)) = v18;
      OUTLINED_FUNCTION_86_0();
      specialized Dictionary.subscript.getter(v19, v20, v21, v22);
      OUTLINED_FUNCTION_26_2(v3);
      if (!v14)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          if ((*(v3 + 8) & 1) == 0 && *v3 < 2uLL)
          {
            OUTLINED_FUNCTION_193(*v3);
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_0_20();
        v24 = v3;
        goto LABEL_19;
      }

      v15 = v3;
    }

    outlined destroy of UUID?(v15, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    goto LABEL_20;
  }

  v16 = type metadata accessor for SUM_NON_INT(0);
  OUTLINED_FUNCTION_189(v16);
LABEL_21:
  OUTLINED_FUNCTION_124();
}

uint64_t one-time initialization function for totalKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static TOTAL.totalKey = v1;
  return result;
}

void TOTAL.getCurrentAggregationEvent()()
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
  v12 = type metadata accessor for TOTAL(v11);
  v16 = *(v0 + *(v12 + 28));
  v13 = *(v12 + 24);
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

void TOTAL.processEvent(changeRecord:expressionEvaluator:)()
{
  OUTLINED_FUNCTION_121();
  v11 = OUTLINED_FUNCTION_200(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  v133 = v15;
  OUTLINED_FUNCTION_43();
  v132 = type metadata accessor for Date();
  v16 = OUTLINED_FUNCTION_2_1(v132);
  v131 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = OUTLINED_FUNCTION_47(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_205();
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v128 - v30;
  v32 = OUTLINED_FUNCTION_34_0();
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_138();
  v35 = v137;
  TOTAL.getCurrentAggregationEvent()();
  if (!v35)
  {
    v129 = v5;
    v130 = v1;
    v36 = v132;
    v128[2] = v2;
    v137 = v4;
    v37 = v134;
    v38 = type metadata accessor for TOTAL(0);
    v39 = v0 + *(v38 + 20);
    SQLExpressionEvaluator.execute(expression:payload:)(v31);
    v128[1] = v38;
    OUTLINED_FUNCTION_1_17();
    v135 = v31;
    outlined init with copy of StorableValue();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v136 = 0;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_179();
        if ((v54 & 1) == 0)
        {
          v55 = *v53;
          OUTLINED_FUNCTION_154();
          v46 = v56 + *(v0 + v44);
          goto LABEL_12;
        }

        goto LABEL_50;
      case 2:
        v57 = v129;
        OUTLINED_FUNCTION_89();
        outlined init with take of UUID?(v58, v59, v60, v61);
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_89();
        outlined init with copy of Date?(v62, v63, v64, v65);
        v66 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_92(v66, v67, v36);
        if (v68)
        {
          outlined destroy of UUID?(v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          outlined destroy of UUID?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v87 = v131;
          v88 = *(v131 + 32);
          v89 = OUTLINED_FUNCTION_108();
          v90(v89);
          Date.timeIntervalSince1970.getter();
          v92 = v91;
          v93 = *(v87 + 8);
          v94 = OUTLINED_FUNCTION_50();
          v95(v94);
          outlined destroy of UUID?(v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          OUTLINED_FUNCTION_154();
          *(v0 + v96) = v92 + *(v0 + v96);
        }

        goto LABEL_50;
      case 3:
        OUTLINED_FUNCTION_177();
        if (v37)
        {
          v48 = *v47;
          OUTLINED_FUNCTION_96_0();
          MEMORY[0x1EEE9AC00](v49);
          OUTLINED_FUNCTION_8_2();
          if ((v37 & 0x1000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if ((v37 & 0x2000000000000000) != 0)
          {
            OUTLINED_FUNCTION_23_1(v50, v51, v52);
            if (!(!v68 & v77))
            {
              switch(v97)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                  goto LABEL_55;
                default:
                  goto LABEL_38;
              }
            }

            goto LABEL_54;
          }

          if ((v52 & 0x1000000000000000) != 0)
          {
            goto LABEL_21;
          }

          goto LABEL_63;
        }

        goto LABEL_50;
      case 4:
        OUTLINED_FUNCTION_177();
        if (!v37)
        {
          goto LABEL_50;
        }

        v72 = *v71;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v73);
        OUTLINED_FUNCTION_8_2();
        if ((v37 & 0x1000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if ((v37 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_23_1(v74, v75, v76);
          if (!(!v68 & v77))
          {
            switch(v99)
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_55;
              default:
                goto LABEL_38;
            }
          }

LABEL_54:
          if (v98 != 32)
          {
LABEL_55:
            v115 = OUTLINED_FUNCTION_163();
            if (v115)
            {
              OUTLINED_FUNCTION_209(v115);
              OUTLINED_FUNCTION_137();
              goto LABEL_39;
            }
          }
        }

        else
        {
          if ((v76 & 0x1000000000000000) == 0)
          {
LABEL_63:
            v124 = v136;
            _StringGuts._slowWithCString<A>(_:)();
            v136 = v124;

            goto LABEL_39;
          }

LABEL_21:
          OUTLINED_FUNCTION_95_0();
          if (!v68 & v77 || (OUTLINED_FUNCTION_94_0(), (v78 & 1) == 0))
          {
            v79 = _swift_stdlib_strtod_clocale();
            if (v79)
            {
              OUTLINED_FUNCTION_93_0(v79);
            }
          }
        }

LABEL_38:

LABEL_39:
        OUTLINED_FUNCTION_66_0();
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_102_0(v100, v101);
        goto LABEL_50;
      case 5:
        if (v130[1] >> 60 == 15)
        {
          goto LABEL_50;
        }

        v80 = *v130;
        static String.Encoding.utf8.getter();
        OUTLINED_FUNCTION_116();
        String.init(data:encoding:)();
        if (!v81)
        {
          v102 = OUTLINED_FUNCTION_116();
          outlined consume of Data?(v102, v103);
LABEL_50:
          v111 = v136;
          TOTAL.getCurrentAggregationEvent()();
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v135, v112);
          if (v111)
          {
            OUTLINED_FUNCTION_2_9();
            _s12BiomeStreams13StorableValueOWOhTm_0(v113, v114);
          }

          else
          {
            OUTLINED_FUNCTION_4_6();
            _s12BiomeStreams13StorableValueOWObTm_0();
          }

          break;
        }

        v82 = v81;
        OUTLINED_FUNCTION_96_0();
        MEMORY[0x1EEE9AC00](v83);
        OUTLINED_FUNCTION_8_2();
        if ((v82 & 0x1000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if ((v82 & 0x2000000000000000) != 0)
        {
          OUTLINED_FUNCTION_28_1(v84, v82 & 0xFFFFFFFFFFFFFFLL);
          if (!(!v68 & v77))
          {
            switch(v104)
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_58;
              default:
                goto LABEL_45;
            }
          }

          if (v105 != 32)
          {
LABEL_58:
            v116 = OUTLINED_FUNCTION_163();
            if (v116)
            {
              v117 = *v116;
              v118 = OUTLINED_FUNCTION_116();
              OUTLINED_FUNCTION_210(v118, v119);
              OUTLINED_FUNCTION_137();
              goto LABEL_46;
            }
          }

LABEL_45:
          v106 = OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_210(v106, v107);
        }

        else if ((v84 & 0x1000000000000000) != 0)
        {
          switch(*((v82 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
          {
            case 0:
            case 9:
            case 0xA:
            case 0xB:
            case 0xC:
            case 0xD:
              goto LABEL_31;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
              goto LABEL_61;
            default:
              if (*((v82 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 32)
              {
                goto LABEL_31;
              }

LABEL_61:
              v120 = _swift_stdlib_strtod_clocale();
              if (v120)
              {
                v121 = *v120;
                v122 = OUTLINED_FUNCTION_116();
                outlined consume of Data?(v122, v123);
                OUTLINED_FUNCTION_137();
              }

              else
              {
LABEL_31:
                v85 = OUTLINED_FUNCTION_116();
                outlined consume of Data?(v85, v86);
              }

              break;
          }
        }

        else
        {
LABEL_64:
          OUTLINED_FUNCTION_162();
          v125 = v136;
          _StringGuts._slowWithCString<A>(_:)();
          v136 = v125;
          v126 = OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_210(v126, v127);
        }

LABEL_46:
        v109 = OUTLINED_FUNCTION_66_0();
        if (v68)
        {
          v109 = v110;
        }

        OUTLINED_FUNCTION_102_0(*(v108 + 28), v109);
        goto LABEL_50;
      case 6:
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_184(v69);
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v130, v70);
        goto LABEL_50;
      case 7:
        goto LABEL_50;
      default:
        OUTLINED_FUNCTION_179();
        if ((v42 & 1) == 0)
        {
          v43 = *v41;
          OUTLINED_FUNCTION_154();
          v46 = *(v0 + v44) + v45;
LABEL_12:
          *(v0 + v44) = v46;
        }

        goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_124();
}

uint64_t TOTAL.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0(v0);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v3, xmmword_184D29AA0);
  if (one-time initialization token for totalKey != -1)
  {
    OUTLINED_FUNCTION_75_0();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_30_1(&static TOTAL.totalKey);
  v5 = type metadata accessor for TOTAL(v4);
  OUTLINED_FUNCTION_117(v5);
  OUTLINED_FUNCTION_164(v6);
  OUTLINED_FUNCTION_140();
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TOTAL.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
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
    v16 = type metadata accessor for TOTAL(0);
    v17 = 0;
LABEL_8:
    *(v1 + *(v16 + 28)) = v17;
    return;
  }

  if (one-time initialization token for totalKey == -1 || (OUTLINED_FUNCTION_75_0(), swift_once(), *(v2 + 16)))
  {
    v9 = OUTLINED_FUNCTION_110();
    specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    if (v11)
    {
      OUTLINED_FUNCTION_85_0();
      v12 = type metadata accessor for StorableValue(0);
      v13 = OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_92(v13, v14, v12);
      if (v15)
      {
        outlined destroy of UUID?(v3, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          if ((*(v3 + 8) & 1) == 0)
          {
            v17 = *v3;
            v16 = type metadata accessor for TOTAL(0);
            goto LABEL_8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v3, v19);
        }
      }
    }
  }

  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  v20 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_19_2(v20, v21);
  swift_willThrow();
}

uint64_t one-time initialization function for toBeConcatendatedKey()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static GROUP_CONCAT.toBeConcatendatedKey = v1;
  return result;
}

void GROUP_CONCAT.processEvent(changeRecord:expressionEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v296 = v25;
  v297 = v21;
  v26 = v20;
  v28 = v27;
  v278 = v29;
  v279 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_47(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v34);
  v287 = &v264 - v35;
  OUTLINED_FUNCTION_43();
  v288 = type metadata accessor for SQLExpression();
  v36 = OUTLINED_FUNCTION_2_1(v288);
  v285 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9();
  v284 = v40;
  OUTLINED_FUNCTION_43();
  v274 = type metadata accessor for UUID();
  v271 = *(v274 - 8);
  v41 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v274 - 8);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45 = OUTLINED_FUNCTION_47(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v51);
  v52 = type metadata accessor for String.Encoding();
  v53 = OUTLINED_FUNCTION_47(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(v56);
  v273 = type metadata accessor for Date();
  v57 = OUTLINED_FUNCTION_2_1(v273);
  v270 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = OUTLINED_FUNCTION_47(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v70);
  a10 = type metadata accessor for SQLDataType();
  v71 = OUTLINED_FUNCTION_2_1(a10);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_9_0();
  v282 = v76;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v264 - v78;
  v286 = type metadata accessor for StorableValue(0);
  v80 = OUTLINED_FUNCTION_12(v286);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_9_0();
  v283 = v83;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_30();
  v281 = v86;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_30();
  v290 = v88;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_30();
  v295 = v90;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_51();
  v93 = v92;
  v94 = OUTLINED_FUNCTION_43();
  v95 = type metadata accessor for GROUP_CONCAT(v94);
  v96 = OUTLINED_FUNCTION_12(v95);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_14();
  v101 = v99 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v103 = OUTLINED_FUNCTION_33_1();
  v293 = type metadata accessor for AggregationEvent(v103);
  v104 = OUTLINED_FUNCTION_12(v293);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_9();
  v291 = v107;
  OUTLINED_FUNCTION_69_0();
  outlined init with copy of StorableValue();
  v108 = (v22 + v95[8]);
  v109 = v108[1];
  v289 = v101;
  v292 = v26;
  v294 = v28;
  if (v109)
  {
    v110 = *v108;
    v111 = MEMORY[0x1E69E6158];
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v300 = 0;
  }

  v298 = v110;
  v299 = v109;
  v301[0] = v111;
  v112 = v95[7];
  v113 = *(v73 + 16);
  v114 = v73 + 16;
  v115 = a10;
  v113(v79, v22 + v112, a10);

  v116 = v297;
  StorableValue.init(_:dataType:)(&v298, v79, v93);
  if (v116)
  {
    _s12BiomeStreams13StorableValueOWOhTm_0(v22, type metadata accessor for GROUP_CONCAT);
    goto LABEL_7;
  }

  v113((v291 + *(v293 + 20)), v22 + v112, v115);
  OUTLINED_FUNCTION_21_1();
  _s12BiomeStreams13StorableValueOWOhTm_0(v22, v117);
  OUTLINED_FUNCTION_3_11();
  _s12BiomeStreams13StorableValueOWObTm_0();
  v118 = v292;
  v119 = v292 + v95[5];
  SQLExpressionEvaluator.execute(expression:payload:)(v295);
  v120 = v113;
  v264 = v114;
  v297 = v95;
  OUTLINED_FUNCTION_1_17();
  outlined init with copy of StorableValue();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v122 = 0;
  v265 = 0;
  v123 = v288;
  v124 = v289;
  v125 = v296;
  v126 = v287;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if (v290[1])
      {
        goto LABEL_21;
      }

      v127 = *v290;
      v128 = Double.description.getter();
      goto LABEL_28;
    case 2:
      OUTLINED_FUNCTION_127();
      outlined init with take of UUID?(v149, v150, v151, v152);
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v153, v154, v155, &_s10Foundation4DateVSgMR);
      v156 = OUTLINED_FUNCTION_151();
      v157 = v273;
      OUTLINED_FUNCTION_92(v156, v158, v273);
      if (v142)
      {
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v159, v160, v161);
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v162, v163, v164);
        OUTLINED_FUNCTION_101_0();
      }

      else
      {
        v172 = v270;
        v173 = *(v270 + 32);
        v174 = v268;
        v175 = OUTLINED_FUNCTION_108();
        v176(v175);
        Date.timeIntervalSince1970.getter();
        v177 = Double.description.getter();
        v265 = v178;
        (*(v172 + 8))(v174, v157);
        outlined destroy of UUID?(v275, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v122 = v177;
      }

      v123 = v288;
      v124 = v289;
      v126 = v287;
      break;
    case 3:
    case 4:
      v122 = *v290;
      v265 = v290[1];
      if (!v265)
      {
        v122 = 0;
      }

      break;
    case 5:
      v165 = v290[1];
      OUTLINED_FUNCTION_194();
      if (!v142 & v167)
      {
        OUTLINED_FUNCTION_101_0();
        v123 = v288;
      }

      else
      {
        v179 = *v166;
        static String.Encoding.utf8.getter();
        v180 = String.init(data:encoding:)();
        v182 = v181;
        outlined consume of Data?(v179, v165);
        v265 = v182;
        if (v182)
        {
          v122 = v180;
        }

        else
        {
          v122 = 0;
        }

        v123 = v288;
        v124 = v289;
        v126 = v287;
      }

      break;
    case 6:
      v275 = v120;
      v130 = v272;
      OUTLINED_FUNCTION_127();
      outlined init with take of UUID?(v131, v132, v133, v134);
      OUTLINED_FUNCTION_136(&a9);
      OUTLINED_FUNCTION_127();
      outlined init with copy of Date?(v135, v136, v137, v138);
      v139 = OUTLINED_FUNCTION_104_0();
      v140 = v274;
      OUTLINED_FUNCTION_92(v139, v141, v274);
      if (v142)
      {
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v143, v144, v145);
        OUTLINED_FUNCTION_100_0();
        outlined destroy of UUID?(v146, v147, v148);
        OUTLINED_FUNCTION_101_0();
      }

      else
      {
        OUTLINED_FUNCTION_145(v301);
        v168 = v269;
        v169(v269, v120, v140);
        v170 = UUID.uuidString.getter();
        v265 = v171;
        (*(v125 + 8))(v168, v140);
        outlined destroy of UUID?(v130, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v122 = v170;
      }

      v123 = v288;
      v124 = v289;
      v126 = v287;
      v120 = v275;
      break;
    case 7:
      break;
    default:
      if (v290[1])
      {
LABEL_21:
        OUTLINED_FUNCTION_101_0();
      }

      else
      {
        v298 = *v290;
        v128 = dispatch thunk of CustomStringConvertible.description.getter();
        v123 = v288;
LABEL_28:
        v122 = v128;
        v265 = v129;
      }

      break;
  }

  v290 = v122;
  outlined init with copy of Date?(v118 + v297[6], v126, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_92(v126, 1, v123);
  if (v142)
  {
    outlined destroy of UUID?(v126, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    v183 = v265;
    if (v265)
    {
      v184 = 0xE100000000000000;
      v185 = 44;
      v186 = v297;
      goto LABEL_37;
    }
  }

  else
  {
    v275 = v120;
    (*(v285 + 32))(v284, v126, v123);
    OUTLINED_FUNCTION_109();
    SQLExpressionEvaluator.execute(expression:payload:)(v189);
    OUTLINED_FUNCTION_1_17();
    outlined init with copy of StorableValue();
    v190 = swift_getEnumCaseMultiPayload();
    v185 = v284;
    v191 = v285;
    v192 = v288;
    v120 = v275;
    v193 = v276;
    switch(v190)
    {
      case 1:
        OUTLINED_FUNCTION_187();
        if (v200[1])
        {
          v185 = 0;
          v184 = 0;
        }

        else
        {
          v227 = *v200;
          v185 = Double.description.getter();
          v184 = v228;
        }

        v183 = v265;
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v229, v230);
        (*(v285 + 8))(v284, v192);
        goto LABEL_71;
      case 2:
        v184 = &_s10Foundation4DateVSgMR;
        outlined init with take of UUID?(v280, v277, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_86_0();
        outlined init with copy of Date?(v204, v205, v206, &_s10Foundation4DateVSgMR);
        v207 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_92(v207, v208, v273);
        if (v142)
        {
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_145(&v300);
        v238(v266);
        Date.timeIntervalSince1970.getter();
        Double.description.getter();
        v239 = OUTLINED_FUNCTION_155();
        v240(v239);
        v235 = &_s10Foundation4DateVSgMd;
        v236 = &_s10Foundation4DateVSgMR;
        v237 = &a15;
        goto LABEL_65;
      case 3:
      case 4:
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v281, v194);
        v195 = *(v191 + 8);
        v196 = OUTLINED_FUNCTION_130();
        v197(v196);
        OUTLINED_FUNCTION_187();
        v184 = v198[1];
        if (v184)
        {
          v185 = *v198;
        }

        else
        {
          v185 = 0;
        }

        break;
      case 5:
        OUTLINED_FUNCTION_187();
        v225 = v224[1];
        if (v225 >> 60 == 15)
        {
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v281, v226);
          v223 = *(v191 + 8);
          v221 = v185;
          v222 = v288;
          goto LABEL_61;
        }

        v248 = v185;
        v249 = *v224;
        static String.Encoding.utf8.getter();
        v250 = String.init(data:encoding:)();
        v251 = v191;
        v184 = v252;
        outlined consume of Data?(v249, v225);
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v281, v253);
        v120 = v275;
        (*(v251 + 8))(v248, v288);
        if (v184)
        {
          v185 = v250;
        }

        else
        {
          v185 = 0;
        }

        break;
      case 6:
        OUTLINED_FUNCTION_86_0();
        outlined init with take of UUID?(v201, v202, v203, &_s10Foundation4UUIDVSgMR);
        v184 = v267;
        outlined init with copy of Date?(v193, v267, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_92(v184, 1, v274);
        if (v142)
        {
LABEL_56:
          OUTLINED_FUNCTION_100_0();
          outlined destroy of UUID?(v209, v210, v211);
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v281, v212);
          v213 = OUTLINED_FUNCTION_183();
          v214(v213);
          OUTLINED_FUNCTION_100_0();
          outlined destroy of UUID?(v215, v216, v217);
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_145(v301);
        v231 = OUTLINED_FUNCTION_50();
        v232(v231);
        UUID.uuidString.getter();
        v233 = OUTLINED_FUNCTION_155();
        v234(v233);
        v235 = &_s10Foundation4UUIDVSgMd;
        v236 = &_s10Foundation4UUIDVSgMR;
        v237 = &a14;
LABEL_65:
        outlined destroy of UUID?(*(v237 - 32), v235, v236);
        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v281, v241);
        (*(v285 + 8))(v284, v288);
        break;
      case 7:
        goto LABEL_58;
      default:
        OUTLINED_FUNCTION_187();
        if (*(v218 + 8) == 1)
        {
LABEL_58:
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v281, v219);
          v220 = *(v191 + 8);
          v221 = OUTLINED_FUNCTION_130();
LABEL_61:
          v223(v221, v222);
LABEL_62:
          v185 = 0;
          v184 = 0;
        }

        else
        {
          v298 = *v218;
          v242 = v192;
          v243 = v185;
          v185 = dispatch thunk of CustomStringConvertible.description.getter();
          v244 = v191;
          v184 = v245;
          OUTLINED_FUNCTION_0_20();
          _s12BiomeStreams13StorableValueOWOhTm_0(v281, v246);
          v247 = v243;
          v120 = v275;
          (*(v244 + 8))(v247, v242);
        }

        break;
    }

    v183 = v265;
LABEL_71:
    v186 = v297;
    if (v183)
    {
      if (!v184)
      {
LABEL_40:
        v187 = (v118 + v186[8]);
        v188 = v120;
        if (v187[1])
        {
          MEMORY[0x1865F6280](v290, v183);
        }

        else
        {
          *v187 = v290;
          v187[1] = v183;
        }

        v199 = a10;
        v124 = v289;
        goto LABEL_76;
      }

LABEL_37:
      if (*(v118 + v186[8] + 8))
      {
        MEMORY[0x1865F6280](v185, v184);
      }

      v186 = v297;
      goto LABEL_40;
    }

    v124 = v289;
  }

  v188 = v120;

  v199 = a10;
LABEL_76:
  OUTLINED_FUNCTION_69_0();
  outlined init with copy of StorableValue();
  v254 = (v124 + v297[8]);
  v255 = v254[1];
  if (v255)
  {
    v256 = *v254;
    v257 = MEMORY[0x1E69E6158];
  }

  else
  {
    v256 = 0;
    v257 = 0;
    v300 = 0;
  }

  v298 = v256;
  v299 = v255;
  v301[0] = v257;
  v258 = v297[7];
  v259 = v124 + v258;
  v260 = v124;
  v261 = v282;
  v188(v282, v259, v199);

  StorableValue.init(_:dataType:)(&v298, v261, v283);
  OUTLINED_FUNCTION_0_20();
  _s12BiomeStreams13StorableValueOWOhTm_0(v295, v262);
  v188(v278 + *(v293 + 20), v260 + v258, v199);
  OUTLINED_FUNCTION_21_1();
  _s12BiomeStreams13StorableValueOWOhTm_0(v260, v263);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_130();
  _s12BiomeStreams13StorableValueOWObTm_0();
  OUTLINED_FUNCTION_4_6();
  _s12BiomeStreams13StorableValueOWObTm_0();
LABEL_7:
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_65();
}

uint64_t GROUP_CONCAT.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v5, xmmword_184D29AA0);
  if (one-time initialization token for toBeConcatendatedKey != -1)
  {
    OUTLINED_FUNCTION_78_0();
    swift_once();
  }

  v6 = OUTLINED_FUNCTION_30_1(&static GROUP_CONCAT.toBeConcatendatedKey);
  v7 = (v0 + *(type metadata accessor for GROUP_CONCAT(v6) + 32));
  v8 = v7[1];
  *v1 = *v7;
  v1[1] = v8;
  type metadata accessor for StorableValue(0);
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GROUP_CONCAT.applyMetadata(metadata:)(Swift::OpaquePointer metadata)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_0();
  if (!v9)
  {
LABEL_10:
    v23 = (v3 + *(type metadata accessor for GROUP_CONCAT(0) + 32));
    v24 = v23[1];

    *v23 = 0;
    v23[1] = 0;
    return;
  }

  if (one-time initialization token for toBeConcatendatedKey == -1 || (OUTLINED_FUNCTION_78_0(), swift_once(), *(metadata._rawValue + 2)))
  {
    v10 = OUTLINED_FUNCTION_110();
    specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    if (v12)
    {
      OUTLINED_FUNCTION_85_0();
      v13 = type metadata accessor for StorableValue(0);
      v14 = OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_92(v14, v15, v13);
      if (v16)
      {
        outlined destroy of UUID?(v2, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_130();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v18 = *v2;
          v19 = v2[1];
          v20 = (v3 + *(type metadata accessor for GROUP_CONCAT(0) + 32));
          v21 = v20[1];

          *v20 = v18;
          v20[1] = v19;
          return;
        }

        OUTLINED_FUNCTION_0_20();
        _s12BiomeStreams13StorableValueOWOhTm_0(v2, v22);
      }

      goto LABEL_10;
    }
  }

  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  OUTLINED_FUNCTION_63();
  v25 = *v3;
  v26 = v3[1];
  *v27 = metadata;
  *(v27 + 8) = v25;
  *(v27 + 16) = v26;
  *(v27 + 64) = 8;
  swift_willThrow();
}

void MAX.getCurrentAggregationEvent()()
{
  MAX.getCurrentAggregationEvent()();
}

{
  OUTLINED_FUNCTION_64();
  v30 = v4;
  v6 = v5;
  v34 = type metadata accessor for SQLDataType();
  v7 = OUTLINED_FUNCTION_2_1(v34);
  v31 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_3();
  v11 = *(v6 + 16);
  v12 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_2_1(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_206();
  v19 = OUTLINED_FUNCTION_47(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v24 = (v23 - v22);
  (*(v14 + 16))(v3, v0 + *(v6 + 48), v12);
  OUTLINED_FUNCTION_26_2(v3);
  if (v25)
  {
    (*(v14 + 8))(v3, v12);
    v32 = 0u;
    v33 = 0u;
  }

  else
  {
    *(&v33 + 1) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
    (*(*(v11 - 8) + 32))(boxed_opaque_existential_0, v3, v11);
  }

  v27 = *(v6 + 40);
  v28 = *(v31 + 16);
  v28(v2, v0 + v27, v34);
  StorableValue.init(_:dataType:)(&v32, v2, v24);
  if (!v1)
  {
    v29 = type metadata accessor for AggregationEvent(0);
    v28(v30 + *(v29 + 20), v0 + v27, v34);
    OUTLINED_FUNCTION_3_11();
    _s12BiomeStreams13StorableValueOWObTm_0();
  }

  OUTLINED_FUNCTION_65();
}

void MAX.processEvent(changeRecord:expressionEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v32 = OUTLINED_FUNCTION_77_0(v27, v28, v26, v29, v30, v31);
  v278 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  v277 = v36;
  OUTLINED_FUNCTION_43();
  v271 = type metadata accessor for UUID();
  v37 = OUTLINED_FUNCTION_2_1(v271);
  v283 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v41);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = OUTLINED_FUNCTION_12(v275);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v47);
  v270 = type metadata accessor for Date();
  v48 = OUTLINED_FUNCTION_2_1(v270);
  v268[8] = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v52);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = OUTLINED_FUNCTION_12(v273);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v58);
  v291 = v20;
  v284 = type metadata accessor for Optional();
  v59 = OUTLINED_FUNCTION_2_1(v284);
  v286 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_51();
  v285 = v80;
  OUTLINED_FUNCTION_43();
  v81 = type metadata accessor for SQLDataType();
  v82 = OUTLINED_FUNCTION_2_1(v81);
  v289 = v83;
  v290 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_9_0();
  v288 = v86;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_51();
  v287 = v88;
  v89 = OUTLINED_FUNCTION_43();
  v292 = type metadata accessor for StorableValue(v89);
  v90 = OUTLINED_FUNCTION_12(v292);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_9_0();
  v282[1] = v93;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_30();
  v282[0] = v95;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_30();
  v281 = v97;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_30();
  v280 = v99;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v104);
  v106 = v268 - v105;
  v107 = OUTLINED_FUNCTION_34_0();
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_128();
  if (v21)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_70_0();
  v294 = 0;
  v110 = v287;
  SQLExpression.returnType.getter(v287);
  v111 = OUTLINED_FUNCTION_67_0();
  v112(v111);
  OUTLINED_FUNCTION_72_0();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(v113, v114);
  OUTLINED_FUNCTION_89_0();
  v115 = v22;
  v116 = dispatch thunk of static Equatable.== infix(_:_:)();
  v117 = OUTLINED_FUNCTION_173(v116);
  (v22)(v117);
  (v22)(v110, v22);
  if ((v293 & 1) == 0)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_197();
    v131 = OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_167(v131, v132);
    OUTLINED_FUNCTION_0_20();
    _s12BiomeStreams13StorableValueOWOhTm_0(v24, v133);
    OUTLINED_FUNCTION_2_9();
    _s12BiomeStreams13StorableValueOWOhTm_0(a10, v134);
LABEL_60:
    OUTLINED_FUNCTION_65();
    return;
  }

  v293 = v23;
  v118 = v285;
  v119 = v286;
  OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_52_0();
  outlined init with copy of StorableValue();
  OUTLINED_FUNCTION_50();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v125 = v283;
  v268[0] = v106;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_1_17();
      v127 = v171;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_59_0(&v289);
      if ((OUTLINED_FUNCTION_54_0() & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v172 = OUTLINED_FUNCTION_126();
      (v119)(v172);
      v173 = OUTLINED_FUNCTION_24_1();
      (v119)(v173);
      if (v22)
      {
        v130 = v282;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_196();
      v225 = v282;
      goto LABEL_41;
    case 2:
      OUTLINED_FUNCTION_1_17();
      v144 = v143;
      outlined init with copy of StorableValue();
      v115 = &_s10Foundation4DateVSgMd;
      v127 = &_s10Foundation4DateVSgMR;
      OUTLINED_FUNCTION_149();
      v145 = v272;
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v146, v147, v148, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_59_0(&v290);
      if (!OUTLINED_FUNCTION_54_0())
      {
        v202 = &_s10Foundation4DateVSgMd;
        v203 = &_s10Foundation4DateVSgMR;
        v204 = v144;
        goto LABEL_35;
      }

      v149 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4DateVSgMd)(v149, v145);
      v150 = OUTLINED_FUNCTION_56_0();
      v292 = &_s10Foundation4DateVSgMd;
      (_s10Foundation4DateVSgMd)(v150);
      OUTLINED_FUNCTION_136(&v284);
      outlined init with take of UUID?(v151, v152, v153, v154);
      v155 = OUTLINED_FUNCTION_104_0();
      LODWORD(v127) = v270;
      OUTLINED_FUNCTION_92(v155, v156, v270);
      v138 = v145;
      if (v157)
      {
        outlined destroy of UUID?(v119, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_5_4();
        v110 = v269;
      }

      else
      {
        OUTLINED_FUNCTION_185(&v279);
        v115 = v268[7];
        v216 = OUTLINED_FUNCTION_98_0();
        v217(v216);
        v110 = v269;
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v221);
      v222 = OUTLINED_FUNCTION_18_1();
      v224 = v110;
      goto LABEL_50;
    case 3:
      OUTLINED_FUNCTION_1_17();
      v127 = v158;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_103_0(&v291);
      if (!OUTLINED_FUNCTION_54_0())
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_25_2();
      v159 = OUTLINED_FUNCTION_108();
      (v119)(v159);
      v160 = OUTLINED_FUNCTION_24_1();
      (v119)(v160);
      v138 = v125;
      if (v127)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1(&v295);
        v161 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
      OUTLINED_FUNCTION_5_4();
      v222 = OUTLINED_FUNCTION_16_2();
      v232 = &v295;
      goto LABEL_49;
    case 4:
      OUTLINED_FUNCTION_1_17();
      v127 = v135;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_103_0(&v292);
      if (!OUTLINED_FUNCTION_54_0())
      {
LABEL_18:

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v136 = OUTLINED_FUNCTION_108();
      (v119)(v136);
      v137 = OUTLINED_FUNCTION_24_1();
      (v119)(v137);
      v138 = v125;
      if (v127)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1(v296);
        v139 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      OUTLINED_FUNCTION_5_4();
      v222 = OUTLINED_FUNCTION_16_2();
      v232 = v296;
      goto LABEL_49;
    case 5:
      OUTLINED_FUNCTION_1_17();
      v179 = v178;
      outlined init with copy of StorableValue();
      v127 = *v179;
      v115 = v179[1];
      v295 = v127;
      v296[0] = v115;
      v180 = OUTLINED_FUNCTION_81();
      outlined copy of Data?(v180, v181);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_60_0();
      if (!OUTLINED_FUNCTION_54_0())
      {
        v205 = OUTLINED_FUNCTION_81();
        outlined consume of Data?(v205, v206);
        v207 = a10;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_25_2();
      v182 = OUTLINED_FUNCTION_56_0();
      (v119)(v182);
      v118 = v285;
      v183 = OUTLINED_FUNCTION_24_1();
      (v119)(v183);
      OUTLINED_FUNCTION_194();
      v138 = v125;
      if (!v157 & v184)
      {
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        v295 = v127;
        v296[0] = v115;
        OUTLINED_FUNCTION_35_1(&a9);
        v228 = OUTLINED_FUNCTION_22_1();
      }

      __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
      OUTLINED_FUNCTION_5_4();
      v222 = OUTLINED_FUNCTION_16_2();
      v232 = &a9;
LABEL_49:
      v224 = *(v232 - 32);
LABEL_50:
      v223(v222, v224, v138);
      goto LABEL_51;
    case 6:
      OUTLINED_FUNCTION_1_17();
      outlined init with copy of StorableValue();
      v127 = &_s10Foundation4UUIDVSgMd;
      v115 = &_s10Foundation4UUIDVSgMR;
      v110 = v276;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v185, v186, v187, v188);
      v189 = v274;
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v190, v191, v192, v193);
      OUTLINED_FUNCTION_59_0(&v294);
      if (!OUTLINED_FUNCTION_148())
      {
        v202 = &_s10Foundation4UUIDVSgMd;
        v203 = &_s10Foundation4UUIDVSgMR;
        v204 = v110;
LABEL_35:
        outlined destroy of UUID?(v204, v202, v203);
LABEL_36:
        v207 = a10;
LABEL_37:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v208 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_199(v208, v209);
        OUTLINED_FUNCTION_1_17();
        v210 = v268[0];
        outlined init with copy of StorableValue();
        OUTLINED_FUNCTION_166();
        v211 = v119[1];
        v212 = OUTLINED_FUNCTION_56_0();
        v213(v212);
        OUTLINED_FUNCTION_20_3();
        _s12BiomeStreams13StorableValueOWOhTm_0(v210, v214);
        OUTLINED_FUNCTION_2_9();
        _s12BiomeStreams13StorableValueOWOhTm_0(v207, v215);
        _s12BiomeStreams13StorableValueOWOhTm_0(v268[6], v127);
        goto LABEL_60;
      }

      v194 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4UUIDVSgMR)(v194, v189);
      v195 = OUTLINED_FUNCTION_113();
      v292 = &_s10Foundation4UUIDVSgMR;
      (_s10Foundation4UUIDVSgMR)(v195);
      OUTLINED_FUNCTION_136(&v286);
      outlined init with take of UUID?(v196, v197, v198, v199);
      v200 = OUTLINED_FUNCTION_104_0();
      LODWORD(v127) = v271;
      OUTLINED_FUNCTION_92(v200, v201, v271);
      if (v157)
      {
        outlined destroy of UUID?(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_192();
      }

      else
      {
        v233 = *(v125 + 32);
        v115 = v268[9];
        v234 = OUTLINED_FUNCTION_98_0();
        v235(v234);
        OUTLINED_FUNCTION_192();
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v236, v237, v238, v239);
      v240 = OUTLINED_FUNCTION_18_1();
      v241(v240, v189, v189);
LABEL_51:
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v115, v242);
      v243 = OUTLINED_FUNCTION_188();
      (v115)(v243);
      v244 = OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_92(v244, v245, v291);
      if (v157)
      {
        OUTLINED_FUNCTION_170();
        (v119)();
LABEL_59:
        OUTLINED_FUNCTION_198();
        v265 = OUTLINED_FUNCTION_171();
        (v119)(v265);
        OUTLINED_FUNCTION_0_20();
        OUTLINED_FUNCTION_208(v266, v267);
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
        goto LABEL_60;
      }

      v246 = OUTLINED_FUNCTION_132();
      v247(v246);
      v248 = OUTLINED_FUNCTION_92_0();
      (v115)(v248);
      v249 = OUTLINED_FUNCTION_104_0();
      __swift_getEnumTagSinglePayload(v249, v250, v110);
      v251 = OUTLINED_FUNCTION_157();
      v252(v251);
      v157 = v127 == 1;
      v253 = v277;
      if (v157)
      {
LABEL_57:
        OUTLINED_FUNCTION_170();
        (v119)();
        v260 = OUTLINED_FUNCTION_182();
        v261(v260);
        OUTLINED_FUNCTION_90_0();
        __swift_storeEnumTagSinglePayload(v262, v263, v264, v110);
        OUTLINED_FUNCTION_32_0();
        goto LABEL_59;
      }

      v254 = OUTLINED_FUNCTION_158();
      (v115)(v254);
      OUTLINED_FUNCTION_26_2(v118);
      if (!v157)
      {
        OUTLINED_FUNCTION_176();
        v256 = *(v255 + 8);
        v257 = OUTLINED_FUNCTION_152();
        v258(v257);
        v259 = OUTLINED_FUNCTION_156();
        (v115)(v259);
        if ((v23 & 1) == 0)
        {
          (v115)(v253, v110);
          OUTLINED_FUNCTION_32_0();
          v119 = v292;
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      __break(1u);
      break;
    case 7:
      v165 = OUTLINED_FUNCTION_133();
      v166(v165);
      OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      LODWORD(v127) = v279;
      LOBYTE(v23) = v119;
      OUTLINED_FUNCTION_53();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_1_17();
      v127 = v126;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_59_0(&v288);
      if ((OUTLINED_FUNCTION_54_0() & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v128 = OUTLINED_FUNCTION_126();
      (v119)(v128);
      v129 = OUTLINED_FUNCTION_24_1();
      (v119)(v129);
      if (v22)
      {
        v130 = &v281;
LABEL_23:
        OUTLINED_FUNCTION_103_0(v130);
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        OUTLINED_FUNCTION_196();
        v225 = &v281;
LABEL_41:
        OUTLINED_FUNCTION_103_0(v225);
        v226 = v291;
        swift_dynamicCast();
        OUTLINED_FUNCTION_90_0();
        v177 = v226;
      }

      __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
      LODWORD(v127) = v279;
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_100_0();
      v227();
      OUTLINED_FUNCTION_52_0();
      goto LABEL_51;
  }
}

void MIN.processEvent(changeRecord:expressionEvaluator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v32 = OUTLINED_FUNCTION_77_0(v27, v28, v26, v29, v30, v31);
  v278 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  v277 = v36;
  OUTLINED_FUNCTION_43();
  v271 = type metadata accessor for UUID();
  v37 = OUTLINED_FUNCTION_2_1(v271);
  v283 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v41);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = OUTLINED_FUNCTION_12(v275);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v47);
  v270 = type metadata accessor for Date();
  v48 = OUTLINED_FUNCTION_2_1(v270);
  v268[8] = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v52);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = OUTLINED_FUNCTION_12(v273);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7(v58);
  v291 = v20;
  v284 = type metadata accessor for Optional();
  v59 = OUTLINED_FUNCTION_2_1(v284);
  v286 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_51();
  v285 = v80;
  OUTLINED_FUNCTION_43();
  v81 = type metadata accessor for SQLDataType();
  v82 = OUTLINED_FUNCTION_2_1(v81);
  v289 = v83;
  v290 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_9_0();
  v288 = v86;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_51();
  v287 = v88;
  v89 = OUTLINED_FUNCTION_43();
  v292 = type metadata accessor for StorableValue(v89);
  v90 = OUTLINED_FUNCTION_12(v292);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_9_0();
  v282[1] = v93;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_30();
  v282[0] = v95;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_30();
  v281 = v97;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_30();
  v280 = v99;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v104);
  v106 = v268 - v105;
  v107 = OUTLINED_FUNCTION_34_0();
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_128();
  if (v21)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_70_0();
  v294 = 0;
  v110 = v287;
  SQLExpression.returnType.getter(v287);
  v111 = OUTLINED_FUNCTION_67_0();
  v112(v111);
  OUTLINED_FUNCTION_72_0();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(v113, v114);
  OUTLINED_FUNCTION_89_0();
  v115 = v22;
  v116 = dispatch thunk of static Equatable.== infix(_:_:)();
  v117 = OUTLINED_FUNCTION_173(v116);
  (v22)(v117);
  (v22)(v110, v22);
  if ((v293 & 1) == 0)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_197();
    v131 = OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_167(v131, v132);
    OUTLINED_FUNCTION_0_20();
    _s12BiomeStreams13StorableValueOWOhTm_0(v24, v133);
    OUTLINED_FUNCTION_2_9();
    _s12BiomeStreams13StorableValueOWOhTm_0(a10, v134);
LABEL_60:
    OUTLINED_FUNCTION_65();
    return;
  }

  v293 = v23;
  v118 = v285;
  v119 = v286;
  OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_52_0();
  outlined init with copy of StorableValue();
  OUTLINED_FUNCTION_50();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v125 = v283;
  v268[0] = v106;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_1_17();
      v127 = v171;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_59_0(&v289);
      if ((OUTLINED_FUNCTION_54_0() & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v172 = OUTLINED_FUNCTION_126();
      (v119)(v172);
      v173 = OUTLINED_FUNCTION_24_1();
      (v119)(v173);
      if (v22)
      {
        v130 = v282;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_196();
      v225 = v282;
      goto LABEL_41;
    case 2:
      OUTLINED_FUNCTION_1_17();
      v144 = v143;
      outlined init with copy of StorableValue();
      v115 = &_s10Foundation4DateVSgMd;
      v127 = &_s10Foundation4DateVSgMR;
      OUTLINED_FUNCTION_149();
      v145 = v272;
      OUTLINED_FUNCTION_86_0();
      outlined init with copy of Date?(v146, v147, v148, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_59_0(&v290);
      if (!OUTLINED_FUNCTION_54_0())
      {
        v202 = &_s10Foundation4DateVSgMd;
        v203 = &_s10Foundation4DateVSgMR;
        v204 = v144;
        goto LABEL_35;
      }

      v149 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4DateVSgMd)(v149, v145);
      v150 = OUTLINED_FUNCTION_56_0();
      v292 = &_s10Foundation4DateVSgMd;
      (_s10Foundation4DateVSgMd)(v150);
      OUTLINED_FUNCTION_136(&v284);
      outlined init with take of UUID?(v151, v152, v153, v154);
      v155 = OUTLINED_FUNCTION_104_0();
      LODWORD(v127) = v270;
      OUTLINED_FUNCTION_92(v155, v156, v270);
      v138 = v145;
      if (v157)
      {
        outlined destroy of UUID?(v119, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        OUTLINED_FUNCTION_5_4();
        v110 = v269;
      }

      else
      {
        OUTLINED_FUNCTION_185(&v279);
        v115 = v268[7];
        v216 = OUTLINED_FUNCTION_98_0();
        v217(v216);
        v110 = v269;
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v221);
      v222 = OUTLINED_FUNCTION_18_1();
      v224 = v110;
      goto LABEL_50;
    case 3:
      OUTLINED_FUNCTION_1_17();
      v127 = v158;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_103_0(&v291);
      if (!OUTLINED_FUNCTION_54_0())
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_25_2();
      v159 = OUTLINED_FUNCTION_108();
      (v119)(v159);
      v160 = OUTLINED_FUNCTION_24_1();
      (v119)(v160);
      v138 = v125;
      if (v127)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1(&v295);
        v161 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
      OUTLINED_FUNCTION_5_4();
      v222 = OUTLINED_FUNCTION_16_2();
      v232 = &v295;
      goto LABEL_49;
    case 4:
      OUTLINED_FUNCTION_1_17();
      v127 = v135;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_91_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_103_0(&v292);
      if (!OUTLINED_FUNCTION_54_0())
      {
LABEL_18:

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v136 = OUTLINED_FUNCTION_108();
      (v119)(v136);
      v137 = OUTLINED_FUNCTION_24_1();
      (v119)(v137);
      v138 = v125;
      if (v127)
      {
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_35_1(v296);
        v139 = OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }

      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      OUTLINED_FUNCTION_5_4();
      v222 = OUTLINED_FUNCTION_16_2();
      v232 = v296;
      goto LABEL_49;
    case 5:
      OUTLINED_FUNCTION_1_17();
      v179 = v178;
      outlined init with copy of StorableValue();
      v127 = *v179;
      v115 = v179[1];
      v295 = v127;
      v296[0] = v115;
      v180 = OUTLINED_FUNCTION_81();
      outlined copy of Data?(v180, v181);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_60_0();
      if (!OUTLINED_FUNCTION_54_0())
      {
        v205 = OUTLINED_FUNCTION_81();
        outlined consume of Data?(v205, v206);
        v207 = a10;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_25_2();
      v182 = OUTLINED_FUNCTION_56_0();
      (v119)(v182);
      v118 = v285;
      v183 = OUTLINED_FUNCTION_24_1();
      (v119)(v183);
      OUTLINED_FUNCTION_194();
      v138 = v125;
      if (!v157 & v184)
      {
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        v295 = v127;
        v296[0] = v115;
        OUTLINED_FUNCTION_35_1(&a9);
        v228 = OUTLINED_FUNCTION_22_1();
      }

      __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
      OUTLINED_FUNCTION_5_4();
      v222 = OUTLINED_FUNCTION_16_2();
      v232 = &a9;
LABEL_49:
      v224 = *(v232 - 32);
LABEL_50:
      v223(v222, v224, v138);
      goto LABEL_51;
    case 6:
      OUTLINED_FUNCTION_1_17();
      outlined init with copy of StorableValue();
      v127 = &_s10Foundation4UUIDVSgMd;
      v115 = &_s10Foundation4UUIDVSgMR;
      v110 = v276;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v185, v186, v187, v188);
      v189 = v274;
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v190, v191, v192, v193);
      OUTLINED_FUNCTION_59_0(&v294);
      if (!OUTLINED_FUNCTION_148())
      {
        v202 = &_s10Foundation4UUIDVSgMd;
        v203 = &_s10Foundation4UUIDVSgMR;
        v204 = v110;
LABEL_35:
        outlined destroy of UUID?(v204, v202, v203);
LABEL_36:
        v207 = a10;
LABEL_37:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v208 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_199(v208, v209);
        OUTLINED_FUNCTION_1_17();
        v210 = v268[0];
        outlined init with copy of StorableValue();
        OUTLINED_FUNCTION_166();
        v211 = v119[1];
        v212 = OUTLINED_FUNCTION_56_0();
        v213(v212);
        OUTLINED_FUNCTION_20_3();
        _s12BiomeStreams13StorableValueOWOhTm_0(v210, v214);
        OUTLINED_FUNCTION_2_9();
        _s12BiomeStreams13StorableValueOWOhTm_0(v207, v215);
        _s12BiomeStreams13StorableValueOWOhTm_0(v268[6], v127);
        goto LABEL_60;
      }

      v194 = OUTLINED_FUNCTION_50_0();
      (_s10Foundation4UUIDVSgMR)(v194, v189);
      v195 = OUTLINED_FUNCTION_113();
      v292 = &_s10Foundation4UUIDVSgMR;
      (_s10Foundation4UUIDVSgMR)(v195);
      OUTLINED_FUNCTION_136(&v286);
      outlined init with take of UUID?(v196, v197, v198, v199);
      v200 = OUTLINED_FUNCTION_104_0();
      LODWORD(v127) = v271;
      OUTLINED_FUNCTION_92(v200, v201, v271);
      if (v157)
      {
        outlined destroy of UUID?(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_192();
      }

      else
      {
        v233 = *(v125 + 32);
        v115 = v268[9];
        v234 = OUTLINED_FUNCTION_98_0();
        v235(v234);
        OUTLINED_FUNCTION_192();
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_5_4();
      }

      OUTLINED_FUNCTION_57_0();
      __swift_storeEnumTagSinglePayload(v236, v237, v238, v239);
      v240 = OUTLINED_FUNCTION_18_1();
      v241(v240, v189, v189);
LABEL_51:
      OUTLINED_FUNCTION_0_20();
      _s12BiomeStreams13StorableValueOWOhTm_0(v115, v242);
      v243 = OUTLINED_FUNCTION_188();
      (v115)(v243);
      v244 = OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_92(v244, v245, v291);
      if (v157)
      {
        OUTLINED_FUNCTION_170();
        (v119)();
LABEL_59:
        OUTLINED_FUNCTION_198();
        v265 = OUTLINED_FUNCTION_171();
        (v119)(v265);
        OUTLINED_FUNCTION_0_20();
        OUTLINED_FUNCTION_208(v266, v267);
        OUTLINED_FUNCTION_4_6();
        _s12BiomeStreams13StorableValueOWObTm_0();
        goto LABEL_60;
      }

      v246 = OUTLINED_FUNCTION_132();
      v247(v246);
      v248 = OUTLINED_FUNCTION_92_0();
      (v115)(v248);
      v249 = OUTLINED_FUNCTION_104_0();
      __swift_getEnumTagSinglePayload(v249, v250, v110);
      v251 = OUTLINED_FUNCTION_157();
      v252(v251);
      v157 = v127 == 1;
      v253 = v277;
      if (v157)
      {
LABEL_57:
        OUTLINED_FUNCTION_170();
        (v119)();
        v260 = OUTLINED_FUNCTION_182();
        v261(v260);
        OUTLINED_FUNCTION_90_0();
        __swift_storeEnumTagSinglePayload(v262, v263, v264, v110);
        OUTLINED_FUNCTION_32_0();
        goto LABEL_59;
      }

      v254 = OUTLINED_FUNCTION_158();
      (v115)(v254);
      OUTLINED_FUNCTION_26_2(v118);
      if (!v157)
      {
        OUTLINED_FUNCTION_176();
        v256 = *(v255 + 16);
        v257 = OUTLINED_FUNCTION_152();
        v258(v257);
        v259 = OUTLINED_FUNCTION_156();
        (v115)(v259);
        if ((v23 & 1) == 0)
        {
          (v115)(v253, v110);
          OUTLINED_FUNCTION_32_0();
          v119 = v292;
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      __break(1u);
      break;
    case 7:
      v165 = OUTLINED_FUNCTION_133();
      v166(v165);
      OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      LODWORD(v127) = v279;
      LOBYTE(v23) = v119;
      OUTLINED_FUNCTION_53();
      goto LABEL_51;
    default:
      OUTLINED_FUNCTION_1_17();
      v127 = v126;
      outlined init with copy of StorableValue();
      OUTLINED_FUNCTION_29_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_59_0(&v288);
      if ((OUTLINED_FUNCTION_54_0() & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_25_2();
      v128 = OUTLINED_FUNCTION_126();
      (v119)(v128);
      v129 = OUTLINED_FUNCTION_24_1();
      (v119)(v129);
      if (v22)
      {
        v130 = &v281;
LABEL_23:
        OUTLINED_FUNCTION_103_0(v130);
        OUTLINED_FUNCTION_17_1();
      }

      else
      {
        OUTLINED_FUNCTION_196();
        v225 = &v281;
LABEL_41:
        OUTLINED_FUNCTION_103_0(v225);
        v226 = v291;
        swift_dynamicCast();
        OUTLINED_FUNCTION_90_0();
        v177 = v226;
      }

      __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
      LODWORD(v127) = v279;
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_100_0();
      v227();
      OUTLINED_FUNCTION_52_0();
      goto LABEL_51;
  }
}

void MAX.applyMetadata(metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  v235 = v22;
  v236 = v21;
  OUTLINED_FUNCTION_147();
  v219 = type metadata accessor for UUID();
  v27 = OUTLINED_FUNCTION_2_1(v219);
  v215 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v31);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = OUTLINED_FUNCTION_12(v231);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  v218 = v35;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v230 = v37;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51();
  v232 = v39;
  OUTLINED_FUNCTION_43();
  v217 = type metadata accessor for Date();
  v40 = OUTLINED_FUNCTION_2_1(v217);
  v214 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v44);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = OUTLINED_FUNCTION_12(v228);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_30();
  v227 = v49;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_51();
  v229 = v51;
  a10 = v20;
  v52 = *(v20 + 16);
  v53 = type metadata accessor for Optional();
  v54 = OUTLINED_FUNCTION_2_1(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_30();
  v226 = v60;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_30();
  v225 = v63;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  v224 = v66;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  v223 = v69;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  v222 = v72;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_30();
  v221 = v75;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_51();
  v220 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  OUTLINED_FUNCTION_47(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v207 - v83;
  v234 = type metadata accessor for StorableValue(0);
  v85 = OUTLINED_FUNCTION_12(v234);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_14();
  v89 = MEMORY[0x1EEE9AC00](v88);
  v90 = MEMORY[0x1EEE9AC00](v89);
  v92 = (&v207 - v91);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_45_0();
  v95 = MEMORY[0x1EEE9AC00](v94);
  v97 = &v207 - v96;
  v98 = MEMORY[0x1EEE9AC00](v95);
  v100 = &v207 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  MEMORY[0x1EEE9AC00](v101);
  if (!*(v21 + 16))
  {
    (*(v56 + 8))(&v236[*(a10 + 48)], v53);
    OUTLINED_FUNCTION_45();
    goto LABEL_7;
  }

  v207 = v92;
  v208 = v105;
  v209 = v104;
  v211 = &v207 - v102;
  v233 = v103;
  v212 = v53;
  v210 = v56;
  v213 = v52;
  v106 = v236;
  v107 = &v236[*(a10 + 44)];
  v109 = *v107;
  v108 = v107[1];
  v110 = OUTLINED_FUNCTION_113();
  specialized __RawDictionaryStorage.find<A>(_:)(v110, v111);
  if ((v112 & 1) == 0)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    OUTLINED_FUNCTION_63();
    v122 = *v106;
    v123 = *(v106 + 1);
    *v124 = v21;
    *(v124 + 8) = v122;
    *(v124 + 16) = v123;
    *(v124 + 64) = 8;
    swift_willThrow();

    goto LABEL_53;
  }

  v113 = OUTLINED_FUNCTION_113();
  specialized Dictionary.subscript.getter(v113, v114, v21, v115);
  OUTLINED_FUNCTION_92(v84, 1, v234);
  if (v116)
  {
    outlined destroy of UUID?(v84, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    v117 = *(a10 + 48);
    (*(v210 + 8))(&v106[v117], v212);
    v118 = &v106[v117];
    v119 = 1;
    v120 = 1;
    v121 = v213;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
    goto LABEL_53;
  }

  _s12BiomeStreams13StorableValueOWObTm_0();
  OUTLINED_FUNCTION_1_17();
  outlined init with copy of StorableValue();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v126 = v106;
  v127 = a10;
  v128 = v213;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      outlined init with copy of StorableValue();
      v130 = *v97;
      v129 = v97[8];
      v237 = *v97;
      LOBYTE(v238) = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      OUTLINED_FUNCTION_60_0();
      v162 = OUTLINED_FUNCTION_40_0();
      if ((v162 & 1) == 0)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v162, type metadata accessor for StorableValue);
      v163 = OUTLINED_FUNCTION_15_0();
      v164(v163);
      if (v129)
      {
        v134 = &a11;
        goto LABEL_49;
      }

      v237 = v130;
      v139 = &a11;
      goto LABEL_44;
    case 2:
      outlined init with copy of StorableValue();
      v140 = &_s10Foundation4DateVSgMd;
      v129 = &_s10Foundation4DateVSgMR;
      v141 = v229;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v142, v143, v144, v145);
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v146, v147, v148, v149);
      OUTLINED_FUNCTION_89_0();
      v150 = OUTLINED_FUNCTION_201();
      if (!v150)
      {
        v185 = &_s10Foundation4DateVSgMd;
        v186 = &_s10Foundation4DateVSgMR;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_150(v150, type metadata accessor for StorableValue);
      v151 = OUTLINED_FUNCTION_131();
      v152(v151);
      v153 = v216;
      outlined init with take of UUID?(v141, v216, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_92(v153, 1, v217);
      if (!v116)
      {
        OUTLINED_FUNCTION_185(&v238);
        v194 = OUTLINED_FUNCTION_172();
        v195(v194);
        v196 = &a13;
        goto LABEL_45;
      }

      outlined destroy of UUID?(v153, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v154 = &a13;
      goto LABEL_36;
    case 3:
      outlined init with copy of StorableValue();
      v129 = *v23;
      v130 = *(v23 + 8);
      v237 = *v23;
      v238 = v130;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v155 = OUTLINED_FUNCTION_40_0();
      if (!v155)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_150(v155, type metadata accessor for StorableValue);
      v156 = OUTLINED_FUNCTION_15_0();
      v157(v156);
      if (v130)
      {
        v237 = v129;
        v238 = v130;
        v139 = &a12;
        goto LABEL_44;
      }

      v134 = &a12;
      goto LABEL_49;
    case 4:
      v135 = v207;
      outlined init with copy of StorableValue();
      v129 = *v135;
      v130 = v135[1];
      v237 = v129;
      v238 = v130;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_60_0();
      v136 = OUTLINED_FUNCTION_40_0();
      if (!v136)
      {
LABEL_23:

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v136, type metadata accessor for StorableValue);
      v137 = OUTLINED_FUNCTION_15_0();
      v138(v137);
      if (v130)
      {
        v237 = v129;
        v238 = v130;
        v139 = &a14;
        goto LABEL_44;
      }

      v134 = &a14;
      goto LABEL_49;
    case 5:
      v165 = v208;
      outlined init with copy of StorableValue();
      v130 = *v165;
      v129 = v165[1];
      v237 = v130;
      v238 = v129;
      v166 = OUTLINED_FUNCTION_81();
      outlined copy of Data?(v166, v167);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      OUTLINED_FUNCTION_60_0();
      v168 = OUTLINED_FUNCTION_40_0();
      if (!v168)
      {
        v187 = OUTLINED_FUNCTION_81();
        outlined consume of Data?(v187, v188);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v168, type metadata accessor for StorableValue);
      v169 = OUTLINED_FUNCTION_15_0();
      v170(v169);
      OUTLINED_FUNCTION_194();
      if (!(!v116 & v171))
      {
        v237 = v130;
        v238 = v129;
        v139 = &a15;
        goto LABEL_44;
      }

      v134 = &a15;
      goto LABEL_49;
    case 6:
      OUTLINED_FUNCTION_136(&v232);
      outlined init with copy of StorableValue();
      v140 = &_s10Foundation4UUIDVSgMd;
      v129 = &_s10Foundation4UUIDVSgMR;
      v141 = v232;
      OUTLINED_FUNCTION_89();
      outlined init with take of UUID?(v172, v173, v174, v175);
      OUTLINED_FUNCTION_89();
      outlined init with copy of Date?(v176, v177, v178, v179);
      OUTLINED_FUNCTION_89_0();
      v180 = OUTLINED_FUNCTION_201();
      if (v180)
      {
        OUTLINED_FUNCTION_150(v180, type metadata accessor for StorableValue);
        v181 = OUTLINED_FUNCTION_131();
        v182(v181);
        v183 = v218;
        outlined init with take of UUID?(v141, v218, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_92(v183, 1, v219);
        if (v116)
        {
          outlined destroy of UUID?(v183, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v154 = &a16;
LABEL_36:
          v184 = *(v154 - 32);
        }

        else
        {
          OUTLINED_FUNCTION_185(&a9);
          v197 = OUTLINED_FUNCTION_172();
          v198(v197);
          v196 = &a16;
LABEL_45:
          v184 = *(v196 - 32);
          OUTLINED_FUNCTION_89_0();
          swift_dynamicCast();
        }

        OUTLINED_FUNCTION_45();
        __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
        (v140[5])(&v126[*(v127 + 48)], v184, v129);
LABEL_51:
        v193 = type metadata accessor for StorableValue;
        v192 = v233;
      }

      else
      {
        v185 = &_s10Foundation4UUIDVSgMd;
        v186 = &_s10Foundation4UUIDVSgMR;
LABEL_40:
        outlined destroy of UUID?(v141, v185, v186);
LABEL_41:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        OUTLINED_FUNCTION_63();
        v190 = v189;
        v189[3] = v234;
        __swift_allocate_boxed_opaque_existential_0(v189);
        OUTLINED_FUNCTION_1_17();
        OUTLINED_FUNCTION_103_0(&v234);
        outlined init with copy of StorableValue();
        v190[7] = swift_getMetatypeMetadata();
        v190[4] = v128;
        *(v190 + 64) = 3;
        swift_willThrow();
        OUTLINED_FUNCTION_20_3();
        _s12BiomeStreams13StorableValueOWOhTm_0(v129, v191);
        v192 = v233;
        v193 = v190;
      }

      _s12BiomeStreams13StorableValueOWOhTm_0(v192, v193);
      break;
    case 7:
      OUTLINED_FUNCTION_150(EnumCaseMultiPayload, type metadata accessor for StorableValue);
      (*(v210 + 8))(&v126[*(v127 + 48)], v212);
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
      goto LABEL_51;
    default:
      outlined init with copy of StorableValue();
      v129 = *v100;
      v130 = v100[8];
      v237 = v129;
      LOBYTE(v238) = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      OUTLINED_FUNCTION_60_0();
      v131 = OUTLINED_FUNCTION_40_0();
      if ((v131 & 1) == 0)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_150(v131, type metadata accessor for StorableValue);
      v132 = OUTLINED_FUNCTION_15_0();
      v133(v132);
      if (v130)
      {
        v134 = &a10;
LABEL_49:
        OUTLINED_FUNCTION_59_0(v134);
      }

      else
      {
        v237 = v129;
        v139 = &a10;
LABEL_44:
        OUTLINED_FUNCTION_59_0(v139);
        swift_dynamicCast();
      }

      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
      (*(v23 + 40))(&v126[*(v127 + 48)], v130, v24);
      goto LABEL_51;
  }

LABEL_53:
  OUTLINED_FUNCTION_65();
}

uint64_t protocol witness for static AggregationComparable.< infix(_:_:) in conformance String(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _sSLsE1goiySbx_xtFZ10Foundation4UUIDV_Tt1g5()
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t _sSLsE1goiySbx_xtFZSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Data.Iterator();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-v14];
  switch(a4 >> 62)
  {
    case 2uLL:
      v16 = *(a3 + 16);
      break;
    default:
      break;
  }

  outlined copy of Data._Representation(a3, a4);
  Data.Iterator.init(_:at:)();
  switch(a2 >> 62)
  {
    case 2uLL:
      v17 = *(a1 + 16);
      break;
    default:
      break;
  }

  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x1E6969050]);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v29)
    {
      v21 = *(v9 + 8);
      v21(v15, v8);
      dispatch thunk of IteratorProtocol.next()();
      v21(v13, v8);
      v20 = v27 ^ 1;
      return v20 & 1;
    }

    v18 = v28;
    dispatch thunk of IteratorProtocol.next()();
    if (v26)
    {
      goto LABEL_10;
    }

    if (v18 < v25)
    {
      break;
    }

    if (v25 < v18)
    {
LABEL_10:
      v19 = *(v9 + 8);
      v19(v13, v8);
      v19(v15, v8);
      v20 = 0;
      return v20 & 1;
    }
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v15, v8);
  v20 = 1;
  return v20 & 1;
}

uint64_t static Data.> infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(a3, a4, a1, a2))
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x1865F5B00](a1, a2, a3, a4) ^ 1;
  }

  return v8 & 1;
}

ValueMetadata *type metadata completion function for AVG()
{
  return type metadata completion function for AVG();
}

{
  result = type metadata accessor for SQLExpression();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *type metadata completion function for COUNT()
{
  return type metadata completion function for COUNT();
}

{
  result = type metadata accessor for SQLExpression();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *type metadata completion function for COUNT_STAR()
{
  result = type metadata accessor for SQLDataType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_141();
  if (v3)
  {
    return OUTLINED_FUNCTION_98(*(v1 + 8));
  }

  OUTLINED_FUNCTION_144();
  v5 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_83(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_175();
  }

  else
  {
    type metadata accessor for SQLDataType();
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_129(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_105_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = type metadata accessor for SQLExpression();
    OUTLINED_FUNCTION_83(v7);
    if (*(v8 + 84) == v6)
    {
      OUTLINED_FUNCTION_174();
    }

    else
    {
      type metadata accessor for SQLDataType();
      v9 = *(v5 + 24);
    }

    v10 = OUTLINED_FUNCTION_129(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

void type metadata completion function for GROUP_CONCAT()
{
  type metadata accessor for SQLExpression();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SQLExpression?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SQLDataType();
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for SQLExpression?()
{
  if (!lazy cache variable for type metadata for SQLExpression?)
  {
    type metadata accessor for SQLExpression();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SQLExpression?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata completion function for MIN(uint64_t a1)
{
  result = type metadata accessor for SQLExpression();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = type metadata accessor for Optional();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MIN(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for SQLExpression();
  Description = v6[-1].Description;
  v8 = *(Description + 21);
  v9 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_181(v9);
  v13 = *(v12 + 84);
  v14 = *(*(a3 + 16) - 8);
  if (v8 <= v13)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v8;
  }

  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v15 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(Description + 80);
  v21 = Description[8];
  v22 = *(v12 + 80);
  v23 = *(v11 + 64);
  v24 = *(v14 + 80);
  v25 = *(v14 + 64);
  if (v16)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v23 + 7;
  v28 = v24 + 16;
  if (a2 <= v19)
  {
    goto LABEL_36;
  }

  v29 = v26 + ((v28 + ((v27 + ((v21 + v22 + ((v20 + 16) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v24);
  v30 = 8 * v29;
  if (v29 > 3)
  {
    goto LABEL_18;
  }

  v33 = ((a2 - v19 + ~(-1 << v30)) >> v30) + 1;
  if (HIWORD(v33))
  {
    v31 = *(a1 + v29);
    if (v31)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v33 <= 0xFF)
    {
      if (v33 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_36;
      }

LABEL_26:
      v34 = (v31 - 1) << v30;
      if (v29 > 3)
      {
        v34 = 0;
      }

      if (v29)
      {
        if (v29 <= 3)
        {
          v35 = v29;
        }

        else
        {
          v35 = 4;
        }

        switch(v35)
        {
          case 2:
            v36 = *a1;
            break;
          case 3:
            v36 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v36 = *a1;
            break;
          default:
            v36 = *a1;
            break;
        }
      }

      else
      {
        v36 = 0;
      }

      return v19 + (v36 | v34) + 1;
    }

    v31 = *(a1 + v29);
    if (*(a1 + v29))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if ((v18 & 0x80000000) == 0)
  {
    return OUTLINED_FUNCTION_98(*(a1 + 1));
  }

  v37 = (a1 + v20 + 16) & ~v20;
  if (v8 == v19)
  {
    v13 = v8;
    v38 = v6;
  }

  else
  {
    v37 = (v37 + v21 + v22) & ~v22;
    if (v13 != v19)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v28 + ((v27 + v37) & 0xFFFFFFFFFFFFFFF8)) & ~v24, v16, *(a3 + 16));
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    v38 = v10;
  }

  return __swift_getEnumTagSinglePayload(v37, v13, v38);
}

void storeEnumTagSinglePayload for MIN()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Description = type metadata accessor for SQLExpression()[-1].Description;
  v9 = Description[21];
  v10 = type metadata accessor for SQLDataType();
  v11 = 0;
  OUTLINED_FUNCTION_181(v10);
  if (v9 <= *(v13 + 84))
  {
    v14 = *(v13 + 84);
  }

  else
  {
    v14 = v9;
  }

  v15 = *(*(v1 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v14 > v17)
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = (*(v15 + 80) + 16 + ((*(v12 + 64) + 7 + ((*(Description + 8) + *(v13 + 80) + ((*(Description + 80) + 16) & ~*(Description + 80))) & ~*(v13 + 80))) & 0xFFFFFFFFFFFFFFF8)) & ~*(v15 + 80);
  v20 = *(v15 + 64);
  if (!v16)
  {
    ++v20;
  }

  v21 = v19 + v20;
  v22 = 8 * (v19 + v20);
  if (v3 > v18)
  {
    if (v21 <= 3)
    {
      v23 = ((v3 - v18 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v23))
      {
        v11 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v11 = v24;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v18 < v5)
  {
    v25 = ~v18 + v5;
    if (v21 < 4)
    {
      v26 = (v25 >> v22) + 1;
      if (v21)
      {
        v27 = v25 & ~(-1 << v22);
        bzero(v7, v21);
        if (v21 == 3)
        {
          *v7 = v27;
          *(v7 + 2) = BYTE2(v27);
        }

        else if (v21 == 2)
        {
          *v7 = v27;
        }

        else
        {
          *v7 = v25;
        }
      }
    }

    else
    {
      bzero(v7, v21);
      *v7 = v25;
      v26 = 1;
    }

    switch(v11)
    {
      case 1:
        *(v7 + v21) = v26;
        goto LABEL_49;
      case 2:
        *(v7 + v21) = v26;
        goto LABEL_49;
      case 3:
        goto LABEL_53;
      case 4:
        *(v7 + v21) = v26;
        goto LABEL_49;
      default:
        goto LABEL_49;
    }
  }

  switch(v11)
  {
    case 1:
      *(v7 + v21) = 0;
      if (v5)
      {
        goto LABEL_36;
      }

      goto LABEL_49;
    case 2:
      *(v7 + v21) = 0;
      if (!v5)
      {
        goto LABEL_49;
      }

      goto LABEL_36;
    case 3:
LABEL_53:
      __break(1u);
      return;
    case 4:
      *(v7 + v21) = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!v5)
      {
        goto LABEL_49;
      }

LABEL_36:
      if ((v17 & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_169();

        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      }

      else
      {
        if ((v5 & 0x80000000) != 0)
        {
          *v7 = v5 & 0x7FFFFFFF;
          *(v7 + 1) = 0;
        }

        else
        {
          *(v7 + 1) = v5 - 1;
        }

LABEL_49:
        OUTLINED_FUNCTION_169();
      }

      return;
  }
}

uint64_t type metadata completion function for AggregationEvent()
{
  result = type metadata accessor for StorableValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SQLDataType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  v2 = *(v0 - 192);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_125()
{

  return specialized Dictionary.subscript.getter(v2, v3, v0, v1);
}

void OUTLINED_FUNCTION_128()
{
  v2 = *(v0 - 72);

  MAX.getCurrentAggregationEvent()();
}

uint64_t OUTLINED_FUNCTION_142@<X0>(void *a1@<X8>)
{
  v2 = a1[1];
  *v1 = *a1;
  v1[1] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_148()
{
  v2 = *(v0 - 304);
  v3 = *(v0 - 192);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_149()
{
  v5 = *(v3 - 320);

  return outlined init with take of UUID?(v2, v5, v1, v0);
}

uint64_t OUTLINED_FUNCTION_150(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 384);

  return _s12BiomeStreams13StorableValueOWOhTm_0(v4, a2);
}

uint64_t OUTLINED_FUNCTION_157()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_161(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(v2 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_163()
{

  return _swift_stdlib_strtod_clocale();
}

uint64_t OUTLINED_FUNCTION_164@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;

  return type metadata accessor for StorableValue(0);
}

unint64_t OUTLINED_FUNCTION_165@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  return specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
}

uint64_t OUTLINED_FUNCTION_166()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1, uint64_t a2)
{
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 64) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_168()
{
  v3 = v0 + *(v1 - 544);

  return SQLDataType.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_173(int a1)
{
  *(v3 - 120) = a1;
  v4 = *(v1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_182()
{
  result = v1 + v0;
  v5 = *(v2 - 152);
  v4 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_183()
{
  v2 = *(*(v1 - 224) + 8);
  result = v0;
  v4 = *(v1 - 200);
  return result;
}

double OUTLINED_FUNCTION_184@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1) + 0.0;
  *(v1 + a1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_189(uint64_t result)
{
  *(v1 + *(result + 28)) = 0;
  *(v1 + *(result + 32)) = 0;
  return result;
}

__n128 *OUTLINED_FUNCTION_190(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v3 + *(v2 + 48);
  return result;
}

__n128 *OUTLINED_FUNCTION_191(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_197()
{

  return SQLExpression.sql.getter();
}

void OUTLINED_FUNCTION_198()
{
  v2 = *(v0 - 552);
  v3 = *(v0 - 112);

  MAX.getCurrentAggregationEvent()();
}

uint64_t *OUTLINED_FUNCTION_199(uint64_t a1, uint64_t *a2)
{
  a2[3] = v2;

  return __swift_allocate_boxed_opaque_existential_0(a2);
}

uint64_t OUTLINED_FUNCTION_201()
{
  v2 = *(v0 - 376);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_202()
{

  return StorableValue.init(_:dataType:)(v2 - 96, v0, v1);
}

uint64_t OUTLINED_FUNCTION_203()
{

  return StorableValue.init(_:dataType:)(v2 - 96, v1, v0);
}

uint64_t OUTLINED_FUNCTION_205()
{

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_206()
{

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 560);

  return _s12BiomeStreams13StorableValueOWOhTm_0(v4, a2);
}

uint64_t OUTLINED_FUNCTION_209(unsigned __int8 *a1)
{
  v2 = *a1;
}

uint64_t OUTLINED_FUNCTION_210(uint64_t a1, unint64_t a2)
{
  outlined consume of Data?(a1, a2);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v6;
    v9 = *v6;
    result = a1(&v9);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    ++v6;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static LibraryBase.lookupDatabaseResource(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4);
  result = v7(v6);
  v9 = result;
  v10 = result + 40;
  v11 = -*(result + 16);
  v12 = -1;
  while (1)
  {
    if (v11 + v12 == -1)
    {

      return 0;
    }

    if (++v12 >= *(v9 + 16))
    {
      break;
    }

    v13 = *(v10 - 8);
    if ((*(*(*v10 + 8) + 8))(v13) == v5 && v14 == v4)
    {

LABEL_12:

      return v13;
    }

    v10 += 16;
    v16 = OUTLINED_FUNCTION_13_2();

    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static LibraryBase.view(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v32 - v10;
  v32[2] = a1;
  v32[3] = a2;
  v32[0] = 46;
  v32[1] = 0xE100000000000000;
  v12 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  outlined destroy of Locale?(v11);
  if (v14)
  {
    v15 = *(a4 + 8);
    v16 = OUTLINED_FUNCTION_20();
    result = v17(v16);
    v19 = result;
    v20 = result + 40;
    v21 = -*(result + 16);
    v22 = -1;
    while (1)
    {
      if (v21 + v22 == -1)
      {

        return 0;
      }

      if (++v22 >= *(v19 + 16))
      {
        break;
      }

      v23 = v20 + 16;
      v24 = *(v20 - 8);
      result = (*(*v20 + 56))(a1, a2);
      v20 = v23;
      if (result)
      {
        v25 = result;

        return v25;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = String.subscript.getter();
    v27 = MEMORY[0x1865F6210](v26);
    v29 = v28;

    v25 = (*(a4 + 16))(v27, v29, a3, a4);
    v31 = v30;

    if (v25)
    {
      return (*(v31 + 56))(a1, a2, v25, v31);
    }

    return v25;
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static LibraryBase.streamBases.getter@<X0>(void *a1@<X8>)
{
  return static LibraryBase.streamBases.getter(a1);
}

{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  result = lazy protocol witness table accessor for type [BMStreamBase] and conformance [A](&lazy protocol witness table cache variable for type [BMStreamBase] and conformance [A], &_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  a1[4] = result;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

void *static LibraryBase.streamBase(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  v8(v7);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12_4();
  v30 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_4();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = OUTLINED_FUNCTION_10_2(v16, v29);
  v18(v17);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_29_2();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v31)
    {
      break;
    }

    v19 = [v31 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v20 == a1 && v22 == a2)
    {

      break;
    }

    v24 = OUTLINED_FUNCTION_13_2();

    if (v24)
    {
      break;
    }
  }

  v25 = *(v30 + 8);
  v26 = OUTLINED_FUNCTION_20();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v31;
}

uint64_t static LibraryBase.orderedDataflows.getter()
{
  return MEMORY[0x1E69E7CC0];
}

{
  return MEMORY[0x1E69E7CC0];
}

void *static LibraryBase.lookupDataflow(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a4 + 56);
  v9 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  v11 = v10(v9);
  v12 = *(v11 + 16);
  v13 = 32;
  if (v12)
  {
    while (1)
    {
      memcpy(__dst, (v11 + v13), sizeof(__dst));
      v14 = *&__dst[0] == a1 && *(&__dst[0] + 1) == a2;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 += 128;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    outlined init with copy of Dataflow(__dst, v18);

    memcpy(v18, __dst, sizeof(v18));
    destructiveProjectEnumData for StorableValue(v18, v16);
    v15 = v18;
  }

  else
  {
LABEL_8:

    _s12BiomeStreams8DataflowVSgWOi0_(__dst);
    v15 = __dst;
  }

  return memcpy(a5, v15, 0x80uLL);
}

double _s12BiomeStreams8DataflowVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static LibraryBase.databaseResourceIdentifier(legacyViewName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4);
  result = v7(v6);
  v9 = result;
  if (!*(result + 16))
  {
LABEL_14:

    return 0;
  }

  v10 = 0;
  v11 = result + 32;
  v23 = result + 32;
  v24 = *(result + 16);
  while (2)
  {
    if (v10 < *(v9 + 16))
    {
      v12 = (v11 + 16 * v10++);
      OUTLINED_FUNCTION_18_2(*v12, v12[1]);
      v25 = v13;
      result = v14();
      v15 = result;
      v16 = result + 40;
      v17 = -*(result + 16);
      v18 = -1;
      while (v17 + v18 != -1)
      {
        if (++v18 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v19 = *(v16 - 8);
        if ((*(*v16 + 24))() == v5 && v20 == v4)
        {

          goto LABEL_16;
        }

        v16 += 16;
        v22 = OUTLINED_FUNCTION_13_2();

        if (v22)
        {

LABEL_16:

          return (*(*(v25 + 8) + 8))();
        }
      }

      v11 = v23;
      if (v10 != v24)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

LABEL_18:
  __break(1u);
  return result;
}

void static LibraryBase.dataArtifacts.getter(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = (*(a1 + 8))();
  v4 = v3;
  v29 = *(v3 + 16);
  if (v29)
  {
    v26 = a2;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v27 = v3;
    v28 = v3 + 32;
    while (v5 < *(v4 + 16))
    {
      OUTLINED_FUNCTION_18_2(*(v28 + 16 * v5), *(v28 + 16 * v5 + 8));
      v8 = v7();
      v9 = *(v8 + 16);
      if (v9)
      {
        v30 = v6;
        v31 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v10 = 0;
        v11 = v31;
        v12 = (v8 + 40);
        while (v10 < *(v8 + 16))
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          v16 = *(v31 + 16);
          v15 = *(v31 + 24);
          if (v16 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
          }

          ++v10;
          v17 = *(v13 + 8);
          *(v31 + 16) = v16 + 1;
          v18 = v31 + 16 * v16;
          *(v18 + 32) = v14;
          *(v18 + 40) = v17;
          v12 += 2;
          if (v9 == v10)
          {

            v6 = v30;
            v4 = v27;
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
      v19 = *(v11 + 16);
      v20 = *(v6 + 16);
      if (__OFADD__(v20, v19))
      {
        goto LABEL_28;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v6 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v21;
      }

      if (*(v11 + 16))
      {
        v22 = *(v6 + 16);
        if ((*(v6 + 24) >> 1) - v22 < v19)
        {
          goto LABEL_30;
        }

        memcpy((v6 + 16 * v22 + 32), (v11 + 32), 16 * v19);

        if (v19)
        {
          v23 = *(v6 + 16);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_31;
          }

          *(v6 + 16) = v25;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_29;
        }
      }

      if (++v5 == v29)
      {

        a2 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_25:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMd, &_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMR);
    a2[4] = lazy protocol witness table accessor for type [BMStreamBase] and conformance [A](&lazy protocol witness table cache variable for type [LibraryArtifact.DataArtifact.Type] and conformance [A], &_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMd, &_sSay12BiomeStreams15LibraryArtifactO04DataD0_pXpGMR);
    *a2 = v6;
  }
}

uint64_t static LibraryBase.dataArtifact(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 104);
  v7 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  v8(v7);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12_4();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_4();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = OUTLINED_FUNCTION_10_2(v17, v30);
  v19(v18);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_29_2();
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v31)
    {
      break;
    }

    v20 = *(v32 + 8);
    v21 = OUTLINED_FUNCTION_104();
    if (v22(v21) == a1 && v23 == a2)
    {

      break;
    }

    v25 = OUTLINED_FUNCTION_13_2();
  }

  while ((v25 & 1) == 0);
  v26 = *(v10 + 8);
  v27 = OUTLINED_FUNCTION_20();
  v28(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return OUTLINED_FUNCTION_104();
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)()
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)();
}

{
  OUTLINED_FUNCTION_25_3();
  if (v3 && (v4 = OUTLINED_FUNCTION_20(), result = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), v1 + *(*(result - 8) + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_5_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_5_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [BMStreamBase] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_allocObject();
}

double static IntelligencePlatformView.updatedObjectDiffConfig.getter@<D0>(uint64_t a1@<X8>)
{
  return static IntelligencePlatformView.updatedObjectDiffConfig.getter(a1);
}

{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t UpdatedObjectDiffConfig.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpdatedObjectDiffConfig.identifierColumn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpdatedObjectDiffConfig.updatedTimestampColumn.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall UpdatedObjectDiffConfig.init(tableName:identifierColumn:updatedTimestampColumn:diffTableMaxAge:)(BiomeStreams::UpdatedObjectDiffConfig *__return_ptr retstr, Swift::String tableName, Swift::String identifierColumn, Swift::String updatedTimestampColumn, Swift::Double diffTableMaxAge)
{
  retstr->tableName = tableName;
  retstr->identifierColumn = identifierColumn;
  retstr->updatedTimestampColumn = updatedTimestampColumn;
  retstr->diffTableMaxAge = diffTableMaxAge;
}

uint64_t static IntelligencePlatformView.identifier.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  v7 = (*(*(v4 + 8) + 8))();
  MEMORY[0x1865F6280](46, 0xE100000000000000);
  v5 = (*(a2 + 16))(a1, a2);
  MEMORY[0x1865F6280](v5);

  return v7;
}

uint64_t static IntelligencePlatformView.metadata.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 16))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = MEMORY[0x1E69E7CC0];
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for UpdatedObjectDiffConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id BMEventBase.init(jsonDictionary:error:)(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11[0] = 0;
  v5 = [v3 initWithJSONDictionary:isa error:v11];

  v6 = v11[0];
  if (!v5)
  {
    v7 = v6;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (a2)
    {
      *a2 = _convertErrorToNSError(_:)();
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

_BYTE *storeEnumTagSinglePayload for Streams(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id one-time initialization function for general(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  result = __biome_log_for_category();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t static Logging.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id BMResourceSpecifier.__allocating_init(type:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1865F6160](a2, a3);

  v8 = [v6 initWithType:a1 name:v7];

  return v8;
}

uint64_t DatabaseResourceToken.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id static DatabaseResource.sqlDatabase(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static DatabaseResource.sqlDatabase(useCase:)(a1, a2, a3, a4);
}

{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_allocWithZone(BMSQLDatabase) init];
  v9 = (*(*(a4 + 8) + 8))(a3);
  v10 = MEMORY[0x1865F6160](v9);

  v11 = MEMORY[0x1865F6160](a1, a2);
  v16[0] = 0;
  LOBYTE(a3) = [v8 attachDatabaseWithResourceIdentifier:v10 useCase:v11 error:v16];

  if (a3)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t static DatabaseResource.database(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return static DatabaseResource.database(useCase:)(a1, a2, a3, a4, a5);
}

{
  v9 = (*(*(a4 + 8) + 8))(a3);
  v11 = v10;
  v12 = MEMORY[0x1865F6160](a1, a2);
  v13 = type metadata accessor for SQLDatabaseHandle();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  result = SQLDatabaseHandle.init(identifier:useCase:readOnly:)(v9, v11, v12, 1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void static DatabaseResource.databaseResourceToken(useCase:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  static DatabaseResource.databaseResourceToken(useCase:)(a1, a2, a3, a4, a5);
}

{
  v69 = a5;
  v73[2] = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v67 = v11;
  v68 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_12(v14, v59[0]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v59 - v17;
  OUTLINED_FUNCTION_43();
  v70 = type metadata accessor for URL();
  v19 = OUTLINED_FUNCTION_2_1(v70);
  v66 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v63 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v64 = v59 - v25;
  OUTLINED_FUNCTION_43();
  type metadata accessor for BMResourceSpecifier();
  v26 = *(a4 + 8);
  v27 = *(v26 + 8);
  v28 = v27(a3, v26);
  v30 = BMResourceSpecifier.__allocating_init(type:name:)(3, v28, v29);
  v31 = MEMORY[0x1865F6160](a1, a2);
  v32 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];

  v73[0] = 0;
  v33 = [v32 requestAccessToResource:v30 mode:1 error:v73];
  if (v33)
  {
    v34 = v33;
    v35 = v73[0];
    v36 = [v34 path];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v32;
      v59[2] = v39;
      v59[3] = v38;

      v40 = v27(a3, v26);
      OUTLINED_FUNCTION_1_19(v40, v41);
      v62 = v30;
      v42 = String.init<A>(_:)();
      OUTLINED_FUNCTION_7_4(v42, v43);
      String.append<A>(contentsOf:)();
      v44 = v72;
      v59[0] = v71;
      v59[1] = v72;
      v60 = v34;
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v70);
      v45 = *MEMORY[0x1E6968F70];
      v47 = v67;
      v46 = v68;
      v48 = *(v67 + 104);
      v49 = v65;
      OUTLINED_FUNCTION_8_4();
      v48();
      v50 = v63;
      URL.init(filePath:directoryHint:relativeTo:)();
      v73[0] = v59[0];
      v73[1] = v44;
      OUTLINED_FUNCTION_8_4();
      v48();
      lazy protocol witness table accessor for type String and conformance String();
      v51 = v64;
      URL.appending<A>(component:directoryHint:)();
      (*(v47 + 8))(v49, v46);
      v52 = *(v66 + 8);
      v53 = v70;
      v52(v50, v70);

      v54 = v69;
      URL.standardizedFileURL.getter();

      v52(v51, v53);
      *(v54 + *(type metadata accessor for DatabaseResourceToken() + 20)) = v60;
    }

    else
    {
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_9_4();
      v71 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17BMAccessAssertion_pMd, &_sSo17BMAccessAssertion_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_2_10();
      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      v56 = swift_allocError();
      OUTLINED_FUNCTION_5_3(v56, v57);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v55 = v73[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v58 = *MEMORY[0x1E69E9840];
}

uint64_t static DatabaseResource.view(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for UUID();
  v14 = OUTLINED_FUNCTION_2_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of UUID?(v12);
    result = (*(a4 + 48))(a3, a4);
  }

  else
  {
    (*(v16 + 32))(v20, v12, v13);
    v22 = *(a4 + 48);
    v39 = v4;
    v40 = v22;
    v23 = v22(a3, a4);
    v38 = a3;
    v24 = v23;
    MEMORY[0x1EEE9AC00](v23);
    *(&v36 - 2) = v20;
    v25 = specialized Sequence.first(where:)(partial apply for closure #1 in static DatabaseResource.view(for:), (&v36 - 4), v24);
    v37 = a4;

    if (v25)
    {
      (*(v16 + 8))(v20, v13);
      return v25;
    }

    (*(v16 + 8))(v20, v13);
    result = v40(v38, v37);
  }

  v26 = result;
  v27 = (result + 40);
  v28 = -*(result + 16);
  v29 = -1;
  while (1)
  {
    if (v28 + v29 == -1)
    {

      return 0;
    }

    if (++v29 >= *(v26 + 16))
    {
      break;
    }

    v25 = *(v27 - 1);
    v30 = *v27;
    (*(*v27 + 40))(v25, *v27);
    v41 = (*(*(v31 + 8) + 8))();
    v42 = v32;
    MEMORY[0x1865F6280](46, 0xE100000000000000);
    v33 = (*(v30 + 16))(v25, v30);
    MEMORY[0x1865F6280](v33);

    if (v41 == a1 && v42 == a2)
    {

LABEL_17:

      return v25;
    }

    v27 += 2;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void static DatabaseResource.databaseResourceToken(useCase:writable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a6;
  LODWORD(v71) = a3;
  v74[2] = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for URL.DirectoryHint();
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v67 = v12;
  v68 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_12(v15, v59[0]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = v59 - v18;
  OUTLINED_FUNCTION_43();
  v70 = type metadata accessor for URL();
  v19 = OUTLINED_FUNCTION_2_1(v70);
  v65 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v63 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v64 = v59 - v25;
  OUTLINED_FUNCTION_43();
  type metadata accessor for BMResourceSpecifier();
  v26 = *(a5 + 8);
  v27 = *(v26 + 8);
  v28 = v27(a4, v26);
  v30 = BMResourceSpecifier.__allocating_init(type:name:)(3, v28, v29);
  v31 = MEMORY[0x1865F6160](a1, a2);
  v32 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];

  if (v71)
  {
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  v74[0] = 0;
  v71 = v30;
  v34 = [v32 requestAccessToResource:v30 mode:v33 error:v74];
  if (v34)
  {
    v35 = v34;
    v36 = v74[0];
    v37 = [v35 path];
    if (v37)
    {
      v38 = v37;
      v59[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v32;
      v59[1] = v39;

      v40 = v27(a4, v26);
      OUTLINED_FUNCTION_1_19(v40, v41);
      v42 = String.init<A>(_:)();
      OUTLINED_FUNCTION_7_4(v42, v43);
      String.append<A>(contentsOf:)();
      v44 = v73;
      v59[0] = v72;
      __swift_storeEnumTagSinglePayload(v62, 1, 1, v70);
      v45 = *MEMORY[0x1E6968F70];
      v47 = v67;
      v46 = v68;
      v48 = *(v67 + 104);
      v61 = v35;
      v49 = v66;
      OUTLINED_FUNCTION_8_4();
      v48();
      v50 = v63;
      URL.init(filePath:directoryHint:relativeTo:)();
      v74[0] = v59[0];
      v74[1] = v44;
      OUTLINED_FUNCTION_8_4();
      v48();
      lazy protocol witness table accessor for type String and conformance String();
      v51 = v64;
      URL.appending<A>(component:directoryHint:)();
      (*(v47 + 8))(v49, v46);
      v52 = *(v65 + 8);
      v53 = v70;
      v52(v50, v70);

      v54 = v69;
      URL.standardizedFileURL.getter();

      v52(v51, v53);
      *(v54 + *(type metadata accessor for DatabaseResourceToken() + 20)) = v61;
    }

    else
    {
      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_9_4();
      v72 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17BMAccessAssertion_pMd, &_sSo17BMAccessAssertion_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_2_10();
      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      v56 = swift_allocError();
      OUTLINED_FUNCTION_5_3(v56, v57);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v55 = v74[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v58 = *MEMORY[0x1E69E9840];
}

uint64_t type metadata accessor for DatabaseResourceToken()
{
  result = type metadata singleton initialization cache for DatabaseResourceToken;
  if (!type metadata singleton initialization cache for DatabaseResourceToken)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static DatabaseResource.view(for:)(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(a1[1] + 56))();
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

unint64_t type metadata completion function for DatabaseResourceToken()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BMAccessAssertion();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for BMAccessAssertion()
{
  result = lazy cache variable for type metadata for BMAccessAssertion;
  if (!lazy cache variable for type metadata for BMAccessAssertion)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BMAccessAssertion);
  }

  return result;
}