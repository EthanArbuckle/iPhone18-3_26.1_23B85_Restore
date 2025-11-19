uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBSnapshotWeeklyAnalytics.Event.EventFields(char *a1, char *a2)
{
  v2 = *a2;
  v3 = DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSnapshotWeeklyAnalytics.Event.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBSnapshotWeeklyAnalytics.Event.EventFields()
{
  DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSnapshotWeeklyAnalytics.Event.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBSnapshotWeeklyAnalytics.Event.EventFields@<X0>(_BYTE *a1@<X8>)
{
  result = specialized DBSnapshotWeeklyAnalytics.Event.EventFields.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBSnapshotWeeklyAnalytics.Event.EventFields@<X0>(uint64_t *a1@<X8>)
{
  result = DBSnapshotWeeklyAnalytics.Event.EventFields.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:)(uint64_t a1, int a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v53 = a1;
  outlined init with copy of DateInterval?(a1, &v47 - v4, &_s9MomentsUI11CloudDeviceVSgMd);
  v6 = type metadata accessor for CloudDevice();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UTType?(v5, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_40:
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static CommonLogger.analytics);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v60 = v45;
      *v44 = 136446210;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880F0, &v60);
      _os_log_impl(&dword_21607C000, v42, v43, "DBSnapshotWeeklyAnalytics.%{public}s snapshotEventAggregation is not available. Skipping analytics submission for asset analytics messages", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x21CE94770](v45, -1, -1);
      MEMORY[0x21CE94770](v44, -1, -1);
    }

    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  CloudDevice.snapshotEventAggregation.getter(&aBlock);
  v62 = v57;
  v63 = v58;
  v64 = v59;
  v60 = aBlock;
  v61 = v56;
  outlined destroy of CloudDevice(v5);
  if (v60 == 1)
  {
    goto LABEL_40;
  }

  v7 = *(&v61 + 1);

  outlined destroy of UTType?(&v60, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  if (!v7)
  {
    goto LABEL_40;
  }

  v8 = 0;
  v9 = 0;
  v51 = "minAssetsDroppedInSnapshot";
  v50 = "meanAssetsDroppedInSnapshot";
  v49 = "maxAssetsDroppedInSnapshot";
  v48 = "eneSpecification";
  v47 = &v56;
  while (2)
  {
    v10 = *(&outlined read-only object #0 of static DBAssetModelEnum.allCases.getter + v8 + 32);
    v11 = 0xE700000000000000;
    v12 = 0x746361746E6F63;
    switch(v10)
    {
      case 1:
        v11 = 0xE90000000000006FLL;
        v12 = 0x746F68506576696CLL;
        if (*(v7 + 16))
        {
          goto LABEL_34;
        }

        goto LABEL_6;
      case 2:
        v11 = 0xE300000000000000;
        v12 = 7364973;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 3:
        v11 = 0xE800000000000000;
        v15 = 0x6C754D70616DLL;
        goto LABEL_38;
      case 4:
        v12 = 0x726946616964656DLL;
        v14 = 29811;
        goto LABEL_26;
      case 5:
        v12 = 0x696854616964656DLL;
        v14 = 25714;
LABEL_26:
        v11 = v14 | 0xEF79747261500000;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 6:
        v12 = 0x63416E6F69746F6DLL;
        v11 = 0xEE00797469766974;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 7:
        v11 = 0xE500000000000000;
        v13 = 1953458288;
        goto LABEL_23;
      case 8:
        v11 = 0xEA00000000006E6FLL;
        v15 = 0x63656C666572;
LABEL_38:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 9:
        v11 = 0xE600000000000000;
        v12 = 0x726574736F70;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 10:
        v12 = 0x4D664F6574617473;
        v11 = 0xEB00000000646E69;
        goto LABEL_33;
      case 11:
        v11 = 0xE500000000000000;
        v13 = 1701079414;
LABEL_23:
        v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 12:
        v12 = 0x74756F6B726F77;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 13:
        v12 = 0x4774756F6B726F77;
        v11 = 0xEC00000070756F72;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      case 14:
        v12 = 0x6E776F6E6B6E75;
        if (!*(v7 + 16))
        {
          goto LABEL_6;
        }

        goto LABEL_34;
      default:
LABEL_33:
        if (*(v7 + 16))
        {
LABEL_34:
          v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
          v18 = v17;

          if (v18)
          {
            v19 = *(*(v7 + 56) + 8 * v16);
            if (*(v19 + 16))
            {
              v20 = swift_allocObject();

              *(v20 + 16) = DBSnapshotWeeklyAnalytics.Event.defaultMessage(_:_:)(v53, v54 & 1);
              v21 = DBSnapshotWeeklyAnalytics.Event.assetType(_:)(v10);
              v52 = v9;
              v22 = objc_allocWithZone(MEMORY[0x277CCABB0]);
              v23 = [v22 initWithInteger_];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = *(v20 + 16);
              *(v20 + 16) = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x7079547465737361, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
              *(v20 + 16) = aBlock;
              DBSnapshotWeeklyAnalytics.Event.minMeanMaxInt(_:)(v19);
              v26 = v25;
              v28 = v27;
              v30 = v29;

              v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
              v32 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = *(v20 + 16);
              *(v20 + 16) = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, 0xD00000000000001BLL, v51 | 0x8000000000000000, v32);
              *(v20 + 16) = aBlock;
              v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
              v34 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = *(v20 + 16);
              *(v20 + 16) = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, 0xD00000000000001CLL, v50 | 0x8000000000000000, v34);
              *(v20 + 16) = aBlock;
              v35 = v52;
              v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
              v37 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = *(v20 + 16);
              *(v20 + 16) = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, 0xD00000000000001BLL, v49 | 0x8000000000000000, v37);
              *(v20 + 16) = aBlock;
              v38 = MEMORY[0x21CE91FC0](0xD00000000000002DLL, v48 | 0x8000000000000000);
              *&v57 = partial apply for closure #1 in closure #1 in DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:);
              *(&v57 + 1) = v20;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              *&v56 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
              *(&v56 + 1) = &block_descriptor_37;
              v39 = _Block_copy(&aBlock);

              v40 = AnalyticsSendEventLazy();
              _Block_release(v39);

              v9 = v35 | v40;
            }
          }
        }

        else
        {
LABEL_6:
        }

        if (++v8 != 15)
        {
          continue;
        }

        break;
    }

    return v9 & 1;
  }
}

void DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v156 - v5;
  outlined init with copy of DateInterval?(a1, &v156 - v5, &_s9MomentsUI11CloudDeviceVSgMd);
  v7 = type metadata accessor for CloudDevice();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    CloudDevice.snapshotEventAggregation.getter(v160);
    outlined destroy of CloudDevice(v6);
    v8 = *&v160[0];
    if (*&v160[0] == 1)
    {
      goto LABEL_4;
    }

    v15 = v161;
    v14 = v162;
    v16 = v163;
    v157 = v164;
    v158 = v165;
    v17 = swift_allocObject();
    *(v17 + 16) = DBSnapshotWeeklyAnalytics.Event.defaultMessage(_:_:)(a1, a2 & 1);
    if (v8 && *(v8 + 16))
    {
      DBSnapshotWeeklyAnalytics.Event.minMeanMaxInt(_:)(v8);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = one-time initialization token for analytics;

      if (v24 != -1)
      {
        swift_once();
      }

      v156 = v16;
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static CommonLogger.analytics);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136447234;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, aBlock);
        *(v28 + 12) = 2048;
        v30 = *(v8 + 16);

        *(v28 + 14) = v30;

        *(v28 + 22) = 2048;
        *(v28 + 24) = v19;
        *(v28 + 32) = 2048;
        *(v28 + 34) = v21;
        *(v28 + 42) = 2048;
        *(v28 + 44) = v23;
        _os_log_impl(&dword_21607C000, v26, v27, "DBSnapshotWeeklyAnalytics.%{public}s: numSuggestionsInSnapshot count=%ld Min=%f Mean=%f Max=%f.", v28, 0x34u);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x21CE94770](v29, -1, -1);
        MEMORY[0x21CE94770](v28, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v8 = 0x277CCA000uLL;
      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v32 = *(v17 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v32;
      *(v17 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, 0xD000000000000020, 0x8000000216576BA0, isUniquelyReferenced_nonNull_native);
      v34 = aBlock[0];
      *(v17 + 16) = aBlock[0];
      v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v36 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v34;
      *(v17 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, 0xD000000000000021, 0x8000000216576A10, v36);
      v37 = aBlock[0];
      *(v17 + 16) = aBlock[0];
      v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v39 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v37;
      *(v17 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, 0xD000000000000020, 0x80000002165768B0, v39);
      *(v17 + 16) = aBlock[0];
      v16 = v156;
    }

    if (v15 && *(v15 + 16))
    {
      DBSnapshotWeeklyAnalytics.Event.minMeanMaxInt(_:)(v15);
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = one-time initialization token for analytics;

      if (v46 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static CommonLogger.analytics);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136447234;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, aBlock);
        *(v50 + 12) = 2048;
        v52 = v16;
        v53 = *(v15 + 16);

        *(v50 + 14) = v53;
        v16 = v52;

        *(v50 + 22) = 2048;
        *(v50 + 24) = v41;
        *(v50 + 32) = 2048;
        *(v50 + 34) = v43;
        *(v50 + 42) = 2048;
        *(v50 + 44) = v45;
        _os_log_impl(&dword_21607C000, v48, v49, "DBSnapshotWeeklyAnalytics.%{public}s: snapshotSize count=%ld Min=%f Mean=%f Max=%f.", v50, 0x34u);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x21CE94770](v51, -1, -1);
        MEMORY[0x21CE94770](v50, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v8 = 0x277CCA000uLL;
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v55 = *(v17 + 16);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v55;
      *(v17 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, 0x5370616E536E696DLL, 0xEF657A6953746F68, v56);
      v57 = aBlock[0];
      *(v17 + 16) = aBlock[0];
      v58 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v59 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v57;
      *(v17 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 0xD000000000000010, 0x8000000216576A40, v59);
      v60 = aBlock[0];
      *(v17 + 16) = aBlock[0];
      v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v62 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v60;
      *(v17 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, 0x5370616E5378616DLL, 0xEF657A6953746F68, v62);
      *(v17 + 16) = aBlock[0];
    }

    v63 = v158;
    if (!v14 || !*(v14 + 16))
    {
      goto LABEL_42;
    }

    DBSnapshotWeeklyAnalytics.Event.minMeanMaxDouble(_:)(v14);
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = one-time initialization token for analytics;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static CommonLogger.analytics);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v8 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v8 = 136447234;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, aBlock);
      *(v8 + 12) = 2048;
      v75 = v16;
      v76 = *(v14 + 16);

      *(v8 + 14) = v76;
      v16 = v75;

      *(v8 + 22) = 2048;
      *(v8 + 24) = v65;
      *(v8 + 32) = 2048;
      *(v8 + 34) = v67;
      *(v8 + 42) = 2048;
      *(v8 + 44) = v69;
      _os_log_impl(&dword_21607C000, v72, v73, "DBSnapshotWeeklyAnalytics.%{public}s: timeBetweenSnapshotCreationAndMomentsUILaunch count=%ld Min=%f Mean=%f Max=%f.", v8, 0x34u);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x21CE94770](v74, -1, -1);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v77 = v65 / 60.0;
    if (COERCE__INT64(fabs(v65 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v77 > -9.22337204e18)
    {
      if (v77 < 9.22337204e18)
      {
        v78 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v79 = *(v17 + 16);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v79;
        *(v17 + 16) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, 0xD000000000000034, 0x8000000216576C00, v80);
        v81 = aBlock[0];
        *(v17 + 16) = aBlock[0];
        v82 = v67 / 60.0;
        if (COERCE__INT64(fabs(v67 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v82 <= -9.22337204e18)
          {
            goto LABEL_99;
          }

          if (v82 >= 9.22337204e18)
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          v83 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v84 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v81;
          *(v17 + 16) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v83, 0xD000000000000035, 0x8000000216576A90, v84);
          v85 = aBlock[0];
          *(v17 + 16) = aBlock[0];
          v86 = v69 / 60.0;
          if (COERCE__INT64(fabs(v69 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          if (v86 <= -9.22337204e18)
          {
LABEL_105:
            __break(1u);
LABEL_106:
            swift_once();
LABEL_61:
            v115 = type metadata accessor for Logger();
            __swift_project_value_buffer(v115, static CommonLogger.analytics);

            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              aBlock[0] = v119;
              *v118 = 136447234;
              *(v118 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, aBlock);
              *(v118 + 12) = 2048;
              v120 = *(v8 + 16);

              *(v118 + 14) = v120;

              *(v118 + 22) = 2048;
              *(v118 + 24) = v65;
              *(v118 + 32) = 2048;
              *(v118 + 34) = v67;
              *(v118 + 42) = 2048;
              *(v118 + 44) = v69;
              _os_log_impl(&dword_21607C000, v116, v117, "DBSnapshotWeeklyAnalytics.%{public}s: timeBetweenSnapshotDownloads count=%ld Min=%f Mean=%f Max=%f.", v118, 0x34u);
              __swift_destroy_boxed_opaque_existential_1(v119);
              MEMORY[0x21CE94770](v119, -1, -1);
              MEMORY[0x21CE94770](v118, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v121 = v65 / 60.0;
            if (COERCE__INT64(fabs(v65 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v121 > -9.22337204e18)
              {
                if (v121 < 9.22337204e18)
                {
                  v122 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                  v123 = *(v17 + 16);
                  v124 = swift_isUniquelyReferenced_nonNull_native();
                  aBlock[0] = v123;
                  *(v17 + 16) = 0x8000000000000000;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v122, 0xD00000000000001FLL, 0x8000000216576C70, v124);
                  v125 = aBlock[0];
                  *(v17 + 16) = aBlock[0];
                  v126 = v67 / 60.0;
                  if (COERCE__INT64(fabs(v67 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (v126 <= -9.22337204e18)
                    {
LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }

                    if (v126 >= 9.22337204e18)
                    {
LABEL_121:
                      __break(1u);
LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }

                    v127 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                    v128 = swift_isUniquelyReferenced_nonNull_native();
                    aBlock[0] = v125;
                    *(v17 + 16) = 0x8000000000000000;
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 0xD000000000000020, 0x8000000216576B10, v128);
                    v129 = aBlock[0];
                    *(v17 + 16) = aBlock[0];
                    v130 = v69 / 60.0;
                    if (COERCE__INT64(fabs(v69 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
LABEL_123:
                      __break(1u);
LABEL_124:
                      __break(1u);
                      goto LABEL_125;
                    }

                    if (v130 <= -9.22337204e18)
                    {
LABEL_125:
                      __break(1u);
LABEL_126:
                      __break(1u);
                      goto LABEL_127;
                    }

                    if (v130 >= 9.22337204e18)
                    {
LABEL_127:
                      __break(1u);
                      goto LABEL_128;
                    }

                    v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                    v132 = swift_isUniquelyReferenced_nonNull_native();
                    aBlock[0] = v129;
                    *(v17 + 16) = 0x8000000000000000;
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v131, 0xD00000000000001FLL, 0x8000000216576990, v132);
                    *(v17 + 16) = aBlock[0];
LABEL_74:
                    if (v63)
                    {

                      outlined destroy of UTType?(v160, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
                      if (*(v63 + 16))
                      {
                        DBSnapshotWeeklyAnalytics.Event.minMeanMaxDouble(_:)(v63);
                        v65 = v133;
                        v67 = v134;
                        v69 = v135;
                        if (one-time initialization token for analytics == -1)
                        {
LABEL_77:
                          v136 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v136, static CommonLogger.analytics);

                          v137 = Logger.logObject.getter();
                          v138 = static os_log_type_t.info.getter();
                          if (os_log_type_enabled(v137, v138))
                          {
                            v139 = swift_slowAlloc();
                            v140 = swift_slowAlloc();
                            aBlock[0] = v140;
                            *v139 = 136447234;
                            *(v139 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, aBlock);
                            *(v139 + 12) = 2048;
                            v141 = *(v63 + 16);

                            *(v139 + 14) = v141;

                            *(v139 + 22) = 2048;
                            *(v139 + 24) = v65;
                            *(v139 + 32) = 2048;
                            *(v139 + 34) = v67;
                            *(v139 + 42) = 2048;
                            *(v139 + 44) = v69;
                            _os_log_impl(&dword_21607C000, v137, v138, "DBSnapshotWeeklyAnalytics.%{public}s: timeBetweenSnapshotUploads count=%ld Min=%f Mean=%f Max=%f.", v139, 0x34u);
                            __swift_destroy_boxed_opaque_existential_1(v140);
                            MEMORY[0x21CE94770](v140, -1, -1);
                            MEMORY[0x21CE94770](v139, -1, -1);
                          }

                          else
                          {

                            swift_bridgeObjectRelease_n();
                          }

                          v142 = v65 / 60.0;
                          if (COERCE__INT64(fabs(v65 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            if (v142 > -9.22337204e18)
                            {
                              if (v142 < 9.22337204e18)
                              {
                                v143 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                                v144 = *(v17 + 16);
                                v145 = swift_isUniquelyReferenced_nonNull_native();
                                aBlock[0] = v144;
                                *(v17 + 16) = 0x8000000000000000;
                                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v143, 0xD00000000000001DLL, 0x8000000216576C90, v145);
                                v146 = aBlock[0];
                                *(v17 + 16) = aBlock[0];
                                v147 = v67 / 60.0;
                                if (COERCE__INT64(fabs(v67 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                                {
                                  if (v147 > -9.22337204e18)
                                  {
                                    if (v147 < 9.22337204e18)
                                    {
                                      v148 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                                      v149 = swift_isUniquelyReferenced_nonNull_native();
                                      aBlock[0] = v146;
                                      *(v17 + 16) = 0x8000000000000000;
                                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v148, 0xD00000000000001ELL, 0x8000000216576B40, v149);
                                      v150 = aBlock[0];
                                      *(v17 + 16) = aBlock[0];
                                      v151 = v69 / 60.0;
                                      if (COERCE__INT64(fabs(v69 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                                      {
                                        if (v151 > -9.22337204e18)
                                        {
                                          if (v151 < 9.22337204e18)
                                          {
                                            v152 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                                            v153 = swift_isUniquelyReferenced_nonNull_native();
                                            aBlock[0] = v150;
                                            *(v17 + 16) = 0x8000000000000000;
                                            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v152, 0xD00000000000001DLL, 0x80000002165769B0, v153);
                                            *(v17 + 16) = aBlock[0];
                                            goto LABEL_92;
                                          }

LABEL_131:
                                          __break(1u);
                                          return;
                                        }

LABEL_130:
                                        __break(1u);
                                        goto LABEL_131;
                                      }

LABEL_129:
                                      __break(1u);
                                      goto LABEL_130;
                                    }

LABEL_128:
                                    __break(1u);
                                    goto LABEL_129;
                                  }

                                  goto LABEL_126;
                                }

                                goto LABEL_124;
                              }

                              goto LABEL_122;
                            }

                            goto LABEL_120;
                          }

                          __break(1u);
                          goto LABEL_118;
                        }

LABEL_116:
                        swift_once();
                        goto LABEL_77;
                      }
                    }

                    else
                    {
                      outlined destroy of UTType?(v160, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
                    }

LABEL_92:
                    v154 = MEMORY[0x21CE91FC0](0xD00000000000002DLL, 0x8000000216588020);
                    aBlock[4] = partial apply for closure #1 in DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:);
                    aBlock[5] = v17;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
                    aBlock[3] = &block_descriptor_34;
                    v155 = _Block_copy(aBlock);

                    AnalyticsSendEventLazy();
                    _Block_release(v155);

                    return;
                  }

                  goto LABEL_114;
                }

                goto LABEL_112;
              }

              goto LABEL_110;
            }

            __break(1u);
            goto LABEL_108;
          }

          if (v86 >= 9.22337204e18)
          {
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          v87 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v88 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v85;
          *(v17 + 16) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, 0xD000000000000034, 0x8000000216576910, v88);
          *(v17 + 16) = aBlock[0];
LABEL_42:
          if (!v16 || !*(v16 + 16))
          {
            goto LABEL_58;
          }

          DBSnapshotWeeklyAnalytics.Event.minMeanMaxDouble(_:)(v16);
          v65 = v89;
          v67 = v90;
          v69 = v91;
          v92 = one-time initialization token for analytics;

          if (v92 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_97;
        }

LABEL_96:
        __break(1u);
LABEL_97:
        swift_once();
LABEL_45:
        v93 = type metadata accessor for Logger();
        __swift_project_value_buffer(v93, static CommonLogger.analytics);

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          aBlock[0] = v97;
          *v96 = 136447234;
          *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, aBlock);
          *(v96 + 12) = 2048;
          v8 = v16;
          v98 = *(v16 + 16);

          *(v96 + 14) = v98;

          *(v96 + 22) = 2048;
          *(v96 + 24) = v65;
          *(v96 + 32) = 2048;
          *(v96 + 34) = v67;
          *(v96 + 42) = 2048;
          *(v96 + 44) = v69;
          _os_log_impl(&dword_21607C000, v94, v95, "DBSnapshotWeeklyAnalytics.%{public}s: timeBetweenSnapshotCreationToDownloadComplete count=%ld Min=%f Mean=%f Max=%f.", v96, 0x34u);
          __swift_destroy_boxed_opaque_existential_1(v97);
          MEMORY[0x21CE94770](v97, -1, -1);
          MEMORY[0x21CE94770](v96, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v99 = v65 / 60.0;
        if (COERCE__INT64(fabs(v65 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v99 > -9.22337204e18)
          {
            if (v99 < 9.22337204e18)
            {
              v100 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              v101 = *(v17 + 16);
              v102 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v101;
              *(v17 + 16) = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, 0xD000000000000028, 0x8000000216576C40, v102);
              v103 = aBlock[0];
              *(v17 + 16) = aBlock[0];
              v104 = v67 / 60.0;
              if (COERCE__INT64(fabs(v67 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v104 <= -9.22337204e18)
                {
LABEL_108:
                  __break(1u);
                  goto LABEL_109;
                }

                if (v104 >= 9.22337204e18)
                {
LABEL_111:
                  __break(1u);
LABEL_112:
                  __break(1u);
                  goto LABEL_113;
                }

                v105 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                v106 = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v103;
                *(v17 + 16) = 0x8000000000000000;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, 0xD000000000000031, 0x8000000216576AD0, v106);
                v107 = aBlock[0];
                *(v17 + 16) = aBlock[0];
                v108 = v69 / 60.0;
                if (COERCE__INT64(fabs(v69 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
LABEL_113:
                  __break(1u);
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

                if (v108 <= -9.22337204e18)
                {
LABEL_115:
                  __break(1u);
                  goto LABEL_116;
                }

                if (v108 >= 9.22337204e18)
                {
LABEL_119:
                  __break(1u);
LABEL_120:
                  __break(1u);
                  goto LABEL_121;
                }

                v109 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                v110 = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v107;
                *(v17 + 16) = 0x8000000000000000;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v109, 0xD000000000000030, 0x8000000216576950, v110);
                *(v17 + 16) = aBlock[0];
LABEL_58:
                v8 = v157;
                if (!v157 || !*(v157 + 16))
                {
                  goto LABEL_74;
                }

                DBSnapshotWeeklyAnalytics.Event.minMeanMaxDouble(_:)(v157);
                v65 = v111;
                v67 = v112;
                v69 = v113;
                v114 = one-time initialization token for analytics;

                if (v114 == -1)
                {
                  goto LABEL_61;
                }

                goto LABEL_106;
              }

              goto LABEL_104;
            }

            goto LABEL_102;
          }

          goto LABEL_100;
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_95;
  }

  outlined destroy of UTType?(v6, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_4:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static CommonLogger.analytics);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v160[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, v160);
    _os_log_impl(&dword_21607C000, v10, v11, "DBSnapshotWeeklyAnalytics.%{public}s snapshotEventAggregation is not available. Skipping analytics submission for default messages", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }
}

unint64_t DBSnapshotWeeklyAnalytics.Event.defaultMessage(_:_:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44[-v5];
  v7 = type metadata accessor for Date();
  v49 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v48 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v47 = &v44[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v44[-v15];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x72616D6972507369, 0xEF65636976654479, isUniquelyReferenced_nonNull_native);
  v20 = v51;
  v50 = a1;
  outlined init with copy of DateInterval?(a1, v16, &_s9MomentsUI11CloudDeviceVSgMd);
  v21 = type metadata accessor for CloudDevice();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v22 + 48;
  v25 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  if (v23(v16, 1, v21) == 1)
  {
    outlined destroy of UTType?(v16, &_s9MomentsUI11CloudDeviceVSgMd);
    v26 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  }

  else
  {
    outlined init with copy of DateInterval?(&v16[*(v21 + 80)], v6, &_s10Foundation4DateVSgMd);
    if ((*(v49 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
      outlined destroy of CloudDevice(v16);
    }

    else
    {
      v27 = v49;
      v28 = v47;
      (*(v49 + 32))(v47, v6, v7);
      v46 = v24;
      v29 = v23;
      v30 = v48;
      static Date.distantPast.getter();
      v45 = static Date.> infix(_:_:)();
      v31 = *(v27 + 8);
      v32 = v30;
      v23 = v29;
      v31(v32, v7);
      v31(v28, v7);
      outlined destroy of CloudDevice(v16);
      if (v45)
      {
        v25 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        goto LABEL_9;
      }
    }

    v26 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v25 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  v33 = [v26 v25[336]];
LABEL_9:
  v34 = v33;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, 0xD000000000000014, 0x8000000216576850, v35);
  v36 = v51;
  outlined init with copy of DateInterval?(v50, v14, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v23(v14, 1, v21) == 1)
  {
    outlined destroy of UTType?(v14, &_s9MomentsUI11CloudDeviceVSgMd);
    v37 = 0;
  }

  else
  {
    v38 = &v14[*(v21 + 40)];
    if (v38[8])
    {
      v39 = -1;
    }

    else
    {
      v39 = *v38;
    }

    CloudDevice.Idiom.init(rawValue:)(v39);
    v40 = v51;
    outlined destroy of CloudDevice(v14);
    v37 = qword_2165A6570[v40];
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v25[336]];
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v36;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, 0x7954656369766564, 0xEA00000000006570, v42);
  return v51;
}

uint64_t DBSnapshotWeeklyAnalytics.Event.minMeanMaxInt(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = *(result + 32);
  v3 = v1 - 1;
  if (v1 == 1)
  {
    goto LABEL_21;
  }

  if (v1 < 5)
  {
    v4 = 1;
    v5 = *(result + 32);
    goto LABEL_8;
  }

  v6 = vdupq_n_s64(v2);
  v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
  v7 = (result + 56);
  v8 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = v6;
  do
  {
    v6 = vbslq_s8(vcgtq_s64(v6, v7[-1]), v7[-1], v6);
    v9 = vbslq_s8(vcgtq_s64(v9, *v7), *v7, v9);
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  v10 = vbslq_s8(vcgtq_s64(v9, v6), v6, v9);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v5 = vbsl_s8(vcgtd_s64(v11, v10.i64[0]), *v10.i8, v11);
  if (v3 != (v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_8:
    v12 = v1 - v4;
    v13 = (result + 8 * v4 + 32);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (*&v15 < *&v5)
      {
        v5 = v14;
      }

      --v12;
    }

    while (v12);
  }

  if (v1 >= 5)
  {
    v16 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v17 = vdupq_n_s64(v2);
    v18 = (result + 56);
    v19 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v17;
    do
    {
      v17 = vbslq_s8(vcgtq_s64(v17, v18[-1]), v17, v18[-1]);
      v20 = vbslq_s8(vcgtq_s64(v20, *v18), v20, *v18);
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    v21 = vbslq_s8(vcgtq_s64(v17, v20), v17, v20);
    v22 = vextq_s8(v21, v21, 8uLL).u64[0];
    v2 = vbsl_s8(vcgtd_s64(v21.i64[0], v22), *v21.i8, v22);
    if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = 1;
  }

  v23 = v1 - v16;
  v24 = (result + 8 * v16 + 32);
  do
  {
    v26 = *v24++;
    v25 = v26;
    if (v2 <= v26)
    {
      v2 = v25;
    }

    --v23;
  }

  while (v23);
LABEL_21:
  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = *(result + 32 + 8 * v27);
    v30 = __OFADD__(v28, v29);
    v28 += v29;
    if (v30)
    {
      break;
    }

    if (v1 == ++v27)
    {
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t DBSnapshotWeeklyAnalytics.Event.minMeanMaxDouble(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (result + 40);
    v5 = v1 - 1;
    v6 = *(result + 32);
    do
    {
      v7 = *v4++;
      v8 = v7;
      if (v7 < v6)
      {
        v6 = v8;
      }

      --v5;
    }

    while (v5);
    v9 = (result + 40);
    do
    {
      v10 = *v9++;
      v11 = v10;
      if (v2 < v10)
      {
        v2 = v11;
      }

      --v3;
    }

    while (v3);
  }

  if (v1 <= 3)
  {
    v12 = 0;
    v13 = 0.0;
LABEL_16:
    v16 = v1 - v12;
    v17 = (result + 8 * v12 + 32);
    do
    {
      v18 = *v17++;
      v13 = v13 + v18;
      --v16;
    }

    while (v16);
    return result;
  }

  v12 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = (result + 48);
  v13 = 0.0;
  v15 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v13 = v13 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
    v14 += 4;
    v15 -= 4;
  }

  while (v15);
  if (v1 != v12)
  {
    goto LABEL_16;
  }

  return result;
}

unint64_t specialized DBSnapshotWeeklyAnalytics.Event.AssetType.init(rawValue:)(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

unint64_t specialized DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion.init(rawValue:)(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t specialized DBSnapshotWeeklyAnalytics.Event.EventFields.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type DBSnapshotWeeklyAnalytics.Event.AssetType and conformance DBSnapshotWeeklyAnalytics.Event.AssetType()
{
  result = lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.AssetType and conformance DBSnapshotWeeklyAnalytics.Event.AssetType;
  if (!lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.AssetType and conformance DBSnapshotWeeklyAnalytics.Event.AssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.AssetType and conformance DBSnapshotWeeklyAnalytics.Event.AssetType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBSnapshotWeeklyAnalytics.Event.AssetType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DBSnapshotWeeklyAnalytics.Event.AssetType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DBSnapshotWeeklyAnalytics.Event.AssetType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI25DBSnapshotWeeklyAnalyticsC5EventV9AssetTypeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBSnapshotWeeklyAnalytics.Event.AssetType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSnapshotWeeklyAnalytics.Event.DeviceType and conformance DBSnapshotWeeklyAnalytics.Event.DeviceType()
{
  result = lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.DeviceType and conformance DBSnapshotWeeklyAnalytics.Event.DeviceType;
  if (!lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.DeviceType and conformance DBSnapshotWeeklyAnalytics.Event.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.DeviceType and conformance DBSnapshotWeeklyAnalytics.Event.DeviceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion and conformance DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion()
{
  result = lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion and conformance DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion;
  if (!lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion and conformance DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion and conformance DBSnapshotWeeklyAnalytics.Event.OnboardingCompletion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSnapshotWeeklyAnalytics.Event.EventFields and conformance DBSnapshotWeeklyAnalytics.Event.EventFields()
{
  result = lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.EventFields and conformance DBSnapshotWeeklyAnalytics.Event.EventFields;
  if (!lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.EventFields and conformance DBSnapshotWeeklyAnalytics.Event.EventFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshotWeeklyAnalytics.Event.EventFields and conformance DBSnapshotWeeklyAnalytics.Event.EventFields);
  }

  return result;
}

uint64_t type metadata accessor for DBSnapshotWeeklyAnalytics()
{
  result = type metadata singleton initialization cache for DBSnapshotWeeklyAnalytics;
  if (!type metadata singleton initialization cache for DBSnapshotWeeklyAnalytics)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DBSnapshotWeeklyAnalytics()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for DBSnapshotWeeklyAnalytics.Event.EventFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBSnapshotWeeklyAnalytics.Event.EventFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #1 in DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:)()
{
  specialized closure #1 in DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:)(v0);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #1 in DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:)(uint64_t a1)
{
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.analytics);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880D0, v12);
    *(v5 + 12) = 2080;
    swift_beginAccess();
    type metadata accessor for NSObject();

    v7 = Dictionary.debugDescription.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v12);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_21607C000, v3, v4, "DBSnapshotWeeklyAnalytics.%{public}s Submitted analytics message: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

uint64_t partial apply for closure #1 in closure #1 in DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:)()
{
  specialized closure #1 in closure #1 in DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:)(v0);
}

uint64_t specialized closure #1 in closure #1 in DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:)(uint64_t a1)
{
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.analytics);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165880F0, v12);
    *(v5 + 12) = 2080;
    swift_beginAccess();
    type metadata accessor for NSObject();

    v7 = Dictionary.debugDescription.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v12);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_21607C000, v3, v4, "DBSnapshotWeeklyAnalytics.%{public}s: Submitted analytics message: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

size_t Route.__allocating_init(routeLocations:assetClass:)(uint64_t a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34[-v6];
  v8 = type metadata accessor for RouteLocation();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v12 = *a2;
    if (v9 >> 62)
    {
      v13 = v9;
      v14 = __CocoaSet.count.getter();
      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v9;
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_4:
        v36 = v2;
        v42 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        v35 = v12;
        v16 = 0;
        v17 = v42;
        v18 = v13;
        v37 = v13 & 0xC000000000000001;
        v38 = v14;
        v2 = v36;
        v39 = v13;
        do
        {
          if (v37)
          {
            v19 = MEMORY[0x21CE93180](v16, v18);
          }

          else
          {
            v19 = *(v18 + 8 * v16 + 32);
          }

          v20 = v19;
          [v19 coordinate];
          v22 = v21;
          [v20 coordinate];
          v24 = v23;
          [v20 speed];
          v26 = v25;
          v27 = [v20 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = type metadata accessor for Date();
          v29 = *(*(v28 - 8) + 56);
          v29(v7, 0, 1, v28);
          v30 = *(v8 + 20);
          v29(&v11[v30], 1, 1, v28);
          v31 = &v11[*(v8 + 24)];
          *v31 = v22;
          *(v31 + 1) = v24;
          v31[16] = 0;
          *v11 = v26;
          v11[8] = 0;
          outlined assign with take of Date?(v7, &v11[v30]);
          v42 = v17;
          v33 = *(v17 + 16);
          v32 = *(v17 + 24);
          if (v33 >= v32 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
            v2 = v36;
            v17 = v42;
          }

          ++v16;
          *(v17 + 16) = v33 + 1;
          outlined init with take of RouteLocation(v11, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33);
          v18 = v39;
        }

        while (v38 != v16);

        LOBYTE(v12) = v35;
LABEL_15:
        v41 = v12;
        result = (*(v2 + 200))(v17, &v41);
        if (result)
        {
          return result;
        }

        return 0;
      }
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  return 0;
}

void *Route.routeLocations.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI5Route__routeLocations;
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI5Route__routeLocations))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Route__routeLocations);
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))();
    *(v0 + v1) = v2;
  }

  v3 = specialized static Route.filterDummyLocations(_:)(v2);

  return v3;
}

uint64_t Route._rawRouteLocations.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  v3 = v2;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI13RouteLocationVGMd);
  lazy protocol witness table accessor for type [RouteLocation] and conformance <A> [A](&lazy protocol witness table cache variable for type [RouteLocation] and conformance <A> [A], &lazy protocol witness table cache variable for type RouteLocation and conformance RouteLocation);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v1, v3);
  return v5;
}

uint64_t Route.AssetDataKeys.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Route.AssetDataKeys.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Route.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Route.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Route.AssetDataKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Route.AssetDataKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

id Route.__allocating_init(dataFuture:dataURLFuture:assetClass:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), char *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = v12;
  v14 = *a5;
  *&v12[OBJC_IVAR____TtC9MomentsUI5Route__routeLocations] = 0;
  if (a1)
  {
    v15 = &v12[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v15 = a1;
    *(v15 + 1) = a2;
    if (!a3)
    {
      a4 = 0;
      a3 = closure #3 in DBAssetModel.init(from:);
    }
  }

  else
  {
    if (!a3)
    {
      type metadata accessor for Blob();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v17 = &v13[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v17 = partial apply for closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:);
    v17[1] = v16;
  }

  v18 = &v13[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v18 = a3;
  v18[1] = a4;
  v13[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v14;
  v20.receiver = v13;
  v20.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v20, sel_init);
}

id Route.init(dataFuture:dataURLFuture:assetClass:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), char *a5)
{
  v7 = a3;
  v8 = *a5;
  *&v5[OBJC_IVAR____TtC9MomentsUI5Route__routeLocations] = 0;
  if (a1)
  {
    v9 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v9 = a1;
    v9[1] = a2;
    if (!a3)
    {
      a4 = 0;
      v7 = closure #3 in DBAssetModel.init(from:);
    }
  }

  else
  {
    if (!a3)
    {
      type metadata accessor for Blob();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = a4;
    v11 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v11 = closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:)partial apply;
    v11[1] = v10;
  }

  v12 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v12 = v7;
  v12[1] = a4;
  v5[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v8;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t Route.init(routeLocations:assetClass:)(objc_class *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v71 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for RouteLocation();
  v67 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = (&v62 - v13);
  MEMORY[0x28223BE20](v12);
  v68 = &v62 - v14;
  v15 = type metadata accessor for JSONEncoder.OutputFormatting();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v69 = *a2;
  v70 = OBJC_IVAR____TtC9MomentsUI5Route__routeLocations;
  *(&v3->isa + OBJC_IVAR____TtC9MomentsUI5Route__routeLocations) = 0;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v17 = JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
  v18 = v16;
  v19 = v17;
  v20 = *(v18 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA60;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v73 = v21;
  lazy protocol witness table accessor for type RouteLocation and conformance RouteLocation(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v22 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v22 != 2 && (v22 & 1) != 0 && *(a1 + 2))
  {
    v23 = v68;
    outlined init with copy of RouteLocation(a1 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v68);
    v24 = v23 + *(v9 + 24);
    if (*(v24 + 16) != 1)
    {
      goto LABEL_24;
    }

    outlined destroy of RouteLocation(v23);
  }

  v25 = v71;
  while (1)
  {
    v73 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI13RouteLocationVGMd);
    lazy protocol witness table accessor for type [RouteLocation] and conformance <A> [A](&lazy protocol witness table cache variable for type [RouteLocation] and conformance <A> [A], &lazy protocol witness table cache variable for type RouteLocation and conformance RouteLocation);
    v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v25)
    {

      swift_bridgeObjectRelease_n();
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static CommonLogger.database);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21607C000, v29, v30, "Route.init: Failed to encode routeLocations", v31, 2u);
        MEMORY[0x21CE94770](v31, -1, -1);
      }

      type metadata accessor for Route();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v33 = v26;
    v34 = v27;

    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static CommonLogger.database);
    outlined copy of Data._Representation(v33, v34);
    v23 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v23, v25))
    {
      outlined consume of Data._Representation(v33, v34);
LABEL_30:

      *(&v3->isa + v70) = a1;

      v49 = swift_allocObject();
      *(v49 + 16) = v33;
      *(v49 + 24) = v34;
      v50 = (v3 + OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture);
      *v50 = partial apply for closure #1 in Blob.init(data:assetClass:);
      v50[1] = v49;
      v51 = (&v3->isa + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture);
      *v51 = closure #3 in DBAssetModel.init(from:);
      v51[1] = 0;
      *(&v3->isa + OBJC_IVAR____TtC9MomentsUI4Blob__assetClass) = v69;
      outlined copy of Data._Representation(v33, v34);
      v52 = type metadata accessor for Blob();
      v72.receiver = v3;
      v72.super_class = v52;
      v53 = [(objc_class *)&v72 init];

      outlined consume of Data._Representation(v33, v34);
      return v53;
    }

    v36 = swift_slowAlloc();
    *v36 = 134217984;
    v37 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      break;
    }

    if (!v37)
    {
      v24 = BYTE6(v34);
LABEL_29:
      *(v36 + 4) = v24;
      v48 = v36;
      outlined consume of Data._Representation(v33, v34);
      _os_log_impl(&dword_21607C000, v23, v25, "Route.init: Encoded %ld bytes of JSON", v48, 0xCu);
      MEMORY[0x21CE94770](v48, -1, -1);
      goto LABEL_30;
    }

    LODWORD(v24) = HIDWORD(v33) - v33;
    if (!__OFSUB__(HIDWORD(v33), v33))
    {
      v24 = v24;
      goto LABEL_29;
    }

    __break(1u);
LABEL_47:
    swift_once();
LABEL_42:
    v57 = v33 / v23;
    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static CommonLogger.database);
    v59 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v9))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v57;
      _os_log_impl(&dword_21607C000, v59, v9, "Route.init: Padding %ld locations", v60, 0xCu);
      MEMORY[0x21CE94770](v60, -1, -1);
    }

    v8 = v65;
    outlined init with copy of RouteLocation(v3, v65);
    v61 = _sSa9repeating5countSayxGx_SitcfC9MomentsUI13RouteLocationV_Tt1g5(v8, v57);
    v73 = a1;
    specialized Array.append<A>(contentsOf:)(v61);
    outlined consume of Data._Representation(v19, v20);
    outlined destroy of RouteLocation(v68);
    a1 = v73;

    v19 = v67;
LABEL_45:
    outlined destroy of RouteLocation(v3);
    v3 = v62;
  }

  if (v37 != 2)
  {
    v24 = 0;
    goto LABEL_29;
  }

  v39 = *(v33 + 16);
  v38 = *(v33 + 24);
  v40 = __OFSUB__(v38, v39);
  v24 = v38 - v39;
  if (!v40)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_24:
  v62 = v3;
  v41 = *v24;
  v20 = *(v24 + 8);
  v64.isa = *v23;
  v63 = *(v23 + 8);
  static Date.distantFuture.getter();
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v67 = v19;
  v44 = *(v43 + 56);
  v44(v8, 0, 1, v42);
  v45 = *(v9 + 20);
  v3 = v66;
  v44(v66 + v45, 1, 1, v42);
  v19 = v67;
  v46 = v3 + *(v9 + 24);
  *v46 = v41;
  *(v46 + 1) = v20;
  v46[16] = 0;
  v3->isa = v64.isa;
  LOBYTE(v3[1].isa) = v63;
  outlined assign with take of Date?(v8, v3 + v45);
  lazy protocol witness table accessor for type RouteLocation and conformance RouteLocation(&lazy protocol witness table cache variable for type RouteLocation and conformance RouteLocation, type metadata accessor for RouteLocation);
  v25 = v71;
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v25)
  {

    outlined destroy of RouteLocation(v68);

    v25 = 0;
    goto LABEL_45;
  }

  v54 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v54 != 2)
    {
      goto LABEL_49;
    }

    v56 = *(result + 16);
    v55 = *(result + 24);
    v23 = v55 - v56;
    if (!__OFSUB__(v55, v56))
    {
LABEL_40:
      if (!v23)
      {
        goto LABEL_49;
      }

      v20 = v47;
      v19 = result;
      v33 = 512000;
      if (one-time initialization token for database == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }

    __break(1u);
  }

  else if (!v54)
  {
    v23 = BYTE6(v47);
    goto LABEL_40;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v23 = HIDWORD(result) - result;
    goto LABEL_40;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

id Route.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Route();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with take of RouteLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *specialized static Route.filterDummyLocations(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - v9;
  v10 = type metadata accessor for RouteLocation();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v17 = &v32 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v41 = *(v14 + 20);
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v39 = (v6 + 48);
    v33 = (v6 + 8);
    v34 = (v6 + 32);
    v21 = MEMORY[0x277D84F90];
    v35 = &v32 - v16;
    v40 = v20;
    v32 = v13;
    while (1)
    {
      outlined init with copy of RouteLocation(v19, v17);
      outlined init with copy of Date?(&v17[v41], v4);
      if ((*v39)(v4, 1, v5) == 1)
      {
        break;
      }

      v23 = v36;
      (*v34)(v36, v4, v5);
      v24 = v37;
      static Date.distantFuture.getter();
      lazy protocol witness table accessor for type RouteLocation and conformance RouteLocation(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      v26 = *v33;
      v27 = v24;
      v13 = v32;
      (*v33)(v27, v5);
      v28 = v23;
      v17 = v35;
      v26(v28, v5);
      if (v25)
      {
        goto LABEL_8;
      }

      outlined destroy of RouteLocation(v17);
      v22 = v40;
LABEL_4:
      v19 += v22;
      if (!--v18)
      {
        return v21;
      }
    }

    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
LABEL_8:
    outlined init with take of RouteLocation(v17, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v30 = v21[2];
    v29 = v21[3];
    if (v30 >= v29 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v21);
    }

    v21[2] = v30 + 1;
    v22 = v40;
    outlined init with take of RouteLocation(v13, v21 + v38 + v30 * v40);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t lazy protocol witness table accessor for type [RouteLocation] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI13RouteLocationVGMd);
    lazy protocol witness table accessor for type RouteLocation and conformance RouteLocation(a2, type metadata accessor for RouteLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized static Route.route2DB(_:)(void *a1)
{
  v1 = specialized static Blob.blob2DB(_:ext:)(a1, 1852797802, 0xE400000000000000);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x626F6C622D2DLL, 0xE600000000000000), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9MomentsUI11DBAssetDataCtGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21658CA50;
    *(inited + 32) = 0x6574756F722D2DLL;
    v6 = inited + 32;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v4;
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(v6, &_sSS_9MomentsUI11DBAssetDataCtMd);
    return v7;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v9);
  }
}

unint64_t lazy protocol witness table accessor for type Route.AssetDataKeys and conformance Route.AssetDataKeys()
{
  result = lazy protocol witness table cache variable for type Route.AssetDataKeys and conformance Route.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type Route.AssetDataKeys and conformance Route.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Route.AssetDataKeys and conformance Route.AssetDataKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Route.AssetDataKeys and conformance Route.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type Route.AssetDataKeys and conformance Route.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Route.AssetDataKeys and conformance Route.AssetDataKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RouteLocation and conformance RouteLocation(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MutableMapViewModel.iconImage(mapItem:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](MutableMapViewModel.iconImage(mapItem:), 0, 0);
}

uint64_t MutableMapViewModel.iconImage(mapItem:)()
{
  v0[21] = objc_opt_self();
  v0[22] = objc_opt_self();
  v0[23] = type metadata accessor for MainActor();
  v0[24] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MutableMapViewModel.iconImage(mapItem:), v2, v1);
}

{
  v1 = *(v0 + 176);

  *(v0 + 200) = [v1 mainScreen];

  return MEMORY[0x2822009F8](MutableMapViewModel.iconImage(mapItem:), 0, 0);
}

{
  *(v0 + 208) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MutableMapViewModel.iconImage(mapItem:), v2, v1);
}

{
  v1 = *(v0 + 200);

  [v1 scale];
  *(v0 + 216) = v2;

  return MEMORY[0x2822009F8](MutableMapViewModel.iconImage(mapItem:), 0, 0);
}

{
  v1 = v0[27];
  v2 = *(v0 + 21);
  v3 = *(v0 + 19);
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = MutableMapViewModel.iconImage(mapItem:);
  v4 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 13) = &block_descriptor_35;
  *(v0 + 14) = v4;
  [v2 requestImageForMapItem:v3 size:2 forScale:v0 + 10 completionHandler:v1];

  return MEMORY[0x282200938](v0 + 2);
}

{

  return MEMORY[0x2822009F8](MutableMapViewModel.iconImage(mapItem:), 0, 0);
}

{
  v7 = v0;
  v1 = v0[20];
  v2 = v0[18];
  type metadata accessor for Image();
  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v3 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v2, 0, &v6);
  v4 = v0[1];

  return v4(v3);
}

void __swiftcall MutableMapViewModel.fillColor(mapItem:)(MomentsUI::Color_optional *__return_ptr retstr, MKMapItem mapItem)
{
  v3 = [(objc_class *)mapItem.super.isa _geoMapItem];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v4 _styleAttributes];
    swift_unknownObjectRelease();
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = [v5 newFillColorForStyleAttributes:v6 forScale:v9];
    v11 = v5;
    if (v10)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      Color.init(color:)(v12);
      v13 = v15;
      v14 = v16;
    }

    else
    {
      v13 = 0uLL;
      v14 = 0uLL;
    }

    *&retstr->value.red = v13;
    *&retstr->value.blue = v14;
    retstr->is_nil = v10 == 0;
  }

  else
  {
    __break(1u);
  }
}

id MutableMapViewModel.workStyleAttributes.getter()
{
  result = [objc_opt_self() workStyleAttributes];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t MutableMapViewModel.workIconImage()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MutableMapViewModel.workIconImage(), 0, 0);
}

{
  v1 = [objc_opt_self() workStyleAttributes];
  v0[3] = v1;
  if (v1)
  {
    v0[4] = objc_opt_self();
    v0[5] = objc_opt_self();
    v0[6] = type metadata accessor for MainActor();
    v0[7] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v1 = MutableMapViewModel.workIconImage();
    v2 = v4;
    v3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  v1 = *(v0 + 40);

  *(v0 + 64) = [v1 mainScreen];

  return MEMORY[0x2822009F8](MutableMapViewModel.workIconImage(), 0, 0);
}

{
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MutableMapViewModel.workIconImage(), v2, v1);
}

{
  v1 = *(v0 + 64);

  [v1 scale];
  *(v0 + 80) = v2;

  return MEMORY[0x2822009F8](MutableMapViewModel.workIconImage(), 0, 0);
}

{
  v8 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = [*(v0 + 32) imageForStyle:v1 size:2 forScale:0 format:*(v0 + 80)];

  type metadata accessor for Image();
  v7 = *(v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v4 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v3, 0, &v7);
  v5 = *(v0 + 8);

  return v5(v4);
}

void __swiftcall MutableMapViewModel.workIconFillColor()(MomentsUI::Color_optional *__return_ptr retstr)
{
  v2 = [objc_opt_self() workStyleAttributes];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
    v7 = v6;

    v8 = [v4 newFillColorForStyleAttributes:v3 forScale:v7];
    v9 = v4;
    if (v8)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      Color.init(color:)(v10);
      v11 = v13;
      v12 = v14;
    }

    else
    {
      v11 = 0uLL;
      v12 = 0uLL;
    }

    *&retstr->value.red = v11;
    *&retstr->value.blue = v12;
    retstr->is_nil = v8 == 0;
  }

  else
  {
    __break(1u);
  }
}

id MutableMapViewModel.__allocating_init(viewport:styles:location:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a4, v9);
  memset(v17, 0, sizeof(v17));
  v18 = 1;
  v13 = *(v4 + 776);
  v14 = a1;

  v15 = v13(v14, a2, a3, v12, 0, v17);
  MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

  (*(v10 + 8))(a4, v9);
  return v15;
}

uint64_t MutableMapViewModel.__allocating_init(viewport:styles:representativeLocation:represenativeColor:locations:dateInterval:)(void *a1, uint64_t a2, unint64_t a3, __n128 *a4, unint64_t a5, unint64_t a6)
{
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  v19 = a4[1];
  v20 = a4[2].n128_u8[0];
  if (a5 >> 62)
  {
    v32 = v15;
    v37 = v19;
    v38 = v18;
    v33 = __CocoaSet.count.getter();
    v19 = v37;
    v18 = v38;
    v15 = v32;
    v21 = v33;
    if (v33 >= 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    (*(v14 + 8))(a6, v15, v18, v19);

    return 0;
  }

  v21 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21 < 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v22 = *(v14 + 16);
  v36 = v15;
  v37 = v19;
  v38 = v18;
  v22(v17, a6, v15);
  v39[1] = v37;
  v39[0] = v38;
  v40 = v20;
  v37.n128_u64[0] = a6;
  v23 = *(v6 + 776);
  v24 = a1;

  v38.n128_u64[0] = a3;
  v25 = v23(v24, a2, a3, v17, 0, v39);
  v26 = v25;
  if (v21 == 1)
  {

    v27 = v37.n128_u64[0];
  }

  else
  {
    MEMORY[0x28223BE20](v25);
    *(&v35 - 4) = v24;
    *(&v35 - 3) = a2;
    v28 = v37.n128_u64[0];
    *(&v35 - 2) = v37.n128_u64[0];
    v29 = v24;
    v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11MapLocationCG_AF0F9ViewModel_ps5NeverOTg5(partial apply for closure #1 in MutableMapViewModel.init(viewport:styles:representativeLocation:represenativeColor:locations:dateInterval:), (&v35 - 6), a5);

    v31 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
    swift_beginAccess();
    *(v26 + v31) = v30;
    v24 = v29;
    v27 = v28;
  }

  MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

  (*(v14 + 8))(v27, v36);
  return v26;
}

uint64_t MutableMapViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableMapViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v12[1] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Si_Sdt5valuetMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[4];
          if (*v12 >= v13)
          {
            break;
          }

          v14 = v12[2];
          v15 = v12[3];
          v16 = v12[5];
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12[1] = v16;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Si_Sdt5valuetMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

uint64_t key path setter for MutableMapViewModel.mapViewModels : MutableMapViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void key path setter for MutableMapViewModel.pinGlyph : MutableMapViewModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *MutableMapViewModel.pinGlyph.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

__n128 MutableMapViewModel.pinColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t key path setter for MutableMapViewModel.subtitle : MutableMapViewModel(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t MutableMapViewModel.subtitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

BOOL MutableMapViewModel.isMultiPinMap.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x250))();
  result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2 > 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t MutableMapViewModel.adjustedLocation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id static MutableMapViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableMapViewModel.empty;

  return v1;
}

uint64_t MutableMapViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableMapViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

Swift::Void __swiftcall MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x2B8))())
  {
    MutableMapViewModel.mapViewModelsCommonLocationInfo.getter(v26);
    v3 = v27;
    v4 = v29;
    if (LOBYTE(v26[0]) == 1)
    {
      if (v27 && v29)
      {
        v5 = v26[1];
        v6 = v28;
        if (one-time initialization token for views != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static CommonLogger.views);

        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v26[0] = v11;
          *v10 = 136446723;
          *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000216588260, v26);
          *(v10 + 12) = 2081;
          *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v3, v26);
          *(v10 + 22) = 2081;
          *(v10 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v4, v26);
          _os_log_impl(&dword_21607C000, v8, v9, "MutableMapViewModel.%{public}s Multi-pin map has the common location name and city for all pins: (%{private}s, %{private}s). Use loc name and city as title and subtitle respectively.", v10, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v11, -1, -1);
          MEMORY[0x21CE94770](v10, -1, -1);
        }

        (*((*v2 & *v1) + 0xD8))(v5, v3);
        v12 = (v1 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
        swift_beginAccess();
        *v12 = v6;
        v12[1] = v4;
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static CommonLogger.views);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000216588260, v26);
      _os_log_impl(&dword_21607C000, v19, v20, "MutableMapViewModel.%{public}s Use highest occurence city string for title.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x21CE94770](v22, -1, -1);
      MEMORY[0x21CE94770](v21, -1, -1);
    }

    v23 = MutableMapViewModel.highestOccurenceCity.getter();
    (*((*v2 & *v1) + 0xD8))(v23, v24);
  }

  else
  {
    (*(**(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation) + 240))(&v30);
    if (v30 != 1)
    {
      return;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v31._countAndFlagsBits = 0xD000000000000012;
    v31._object = 0x8000000216588240;
    v15._countAndFlagsBits = 1802661719;
    v15._object = 0xE400000000000000;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v31);

    (*((*v2 & *v1) + 0xD8))(v17._countAndFlagsBits, v17._object);
  }

  v25 = (v1 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  swift_beginAccess();
  *v25 = 0;
  v25[1] = 0;
LABEL_19:
}

uint64_t MutableMapViewModel.__allocating_init(viewport:styles:locations:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = type metadata accessor for DateInterval();
  v8 = *(v51 - 8);
  result = MEMORY[0x28223BE20](v51);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(v10 >> 62))
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_19:
    (*(v8 + 8))(a4, v51);

    return 0;
  }

  v37 = v10;
  v38 = __CocoaSet.count.getter();
  if (v38 < 1)
  {
    goto LABEL_19;
  }

  v13 = v38;
  result = __CocoaSet.count.getter();
  v10 = v37;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  v49 = v10 & 0xC000000000000001;
  v50 = v13;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v14 = v10;
    v15 = MEMORY[0x21CE93180](0);
    goto LABEL_6;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = v10;
    v15 = *(v10 + 32);

LABEL_6:
    v42 = v8;
    v47 = *(v8 + 16);
    v48 = v8 + 16;
    v47(v12, v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v51);
    v54 = 0u;
    v55 = 0u;
    v56 = 1;
    v16 = *(v4 + 776);
    v17 = a1;

    v41 = v15;
    v18 = v16(v17, a2, v15, v12, 0, &v54);
    v19 = v18;
    if (v50 == 1)
    {
    }

    else
    {
      v39 = v18;
      v40 = a4;
      v53 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
      v20 = 0;
      v21 = v53;
      v22 = *((*MEMORY[0x277D85000] & *v17) + 0x60);
      v45 = (*MEMORY[0x277D85000] & *v17) + 96;
      v46 = v22;
      v43 = *(v45 + 24);
      v44 = v45 + 24;
      v23 = v14;
      v24 = v14;
      do
      {
        if (v49)
        {
          v25 = MEMORY[0x21CE93180](v20, v23);
        }

        else
        {
          v25 = *(v23 + 8 * v20 + 32);
        }

        v26 = v46() / 3.0;
        v27 = v43() / 3.0;
        v28 = type metadata accessor for ScreenSize();
        v29 = objc_allocWithZone(v28);
        *&v29[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = v26;
        *&v29[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = v27;
        v52.receiver = v29;
        v52.super_class = v28;
        v30 = objc_msgSendSuper2(&v52, sel_init);
        v47(v12, v25 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v51);
        v54 = 0u;
        v55 = 0u;
        v56 = 1;
        v31 = objc_allocWithZone(type metadata accessor for MutableMapViewModel());

        v32 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v30, a2, v25, v12, 0, &v54);

        v53 = v21;
        v34 = *(v21 + 16);
        v33 = *(v21 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v21 = v53;
        }

        ++v20;
        *(v21 + 16) = v34 + 1;
        v35 = v21 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = &protocol witness table for MutableMapViewModel;
        v23 = v24;
      }

      while (v50 != v20);

      v36 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
      v19 = v39;
      swift_beginAccess();
      *(v19 + v36) = v21;
      a4 = v40;
    }

    MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

    (*(v42 + 8))(a4, v51);
    return v19;
  }

  __break(1u);
  return result;
}

id MutableMapViewModel.__allocating_init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(a1, a2, a3, a4, a5, a6);

  return v14;
}

uint64_t closure #1 in MutableMapViewModel.init(viewport:styles:representativeLocation:represenativeColor:locations:dateInterval:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *a2) + 0x60))(v12) / 3.0;
  v18 = (*((*v16 & *a2) + 0x78))() / 3.0;
  v19 = type metadata accessor for ScreenSize();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = v17;
  *&v20[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = v18;
  v27.receiver = v20;
  v27.super_class = v19;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  (*(v11 + 16))(v14, a4, v10);
  memset(v25, 0, sizeof(v25));
  v26 = 1;
  v22 = objc_allocWithZone(type metadata accessor for MutableMapViewModel());

  v23 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v21, a3, v15, v14, 0, v25);

  *a5 = v23;
  a5[1] = &protocol witness table for MutableMapViewModel;
  return result;
}

id MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(a1, a2, a3, a4, a5, a6);

  return v8;
}

void MutableMapViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMapViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation) = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMapViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableMapViewModel.render()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = MutableMapViewModel.render();

  return MutableMapViewModel.hydrateMapItemIfNeeded()();
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = MutableMapViewModel.render();

  return MutableMapViewModel.createMapImage()();
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = MutableMapViewModel.render();

  return MutableMapViewModel.createMapPin()();
}

{

  return MEMORY[0x2822009F8](MutableMapViewModel.render(), 0, 0);
}

{
  if ((*((*MEMORY[0x277D85000] & *v0[2]) + 0x2B8))())
  {
    v1 = v0[2];
    v2 = swift_task_alloc();
    v0[6] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = MutableMapViewModel.render();
    v4 = MEMORY[0x277D84F78] + 8;
    v5 = MEMORY[0x277D84F78] + 8;
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v3, v4, v5, 0, 0, &async function pointer to partial apply for closure #1 in MutableMapViewModel.render(), v2, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

{

  return MEMORY[0x2822009F8](ClientWorkoutViewModel.render(), 0, 0);
}

uint64_t MutableMapViewModel.hydrateMapItemIfNeeded()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MutableMapViewModel.hydrateMapItemIfNeeded(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation);
  *(v0 + 24) = v1;
  v2 = *(*v1 + 216);
  v3 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x2DC7000000000000;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  v4 = v2();
  if (!v4 || (v5 = (*(*v4 + 128))(v4), , v5 == 2) || (v5 & 1) == 0)
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 16);
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static CommonLogger.views);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = -1;
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v23 = (v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
      v24 = *(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
      if (v24)
      {
        v25 = *v23;

        v21 = MEMORY[0x21CE92190](v25, v24);
      }

      v26 = *(v0 + 16);
      *(v22 + 4) = v21;

      _os_log_impl(&dword_21607C000, v19, v20, "[MutableMapViewModel] location requires no rehydration=%ld", v22, 0xCu);
      v27 = v22;
      goto LABEL_16;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 16);
  v7 = type metadata accessor for Logger();
  *(v0 + 48) = __swift_project_value_buffer(v7, static CommonLogger.views);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = -1;
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
    if (v13)
    {
      v14 = *(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);

      v11 = MEMORY[0x21CE92190](v14, v13);
    }

    v15 = *(v0 + 16);
    *(v12 + 4) = v11;

    _os_log_impl(&dword_21607C000, v9, v10, "[MutableMapViewModel] rehydrating locationn=%ld", v12, 0xCu);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  else
  {
  }

  v28 = v2();
  *(v0 + 56) = v28;
  if (v28)
  {
    v41 = (*(*v28 + 176) + **(*v28 + 176));
    v29 = swift_task_alloc();
    *(v0 + 64) = v29;
    *v29 = v0;
    v29[1] = MutableMapViewModel.hydrateMapItemIfNeeded();

    return v41();
  }

  v31 = *(v0 + 16);
  v19 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v19, v32))
  {
    goto LABEL_26;
  }

  v33 = *(v0 + 24);
  v34 = -1;
  v35 = swift_slowAlloc();
  *v35 = 134217984;
  v36 = (v33 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  v37 = *(v33 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
  if (v37)
  {
    v38 = *v36;

    v34 = MEMORY[0x21CE92190](v38, v37);
  }

  v39 = *(v0 + 16);
  *(v35 + 4) = v34;

  _os_log_impl(&dword_21607C000, v19, v32, "[MutableMapViewModel] failed rehydration=%ld", v35, 0xCu);
  v27 = v35;
LABEL_16:
  MEMORY[0x21CE94770](v27, -1, -1);
LABEL_27:

  v40 = *(v0 + 8);

  return v40();
}

{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = (*(v0 + 32))();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 identifier];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 identifierString];

        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      (*(*v3 + 160))(v7, v9);
    }

    v20 = *(v0 + 72);
    v21 = *(v0 + 24);
    v22 = MEMORY[0x277D85000];
    v23 = *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x318);
    v24 = v1;
    v23(v20);
    if (*(v21 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) <= 0.9)
    {
LABEL_18:

      goto LABEL_23;
    }

    [v24 _coordinate];
    latitude = v35.latitude;
    longitude = v35.longitude;
    if (CLLocationCoordinate2DIsValid(v35))
    {
      v27 = *((*v22 & **(v0 + 16)) + 0x2D8);
      v28 = v27();
      if (v28)
      {
        (*(*v28 + 176))(v28, latitude);
      }

      v29 = (v27)(v28);
      if (v29)
      {
        (*(*v29 + 200))(v29, longitude);

        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v11 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = latitude;
      *(v31 + 12) = 2048;
      *(v31 + 14) = longitude;
      _os_log_impl(&dword_21607C000, v11, v30, "[MutableMapViewModel] Invalid coordinates from rehydrated map item, lat=%f, lon=%f", v31, 0x16u);
      MEMORY[0x21CE94770](v31, -1, -1);
    }
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 24);
      v14 = -1;
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = (v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
      v17 = *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
      if (v17)
      {
        v18 = *v16;

        v14 = MEMORY[0x21CE92190](v18, v17);
      }

      v19 = *(v0 + 16);
      *(v15 + 4) = v14;

      _os_log_impl(&dword_21607C000, v11, v12, "[MutableMapViewModel] failed rehydration=%ld", v15, 0xCu);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    else
    {
    }
  }

LABEL_23:
  v32 = *(v0 + 8);

  return v32();
}

uint64_t MutableMapViewModel.hydrateMapItemIfNeeded()(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](MutableMapViewModel.hydrateMapItemIfNeeded(), 0, 0);
}

uint64_t MutableMapViewModel.createMapImage()()
{
  *(v1 + 184) = v0;
  return MEMORY[0x2822009F8](MutableMapViewModel.createMapImage(), 0, 0);
}

{
  v37 = v0;
  v1 = MutableMapViewModel.options.getter();
  v0[24] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[23];
    v4 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
    v0[25] = v4;
    v5 = *(v3 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter);
    *(v3 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter) = v4;
    v6 = v4;

    if (v6)
    {
      if (one-time initialization token for queue != -1)
      {
        swift_once();
      }

      v7 = static MutableMapViewModel.queue;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = MutableMapViewModel.createMapImage();
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo13MKMapSnapshotCs5Error_pGMd);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
      v0[13] = &block_descriptor_36;
      v0[14] = v8;
      [v6 startWithQueue:v7 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v22 = v0[23];
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static CommonLogger.viewModel);
    v24 = v22;
    v12 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v25))
    {
      v26 = v0[23];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v29 = [v26 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v36);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_21607C000, v12, v25, "[%s] failed to init snapshotter", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CE94770](v28, -1, -1);
      MEMORY[0x21CE94770](v27, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v9 = v0[23];
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.viewModel);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[23];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136315138;
      v17 = [v14 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v36);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_21607C000, v12, v13, "[%s] failed to init options", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CE94770](v16, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);
    }
  }

  v34 = v0[1];

  return v34();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = MutableMapViewModel.createMapImage();
  }

  else
  {
    v2 = MutableMapViewModel.createMapImage();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v10 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  type metadata accessor for Image();
  v5 = [v4 image];
  v9 = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v6 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v5, 0, &v9);
  (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v6);

  v7 = v0[1];

  return v7();
}

{
  v27 = v0;
  swift_willThrow();
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.viewModel);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  if (v8)
  {
    v25 = v0[24];
    v12 = v0[23];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315394;
    v15 = [v12 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v26);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v26);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_21607C000, v6, v7, "[%s] snapshot error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t MutableMapViewModel.createMapPin()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](MutableMapViewModel.createMapPin(), 0, 0);
}

{
  (*(**(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation) + 240))();
  v1 = *(v0 + 96);
  if (v1 <= 1)
  {
    if (!*(v0 + 96))
    {
LABEL_6:
      v2 = *(v0 + 8);

      return v2();
    }

    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = MutableMapViewModel.createMapPin();

    return MutableMapViewModel.workIconImage()();
  }

  else
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        MutableMapViewModel.createGenericPin()();
      }

      goto LABEL_6;
    }

    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = MutableMapViewModel.createMapPin();

    return MutableMapViewModel.createPOIPin()();
  }
}

{
  v10 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  MutableMapViewModel.workIconFillColor()(&v9);
  LOBYTE(v1) = v9.is_nil;
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
  swift_beginAccess();
  v6 = *&v9.value.blue;
  *v5 = *&v9.value.red;
  *(v5 + 16) = v6;
  *(v5 + 32) = v1;
  v7 = v0[1];

  return v7();
}

{

  return MEMORY[0x2822009F8](ClientWorkoutViewModel.render(), 0, 0);
}

uint64_t MutableMapViewModel.createMapPin()(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](MutableMapViewModel.createMapPin(), 0, 0);
}

uint64_t closure #1 in MutableMapViewModel.render()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MutableMapViewModel.render(), 0, 0);
}

uint64_t closure #1 in MutableMapViewModel.render()()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x250))();
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v24 = **(v0 + 72);
      v3 = (v1 + 32);
      v4 = type metadata accessor for TaskPriority();
      v5 = *(v4 - 8);
      v22 = *(v5 + 56);
      v21 = (v5 + 48);
      v20 = (v5 + 8);
      v23 = v4;
      do
      {
        v8 = *(v0 + 88);
        v9 = *(v0 + 96);
        v25 = *v3;
        v22(v9, 1, 1, v4);
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        v11 = (v10 + 16);
        *(v10 + 24) = 0;
        *(v10 + 32) = v25;
        outlined init with copy of TaskPriority?(v9, v8);
        LODWORD(v8) = (*v21)(v8, 1, v4);
        v12 = v25;
        v13 = *(v0 + 88);
        if (v8 == 1)
        {
          outlined destroy of UTType?(*(v0 + 88), &_sScPSgMd);
          if (!*v11)
          {
            goto LABEL_10;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*v20)(v13, v4);
          if (!*v11)
          {
LABEL_10:
            v14 = 0;
            v16 = 0;
            goto LABEL_11;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = dispatch thunk of Actor.unownedExecutor.getter();
        v16 = v15;
        swift_unknownObjectRelease();
LABEL_11:
        v17 = swift_allocObject();
        *(v17 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in MutableMapViewModel.render();
        *(v17 + 24) = v10;

        if (v16 | v14)
        {
          v6 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v14;
          *(v0 + 40) = v16;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v0 + 96);
        *(v0 + 48) = 1;
        *(v0 + 56) = v6;
        *(v0 + 64) = v24;
        swift_task_create();

        outlined destroy of UTType?(v7, &_sScPSgMd);
        ++v3;
        --v2;
        v4 = v23;
      }

      while (v2);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

void MutableMapViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v4 = v3();
  if (v4)
  {

    v5 = v3();
    if (v5)
    {
      v6 = v5;
      v7 = Image.uiImage.getter();

      if (v7)
      {

        v8 = *((*v2 & *v1) + 0x268);
        v9 = v8();
        if (v9)
        {

          v10 = v8();
          if (v10)
          {
            v11 = v10;
            v12 = Image.uiImage.getter();

            if (v12)
            {

              v13 = (*((*v2 & *v1) + 0x288))(v23);
              if ((v24 & 1) == 0)
              {
                v14 = (*((*v2 & *v1) + 0x250))(v13);
                if (v14)
                {
                  v15 = v14;
                  v16 = -*(v14 + 16);
                  v17 = -1;
                  v18 = 32;
                  while (1)
                  {
                    if (v16 + v17 == -1)
                    {
LABEL_14:

                      return;
                    }

                    if (++v17 >= *(v15 + 16))
                    {
                      break;
                    }

                    v19 = *(v15 + v18);
                    v20 = v18 + 16;
                    v21 = *((*v2 & *v19) + 0x1D8);
                    v22 = v19;
                    LOBYTE(v21) = v21();

                    v18 = v20;
                    if ((v21 & 1) == 0)
                    {
                      goto LABEL_14;
                    }
                  }

                  __break(1u);
                }
              }
            }
          }
        }
      }
    }
  }
}

void *MutableMapViewModel.singularLocationMKMapItem.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MutableMapViewModel.singularLocationMKMapItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MutableMapViewModel.__ivar_destroyer()
{

  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem);
}

id MutableMapViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MutableMapViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MutableMapViewModel.mapViewModelsCommonLocationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x250))();
  v4 = 0uLL;
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {

    v4 = 0uLL;
LABEL_7:
    v13 = 1;
    v14 = 0uLL;
    goto LABEL_8;
  }

  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = (v5 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 32);
    v12 = v8;
    v11(ObjectType, v9);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 2;
    --v6;
  }

  while (v6);

  specialized MutableMapViewModel.commonLocationInfo(for:)(v17, &v17);
  v13 = v17;
  v15 = v19;
  v16 = v18;

  v14 = v15;
  v4 = v16;
LABEL_8:
  *a1 = v13;
  *(a1 + 8) = v4;
  *(a1 + 24) = v14;
  return result;
}

uint64_t MutableMapViewModel.highestOccurenceCity.getter()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v94[-v7];
  v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x250))(v6);
  if (!v9)
  {
    return v9;
  }

  v97 = v8;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Si_SdtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_46:
    if (one-time initialization token for views == -1)
    {
LABEL_47:
      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static CommonLogger.views);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v107 = v80;
        *v79 = 136446467;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216588300, &v107);
        *(v79 + 12) = 2081;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SdtMd);
        v81 = Dictionary.description.getter();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v107);

        *(v79 + 14) = v83;
        _os_log_impl(&dword_21607C000, v77, v78, "MutableMapViewModel.%{public}s [city:(count, longestDwellTime)]=%{private}s", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v80, -1, -1);
        MEMORY[0x21CE94770](v79, -1, -1);
      }

      isUniquelyReferenced_nonNull_native = v10[2];
      if (!isUniquelyReferenced_nonNull_native)
      {
        v84 = MEMORY[0x277D84F90];
        goto LABEL_53;
      }

      v84 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_Si_Sdt5valuet_Tt1g5(v10[2], 0);
      v85 = specialized Sequence._copySequenceContents(initializing:)(&v107, v84 + 4, isUniquelyReferenced_nonNull_native, v10);

      outlined consume of [String : DBAssetData].Iterator._Variant();
      if (v85 == isUniquelyReferenced_nonNull_native)
      {
LABEL_53:
        v107 = v84;
        specialized MutableCollection<>.sort(by:)(&v107);

        specialized MutableCollection<>.sort(by:)(&v107);

        v86 = v107[2];
        if (v86 <= 1)
        {
          if (v86)
          {
            v9 = v107[4];
          }

          else
          {

            return 0;
          }
        }

        else
        {
          v88 = v107[4];
          v87 = v107[5];

          v89 = [objc_opt_self() mainBundle];
          v108._object = 0x80000002165882E0;
          v90._countAndFlagsBits = 0x6D20646E61204025;
          v90._object = 0xEB0000000065726FLL;
          v91._countAndFlagsBits = 0;
          v91._object = 0xE000000000000000;
          v108._countAndFlagsBits = 0xD000000000000013;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v108);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_21658CA50;
          *(v92 + 56) = MEMORY[0x277D837D0];
          *(v92 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v92 + 32) = v88;
          *(v92 + 40) = v87;
          v9 = static String.localizedStringWithFormat(_:_:)();
        }

        return v9;
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_60:
    swift_once();
    goto LABEL_47;
  }

  v96 = v5;
  v12 = 0;
  v101 = (v2 + 16);
  v102 = v1;
  v13 = v9 + 40;
  v105 = v9;
  v98 = v11;
  v99 = v9 + 40;
  v100 = (v2 + 8);
  while (2)
  {
    v104 = v10;
    v14 = v11 - v12;
    v10 = (v13 + 16 * v12);
    while (1)
    {
      if (v12 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v106 = v14;
      v15 = *(v10 - 1);
      isUniquelyReferenced_nonNull_native = *v10;
      ObjectType = swift_getObjectType();
      v18 = *(isUniquelyReferenced_nonNull_native + 32);
      v19 = v15;
      v20 = v18(ObjectType, isUniquelyReferenced_nonNull_native);
      v21 = *(v20 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
      v22 = *(v20 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);

      if (v22)
      {
        break;
      }

      v10 += 2;
      ++v12;
      v9 = v105;
      v14 = v106 - 1;
      if (v106 == 1)
      {
        goto LABEL_45;
      }
    }

    v103 = v21;
    v23 = v104;
    if (!v104[2] || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v22), (v25 & 1) == 0))
    {
      v37 = v18(ObjectType, isUniquelyReferenced_nonNull_native);
      v38 = v102;
      v39 = v96;
      (*v101)(v96, v37 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v102);

      DateInterval.duration.getter();
      v41 = v40;
      (*v100)(v39, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v42 = v103;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v22);
      v45 = v23[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_62;
      }

      v49 = v44;
      if (v23[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = v43;
          specialized _NativeDictionary.copy()();
          v43 = v69;
          if (v49)
          {
            goto LABEL_23;
          }

          goto LABEL_37;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v22);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_68;
        }
      }

      if (v49)
      {
LABEL_23:
        v51 = v43;

        v10 = v107;
        v52 = (v107[7] + 16 * v51);
        *v52 = 1;
        v52[1] = v41;

        goto LABEL_39;
      }

LABEL_37:
      v10 = v107;
      v107[(v43 >> 6) + 8] |= 1 << v43;
      v70 = (v10[6] + 16 * v43);
      *v70 = v42;
      v70[1] = v22;
      v71 = (v10[7] + 16 * v43);
      *v71 = 1;
      v71[1] = v41;

      v72 = v10[2];
      v47 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v47)
      {
        goto LABEL_63;
      }

      v10[2] = v73;
LABEL_39:
      v9 = v105;
      v11 = v98;
      v13 = v99;
      ++v12;
      if (v106 != 1)
      {
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  v26 = v23[7] + 16 * v24;
  v27 = *v26 + 1;
  if (__OFADD__(*v26, 1))
  {
    goto LABEL_64;
  }

  v28 = *(v26 + 8);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v23;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v22);
  v31 = v23[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    goto LABEL_65;
  }

  if (v23[3] >= v33)
  {
    if (v95)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      LODWORD(v104) = v29;
      v74 = v30;
      specialized _NativeDictionary.copy()();
      v30 = v74;
      if ((v104 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_26:
    v10 = v107;
    *(v107[7] + 16 * v30) = v27;
    v53 = v18(ObjectType, isUniquelyReferenced_nonNull_native);
    v54 = v102;
    isUniquelyReferenced_nonNull_native = v97;
    (*v101)(v97, v53 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v102);

    DateInterval.duration.getter();
    v56 = v55;
    (*v100)(isUniquelyReferenced_nonNull_native, v54);
    if (v28 >= v56)
    {

LABEL_35:

      goto LABEL_39;
    }

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v10;
    v58 = v103;
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v22);
    v61 = v10[2];
    v62 = (v60 & 1) == 0;
    v47 = __OFADD__(v61, v62);
    v63 = v61 + v62;
    if (v47)
    {
      goto LABEL_67;
    }

    v64 = v60;
    if (v10[3] >= v63)
    {
      if ((v57 & 1) == 0)
      {
        v75 = v59;
        specialized _NativeDictionary.copy()();
        v59 = v75;
        if (v64)
        {
          goto LABEL_34;
        }

        goto LABEL_44;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, v57);
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v22);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_68;
      }
    }

    if (v64)
    {
LABEL_34:
      v10 = v107;
      v66 = 16 * v59;
      v67 = *(v107[7] + 16 * v59);

      v68 = v10[7] + v66;
      *v68 = v67;
      *(v68 + 8) = v56;
      goto LABEL_35;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v10 = v104;
    goto LABEL_46;
  }

  v34 = v29;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v95);
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v22);
  if ((v34 & 1) != (v36 & 1))
  {
    goto LABEL_68;
  }

  v30 = v35;
  if (v34)
  {
    goto LABEL_26;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);

  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void __swiftcall MutableMapViewModel.commonLocationInfo(for:)(Swift::tuple_allSame_Bool_name_String_optional_city_String_optional *__return_ptr retstr, Swift::OpaquePointer a2)
{
  specialized MutableMapViewModel.commonLocationInfo(for:)(a2._rawValue, v5);
  v3 = v6;
  v4 = v7;
  retstr->allSame = v5[0];
  retstr->name = v3;
  retstr->city = v4;
}

Swift::Int MutableMapViewModel.SingularContentRenderStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1);
  return Hasher._finalize()();
}

id MutableMapViewModel.options.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
  v5 = (*((*v3 & *v2) + 0x78))();
  v6 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  v7 = MutableMapViewModel.preferredConfiguration.getter();
  [v6 setPreferredConfiguration_];

  [v6 _setAllowsSimultaneousLightDarkSnapshots_];
  [v6 _setUseSnapshotService_];
  [v6 _setRendersInBackground_];
  if (v4 > v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*((*v3 & *v1) + 0x2B8))([v6 setSize_]))
  {
    v9 = (*((*v3 & *v1) + 0x250))();
    static MapsUtilities.boundingRegion(for:)(v9, v18);

    if (v19)
    {

      return 0;
    }

    v15 = *&v18[2];
    v16 = *&v18[3];
    v13 = *v18;
    v14 = *&v18[1];
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation);
    if ((*(*v10 + 216))())
    {

      if (*(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9)
      {
        v11 = MutableMapViewModel.singularLocationFramedCamera.getter();
        if (v11)
        {
          v12 = v11;
          [v6 setCamera_];

          return v6;
        }
      }
    }

    v13 = MutableMapViewModel.singlePinRegion.getter();
  }

  if (fabs(v14) > 180.0 || fabs(v13) > 90.0 || v15 < 0.0 || v15 > 180.0 || v16 < 0.0 || v16 > 360.0)
  {
    if (v14 <= -180.0)
    {
      v14 = -180.0;
    }

    if (v14 > 180.0)
    {
      v14 = 180.0;
    }

    if (v13 <= -90.0)
    {
      v13 = -90.0;
    }

    if (v13 > 90.0)
    {
      v13 = 90.0;
    }

    v16 = fabs(v16);
    if (v16 > 360.0)
    {
      v16 = 360.0;
    }

    v15 = fabs(v15);
    if (v15 > 180.0)
    {
      v15 = 180.0;
    }
  }

  [v6 setRegion_];
  return v6;
}

uint64_t MutableMapViewModel.createWorkPin()()
{
  *(v1 + 64) = v0;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = MutableMapViewModel.createMapPin();

  return MutableMapViewModel.workIconImage()();
}

Swift::Void __swiftcall MutableMapViewModel.createGenericPin()()
{
  v1 = v0;
  v2 = [objc_opt_self() systemFontOfSize_];
  v3 = [objc_opt_self() configurationWithFont:v2 scale:3];

  v4 = v3;
  v5 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  type metadata accessor for Image();
  LOBYTE(v14[0]) = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v7 = v6;
  v8 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v6, 1, v14);
  v9 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;

  v11 = [objc_opt_self() systemIndigoColor];
  Color.init(color:)(v11);

  v12 = v1 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
  swift_beginAccess();
  v13 = v14[1];
  *v12 = v14[0];
  *(v12 + 16) = v13;
  *(v12 + 32) = 0;
}

uint64_t MutableMapViewModel.createPOIPin()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](MutableMapViewModel.createPOIPin(), 0, 0);
}

{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[9] = v2;
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = MEMORY[0x277D85000];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    v10 = (*((*v8 & *v7) + 0x310))();
    if (v10 && (v11 = v10, v12 = [v10 _geoMapItem], v11, v12))
    {
      swift_unknownObjectRelease();
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = v0[8];
    *(v9 + 4) = v13;

    *(v9 + 8) = 1024;
    v15 = *&v14[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation];
    v16 = 0;
    if ((*(*v15 + 216))())
    {

      if (*(v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9)
      {
        v16 = 1;
      }
    }

    v17 = v0[8];
    *(v9 + 10) = v16;

    _os_log_impl(&dword_21607C000, v4, v5, "[MutableMapViewModel.createPOIPin] location has geoMapItem=%{BOOL}d, shouldUseIcon=%{BOOL}d", v9, 0xEu);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  else
  {
  }

  v18 = (*((*v8 & *v0[8]) + 0x310))();
  v0[10] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = *(v0[8] + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation);
    if ((*(*v20 + 216))())
    {

      if (*(v20 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9)
      {
        v21 = swift_task_alloc();
        v0[11] = v21;
        *v21 = v0;
        v21[1] = MutableMapViewModel.createPOIPin();

        return MutableMapViewModel.iconImage(mapItem:)(v19);
      }
    }
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v23 = v0[8];
  __swift_project_value_buffer(v0[9], static CommonLogger.viewModel);
  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[8];
  if (v27)
  {
    v29 = -1;
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    v31 = (*&v28[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation] + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31;

      v29 = MEMORY[0x21CE92190](v33, v32);
    }

    v34 = v0[8];
    *(v30 + 4) = v29;

    _os_log_impl(&dword_21607C000, v25, v26, "[MutableMapViewModel.createPOIPin] failed to create POI, falling back to generic & clearing map item, name=%ld", v30, 0xCu);
    MEMORY[0x21CE94770](v30, -1, -1);
  }

  else
  {
  }

  MapLocation.makeGeneric()();
  MutableMapViewModel.createGenericPin()();
  v35 = v0[1];

  return v35();
}

{
  v24 = v0;
  v1 = *(v0 + 80);
  if (*(v0 + 96))
  {
    MutableMapViewModel.fillColor(mapItem:)(&v23, *(v0 + 80));

    v2 = *(v0 + 96);
    if (!v23.is_nil)
    {
      v15 = *(v0 + 64);
      v21 = *&v23.value.blue;
      v22 = *&v23.value.red;
      v16 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
      swift_beginAccess();
      v17 = *(v15 + v16);
      *(v15 + v16) = v2;

      v18 = v15 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
      swift_beginAccess();
      *v18 = v22;
      *(v18 + 16) = v21;
      *(v18 + 32) = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  __swift_project_value_buffer(*(v0 + 72), static CommonLogger.viewModel);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 64);
  if (v7)
  {
    v9 = -1;
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = (*&v8[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation] + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;

      v9 = MEMORY[0x21CE92190](v13, v12);
    }

    v14 = *(v0 + 64);
    *(v10 + 4) = v9;

    _os_log_impl(&dword_21607C000, v5, v6, "[MutableMapViewModel.createPOIPin] failed to create POI, falling back to generic & clearing map item, name=%ld", v10, 0xCu);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

  else
  {
  }

  MapLocation.makeGeneric()();
  MutableMapViewModel.createGenericPin()();
LABEL_14:
  v19 = *(v0 + 8);

  return v19();
}

uint64_t MutableMapViewModel.createPOIPin()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](MutableMapViewModel.createPOIPin(), 0, 0);
}

uint64_t MutableMapViewModel.singularLocationFramedCamera.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x310))();
  if (result)
  {
    v3 = result;
    v4 = (*((*v1 & *v0) + 0x2D8))();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
      if (!v6)
      {

        return 0;
      }

      v7 = (*((*v1 & *v6) + 0x60))();
      v8 = (*((*v1 & *v6) + 0x78))();
      v9 = (*(*v5 + 168))();
      v10 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v9 longitude:(*(*v5 + 192))()];
      [v10 coordinate];
      v12 = v11;
      v14 = v13;

      v20.latitude = v12;
      v20.longitude = v14;
      if (CLLocationCoordinate2DIsValid(v20))
      {
        v15 = [objc_opt_self() cameraLookingAtMapItem:v3 forViewSize:1 allowPitch:{v7, v8}];
        [v15 setCenterCoordinate_];

        return v15;
      }

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static CommonLogger.views);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = v12;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v14;
        _os_log_impl(&dword_21607C000, v17, v18, "[MutableMapViewModel] Invalid center coordinates for MKMapCamera, lat=%f, lon=%f", v19, 0x16u);
        MEMORY[0x21CE94770](v19, -1, -1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t MutableMapViewModel.contentRenderStyle.getter()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x2B8))())
  {
    return 2;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation);
  result = 0;
  if ((*(*v2 + 216))())
  {

    if (*(v2 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9)
    {
      return 1;
    }
  }

  return result;
}

double MutableMapViewModel.singlePinRegion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation);
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) > 0.0 && (v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x2D8))()) != 0)
  {
    v3 = v2;
    v4 = (*(*v2 + 168))(v2);
    v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:(*(*v3 + 192))()];
    [v5 coordinate];
    v7 = v6;
  }

  else
  {
    v8 = (*(*v1 + 168))();
    v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:(*(*v1 + 192))()];
    [v5 coordinate];
    v7 = v9;
  }

  return v7;
}

id MutableMapViewModel.preferredConfiguration.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4F50]) init];
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (v2)
  {
    v3 = specialized Sequence<>.contains(_:)(6u, v2);
    v4 = objc_opt_self();
    v5 = &selRef_filterIncludingAllCategories;
    if (!v3)
    {
      v5 = &selRef_filterExcludingAllCategories;
    }

    v6 = [v4 *v5];
    [v1 setPointOfInterestFilter_];

    v7 = specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)();
    if (v7 != 2 && (v7 & 1) != 0)
    {
      v8 = [objc_opt_self() filterIncludingAllCategories];
      [v1 setPointOfInterestFilter_];
    }
  }

  return v1;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, type metadata accessor for CloudDevice);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x277CC95F0]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, type metadata accessor for CloudMetaDevice);
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for IndexPath() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x21CE937A0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t specialized MutableMapViewModel.init(dbObject:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DBMapModel();
  v35 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels) = 0;
  v40[3] = v4;
  v40[4] = &protocol witness table for DBAssetModel;
  v5 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph) = 0;
  v40[0] = a1;
  v6 = (a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = (a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter) = 0;
  v8 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation) = 0;
  swift_weakInit();
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem) = 0;
  outlined init with copy of DBObject(v40, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v9 = (*(*v38 + 528))();
    v36 = v7;
    v37 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v32 = v5;
      v33 = v6;
      v34 = a2;
      if (v12)
      {
        v5 = 0;
        v13 = MEMORY[0x277D84F90];
        v14 = v11;
        v6 = v12;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x21CE93180](v5, v10);
            v15 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v5 >= *(v11 + 16))
            {
              goto LABEL_24;
            }

            v11 = *(v10 + 8 * v5 + 32);

            v15 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v12 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v16 = objc_allocWithZone(type metadata accessor for MutableMapViewModel());
          v17 = specialized MutableMapViewModel.init(dbObject:)(v11, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
          }

          a2 = v13[2];
          v18 = v13[3];
          if (a2 >= v18 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), a2 + 1, 1, v13);
          }

          v13[2] = a2 + 1;
          v19 = &v13[2 * a2];
          v19[4] = v17;
          v19[5] = &protocol witness table for MutableMapViewModel;
          ++v5;
          v11 = v14;
          if (v15 == v6)
          {
            goto LABEL_21;
          }
        }
      }

      v13 = MEMORY[0x277D84F90];
LABEL_21:

      v6 = v33;
      a2 = v34;
      v5 = v32;
    }

    else
    {
      v13 = 0;
    }

    swift_beginAccess();
    *(a2 + v35) = v13;

    v20 = *(v38 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);
    v21 = *(v38 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle + 8);
    swift_beginAccess();
    *v36 = v20;
    v36[1] = v21;

    v23 = *(*v38 + 536);
    *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation) = (v23)(v22);
    v24 = v23();
    swift_beginAccess();
    *(a2 + v37) = v24;

    v26 = (*(*v38 + 552))(v25);
    swift_beginAccess();
    v27 = *(a2 + v5);
    *(a2 + v5) = v26;

    (*(*v38 + 560))(v39);
    swift_beginAccess();
    v28 = v39[1];
    *v6 = v39[0];
    *(v6 + 1) = v28;
    v6[32] = 0;
    swift_weakAssign();

    v30 = specialized AssetViewModel.init(dbObject:)(v29, a2);
    MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

    __swift_destroy_boxed_opaque_existential_1(v40);
    return v30;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableMapViewModel.init(dbObject:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[3] = a3;
  v43[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v38 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels) = 0;
  v8 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph) = 0;
  v9 = (a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = (a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter) = 0;
  v11 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation;
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation) = 0;
  swift_weakInit();
  *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem) = 0;
  outlined init with copy of DBObject(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMapModel();
  if (swift_dynamicCast())
  {
    v12 = (*(*v41 + 528))();
    v39 = v10;
    v40 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v12 >> 62)
      {
        goto LABEL_25;
      }

      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v35 = v8;
      v36 = v9;
      v37 = a2;
      if (v15)
      {
        v8 = 0;
        v16 = MEMORY[0x277D84F90];
        v17 = v14;
        v9 = v15;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x21CE93180](v8, v13);
            v18 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v8 >= *(v14 + 16))
            {
              goto LABEL_24;
            }

            v14 = *(v13 + 8 * v8 + 32);

            v18 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v15 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v19 = objc_allocWithZone(type metadata accessor for MutableMapViewModel());
          v20 = specialized MutableMapViewModel.init(dbObject:)(v14, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          a2 = v16[2];
          v21 = v16[3];
          if (a2 >= v21 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), a2 + 1, 1, v16);
          }

          v16[2] = a2 + 1;
          v22 = &v16[2 * a2];
          v22[4] = v20;
          v22[5] = &protocol witness table for MutableMapViewModel;
          ++v8;
          v14 = v17;
          if (v18 == v9)
          {
            goto LABEL_21;
          }
        }
      }

      v16 = MEMORY[0x277D84F90];
LABEL_21:

      v9 = v36;
      a2 = v37;
      v8 = v35;
    }

    else
    {
      v16 = 0;
    }

    swift_beginAccess();
    *(a2 + v38) = v16;

    v23 = *(v41 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);
    v24 = *(v41 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle + 8);
    swift_beginAccess();
    *v39 = v23;
    v39[1] = v24;

    v26 = *(*v41 + 536);
    *(a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation) = (v26)(v25);
    v27 = v26();
    swift_beginAccess();
    *(a2 + v40) = v27;

    v29 = (*(*v41 + 552))(v28);
    swift_beginAccess();
    v30 = *(a2 + v8);
    *(a2 + v8) = v29;

    (*(*v41 + 560))(v42);
    swift_beginAccess();
    v31 = v42[1];
    *v9 = v42[0];
    *(v9 + 1) = v31;
    v9[32] = 0;
    swift_weakAssign();

    v33 = specialized AssetViewModel.init(dbObject:)(v32, a2);
    MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

    __swift_destroy_boxed_opaque_existential_1(v43);
    return v33;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v46 = a4;
  v44 = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v40 - v12;
  *&v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels] = 0;
  v13 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph;
  *&v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph] = 0;
  LODWORD(v41) = *(a6 + 32);
  v14 = &v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = &v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle];
  *v15 = 0;
  v15[1] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter] = 0;
  v16 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation;
  *&v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation] = 0;
  swift_weakInit();
  *&v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocation] = a3;
  swift_beginAccess();
  v17 = *&v7[v13];
  *&v7[v13] = a5;

  v18 = a5;

  swift_beginAccess();
  v19 = *(a6 + 16);
  *v14 = *a6;
  *(v14 + 1) = v19;
  v14[32] = v41;
  v21 = *(a3 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  v20 = *(a3 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);
  swift_beginAccess();
  *v15 = v21;
  v15[1] = v20;

  swift_beginAccess();
  *&v7[v16] = a3;

  swift_weakAssign();
  v22 = *(a3 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
  v41 = *(a3 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  v23 = type metadata accessor for DateInterval();
  v24 = *(v23 - 8);
  v25 = v45;
  (*(v24 + 16))(v45, v46, v23);
  v26 = *(v24 + 56);
  v26(v25, 0, 1, v23);
  type metadata accessor for DBAssetModel();

  v27 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, &v49);
  HIDWORD(v40) = v49;
  v28 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v29 = &v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v26(&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v23);
  UUID.init()();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v31 = v43;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v43;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v44;
  swift_beginAccess();
  v32 = *&v7[v28];
  *&v7[v28] = 0;
  v33 = v31;

  swift_beginAccess();
  *v29 = v41;
  v29[1] = v22;

  swift_beginAccess();
  v34 = v45;
  outlined assign with copy of DateInterval?(v45, &v7[v30]);
  v35 = swift_endAccess();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = BYTE4(v40);
  (*(v27 + 328))(v48, v35);
  LOBYTE(v27) = v48[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v36 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v36 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 112) = v27;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v36;
  v37 = type metadata accessor for AssetViewModel();
  v47.receiver = v7;
  v47.super_class = v37;
  v38 = objc_msgSendSuper2(&v47, sel_init);
  (*(v24 + 8))(v46, v23);
  outlined destroy of UTType?(v34, &_s10Foundation12DateIntervalVSgMd);
  return v38;
}

unint64_t specialized MutableMapViewModel.commonLocationInfo(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_44;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v20 = a2;
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CE93180](0, v2);
        v21 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v21 = v2 & 0xFFFFFFFFFFFFFF8;
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
      v6 = *(v5 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
      v9 = *(v5 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
      v8 = *(v5 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);

      v10 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x21CE93180](v10, v2);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          goto LABEL_15;
        }

        if (v10 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v11 = *(v2 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

LABEL_15:
        v13 = *(v11 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
        if (v13)
        {
          if (!v6)
          {

LABEL_37:

            goto LABEL_40;
          }

          v14 = *(v11 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name) == v7 && v13 == v6;
          if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

LABEL_39:

LABEL_40:

LABEL_41:
            v19 = 0;
            v18 = 0uLL;
            v17 = 0uLL;
            a2 = v20;
            goto LABEL_46;
          }
        }

        else if (v6)
        {

          goto LABEL_37;
        }

        v15 = *(v11 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);
        if (v15)
        {
          if (!v8)
          {

            goto LABEL_40;
          }

          if (*(v11 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city) == v9 && v15 == v8)
          {
          }

          else
          {
            a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((a2 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {

          if (v8)
          {

            result = swift_bridgeObjectRelease_n();
            goto LABEL_41;
          }
        }

        ++v10;
        if (v12 == v4)
        {

          *&v17 = v9;
          *(&v17 + 1) = v8;
          *&v18 = v7;
          *(&v18 + 1) = v6;
          v19 = 1;
          a2 = v20;
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  v18 = 0uLL;
  v19 = 1;
  v17 = 0uLL;
LABEL_46:
  *a2 = v19;
  *(a2 + 8) = v18;
  *(a2 + 24) = v17;
  return result;
}

uint64_t specialized MutableMapViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for MutableMapViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableMapViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for MutableMapViewModel()
{
  result = type metadata singleton initialization cache for MutableMapViewModel;
  if (!type metadata singleton initialization cache for MutableMapViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized MutableMapViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinGlyph) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_snapshotter) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_adjustedLocation) = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_singularLocationMKMapItem) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in MutableMapViewModel.render()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MutableMapViewModel.render()(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type MutableMapViewModel.SingularContentRenderStyle and conformance MutableMapViewModel.SingularContentRenderStyle()
{
  result = lazy protocol witness table cache variable for type MutableMapViewModel.SingularContentRenderStyle and conformance MutableMapViewModel.SingularContentRenderStyle;
  if (!lazy protocol witness table cache variable for type MutableMapViewModel.SingularContentRenderStyle and conformance MutableMapViewModel.SingularContentRenderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MutableMapViewModel.SingularContentRenderStyle and conformance MutableMapViewModel.SingularContentRenderStyle);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MutableMapViewModel.render()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in MutableContactViewModel.render()(a1, v4, v5, v6);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL MutableMotionActivityViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return 0;
  }

  v2 = v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  swift_beginAccess();
  if (!*(v2 + 8))
  {
    return 0;
  }

  v3 = v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle;
  swift_beginAccess();
  return *(v3 + 8) != 0;
}

uint64_t MutableMotionActivityViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableMotionActivityViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id MutableMotionActivityViewModel.__allocating_init(intendedViewport:supportedStyles:image:motionActivity:steps:title:subtitle:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  v20 = specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:image:motionActivity:steps:title:subtitle:dateInterval:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, *(&a9 + 1), a10);

  return v20;
}

id static MutableMotionActivityViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableMotionActivityViewModel.empty;

  return v1;
}

void MutableMotionActivityViewModel.motionActivity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity);
  *(a1 + 8) = v2;
}

void *MutableMotionActivityViewModel.motionActivityIcon.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t MutableMotionActivityViewModel.subtitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MutableMotionActivityViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableMotionActivityViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id MutableMotionActivityViewModel.__allocating_init(intendedViewport:supportedStyles:motionActivity:steps:dateInterval:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:motionActivity:steps:dateInterval:)(a1, a2, a3, a4, a5);

  return v12;
}

id MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:motionActivity:steps:dateInterval:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:motionActivity:steps:dateInterval:)(a1, a2, a3, a4, a5);

  return v6;
}

void MutableMotionActivityViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMotionActivityViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:image:motionActivity:steps:title:subtitle:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:image:motionActivity:steps:title:subtitle:dateInterval:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10, a11);

  return v13;
}

void MutableMotionActivityViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMotionActivityViewModel.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableMotionActivityViewModel.render()()
{
  *(v1 + 112) = v0;
  *(v1 + 120) = swift_getObjectType();

  return MEMORY[0x2822009F8](MutableMotionActivityViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity;
  if ((*(v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity + 8) & 1) == 0)
  {
    v3 = MotionActivity.title.getter();
    v1 = *(v0 + 112);
    if (v4)
    {
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = [objc_opt_self() mainBundle];
      v41._object = v10;
      v12._countAndFlagsBits = v7;
      v12._object = v8;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v41._countAndFlagsBits = v9;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v41);

      v15 = (v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      *v15 = v14;

      v1 = *(v0 + 112);
    }
  }

  v16 = *(v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps);
  if (v16 >= 1)
  {
    v17 = [objc_opt_self() mainBundle];
    v42._object = 0x80000002165883D0;
    v18._countAndFlagsBits = 0x7370657473204025;
    v18._object = 0xE800000000000000;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD00000000000002DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21658CA50;
    *(v0 + 16) = v16;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v24 = static String.localizedStringWithFormat(_:_:)();
    v26 = v25;

    v27 = (v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
    swift_beginAccess();
    *v27 = v24;
    v27[1] = v26;
  }

  if (*(v2 + 8))
  {
    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 112);
    *(v0 + 40) = *v2;
    v31 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle;
    swift_beginAccess();
    v32 = 0;
    if (*(v30 + v31) != 9)
    {
      AssetViewModel.Style.symbolFont.getter();
    }

    *(v0 + 128) = v32;
    v33 = *(v0 + 112);
    v34 = *(v33 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
    *(v0 + 136) = v34;
    if (v34)
    {
      v35 = MEMORY[0x277D85000];
      v36 = (*((*MEMORY[0x277D85000] & *v34) + 0x60))();
      v37 = (*((*v35 & *v34) + 0x78))();
      v33 = *(v0 + 112);
    }

    else
    {
      v36 = 0.0;
      v37 = 0.0;
    }

    *(v0 + 144) = v36;
    *(v0 + 152) = v37;
    *(v0 + 176) = *(v33 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    type metadata accessor for MainActor();
    *(v0 + 160) = static MainActor.shared.getter();
    v39 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MutableMotionActivityViewModel.render(), v39, v38);
  }
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);

  *(v0 + 168) = static MotionActivityViewModel.image(for:render:font:size:assetClass:)((v0 + 40), 1, v4, v2, v1, v3 == 0, (v0 + 176));

  return MEMORY[0x2822009F8](MutableMotionActivityViewModel.render(), 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[14];
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  v5 = v0[1];

  return v5();
}

uint64_t MotionActivity.title.getter()
{
  v1 = *v0;
  if (*v0 == 3)
  {
    return 0x61572026206E7552;
  }

  if (v1 == 2)
  {
    return 1802264919;
  }

  if (v1 == 1)
  {
    return 7238994;
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.views);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21607C000, v4, v5, "[MotionActivity] failed to get title key & comment for activity because the case=%s is not handled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  return 0;
}

void *static MotionActivityViewModel.image(for:render:font:size:assetClass:)(unint64_t *a1, char a2, void *a3, unint64_t a4, unint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  LOBYTE(v11) = a2;
  v12 = *a7;
  v42 = *a1;
  static MotionActivityViewModel.images(for:font:)(&v42, a3);
  v14 = v13;
  v15 = (v13 >> 62);
  if (v13 >> 62)
  {
    goto LABEL_57;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_58:

    return 0;
  }

  while (1)
  {
    if (v11 & 1) == 0 || (a6)
    {
      if (v15)
      {
        v21 = __CocoaSet.count.getter();
        if (v21 != 1)
        {
LABEL_21:
          if (v21 < 2)
          {
            goto LABEL_58;
          }

          v22 = specialized static SnowGlobeEffect.image(for:targetSize:)(v14, 250.0, 250.0);
          goto LABEL_27;
        }
      }

      else
      {
        v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21 != 1)
        {
          goto LABEL_21;
        }
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CE93180](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_62;
        }

        v22 = *(v14 + 32);
      }

LABEL_27:
      v23 = v22;

      type metadata accessor for Image();
      LOBYTE(v42) = v12;
      return Image.__allocating_init(uiImage:isGlyph:assetClass:)(v23, 0, &v42);
    }

    v7 = *&a4;
    v17 = *&a5;
    if (v15)
    {
      v18 = __CocoaSet.count.getter();
      if (v18 != 1)
      {
        goto LABEL_7;
      }

LABEL_29:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180](0, v14);
        goto LABEL_32;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v14 + 32);
LABEL_32:
        v26 = v25;

        type metadata accessor for Image();
        v27 = UIImage.rendered(size:)(*&a4);
        LOBYTE(v42) = v12;
        v28 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v27, 0, &v42);

        return v28;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 == 1)
    {
      goto LABEL_29;
    }

LABEL_7:
    if (v18 < 2)
    {
      goto LABEL_58;
    }

    a4 = 0;
    a5 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    v11 = v14 & 0xC000000000000001;
    while (v16 != a4)
    {
      if (v11)
      {
        v19 = MEMORY[0x21CE93180](a4, v14);
      }

      else
      {
        if (a4 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v19 = *(v14 + 8 * a4 + 32);
      }

      v15 = v19;
      v20 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      a6 = UIImage.rendered(size:)(v7);

      ++a4;
      if (a6)
      {
        MEMORY[0x21CE92260]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v15 = &v42;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v42;
        a4 = v20;
      }
    }

    v40 = v12;

    if (v7 <= v17)
    {
      v7 = v17;
    }

    a6 = v41;
    v39 = specialized static SnowGlobeEffect.image(for:targetSize:)(v41, v7, v7);
    v42 = a5;
    v12 = v41 & 0xFFFFFFFFFFFFFF8;
    if (!(v41 >> 62))
    {
      v29 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        break;
      }

      goto LABEL_37;
    }

LABEL_63:
    v29 = __CocoaSet.count.getter();
    if (!v29)
    {
      break;
    }

LABEL_37:
    a5 = 0;
    v14 = a6 & 0xC000000000000001;
    v15 = MEMORY[0x277D84F90];
LABEL_38:
    a4 = a5;
    while (1)
    {
      if (v14)
      {
        v30 = MEMORY[0x21CE93180](a4, a6);
      }

      else
      {
        if (a4 >= *(v12 + 16))
        {
          goto LABEL_56;
        }

        v30 = *(a6 + 8 * a4 + 32);
      }

      a6 = v30;
      a5 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v31 = [v30 imageAsset];
      if (v31)
      {
        v32 = v31;
        v33 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v11 = [v32 imageWithTraitCollection_];

        if (v11)
        {
          MEMORY[0x21CE92260]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a6 = v41;
          v15 = v42;
          if (a5 != v29)
          {
            goto LABEL_38;
          }

          goto LABEL_65;
        }
      }

      else
      {
      }

      ++a4;
      a6 = v41;
      if (a5 == v29)
      {
        goto LABEL_65;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      goto LABEL_58;
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_65:

  v34 = specialized static SnowGlobeEffect.image(for:targetSize:)(v15, v7, v7);

  if (v34)
  {
    if (v39)
    {
      v35 = v39;
      v36 = [v35 imageAsset];
      if (v36)
      {
        v37 = v36;
        v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        [v37 registerImage:v34 withTraitCollection:v38];
      }
    }
  }

  type metadata accessor for Image();
  LOBYTE(v42) = v40;
  return Image.__allocating_init(uiImage:isGlyph:assetClass:)(v39, 0, &v42);
}

Swift::Bool __swiftcall MutableMotionActivityViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v3 = 0;
  v3[1] = 0;

  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  swift_beginAccess();
  *v4 = 0;
  v4[1] = 0;

  return 1;
}

void *MutableMotionActivityViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  objc_allocWithZone(type metadata accessor for MotionActivityView());
  v8 = v2;
  result = LabeledImageView.init(viewModel:style:)(v1, &v8);
  if (result)
  {
    v4 = one-time initialization token for accessibilityString;
    v5 = result;
    v6 = result;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v6 setAccessibilityLabel_];

    return v5;
  }

  return result;
}

uint64_t MutableMotionActivityViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableMotionActivityViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for MotionActivityViewModel.motionActivity.getter in conformance MutableMotionActivityViewModel(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity);
  *(a1 + 8) = v2;
}

uint64_t protocol witness for MotionActivityViewModel.subtitle.getter in conformance MutableMotionActivityViewModel()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void *MotionActivity.symbolNames.getter()
{
  v1 = *v0;
  if (*v0 == 1)
  {
    return &outlined read-only object #0 of MotionActivity.symbolNames.getter;
  }

  if (v1 == 3)
  {
    v13 = 1;
    v3 = MotionActivity.symbolNames.getter();
    v4 = MotionActivity.symbolNames.getter();
    specialized Array.append<A>(contentsOf:)(v4);
    return v3;
  }

  else if (v1 == 2)
  {
    return &outlined read-only object #1 of MotionActivity.symbolNames.getter;
  }

  else
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.views);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21607C000, v6, v7, "[MotionActivity] failed to get symbol names for activity because the case=%s is not handled", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CE94770](v9, -1, -1);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t UIImage.rendered(size:)(double a1)
{
  if (one-time initialization token for motionRed != -1)
  {
    swift_once();
  }

  v3 = static CommonTheme.Color.motionRed;
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v4 blackColor];
  v49 = [v7 colorWithAlphaComponent_];

  v8 = objc_opt_self();
  v9 = v6;
  v48 = v8;
  v10 = [v8 mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = v12 * a1;
  v14 = [v9 CGColor];
  if (!v14)
  {
    v15 = [v3 colorWithAlphaComponent_];
    v14 = [v15 CGColor];
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds_];
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = 0x4000000000000000;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  *(v17 + 48) = v3;
  *(v17 + 56) = v12 * a1 * 0.5;
  *(v17 + 64) = 0x3FF0000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = _sSo7UIImageC9MomentsUIE18fitnessTintAndPill4with15backgroundColor21symbolCenteringOffset4sizeABSgSo7UIColorC_AKSg12CoreGraphics7CGFloatVSo6CGSizeVtFySo30UIGraphicsImageRendererContextCXEfU_TA_0;
  *(v18 + 24) = v17;
  v54 = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v55 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v53 = &block_descriptor_37;
  v19 = _Block_copy(&aBlock);
  v20 = v1;
  v21 = v14;
  v22 = v3;

  v47 = [v16 imageWithActions_];

  _Block_release(v19);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v24 = v9;
  v25 = v49;
  v26 = [v48 mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = v28 * a1;
  v30 = v28 * a1 * 0.5;
  v31 = [v25 CGColor];
  if (!v31)
  {
    v32 = [v22 colorWithAlphaComponent_];
    v31 = [v32 CGColor];
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds_];
  v34 = swift_allocObject();
  *(v34 + 16) = v20;
  *(v34 + 24) = 0x4000000000000000;
  *(v34 + 32) = v29;
  *(v34 + 40) = v31;
  *(v34 + 48) = v22;
  *(v34 + 56) = v30;
  *(v34 + 64) = 0x3FF0000000000000;
  v35 = swift_allocObject();
  *(v35 + 16) = closure #1 in UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:size:)partial apply;
  *(v35 + 24) = v34;
  v54 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v55 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v53 = &block_descriptor_19_2;
  v36 = _Block_copy(&aBlock);
  v37 = v20;
  v38 = v22;
  v39 = v31;

  v40 = [v33 imageWithActions_];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    goto LABEL_19;
  }

  if (v40)
  {
    v41 = v47;
    if (v47)
    {
      v42 = v47;
      v43 = [v42 imageAsset];
      if (v43)
      {
        v44 = v43;
        v45 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        [v44 registerImage:v40 withTraitCollection:v45];
      }

      v46 = v25;
      v25 = v42;
      v24 = v40;
    }

    else
    {
      v46 = v40;
    }
  }

  else
  {
    v41 = v47;
  }

  return v41;
}

void static MotionActivityViewModel.images(for:font:)(uint64_t a1, id a2)
{
  v3 = MotionActivity.symbolNames.getter();
  v4 = v3[2];
  if (v4)
  {
    if (a2)
    {
      v5 = v3;
      a2 = [objc_opt_self() configurationWithFont_];
      v3 = v5;
      v4 = v5[2];
    }

    v6 = 0;
    v16 = MEMORY[0x277D84F90];
    v7 = (v3 + 5);
    v15 = (v3 + 5);
LABEL_5:
    v8 = &v7[16 * v6];
    while (1)
    {
      if (v4 == v6)
      {

        return;
      }

      if (v6 >= v4)
      {
        break;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

      v10 = *(v8 - 1);
      v11 = *v8;

      v12 = a2;
      v13 = MEMORY[0x21CE91FC0](v10, v11);
      v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

      ++v6;
      v8 += 16;
      if (v14)
      {
        MEMORY[0x21CE92260]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v9;
        v7 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
  }
}

uint64_t specialized MutableMotionActivityViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a3;
  v18[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle];
  *v8 = 0;
  v8[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMotionActivityModel();
  if (swift_dynamicCast())
  {
    v9 = *(v16 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
    v10 = *(v16 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
    if (v10)
    {
      v9 = 0;
    }

    v11 = &a2[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity];
    *v11 = v9;
    v11[8] = v10;
    *&a2[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps] = *(v16 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps);
    v13 = *(v16 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
    v12 = *(v16 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle + 8);
    swift_beginAccess();
    *v8 = v13;
    v8[1] = v12;

    swift_weakAssign();
    v14 = specialized AssetViewModel.init(dbObject:)(v16, a2);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableMotionActivityViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableMotionActivityViewModel.init(dbObject:)(v9, v11, a3, a4);
}

id specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:image:motionActivity:steps:title:subtitle:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v54 = a7;
  v55 = a8;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v53 = a11;
  v48 = a10;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  v19 = *a4;
  v20 = *(a4 + 8);
  v21 = &v12[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle];
  *v21 = 0;
  v21[1] = 0;
  swift_weakInit();
  v22 = &v12[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity];
  *v22 = v19;
  v22[8] = v20;
  if (a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = a5;
  }

  *&v12[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps] = v23;
  swift_beginAccess();
  v24 = v48;
  *v21 = a9;
  v21[1] = v24;

  swift_weakAssign();
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v49 = v18;
  v27(v18, a11, v25);
  v28 = *(v26 + 56);
  v28(v18, 0, 1, v25);
  type metadata accessor for DBAssetModel();
  v29 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, &v58);
  LODWORD(v48) = v58;
  v30 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v31 = &v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v28(&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v25);
  UUID.init()();
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v34 = v50;
  v33 = v51;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v50;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v33;
  swift_beginAccess();
  v35 = *&v12[v30];
  v36 = v52;
  *&v12[v30] = v52;
  v37 = v34;
  v38 = v36;

  swift_beginAccess();
  v39 = v55;
  *v31 = v54;
  v31[1] = v39;

  swift_beginAccess();
  v40 = v49;
  outlined assign with copy of DateInterval?(v49, &v12[v32]);
  v41 = swift_endAccess();
  v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v48;
  (*(v29 + 328))(v57, v41);
  LOBYTE(v34) = v57[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + 112) = v34;
  *&v12[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v42;
  v43 = type metadata accessor for AssetViewModel();
  v56.receiver = v12;
  v56.super_class = v43;
  v44 = objc_msgSendSuper2(&v56, sel_init);
  (*(v26 + 8))(v53, v25);
  outlined destroy of DateInterval?(v40);
  return v44;
}

id specialized MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:motionActivity:steps:dateInterval:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a2;
  v35 = a5;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = *a3;
  v15 = &v6[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle];
  *v15 = 0;
  v15[1] = 0;
  swift_weakInit();
  v16 = &v6[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity];
  *v16 = v14;
  v16[8] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps] = a4;
  swift_weakAssign();
  v17 = type metadata accessor for DateInterval();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v13, a5, v17);
  v19 = *(v18 + 56);
  v19(v13, 0, 1, v17);
  type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(ObjectType, &v38);
  HIDWORD(v32) = v38;
  v20 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v21 = &v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v19(&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v17);
  UUID.init()();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v24 = v33;
  v23 = v34;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v33;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v23;
  swift_beginAccess();
  v25 = *&v6[v20];
  *&v6[v20] = 0;
  v26 = v24;

  swift_beginAccess();
  *v21 = 0;
  v21[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v13, &v6[v22]);
  v27 = swift_endAccess();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = BYTE4(v32);
  (*(ObjectType + 328))(v37, v27);
  LOBYTE(v22) = v37[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 112) = v22;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v28;
  v29 = type metadata accessor for AssetViewModel();
  v36.receiver = v6;
  v36.super_class = v29;
  v30 = objc_msgSendSuper2(&v36, sel_init);
  (*(v18 + 8))(v35, v17);
  outlined destroy of DateInterval?(v13);
  return v30;
}

unint64_t lazy protocol witness table accessor for type MotionActivity and conformance MotionActivity()
{
  result = lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity;
  if (!lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity;
  if (!lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity;
  if (!lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity;
  if (!lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MotionActivity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MotionActivity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for MutableMotionActivityViewModel()
{
  result = type metadata singleton initialization cache for MutableMotionActivityViewModel;
  if (!type metadata singleton initialization cache for MutableMotionActivityViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t ClientLivePhotoViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientLivePhotoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientLivePhotoViewModel.livePhoto.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = DBAssetModel.basePairedPhotoVideo.getter();

    return v1;
  }

  return result;
}

uint64_t ClientLivePhotoViewModel.title.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

__n128 ClientLivePhotoViewModel.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_portraitCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 ClientLivePhotoViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_landscapeCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 ClientLivePhotoViewModel.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_squareCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ClientLivePhotoViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientLivePhotoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientLivePhotoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientLivePhotoViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_localIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_cloudIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_portraitCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_landscapeCropRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_squareCropRect;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientLivePhotoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientLivePhotoViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for LivePhotoView());
  return LivePhotoView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientLivePhotoViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientLivePhotoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLivePhotoViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for PhotosFamilyViewModel.portraitCropRect.getter in conformance ClientLivePhotoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x278))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.landscapeCropRect.getter in conformance ClientLivePhotoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x290))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.squareCropRect.getter in conformance ClientLivePhotoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x2A8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t specialized ClientLivePhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_localIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_cloudIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_portraitCropRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_landscapeCropRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_squareCropRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBLivePhotoModel();
  if (swift_dynamicCast())
  {
    swift_weakAssign();
    v13 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v20 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v23 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v12 = v23;
    *(v12 + 1) = v20;
    v12[32] = v13;
    v14 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v21 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v24 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v10 = v24;
    *(v10 + 1) = v21;
    v10[32] = v14;
    v15 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v22 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v25 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v11 = v25;
    *(v11 + 1) = v22;
    v11[32] = v15;
    v17 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v16 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v9 = v17;
    v9[1] = v16;

    swift_beginAccess();
    *v8 = 0;
    v8[1] = 0;

    v18 = specialized AssetViewModel.init(dbObject:)(v26, a2);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v18;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientLivePhotoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientLivePhotoViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientLivePhotoViewModel.init(dbObject:)(v9, v10, a3, a4);
}

void specialized ClientLivePhotoViewModel.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_localIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_cloudIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_portraitCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_landscapeCropRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_squareCropRect;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ClientLivePhotoViewModel()
{
  result = type metadata singleton initialization cache for ClientLivePhotoViewModel;
  if (!type metadata singleton initialization cache for ClientLivePhotoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ClientLivePhotoViewModel.portraitCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x280);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of ClientLivePhotoViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x298);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of ClientLivePhotoViewModel.squareCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x2B0);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t PrivacyOnboardingView.clientDisplayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_clientDisplayName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PrivacyOnboardingView.clientDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_clientDisplayName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id PrivacyOnboardingView.overlayView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_overlayView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.overlayView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_overlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PrivacyOnboardingView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PrivacyOnboardingView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

id closure #1 in variable initialization expression of PrivacyOnboardingView.platter()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v2 = v1;
  v3 = [v2 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor_];
  v6 = [v2 layer];
  LODWORD(v7) = 1041865114;
  [v6 setShadowOpacity_];

  v8 = [v2 layer];
  [v8 setShadowOffset_];

  v9 = [v2 layer];
  [v9 setShadowRadius_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 _setCornerRadius_];

  return v2;
}

id PrivacyOnboardingView.platter.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platter;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.platter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.titleFont.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_titleFont;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.titleFont.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_titleFont;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.bodyFont.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_bodyFont;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.bodyFont.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_bodyFont;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.contentLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.contentLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.largeIconView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.largeIconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.attachmentAnchorView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentAnchorView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.attachmentAnchorView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentAnchorView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.attachmentIconView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentIconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.attachmentIconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentIconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id closure #1 in variable initialization expression of PrivacyOnboardingView.textView()
{
  v0 = [objc_opt_self() textViewUsingTextLayoutManager_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v6 = v0;
  [v6 setTextContainerInset_];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  v8 = v6;
  [v8 setEditable_];
  [v8 setScrollEnabled_];
  [v8 setDelaysContentTouches_];

  [v8 setSelectable_];
  [v8 _setInteractiveTextSelectionDisabled_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  [v8 setAdjustsFontForContentSizeCategory_];
  return v8;
}

id PrivacyOnboardingView.textView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.textView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.okButton.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_okButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.okButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_okButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.badge.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badge;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.badge.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badge;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.badgeIconView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeIconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.badgeIconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeIconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PrivacyOnboardingView.badgeLabel.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PrivacyOnboardingView.badgeLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void PrivacyOnboardingView.init(clientDisplayName:)(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  *&v255 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v244 = &v233 - v6;
  v7 = type metadata accessor for UIButton.Configuration.Size();
  v242 = *(v7 - 8);
  v243 = v7;
  MEMORY[0x28223BE20](v7);
  v241 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v239 = *(v9 - 8);
  v240 = v9;
  MEMORY[0x28223BE20](v9);
  v238 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v249 = *(v11 - 8);
  v250 = v11;
  MEMORY[0x28223BE20](v11);
  v248 = &v233 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_clientDisplayName];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_overlayView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v245 = objc_opt_self();
  v16 = [v245 blackColor];
  [v15 setBackgroundColor_];

  v17 = [v15 layer];
  LODWORD(v18) = 1057803469;
  [v17 setOpacity_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v14] = v15;
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platter;
  *&v3[v19] = closure #1 in variable initialization expression of PrivacyOnboardingView.platter();
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  v22 = [v21 fontDescriptor];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];

  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_titleFont;
  v25 = [v20 fontWithDescriptor:v23 size:0.0];

  *&v3[v24] = v25;
  v26 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_bodyFont;
  *&v3[v26] = [v20 preferredFontForTextStyle_];
  v27 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentLayoutGuide;
  *&v3[v27] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v28 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentInsetConstraints] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentCenterConstraints] = v28;
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platterInsetConstraints] = v28;
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconViewConstraints] = v28;
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textViewConstraints] = v28;
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_buttonConstraints] = v28;
  *&v3[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeConstraints] = v28;
  v29 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconView;
  *&v3[v29] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v30 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentAnchorView;
  *&v3[v30] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v31 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentIconView;
  *&v3[v31] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v32 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textView;
  *&v3[v32] = closure #1 in variable initialization expression of PrivacyOnboardingView.textView();
  v33 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_okButton;
  *&v3[v33] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v34 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badge;
  *&v3[v34] = [objc_allocWithZone(type metadata accessor for PrivacyBadgeView()) initWithFrame_];
  v35 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeIconView;
  v36 = CGRectMake_0();
  *&v3[v35] = [objc_allocWithZone(type metadata accessor for PrivacyBadgeIconView()) initWithFrame_];
  v40 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeLabel;
  *&v3[v40] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v41 = type metadata accessor for PrivacyOnboardingView();
  v260.receiver = v3;
  v260.super_class = v41;
  v42 = objc_msgSendSuper2(&v260, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v43 = &v42[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_clientDisplayName];
  swift_beginAccess();
  *v43 = v255;
  *(v43 + 1) = a2;
  v44 = v42;
  v236 = a2;

  [v44 setMaximumContentSizeCategory_];
  v45 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_overlayView;
  swift_beginAccess();
  [v44 addSubview_];
  v253 = objc_opt_self();
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v46 = swift_allocObject();
  v255 = xmmword_216590220;
  *(v46 + 16) = xmmword_216590220;
  v47 = [*&v44[v45] topAnchor];
  v48 = [v44 topAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v46 + 32) = v49;
  v50 = [*&v44[v45] bottomAnchor];
  v51 = [v44 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v46 + 40) = v52;
  v53 = [*&v44[v45] leadingAnchor];
  v54 = [v44 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v46 + 48) = v55;
  v56 = [*&v44[v45] trailingAnchor];
  v57 = [v44 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v46 + 56) = v58;
  v252 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v60 = v253;
  [v253 activateConstraints_];

  [v44 addSubview_];
  v61 = swift_allocObject();
  *(v61 + 16) = v255;
  v62 = [*&v44[v45] topAnchor];
  v63 = [v44 topAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v61 + 32) = v64;
  v65 = [*&v44[v45] bottomAnchor];
  v66 = [v44 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v61 + 40) = v67;
  v68 = [*&v44[v45] leadingAnchor];
  v69 = [v44 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v61 + 48) = v70;
  v71 = [*&v44[v45] trailingAnchor];
  v72 = [v44 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v61 + 56) = v73;
  v74 = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints_];

  v75 = &v44[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platter];
  swift_beginAccess();
  [v44 addSubview_];
  v76 = swift_allocObject();
  *(v76 + 16) = v255;
  v77 = [*v75 topAnchor];
  v78 = [v44 topAnchor];
  v79 = [v77 constraintGreaterThanOrEqualToAnchor:v78 constant:24.0];

  *(v76 + 32) = v79;
  v80 = [v44 bottomAnchor];
  v81 = [*v75 bottomAnchor];
  v82 = [v80 constraintGreaterThanOrEqualToAnchor:v81 constant:24.0];

  *(v76 + 40) = v82;
  v83 = [*v75 leadingAnchor];
  v84 = [v44 leadingAnchor];
  v85 = [v83 constraintGreaterThanOrEqualToAnchor:v84 constant:24.0];

  *(v76 + 48) = v85;
  v86 = [v44 trailingAnchor];
  v87 = [*v75 trailingAnchor];
  v88 = [v86 constraintGreaterThanOrEqualToAnchor:v87 constant:24.0];

  *(v76 + 56) = v88;
  v89 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platterInsetConstraints;
  swift_beginAccess();
  v246 = v89;
  *&v89[v44] = v76;

  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_21658E180;
  v91 = &v44[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentLayoutGuide];
  swift_beginAccess();
  v92 = [*v91 centerXAnchor];
  v93 = [v44 safeAreaLayoutGuide];
  v94 = [v93 centerXAnchor];

  v95 = [v92 constraintEqualToAnchor_];
  *(v90 + 32) = v95;
  v96 = [*v91 centerYAnchor];
  v97 = [v44 safeAreaLayoutGuide];
  v98 = [v97 centerYAnchor];

  v99 = [v96 constraintEqualToAnchor_];
  *(v90 + 40) = v99;
  v100 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentCenterConstraints;
  swift_beginAccess();
  *&v44[v100] = v90;

  v101 = swift_allocObject();
  *(v101 + 16) = v255;
  v102 = [*v91 leadingAnchor];
  v103 = [*v75 leadingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103 constant:16.0];

  *(v101 + 32) = v104;
  v105 = [*v91 topAnchor];
  v106 = [*v75 topAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:16.0];

  *(v101 + 40) = v107;
  v108 = [*v75 trailingAnchor];
  v109 = [*v91 trailingAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 constant:16.0];

  *(v101 + 48) = v110;
  v235 = v75;
  v111 = [*v75 bottomAnchor];
  v112 = [*v91 bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:16.0];

  *(v101 + 56) = v113;
  v114 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentInsetConstraints;
  swift_beginAccess();
  *&v44[v114] = v101;

  v251 = v91;
  [v44 addLayoutGuide_];

  v115 = Array._bridgeToObjectiveC()().super.isa;

  v116 = v253;
  [v253 activateConstraints_];

  v117 = Array._bridgeToObjectiveC()().super.isa;

  [v116 activateConstraints_];

  v118 = Array._bridgeToObjectiveC()().super.isa;

  [v116 activateConstraints_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v246 = objc_opt_self();
  ObjectType = ObjCClassFromMetadata;
  v120 = [v246 bundleForClass_];
  v237 = "ClientLivePhotoViewModel";
  v121 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216588530);
  v122 = objc_opt_self();
  v123 = [v122 imageNamed:v121 inBundle:v120];

  if (!v123)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v124 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v125 = &v44[OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconView];
  swift_beginAccess();
  v126 = *v125;
  *v125 = v124;
  v127 = v124;

  [v127 setTranslatesAutoresizingMaskIntoConstraints_];
  v128 = [*v125 layer];
  v129 = [v245 blackColor];
  v130 = [v129 CGColor];

  [v128 setShadowColor_];
  v131 = [*v125 layer];
  LODWORD(v132) = 1041865114;
  [v131 setShadowOpacity_];

  v133 = [*v125 layer];
  [v133 setShadowOffset_];

  v134 = [*v125 layer];
  [v134 setShadowRadius_];

  v135 = swift_allocObject();
  *(v135 + 16) = v255;
  v136 = [*v125 widthAnchor];
  v137 = [v136 constraintEqualToConstant_];

  *(v135 + 32) = v137;
  v138 = [*v125 heightAnchor];
  v139 = [v138 constraintEqualToConstant_];

  *(v135 + 40) = v139;
  v140 = [*v125 topAnchor];
  v141 = v251;
  v142 = [*v251 topAnchor];
  v143 = [v140 constraintEqualToAnchor_];

  *(v135 + 48) = v143;
  v144 = [*v125 centerXAnchor];
  v145 = [*v141 centerXAnchor];
  v146 = [v144 constraintEqualToAnchor_];

  *(v135 + 56) = v146;
  v147 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconViewConstraints;
  swift_beginAccess();
  *&v44[v147] = v135;

  [v44 addSubview_];

  v148 = Array._bridgeToObjectiveC()().super.isa;

  [v253 activateConstraints_];

  v149 = (*((*MEMORY[0x277D85000] & *v44) + 0x338))();
  v151 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v259[4] = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  v259[5] = 0;
  v259[0] = MEMORY[0x277D85DD0];
  v259[1] = 1107296256;
  v259[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v259[3] = &block_descriptor_38;
  v152 = _Block_copy(v259);

  v245 = v151;
  v153 = [v151 imageWithActions_];
  _Block_release(v152);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v154 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v155 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentAnchorView;
  swift_beginAccess();
  v156 = *&v44[v155];
  *&v44[v155] = v154;

  v157 = [v246 bundleForClass_];
  v158 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, v237 | 0x8000000000000000);
  v159 = [v122 imageNamed:v158 inBundle:v157];

  if (v159)
  {

    v160 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v161 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentIconView;
    swift_beginAccess();
    v162 = *&v44[v161];
    *&v44[v161] = v160;

    v163 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textView;
    swift_beginAccess();
    v164 = [*&v44[v163] widthAnchor];
    v165 = [v164 constraintEqualToConstant_];

    LODWORD(v166) = 1144750080;
    [v165 setPriority_];
    v167 = swift_allocObject();
    *(v167 + 16) = v255;
    *(v167 + 32) = v165;
    v168 = *&v44[v163];
    v237 = v165;
    v169 = [v168 topAnchor];
    v170 = [*v125 bottomAnchor];
    v171 = [v169 constraintEqualToAnchor:v170 constant:12.0];

    *(v167 + 40) = v171;
    v172 = [*&v44[v163] leadingAnchor];
    v173 = v251;
    v174 = [*v251 leadingAnchor];
    v175 = [v172 constraintEqualToAnchor_];

    *(v167 + 48) = v175;
    v176 = [*v173 trailingAnchor];
    v177 = [*&v44[v163] trailingAnchor];
    v178 = [v176 &selRef_safeAreaLayoutGuide + 5];

    *(v167 + 56) = v178;
    v179 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textViewConstraints;
    swift_beginAccess();
    *&v44[v179] = v167;

    v234 = ((*MEMORY[0x277D85000] & *v44) + 800);
    v236 = *v234;
    (v236)(v180);
    [v44 addSubview_];

    v181 = Array._bridgeToObjectiveC()().super.isa;

    [v253 activateConstraints_];

    v182 = *&v44[v163];
    v183 = v44;
    [v182 setDelegate_];
    v184 = v248;
    static UIButton.Configuration.filled()();
    (*(v239 + 104))(v238, *MEMORY[0x277D74FD8], v240);
    UIButton.Configuration.cornerStyle.setter();
    (*(v242 + 104))(v241, *MEMORY[0x277D75018], v243);
    UIButton.Configuration.buttonSize.setter();
    v185 = [v246 bundleForClass_];
    v261._object = 0x8000000216588550;
    v261._countAndFlagsBits = 0xD000000000000020;
    v186._countAndFlagsBits = 19279;
    v186._object = 0xE200000000000000;
    v187._countAndFlagsBits = 0;
    v187._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v186, 0, v185, v187, v261);

    UIButton.Configuration.title.setter();
    v188 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_okButton;
    swift_beginAccess();
    v189 = *&v183[v188];
    v190 = v249;
    v191 = v244;
    v192 = v184;
    v193 = v250;
    (*(v249 + 16))(v244, v192, v250);
    (*(v190 + 56))(v191, 0, 1, v193);
    v194 = v189;
    UIButton.configuration.setter();

    [*&v183[v188] setTranslatesAutoresizingMaskIntoConstraints_];
    v195 = *&v183[v188];
    [v195 addTarget:v183 action:sel_okButtonTapped forControlEvents:64];

    v196 = [*v173 bottomAnchor];
    v197 = [*&v183[v188] bottomAnchor];
    v198 = [v196 constraintEqualToAnchor_];

    type metadata accessor for UILayoutPriority(0);
    v257 = 1132068864;
    v256 = 0x40000000;
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    LODWORD(v199) = v258;
    [v198 setPriority_];
    v200 = swift_allocObject();
    *(v200 + 16) = v255;
    v201 = [*&v183[v188] topAnchor];
    v202 = [*&v44[v163] bottomAnchor];
    v203 = [v201 constraintEqualToAnchor:v202 constant:16.0];

    *(v200 + 32) = v203;
    *(v200 + 40) = v198;
    v204 = *&v183[v188];
    *&v255 = v198;
    v205 = [v204 widthAnchor];
    v206 = [v205 constraintGreaterThanOrEqualToConstant_];

    *(v200 + 48) = v206;
    v207 = [*&v183[v188] centerXAnchor];
    v208 = [v183 centerXAnchor];

    v209 = [v207 constraintEqualToAnchor_];
    *(v200 + 56) = v209;
    v210 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_buttonConstraints;
    swift_beginAccess();
    *&v183[v210] = v200;

    [v183 addSubview_];

    v211 = Array._bridgeToObjectiveC()().super.isa;

    [v253 activateConstraints_];

    v212 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badge;
    swift_beginAccess();
    [*&v183[v212] setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v183[v212] setHidden_];
    v213 = [v183 addSubview_];
    v214 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v183) + 0x328))(v213);
    v215 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeIconView;
    swift_beginAccess();
    [*&v183[v215] &off_27821E678];
    v216 = v235;
    v217 = [*v235 contentView];
    [v217 addSubview_];

    v218 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeLabel;
    swift_beginAccess();
    v219 = *&v183[v212];
    v220 = *((*v214 & *v219) + 0xA0);
    v221 = *&v183[v218];
    v222 = v219;
    v223 = v220();

    [v221 setFont_];
    v224 = *&v183[v212];
    v225 = *((*v214 & *v224) + 0x98);
    v226 = *&v183[v218];
    v227 = v224;
    v228 = v225();
    v230 = v229;

    v231 = MEMORY[0x21CE91FC0](v228, v230);

    [v226 setText_];

    [*&v183[v218] setHidden_];
    v232 = [*v216 contentView];
    [v232 addSubview_];

    v236();
    (*(v249 + 8))(v248, v250);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall PrivacyOnboardingView.okButtonTapped()()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x130))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PrivacyOnboardingView.updateTextView()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x298))();
  v3 = (*((*v1 & *v0) + 0x348))();
  [v2 setAttributedText_];
}

id PrivacyOnboardingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double PrivacyOnboardingView.attachmentAnchorSize.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x160))();
  [v1 lineHeight];
  v3 = v2;

  return destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(3.0, v3);
}

id PrivacyOnboardingView.attributedText.getter()
{
  v1 = v0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v86._object = 0x80000002165885B0;
  v5._object = 0x8000000216588580;
  v86._countAndFlagsBits = 0xD000000000000042;
  v5._countAndFlagsBits = 0xD000000000000028;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v86);

  v7 = [v3 bundleForClass_];
  v87._object = 0x8000000216588650;
  v8._object = 0x8000000216588600;
  v87._countAndFlagsBits = 0xD00000000000003CLL;
  v8._countAndFlagsBits = 0x100000000000004FLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v87);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21658CA50;
  v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x100))();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *(v10 + 32) = v14;
  *(v10 + 40) = v15;
  static String.localizedStringWithFormat(_:_:)();

  v16 = [v3 bundleForClass_];
  v88._object = 0x8000000216588690;
  v17._countAndFlagsBits = 0x6DA0C26E7261654CLL;
  v17._object = 0xAE00A680E265726FLL;
  v88._countAndFlagsBits = 0xD00000000000006ALL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v88);

  v20 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v20 setLineSpacing_];
  [v20 setAlignment_];
  [v20 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v79 = v20;
  [v20 setParagraphSpacing_];
  [v20 copy];
  _bridgeAnyObjectToAny(_:)();
  v21 = swift_unknownObjectRelease();
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v1) + 0x268))(v21);
  v24 = (*((*v22 & *v1) + 0x338))();
  v26 = v25;
  v77 = type metadata accessor for MomentsImageTextAttachment();
  v27 = objc_allocWithZone(v77);
  v78 = MomentsImageTextAttachment.init(imageView:size:)(v23, v24, v26);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString);
  v76 = swift_getObjCClassFromMetadata();
  v28 = [v76 attributedStringWithAttachment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v30 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  outlined init with copy of Any(v84, inited + 40);
  v31 = v30;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = v28;
  [v73 addAttributes:isa range:{0, objc_msgSend(v73, sel_length)}];

  v33 = swift_initStackObject();
  v34 = MEMORY[0x277D740A8];
  *(v33 + 16) = xmmword_21658E190;
  v35 = *v34;
  *(v33 + 32) = v35;
  v36 = *((*v22 & *v1) + 0x160);
  v67 = v35;
  v37 = v36();
  v69 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(v33 + 40) = v37;
  v38 = *MEMORY[0x277D740C0];
  *(v33 + 64) = v69;
  *(v33 + 72) = v38;
  v71 = objc_opt_self();
  v72 = v38;
  v39 = [v71 labelColor];
  v70 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(v33 + 80) = v39;
  *(v33 + 104) = v70;
  *(v33 + 112) = v31;
  outlined init with copy of Any(v84, v33 + 120);
  v68 = v31;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v80 = String.init<A>(_:)();
  v82 = v40;
  String.append<A>(contentsOf:)();
  v41 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v42 = MEMORY[0x21CE91FC0](v80, v82);

  v43 = Dictionary._bridgeToObjectiveC()().super.isa;

  v75 = [v41 initWithString:v42 attributes:v43];

  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_21658E190;
  *(v44 + 32) = v67;
  v45 = *((*MEMORY[0x277D85000] & *v1) + 0x178);
  *(v44 + 40) = v45();
  v46 = *MEMORY[0x277D740E8];
  *(v44 + 64) = v69;
  *(v44 + 72) = v46;
  *(v44 + 80) = 0x61622F2F3A6F6F66;
  *(v44 + 88) = 0xE900000000000072;
  *(v44 + 104) = MEMORY[0x277D837D0];
  *(v44 + 112) = v68;
  outlined init with copy of Any(v85, v44 + 120);
  v47 = v46;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  v48 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v49 = MEMORY[0x21CE91FC0](v19._countAndFlagsBits, v19._object);

  v50 = Dictionary._bridgeToObjectiveC()().super.isa;

  v74 = [v48 initWithString:v49 attributes:v50];

  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_21658E190;
  *(v51 + 32) = v67;
  *(v51 + 40) = v45();
  *(v51 + 64) = v69;
  *(v51 + 72) = v72;
  *(v51 + 80) = [v71 labelColor];
  *(v51 + 104) = v70;
  *(v51 + 112) = v68;
  outlined init with copy of Any(v85, v51 + 120);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  v81 = String.init<A>(_:)();
  v83 = v52;
  String.append<A>(contentsOf:)();
  v53 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v54 = MEMORY[0x21CE91FC0](v81, v83);

  v55 = Dictionary._bridgeToObjectiveC()().super.isa;

  v56 = [v53 initWithString:v54 attributes:v55];

  v57 = MEMORY[0x277D85000];
  v58 = (*((*MEMORY[0x277D85000] & *v1) + 0x280))();
  v59 = (*((*v57 & *v1) + 0x340))();
  v61 = v60;
  v62 = objc_allocWithZone(v77);
  v63 = MomentsImageTextAttachment.init(imageView:size:)(v58, v59, v61);
  v64 = [v76 attributedStringWithAttachment_];
  __swift_project_boxed_opaque_existential_1(v84, v84[3]);
  [v64 addAttribute:v68 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v64, sel_length)}];
  swift_unknownObjectRelease();
  v65 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  [v65 appendAttributedString_];
  [v65 appendAttributedString_];
  [v65 appendAttributedString_];

  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v65;
}

uint64_t PrivacyOnboardingView.textView(_:shouldInteractWith:in:)()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x130))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

id PrivacyOnboardingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PrivacyOnboardingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyOnboardingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized PrivacyOnboardingView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_clientDisplayName);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_overlayView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() blackColor];
  [v3 setBackgroundColor_];

  v5 = [v3 layer];
  LODWORD(v6) = 1057803469;
  [v5 setOpacity_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platter;
  *(v0 + v7) = closure #1 in variable initialization expression of PrivacyOnboardingView.platter();
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle_];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];

  if (!v11)
  {
    __break(1u);
  }

  v12 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_titleFont;
  v13 = [v8 fontWithDescriptor:v11 size:0.0];

  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_bodyFont;
  *(v0 + v14) = [v8 preferredFontForTextStyle_];
  v15 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentLayoutGuide;
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v16 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentInsetConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_contentCenterConstraints) = v16;
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_platterInsetConstraints) = v16;
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconViewConstraints) = v16;
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textViewConstraints) = v16;
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_buttonConstraints) = v16;
  *(v0 + OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeConstraints) = v16;
  v17 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_largeIconView;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v18 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentAnchorView;
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v19 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_attachmentIconView;
  *(v0 + v19) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v20 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_textView;
  *(v0 + v20) = closure #1 in variable initialization expression of PrivacyOnboardingView.textView();
  v21 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_okButton;
  *(v0 + v21) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v22 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badge;
  *(v0 + v22) = [objc_allocWithZone(type metadata accessor for PrivacyBadgeView()) initWithFrame_];
  v23 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeIconView;
  v24 = CGRectMake_0();
  *(v0 + v23) = [objc_allocWithZone(type metadata accessor for PrivacyBadgeIconView()) initWithFrame_];
  v28 = OBJC_IVAR____TtC9MomentsUI21PrivacyOnboardingView_badgeLabel;
  *(v0 + v28) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}