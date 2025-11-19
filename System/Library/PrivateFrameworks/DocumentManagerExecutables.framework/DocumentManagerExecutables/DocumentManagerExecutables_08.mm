uint64_t specialized DOCCopyOperation.map(sourceNode:toURL:)(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v24 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *a3) + 0xD8))(v26, v8);
  if (*v13)
  {
    type metadata accessor for DOCHashableNode();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v10, a2, v15);
    (*(v16 + 56))(v10, 0, 1, v15);
    v17 = a1;
    specialized Dictionary.subscript.setter(v10, v14);
  }

  v12(v26, 0);
  v19 = (*((*v11 & *a3) + 0xF0))(v26);
  if (*v18)
  {
    v20 = v18;
    v21 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v20;
    *v20 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a2, isUniquelyReferenced_nonNull_native, &v25);
    *v20 = v25;
  }

  return v19(v26, 0);
}

uint64_t specialized DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x277D85DE8];
  v165 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v165, v4);
  v163 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v160 = v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v149 = *(v153 - 1);
  MEMORY[0x28223BE20](v153, v9);
  v159 = v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for URL();
  v11 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v12);
  v154 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v166 = v147 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v169 = v147 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v151 = v147 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v23, v24);
  v170 = v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v147 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = v147 - v32;
  v179 = type metadata accessor for DOCDSCopyEngineXPCConnection();
  v180 = &protocol witness table for DOCDSCopyEngineXPCConnection;
  v178 = a1;
  v34 = one-time initialization token for UI;

  if (v34 != -1)
  {
LABEL_61:
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_249B9A480;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v35 + 32) = 0xD000000000000018;
  *(v35 + 40) = 0x8000000249BC93D0;
  os_log(_:dso:log:type:_:)();

  v36 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem);
  v168 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs);
  v37 = swift_allocObject();
  v161 = v37;
  *(v37 + 16) = 0;
  v148 = (v37 + 16);
  v38 = [v36 fileURL];
  v158 = a2;
  if (v38)
  {
    v39 = v38;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = *(v11 + 56);
    v41 = v33;
    v42 = 0;
  }

  else
  {
    v40 = *(v11 + 56);
    v41 = v33;
    v42 = 1;
  }

  v43 = v167;
  v40(v41, v42, 1, v167);
  v155 = swift_allocBox();
  v45 = v44;
  outlined init with take of (key: URL, value: FPItem)(v33, v44, &_s10Foundation3URLVSgMd);
  outlined init with copy of URL?(v45, v29);
  v164 = v11;
  v46 = *(v11 + 48);
  v47 = v46(v29, 1, v43);
  outlined destroy of CharacterSet?(v29, &_s10Foundation3URLVSgMd);
  if (v47 == 1)
  {
    v48 = dispatch_semaphore_create(0);
    v49 = [objc_opt_self() defaultManager];
    v50 = swift_allocObject();
    v50[2] = v48;
    v50[3] = v36;
    v51 = v155;
    v50[4] = v161;
    v50[5] = v51;
    v176 = partial apply for closure #1 in DOCCopyOperation.copyWithDSCopyEngine(_:);
    v177 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v173 = 1107296256;
    v174 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v175 = &block_descriptor_3;
    v52 = _Block_copy(&aBlock);
    v53 = v48;
    v54 = v36;

    [v49 fetchURLForItem:v54 completionHandler:v52];
    _Block_release(v52);

    OS_dispatch_semaphore.wait()();
  }

  swift_beginAccess();
  v55 = v170;
  outlined init with copy of URL?(v45, v170);
  v56 = v167;
  if (v46(v55, 1, v167) == 1)
  {
    outlined destroy of CharacterSet?(v55, &_s10Foundation3URLVSgMd);
    v57 = v148;
    swift_beginAccess();
    v58 = *v57;
    v59 = v158;
    if (*v57)
    {
      v60 = v58;
      v61 = _convertErrorToNSError(_:)();
    }

    else
    {
      v61 = 0;
    }

    [v59 completedWithResult:0 error:v61];

    return __swift_destroy_boxed_opaque_existential_0(&v178);
  }

  v62 = v164;
  v64 = v164 + 32;
  v63 = *(v164 + 32);
  v65 = v151;
  v63(v151, v55, v56);
  v66 = MEMORY[0x277D84F90];
  v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15DOCHashableNodeC_10Foundation3URLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v68 = v158;
  v69 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v158) + 0xD0))(v67);
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(v66);
  (*((*v69 & *v68) + 0xE8))(v70);
  v71 = swift_allocObject();
  v152 = v71;
  v72 = v168;
  *(v71 + 16) = v168;
  v73 = v71 + 16;
  v74 = v72[2];

  if (v74)
  {
LABEL_46:
    swift_beginAccess();
    if (*(*v73 + 16))
    {
      v124 = *__swift_project_boxed_opaque_existential_1(&v178, v179);

      if ([v68 shouldBounceOnCollision])
      {
        v125 = [objc_allocWithZone(MEMORY[0x277D04690]) init];
        v126 = [v125 setType_];
      }

      else
      {
        v126 = specialized DOCDSCopyEngineXPCConnection.newConflictStrategy_askUser()();
        v125 = v126;
      }

      v131 = (*((*MEMORY[0x277D85000] & *v68) + 0x160))(v126);
      v132 = *(v124 + 16);
      isa = Array._bridgeToObjectiveC()().super.isa;

      URL._bridgeToObjectiveC()(v134);
      v136 = v135;
      v137 = swift_allocObject();
      *(v137 + 16) = v68;
      v176 = partial apply for closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:);
      v177 = v137;
      aBlock = MEMORY[0x277D85DD0];
      v173 = 1107296256;
      v174 = thunk for @escaping @callee_guaranteed (@guaranteed [URL : URL]) -> ();
      v175 = &block_descriptor_19;
      v138 = _Block_copy(&aBlock);
      v139 = v125;
      v140 = v68;

      aBlock = 0;
      v141 = [v132 copyItemsAtURLs:isa toURL:v136 options:v131 & 1 conflictStrategy:v139 receiveTargets:v138 error:&aBlock];
      _Block_release(v138);

      if (v141)
      {
        v142 = aBlock;
      }

      else
      {
        v143 = aBlock;
        v144 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v145 = _convertErrorToNSError(_:)();
        [v140 completedWithResult:0 error:v145];
      }

      (*(v164 + 8))(v151, v56);
    }

    else
    {
      v127 = v148;
      swift_beginAccess();
      v128 = *v127;
      if (*v127)
      {
        v129 = v128;
        v130 = _convertErrorToNSError(_:)();
      }

      else
      {
        v130 = 0;
      }

      [v68 completedWithResult:0 error:v130];

      (*(v62 + 8))(v65, v56);
    }

    return __swift_destroy_boxed_opaque_existential_0(&v178);
  }

  v162 = v73;
  v157 = v63;
  v150 = dispatch_group_create();
  v170 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (v149)[13](v159, *MEMORY[0x277D85268], v153);
  static DispatchQoS.unspecified.getter();
  aBlock = v66;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v149 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v163 = *(v68 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v156 = v64;
  if (v163 >> 62)
  {
LABEL_63:
    v75 = __CocoaSet.count.getter();
  }

  else
  {
    v75 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v162;
  if (!v75)
  {
LABEL_45:
    v123 = v150;
    OS_dispatch_group.wait()();

    v62 = v164;
    v65 = v151;
    goto LABEL_46;
  }

  if (v75 < 1)
  {
    __break(1u);
  }

  v160 = (v163 & 0xC000000000000001);
  swift_beginAccess();
  v11 = 0;
  v165 = (v164 + 16);
  v153 = (v164 + 8);
  v147[1] = &v174;
  v159 = v75;
  while (1)
  {
    v87 = v68;
    v88 = v160 ? MEMORY[0x24C1FC540](v11, v163) : *(v163 + 8 * v11 + 32);
    v89 = v88;
    v168 = MEMORY[0x24C1FDA70]();
    v90 = [v89 fileURL];
    v170 = v89;
    if (v90)
    {
      break;
    }

    v76 = v150;
    dispatch_group_enter(v150);
    v77 = [objc_opt_self() defaultManager];
    v78 = swift_allocObject();
    v78[2] = v76;
    v78[3] = v89;
    v79 = v149;
    v78[4] = v161;
    v78[5] = v79;
    v78[6] = v152;
    v78[7] = v87;
    v176 = partial apply for closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:);
    v177 = v78;
    aBlock = MEMORY[0x277D85DD0];
    v173 = 1107296256;
    v174 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v175 = &block_descriptor_25;
    v80 = _Block_copy(&aBlock);
    v81 = v170;

    v82 = v87;
    v83 = v81;
    v84 = v76;
    v56 = v167;
    v85 = v79;
    v68 = v87;
    v73 = v162;

    [v77 fetchURLForItem:v83 completionHandler:v80];
    _Block_release(v80);

    v86 = v159;
LABEL_17:
    ++v11;
    objc_autoreleasePoolPop(v168);

    if (v86 == v11)
    {
      goto LABEL_45;
    }
  }

  v91 = v169;
  v92 = v90;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v93 = *v165;
  (*v165)(v166, v91, v56);
  v94 = *v73;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v73 = v94;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
    *v73 = v94;
  }

  v97 = *(v94 + 2);
  v96 = *(v94 + 3);
  v98 = v157;
  if (v97 >= v96 >> 1)
  {
    v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96 > 1, v97 + 1, 1, v94);
    v98 = v157;
    v94 = v119;
  }

  *(v94 + 2) = v97 + 1;
  v99 = *(v164 + 72);
  v98(&v94[((*(v164 + 80) + 32) & ~*(v164 + 80)) + v99 * v97], v166, v56);
  *v73 = v94;
  v101 = (*((*MEMORY[0x277D85000] & *v68) + 0xD8))(&aBlock);
  if (*v100)
  {
    v102 = v100;
    type metadata accessor for DOCHashableNode();
    v103 = swift_allocObject();
    v104 = v170;
    *(v103 + 16) = v170;
    v105 = v154;
    v93(v154, v169, v56);
    v106 = v104;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v171 = *v102;
    *v102 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, v103, v107);

    *v102 = v171;
  }

  v101(&aBlock, 0);
  v33 = (*((*MEMORY[0x277D85000] & *v68) + 0xF0))(&aBlock);
  if (!*v108)
  {
    (v33)(&aBlock, 0);
LABEL_42:
    v86 = v159;
    v81 = v170;
    (*v153)(v169, v56);
    v73 = v162;
    goto LABEL_17;
  }

  v109 = v108;
  v110 = v170;
  a2 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v109;
  v29 = v171;
  *v109 = 0x8000000000000000;
  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v169);
  v112 = *(v29 + 2);
  v113 = (v111 & 1) == 0;
  v114 = v112 + v113;
  if (__OFADD__(v112, v113))
  {
    __break(1u);
    goto LABEL_61;
  }

  v115 = v111;
  if (*(v29 + 3) >= v114)
  {
    if (a2)
    {
      v118 = v171;
      if (v111)
      {
        goto LABEL_37;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v118 = v171;
      if (v115)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    *&v118[8 * (v68 >> 6) + 64] |= 1 << v68;
    v56 = v167;
    v93((*(v118 + 6) + v68 * v99), v169, v167);
    *(*(v118 + 7) + 8 * v68) = v110;
    v120 = *(v118 + 2);
    v121 = __OFADD__(v120, 1);
    v122 = v120 + 1;
    if (v121)
    {
      __break(1u);
      goto LABEL_63;
    }

    *(v118 + 2) = v122;
    goto LABEL_41;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, a2);
  v116 = specialized __RawDictionaryStorage.find<A>(_:)(v169);
  if ((v115 & 1) == (v117 & 1))
  {
    v68 = v116;
    v118 = v171;
    if ((v115 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_37:
    *(*(v118 + 7) + 8 * v68) = v110;
    swift_unknownObjectRelease();
    v56 = v167;
LABEL_41:
    *v109 = v118;
    (v33)(&aBlock, 0);
    v68 = v158;
    goto LABEL_42;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() providerDomainForItem:a1 cachePolicy:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized DOCCopyOperation.itemSupportsDSCopy(_:)(void *a1)
{
  v2 = [a1 providerID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_15;
  }

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v9)
  {
    goto LABEL_14;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_15;
  }

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v12)
  {
LABEL_14:

LABEL_15:

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    return 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
  v15 = a1;
  v16 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v15, 3);

  LOBYTE(v15) = FPProviderDomain.shouldUseDSCopyEngine.getter();
  return v15 & 1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v5 = a3 & 0x7FFFFFFFFFFFFFFFLL;

    a1 = v5;
  }

  return a1;
}

id specialized DOCDSCopyEngineXPCConnection.newConflictStrategy_askUser()()
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = result;
  v2._countAndFlagsBits = 0xD000000000000015;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v32._countAndFlagsBits = 0xD000000000000031;
  v32._object = 0x8000000249BC95B0;
  v3._object = 0x8000000249BC9570;
  v2._object = 0x8000000249BC9590;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v1, v2, v32);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v33._countAndFlagsBits = 0xD000000000000033;
  v33._object = 0x8000000249BC9690;
  v7._object = 0x8000000249BC95F0;
  v8._object = 0x8000000249BC9610;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0x1000000000000070;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v9, v6, v8, v33);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  v12._countAndFlagsBits = 0xD000000000000028;
  v34._object = 0x8000000249BC9700;
  v13._countAndFlagsBits = 0x746F42207065654BLL;
  v12._object = 0x8000000249BC96D0;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v13._object = 0xE900000000000068;
  v34._countAndFlagsBits = 0xD000000000000038;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v14, v11, v13, v34);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  v17._countAndFlagsBits = 0xD000000000000023;
  v35._object = 0x8000000249BC9700;
  v17._object = 0x8000000249BC9740;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 1886352467;
  v19._object = 0xE400000000000000;
  v35._countAndFlagsBits = 0xD000000000000038;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v35);

  result = _DocumentManagerBundle();
  if (result)
  {
    v21 = result;
    v22._countAndFlagsBits = 0xD000000000000026;
    v36._object = 0x8000000249BC9700;
    v23._countAndFlagsBits = 0x6563616C706552;
    v22._object = 0x8000000249BC9770;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v23._object = 0xE700000000000000;
    v36._countAndFlagsBits = 0xD000000000000038;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v24, v21, v23, v36);

    v26 = [objc_allocWithZone(MEMORY[0x277D04690]) init];
    [v26 setType_];
    v27 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);

    [v26 setLocalizedAlertTitle_];

    v28 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    [v26 setLocalizedAlertMessageFormat_];

    v29 = MEMORY[0x24C1FAD20](v15._countAndFlagsBits, v15._object);

    [v26 setLocalizedTitle:v29 forResolution:2];

    v30 = MEMORY[0x24C1FAD20](v20._countAndFlagsBits, v20._object);

    [v26 setLocalizedTitle:v30 forResolution:0];

    v31 = MEMORY[0x24C1FAD20](v25._countAndFlagsBits, v25._object);

    [v26 setLocalizedTitle:v31 forResolution:1];

    return v26;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NSURL and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)(v8, v0 + v2, v5, v6, v7);
}

uint64_t specialized DOCCopyOperation.associateThumbnails(on:)(uint64_t a1)
{
  v97[1] = *MEMORY[0x277D85DE8];
  v96 = type metadata accessor for URL();
  v2 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v77 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v77 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v94 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v91 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v89 = &v77 - v21;
  v22 = *(a1 + 64);
  v90 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v78 = (v23 + 63) >> 6;
  v95 = (v2 + 32);
  v80 = 0x8000000249BC9550;
  v81 = v2 + 16;
  v83 = v2;
  v84 = a1;
  v88 = (v2 + 8);

  v26 = 0;
  v87 = 0;
  v79 = xmmword_249BA08D0;
  v92 = v9;
  v93 = v5;
  v27 = v90;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_6:
  v31 = v96;
  v32 = v26;
LABEL_15:
  v36 = __clz(__rbit64(v25));
  v25 &= v25 - 1;
  v38 = v83;
  v37 = v84;
  v39 = *(v83 + 72) * (v36 | (v32 << 6));
  v40 = *(v83 + 16);
  v40(v94, *(v84 + 48) + v39, v31);
  v41 = v82;
  v40(v82, *(v37 + 56) + v39, v31);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetMd);
  v43 = *(v42 + 48);
  v44 = *(v38 + 32);
  v45 = v91;
  v44(v91, v94, v31);
  v46 = &v45[v43];
  v35 = v45;
  v44(v46, v41, v31);
  (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
  v9 = v92;
  v5 = v93;
  while (1)
  {
    v47 = v35;
    v48 = v89;
    outlined init with take of (key: URL, value: FPItem)(v47, v89, &_s10Foundation3URLV3key_AC5valuetSgMd);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetMd);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
    }

    v50 = *(v49 + 48);
    v51 = v96;
    v52 = *v95;
    (*v95)(v9, v48 + v50, v96);
    v52(v5, v48, v51);
    v53 = objc_opt_self();
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    v97[0] = 0;
    LODWORD(v53) = [v53 associateThumbnailsForDocumentAtURL:v56 withDocumentAtURL:v58 error:v97];

    if (v53)
    {
      v28 = *v88;
      v29 = v97[0];
      v30 = v96;
      v28(v5, v96);
      v28(v9, v30);
      v27 = v90;
      if (v25)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v60 = v97[0];
      v61 = _convertNSErrorToError(_:)();

      v87 = v61;
      swift_willThrow();
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v86 = static DOCLog.UI;
      v85 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v62 = swift_allocObject();
      *(v62 + 16) = v79;
      *(v62 + 56) = MEMORY[0x277D837D0];
      *(v62 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v62 + 32) = 0xD000000000000018;
      v63 = v80;
      *(v62 + 40) = v80;
      v9 = v92;
      URL._bridgeToObjectiveC()(v63);
      v65 = v64;
      v66 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
      *(v62 + 96) = v66;
      v67 = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
      *(v62 + 104) = v67;
      *(v62 + 72) = v65;
      v68 = v93;
      URL._bridgeToObjectiveC()(v69);
      *(v62 + 136) = v66;
      *(v62 + 144) = v67;
      v5 = v68;
      *(v62 + 112) = v70;
      v71 = v87;
      v72 = _convertErrorToNSError(_:)();
      *(v62 + 176) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      *(v62 + 184) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
      *(v62 + 152) = v72;
      os_log(_:dso:log:type:_:)();

      v73 = *v88;
      v74 = v96;
      (*v88)(v5, v96);
      v73(v9, v74);
      v87 = 0;
      v27 = v90;
      if (v25)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    if (v78 <= v26 + 1)
    {
      v33 = v26 + 1;
    }

    else
    {
      v33 = v78;
    }

    v34 = v33 - 1;
    v35 = v91;
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      if (v32 >= v78)
      {
        break;
      }

      v25 = *(v27 + 8 * v32);
      ++v26;
      if (v25)
      {
        v31 = v96;
        v26 = v32;
        goto LABEL_15;
      }
    }

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetMd);
    (*(*(v75 - 8) + 56))(v35, 1, 1, v75);
    v25 = 0;
    v26 = v34;
  }
}

void partial apply for closure #2 in DOCCopyOperation.doc_transferResults(from:)(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  closure #2 in DOCCopyOperation.doc_transferResults(from:)(a1, a2, v6, v7, v8, v9);
}

void partial apply for closure #1 in DOCCopyOperation.doc_transferResults(from:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);

  closure #1 in DOCCopyOperation.doc_transferResults(from:)(v0 + v3, v6, v7, v0 + ((v2 + v5 + 8) & ~v2));
}

void partial apply for closure #1 in closure #2 in DOCCopyOperation.doc_transferResults(from:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #2 in DOCCopyOperation.doc_transferResults(from:)(v4, v0 + v2, v5, v6);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void DOCGridLayout.Environment.init(layoutContainerSize:layoutContainerSafeInsets:itemCollectionContext:traitCollection:)(id a1@<X1>, char *a2@<X0>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v17 = *a2;
  v18 = [a1 userInterfaceIdiom];
  [a1 displayScale];
  v20 = v19;
  v21 = a1;
  DOCGridSpecTextSize.init(_:)(v21);
  v22 = [v21 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v23 = static UIContentSizeCategory.> infix(_:_:)();

    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {

    v24 = 0;
  }

  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  v25 = [objc_opt_self() defaultMetrics];
  [v25 scaledValueForValue:v21 compatibleWithTraitCollection:1.0];
  v27 = v26;

  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = a8;
  *(a3 + 40) = a9;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = v20;
  *(a3 + 72) = v28;
  *(a3 + 73) = v24;
  *(a3 + 80) = v28;
  *(a3 + 88) = v29;
  *(a3 + 96) = v30;
  *(a3 + 104) = v27;
}

void DOCGridLayout.Environment.layoutContainerSafeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

double DOCGridLayout.Environment.withUpdatedBrowserLayoutTraits(_:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *(v4 + 104);
  v6 = *(v4 + 48);
  *(a4 + 32) = *(v4 + 32);
  *(a4 + 48) = v6;
  *(a4 + 64) = *(v4 + 64);
  v7 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v7;
  *(a4 + 80) = a1;
  *(a4 + 88) = a2;
  *(a4 + 89) = *(v4 + 89);
  *(a4 + 92) = *(v4 + 92);
  *(a4 + 96) = a3;
  *(a4 + 104) = result;
  return result;
}

void DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultMetrics];
  v12 = specialized thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
  v11 = &block_descriptor_4;
  v2 = _Block_copy(&v8);
  v3 = objc_opt_self();
  v4 = [v3 traitCollectionWithTraits_];
  _Block_release(v2);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    [v1 scaledValueForValue:v4 compatibleWithTraitCollection:1.0];

    v5 = [v0 defaultMetrics];
    v12 = specialized thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
    v13 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = 1107296256;
    v10 = thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
    v11 = &block_descriptor_3;
    v6 = _Block_copy(&v8);
    v7 = [v3 traitCollectionWithTraits_];
    _Block_release(v6);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      [v5 scaledValueForValue:v7 compatibleWithTraitCollection:1.0];

      return;
    }
  }

  __break(1u);
}

uint64_t UIUserInterfaceIdiom.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      return 0x6669636570736E75;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 6578544;
      }

      goto LABEL_14;
    }

    return 0x656E6F6870;
  }

  else if (a1 > 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0x6E6F69736976;
      }

      goto LABEL_14;
    }

    return 6513005;
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x79616C70726163;
      }

LABEL_14:
      _StringGuts.grow(_:)(24);

      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x24C1FAEA0](v2);

      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 30324;
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout.Environment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 112))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 73);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCGridLayout.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 73) = a2 + 2;
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  for (i = (result + 40); ; i += 2)
  {
    v8 = *i;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 88);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    if (v12 >> 60 == 15)
    {
      goto LABEL_5;
    }

    v40 = v12;
    v41 = v11;
    v13 = (*(v8 + 16))(ObjectType, v8);
    v14 = 0x73726576726573;
    if (v13 != 4)
    {
      v14 = 1936154996;
    }

    v15 = 0xE700000000000000;
    if (v13 != 4)
    {
      v15 = 0xE400000000000000;
    }

    if (v13 == 3)
    {
      v14 = 0x6E6F697461636F6CLL;
    }

    v16 = 0xE900000000000073;
    if (v13 == 3)
    {
      v15 = 0xE900000000000073;
    }

    v17 = 0x796C746E65636572;
    if (v13 == 1)
    {
      v16 = 0xEC00000064657355;
    }

    else
    {
      v17 = 0x657469726F766166;
    }

    if (!v13)
    {
      v17 = 7368564;
      v16 = 0xE300000000000000;
    }

    v18 = v13 <= 2 ? v17 : v14;
    v19 = v13 <= 2 ? v16 : v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    v42 = *v3;
    *v3 = 0x8000000000000000;
    v22 = v18;
    v23 = v18;
    v24 = v19;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v19);
    v27 = v21[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v21[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v42;
        if ((v25 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v33 = v42;
        if ((v30 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_40;
      }

      v26 = v31;
      v33 = v42;
      if ((v30 & 1) == 0)
      {
LABEL_33:
        v33[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v33[6] + 16 * v26);
        *v34 = v22;
        v34[1] = v24;
        v35 = (v33[7] + 16 * v26);
        *v35 = v41;
        v35[1] = v40;
        v36 = v33[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_39;
        }

        v33[2] = v38;
        goto LABEL_4;
      }
    }

    v5 = (v33[7] + 16 * v26);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v41;
    v5[1] = v40;
    outlined consume of Data._Representation(v6, v7);

LABEL_4:
    v3 = a2;
    *a2 = v33;
LABEL_5:
    result = swift_unknownObjectRelease();
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t DOCSidebarData.__allocating_init(configuration:sourceVisibilityController:loadSavedState:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  DOCSidebarData.init(configuration:sourceVisibilityController:loadSavedState:)(a1, a2, a3);
  return v6;
}

uint64_t DOCSidebarData.init(configuration:sourceVisibilityController:loadSavedState:)(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!static NSUserDefaults.docUserDefaults || (v4 = static NSUserDefaults.docUserDefaults, v5 = MEMORY[0x24C1FAD20](0x6265646953434F44, 0xEE00617461447261), v6 = [v4 valueForKey_], v4, v5, !v6))
  {
    v97 = 0u;
    v98 = 0u;
    goto LABEL_10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!*(&v98 + 1))
  {
LABEL_10:
    outlined destroy of Any?(&v97);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = v96;
LABEL_12:
  v95[2] = &outlined read-only object #0 of DOCSidebarData.init(configuration:sourceVisibilityController:loadSavedState:);
  type metadata accessor for DOCMutableSidebarSection();
  swift_allocObject();

  v8 = DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(0, 0, 0xE000000000000000, a2);
  (*(*v8 + 264))(0);
  v94 = v8;
  (*(*v8 + 288))(0);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(7368564, 0xE300000000000000);
      if (v10)
      {
        v11 = (*(v7 + 56) + 16 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = *(*v8 + 376);
        outlined copy of Data._Representation(*v11, v13);
        v14(v12, v13);
        outlined consume of Data._Representation(v12, v13);
      }
    }
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_51;
  }

  v16 = result;
  v99._object = 0x8000000249BC9820;
  v99._countAndFlagsBits = 0xD00000000000002ELL;
  v17._countAndFlagsBits = 0x657469726F766146;
  v17._object = 0xE900000000000073;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v99);

  swift_allocObject();

  v21 = DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(2, v20._countAndFlagsBits, v20._object, a2);
  (*(*v21 + 216))(1);
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v22 = result;
  v100._object = 0x8000000249BC9850;
  v23._countAndFlagsBits = 0x65766F6D6552;
  v100._countAndFlagsBits = 0xD000000000000049;
  v23._object = 0xE600000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v100);

  (*(*v21 + 240))(v26._countAndFlagsBits, v26._object);
  (*(*v21 + 264))(1);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x657469726F766166, 0xE900000000000073);
      if (v28)
      {
        v29 = (*(v7 + 56) + 16 * v27);
        v30 = *v29;
        v31 = v29[1];
        v32 = *(*v21 + 376);
        outlined copy of Data._Representation(*v29, v31);
        v32(v30, v31);
        outlined consume of Data._Representation(v30, v31);
      }
    }
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_53;
  }

  v33 = result;
  v101._object = 0x8000000249BC98A0;
  v101._countAndFlagsBits = 0xD000000000000037;
  v34._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v34._object = 0xE900000000000073;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v101);

  swift_allocObject();

  v38 = DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(3, v37._countAndFlagsBits, v37._object, a2);
  (*(*v38 + 264))(1);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F697461636F6CLL, 0xE900000000000073);
      if (v40)
      {
        v41 = (*(v7 + 56) + 16 * v39);
        v42 = *v41;
        v43 = v41[1];
        v44 = *(*v38 + 376);
        outlined copy of Data._Representation(*v41, v43);
        v44(v42, v43);
        outlined consume of Data._Representation(v42, v43);
      }
    }
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_54;
  }

  v45 = result;
  v102._object = 0x8000000249BC98E0;
  v46._countAndFlagsBits = 0x646572616853;
  v102._countAndFlagsBits = 0xD000000000000033;
  v46._object = 0xE600000000000000;
  v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v47.value._object = 0xEB00000000656C62;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v102);

  swift_allocObject();

  v50 = DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(4, v49._countAndFlagsBits, v49._object, a2);
  (*(*v50 + 264))(1);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(0x73726576726573, 0xE700000000000000);
      if (v52)
      {
        v53 = (*(v7 + 56) + 16 * v51);
        v54 = *v53;
        v55 = v53[1];
        v56 = *(*v50 + 376);
        outlined copy of Data._Representation(*v53, v55);
        v56(v54, v55);
        outlined consume of Data._Representation(v54, v55);
      }
    }
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_55;
  }

  v57 = result;
  v103._object = 0x8000000249BC9920;
  v58._countAndFlagsBits = 0x69535B2073676154;
  v58._object = 0xEE005D7261626564;
  v103._countAndFlagsBits = 0xD000000000000041;
  v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v59.value._object = 0xEB00000000656C62;
  v60._countAndFlagsBits = 1936154964;
  v60._object = 0xE400000000000000;
  v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v103);

  swift_allocObject();

  v91 = a2;
  v62 = DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(5, v61._countAndFlagsBits, v61._object, a2);
  (*(*v62 + 216))(1);
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v63 = result;
  v104._object = 0x8000000249BC9970;
  v64._countAndFlagsBits = 0x6574656C6544;
  v64._object = 0xE600000000000000;
  v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v65.value._object = 0xEB00000000656C62;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v104._countAndFlagsBits = 0xD00000000000001BLL;
  v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v104);

  (*(*v62 + 240))(v67._countAndFlagsBits, v67._object);
  (*(*v62 + 264))(1);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(1936154996, 0xE400000000000000);
      if (v69)
      {
        v70 = (*(v7 + 56) + 16 * v68);
        v71 = *v70;
        v72 = v70[1];
        v73 = *(*v62 + 376);
        outlined copy of Data._Representation(*v70, v72);
        v73(v71, v72);
        outlined consume of Data._Representation(v71, v72);
      }
    }
  }

  v74 = [objc_opt_self() defaultPermission];
  v75 = [v74 canHostAppPerformAction:0 bundleIdentifier:*MEMORY[0x277D06100]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0D00;
  *(inited + 32) = v94;
  *(inited + 40) = v21;
  *(inited + 48) = v38;
  *(inited + 56) = v50;
  *(inited + 64) = v62;
  *&v97 = inited;

  v77 = a1;
  if (![a1 isPickerUI])
  {
    goto LABEL_46;
  }

  v90 = v75;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v78 = result;
  v79._countAndFlagsBits = 0x796C746E65636552;
  v105._object = 0x8000000249BC9990;
  v79._object = 0xED00006465735520;
  v105._countAndFlagsBits = 0xD000000000000032;
  v80.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v80.value._object = 0xEB00000000656C62;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, v105);

  swift_allocObject();

  v83 = DOCMutableSidebarSection.init(kind:title:sourceVisibilityController:)(1, v82._countAndFlagsBits, v82._object, v91);
  result = (*(*v83 + 216))(1);
  if (v7)
  {
    if (*(v7 + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(0x796C746E65636572, 0xEC00000064657355);
      if (v84)
      {
        v85 = (*(v7 + 56) + 16 * result);
        v87 = *v85;
        v86 = v85[1];
        v93 = *(*v83 + 376);
        outlined copy of Data._Representation(*v85, v86);
        v93(v87, v86);
        result = outlined consume of Data._Representation(v87, v86);
      }
    }
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  specialized Array.replaceSubrange<A>(_:with:)(1, 1, v83);

  inited = v97;
  v77 = a1;
  v75 = v90;
LABEL_46:
  v95[3] = specialized _arrayForceCast<A, B>(_:)(inited);
  v88 = [v77 supportsRemovableFileProviders];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMd);
  if ((v88 & v75) == 1)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_249BA08D0;
    *(v89 + 32) = v21;
    *(v89 + 40) = &protocol witness table for DOCMutableSidebarSection;
    *(v89 + 48) = v38;
    *(v89 + 56) = &protocol witness table for DOCMutableSidebarSection;
    *(v89 + 64) = v50;
    *(v89 + 72) = &protocol witness table for DOCMutableSidebarSection;
    *(v89 + 80) = v62;
    *(v89 + 88) = &protocol witness table for DOCMutableSidebarSection;
  }

  else
  {
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_249BA08C0;
    *(v89 + 32) = v21;
    *(v89 + 40) = &protocol witness table for DOCMutableSidebarSection;
    *(v89 + 48) = v38;
    *(v89 + 56) = &protocol witness table for DOCMutableSidebarSection;
    *(v89 + 64) = v62;
    *(v89 + 72) = &protocol witness table for DOCMutableSidebarSection;
  }

  v95[4] = v89;

  return v95;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DOCFileOperation();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      outlined init with copy of DOCFileOperation(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &protocol witness table for DOCFileOperation;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      outlined init with copy of DOCFileOperation(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      outlined init with take of DOCGoToFolderCandidate(&v15, v8 + 40 * v12 + 32);
      outlined destroy of DOCFileOperation(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v5 = *v4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10UIDragItemC_So7DOCNode_ptMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10UIDragItemC11itemContext_So7DOCNode_p4nodetMd);
      swift_dynamicCast();
      v6 = v10;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v10;
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 16 * v8 + 32) = v6;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      outlined init with take of Any(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      swift_unknownObjectRetain();
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v4 += 16;
      v11 = &type metadata for DOCNodeGoToCandidate;
      v12 = &protocol witness table for DOCNodeGoToCandidate;
      *&v10 = v5;
      BYTE8(v10) = v6;
      *(v2 + 16) = v8 + 1;
      outlined init with take of DOCGoToFolderCandidate(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v16 = v2;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);
      v9 = v5;
      if (v7 >= v8 >> 1)
      {
        v10 = v8 > 1;
        v11 = v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v7 + 1, 1);
        v9 = v11;
        v2 = v16;
      }

      v4 += 16;
      v14 = &type metadata for DOCFileProviderSourceGoToCandidate;
      v15 = &protocol witness table for DOCFileProviderSourceGoToCandidate;
      *&v13 = v9;
      BYTE8(v13) = v6;
      *(v2 + 16) = v7 + 1;
      outlined init with take of DOCGoToFolderCandidate(&v13, v2 + 40 * v7 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      outlined init with copy of Any(v4, &v5);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      outlined init with copy of Any(v4, &v5);
      type metadata accessor for DOCFileSystemCollection();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of DOCDiffableIdentifier<DOCProgressProvidingOperation>(v4, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
      swift_dynamicCast();
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 80 * v6);
      v7[2] = v12[5];
      v8 = v12[6];
      v9 = v12[7];
      v10 = v12[9];
      v7[5] = v12[8];
      v7[6] = v10;
      v7[3] = v8;
      v7[4] = v9;
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v5 = *v4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSItemProviderC_So7DOCNode_ptMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSItemProviderC11itemContext_So7DOCNode_p4nodetMd);
      swift_dynamicCast();
      v6 = v10;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v10;
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 16 * v8 + 32) = v6;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &protocol witness table for DOCMutableSidebarSection;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v17 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v17 + 24);

        if (v12 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v16 = v17 + v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = &protocol witness table for DOCMutableSidebarSection;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C1FC540](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_pMd);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_pMd);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C1FC540](i, a1);
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x24C1FC540]();
          type metadata accessor for DOCOperation();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCOperationCSgMd);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for DOCOperation();
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCOperationCSgMd);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x24C1FC540]();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19DOCConcreteLocationCSgMd);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19DOCConcreteLocationCSgMd);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t DOCSidebarData.section(for:)(uint64_t result)
{
  v2 = *(v1 + 24);
  v19 = *(v2 + 16);
  if (v19)
  {
    v3 = 0;
    v4 = (v2 + 40);
    v5 = result;
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v1 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v9 = v8(ObjectType, v6);
      if (v9 > 2)
      {
        break;
      }

      if (v9)
      {
        if (v9 != 1)
        {
          v10 = 0x657469726F766166;
LABEL_18:
          v11 = 0xE900000000000073;
          goto LABEL_19;
        }

        v10 = 0x796C746E65636572;
        v11 = 0xEC00000064657355;
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7368564;
      }

LABEL_19:
      ++v3;
      v12 = 0x73726576726573;
      if (v5 != 4)
      {
        v12 = 1936154996;
      }

      v13 = 0xE700000000000000;
      if (v5 != 4)
      {
        v13 = 0xE400000000000000;
      }

      if (v5 == 3)
      {
        v12 = 0x6E6F697461636F6CLL;
        v13 = 0xE900000000000073;
      }

      v14 = 0x796C746E65636572;
      if (v5 != 1)
      {
        v14 = 0x657469726F766166;
      }

      v15 = 0xEC00000064657355;
      if (v5 != 1)
      {
        v15 = 0xE900000000000073;
      }

      if (!v5)
      {
        v14 = 7368564;
        v15 = 0xE300000000000000;
      }

      if (v5 <= 2)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v5 <= 2)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v10 == v16 && v11 == v17)
      {
        goto LABEL_42;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return v1;
      }

      result = swift_unknownObjectRelease();
      v4 += 2;
      if (v19 == v3)
      {
        goto LABEL_41;
      }
    }

    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v10 = 0x73726576726573;
      }

      else
      {
        v10 = 1936154996;
      }

      if (v9 == 4)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      goto LABEL_19;
    }

    v10 = 0x6E6F697461636F6CLL;
    goto LABEL_18;
  }

LABEL_41:
  __break(1u);
LABEL_42:

  return v1;
}

uint64_t DOCSidebarData.enumerateAllOrderedSections(_:)(void (*a1)(uint64_t, uint64_t, void))
{
  v19 = *(v1 + 24);
  v2 = *(v19 + 16);
  result = swift_beginAccess();
  v16 = v2;
  if (v2)
  {
    v4 = 0;
    while (v4 < *(v19 + 16))
    {
      v6 = (v19 + 32 + 16 * v4);
      v20 = v4;
      v21 = v6[1];
      v7 = *(v18 + 32);
      v8 = *(v7 + 16);
      v22 = *v6;
      swift_unknownObjectRetain();

      if (v8)
      {
        v9 = 0;
        v10 = v8 - 1;
        v11 = (v7 + 40);
        while (v9 < *(v7 + 16))
        {
          v12 = *v11;
          ObjectType = swift_getObjectType();
          v14 = *(v12 + 104);
          swift_unknownObjectRetain();
          v5 = v14(v22, v21, ObjectType, v12);
          result = swift_unknownObjectRelease();
          if ((v5 & 1) == 0)
          {
            v11 += 2;
            if (v10 != v9++)
            {
              continue;
            }
          }

          goto LABEL_4;
        }

        __break(1u);
        break;
      }

      v5 = 0;
LABEL_4:
      v4 = v20 + 1;

      a1(v22, v21, v5 & 1);
      result = swift_unknownObjectRelease();
      if (v20 + 1 == v16)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarData.savePersistentState()()
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized Sequence.forEach(_:)(*(v0 + 24), &v4);
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static NSUserDefaults.docUserDefaults)
  {
    v1 = static NSUserDefaults.docUserDefaults;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = MEMORY[0x24C1FAD20](0x6265646953434F44, 0xEE00617461447261);
    [v1 setValue:isa forKey:v3];
  }
}

uint64_t DOCSidebarData.__deallocating_deinit()
{
  return DOCSidebarData.__deallocating_deinit();
}

{

  return swift_deallocClassInstance();
}

uint64_t DOCMutableSidebarData.mutableSection(for:)()
{
  (*(*v0 + 136))();
  type metadata accessor for DOCMutableSidebarSection();

  return swift_dynamicCastClassUnconditional();
}

void DOCMutableSidebarData.topSectionIncludesRecents.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  DOCMutableSidebarData.updateTopSection()();
}

uint64_t (*DOCMutableSidebarData.topSectionIncludesRecents.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCMutableSidebarData.topSectionIncludesRecents.modify;
}

void DOCMutableSidebarData.topSectionIncludesSharedDocuments.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 41) = a1;
  DOCMutableSidebarData.updateTopSection()();
}

uint64_t (*DOCMutableSidebarData.topSectionIncludesSharedDocuments.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCMutableSidebarData.topSectionIncludesSharedDocuments.modify;
}

void DOCMutableSidebarData.topSectionIncludesRecents.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCMutableSidebarData.updateTopSection()();
  }
}

void DOCMutableSidebarData.updateTopSection()()
{
  v1 = v0;
  v2 = (*(*v0 + 184))(0);
  v3 = v0[2];
  v4 = *(*v0 + 192);

  v6 = v4(v5);
  if ((v6 & 1) == 0)
  {
    v7 = *(v3 + 2);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if (v9 >= *(v3 + 2))
        {
          __break(1u);
          goto LABEL_79;
        }

        v10 = *&v3[v8 + 32];
        v11 = *&v3[v8 + 48];
        *(v107 + 9) = *&v3[v8 + 57];
        v106 = v10;
        v107[0] = v11;
        outlined init with copy of DOCSidebarItem(&v106, &v104);
        if (DOCSidebarItem.hashComparableValue.getter() == 0xD000000000000011 && 0x8000000249BC9AF0 == v12)
        {
          break;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of DOCSidebarItem(&v106);
        if (v13)
        {
          goto LABEL_12;
        }

        ++v9;
        v8 += 48;
        if (v7 == v9)
        {
          v7 = *(v3 + 2);
          v9 = v7;
          goto LABEL_31;
        }
      }

      outlined destroy of DOCSidebarItem(&v106);
LABEL_12:
      v7 = v9 + 1;
      v14 = *(v3 + 2);
      if (v14 - 1 == v9)
      {
        goto LABEL_31;
      }

      v80 = v1;
      v15 = v8 + 120;
      while (v7 < v14)
      {
        v16 = *&v3[v15 - 40];
        v17 = *&v3[v15 - 24];
        *(v105 + 9) = *&v3[v15 - 15];
        v104 = v16;
        v105[0] = v17;
        outlined init with copy of DOCSidebarItem(&v104, &v102);
        if (DOCSidebarItem.hashComparableValue.getter() == 0xD000000000000011 && 0x8000000249BC9AF0 == v18)
        {

          outlined destroy of DOCSidebarItem(&v104);
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of DOCSidebarItem(&v104);
          if ((v19 & 1) == 0)
          {
            if (v7 != v9)
            {
              if (v9 < 0)
              {
                goto LABEL_88;
              }

              v20 = *(v3 + 2);
              if (v9 >= v20)
              {
                goto LABEL_89;
              }

              if (v7 >= v20)
              {
                goto LABEL_90;
              }

              v96 = 48 * v9;
              v21 = &v3[48 * v9 + 32];
              v22 = *&v3[v15 - 40];
              v23 = *&v3[v15 - 24];
              v91 = *v21;
              v93 = *&v3[v15 - 32];
              v25 = *&v3[v15 - 16];
              v24 = *&v3[v15 - 8];
              v26 = v3[v15];
              v89 = *(v21 + 8);
              v83 = *(v21 + 24);
              v85 = *(v21 + 16);
              v82 = *(v21 + 32);
              v87 = *(v21 + 40);
              outlined copy of DOCSidebarItem(*v21, v89, v85, v83, v82, v87);
              outlined copy of DOCSidebarItem(v22, v93, v23, v25, v24, v26);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              }

              v27 = &v3[v96];
              v28 = *&v3[v96 + 32];
              v29 = *&v3[v96 + 40];
              v30 = *&v3[v96 + 48];
              v31 = *&v3[v96 + 56];
              v32 = *&v3[v96 + 64];
              *(v27 + 4) = v22;
              *(v27 + 5) = v93;
              *(v27 + 6) = v23;
              *(v27 + 7) = v25;
              *(v27 + 8) = v24;
              v33 = v3[v96 + 72];
              v27[72] = v26;
              outlined consume of DOCSidebarItem(v28, v29, v30, v31, v32, v33);
              if (v7 >= *(v3 + 2))
              {
                goto LABEL_91;
              }

              v34 = &v3[v15];
              v35 = *&v3[v15 - 40];
              v36 = *&v3[v15 - 32];
              v37 = *&v3[v15 - 24];
              v38 = *&v3[v15 - 16];
              v39 = *&v3[v15 - 8];
              *(v34 - 5) = v91;
              *(v34 - 4) = v89;
              *(v34 - 3) = v85;
              *(v34 - 2) = v83;
              *(v34 - 1) = v82;
              v40 = v3[v15];
              *v34 = v87;
              outlined consume of DOCSidebarItem(v35, v36, v37, v38, v39, v40);
            }

            ++v9;
          }
        }

        ++v7;
        v14 = *(v3 + 2);
        v15 += 48;
        if (v7 == v14)
        {
          v1 = v80;
          if (v7 < v9)
          {
            goto LABEL_82;
          }

          if (v9 < 0)
          {
            goto LABEL_83;
          }

          goto LABEL_31;
        }
      }

      goto LABEL_80;
    }

    v9 = 0;
LABEL_31:
    if (__OFADD__(v7, v9 - v7))
    {
      goto LABEL_84;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v3;
    if (!isUniquelyReferenced_nonNull_native || v9 > *(v3 + 3) >> 1)
    {
      if (v7 <= v9)
      {
        v42 = v9;
      }

      else
      {
        v42 = v7;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v42, 1, v3);
      v99 = v3;
    }

    v6 = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, v7, 0);
  }

  if ((*(*v1 + 216))(v6))
  {
LABEL_77:
    (*(*v2 + 392))(v3);
    v79 = *(v3 + 2);
    swift_retain_n();

    specialized DOCMutableSidebarData.setMembershipStatus(of:to:)(v2, v79 == 0, v1);

    return;
  }

  v43 = *(v3 + 2);
  if (v43)
  {
    v44 = 0;
    v45 = 0;
    while (v45 < *(v3 + 2))
    {
      v46 = *&v3[v44 + 32];
      v47 = *&v3[v44 + 48];
      *(v103 + 9) = *&v3[v44 + 57];
      v102 = v46;
      v103[0] = v47;
      outlined init with copy of DOCSidebarItem(&v102, &v100);
      if (DOCSidebarItem.hashComparableValue.getter() == 0xD000000000000010 && 0x8000000249BC9B10 == v48)
      {

        outlined destroy of DOCSidebarItem(&v102);
LABEL_50:
        v43 = v45 + 1;
        v50 = *(v3 + 2);
        if (v50 - 1 == v45)
        {
          goto LABEL_69;
        }

        v51 = v44 + 120;
        v81 = v1;
        while (v43 < v50)
        {
          v52 = *&v3[v51 - 40];
          v53 = *&v3[v51 - 24];
          *&v101[9] = *&v3[v51 - 15];
          v100 = v52;
          *v101 = v53;
          outlined init with copy of DOCSidebarItem(&v100, v98);
          if (DOCSidebarItem.hashComparableValue.getter() == 0xD000000000000010 && 0x8000000249BC9B10 == v54)
          {

            outlined destroy of DOCSidebarItem(&v100);
          }

          else
          {
            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of DOCSidebarItem(&v100);
            if ((v55 & 1) == 0)
            {
              if (v43 != v45)
              {
                if (v45 < 0)
                {
                  goto LABEL_92;
                }

                v56 = *(v3 + 2);
                if (v45 >= v56)
                {
                  goto LABEL_93;
                }

                if (v43 >= v56)
                {
                  goto LABEL_94;
                }

                v97 = 48 * v45;
                v57 = &v3[48 * v45 + 32];
                v58 = *&v3[v51 - 40];
                v59 = *&v3[v51 - 24];
                v94 = *v57;
                v95 = *&v3[v51 - 32];
                v60 = *&v3[v51 - 16];
                v61 = *&v3[v51 - 8];
                v62 = v3[v51];
                v92 = *(v57 + 8);
                v86 = *(v57 + 24);
                v88 = *(v57 + 16);
                v84 = *(v57 + 32);
                v90 = *(v57 + 40);
                outlined copy of DOCSidebarItem(*v57, v92, v88, v86, v84, v90);
                outlined copy of DOCSidebarItem(v58, v95, v59, v60, v61, v62);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                }

                v63 = &v3[v97];
                v64 = *&v3[v97 + 32];
                v65 = *&v3[v97 + 40];
                v66 = *&v3[v97 + 48];
                v67 = *&v3[v97 + 56];
                v68 = *&v3[v97 + 64];
                *(v63 + 4) = v58;
                *(v63 + 5) = v95;
                *(v63 + 6) = v59;
                *(v63 + 7) = v60;
                *(v63 + 8) = v61;
                v69 = v3[v97 + 72];
                v63[72] = v62;
                outlined consume of DOCSidebarItem(v64, v65, v66, v67, v68, v69);
                if (v43 >= *(v3 + 2))
                {
                  goto LABEL_95;
                }

                v70 = &v3[v51];
                v71 = *&v3[v51 - 40];
                v72 = *&v3[v51 - 32];
                v73 = *&v3[v51 - 24];
                v74 = *&v3[v51 - 16];
                v75 = *&v3[v51 - 8];
                *(v70 - 5) = v94;
                *(v70 - 4) = v92;
                *(v70 - 3) = v88;
                *(v70 - 2) = v86;
                *(v70 - 1) = v84;
                v76 = v3[v51];
                *v70 = v90;
                outlined consume of DOCSidebarItem(v71, v72, v73, v74, v75, v76);
                v1 = v81;
              }

              ++v45;
            }
          }

          ++v43;
          v50 = *(v3 + 2);
          v51 += 48;
          if (v43 == v50)
          {
            if (v43 < v45)
            {
              goto LABEL_85;
            }

            if (v45 < 0)
            {
              goto LABEL_86;
            }

            goto LABEL_69;
          }
        }

        goto LABEL_81;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v102);
      if (v49)
      {
        goto LABEL_50;
      }

      ++v45;
      v44 += 48;
      if (v43 == v45)
      {
        v43 = *(v3 + 2);
        v45 = v43;
        goto LABEL_69;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v45 = 0;
LABEL_69:
  if (!__OFADD__(v43, v45 - v43))
  {
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v3;
    if (!v77 || v45 > *(v3 + 3) >> 1)
    {
      if (v43 <= v45)
      {
        v78 = v45;
      }

      else
      {
        v78 = v43;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77, v78, 1, v3);
      v99 = v3;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v45, v43, 0);
    goto LABEL_77;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t DOCMutableSidebarData.__allocating_init(configuration:sourceVisibilityController:loadSavedState:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  DOCSidebarData.init(configuration:sourceVisibilityController:loadSavedState:)(a1, a2, a3);
  return v6;
}

uint64_t DOCSidebarData.deinit()
{

  return v0;
}

void specialized DOCMutableSidebarData.setMembershipStatus(of:to:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v26 = a3;
  if ((specialized DOCSidebarData.membershipStatus(of:)(a1, a3) ^ a2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    v7 = (*(*v5 + 160))();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v10 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    if (v4)
    {
      os_log(_:dso:log:type:_:)();

      MEMORY[0x28223BE20](v11, v12);
      v25[2] = v5;
      v25[3] = &protocol witness table for DOCMutableSidebarSection;
      v3 = v26;
      swift_beginAccess();
      v5 = 0;
      v13 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #2 in DOCMutableSidebarData.setMembershipStatus(of:to:), v25);
      v14 = *(*(v3 + 32) + 16);
      if (v14 >= v13)
      {
        specialized Array.replaceSubrange<A>(_:with:)(v13, v14);
        swift_endAccess();
        return;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *(v3 + 32) = v5;
    }

    else
    {
      os_log(_:dso:log:type:_:)();

      v15 = *(v26 + 24);
      v16 = *(v15 + 16);
      if (!v16)
      {
        return;
      }

      v17 = 0;
      while (1)
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v27 = *(v15 + 32 + 16 * v17);
        ObjectType = swift_getObjectType();
        v3 = *(&v27 + 1);
        v19 = *(*(&v27 + 1) + 104);
        swift_unknownObjectRetain();
        if (v19(v5, &protocol witness table for DOCMutableSidebarSection, ObjectType, *(&v27 + 1)))
        {
          break;
        }

        swift_unknownObjectRelease();
        if (v16 == ++v17)
        {
          return;
        }
      }

      v3 = v26;
      swift_beginAccess();
      v5 = *(v26 + 32);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 32) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v21 = v27;
    v23 = v5[2];
    v22 = v5[3];
    if (v23 >= v22 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
      v21 = v27;
      v5 = v24;
    }

    v5[2] = v23 + 1;
    *&v5[2 * v23 + 4] = v21;
    *(v3 + 32) = v5;
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

uint64_t specialized DOCSidebarData.membershipStatus(of:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 32);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v4 - 1;
    v8 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 104);
      swift_unknownObjectRetain();
      v12 = v11(a1, &protocol witness table for DOCMutableSidebarSection, ObjectType, v9);
      result = swift_unknownObjectRelease();
      if ((v12 & 1) == 0)
      {
        v8 += 2;
        if (v7 != v6++)
        {
          continue;
        }
      }

      v14 = v12 ^ 1;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v14 = 1;
LABEL_9:

    return v14 & 1;
  }

  return result;
}

uint64_t outlined init with copy of DOCDiffableIdentifier<DOCProgressProvidingOperation>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DOCFileOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFileOperation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCFileOperation(uint64_t a1)
{
  v2 = type metadata accessor for DOCFileOperation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in DOCMutableSidebarData.setMembershipStatus(of:to:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v4 + 104))(v3, v2, ObjectType, v4) & 1;
}

void *one-time initialization function for DOCServerAuthUIExtensionProviderID()
{
  result = MEMORY[0x24C1FAD20](0xD00000000000002ELL, 0x8000000249BC9EE0);
  DOCServerAuthUIExtensionProviderID._rawValue = result;
  return result;
}

uint64_t DOCTabbedBrowserViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = DOCTabbedBrowserViewController.canPerformKeyCommandAction(_:with:)();
  if (v5 == 2)
  {
    outlined init with copy of DOCGridLayout.Spec?(a2, v16, &_sypSgMd);
    v6 = v17;
    if (v17)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7, v7);
      v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      v12 = 0;
    }

    v15.receiver = v2;
    v15.super_class = DOCTabbedBrowserViewController;
    v13 = objc_msgSendSuper2(&v15, sel_canPerformAction_withSender_, a1, v12);
    swift_unknownObjectRelease();
    v5 = v13;
  }

  return v5 & 1;
}

_OWORD *DOCTabbedBrowserViewController.target(forAction:withSender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = DOCTabbedBrowserViewController.canPerformKeyCommandAction(_:with:)();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v9 = [v29 presentedViewController];
    if (v9)
    {
    }

    else
    {
      v17 = [v29 splitBrowserViewController];
      outlined init with copy of DOCGridLayout.Spec?(a2, &v31, &_sypSgMd);
      v18 = v32;
      if (v32)
      {
        v19 = __swift_project_boxed_opaque_existential_1(&v31, v32);
        v20 = *(v18 - 8);
        v21 = MEMORY[0x28223BE20](v19, v19);
        v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v23, v21);
        v24 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v20 + 8))(v23, v18);
        __swift_destroy_boxed_opaque_existential_0(&v31);
      }

      else
      {
        v24 = 0;
      }

      v27 = [v17 targetForAction:a1 withSender:v24];

      swift_unknownObjectRelease();
      if (v27)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with take of Any(&v31, &v33);
        return outlined init with take of Any(&v33, a3);
      }
    }

    outlined init with copy of DOCGridLayout.Spec?(a2, &v33, &_sypSgMd);
    v10 = *(&v34 + 1);
    if (*(&v34 + 1))
    {
      v11 = __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x28223BE20](v11, v11);
      v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(&v33);
    }

    else
    {
      v16 = 0;
    }

    v30.receiver = v29;
    v30.super_class = DOCTabbedBrowserViewController;
    v25 = objc_msgSendSuper2(&v30, sel_targetForAction_withSender_, a1, v16);
    result = swift_unknownObjectRelease();
    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v26 = v34;
    *a3 = v33;
    *(a3 + 16) = v26;
  }

  else
  {
    *(a3 + 24) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTabbedBrowserViewController);
    v7 = v29;
    *a3 = v29;

    return v7;
  }

  return result;
}

id DOCTabbedBrowserViewController.currentTransitionController.getter()
{
  v1 = [v0 effectiveFullBrowser];
  v2 = [v1 dataSource];

  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0xF0))();
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    while (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v4, v3);
      goto LABEL_11;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v6 = *(v3 + 32 + 8 * v4);
LABEL_11:
    v7 = v6;
    v8 = swift_dynamicCastObjCProtocolConditional();
    result = [v7 view];
    if (!result)
    {
      goto LABEL_28;
    }

    v10 = result;
    [result alpha];
    v12 = v11;

    result = [v7 view];
    if (!result)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      __break(1u);
      return result;
    }

    v13 = result;
    v14 = [result isHidden];

    if (v8 && v12 == 1.0 && (v14 & 1) == 0)
    {
      MEMORY[0x28223BE20](v15, v16);
      v18 = v4;
      partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v18, &v19);
      v17 = v19;
      goto LABEL_22;
    }
  }

LABEL_21:
  v17 = 0;
LABEL_22:

  if (v17)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void DOCTabbedBrowserViewController.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v2;
  v15.super_class = DOCTabbedBrowserViewController;
  objc_msgSendSuper2(&v15, sel_pressesBegan_withEvent_, isa, a2);

  if (DOCTabbedBrowserViewController.shouldForwardPressToItemCollectionVC()())
  {
    v6 = [v2 splitBrowserViewController];
    v7 = [v6 fullDocumentManagerViewController];

    v8 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
    if (v8)
    {
      v9 = MEMORY[0x277D85000];
      v10 = (*((*MEMORY[0x277D85000] & *v8) + 0xE8))();

      if (v10)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = v11;
          if (((*((*v9 & *v11) + 0x1448))() & 1) == 0)
          {
            v13 = (*((*v9 & *v12) + 0x1010))();
            v14 = [v13 isFirstResponder];

            if ((v14 & 1) == 0)
            {
              (*((*v9 & **(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x128))(a1, a2);
            }
          }
        }
      }
    }
  }
}

uint64_t DOCTabbedBrowserViewController.shouldForwardPressToItemCollectionVC()()
{
  v1 = v0;
  v2 = [v0 splitBrowserViewController];
  v3 = [v2 fullDocumentManagerViewController];

  v4 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();

  if (!v5)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = v6, ([v6 isFirstResponder] & 1) != 0))
  {

LABEL_6:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.UI);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BC9F10, &v40);
      _os_log_impl(&dword_2493AC000, v9, v10, "%s tMICVC will NOT forward, ", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1FE850](v12, -1, -1);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.UI);
  v15 = v5;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v18 = 136315650;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BC9F10, &v40);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v7;
    *v19 = v7;
    *(v18 + 22) = 1024;
    *(v18 + 24) = [v7 isFirstResponder];

    _os_log_impl(&dword_2493AC000, v16, v17, "%s tMICVC: %@   isFirstResponder: %{BOOL}d, WILL forward if possible", v18, 0x1Cu);
    outlined destroy of CharacterSet?(v19, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  else
  {
  }

  v21 = [v1 presentedViewController];
  if (v21)
  {

    return 0;
  }

  v22 = [v1 viewIfLoaded];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 window];

    if (v24)
    {
      v25 = [v24 firstResponder];

      if (v25)
      {
        if (swift_dynamicCastObjCProtocolConditional())
        {

          return 0;
        }
      }
    }
  }

  v26 = v15;
  v27 = v1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v30 = 136315650;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BC9F10, &v40);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v27;
    *(v30 + 22) = 2080;
    v33 = v26;
    v34 = v27;
    v35 = [v7 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v40);

    *(v30 + 24) = v39;
    _os_log_impl(&dword_2493AC000, v28, v29, "%s %@ is forwarding key event for Type Ahead to: %s", v30, 0x20u);
    outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v31, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

  else
  {
  }

  return 1;
}

void DOCTabbedBrowserViewController.pressesChanged(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = DOCTabbedBrowserViewController;
  objc_msgSendSuper2(&v13, sel_pressesChanged_withEvent_, isa, a2);

  if (DOCTabbedBrowserViewController.shouldForwardPressToItemCollectionVC()())
  {
    v6 = [v2 splitBrowserViewController];
    v7 = [v6 fullDocumentManagerViewController];

    v8 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
    if (v8)
    {
      v9 = MEMORY[0x277D85000];
      v10 = (*((*MEMORY[0x277D85000] & *v8) + 0xE8))();

      if (v10)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = v11;
          if (((*((*v9 & *v11) + 0x1448))() & 1) == 0 && ([objc_opt_self() typeToFocusIsSupported] & 1) == 0)
          {
            (*((*v9 & **(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x130))(a1, a2);
          }
        }
      }
    }
  }
}

void DOCTabbedBrowserViewController.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = DOCTabbedBrowserViewController;
  objc_msgSendSuper2(&v13, sel_pressesEnded_withEvent_, isa, a2);

  if (DOCTabbedBrowserViewController.shouldForwardPressToItemCollectionVC()())
  {
    v6 = [v2 splitBrowserViewController];
    v7 = [v6 fullDocumentManagerViewController];

    v8 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
    if (v8)
    {
      v9 = MEMORY[0x277D85000];
      v10 = (*((*MEMORY[0x277D85000] & *v8) + 0xE8))();

      if (v10)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = v11;
          if (((*((*v9 & *v11) + 0x1448))() & 1) == 0 && ([objc_opt_self() typeToFocusIsSupported] & 1) == 0)
          {
            (*((*v9 & **(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x138))(a1, a2);
          }
        }
      }
    }
  }
}

void DOCTabbedBrowserViewController.pressesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = DOCTabbedBrowserViewController;
  objc_msgSendSuper2(&v13, sel_pressesCancelled_withEvent_, isa, a2);

  if (DOCTabbedBrowserViewController.shouldForwardPressToItemCollectionVC()())
  {
    v6 = [v2 splitBrowserViewController];
    v7 = [v6 fullDocumentManagerViewController];

    v8 = DOCFullDocumentManagerViewController.containerControllerForResponderEstablishing()();
    if (v8)
    {
      v9 = MEMORY[0x277D85000];
      v10 = (*((*MEMORY[0x277D85000] & *v8) + 0xE8))();

      if (v10)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = v11;
          if (((*((*v9 & *v11) + 0x1448))() & 1) == 0 && ([objc_opt_self() typeToFocusIsSupported] & 1) == 0)
          {
            (*((*v9 & **(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x140))(a1, a2);
          }
        }
      }
    }
  }
}

uint64_t @objc DOCTabbedBrowserViewController.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void DOCTabbedBrowserViewController.presentConnectToServer(_:askPermission:)(uint64_t a1@<X0>, char a2@<W1>, NSURL *a3@<X8>)
{
  if (a2)
  {

    DOCTabbedBrowserViewController.showConnectToServerAlert(_:)(a1);
  }

  else
  {
    URL._bridgeToObjectiveC()(a3);
    v5 = v4;
    [v3 presentConnectToServer_];
  }
}

void DOCTabbedBrowserViewController.showConnectToServerAlert(_:)(uint64_t a1)
{
  v50 = type metadata accessor for URL();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50, v4);
  v5 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _DocumentManagerBundle();
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8.value._object = 0xEB00000000656C62;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v53._object = 0x8000000249BC9BB0;
  v9._object = 0x8000000249BC9B70;
  v53._countAndFlagsBits = 0xD00000000000003DLL;
  v9._countAndFlagsBits = 0x1000000000000034;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  URL._bridgeToObjectiveC()(&off_249B9A000);
  v13 = v12;
  *(v11 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
  *(v11 + 64) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
  *(v11 + 32) = v13;
  v14 = String.init(format:_:)();
  v16 = v15;

  v17 = _DocumentManagerBundle();
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  v54._object = 0x8000000249BC9C10;
  v19._object = 0x8000000249BC9BF0;
  v54._countAndFlagsBits = 0xD00000000000003FLL;
  v19._countAndFlagsBits = 0xD000000000000017;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v54);

  v23 = MEMORY[0x24C1FAD20](v14, v16);

  v24 = MEMORY[0x24C1FAD20](v22._countAndFlagsBits, v22._object);

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  v26 = _DocumentManagerBundle();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v26;
  v55._object = 0x8000000249BC9C50;
  v28._countAndFlagsBits = 0x7463656E6E6F43;
  v55._countAndFlagsBits = 0xD000000000000027;
  v28._object = 0xE700000000000000;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v55);

  v32 = v50;
  (*(v2 + 16))(&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v50);
  v33 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v34 = swift_allocObject();
  v35 = v51;
  *(v34 + 16) = v51;
  (*(v2 + 32))(v34 + v33, v5, v32);
  v36 = v35;
  v37 = MEMORY[0x24C1FAD20](v31._countAndFlagsBits, v31._object);

  aBlock[4] = partial apply for closure #1 in DOCTabbedBrowserViewController.showConnectToServerAlert(_:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_5;
  v38 = _Block_copy(aBlock);

  v39 = objc_opt_self();
  v40 = [v39 actionWithTitle:v37 style:0 handler:v38];
  _Block_release(v38);

  v41 = _DocumentManagerBundle();
  if (v41)
  {
    v42 = v41;
    v56._object = 0x8000000249BC9CA0;
    v43._countAndFlagsBits = 0x6C65636E6143;
    v56._countAndFlagsBits = 0xD00000000000001DLL;
    v43._object = 0xE600000000000000;
    v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v44.value._object = 0xEB00000000656C62;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v56);

    v47 = MEMORY[0x24C1FAD20](v46._countAndFlagsBits, v46._object);

    v48 = [v39 actionWithTitle:v47 style:1 handler:0];

    v49 = v25;
    [v49 addAction_];
    [v49 addAction_];
    [v49 setPreferredAction_];

    [v36 presentViewController:v49 animated:1 completion:0];
    return;
  }

LABEL_9:
  __break(1u);
}

void DOCTabbedBrowserViewController.presentConnectToServer(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v36 - v7;
  v9 = [v2 presentedViewController];
  if (!v9 || (v10 = v9, objc_opt_self(), v11 = swift_dynamicCastObjCClass(), v10, !v11))
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v8, &_s10Foundation3URLVSgMd);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    v15 = 0;
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      URL._bridgeToObjectiveC()(v14);
      v15 = v16;
      (*(v13 + 8))(v8, v12);
    }

    v17 = _DocumentManagerBundle();
    if (v17)
    {
      v18 = v17;
      v19 = objc_opt_self();
      v37._object = 0x8000000249BC9CE0;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._object = 0x8000000249BC9CC0;
      v37._countAndFlagsBits = 0xD000000000000037;
      v21._countAndFlagsBits = 0xD000000000000011;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v18, v22, v37);

      v24 = MEMORY[0x24C1FAD20](v23._countAndFlagsBits, v23._object);

      if (one-time initialization token for DOCServerAuthUIExtensionProviderID != -1)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v19 = [v19 actionControllerForConnectingToServerURL:v15 actionTitle:v24 providerIdentifier:DOCServerAuthUIExtensionProviderID._rawValue];

        v25 = [v19 view];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = [v2 view];
        if (!v27)
        {
          goto LABEL_28;
        }

        v28 = v27;
        v29 = [v27 tintColor];

        if (!v29)
        {
          goto LABEL_29;
        }

        v30 = [objc_opt_self() _doc_safeTintColor_];

        [v26 setTintColor_];
        [v19 setDelegate_];
        v31 = [objc_opt_self() dismissingKeyCommandsWithAction_];
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v15 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (!v24)
          {
LABEL_24:

            [v2 presentViewController:v19 animated:1 completion:0];

            return;
          }
        }

        else
        {
          v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v24)
          {
            goto LABEL_24;
          }
        }

        v32 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x24C1FC540](v32, v15);
          }

          else
          {
            if (v32 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v33 = *(v15 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = (v32 + 1);
          if (__OFADD__(v32, 1))
          {
            break;
          }

          [v19 addKeyCommand_];

          ++v32;
          if (v35 == v24)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        swift_once();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.presentGoToLocation()()
{
  v1 = [v0 effectiveFullBrowser];
  DOCFullDocumentManagerViewController.presentGoToLocation()();
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id static UIAction.doc_connectToServerAction(for:origin:)(void *a1, char *a2)
{
  v3 = *a2;
  v4 = objc_opt_self();
  v5 = [a1 sceneIdentifier];
  v6 = [v4 globalTabbedBrowserControllerForIdentifier_];

  if (!v6)
  {
    return 0;
  }

  if ((specialized static DOCTabbedBrowserViewController.connectToServerAllowed(for:)(a1) & 1) == 0)
  {

    return 0;
  }

  v7 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BC9D20);
  v8 = [objc_opt_self() systemImageNamed_];

  result = _DocumentManagerBundle();
  if (result)
  {
    v10 = result;
    v15._object = 0x8000000249BC9D50;
    v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v11.value._object = 0xEB00000000656C62;
    v12._object = 0x8000000249BC9CC0;
    v15._countAndFlagsBits = 0xD00000000000003FLL;
    v12._countAndFlagsBits = 0xD000000000000011;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v15);

    MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BC9D90);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = v6;
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in static UIAction.doc_connectToServerAction(for:origin:)(uint64_t a1, char a2, void *a3)
{
  v5[0] = 0xD000000000000038;
  v5[1] = 0x8000000249BC9EA0;
  v5[2] = 0;
  v5[3] = 0;
  v6 = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v5, static DOCAnalyticsManager.shared);
  outlined destroy of DOCAnalyticsConnectToServerShownEvent(v5);
  return [a3 presentConnectToServer_];
}

id DOCTabbedBrowserViewController.actionControllerDidFinishAction(_:userInfo:error:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 providerIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for DOCServerAuthUIExtensionProviderID != -1)
  {
    swift_once();
  }

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (!a3)
    {
LABEL_9:
      if (!a2)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  v14 = a3;
  if (one-time initialization token for Source != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9A480;
  v16 = _convertErrorToNSError(_:)();
  *(v15 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
  *(v15 + 64) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
  *(v15 + 32) = v16;
  os_log(_:dso:log:type:_:)();

  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_15:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v21 = v20;

    if (v21)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v19, v28);
      if (swift_dynamicCast())
      {
        v22 = [v3 splitBrowserViewController];
        v23 = [v22 sidebarViewController];

        DOCSidebarViewController.selectNewlyAddedSource(with:)(v27);

        return [v3 switchToTab_];
      }
    }
  }

  else
  {
  }

LABEL_20:
  v24 = [v3 splitBrowserViewController];
  v25 = [v24 sidebarViewController];

  v26 = &v25[OBJC_IVAR___DOCSidebarViewController_pendingSelectionProviderDomainIdentifier];
  *v26 = 0;
  *(v26 + 1) = 0;
}

void DOCTabbedBrowserViewController.actionControllerDidFinishAction(_:error:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 actionControllerDidFinishAction:a1 userInfo:0 error:?];
}

void DOCTabbedBrowserViewController.actionController(_:presentError:completion:)()
{
  v0 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

Swift::Void __swiftcall FPUIActionViewController.performDismiss(_:)(UIKeyCommand *a1)
{
  v3[4] = closure #1 in FPUIActionViewController.performDismiss(_:);
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v3[3] = &block_descriptor_6;
  v2 = _Block_copy(v3);
  [v1 dismissViewControllerAnimated:1 completion:v2];
  _Block_release(v2);
}

void closure #1 in FPUIActionViewController.performDismiss(_:)()
{
  v0 = [objc_opt_self() sharedManager];
  [v0 restoreCurrentlyFocused];
}

void @objc FPUIActionViewController.performDismiss(_:)(void *a1)
{
  v3[4] = closure #1 in FPUIActionViewController.performDismiss(_:);
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v3[3] = &block_descriptor_18;
  v2 = _Block_copy(v3);
  [a1 dismissViewControllerAnimated:1 completion:v2];
  _Block_release(v2);
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.configureTabBarForUIPIfNecessary()()
{
  if ([objc_opt_self() _UIPTabInfrastructureEnabled])
  {
    v1 = [v0 tabBarController];
    if (v1)
    {
      v12 = v1;
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2 && (v3 = v2, [v2 setMode_], v4 = objc_msgSend(v0, sel_configuration), v5 = objc_msgSend(v4, sel_canHaveFloatingTabSwitcher), v4, v5))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = swift_allocObject();
        *(v8 + 16) = v6;
        *(v8 + 24) = v7;
        v11 = v8;
        v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v3 setFloatingTabBarSidebarToggleAction_];

        v10 = v9;
      }

      else
      {
        v10 = v12;
      }
    }
  }
}

void closure #1 in DOCTabbedBrowserViewController.installFloatingTabBarSidebarToggleAction(into:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 splitBrowserViewController];
      v5 = [v4 doc_splitViewState];

      LODWORD(v4) = [v5 isSidebarShown];
      [v3 setNeverAllowShowingSystemTabs_];
      v6 = [v1 splitBrowserViewController];
      [v6 toggleSidebarShown];

      v1 = v6;
    }
  }
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.updateTraitCollectionTabBarSetting()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  v4 = [v0 traitCollection];
  v5 = [v1 splitBrowserViewController];
  v6 = [v5 doc_splitViewState];

  v7 = *&v6[OBJC_IVAR___DOCSplitViewState__impl];
  if (v7 == 2)
  {
    __break(1u);
  }

  else
  {
    v8 = *&v6[OBJC_IVAR___DOCSplitViewState__impl + 8];

    v9 = [v1 configuration];
    v13[0] = v7;
    v13[1] = v8;
    v10 = v4;
    v11 = specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(v9, v4, v13);

    UIViewController.traitOverrides.getter();
    v13[0] = v11;
    lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
    lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
    v12 = [v1 splitBrowserViewController];
    UIViewController.traitOverrides.getter();
    v13[0] = v11;
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
  }
}

void DOCTabbedBrowserViewController.tabSwitcherStyleForCompactPresentation.getter()
{
  v1 = v0;
  v2 = [v0 splitBrowserViewController];
  v3 = [v2 doc_splitViewState];

  if (v3[OBJC_IVAR___DOCSplitViewState__impl] == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = *&v3[OBJC_IVAR___DOCSplitViewState__impl + 8];

    v5 = [v1 traitCollection];
    v6 = UITraitCollection.modifyingTraits(_:)();

    v7 = [v1 configuration];
    v9[0] = 1;
    v9[1] = v4;
    v8 = v6;
    specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(v7, v6, v9);
  }
}

Swift::Void __swiftcall DOCSplitBrowserViewController.updateTraitCollectionTabBarSetting()()
{
  v1 = [v0 fullDocumentManagerViewController];
  v2 = objc_opt_self();
  v3 = [v1 configuration];
  v4 = [v3 sceneIdentifier];

  v5 = [v2 globalTabbedBrowserControllerForIdentifier_];
  [v5 updateTraitCollectionTabBarSetting];
}

unint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1FC540](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

void partial apply for closure #1 in DOCTabbedBrowserViewController.showConnectToServerAlert(_:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  URL._bridgeToObjectiveC()(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 presentConnectToServer_];
}

unint64_t lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle()
{
  result = lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle;
  if (!lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle)
  {
    type metadata accessor for DOCTabSwitcherStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle);
  }

  return result;
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

uint64_t static DOCItemCollectionViewController.searchResultsItemCollectionViewController(forSearchStartingIn:configuration:collectionViewPool:documentManager:actionManager:)(void *a1, id a2, void *a3, void *a4, void *a5)
{
  v10 = [a2 browserViewContext];
  v11 = 2;
  if (v10 > 1)
  {
    if (v10 == 3)
    {
      goto LABEL_8;
    }

    if (v10 == 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    goto LABEL_7;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 3;
      goto LABEL_8;
    }

LABEL_7:
    v12 = [a2 browserViewContext];
    type metadata accessor for DOCBrowserViewContext(0);
    v28 = v13;
    *&v27 = v12;
    doc_warnUnrecognizedEnumValueEncountered(_:)(&v27);
    __swift_destroy_boxed_opaque_existential_0(&v27);
  }

LABEL_8:
  v14 = [objc_opt_self() searchLocation];
  if (one-time initialization token for searchSource != -1)
  {
    swift_once();
  }

  v15 = static DOCFileProviderSource.searchSource;
  v30 = v11;
  v29 = 10;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = v15;
  v20 = a2;
  v21 = v14;
  v22 = a1;
  DOCItemCollectionConfiguration.init(source:configuration:context:initialLocation:defaultSorting:searchStartLocation:viewAccessibilityIdentifier:isBrowsingTrash:)(v19, v20, &v30, v14, &v29, a1, v16, v18, &v27, 0);
  objc_allocWithZone(type metadata accessor for DOCItemCollectionViewController(0));
  v23 = a5;
  v24 = a4;
  v25 = DOCItemCollectionViewController.init(configuration:collectionViewPool:documentManager:actionManager:)(&v27, a3, a4, a5);

  return v25;
}

id @objc static UISearchController.docSearchController(forSearchingIn:configuration:collectionViewPool:documentManager:actionManager:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = specialized static UISearchController.docSearchController(forSearchingIn:configuration:collectionViewPool:documentManager:actionManager:)(v11, v12, v13, v14, v15);

  return v16;
}

uint64_t DOCBrowserContainedViewController.searchCollection.getter()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (v2)
  {
    v3 = [v2 searchResultsController];

    if (v3)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void *DOCItemCollectionViewController.searchControllerScopes.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v37._object = 0x8000000249BC9FD0;
    v2._countAndFlagsBits = 0x73746E65636552;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v2._object = 0xE700000000000000;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0xD000000000000043;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v37);

    v6 = DOCItemCollectionViewController.trashedItemsMembership.getter();
    v7 = type metadata accessor for DOCEverywhereSearchScope();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership;
    *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership] = 1;
    *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName] = v5;
    *&v8[v9] = v6;
    v36.receiver = v8;
    v36.super_class = v7;
    v10 = objc_msgSendSuper2(&v36, sel_init);
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    v14 = &v11[2 * v13];
    v14[4] = v10;
    v14[5] = &protocol witness table for DOCEverywhereSearchScope;
    v15 = DOCItemCollectionViewController.fileProviderScope.getter();
    if (v15)
    {
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v29 = v15;
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
        v15 = v29;
      }

      v11[2] = v17 + 1;
      v18 = &v11[2 * v17];
      v18[4] = v15;
      v18[5] = &protocol witness table for DOCFileProviderSearchScope;
    }

    DOCItemCollectionViewController.hereScope.getter();
    if (v19)
    {
      v22 = v11[2];
      v21 = v11[3];
      if (v22 >= v21 >> 1)
      {
        v30 = v19;
        v31 = v20;
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v11);
        v20 = v31;
        v11 = v32;
        v19 = v30;
      }

      v11[2] = v22 + 1;
      v23 = &v11[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
    }

    v24 = DOCItemCollectionViewController.trashedItemsScope.getter();
    if (v24)
    {
      v27 = v11[2];
      v26 = v11[3];
      if (v27 >= v26 >> 1)
      {
        v33 = v24;
        v34 = v25;
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v11);
        v25 = v34;
        v11 = v35;
        v24 = v33;
      }

      v11[2] = v27 + 1;
      v28 = &v11[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.trashedItemsMembership.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA78))();
  if (!v2 || (v3 = [v2 isTrashed], swift_unknownObjectRelease(), (v3 & 1) == 0))
  {
    v4 = (*((*v1 & *v0) + 0xA68))();
    v5 = [v4 identifier];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v8 != v9)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return ~v11 & 1;
    }
  }

  return 0;
}

id DOCItemCollectionViewController.fileProviderScope.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v0;
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x1B0))();
  if (!result)
  {
    return result;
  }

  v5 = swift_unknownObjectRelease();
  v6 = *((*v3 & *v0) + 0xA68);
  v7 = (v6)(v5);
  v8 = [v7 supportedSearchFilters];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v6();
  v10 = [v9 supportedSearchFilters];

  if (!v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  type metadata accessor for NSFileProviderSearchFilter(0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);

  if (!v12)
  {
    return 0;
  }

LABEL_6:
  result = (*((*v3 & *v2) + 0xC70))();
  if (result)
  {
    v13 = swift_unknownObjectRelease();
    v14 = (*((*v3 & *v1) + 0x1B0))(v13);
    if (v14)
    {
      v15 = [v14 providerDomainID];
      v16 = swift_unknownObjectRelease();
      v17 = (v6)(v16);
      v18 = [v17 displayName];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      DOCItemCollectionViewController.fileProviderSupportsServerSearch.getter();
      LOBYTE(v18) = v22;
      v23 = DOCItemCollectionViewController.trashedItemsMembership.getter();
      v24 = type metadata accessor for DOCFileProviderSearchScope();
      v25 = objc_allocWithZone(v24);
      v26 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch;
      v25[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch] = 0;
      v27 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership;
      *&v25[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership] = 1;
      v28 = &v25[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName];
      *v28 = v19;
      v28[1] = v21;
      *&v25[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_providerDomainIdentifier] = v15;
      v25[v26] = v18 & 1;
      *&v25[v27] = v23;
      v29.receiver = v25;
      v29.super_class = v24;
      return objc_msgSendSuper2(&v29, sel_init);
    }

    goto LABEL_13;
  }

  return result;
}

void DOCItemCollectionViewController.hereScope.getter()
{
  DOCItemCollectionViewController.wantsHereScope.getter();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v2)
    {
      v3 = MEMORY[0x277D85000];
      v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
      if (v4)
      {
        v5 = v4;
        v6 = DOCItemCollectionViewController.hereScopeDisplayName.getter();
        v8 = v7;
        DOCItemCollectionViewController.fileProviderSupportsServerSearch.getter();
        v10 = v9;
        v11 = DOCItemCollectionViewController.trashedItemsMembership.getter();
        v12 = type metadata accessor for DOCItemCollectionSearchScope();
        v13 = objc_allocWithZone(v12);
        v14 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
        v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
        v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
        v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
        *v16 = v6;
        v16[1] = v8;
        v17 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
        *v17 = v5;
        v17[8] = 1;
        v13[v14] = v10 & 1;
        *&v13[v15] = v11;
        v31 = v13;
        v18 = &v31;
LABEL_5:
        v18->super_class = v12;
        [(objc_super *)v18 init];
        return;
      }

      if ((*((*v3 & *v2) + 0x1B0))())
      {
        swift_getObjectType();
        v19 = DOCNode.fpfs_syncFetchFPItem()();
        swift_unknownObjectRelease();
        if (v19)
        {
          v20 = DOCItemCollectionViewController.hereScopeDisplayName.getter();
          v22 = v21;
          DOCItemCollectionViewController.fileProviderSupportsServerSearch.getter();
          v24 = v23;
          v25 = DOCItemCollectionViewController.trashedItemsMembership.getter();
          v12 = type metadata accessor for DOCItemCollectionSearchScope();
          v26 = objc_allocWithZone(v12);
          v27 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
          v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
          v28 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
          *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
          v29 = &v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
          *v29 = v20;
          v29[1] = v22;
          v30 = &v26[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
          *v30 = v19;
          v30[8] = 0;
          v26[v27] = v24 & 1;
          *&v26[v28] = v25;
          v32 = v26;
          v18 = &v32;
          goto LABEL_5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCItemCollectionViewController.trashedItemsScope.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))();
  v4 = [v3 identifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v12)
  {
    result = (*((*v2 & *v12) + 0x1A8))(result);
    if (result)
    {
      v13 = result;
      v14 = DOCItemCollectionViewController.hereScopeDisplayName.getter();
      v16 = v15;
      v17 = type metadata accessor for DOCItemCollectionSearchScope();
      v18 = objc_allocWithZone(v17);
      v19 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
      v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
      v20 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
      *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
      v21 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
      *v21 = v14;
      v21[1] = v16;
      v22 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
      *v22 = v13;
      v22[8] = 1;
      v18[v19] = 0;
      *&v18[v20] = 2;
      v23.receiver = v18;
      v23.super_class = v17;
      return objc_msgSendSuper2(&v23, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCItemCollectionViewController.fileProviderSupportsServerSearch.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
    if (!v4 || (v5 = v4, objc_opt_self(), v6 = swift_dynamicCastObjCClass(), v5, !v6))
    {
      v7 = (*((*v3 & *v1) + 0xA68))();
      v8 = [v7 supportedSearchFilters];

      if (v8)
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void DOCItemCollectionViewController.isRecentsCollection.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();

      if (v6)
      {
        v7 = (*((*v3 & *v1) + 0xA68))();
        v8 = (*((*v3 & *v7) + 0x278))();

        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
        if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void DOCItemCollectionViewController.wantsHereScope.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1B0))())
  {
    v4 = swift_unknownObjectRelease();
    v5 = (*((*v3 & *v2) + 0x1B0))(v4);
    if (!v5 || (v6 = [v5 isRootItem], swift_unknownObjectRelease(), (v6 & 1) == 0))
    {
      v10 = *((*v3 & *v1) + 0xA68);
      v11 = v10();
      v12 = [v11 supportedSearchFilters];

      if (!v12)
      {
        return;
      }

      v13 = v10();
      v14 = [v13 supportedSearchFilters];

      if (v14)
      {
        type metadata accessor for NSFileProviderSearchFilter(0);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = *MEMORY[0x277CC6350];
        MEMORY[0x28223BE20](v16, v17);
        v18[2] = &v19;
        specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v18, v15);

        return;
      }

LABEL_14:
      __break(1u);
      return;
    }
  }

  v7 = (*((*v3 & *v2) + 0x1A8))();
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();

    if (v9)
    {
      DOCItemCollectionViewController.isRecentsCollection.getter();
    }
  }
}

uint64_t DOCItemCollectionViewController.hereScopeDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    v2 = v0;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A8))();
    if (!v4 || (v5 = v4, objc_opt_self(), v6 = swift_dynamicCastObjCClass(), v5, !v6))
    {
      v8 = (*((*v3 & *v2) + 0xA68))();
      v9 = [v8 identifier];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          v16 = *((*v3 & *v1) + 0x1B0);
          if (v16(v7))
          {
            v17 = swift_unknownObjectRelease();
            v18 = v16(v17);
            if (v18)
            {
              v19 = [v18 displayName];
              swift_unknownObjectRelease();
              v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v22 = v21;

              v23 = String.doc_localizedQuotedString.getter(v20, v22);

              return v23;
            }
          }

          goto LABEL_22;
        }
      }
    }

    (*((*v3 & *v2) + 0xA50))(v34, v7);
    v25 = v35;
    v26 = v35;
    v27 = outlined destroy of DOCItemCollectionConfiguration(v34);
    if (v25)
    {
      v28 = [v26 displayName];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if ([v26 isTaggedItemsSource])
        {
          v30 = String.doc_localizedQuotedString.getter(v30, v32);

          return v30;
        }

LABEL_19:

        return v30;
      }
    }

    v33 = (*((*v3 & *v2) + 0xA68))(v27);
    v26 = [v33 displayName];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_19;
  }

  __break(1u);
LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t specialized static UISearchController.docSearchController(forSearchingIn:configuration:collectionViewPool:documentManager:actionManager:)(void *a1, id a2, void *a3, void *a4, void *a5)
{
  [a2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for DOCConfiguration();
  swift_dynamicCast();
  v9 = v31;
  [v31 setPresentingMakesCollectionFirstResponder_];
  v10 = [v31 browserViewContext];
  v11 = 2;
  if (v10 > 1)
  {
    if (v10 == 3)
    {
      goto LABEL_8;
    }

    if (v10 == 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    goto LABEL_7;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 3;
      goto LABEL_8;
    }

LABEL_7:
    v12 = [v31 browserViewContext];
    type metadata accessor for DOCBrowserViewContext(0);
    v29 = v13;
    *&v28 = v12;
    doc_warnUnrecognizedEnumValueEncountered(_:)(&v28);
    __swift_destroy_boxed_opaque_existential_0(&v28);
  }

LABEL_8:
  v14 = [objc_opt_self() searchLocation];
  if (one-time initialization token for searchSource != -1)
  {
    swift_once();
  }

  v15 = static DOCFileProviderSource.searchSource;
  LOBYTE(v31) = v11;
  v30 = 10;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = v15;
  v20 = v9;
  v21 = v14;
  v22 = a1;
  DOCItemCollectionConfiguration.init(source:configuration:context:initialLocation:defaultSorting:searchStartLocation:viewAccessibilityIdentifier:isBrowsingTrash:)(v19, v20, &v31, v14, &v30, a1, v16, v18, &v28, 0);
  objc_allocWithZone(type metadata accessor for DOCItemCollectionViewController(0));
  v23 = a5;
  v24 = a4;
  v25 = DOCItemCollectionViewController.init(configuration:collectionViewPool:documentManager:actionManager:)(&v28, a3, a4, a5);

  v26 = objc_allocWithZone(type metadata accessor for DOCSearchController());
  return DOCSearchController.init(configuration:resultCollectionViewController:)(v20, v25);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for DOCBrowserContainedViewController();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t type metadata accessor for DOCConfiguration()
{
  result = lazy cache variable for type metadata for DOCConfiguration;
  if (!lazy cache variable for type metadata for DOCConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCConfiguration);
  }

  return result;
}

uint64_t FPProviderDomain.shouldUseDSCopyEngine.getter()
{
  if ([v0 isUsingFPFS] & 1) != 0 || (objc_msgSend(v0, sel_isiCloudDriveProvider) & 1) != 0 || (v1 = objc_msgSend(v0, sel_identifier), v2 = DOCProviderDomainIDIsExternalDevice(), v1, (v2) || (v3 = objc_msgSend(v0, sel_identifier), v4 = DOCProviderDomainIDIsSharedServerDomainID(), v3, (v4))
  {
    v5 = 1;
  }

  else
  {
    v7 = [v0 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v5 & 1;
}

id DOCEncryptedVolumeNode.domain.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_domain;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCEncryptedVolumeNode.domain.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_domain;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCEncryptedVolumeNode.needsAuthNode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_needsAuthNode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCEncryptedVolumeNode.needsAuthNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_needsAuthNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCEncryptedVolumeNode.init(domain:)(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_needsAuthNode;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_needsAuthNode] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCEncryptedVolumeNode_domain] = a1;
  v4 = type metadata accessor for DOCNeedsAuthenticationNode();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode_domain] = a1;
  v13.receiver = v5;
  v13.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  swift_beginAccess();
  v8 = *&v1[v3];
  *&v1[v3] = v7;
  v9 = v7;

  v12.receiver = v1;
  v12.super_class = type metadata accessor for DOCEncryptedVolumeNode();
  v10 = objc_msgSendSuper2(&v12, sel_initWithSubject_, v9);

  return v10;
}

id DOCNeedsAuthenticationNode.__allocating_init(domain:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode_domain] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall DOCEncryptedVolumeNode.tryResolving()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v5);
  v9 = [v8 storageURLs];

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v10 + 16))
  {
    (*(v3 + 16))(v7, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    (*(v3 + 8))(v7, v2);
  }

  else
  {

    v13 = 0;
  }

  v14 = [objc_opt_self() fiNodeFromURL_];

  if (v14)
  {
    [v1 setSubjectNode_];
  }
}

id DOCNeedsAuthenticationNode.domain.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode_domain;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCNeedsAuthenticationNode.domain.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode_domain;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCNeedsAuthenticationNode.init(domain:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode_domain] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCNeedsAuthenticationNode();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t DOCNeedsAuthenticationNode.init(coder:)(void *a1)
{
  type metadata accessor for DOCNeedsAuthenticationNode();
  swift_deallocPartialClassInstance();
  return 0;
}

id DOCNeedsAuthenticationNode.enumeratorError.getter()
{
  v0 = *MEMORY[0x277CC6300];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:-1000 userInfo:0];
}

id DOCNeedsAuthenticationNode.iterator(options:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D046C0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 initWithChildren:isa fullyPopulated:1 options:0];

  return v2;
}

id DOCNeedsAuthenticationNode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCRootNode.__allocating_init(from:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = static FINode.docNode(from:)(v9);
  outlined destroy of URL?(v9);
  if (v12)
  {
    v12 = (*(v3 + 112))(v12, a2);
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    (*(v11 + 8))(a1, v10);
  }

  return v12;
}

char *DOCRootNode.__allocating_init(from:for:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  v6 = objc_msgSendSuper2(&v9, sel_initWithSubject_, a1);

  v7 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = a2;

  return v6;
}

char *DOCRootNode.init(from:for:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCRootNode();
  v5 = objc_msgSendSuper2(&v8, sel_initWithSubject_, a1);

  v6 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain] = a2;

  return v5;
}

id DOCRootNode.__allocating_init(subject:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSubject_];

  return v3;
}

void DOCRootNode.init(subject:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCRootNode.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCEncryptedVolumeNode.init(coder:)(void *a1, void *a2, void (*a3)(void))
{
  *(v3 + *a2) = 0;
  a3();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t @objc DOCEncryptedVolumeNode.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  *(a1 + *a4) = 0;
  a5();
  swift_deallocPartialClassInstance();
  return 0;
}

id DOCEncryptedVolumeNode.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DOCRootNode.description.getter()
{
  v1 = v0;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for DOCRootNode();
  v2 = objc_msgSendSuper2(&v17, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v18 = v3;
  v19 = v5;
  MEMORY[0x24C1FAEA0](539831584, 0xE400000000000000);
  v6 = [v0 source];
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x24C1FAEA0](v8, v10);

  MEMORY[0x24C1FAEA0](0x6E69616D6F64202CLL, 0xEA0000000000203ALL);
  v11 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain];
  if (v11)
  {
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 4271950;
  }

  MEMORY[0x24C1FAEA0](v13, v15);

  return v18;
}

uint64_t DOCRootNode.identifier.getter()
{
  v1 = [v0 source];
  v2 = [v1 identifier];

  _bridgeAnyObjectToAny(_:)();

  return swift_unknownObjectRelease();
}

uint64_t DOCRootNode.identifierKey.getter()
{
  v1 = [v0 source];
  v2 = [v1 identifier];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  return swift_dynamicCast();
}

void *DOCRootNode.fpDomain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain);
  v2 = v1;
  return v1;
}

id DOCRootNode.providerDomainID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain);
  if (!v1)
  {

    JUMPOUT(0x24C1FAD20);
  }

  v2 = [v1 identifier];

  return v2;
}

id DOCRootNode.providerID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables11DOCRootNode_domain);
  if (!v1)
  {

    JUMPOUT(0x24C1FAD20);
  }

  v2 = [v1 providerID];

  return v2;
}

Class @objc DOCRootNode.doc_lastUsedDate.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  v13 = a1;
  v14 = [v13 source];
  v15 = [v14 *a3];

  if (v15)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  }

  outlined init with take of Date?(v8, v12);

  type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v12, 1, v16);
  v19 = 0;
  if (v18 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v12, v16);
    v19 = isa;
  }

  return v19;
}

uint64_t DOCRootNode.doc_lastUsedDate.getter@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 source];
  v6 = [v5 *a1];

  if (v6)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

uint64_t DOCRootNode.filename.getter()
{
  v1 = [v0 source];
  v2 = [v1 filename];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id @objc DOCRootNode.isActionable.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 source];
  v6 = [v5 *a3];

  return v6;
}

id DOCRootNode.isActionable.getter(SEL *a1)
{
  v3 = [v1 source];
  v4 = [v3 *a1];

  return v4;
}

id @objc DOCRootNode.downloadingError.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 source];
  v6 = [v5 *a3];

  if (v6)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id @objc DOCRootNode.fpfs_fpItem.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 source];
  v6 = [v5 *a3];

  return v6;
}

id DOCRootNode.fpfs_fpItem.getter(SEL *a1)
{
  v3 = [v1 source];
  v4 = [v3 *a1];

  return v4;
}

id DOCRootNode.localizedStandardTagsCompare(node:)(uint64_t a1, SEL *a2)
{
  v5 = [v2 source];
  v6 = [v5 *a2];

  return v6;
}

id @objc DOCRootNode.localizedStandardTagsCompare(node:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = [v7 source];
  v9 = [v8 *a4];
  swift_unknownObjectRelease();

  return v9;
}

id FPProviderDomain.supportsOpenWithForEvictedFiles.getter()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_9:
    v10 = [objc_opt_self() dsEnumerationLocal];
    goto LABEL_10;
  }

  v8 = [v0 identifier];
  v9 = DOCProviderDomainIDIsExternalDevice();

  if (v9)
  {
    v10 = [objc_opt_self() dsEnumerationUSB];
  }

  else
  {
    v14 = [v0 identifier];
    v15 = DOCProviderDomainIDIsSharedServerDomainID();

    if (!v15)
    {
      return [v0 isUsingFPFS];
    }

    v10 = [objc_opt_self() dsEnumerationSMB];
  }

LABEL_10:
  v11 = v10;
  v12 = [v11 isEnabled];

  return v12;
}

uint64_t FPProviderDomain.isPOSIXCompatible.getter()
{
  if ([v0 isUsingFPFS] & 1) != 0 || (objc_msgSend(v0, sel_isiCloudDriveProvider) & 1) != 0 || (v1 = objc_msgSend(v0, sel_identifier), v2 = DOCProviderDomainIDIsExternalDevice(), v1, (v2) || (v3 = objc_msgSend(v0, sel_identifier), v4 = DOCProviderDomainIDIsSharedServerDomainID(), v3, (v4))
  {
    v5 = 1;
  }

  else
  {
    v7 = [v0 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v5 & 1;
}

uint64_t FPProviderDomain.shouldResolveDSNodeAsFPv2.getter()
{
  if (([v0 isUsingFPFS] & 1) != 0 || (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = FPProviderDomain.isPOSIXCompatible.getter() ^ 1;
  }

  return v1 & 1;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t DOCDocumentPickerViewController.pickerDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id DOCDocumentPickerViewController.init(configuration:context:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 context:a2];

  return v4;
}

{
  v4 = specialized DOCDocumentPickerViewController.init(configuration:context:)(a1, a2);

  return v4;
}

id closure #1 in DOCDocumentPickerViewController.init(configuration:context:)()
{
  type metadata accessor for DOCCopyableBarButtonItem();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v1 = static UIBarButtonItem.doc_adaptableDismissButton(_:primaryAction:)(1, v0);

  return v1;
}

void closure #1 in closure #1 in DOCDocumentPickerViewController.init(configuration:context:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setDidConfirmOrCancel_];
    v2 = [v1 pickerDelegate];
    if (v2)
    {
      [v2 documentPickerDidCancel_];
      swift_unknownObjectRelease();
    }

    UIViewController.doc_dismiss(animated:includingPresented:completion:)(1, 1, DOCGridLayout.specIconWidth.modify, 0);
  }
}

Swift::Void __swiftcall DOCDocumentPickerViewController.performCancel()()
{
  [v0 setDidConfirmOrCancel_];
  v1 = [v0 pickerDelegate];
  if (v1)
  {
    [v1 documentPickerDidCancel_];
    swift_unknownObjectRelease();
  }

  UIViewController.doc_dismiss(animated:includingPresented:completion:)(1, 1, DOCGridLayout.specIconWidth.modify, 0);
}

uint64_t static DOCCopyableBarButtonItem.blockCopyable(withCreator:)(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1();
  v5 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  v6 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  *v5 = a1;
  v5[1] = a2;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
  return v4;
}

Swift::Void __swiftcall DOCDocumentPickerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1);
  if (([v1 didConfirmOrCancel] & 1) == 0)
  {
    v2 = [v1 pickerDelegate];
    if (v2)
    {
      [v2 documentPickerDidCancel_];
      swift_unknownObjectRelease();
    }
  }

  v3 = [v1 fullDocumentManagerViewController];
  [v3 dismissSearch];
}

id DOCDocumentPickerViewController.init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 sourceObserver:a2];

  return v4;
}

id DOCDocumentPickerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id DOCDocumentPickerViewController.init(style:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithStyle_];
}

void DOCCopyableBarButtonItem.copy(with:)(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  if (v4)
  {

    v6 = v4(v5);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    v7 = *v3;
    v8 = v3[1];
    v9 = (v6 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
    v10 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
    *v9 = *v3;
    v9[1] = v8;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
    a1[3] = type metadata accessor for DOCCopyableBarButtonItem();
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }
}

id DOCCopyableBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCCopyableBarButtonItem.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
  v2 = type metadata accessor for DOCCopyableBarButtonItem();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id DOCCopyableBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCopyableBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCDocumentPickerViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  if ([a1 forceClearBackground])
  {
    [a1 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance);
    swift_dynamicCast();
    [v3 setForceClearBackground_];
    [v1 setAppearance_];
  }

  else
  {
    v4.receiver = v1;
    v4.super_class = DOCDocumentPickerViewController;
    objc_msgSendSuper2(&v4, sel_effectiveAppearanceDidChange_, a1);
  }
}

id specialized DOCDocumentPickerViewController.init(configuration:context:)(void *a1, uint64_t a2)
{
  v2[OBJC_IVAR___DOCDocumentPickerViewController_didConfirmOrCancel] = 0;
  swift_unknownObjectWeakInit();
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
  swift_dynamicCast();
  v5 = v29;
  [v29 configureContextForDisplayingTab_];
  v6 = [v29 hostIdentifier];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x24C1FAD20](v7);
  }

  v8 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:0 hostIdentifier:v6];

  v28.receiver = v2;
  v28.super_class = DOCDocumentPickerViewController;
  v9 = objc_msgSendSuper2(&v28, sel_initWithConfiguration_sourceObserver_, v29, v8);
  v10 = v9;
  if (a2)
  {
    [v9 setPickerContext_];
  }

  else
  {
    v11 = [v5 urls];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(DOCPickerContext) initWithFPURLs_];

      [v10 setPickerContext_];
    }
  }

  v14 = v10;
  v15 = [v14 fullDocumentManagerViewController];
  [v15 setDelegate_];

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  type metadata accessor for DOCCopyableBarButtonItem();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v17;
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = static UIBarButtonItem.doc_adaptableDismissButton(_:primaryAction:)(1, v18);

  v20 = &v19[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
  v21 = *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
  *v20 = partial apply for closure #1 in DOCDocumentPickerViewController.init(configuration:context:);
  v20[1] = v16;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249BA0290;
  *(v22 + 32) = v19;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v23 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setAdditionalTrailingNavigationBarButtonItems_];

  v25 = v14;
  [v25 setModalPresentationStyle_];
  [v25 setModalInPresentation_];

  if (([v5 isFilesApp] & 1) == 0)
  {
    UIViewController.forcefullyRegisterForIconStyleChanges(with:)();
  }

  return v25;
}

void specialized DOCDocumentPickerViewController.documentBrowser(_:didPickDocumentsAt:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  [v1 setDidConfirmOrCancel_];
  v3 = [v1 pickerDelegate];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 documentPicker:v1 didConfirmDocumentsAtURLs:isa];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    [v3 documentPickerDidCancel_];
  }

  swift_unknownObjectRelease();
LABEL_7:

  UIViewController.doc_dismiss(animated:includingPresented:completion:)(1, 1, DOCGridLayout.specIconWidth.modify, 0);
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.presentGoToLocation()()
{
  [v0 setGoToFileProviderSources_];
  v1 = [v0 configuration];
  v2 = [v0 sourceObserver];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = objc_allocWithZone(DOCSourceOrderObserver);
    v8[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.presentGoToLocation();
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v8[3] = &block_descriptor_6;
    v6 = _Block_copy(v8);

    v7 = [v5 initWithConfiguration:v1 sourceObserver:v3 updateBlock:v6];

    _Block_release(v6);

    [v0 setSourceOrderObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCFullDocumentManagerViewController.sharedGoToFileProviderCandidateSource.getter@<X0>(void *a1@<X8>)
{
  if ([v1 goToFileProviderCandidateSource])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    v3 = type metadata accessor for DOCFileProviderSourcesCandidateSource();
    result = swift_dynamicCast();
    if (result)
    {
      a1[3] = v3;
      a1[4] = &protocol witness table for DOCFileProviderSourcesCandidateSource;
      *a1 = v5;
      return result;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v8, &_sypSgMd);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.presentGoToLocation()(void *a1, uint64_t a2)
{
  v2 = [a1 regularSources];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = MEMORY[0x277D84F90];
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      do
      {
        v9 = v7;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x24C1FC540](v9, v3);
          }

          else
          {
            if (v9 >= *(v4 + 16))
            {
              goto LABEL_33;
            }

            v10 = *(v3 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          type metadata accessor for DOCFileProviderSource();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v9;
          if (v7 == i)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x24C1FB090]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v20;
      }

      while (v7 != i);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v20 = v6;
    if (v8 >> 62)
    {
      break;
    }

    v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_38;
    }

LABEL_21:
    v12 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 status] | 2) == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *(v6 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
      if (v15 == v3)
      {
        v16 = v6;
        goto LABEL_39;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v3 = __CocoaSet.count.getter();
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_38:
  v16 = MEMORY[0x277D84F90];
LABEL_39:

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v16;

  DOCRunInMainThread(_:)();
}

void closure #3 in closure #1 in DOCFullDocumentManagerViewController.presentGoToLocation()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setCurrentGoToFileProviderSource_];
    type metadata accessor for DOCFileProviderSource();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 setGoToFileProviderSources_];

    DOCFullDocumentManagerViewController.presentGoToLocationViewController()();
    [v1 setSourceOrderObserver_];
  }
}

void DOCFullDocumentManagerViewController.presentGoToLocationViewController()()
{
  v1 = v0;
  v2 = [v0 goToFileProviderSources];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for DOCFileProviderSource();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 2 && (v7 = [v1 effectiveBrowserViewController]) != 0 && (v8 = v7, v9 = MEMORY[0x277D85000], v49 = (*((*MEMORY[0x277D85000] & *v7) + 0xE8))(), v8, v49))
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        (*((*v9 & *v10) + 0xA50))(v52);
        v12 = v53;
        v13 = v53;
        outlined destroy of DOCItemCollectionConfiguration(v52);
        if (v12)
        {
          v14 = [v1 configuration];
          type metadata accessor for DOCFileProviderSourcesCandidateSource();
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          *(v15 + 24) = v4;
          *(v15 + 32) = 0;

          [v1 setGoToFileProviderCandidateSource_];

          v16 = [v1 configuration];
          v17 = swift_allocObject();
          *(v17 + 16) = v16;
          *(v17 + 24) = v4;
          *(v17 + 32) = 1;

          [v1 setGoToHiddenFileProviderCandidateSource_];

          v19 = (*((*v9 & *v11) + 0xA68))(v18);
          [v1 setCurrentGoToFileProviderSource_];

          v50[3] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
          v50[4] = &protocol witness table for DOCConcreteLocation;
          v50[0] = v13;
          v20 = v13;
          DOCFullDocumentManagerViewController.candidateSourceForItems(at:)(v50, v51);
          __swift_destroy_boxed_opaque_existential_0(v50);
          v21 = [v1 configuration];
          v22 = [objc_opt_self() sharedManager];
          v23 = type metadata accessor for DOCFavoritesCandidateSource();
          v24 = swift_allocObject();
          *(v24 + 16) = v21;
          *(v24 + 24) = v22;
          v25 = [v1 view];
          if (v25)
          {
            v26 = v25;

            v27 = [v26 effectiveUserInterfaceLayoutDirection];

            v28 = type metadata accessor for DOCRecentLocationsCandidateSource();
            v29 = swift_allocObject();
            v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCGoToRecentLocationC_AC0fG15FolderCandidate_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            v29[2] = v27;
            v29[3] = v30;
            v29[5] = &protocol witness table for DOCFullDocumentManagerViewController;
            swift_unknownObjectUnownedInit();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToCandidateSource_pGMd);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_249BA08D0;
            *(v31 + 56) = v28;
            *(v31 + 64) = &protocol witness table for DOCRecentLocationsCandidateSource;
            *(v31 + 32) = v29;

            DOCFullDocumentManagerViewController.sharedGoToFileProviderCandidateSource.getter((v31 + 72));
            outlined init with copy of DOCSidebarItemIconProvider(v51, v31 + 112);
            *(v31 + 176) = v23;
            *(v31 + 184) = &protocol witness table for DOCFavoritesCandidateSource;
            *(v31 + 152) = v24;
            type metadata accessor for DOCCompositionalCandidateSource();
            v32 = swift_allocObject();
            v33 = objc_opt_self();

            v34 = [v33 mapTableWithKeyOptions:0 valueOptions:0];
            *(v32 + 16) = v31;
            *(v32 + 24) = v34;
            v35 = objc_allocWithZone(type metadata accessor for DOCGoToViewController());
            v36 = v20;

            v37 = specialized DOCGoToViewController.init(currentLocation:initialCandidateSource:)(v36, v32, v35);
            v38 = *((*v9 & *v37) + 0x100);
            v39 = swift_unknownObjectRetain();
            v38(v39, &protocol witness table for DOCFullDocumentManagerViewController);
            v40 = v37;
            [v40 setModalPresentationStyle_];
            [v40 setTransitioningDelegate_];

            v41 = [objc_opt_self() dismissingKeyCommandsWithAction_];
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
            v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v48 = v36;
            if (v42 >> 62)
            {
              goto LABEL_27;
            }

            for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
            {
              v44 = 0;
              while (1)
              {
                if ((v42 & 0xC000000000000001) != 0)
                {
                  v45 = MEMORY[0x24C1FC540](v44, v42);
                }

                else
                {
                  if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_26;
                  }

                  v45 = *(v42 + 8 * v44 + 32);
                }

                v46 = v45;
                v47 = v44 + 1;
                if (__OFADD__(v44, 1))
                {
                  break;
                }

                [v40 addKeyCommand_];

                ++v44;
                if (v47 == i)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              ;
            }

LABEL_28:

            [v1 presentViewController:v40 animated:1 completion:0];

            __swift_destroy_boxed_opaque_existential_0(v51);
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void DOCFullDocumentManagerViewController.candidateSourceForItems(at:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = [v2 currentGoToFileProviderSource];
  if (!v5 || (v6 = v5, outlined init with copy of DOCSidebarItemIconProvider(a1, &v95), __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pMd), type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation), !swift_dynamicCast()))
  {
    do
    {
LABEL_63:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_64:
      ;
    }

    while (v2 == 2 || v2 == 3);
LABEL_66:
    type metadata accessor for DOCBrowserViewContext(0);
    *(&v96 + 1) = v88;
    *&v95 = v2;
    doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(&v95);
  }

  v7 = [v2 configuration];
  v8 = [v2 configuration];
  v2 = [v8 browserViewContext];

  v91 = a2;
  if (v2 > 0)
  {
    if (v2 != 1)
    {
      goto LABEL_64;
    }

    v9 = 3;
  }

  else
  {
    if (v2)
    {
      goto LABEL_66;
    }

    v9 = 2;
  }

  v10 = v6;
  v11 = v94[0];
  v92 = v7;
  v12 = v11;
  v13 = [v11 node];
  v14 = v10;
  v15 = &selRef__setLocationsInBrowseTab_;
  v16 = [v14 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v17;
  v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  if (v22 != v21 || v19 != v20)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {

      v24 = v92;
      v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      goto LABEL_13;
    }

    v2 = [v14 identifier];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    if (v40 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v42 != v43)
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v44)
      {
        __break(1u);
      }

      else
      {
        if (*(v14 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) == 1)
        {
          v45 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
          v46 = [v92 hostIdentifier];
          LOBYTE(v15) = v9;
          if (!v46)
          {
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = MEMORY[0x24C1FAD20](v47);
          }

          [v45 setHostIdentifier_];

          v48 = [v92 maximumNumberOfItemsToFetch];
          v90 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v89 = *((*MEMORY[0x277D85000] & *v14) + 0x278);
          v49 = v89();
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;
          v9 = v12;
          if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
          {
            goto LABEL_23;
          }

          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v54 & 1) == 0)
          {
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;
            if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
            {
LABEL_23:

LABEL_28:
              [v45 setMaximumNumberOfItems_];
              v55 = v92;
              v56 = [v92 recentDocumentsContentTypes];
LABEL_29:
              isa = v56;
              v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              if (!isa)
              {
                type metadata accessor for UTType();
                static Array._unconditionallyBridgeFromObjectiveC(_:)();
                isa = Array._bridgeToObjectiveC()().super.isa;
              }

              [v45 setAllowedContentTypes_];
              goto LABEL_32;
            }

            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v70 & 1) == 0)
            {
              v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v73 = v72;
              if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
              {
              }

              else
              {
                v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v86 & 1) == 0)
                {
                  [v45 setMaximumNumberOfItems_];
                  v55 = v92;
                  v56 = [v92 documentContentTypes];
                  goto LABEL_29;
                }
              }

              v55 = v92;
              v87 = [v92 recentDocumentsContentTypes];
              v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              if (!v87)
              {
                type metadata accessor for UTType();
                static Array._unconditionallyBridgeFromObjectiveC(_:)();
                v87 = Array._bridgeToObjectiveC()().super.isa;
              }

              [v45 setAllowedContentTypes_];

              if ([v92 maximumNumberOfItemsToFetch] != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v45 setMaximumNumberOfItems_];
                goto LABEL_33;
              }

              isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              [v45 setMaximumNumberOfItems_];
LABEL_32:

LABEL_33:
              v58 = [objc_opt_self() defaultManager];
              v59 = v89();

              v60 = [v55 supportsRemovableFileProviders];
              v61 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(v59, v45, v60);

              v62 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
              v63 = v61;
              v24 = v92;
              v64 = v63;
              v29 = DOCNodeCollection.init(itemCollection:observedNode:)(v63, 0);

              swift_unknownObjectRelease();
              v13 = 0;
              goto LABEL_14;
            }
          }

          goto LABEL_28;
        }

        v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        LOBYTE(v15) = v9;
        if (v13)
        {

          v29 = 0;
          v9 = v12;
          v24 = v92;
          goto LABEL_14;
        }

        v44 = *(v14 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        v9 = v12;
        if (!v44)
        {

LABEL_45:
          v29 = 0;
LABEL_48:
          v13 = 0;
          v23 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          v24 = v92;
          goto LABEL_14;
        }

        v13 = v44;
        if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
        {

          v75 = [objc_opt_self() defaultManager];
          v76 = [v75 rootCollectionForProviderDomain_];

          v77 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
          v78 = v76;
          v29 = DOCNodeCollection.init(itemCollection:observedNode:)(v78, 0);

          goto LABEL_47;
        }

        v65 = specialized static DOCRootNode.rootNode(for:)(v13);
        if (v65)
        {
          LOBYTE(v95) = 1;
          v29 = _s26DocumentManagerExecutables17DOCNodeCollectionC3for13configuration6source12extraOptionsACSo0D0_p_So16DOCConfigurationCSgAA21DOCFileProviderSourceCSgSo016NodeNotificationJ0VSgtcfCTf4ennnn_nSo6FINodeC_Tt3g5(v65, 0, v6, 0x100000000uLL);
LABEL_47:

          goto LABEL_48;
        }

        if (one-time initialization token for UI == -1)
        {
LABEL_50:
          v79 = type metadata accessor for Logger();
          __swift_project_value_buffer(v79, static Logger.UI);
          v80 = v13;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *v83 = 138412290;
            *(v83 + 4) = v80;
            *v84 = v44;
            v85 = v80;
            _os_log_impl(&dword_2493AC000, v81, v82, "Getting nil rootNode for %@", v83, 0xCu);
            outlined destroy of CharacterSet?(v84, &_sSo8NSObjectCSgMd);
            MEMORY[0x24C1FE850](v84, -1, -1);
            MEMORY[0x24C1FE850](v83, -1, -1);
          }

          else
          {
          }

          goto LABEL_45;
        }
      }

      swift_once();
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_63;
  }

  v24 = v92;

LABEL_13:
  v26 = [objc_opt_self() defaultManager];
  v27 = [v26 newTrashCollection];

  v28 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
  v29 = DOCNodeCollection.init(itemCollection:observedNode:)(v27, 0);
  swift_unknownObjectRelease();
  v13 = 0;
  LOBYTE(v15) = v9;
  v9 = v12;
LABEL_14:
  *&v95 = v14;
  *(&v95 + 1) = v24;
  LOBYTE(v96) = v15;
  *(&v96 + 1) = v102[0];
  DWORD1(v96) = *(v102 + 3);
  *(&v96 + 1) = v9;
  LOWORD(v97) = 2;
  *(&v97 + 2) = v100;
  WORD3(v97) = v101;
  *(&v97 + 1) = 0;
  v98 = 0uLL;
  *&v99 = v13;
  *(&v99 + 1) = v29;
  v30 = type metadata accessor for DOCItemCollectionCandidateSource();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection] = 0;
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_semaphore;
  outlined init with copy of DOCItemCollectionConfiguration(&v95, v94);
  *&v31[v32] = dispatch_semaphore_create(0);
  v33 = &v31[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_updateHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v31[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_prefix];
  *v34 = 0;
  *(v34 + 1) = 0xE000000000000000;
  UUID.init()();
  LOBYTE(v94[0]) = 2;
  DOCItemSortDescriptor.init(type:isReversed:)(v94, 0, &v31[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_sortingDescriptor]);
  v35 = &v31[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_itemCollectionConfiguration];
  *v35 = v95;
  v36 = v96;
  v37 = v97;
  v38 = v99;
  *(v35 + 3) = v98;
  *(v35 + 4) = v38;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  v93.receiver = v31;
  v93.super_class = v30;
  v39 = objc_msgSendSuper2(&v93, v23[71]);
  v91[3] = v30;
  v91[4] = &protocol witness table for DOCItemCollectionCandidateSource;
  outlined destroy of DOCItemCollectionConfiguration(&v95);

  *v91 = v39;
}

void DOCFullDocumentManagerViewController.goToViewController(_:didPick:)(void *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of DOCSidebarItemIconProvider(a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pMd);
  v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  if (swift_dynamicCast())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    *(v6 + 56) = v5;
    *(v6 + 64) = lazy protocol witness table accessor for type DOCConcreteLocation and conformance NSObject();
    *(v6 + 32) = v9;
    v7 = v9;
    os_log(_:dso:log:type:_:)();

    [a1 dismissViewControllerAnimated:1 completion:0];
    type metadata accessor for DOCRecentLocationsCandidateSource();
    static DOCRecentLocationsCandidateSource.saveAsRecent(_:)(v7);
    v8 = [v3 hierarchyController];
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v7, v7, 0, 1, 0, 0, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id DOCFullDocumentManagerViewController.goToViewControllerDidClearRecents(_:)()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    return [static NSUserDefaults.docUserDefaults removeObjectForKey_];
  }

  return result;
}

id protocol witness for DOCGoToViewControllerDelegate.goToViewControllerDidClearRecents(_:) in conformance DOCFullDocumentManagerViewController()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    return [static NSUserDefaults.docUserDefaults removeObjectForKey_];
  }

  return result;
}

id DOCFullDocumentManagerViewController.animationController(forPresented:presenting:source:)()
{
  v0 = type metadata accessor for DOCModalBlurViewControllerTransition();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_backgroundView;
  type metadata accessor for DOCModalBlurViewControllerTransition.BackgroundView();
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_containerView;
  type metadata accessor for DOCModalBlurViewControllerTransition.ContainerView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_hostView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_direction] = 0;
  v6.receiver = v1;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_init);
}

id DOCFullDocumentManagerViewController.animationController(forDismissed:)()
{
  v0 = type metadata accessor for DOCModalBlurViewControllerTransition();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_backgroundView;
  type metadata accessor for DOCModalBlurViewControllerTransition.BackgroundView();
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_containerView;
  type metadata accessor for DOCModalBlurViewControllerTransition.ContainerView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_hostView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCModalBlurViewControllerTransition_direction] = 1;
  v6.receiver = v1;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_init);
}

id specialized DOCGoToViewController.init(currentLocation:initialCandidateSource:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20[3] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v20[4] = &protocol witness table for DOCConcreteLocation;
  v20[0] = a1;
  v19[3] = type metadata accessor for DOCCompositionalCandidateSource();
  v19[4] = &protocol witness table for DOCCompositionalCandidateSource;
  v19[0] = a2;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_suggestionsTableViewWidthConstraint] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView] = 0;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken] = 1;
  v6 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_scrollViewDidScrollObservation] = 0;
  v7 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  UUID.init()();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___goButton] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___topView] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___separatorView] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController] = 0;
  v8 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics];
  __asm
  {
    FMOV            V0.2D, #16.0
    FMOV            V1.2D, #12.0
  }

  *v8 = _Q0;
  *(v8 + 1) = _Q1;
  *(v8 + 4) = 0;
  v8[40] = 1;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  v8[80] = 1;
  *(v8 + 12) = 0;
  *(v8 + 13) = 0;
  *(v8 + 11) = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox] = 1;
  outlined init with copy of DOCSidebarItemIconProvider(v20, v18);
  swift_beginAccess();
  outlined assign with take of DOCGoToLocation?(v18, v7);
  swift_endAccess();
  outlined init with copy of DOCSidebarItemIconProvider(v19, &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource]);
  v17.receiver = a3;
  v17.super_class = type metadata accessor for DOCGoToViewController();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v15;
}

uint64_t specialized DOCFullDocumentManagerViewController.goToViewController(_:imageFor:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 24))(v13, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pMd);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  if (swift_dynamicCast())
  {
    v4 = [v12 fileProviderItem];
    if (v4)
    {
      v5 = v4;
      v6 = specialized DOCSourceListInterface_Default.nonThumbnailedIcon(forItem:)(v4);

      return v6;
    }

    outlined init with copy of DOCSidebarItemIconProvider(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pMd);
    if (!swift_dynamicCast())
    {

      return 0;
    }

    v7 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
    if (v7)
    {
      v8 = v12;
      if ([v7 isiCloudDriveProvider])
      {
        v9 = MEMORY[0x24C1FAD20](0x64756F6C6369, 0xE600000000000000);
        v6 = [objc_opt_self() systemImageNamed_];

        if (v6)
        {

LABEL_12:
          return v6;
        }
      }
    }

    else
    {
      v10 = v12;
    }

    v6 = [v12 iconPreferingSymbolImages];

    goto LABEL_12;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized DOCFullDocumentManagerViewController.goToViewController(_:didAppend:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of DOCSidebarItemIconProvider(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pMd);
  v3 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  if (!swift_dynamicCast())
  {
    while (1)
    {
LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v4 = v33;
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_30;
  }

LABEL_3:
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_249B9A480;
  *(v5 + 56) = v3;
  *(v5 + 64) = lazy protocol witness table accessor for type DOCConcreteLocation and conformance NSObject();
  *(v5 + 32) = v4;
  v32 = v4;
  os_log(_:dso:log:type:_:)();

  v6 = [v2 currentGoToFileProviderSource];
  if (!v6)
  {
    goto LABEL_32;
  }

  v3 = v6;
  v29 = v2;
  v7 = [v2 goToFileProviderSources];
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = v7;
  type metadata accessor for DOCFileProviderSource();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v32 sourceIdentifier];
  v10 = [v3 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_9:

    goto LABEL_27;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_9;
  }

  v28 = v3;
  if (v9 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_32;
    }
  }

  v2 = 0;
  v30 = v9 & 0xFFFFFFFFFFFFFF8;
  v31 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v31)
    {
      v17 = MEMORY[0x24C1FC540](v2, v9);
    }

    else
    {
      if (v2 >= *(v30 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v9 + 8 * v2 + 32);
    }

    v18 = v17;
    v4 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
      goto LABEL_3;
    }

    v3 = v9;
    v19 = [v17 identifier];
    v20 = [v32 sourceIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_26;
    }

    ++v2;
    v9 = v3;
    if (v4 == v16)
    {
      goto LABEL_32;
    }
  }

LABEL_26:

  v27 = v18;
  [v29 setCurrentGoToFileProviderSource_];

  v3 = v28;
LABEL_27:
}

unint64_t lazy protocol witness table accessor for type DOCConcreteLocation and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for DOCConcreteLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject);
  }

  return result;
}

uint64_t specialized DOCFullDocumentManagerViewController.recentsLocationsCandidateSource(_:shouldOfferCandidateFromDocumentSourceWithIdentifier:)()
{
  v1 = [v0 goToFileProviderSources];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCFileProviderSource();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
LABEL_21:
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      v6 = v5;
      if (v4 == v5)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {

        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v6 + 1;
    }

    while ((v15 & 1) == 0);

    return v4 != v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined assign with take of DOCGoToLocation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return outlined destroy of URL?(v9);
}

id DOCOpenWithMenuController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static DOCOpenWithMenuController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DOCOpenWithMenuController.shared;

  return v1;
}

void one-time initialization function for openWithMenuTitle()
{
  v0 = _DocumentManagerBundle();
  if (v0)
  {
    v1 = v0;
    v6._object = 0x8000000249BCABE0;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x746957206E65704FLL;
    v3._object = 0xE900000000000068;
    v4._countAndFlagsBits = 0x746957206E65704FLL;
    v4._object = 0xE900000000000068;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v6);

    static DOCOpenWithMenuController.openWithMenuTitle = v5;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for openWithMenuImage()
{
  v0 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249BCABC0);
  v1 = [objc_opt_self() systemImageNamed_];

  static DOCOpenWithMenuController.openWithMenuImage = v1;
}

uint64_t static DOCOpenWithMenuController.openWithMenuImage.getter()
{
  if (one-time initialization token for openWithMenuImage != -1)
  {
    swift_once();
  }

  v0 = static DOCOpenWithMenuController.openWithMenuImage;
  v1 = static DOCOpenWithMenuController.openWithMenuImage;
  return v0;
}

void one-time initialization function for preferQuickLookMenuTitle()
{
  v0 = _DocumentManagerBundle();
  if (v0)
  {
    v1 = v0;
    v6._object = 0x8000000249BCAB90;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x8000000249BCAB70;
    v4._object = 0x8000000249BCAB70;
    v6._countAndFlagsBits = 0xD00000000000002BLL;
    v3._countAndFlagsBits = 0xD000000000000017;
    v4._countAndFlagsBits = 0xD000000000000017;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v6);

    static DOCOpenWithMenuController.preferQuickLookMenuTitle = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static DOCOpenWithMenuController.openWithMenuTitle.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

void DOCOpenWithMenuController.openWithDeferredMenu(for:suppressTitle:)(uint64_t a1, char a2)
{
  swift_getObjectType();
  if (DOCNode.supportsOpenWith.getter())
  {
    if (a2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      if (one-time initialization token for openWithMenuTitle != -1)
      {
        swift_once();
      }

      v6 = *(&static DOCOpenWithMenuController.openWithMenuTitle + 1);
      v5 = static DOCOpenWithMenuController.openWithMenuTitle;
      v7 = one-time initialization token for openWithMenuImage;

      if (v7 != -1)
      {
        swift_once();
      }

      v4 = static DOCOpenWithMenuController.openWithMenuImage;
      v8 = static DOCOpenWithMenuController.openWithMenuImage;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_249BA0290;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in DOCOpenWithMenuController.openWithDeferredMenu(for:suppressTitle:);
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_7;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v14 = [v10 elementWithUncachedProvider_];
    _Block_release(v13);
    *(preferredElementSize + 32) = v14;
    v15._countAndFlagsBits = v5;
    v15._object = v6;
    v19.value.super.isa = v4;
    v19.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, v15, 0, v19, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v17);
  }
}

void closure #1 in DOCOpenWithMenuController.openWithDeferredMenu(for:suppressTitle:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xA0))(a4, a1, a2);
  }

  else
  {
    a1(MEMORY[0x277D84F90]);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ()(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v4);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void DOCOpenWithMenuController.alwaysOpenWithMenu(for:delegate:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  if (DOCNode.supportsAlwaysOpenWith.getter())
  {
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    v13[4] = partial apply for closure #1 in DOCOpenWithMenuController.alwaysOpenWithMenu(for:delegate:completion:);
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v13[3] = &block_descriptor_9_0;
    v11 = _Block_copy(v13);
    v12 = v5;
    swift_unknownObjectRetain();

    [a1 fetchURL_];
    _Block_release(v11);
  }

  else
  {
    a3(0);
  }
}

void closure #1 in DOCOpenWithMenuController.alwaysOpenWithMenu(for:delegate:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v38 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of URL?(v14);
  }

  else
  {
    v38[0] = a5;
    (*(v16 + 32))(v19, v14, v15);
    v20 = objc_allocWithZone(MEMORY[0x277D014D0]);
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v24 = [v20 initWithURL_];

    v25 = [objc_allocWithZone(MEMORY[0x277D014E0]) initWithBindable_];
    v39[0] = 0;
    v26 = [v25 prepareAndReturnError_];
    v27 = v39[0];
    if (v26)
    {
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = v25;
      v29 = v38[0];
      v28[4] = a4;
      v28[5] = v29;
      v28[6] = a6;
      v30 = v27;
      v31 = a3;
      v32 = v25;
      swift_unknownObjectRetain();

      DOCRunInMainThread(_:)();

      (*(v16 + 8))(v19, v15);
    }

    else
    {
      v33 = v39[0];
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v16 + 8))(v19, v15);
      v35 = swift_allocObject();
      v36 = v38[0];
      v35[2] = v34;
      v35[3] = v36;
      v35[4] = a6;

      v37 = v34;
      DOCRunInMainThread(_:)();
    }
  }
}

void closure #1 in closure #1 in DOCOpenWithMenuController.alwaysOpenWithMenu(for:delegate:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id))
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_setHandlerFlow);
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_setHandlerFlow) = a2;
  v7 = a2;

  [v7 setDelegate_];
  v17 = 0;
  v8 = [v7 buildMenuAndReturnError_];
  v9 = v17;
  if (v8)
  {
    v10 = v8;
    a4(v8);
  }

  else
  {
    v11 = v9;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249B9A480;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v17 = 0xD000000000000026;
    v18 = 0x8000000249BCAB10;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    MEMORY[0x24C1FAEA0](v14);

    v15 = v17;
    v16 = v18;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 32) = v15;
    *(v13 + 40) = v16;
    print(_:separator:terminator:)();

    a4(0);
  }
}

uint64_t closure #2 in closure #1 in DOCOpenWithMenuController.alwaysOpenWithMenu(for:delegate:completion:)(uint64_t a1, uint64_t (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  MEMORY[0x24C1FAEA0](v4);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD000000000000027;
  *(v3 + 40) = 0x8000000249BCAB40;
  print(_:separator:terminator:)();

  return a2(0);
}

void DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_getObjectType();
  if (DOCNode.supportsOpenWith.getter())
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = v4;
    v9[4] = a2;
    v9[5] = a3;
    v9[6] = ObjectType;
    v12[4] = partial apply for closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:);
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v12[3] = &block_descriptor_15;
    v10 = _Block_copy(v12);
    swift_unknownObjectRetain();
    v11 = v4;

    [a1 fetchURL_];
    _Block_release(v10);
  }

  else
  {
    a2(MEMORY[0x277D84F90]);
  }
}

uint64_t closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v67 = a6;
  v70 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v65 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v57 - v21;
  outlined init with copy of URL?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of URL?(v14);
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = v67;

    DOCRunInMainThread(_:)();
  }

  else
  {
    v61 = a4;
    v64 = a5;
    v60 = *(v16 + 32);
    v60(v22, v14, v15);
    v25 = [objc_opt_self() defaultPermission];
    v62 = a3;
    v26 = [v25 dataOwnerStateForNode_];

    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = [objc_opt_self() documentProxyForURL:v28 isContentManaged:v26 == 1 sourceAuditToken:0];

    v31 = [objc_allocWithZone(MEMORY[0x277D014D0]) initWithDocumentProxy_];
    v32 = objc_allocWithZone(MEMORY[0x277D014D8]);
    v63 = v31;
    v33 = [v32 initWithBindable_];
    v68 = 0;
    v34 = [v33 prepareAndReturnError_];
    v35 = v68;
    if (v34)
    {
      v59 = v16;
      v36 = v65;
      (*(v16 + 16))(v65, v22, v15);
      v37 = *(v16 + 80);
      v38 = v15;
      v39 = v67;
      v40 = (v37 + 40) & ~v37;
      v57 = v30;
      v58 = v22;
      v41 = (v17 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v44 = v61;
      v43 = v62;
      *(v42 + 2) = v61;
      *(v42 + 3) = v33;
      *(v42 + 4) = v43;
      v60(&v42[v40], v36, v38);
      v45 = &v42[v41];
      *v45 = v64;
      *(v45 + 1) = v39;
      *&v42[(v41 + 23) & 0xFFFFFFFFFFFFFFF8] = v66;

      v46 = v35;
      v47 = v44;
      v48 = v33;
      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();

      return (*(v59 + 8))(v58, v38);
    }

    else
    {
      v49 = v22;
      v50 = v68;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_249B9A480;
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v68 = 0xD000000000000020;
      v69 = 0x8000000249BCAAC0;
      swift_getErrorValue();
      v53 = Error.localizedDescription.getter();
      MEMORY[0x24C1FAEA0](v53);

      v54 = v68;
      v55 = v69;
      *(v52 + 56) = MEMORY[0x277D837D0];
      *(v52 + 32) = v54;
      *(v52 + 40) = v55;
      print(_:separator:terminator:)();

      v56 = swift_allocObject();
      *(v56 + 16) = v64;
      *(v56 + 24) = v67;

      DOCRunInMainThread(_:)();

      return (*(v16 + 8))(v49, v15);
    }
  }
}

void closure #1 in closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t), uint64_t a6)
{
  v43 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v15 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_openWithFlow);
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_openWithFlow) = a2;
  v16 = a2;

  [v16 setDelegate_];
  v46 = 0;
  v17 = [v16 buildMenuAndReturnError_];
  if (!v17)
  {
    v29 = v46;
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249B9A480;
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v46 = 0xD00000000000001FLL;
    v47 = 0x8000000249BCAAF0;
    swift_getErrorValue();
    v32 = Error.localizedDescription.getter();
    MEMORY[0x24C1FAEA0](v32);

    v33 = v46;
    v34 = v47;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 32) = v33;
    *(v31 + 40) = v34;
    print(_:separator:terminator:)();

    a5(MEMORY[0x277D84F90]);

    return;
  }

  v18 = v17;
  v44 = a6;
  v45 = a5;
  v19 = v46;
  v20 = [v18 children];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v21;
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_9;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v26)
  {
LABEL_9:

    goto LABEL_20;
  }

  if (v24 == v27 && v26 == v28)
  {

LABEL_11:
    if (one-time initialization token for preferQuickLookMenuTitle != -1)
    {
      swift_once();
    }

    v42 = static DOCOpenWithMenuController.preferQuickLookMenuTitle;
    swift_getObjectType();

    v36 = DOCNode.preferQuicklook.getter();
    v37 = v43;
    v41 = (v36 & 1) != 0 && !URL.hasStrongBinding.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    (*(v12 + 16))(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v11);
    v38 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v39 = swift_allocObject();
    (*(v12 + 32))(v39 + v38, &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    *(v39 + ((v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    swift_unknownObjectRetain();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x24C1FB090]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v46;
    goto LABEL_20;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_11;
  }

LABEL_20:
  v45(v21);
}

void closure #1 in closure #1 in closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(void *a1)
{
  v1 = [a1 state];
  if (!v1)
  {
    URL.removeStrongBinding()();
  }

  swift_getObjectType();
  DOCNode.preferQuicklook.setter(v1 == 0);
}

uint64_t DOCOpenWithMenuController.openWithMenuDidSelectAppStoreItem(from:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000023;
  *(v0 + 40) = 0x8000000249BCA910;
  print(_:separator:terminator:)();
}

void @objc DOCOpenWithMenuController.openWithMenu(from:didSelect:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t DOCOpenWithMenuController.openWithFlowDidOpenAppStore(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x8000000249BCA940;
  print(_:separator:terminator:)();
}

id DOCOpenWithMenuController.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_openWithFlow] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_setHandlerFlow] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCOpenWithMenuController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCOpenWithMenuController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCOpenWithMenuController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc LSApplicationRecord.init(url:allowPlaceholder:)(uint64_t a1, char a2)
{
  v3 = v2;
  v17 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v17);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

uint64_t specialized DOCOpenWithMenuController.openWithMenu(from:didSelect:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v29 - v10;
  v12 = [a1 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v14 = @nonobjc LSApplicationRecord.init(url:allowPlaceholder:)(v11, 0);
  if (v14)
  {
    v20 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9A480;
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v30 = 0xD000000000000015;
    v31 = 0x8000000249BCAAA0;
    v22 = [v20 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    MEMORY[0x24C1FAEA0](v23, v25);

    v26 = v30;
    v27 = v31;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 32) = v26;
    *(v21 + 40) = v27;
    print(_:separator:terminator:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9A480;
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v30 = 0xD000000000000019;
    v31 = 0x8000000249BCAA80;
    v16 = [a1 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type URL and conformance URL();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v17);

    (*(v3 + 8))(v6, v2);
    v18 = v30;
    v19 = v31;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = v18;
    *(v15 + 40) = v19;
    print(_:separator:terminator:)();
  }
}

uint64_t specialized DOCOpenWithMenuController.openWithFlow(_:didOpenUsing:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  MEMORY[0x24C1FAEA0](0x752064656E65704FLL, 0xED000020676E6973);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CSUIBoundBundleInfo_pMd);
  _print_unlocked<A, B>(_:_:)();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

uint64_t specialized DOCOpenWithMenuController.openWithFlow(_:didFailToOpenUsing:error:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(26);
  MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BCAA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CSUIBoundBundleInfo_pMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _print_unlocked<A, B>(_:_:)();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

uint64_t specialized DOCOpenWithMenuController.openWithFlow(_:didFailToOpenAppStoreWithError:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(28);
  MEMORY[0x24C1FAEA0](0xD00000000000001ALL, 0x8000000249BCAA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _print_unlocked<A, B>(_:_:)();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

void partial apply for closure #1 in closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  closure #1 in closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(v3, v4, v5, v0 + v2, v7, v8);
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(void *a1)
{
  type metadata accessor for URL();

  closure #1 in closure #1 in closure #1 in DOCOpenWithMenuController.fetchOpenWithMenuElements(for:handler:)(a1);
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1)
{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

uint64_t DOCFileProviderSyncStateFooterView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCFileProviderSyncStateFooterView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCFileProviderSyncStateFooterView.init(with:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_metrics];
  __asm { FMOV            V1.2D, #4.0 }

  *v3 = xmmword_249BA1000;
  *(v3 + 1) = _Q1;
  *(v3 + 4) = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___progressBar] = 1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___separatorLabel] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButtonContainerView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___titleContainer] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___subtitleContainer] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___mainContainer] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCFileProviderSyncStateFooterView();

  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DOCFileProviderSyncStateFooterView.setUpMainContainer()();

  return v9;
}

Swift::Void __swiftcall DOCFileProviderSyncStateFooterView.startObserving()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel;
  v2 = *(**&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel] + 184);

  v3 = v0;
  v2(v0, &protocol witness table for DOCFileProviderSyncStateFooterView);

  v4 = *(**&v0[v1] + 520);

  v4(v5);
}

Swift::Void __swiftcall DOCFileProviderSyncStateFooterView.stopObserving()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel;
  v2 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 528);

  v2(v3);

  v4 = *(**(v0 + v1) + 184);

  v4(0, 0);
}

uint64_t DOCFileProviderSyncStateFooterView.progressFractionDidChange(_:)(void *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = v2;
  outlined copy of DOCFileProviderSyncStateFooterViewModel.State(a1, a2);
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterView.progressFractionDidChange(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  DOCFileProviderSyncStateFooterView.updateTitleLabel(state:localizedDisconnectedText:)(a2, a3, a3, 0);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xB0))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCFileProviderSyncStateFooterView.syncStateDidChange(_:localizedDisconnectedText:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = v4;
  outlined copy of DOCFileProviderSyncStateFooterViewModel.State(a1, a2);

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterView.syncStateDidChange(_:localizedDisconnectedText:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  DOCFileProviderSyncStateFooterView.updateViews(state:localizedDisconnectedText:)(a2, a3, a4, a5);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xB0))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCFileProviderSyncStateFooterView.setUpMainContainer()()
{
  v1 = DOCFileProviderSyncStateFooterView.mainContainer.getter();
  [v0 addSubview_];

  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA0470;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___mainContainer;
  v5 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___mainContainer] leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] topAnchor];
  v12 = [v0 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v3 + 48) = v13;
  v14 = [*&v0[v4] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v3 + 56) = v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints_];
}

void outlined consume of DOCFileProviderSyncStateFooterViewModel.State(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

id outlined copy of DOCFileProviderSyncStateFooterViewModel.State(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

char *DOCFileProviderSyncStateFooterView.progressBar.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___progressBar);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in DOCFileProviderSyncStateFooterView.progressBar.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of DOCProgressCollectionIndicatorView??(v4);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v2);
  return v3;
}

char *closure #1 in DOCFileProviderSyncStateFooterView.progressBar.getter(uint64_t a1)
{
  v1 = *(**(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 312);

  v3 = v1(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorView());

  v5 = specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(0, v3, v4, 0.3);
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA1010;
  v8 = v5;
  v9 = [v8 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v7 + 32) = v10;
  v11 = [v8 widthAnchor];

  v12 = [v11 constraintEqualToConstant_];
  LODWORD(v13) = 1144750080;
  [v12 setPriority_];
  *(v7 + 40) = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints_];

  return v8;
}

id closure #1 in DOCFileProviderSyncStateFooterView.titleLabel.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76968];
  v5 = [a1 traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  [v2 setNumberOfLines_];
  LODWORD(v7) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v8];
  return v2;
}

id closure #1 in DOCFileProviderSyncStateFooterView.subtitleLabel.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76968];
  v5 = [a1 traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  [v2 setNumberOfLines_];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  LODWORD(v8) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v9];
  return v2;
}

id DOCFileProviderSyncStateFooterView.titleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in DOCFileProviderSyncStateFooterView.separatorLabel.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76968];
  v5 = [a1 traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTextAlignment_];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  v8 = MEMORY[0x24C1FAD20](10649826, 0xA300000000000000);
  [v2 setText_];

  LODWORD(v9) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v10];
  return v2;
}

id DOCFileProviderSyncStateFooterView.actionButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton);
  }

  else
  {
    v4 = closure #1 in DOCFileProviderSyncStateFooterView.actionButton.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCFileProviderSyncStateFooterView.actionButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  static UIButton.Configuration.plain()();

  UIButton.Configuration.contentInsets.setter();
  (*(v5 + 104))(v8, *MEMORY[0x277D74FF8], v4);
  UIButton.Configuration.titleAlignment.setter();
  (*(v10 + 16))(v3, v13, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  UIButton.configuration.setter();
  [v14 setDeliversTouchesForGesturesToSuperview_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v16];
  (*(v10 + 8))(v13, v9);
  return v14;
}

id DOCFileProviderSyncStateFooterView.titleContainer.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v7 setAxis_];
    [v7 setDistribution_];
    [v7 setSpacing_];
    [v7 setAlignment_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void DOCFileProviderSyncStateFooterView.updateTitleLabel(state:localizedDisconnectedText:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = *(**(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 288);

    v9 = v7(v8);
    v11 = v10;

    v12 = _DocumentManagerBundle();
    if (!v12)
    {
      __break(1u);
      goto LABEL_33;
    }

    v13 = v12;
    v69._object = 0x8000000249BCAFD0;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._countAndFlagsBits = 0xD000000000000017;
    v15._object = 0x8000000249BCAFB0;
    v69._countAndFlagsBits = 0xD00000000000006CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v69);

    v6 = DOCFileProviderSyncStateFooterView.titleLabel.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249B9FA70;
    v18 = MEMORY[0x277D83C10];
    *(v17 + 56) = MEMORY[0x277D83B88];
    *(v17 + 64) = v18;
    *(v17 + 32) = a1;
    *(v17 + 96) = MEMORY[0x277D837D0];
    *(v17 + 104) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 72) = v9;
    *(v17 + 80) = v11;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v20;

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          v44 = _DocumentManagerBundle();
          if (v44)
          {
            v24 = v44;
            v65 = 0x8000000249BCB040;
            v25 = 0x20676E69636E7953;
            v26 = 0xEF40252068746977;
            v27 = 0x617A696C61636F4CLL;
            v28 = 0xEB00000000656C62;
            v29 = 0xD00000000000009ALL;
            goto LABEL_23;
          }

          goto LABEL_36;
        }

        v23 = _DocumentManagerBundle();
        if (v23)
        {
          v24 = v23;
          v65 = 0x8000000249BCB0E0;
          v25 = 0x77206465636E7953;
          v26 = 0xEE00402520687469;
          v27 = 0x617A696C61636F4CLL;
          v28 = 0xEB00000000656C62;
          v29 = 0xD00000000000003ELL;
LABEL_23:
          v46._countAndFlagsBits = 0;
          v46._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v25, *&v27, v24, v46, *&v29);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_249B9A480;
          v48 = *(**(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 288);

          v50 = v48(v49);
          v52 = v51;

          *(v47 + 56) = MEMORY[0x277D837D0];
          *(v47 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v47 + 32) = v50;
          *(v47 + 40) = v52;
          v53 = static String.localizedStringWithFormat(_:_:)();
          v55 = v54;

          v6 = DOCFileProviderSyncStateFooterView.titleLabel.getter();
          v67 = MEMORY[0x24C1FAD20](v53, v55);
LABEL_28:

          [v6 setText_];
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      goto LABEL_16;
    }

    if (a1 == 3)
    {
LABEL_16:
      v37 = _DocumentManagerBundle();
      v38 = v37;
      if (!a4)
      {
        if (!v37)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v66 = 0x8000000249BCB140;
        v39 = 0x617A696C61636F4CLL;
        v40 = 0xEB00000000656C62;
        v43 = 0xD000000000000016;
        v41 = 0x8000000249BCB120;
        v42 = 0xD000000000000072;
        goto LABEL_26;
      }

      if (v37)
      {
        v66 = 0x8000000249BCB1E0;
        v39 = 0x617A696C61636F4CLL;
        v40 = 0xEB00000000656C62;
        v41 = 0x8000000249BCB1C0;
        v42 = 0xD000000000000041;
        v43 = 0xD000000000000011;
LABEL_26:
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v43, *&v39, v38, v56, *&v42);

        v6 = DOCFileProviderSyncStateFooterView.titleLabel.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_249B9A480;
        v58 = *(**(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 288);

        v60 = v58(v59);
        v62 = v61;

        *(v57 + 56) = MEMORY[0x277D837D0];
        *(v57 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v57 + 32) = v60;
        *(v57 + 40) = v62;
        v63 = static String.localizedStringWithFormat(_:_:)();
        object = v64;

        v22 = v63;
        goto LABEL_27;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (a1 != 4)
    {
      v45 = _DocumentManagerBundle();
      if (v45)
      {
        v24 = v45;
        v65 = 0x8000000249BCAF00;
        v25 = 0x20676E69636E7953;
        v26 = 0xEF40252068746977;
        v27 = 0x617A696C61636F4CLL;
        v28 = 0xEB00000000656C62;
        v29 = 0xD00000000000005ALL;
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    v6 = DOCFileProviderSyncStateFooterView.titleLabel.getter();
    v30 = _DocumentManagerBundle();
    if (!v30)
    {
      goto LABEL_35;
    }

    v31 = v30;
    v70._object = 0x8000000249BCAF60;
    v32._countAndFlagsBits = 0x676E697461647055;
    v32._object = 0xAB00000000A680E2;
    v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v33.value._object = 0xEB00000000656C62;
    v70._countAndFlagsBits = 0xD00000000000004BLL;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v70);
    countAndFlagsBits = v35._countAndFlagsBits;
    object = v35._object;

LABEL_6:
    v22 = countAndFlagsBits;
LABEL_27:
    v67 = MEMORY[0x24C1FAD20](v22, object);
    goto LABEL_28;
  }

  v6 = DOCFileProviderSyncStateFooterView.titleLabel.getter();
  v67 = [a1 title];
  [v6 setText_];
LABEL_29:
}

void DOCFileProviderSyncStateFooterView.updateSubtitleLabel(state:localizedDisconnectedText:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v5 = DOCFileProviderSyncStateFooterView.subtitleLabel.getter();
    v6 = [a1 subTitle];
  }

  else
  {
    if (a2 != 2 || a1)
    {
      return;
    }

    v10 = DOCFileProviderSyncStateFooterView.subtitleLabel.getter();
    v11 = a4;
    v5 = v10;
    if (!v11)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = MEMORY[0x24C1FAD20](a3);
  }

  v7 = v6;
LABEL_7:
  v12 = v7;
  [v5 setText_];
}

void DOCFileProviderSyncStateFooterView.updateActionButton(state:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v77 - v26;
  v30 = MEMORY[0x28223BE20](v28, v29);
  v32 = &v77 - v31;
  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    v47 = [a1 actions];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCICloudQuotaInAppAction);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v48 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_14;
      }
    }

    else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x24C1FC540](0, v48);
      }

      else
      {
        if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v49 = *(v48 + 32);
      }

      v50 = v49;

LABEL_25:
      v69 = DOCFileProviderSyncStateFooterView.actionButton.getter();
      UIButton.configuration.getter();
      v70 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v70 - 8) + 48))(v19, 1, v70))
      {
        outlined init with copy of UIButton.Configuration?(v19, v27);
        UIButton.configuration.setter();

        outlined destroy of UIButton.Configuration?(v19);
      }

      else
      {
        if (v50)
        {
          v71 = [v50 title];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v72 = *MEMORY[0x277D76968];
        v73 = [v3 traitCollection];
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v78 = [objc_opt_self() preferredFontForTextStyle:v72 compatibleWithTraitCollection:v73];
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();

        v74 = type metadata accessor for AttributedString();
        (*(*(v74 - 8) + 56))(v11, 0, 1, v74);
        UIButton.Configuration.attributedTitle.setter();
        UIButton.configuration.setter();
      }

      v75 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      *(swift_allocObject() + 16) = v50;
      v76 = v50;
      v58 = v75;
      v60 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v58 setDoc:v60 primaryAction:?];

      goto LABEL_31;
    }

    v50 = 0;
    goto LABEL_25;
  }

  if (a2 != 2)
  {
    return;
  }

  if (a1 == 2)
  {
LABEL_9:
    v40 = _DocumentManagerBundle();
    if (v40)
    {
      v41 = v40;
      v80._object = 0x8000000249BCAE40;
      v42._countAndFlagsBits = 0x6573756150;
      v43.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v43.value._object = 0xEB00000000656C62;
      v42._object = 0xE500000000000000;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v80._countAndFlagsBits = 0xD000000000000037;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v80);

      v45 = DOCFileProviderSyncStateFooterView.actionButton.getter();
      UIButton.configuration.getter();
      v46 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v46 - 8) + 48))(v32, 1, v46))
      {

        outlined init with copy of UIButton.Configuration?(v32, v27);
        UIButton.configuration.setter();

        outlined destroy of UIButton.Configuration?(v32);
      }

      else
      {
        v51 = *MEMORY[0x277D76968];
        v52 = [v3 traitCollection];
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v78 = [objc_opt_self() preferredFontForTextStyle:v51 compatibleWithTraitCollection:v52];
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();

        v53 = type metadata accessor for AttributedString();
        (*(*(v53 - 8) + 56))(v15, 0, 1, v53);
        UIButton.Configuration.attributedTitle.setter();
        UIButton.configuration.setter();
      }

      v54 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton;
      [*&v3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton] setUserInteractionEnabled_];
      v55 = *&v3[v54];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v3;
      v58 = v55;
      v59 = v3;
      goto LABEL_20;
    }

    goto LABEL_35;
  }

  if (a1 != 3)
  {
    return;
  }

  v33 = _DocumentManagerBundle();
  if (!v33)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v34 = v33;
  v79._object = 0x8000000249BCAE00;
  v35._countAndFlagsBits = 0x656D75736552;
  v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v36.value._object = 0xEB00000000656C62;
  v79._countAndFlagsBits = 0xD000000000000038;
  v35._object = 0xE600000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v79);

  v38 = DOCFileProviderSyncStateFooterView.actionButton.getter();
  UIButton.configuration.getter();
  v39 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v39 - 8) + 48))(v23, 1, v39))
  {

    outlined init with copy of UIButton.Configuration?(v23, v27);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v23);
  }

  else
  {
    v61 = *MEMORY[0x277D76968];
    v62 = [v3 traitCollection];
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v78 = [objc_opt_self() preferredFontForTextStyle:v61 compatibleWithTraitCollection:v62];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();

    v63 = type metadata accessor for AttributedString();
    (*(*(v63 - 8) + 56))(v15, 0, 1, v63);
    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
  }

  v64 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton;
  [*&v3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton] setUserInteractionEnabled_];
  v65 = *&v3[v64];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = v3;
  v68 = v3;
  v58 = v65;
LABEL_20:
  v60 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v58 setDoc:v60 primaryAction:?];
LABEL_31:
}