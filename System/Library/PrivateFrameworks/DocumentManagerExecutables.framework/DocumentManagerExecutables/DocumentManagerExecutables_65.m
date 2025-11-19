void specialized determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, unint64_t a7, char a8, void (*a9)(void), unint64_t a10, unsigned __int8 a11, void *a12)
{
  v168 = a6;
  v169 = a7;
  v162 = a4;
  v163 = a5;
  v166 = a3;
  v171 = a10;
  v170 = a9;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v158 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v165 = &v152 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v161 = &v152 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v160 = &v152 - v27;
  v167 = v28;
  MEMORY[0x28223BE20](v29, v30);
  v159 = &v152 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v34 = MEMORY[0x28223BE20](v32 - 8, v33);
  v36 = &v152 - v35;
  v37 = *(v16 + 16);
  v172 = a1;
  v173 = v37;
  v174 = v16 + 16;
  (v37)(&v152 - v35, a1, v15, v34);
  v38 = *(v16 + 56);
  v175 = v15;
  v38(v36, 0, 1, v15);
  v164 = a2;
  v39 = v169;
  LODWORD(v169) = a11;
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v36, a2, v168, v39, a11, v178, a8);
  outlined destroy of CharacterSet?(v36, &_s10Foundation3URLVSgMd);
  if (!v178[0])
  {
    static LaunchUtils.installConfigurationProfile(from:completionBlock:)(v172, v170, v171);
    return;
  }

  v157 = v16;
  v40 = v16;
  if (v178[0] == 1)
  {
    v41 = v175;
    v42 = v172;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.UI);
    v44 = v159;
    v173(v159, v42, v41);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v176[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, v176);
      *(v47 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v40 + 8))(v44, v41);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v176);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_2493AC000, v45, v46, "%s should quicklook: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v48, -1, -1);
      MEMORY[0x24C1FE850](v47, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v44, v41);
    }

    v170(0);
  }

  else
  {
    v53 = v16;
    v54 = v178[2];
    v168 = v178[1];

    v55 = v175;
    v56 = v172;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v154 = a12;
    v57 = type metadata accessor for Logger();
    v58 = __swift_project_value_buffer(v57, static Logger.UI);
    v59 = v160;
    v173(v160, v56, v55);

    v155 = v58;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    v62 = os_log_type_enabled(v60, v61);
    v159 = v54;
    if (v62)
    {
      v63 = swift_slowAlloc();
      LODWORD(v152) = v61;
      v64 = v63;
      v156 = swift_slowAlloc();
      v176[0] = v156;
      *v64 = 136315650;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, v176);
      *(v64 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v153 = *(v53 + 8);
      v153(v59, v55);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v176);

      *(v64 + 14) = v68;
      *(v64 + 22) = 2080;
      *(v64 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v54, v176);
      _os_log_impl(&dword_2493AC000, v60, v152, "%s should open: %s in: %s", v64, 0x20u);
      v69 = v156;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v69, -1, -1);
      MEMORY[0x24C1FE850](v64, -1, -1);
    }

    else
    {

      v153 = *(v53 + 8);
      v153(v59, v55);
    }

    v70 = v161;
    v173(v161, v56, v55);
    v71 = *(v53 + 80);
    v72 = (v71 + 32) & ~v71;
    v73 = (v167 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
    v152 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 39) & 0xFFFFFFFFFFFFFFF8;
    v160 = v71;
    v76 = swift_allocObject();
    v77 = v171;
    *(v76 + 16) = v170;
    *(v76 + 24) = v77;
    v78 = *(v53 + 32);
    v170 = (v53 + 32);
    v161 = v78;
    (v78)(v76 + v72, v70, v175);
    v79 = (v76 + v73);
    v80 = v159;
    *v79 = v168;
    v79[1] = v80;
    *(v76 + v74) = v166;
    v81 = v76 + v152;
    v82 = v163;
    *v81 = v162;
    *(v81 + 8) = v82;
    LODWORD(v162) = v169 & 1;
    *(v81 + 16) = v169 & 1;
    v83 = v154;
    *(v76 + v75) = v154;
    v156 = v76;
    *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v164;
    v84 = v175;
    v85 = v165;
    v86 = v172;
    (v173)(v165);

    v87 = v83;
    swift_unknownObjectRetain();
    swift_bridgeObjectRetain_n();

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();

    v90 = os_log_type_enabled(v88, v89);
    v91 = v168;
    if (v90)
    {
      v92 = swift_slowAlloc();
      v93 = v85;
      v94 = swift_slowAlloc();
      v176[0] = v94;
      *v92 = 136315650;
      *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x8000000249BDBCD0, v176);
      *(v92 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v98 = v93;
      v99 = v172;
      v153(v98, v84);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v176);

      *(v92 + 14) = v100;
      v91 = v168;
      *(v92 + 22) = 2080;
      *(v92 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v159, v176);
      _os_log_impl(&dword_2493AC000, v88, v89, "%s attempting to open: %s in: %s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v94, -1, -1);
      MEMORY[0x24C1FE850](v92, -1, -1);
    }

    else
    {

      v153(v85, v84);
      v99 = v86;
    }

    v101 = v160;
    v102 = ~v160;
    if (v169)
    {
      URL._bridgeToObjectiveC()(v169);
      v171 = v103;
      v104 = v159;
      v169 = MEMORY[0x24C1FAD20](v91, v159);
      v105 = v158;
      v106 = v99;
      v107 = v175;
      v173(v158, v106, v175);
      v108 = (v101 + 16) & v102;
      v109 = (v108 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
      v110 = (v108 + v167 + 31) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      (v161)(v111 + v108, v105, v107);
      v112 = v111 + v109;
      v113 = v156;
      *v112 = _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ02__fghiJ0L_3forAE15urlManagedState16providerBundleId20appContainerBundleIdAghIyAL_ANSo17DOCDataOwnerStateVSSSgAXSbAPySbctF09determineD6ActionL_ArestugIyAL_SoAM_pAw2XSbySbctFySbcfU_TA_0;
      *(v112 + 8) = v113;
      *(v112 + 16) = v162;
      v114 = (v111 + v110);
      *v114 = v91;
      v114[1] = v104;
      *(v111 + ((v110 + 23) & 0xFFFFFFFFFFFFFFF8)) = v166;
      v176[4] = closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply;
      v176[5] = v111;
      v176[0] = MEMORY[0x277D85DD0];
      v176[1] = 1107296256;
      v176[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
      v176[3] = &block_descriptor_86_2;
      v115 = _Block_copy(v176);

      v116 = v171;
      v117 = v169;
      FPExtendBookmarkForDocumentURL();

      _Block_release(v115);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v119;
    v120 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    v121 = v162;
    *(inited + 48) = v162;
    v171 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
    v122 = swift_initStackObject();
    *(v122 + 16) = xmmword_249B9FA70;
    *(v122 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v122 + 40) = v123;
    *(v122 + 72) = v120;
    *(v122 + 48) = 1;
    *(v122 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v122 + 88) = v124;
    *(v122 + 120) = v120;
    *(v122 + 96) = 1;
    v169 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v122);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    v125 = URL.startAccessingSecurityScopedResource()();
    v126 = v158;
    v127 = v175;
    v173(v158, v99, v175);
    v128 = (v160 + 17) & v102;
    v129 = (v128 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = (v128 + v167 + 31) & 0xFFFFFFFFFFFFFFF8;
    v131 = swift_allocObject();
    *(v131 + 16) = v125;
    v132 = v131 + v128;
    v133 = v168;
    (v161)(v132, v126, v127);
    v134 = v131 + v129;
    v135 = v159;
    *v134 = v133;
    *(v134 + 8) = v135;
    *(v134 + 16) = v121;
    v136 = (v131 + v130);
    v137 = v156;
    *v136 = _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ02__fghiJ0L_3forAE15urlManagedState16providerBundleId20appContainerBundleIdAghIyAL_ANSo17DOCDataOwnerStateVSSSgAXSbAPySbctF09determineD6ActionL_ArestugIyAL_SoAM_pAw2XSbySbctFySbcfU_TA_0;
    v136[1] = v137;
    v138 = type metadata accessor for LaunchUtils.OpenAppDelegate();
    v139 = objc_allocWithZone(v138);
    v140 = &v139[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
    *v140 = closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply;
    *(v140 + 1) = v131;
    v177.receiver = v139;
    v177.super_class = v138;

    v141 = objc_msgSendSuper2(&v177, sel_init);
    v142 = [objc_opt_self() defaultWorkspace];
    if (v142)
    {
      v144 = v142;
      URL._bridgeToObjectiveC()(v143);
      v146 = v145;
      v147 = MEMORY[0x24C1FAD20](v133, v135);
      v148 = v166 == 1;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v150 = Dictionary._bridgeToObjectiveC()().super.isa;
      v151 = [v144 operationToOpenResource:v146 usingApplication:v147 uniqueDocumentIdentifier:0 isContentManaged:v148 sourceAuditToken:0 userInfo:isa options:v150 delegate:v141];

      if (v151)
      {

        [v151 start];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t specialized DOCNode.generalizedUTI(for:)()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject() + v6;
  static UTType.text.getter();
  static UTType.image.getter();
  static UTType.movie.getter();
  v13 = 3 * v5;
  static UTType.audio.getter();
  v8 = *(v1 + 16);
  v9 = (v1 + 8);
  v8(v4, v7, v0);
  if (UTType.conforms(to:)() & 1) != 0 || (v12 = *v9, v12(v4, v0), v8(v4, v7 + v5, v0), (UTType.conforms(to:)()) || (v12(v4, v0), v8(v4, v7 + 2 * v5, v0), (UTType.conforms(to:)()) || (v12(v4, v0), v8(v4, v7 + v13, v0), (UTType.conforms(to:)()))
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v10 = UTType.identifier.getter();
    (*v9)(v4, v0);
  }

  else
  {
    v12(v4, v0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return UTType.identifier.getter();
  }

  return v10;
}

void partial apply for closure #1 in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  closure #1 in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(a1, a2, v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

id specialized _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:)(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v116 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v116 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v116 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v116 - v27;
  v29 = [a1 fp_appContainerBundleIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v31;
  }

  v122 = v28;
  v123 = v18;
  v116 = v10;
  v117 = v14;
  v118 = v6;
  v119 = v23;
  v120 = v20;
  v121 = v19;
  v32 = [a1 itemIdentifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  v37 = a1;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

    return 0;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    return 0;
  }

  v40 = [a1 providerID];
  IsICloud = DOCDocumentSourceIdentifierIsICloud(v40);

  v42 = [a1 providerID];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
  {

    v47 = v122;
    v48 = v123;
    v49 = &selRef_setCancelsTouchesInView_;
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v47 = v122;
    v48 = v123;
    v49 = &selRef_setCancelsTouchesInView_;
    if (((v50 | IsICloud) & 1) == 0)
    {
      return 0;
    }
  }

  v51 = [v37 parentItemIdentifier];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
  {

    goto LABEL_17;
  }

  LODWORD(v123) = IsICloud;
  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
LABEL_17:
    v57 = [v37 v49[284]];
    if (v57)
    {
      v58 = v57;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      aBlock = v31;
      v127 = v60;
      MEMORY[0x28223BE20](v61, v62);
      *(&v116 - 2) = &aBlock;
      v63 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v116 - 4), &outlined read-only object #0 of static LaunchUtils._filteredBundleID(_:));
      swift_arrayDestroy();
      if ((v63 & 1) == 0)
      {
        return v31;
      }
    }

    return 0;
  }

  v122 = swift_allocBox();
  v65 = v64;
  v67 = v120;
  v66 = v121;
  v68 = *(v120 + 56);
  v68(v64, 1, 1, v121);
  outlined init with copy of URL?(v124, v48);
  v124 = *(v67 + 48);
  if (v124(v48, 1, v66) == 1)
  {
    outlined destroy of CharacterSet?(v48, &_s10Foundation3URLVSgMd);
    v69 = [v37 fileURL];
    if (v69)
    {
      v70 = v117;
      v71 = v66;
      v72 = v69;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 1;
      v68(v70, 0, 1, v71);
      outlined destroy of CharacterSet?(v70, &_s10Foundation3URLVSgMd);
      v74 = [v37 fileURL];
      v75 = v116;
      if (v74)
      {
        v76 = v74;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = 0;
      }

      v86 = v73;
      v78 = v121;
      v68(v75, v86, 1, v121);
      outlined assign with take of URL?(v75, v65);
    }

    else
    {
      v79 = v117;
      v68(v117, 1, 1, v66);
      outlined destroy of CharacterSet?(v79, &_s10Foundation3URLVSgMd);
      v80 = dispatch_semaphore_create(0);
      v81 = [objc_opt_self() defaultManager];
      v82 = swift_allocObject();
      *(v82 + 16) = v122;
      *(v82 + 24) = v80;
      v130 = partial apply for closure #1 in _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:);
      v131 = v82;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v129 = &block_descriptor_52_0;
      v83 = _Block_copy(&aBlock);

      v84 = v80;

      [v81 fetchURLForItem:v37 completionHandler:v83];
      v85 = v83;
      v78 = v121;
      _Block_release(v85);

      OS_dispatch_semaphore.wait()();
    }
  }

  else
  {
    v77 = *(v67 + 32);
    v77(v47, v48, v121);
    outlined destroy of CharacterSet?(v65, &_s10Foundation3URLVSgMd);
    v77(v65, v47, v121);
    v78 = v121;
    v68(v65, 0, 1, v121);
  }

  swift_beginAccess();
  v87 = v118;
  outlined init with copy of URL?(v65, v118);
  v88 = v124(v87, 1, v78);
  v89 = v119;
  if (v88 == 1)
  {
    outlined destroy of CharacterSet?(v87, &_s10Foundation3URLVSgMd);
LABEL_41:

    return 0;
  }

  v90 = v120;
  (*(v120 + 32))(v119, v87, v78);
  if (v123)
  {
    URL._bridgeToObjectiveC()(v123);
    v92 = v91;
    v93 = [v91 br_containerID];

    if (v93)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96._countAndFlagsBits = 0x2E64756F6C4369;
      v96._object = 0xE700000000000000;
      v97 = String.hasPrefix(_:)(v96);
      if (v97)
      {
        v99 = String.count.getter();
        v100 = specialized Collection.dropFirst(_:)(v99, v31, v95);
        v102 = v101;
        v104 = v103;
        v106 = v105;

        v31 = MEMORY[0x24C1FAE00](v100, v102, v104, v106);
        v95 = v107;
      }

      v125[0] = v31;
      v125[1] = v95;
      MEMORY[0x28223BE20](v97, v98);
      *(&v116 - 2) = v125;
      v108 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v116 - 4), &outlined read-only object #0 of static LaunchUtils._filteredBundleID(_:));
      swift_arrayDestroy();
      if (v108)
      {

        v31 = 0;
      }

      (*(v90 + 8))(v89, v121);
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  result = [objc_opt_self() sharedRegistry];
  if (result)
  {
    v109 = result;
    v110 = [result listOfMonitoredApps];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPAppMetadata);
    v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x28223BE20](v112, v113);
    *(&v116 - 2) = v89;
    v114 = specialized Sequence.first(where:)(partial apply for closure #2 in _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:), (&v116 - 4), v111);

    if (v114)
    {
      v115 = [v114 bundleID];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v90 + 8))(v89, v121);
LABEL_39:

      return v31;
    }

LABEL_40:
    (*(v90 + 8))(v89, v121);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

id specialized static LaunchUtils._openingApp(for:requireOpenInPlace:)(void *a1, int a2)
{
  v157 = *MEMORY[0x277D85DE8];
  v154 = type metadata accessor for URL();
  v4 = *(v154 - 1);
  MEMORY[0x28223BE20](v154, v5);
  v7 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v147 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v153 = &v147 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v152 = &v147 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v147 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v147 - v24;
  v26 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v27 = [v26 isEnabled];

  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  if (!v27)
  {
    LODWORD(v150) = a2;
    v34 = [objc_opt_self() documentProxyForURL_];

    v55 = *MEMORY[0x277CC1F20];
    v155 = 0;
    v56 = [v34 availableClaimBindingsForMode:0 handlerRank:v55 error:&v155];
    v57 = v155;
    if (!v56)
    {
      v27 = a1;
      v66 = v155;
      v61 = _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_31;
    }

    v58 = v56;
    v149 = v4;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSClaimBinding);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v57;

    v4 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        v155 = MEMORY[0x277D84F90];
        v60 = __CocoaSet.count.getter();
LABEL_14:
        v147 = v21;
        v148 = a1;
        v151 = v34;
        if (v60)
        {
          v61 = 0;
          v62 = MEMORY[0x277D84F90];
          v34 = 0x277CC1000;
          do
          {
            v63 = v61;
            while (1)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v64 = MEMORY[0x24C1FC540](v63, v7);
              }

              else
              {
                if (v63 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_55;
                }

                v64 = *(v7 + 8 * v63 + 32);
              }

              v27 = v64;
              v61 = (v63 + 1);
              if (__OFADD__(v63, 1))
              {
                __break(1u);
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

              v11 = [v64 bundleRecord];

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              ++v63;
              if (v61 == v60)
              {
                goto LABEL_37;
              }
            }

            MEMORY[0x24C1FB090]();
            if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v62 = v155;
          }

          while (v61 != v60);
        }

        else
        {
          v62 = MEMORY[0x277D84F90];
        }

LABEL_37:

        if (v62 >> 62)
        {
          v135 = __CocoaSet.count.getter();
          v81 = v151;
          v82 = v149;
          v83 = v153;
          v84 = v154;
          v85 = v150;
          if (v135)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v81 = v151;
          v82 = v149;
          v83 = v153;
          v84 = v154;
          v85 = v150;
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_39:
            if ((v62 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x24C1FC540](0, v62);
              a1 = v148;
LABEL_42:

              v87 = [v86 supportsOpenInPlace];
              if (v85 & 1) == 0 || (v87)
              {
                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v109 = type metadata accessor for Logger();
                __swift_project_value_buffer(v109, static Logger.UI);
                v110 = v152;
                (*(v82 + 16))(v152, a1, v84);
                v39 = v86;
                v111 = v82;
                v112 = Logger.logObject.getter();
                v113 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v112, v113))
                {

                  (*(v111 + 8))(v110, v84);
                  return v39;
                }

                v114 = swift_slowAlloc();
                v115 = swift_slowAlloc();
                v116 = v110;
                v154 = swift_slowAlloc();
                v155 = v154;
                *v114 = 136315650;
                lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
                v117 = dispatch thunk of CustomStringConvertible.description.getter();
                v119 = v118;
                (*(v111 + 8))(v116, v84);
                v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v155);

                *(v114 + 4) = v120;
                *(v114 + 12) = 2112;
                *(v114 + 14) = v39;
                *v115 = v39;
                *(v114 + 22) = 1024;
                *(v114 + 24) = v150 & 1;
                v121 = v39;
                _os_log_impl(&dword_2493AC000, v112, v113, "determined opening app for %s to be %@, requireOpenInPlace: %{BOOL}d", v114, 0x1Cu);
                outlined destroy of CharacterSet?(v115, &_sSo8NSObjectCSgMd);
                MEMORY[0x24C1FE850](v115, -1, -1);
                v122 = v154;
                __swift_destroy_boxed_opaque_existential_0(v154);
                MEMORY[0x24C1FE850](v122, -1, -1);
                MEMORY[0x24C1FE850](v114, -1, -1);

                goto LABEL_9;
              }

              v155 = 0;
              v156 = 0xE000000000000000;
              _StringGuts.grow(_:)(57);
              v88 = [v86 description];
              v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = v90;

              MEMORY[0x24C1FAEA0](v89, v91);

              MEMORY[0x24C1FAEA0](0xD000000000000025, 0x8000000249BF9070);
              MEMORY[0x24C1FAEA0](1702195828, 0xE400000000000000);
              MEMORY[0x24C1FAEA0](0x726F70707573202CLL, 0xED0000203A646574);
              MEMORY[0x24C1FAEA0](0x65736C6166, 0xE500000000000000);
              MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
              v92 = v155;
              v93 = v156;
              if (one-time initialization token for UI != -1)
              {
                swift_once();
              }

              v94 = type metadata accessor for Logger();
              __swift_project_value_buffer(v94, static Logger.UI);
              v95 = v147;
              (*(v82 + 16))(v147, a1, v84);

              v96 = v82;
              v97 = Logger.logObject.getter();
              v98 = v84;
              v99 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v97, v99))
              {
                v100 = swift_slowAlloc();
                v154 = v86;
                v101 = v100;
                v153 = swift_slowAlloc();
                v155 = v153;
                *v101 = 136315650;
                lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
                v102 = v92;
                v103 = dispatch thunk of CustomStringConvertible.description.getter();
                v105 = v104;
                (*(v96 + 8))(v95, v98);
                v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v155);

                *(v101 + 4) = v106;
                *(v101 + 12) = 2080;
                v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v93, &v155);

                *(v101 + 14) = v107;
                *(v101 + 22) = 2080;
                *(v101 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BF9040, &v155);
                _os_log_impl(&dword_2493AC000, v97, v99, "error determining opening app for %s - opening app %s - %s", v101, 0x20u);
                v108 = v153;
                swift_arrayDestroy();
                MEMORY[0x24C1FE850](v108, -1, -1);
                MEMORY[0x24C1FE850](v101, -1, -1);
              }

              else
              {

                (*(v96 + 8))(v95, v98);
              }

              return 0;
            }

            a1 = v148;
            if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v86 = *(v62 + 32);
              goto LABEL_42;
            }

            __break(1u);
LABEL_73:
            swift_once();
LABEL_60:
            v123 = type metadata accessor for Logger();
            __swift_project_value_buffer(v123, static Logger.UI);
            v124 = v149;
            v125 = v154;
            (*(v149 + 16))(v11, a1, v154);
            v126 = Logger.logObject.getter();
            v127 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = v124;
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v155 = v130;
              *v129 = 136315394;
              lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
              v131 = dispatch thunk of CustomStringConvertible.description.getter();
              v133 = v132;
              (*(v128 + 8))(v11, v125);
              v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &v155);

              *(v129 + 4) = v134;
              *(v129 + 12) = 2080;
              *(v129 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BF9040, &v155);
              _os_log_impl(&dword_2493AC000, v126, v127, "error determining opening app for %s - claimBindings was empty - %s", v129, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v130, -1, -1);
              MEMORY[0x24C1FE850](v129, -1, -1);
            }

            else
            {

              (*(v124 + 8))(v11, v125);
            }

            return 0;
          }
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v136 = type metadata accessor for Logger();
        __swift_project_value_buffer(v136, static Logger.UI);
        (*(v82 + 16))(v83, v148, v84);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = v82;
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v155 = v141;
          *v140 = 136315394;
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v142 = dispatch thunk of CustomStringConvertible.description.getter();
          v144 = v143;
          (*(v139 + 8))(v83, v84);
          v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, &v155);

          *(v140 + 4) = v145;
          *(v140 + 12) = 2080;
          *(v140 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BF9040, &v155);
          _os_log_impl(&dword_2493AC000, v137, v138, "error determining opening app for %s - claimBindings had no apps - %s", v140, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v141, -1, -1);
          MEMORY[0x24C1FE850](v140, -1, -1);
        }

        else
        {

          (*(v82 + 8))(v83, v84);
        }

        return 0;
      }
    }

    else
    {
      v60 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
        v155 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    if (one-time initialization token for UI == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

  v31 = [objc_opt_self() bindableWithURL_];

  v32 = [objc_opt_self() oneTapOpenClaimBindingConfigurationForBindable_];
  v33 = objc_allocWithZone(MEMORY[0x277CC1E98]);
  v155 = 0;
  v34 = v32;
  v35 = [v33 initWithConfiguration:v34 error:&v155];
  if (!v35)
  {
    v27 = a1;
    v65 = v155;
    v61 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_31:

    v60 = v154;
    if (one-time initialization token for UI != -1)
    {
LABEL_56:
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.UI);
    (*(v4 + 16))(v7, v27, v60);
    v68 = v61;
    v69 = Logger.logObject.getter();
    v70 = v4;
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v155 = v73;
      *v72 = 136315650;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v70 + 8))(v7, v60);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v155);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2080;
      swift_getErrorValue();
      v78 = Error.localizedDescription.getter();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v155);

      *(v72 + 14) = v80;
      *(v72 + 22) = 2080;
      *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BF9040, &v155);
      _os_log_impl(&dword_2493AC000, v69, v71, "error determining opening app for %s - error: %s - %s", v72, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v73, -1, -1);
      MEMORY[0x24C1FE850](v72, -1, -1);
    }

    else
    {

      (*(v70 + 8))(v7, v60);
    }

    return 0;
  }

  v36 = v35;
  v37 = v155;

  v38 = [v36 bundleRecord];
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
  }

  v153 = v31;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.UI);
  v41 = a1;
  v42 = v154;
  (*(v4 + 16))(v25, v41, v154);
  v43 = v39;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v44, v45))
  {

    (*(v4 + 8))(v25, v42);
    return v39;
  }

  v46 = swift_slowAlloc();
  v151 = v34;
  v47 = v46;
  v149 = swift_slowAlloc();
  v152 = swift_slowAlloc();
  v155 = v152;
  *v47 = 136315394;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v48 = dispatch thunk of CustomStringConvertible.description.getter();
  v150 = v36;
  v50 = v49;
  (*(v4 + 8))(v25, v42);
  v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v155);

  *(v47 + 4) = v51;
  *(v47 + 12) = 2112;
  *(v47 + 14) = v43;
  v52 = v149;
  *v149 = v39;
  v53 = v43;
  _os_log_impl(&dword_2493AC000, v44, v45, "determined opening app for %s to be %@", v47, 0x16u);
  outlined destroy of CharacterSet?(v52, &_sSo8NSObjectCSgMd);
  MEMORY[0x24C1FE850](v52, -1, -1);
  v54 = v152;
  __swift_destroy_boxed_opaque_existential_0(v152);
  MEMORY[0x24C1FE850](v54, -1, -1);
  MEMORY[0x24C1FE850](v47, -1, -1);

LABEL_9:
  return v39;
}

void partial apply for closure #1 in static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  closure #1 in static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:)(a1, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables11LaunchUtilsV0D6ActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for LaunchUtils.LaunchAction(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LaunchUtils.LaunchAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for LaunchUtils.LaunchAction(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void specialized LaunchUtils.OpenAppDelegate.openResourceOperation(_:didFinishCopyingResource:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - v10;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  outlined init with copy of URL?(a2, v11);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BF9000, &v27);
    *(v16 + 12) = 2080;
    v26 = a1;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11NSOperationCSgMd);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    outlined init with copy of URL?(v11, v7);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

    *(v16 + 24) = v25;
    _os_log_impl(&dword_2493AC000, v14, v15, "%s operation: %s resourceURL: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  else
  {

    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
  }
}

uint64_t partial apply for closure #1 in closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return closure #1 in closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(a1, a2, a3, v3 + v8, v10, v11);
}

void partial apply for closure #1 in closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void partial apply for closure #1 in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_99Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t objectdestroy_74Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (v4 + *(v2 + 64) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_5Tm_2()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

id DOCTypeToFocusController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

objc_class *one-time initialization function for sharedTypeToFocusInputView()
{
  result = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sharedTypeToFocusInputView.super.super.isa = result;
  return result;
}

void (*DOCTypeToFocusController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *&sharedTypeToFocusInputView.super._responderFlags;
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

Swift::Void __swiftcall DOCTypeToFocusController.insertText(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v35 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + sharedTypeToFocusInputView._swiftAnimationInfo;
  swift_beginAccess();

  v14 = String.count.getter();

  v17 = countAndFlagsBits;
  if (v14)
  {
    v18 = object;
    v19 = 0;
  }

  else
  {
    *&v40[0] = countAndFlagsBits;
    *(&v40[0] + 1) = object;
    v18 = object;
    MEMORY[0x28223BE20](v15, v16);
    v34[-2] = v40;
    v19 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v34[-4], &outlined read-only object #0 of DOCTypeToFocusController.insertText(_:));
    v15 = outlined destroy of String(&unk_285C7F738);
  }

  v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))(v15);
  if (v20)
  {
    if ((v19 & 1) == 0)
    {
      v22 = v21;
      v23 = v20;
      ObjectType = swift_getObjectType();
      v25 = *(v22 + 8);
      v34[1] = v23;
      v26 = v25(v2, ObjectType, v22);
      if (v26)
      {
        v34[0] = ObjectType;
        *&v40[0] = v17;
        *(&v40[0] + 1) = v18;
        MEMORY[0x28223BE20](v26, v27);
        v34[-2] = v40;
        v28 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v34[-4], &outlined read-only object #1 of DOCTypeToFocusController.insertText(_:));
        outlined destroy of String(&unk_285C7F768);
        if ((v28 & 1) == 0)
        {
          swift_beginAccess();
          MEMORY[0x24C1FAEA0](v17, v18);
          swift_endAccess();
          v41 = 0;
          memset(v40, 0, sizeof(v40));
          v29 = *v13;
          v30 = *(v13 + 1);

          DOCTypeToFocusController.indexPath(forClosestItemMatching:foundItem:)(v29, v30, v40, v8);

          v32 = v36;
          v31 = v37;
          if ((*(v37 + 48))(v8, 1, v36) == 1)
          {
            outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
          }

          else
          {
            v33 = v35;
            (*(v31 + 32))(v35, v8, v32);
            outlined init with copy of DOCTypeToFocusItem?(v40, v38);
            if (!v39)
            {
              __break(1u);
              return;
            }

            (*(v22 + 40))(v2, v38, v33, v34[0], v22);
            (*(v31 + 8))(v33, v32);
            __swift_destroy_boxed_opaque_existential_0(v38);
          }

          DOCTypeToFocusController.scheduleTypingTimeout()();
          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v40, &sharedTypeToFocusInputView._traitChangeRegistry);
          return;
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t DOCTypeToFocusController.eventHadModifierKey.getter()
{
  layerRetained = sharedTypeToFocusInputView._layerRetained;
  swift_beginAccess();
  return *(&layerRetained->super.isa + v0);
}

uint64_t DOCTypeToFocusController.eventHadModifierKey.setter(char a1)
{
  layerRetained = sharedTypeToFocusInputView._layerRetained;
  result = swift_beginAccess();
  *(&layerRetained->super.isa + v1) = a1;
  return result;
}

void DOCTypeToFocusController.handlePressesBegan(_:with:)(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v5 = objc_opt_self();
  v36 = a2;
  LODWORD(v5) = [v5 typeToFocusIsSupported];
  v6 = [v36 modifierFlags];
  if (!v5)
  {
    if ((v6 & 0x80000) != 0 || ([v36 modifierFlags] & 0x40000) != 0 || (objc_msgSend(v36, sel_modifierFlags) & 0x100000) != 0)
    {
      (*((*MEMORY[0x277D85000] & *v2) + 0x118))(1);
    }

    goto LABEL_30;
  }

  if ((v6 & 0x80000) != 0 || ([v36 modifierFlags] & 0x40000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = ([v36 modifierFlags] >> 20) & 1;
  }

  v8 = MEMORY[0x277D85000];
  v9 = v2;
  v10 = (*((*MEMORY[0x277D85000] & *v2) + 0x118))(v7);
  if (((*((*v8 & *v2) + 0x110))(v10) & 1) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        goto LABEL_30;
      }
    }

    else if (*(a1 + 16) != 1)
    {
      goto LABEL_30;
    }

    v11 = specialized Collection.first.getter(a1);
    if (v11)
    {
      v12 = v11;
      v13 = [v11 key];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 characters];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = String.count.getter();

        if (v16 != 1 || (v17 = [v14 characters], static String._unconditionallyBridgeFromObjectiveC(_:)(), v17, LOBYTE(v17) = String.isTypeable.getter(), , (v17 & 1) == 0))
        {

          goto LABEL_30;
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.UI);
        v19 = v14;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();

        v35 = v19;
        if (os_log_type_enabled(v20, v21))
        {
          v33 = v21;
          v22 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v37 = v34;
          *v22 = 136315394;
          *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BF9100, &v37);
          *(v22 + 12) = 2080;
          v23 = [v19 characters];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v37);

          *(v22 + 14) = v27;
          _os_log_impl(&dword_2493AC000, v20, v33, "%s characters: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v34, -1, -1);
          MEMORY[0x24C1FE850](v22, -1, -1);
        }

        if ((*((*v8 & *v9) + 0x78))())
        {
          v29 = v28;
          ObjectType = swift_getObjectType();
          v31 = *(v29 + 24);
          v32 = v36;
          v31(a1, a2, ObjectType, v29);
          swift_unknownObjectRelease();

          goto LABEL_30;
        }
      }
    }
  }

LABEL_30:
}

void DOCTypeToFocusController.handlePressesEnded(_:with:)(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  v5 = specialized Collection.first.getter(a1);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 key];
    if (v7)
    {
      v25 = v7;
      if (a2)
      {
        v8 = a2;
        v9 = [v8 allPresses];
        type metadata accessor for UIPress();
        lazy protocol witness table accessor for type UIPress and conformance NSObject();
        v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = __CocoaSet.count.getter();
        }

        else
        {
          v11 = *(v10 + 16);
        }

        if (([v8 modifierFlags] & 0x80000) == 0 && (objc_msgSend(v8, sel_modifierFlags) & 0x40000) == 0 && (objc_msgSend(v8, sel_modifierFlags) & 0x100000) == 0)
        {
          v14 = [v6 type];
          v15 = vdupq_n_s64(v14);
          v16 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_285C7F798, v15), vceqq_s64(unk_285C7F7A8, v15)))) & 1 | (qword_285C7F7B8 == v14) | (unk_285C7F7C0 == v14 || qword_285C7F7C8 == v14);
          if (v16)
          {
            v17 = v6;
          }

          else
          {
            v17 = v8;
          }

          if (v16)
          {
            v18 = v8;
          }

          else
          {
            v18 = v6;
          }

          if (v16)
          {
            v19 = 0;
          }

          else
          {
            v19 = v11 == 1;
          }

          if (v19)
          {
            v20 = MEMORY[0x277D85000];
            if (((*((*MEMORY[0x277D85000] & *v2) + 0x110))() & 1) == 0 && ([objc_opt_self() typeToFocusIsSupported] & 1) == 0)
            {
              v21 = [v25 characters];
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v24 = v23;

              (*((*v20 & *v2) + 0x100))(v22, v24);
            }

            (*((*v20 & *v2) + 0x118))(0);
          }

          else
          {
            v8 = v17;
            v6 = v18;
          }
        }

        v13 = v25;
        v25 = v6;
      }

      else
      {
        v13 = v6;
      }

      v12 = v25;
    }

    else
    {
      v12 = v6;
    }
  }
}

void DOCTypeToFocusController.scheduleTypingTimeout()()
{
  constraintsExceptingSubviewAutoresizingConstraints = sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints;
  [*(&sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints->super.super.isa + v0) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = partial apply for closure #1 in DOCTypeToFocusController.scheduleTypingTimeout();
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v7[3] = &block_descriptor_146;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:0.5];
  _Block_release(v4);
  v6 = *(&constraintsExceptingSubviewAutoresizingConstraints->super.super.isa + v0);
  *(&constraintsExceptingSubviewAutoresizingConstraints->super.super.isa + v0) = v5;
}

void closure #1 in DOCTypeToFocusController.scheduleTypingTimeout()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sharedTypeToFocusInputView._swiftAnimationInfo + Strong;
    v2 = Strong;
    swift_beginAccess();
    *v1 = 0;
    v1[1] = 0xE000000000000000;

    v3 = *&v2[sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints];
    *&v2[sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints] = 0;
  }
}

uint64_t DOCTypeToFocusController.indexPath(forClosestItemMatching:foundItem:)@<X0>(void *a1@<X0>, void (*a2)(void, void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v70 - v15;
  v17 = (*((*MEMORY[0x277D85000] & *v4) + 0x78))(v14);
  if (!v17)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = v17;
  v20 = v18;
  v77 = a3;
  v78 = v16;
  v82 = a2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249B9A480;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v23 = v82;
  v22 = v83;
  *(v21 + 32) = v83;
  *(v21 + 40) = v23;

  os_log(_:dso:log:type:_:)();
  v24 = v23;

  ObjectType = swift_getObjectType();
  v26 = (*(v20 + 16))(v4, ObjectType, v20);
  if (!v22 && v24 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v27 = type metadata accessor for IndexPath();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
    swift_unknownObjectRelease();
  }

  v71 = ObjectType;
  v74 = a4;
  v29 = String.count.getter();
  v75 = v19;
  v73 = v4;
  v76 = v26;
  v72 = v20;
  if (!v29)
  {
    v41 = type metadata accessor for IndexPath();
    v40 = v78;
    (*(*(v41 - 8) + 56))(v78, 1, 1, v41);
LABEL_18:
    outlined destroy of CharacterSet?(v40, &_s10Foundation9IndexPathVSgMd);

    v46 = specialized Collection.dropLast(_:)(1);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v53 = MEMORY[0x24C1FAE00](v46, v48, v50, v52);
    v55 = v54;

    if (String.count.getter())
    {
      v90 = v53;
      v91 = v55;
      v80 = v55;
      v83 = objc_opt_self();
      v56 = [v83 currentLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = type metadata accessor for Locale();
      v58 = *(v57 - 8);
      v59 = *(v58 + 56);
      v81 = (v58 + 56);
      v82 = v59;
      v59(v11, 0, 1, v57);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.folding(options:locale:)();
      outlined destroy of CharacterSet?(v11, &_s10Foundation6LocaleVSgMd);
      v60 = *(v26 + 16);
      if (v60)
      {
        v61 = v76 + 32;
        while (1)
        {
          outlined init with copy of DOCSidebarItemIconProvider(v61, &v86);
          v62 = v87;
          v63 = v88;
          __swift_project_boxed_opaque_existential_1(&v86, v87);
          v84 = (*(v63 + 8))(v62, v63);
          v85 = v64;
          v65 = [v83 currentLocale];
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v82(v11, 0, 1, v57);
          StringProtocol.folding(options:locale:)();
          outlined destroy of CharacterSet?(v11, &_s10Foundation6LocaleVSgMd);

          LOBYTE(v62) = specialized Sequence<>.starts<A>(with:)();

          if (v62)
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_0(&v86);
          v61 += 40;
          if (!--v60)
          {
            goto LABEL_23;
          }
        }

        v68 = v77;
        outlined destroy of CharacterSet?(v77, &sharedTypeToFocusInputView._traitChangeRegistry);

        outlined init with take of DOCGoToFolderCandidate(&v86, v89);
        outlined init with take of DOCGoToFolderCandidate(v89, &v90);
        outlined init with copy of DOCSidebarItemIconProvider(&v90, v68);
        (*(v72 + 32))(v73, &v90, v71);
        __swift_destroy_boxed_opaque_existential_0(&v90);
      }

      else
      {
LABEL_23:

        v66 = type metadata accessor for IndexPath();
        (*(*(v66 - 8) + 56))(v74, 1, 1, v66);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v67 = type metadata accessor for IndexPath();
      (*(*(v67 - 8) + 56))(v74, 1, 1, v67);
      swift_unknownObjectRelease();
    }
  }

  v90 = v22;
  v91 = v24;
  v81 = objc_opt_self();
  v30 = [v81 currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = type metadata accessor for Locale();
  v32 = *(v31 - 8);
  v80 = *(v32 + 56);
  v79 = v32 + 56;
  v80(v11, 0, 1, v31);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.folding(options:locale:)();
  outlined destroy of CharacterSet?(v11, &_s10Foundation6LocaleVSgMd);
  v33 = *(v26 + 16);
  if (!v33)
  {
LABEL_15:

    v39 = type metadata accessor for IndexPath();
    v40 = v78;
    (*(*(v39 - 8) + 56))(v78, 1, 1, v39);
    v26 = v76;
    goto LABEL_18;
  }

  v34 = v76 + 32;
  while (1)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v34, &v86);
    v35 = v87;
    v36 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    v84 = (*(v36 + 8))(v35, v36);
    v85 = v37;
    v38 = [v81 currentLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v80(v11, 0, 1, v31);
    StringProtocol.folding(options:locale:)();
    outlined destroy of CharacterSet?(v11, &_s10Foundation6LocaleVSgMd);

    LOBYTE(v38) = specialized Sequence<>.starts<A>(with:)();

    if (v38)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(&v86);
    v34 += 40;
    if (!--v33)
    {
      goto LABEL_15;
    }
  }

  v42 = v77;
  outlined destroy of CharacterSet?(v77, &sharedTypeToFocusInputView._traitChangeRegistry);

  outlined init with take of DOCGoToFolderCandidate(&v86, v89);
  outlined init with take of DOCGoToFolderCandidate(v89, &v90);
  outlined init with copy of DOCSidebarItemIconProvider(&v90, v42);
  v40 = v78;
  (*(v72 + 32))(v73, &v90, v71, v72);
  __swift_destroy_boxed_opaque_existential_0(&v90);
  v43 = type metadata accessor for IndexPath();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v40, 1, v43);
  v26 = v76;
  if (v45 == 1)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();

  v69 = v74;
  (*(v44 + 32))(v74, v40, v43);
  return (*(v44 + 56))(v69, 0, 1, v43);
}

id DOCTypeToFocusController.init()()
{
  *&v0[*&sharedTypeToFocusInputView.super._responderFlags + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[sharedTypeToFocusInputView._swiftAnimationInfo];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *&v0[sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints] = 0;
  subviewCache = sharedTypeToFocusInputView._subviewCache;
  *(&subviewCache->super.isa + v0) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v0[sharedTypeToFocusInputView._layerRetained] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCTypeToFocusController();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DOCTypeToFocusController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTypeToFocusController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of DOCTypeToFocusItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._traitChangeRegistry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UIPress()
{
  result = lazy cache variable for type metadata for UIPress;
  if (!lazy cache variable for type metadata for UIPress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPress);
  }

  return result;
}

id static UIBarButtonItem.doc_adaptableDismissButton(_:primaryAction:)(char a1, uint64_t a2)
{
  v3 = qword_249BBBCF8[a1];
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithBarButtonSystemItem:v3 primaryAction:a2];
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C1FC540](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject barButtonItems];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        __CocoaSet.count.getter();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v32)
  {
    v4 = 0;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v37 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x277D84F90];
    v36 = i;
    while (1)
    {
      if (v39)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C1FC540](v4, v34);
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v37 + 8 * v4);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [isUniquelyReferenced_nonNull_bridgeObject actions];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = [v7 associatedActionManagers];
      type metadata accessor for DOCActionManager(v11);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v2;
      v14 = specialized Sequence.flatMap<A>(_:)(v12);

      v40[0] = v10;
      specialized Array.append<A>(contentsOf:)(v14);

      v15 = v40[0];
      v16 = v40[0] >> 62;
      if (v40[0] >> 62)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v19 = isUniquelyReferenced_nonNull_bridgeObject + v17;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v17))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = isUniquelyReferenced_nonNull_bridgeObject + v17;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v17))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v18)
        {
          goto LABEL_21;
        }

LABEL_20:
        __CocoaSet.count.getter();
        goto LABEL_21;
      }

      if (v18)
      {
        goto LABEL_20;
      }

      v20 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = isUniquelyReferenced_nonNull_bridgeObject;
      v20 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v16)
      {
        v24 = v20;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v20 = v24;
        v23 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v23)
      {
        if (((v22 >> 1) - v21) < v17)
        {
          goto LABEL_43;
        }

        v25 = v20 + 8 * v21 + 32;
        v35 = v20;
        if (v16)
        {
          if (v23 < 1)
          {
            goto LABEL_45;
          }

          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIDocumentBrowserAction] and conformance [A], &_sSaySo23UIDocumentBrowserActionCGMd);
          for (j = 0; j != v23; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23UIDocumentBrowserActionCGMd);
            v27 = specialized protocol witness for Collection.subscript.read in conformance [A](v40, j, v15);
            v29 = *v28;
            (v27)(v40, 0);
            *(v25 + 8 * j) = v29;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v2 = v13;
        v6 = v36;
        v5 = v41;
        if (v17 >= 1)
        {
          v30 = *(v35 + 16);
          v8 = __OFADD__(v30, v17);
          v31 = v30 + v17;
          if (v8)
          {
            goto LABEL_44;
          }

          *(v35 + 16) = v31;
        }
      }

      else
      {

        v6 = v36;
        v5 = v41;
        if (v17 > 0)
        {
          goto LABEL_42;
        }
      }

      if (v4 == v6)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    i = __CocoaSet.count.getter();
  }

  return MEMORY[0x277D84F90];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_65;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = MEMORY[0x277D84F90];
    if (!v1)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = MEMORY[0x277D84F90] >> 62;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C1FC540](v3, v26);
      }

      else
      {
        if (v3 >= *(v30 + 16))
        {
          goto LABEL_59;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 children];
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
        {
LABEL_14:
          v11 = 0;
          v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        }
      }

      else
      {

        v10 = v2;
        if (!v28)
        {
          goto LABEL_14;
        }
      }

      v12 = __CocoaSet.count.getter();
      v11 = 1;
      if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
LABEL_16:
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

LABEL_28:
      isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_60;
      }

LABEL_17:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v7;
      v33 = v12;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
        {
          v14 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
        goto LABEL_32;
      }

      __CocoaSet.count.getter();
LABEL_32:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_33:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v11)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_37:
          if (((v16 >> 1) - v15) < v33)
          {
            goto LABEL_62;
          }

          v18 = (v14 + 8 * v15 + 32);
          if (v11)
          {
            if (v17 < 1)
            {
              goto LABEL_64;
            }

            v19 = 0;
            if ((v10 & 0xC000000000000001) == 0)
            {
              goto LABEL_43;
            }

            while (1)
            {
              isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C1FC540](v19++, v10);
              *v18 = isUniquelyReferenced_nonNull_bridgeObject;
              if (v19 == v17)
              {
                break;
              }

              while (1)
              {
                ++v18;
                if ((v10 & 0xC000000000000001) != 0)
                {
                  break;
                }

LABEL_43:
                if ((v19 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_57:
                  __break(1u);
                  goto LABEL_58;
                }

                if (v19 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_57;
                }

                v20 = *(v10 + 32 + 8 * v19++);
                *v18 = v20;
                isUniquelyReferenced_nonNull_bridgeObject = v20;
                if (v19 == v17)
                {
                  goto LABEL_50;
                }
              }
            }

LABEL_50:

            v1 = v27;
            v2 = MEMORY[0x277D84F90];
            v21 = v33;
            if (v33 < 1)
            {
              goto LABEL_6;
            }
          }

          else
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
            v21 = v33;
            swift_arrayInitWithCopy();

            if (v33 < 1)
            {
              goto LABEL_6;
            }
          }

          v22 = *(v14 + 16);
          v6 = __OFADD__(v22, v21);
          v23 = v22 + v21;
          if (v6)
          {
            goto LABEL_63;
          }

          *(v14 + 16) = v23;
          goto LABEL_6;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_61;
      }

LABEL_6:
      v3 = v32;
      if (v32 == v1)
      {
        return v4;
      }
    }

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
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }
}

uint64_t UINavigationItem.doc_allUnderlyingBarButtonItems.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v3 = [v0 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized Array.append<A>(contentsOf:)(v2);
  v5 = [v1 leadingItemGroups];
  type metadata accessor for NSMutableAttributedString(0, &sharedTypeToFocusInputView._window);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Sequence.flatMap<A>(_:)(v6);

  specialized Array.append<A>(contentsOf:)(v7);
  v8 = [v1 centerItemGroups];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = specialized Sequence.flatMap<A>(_:)(v9);

  specialized Array.append<A>(contentsOf:)(v10);
  v11 = [v1 rightBarButtonItems];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v13);
  v14 = [v1 trailingItemGroups];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = specialized Sequence.flatMap<A>(_:)(v15);

  specialized Array.append<A>(contentsOf:)(v16);
  v17 = [v1 pinnedTrailingGroup];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 barButtonItems];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v20);
  }

  return v22;
}

uint64_t *UINavigationItemSearchBarPlacement.doc_inlineButtonPreferred.unsafeMutableAddressor()
{
  if (one-time initialization token for doc_inlineButtonPreferred != -1)
  {
    swift_once();
  }

  return &static UINavigationItemSearchBarPlacement.doc_inlineButtonPreferred;
}

void UINavigationItem.doc_configureForDismissing(sheetType:target:dismissAction:cancelChangesSelector:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v14[3] = swift_getObjectType();
    v14[0] = a2;
    v9 = objc_allocWithZone(MEMORY[0x277D751E0]);
    swift_unknownObjectRetain();
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(v14);
    v11 = [v9 initWithBarButtonSystemItem:0 target:v10 action:a3];
    swift_unknownObjectRelease();
    [v5 setRightBarButtonItem_];

    if (a4)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v12 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, a2, a4);
      [v5 setLeftBarButtonItem_];
    }
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v13 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(0, a2, a3);
    [v5 setLeftBarButtonItem_];
  }
}

id static UIBarButtonItem.doc_endEditingModeButton(withAction:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:0 target:0 action:0];
  [v2 setPrimaryAction_];
  return v2;
}

Swift::Int UINavigationItem.DOCSheetType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

id static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_249BBBCF8[a1];
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  swift_unknownObjectRetain();
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v10);
  v8 = [v6 initWithBarButtonSystemItem:v5 target:v7 action:{a3, v10[0]}];
  swift_unknownObjectRelease();
  return v8;
}

uint64_t static UINavigationItemSearchBarPlacement.doc_inlineButtonPreferred.getter()
{
  if (one-time initialization token for doc_inlineButtonPreferred != -1)
  {
    swift_once();
  }

  return static UINavigationItemSearchBarPlacement.doc_inlineButtonPreferred;
}

id (*UIBarButtonItem.isShown.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isHidden] ^ 1;
  return UIBarButtonItem.isShown.modify;
}

id UIBarButtonItem.doc_isSpacer.getter()
{
  result = [v0 isSystemItem];
  if (result)
  {
    return ([v0 systemItem] - 5 < 2);
  }

  return result;
}

Swift::Int UIBarButtonItem.DOCAdaptableDismissButtonType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t closure #1 in UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(void (*a1)(uint64_t), int a2, id a3)
{
  v4 = [a3 menu];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 children];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  a1(v7);
}

void specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    v4 = a1;
    if (a2)
    {

      specialized Array.append<A>(contentsOf:)(v4);
      v4 = a2;
    }

    else
    {
    }

    v5 = [v2 leftBarButtonItems];
    if (v5 && (v6 = v5, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, LOBYTE(v6) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15UIBarButtonItemC_Tt1g5(v7, v4), , (v6 & 1) != 0))
    {
    }

    else
    {
      v8 = _UISolariumEnabled();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
      isa = Array._bridgeToObjectiveC()().super.isa;

      if (v8)
      {
        [v3 setLeftBarButtonItems:isa animated:1];
      }

      else
      {
        [v3 setLeftBarButtonItems_];
      }
    }
  }
}

void specialized static UIBarButtonItem.removeLegacyOverflowItem(from:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 62;
  if (v2)
  {
LABEL_78:
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v5)
    {
      v6 = MEMORY[0x24C1FC540](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
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
      goto LABEL_78;
    }

    if ([v6 doc_isLegacyOverflowBarButtonItem])
    {
      break;
    }

    ++v4;
    if (v8 == v3)
    {
      return;
    }
  }

  if (v2)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      goto LABEL_27;
    }

    if (v5)
    {
      v11 = MEMORY[0x24C1FC540](v10, v1);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v11 = *(v1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 doc_isLegacyOverflowBarButtonItem];

    v14 = v10 + 1;
    v15 = __OFADD__(v10, 1);
    if (v13)
    {
      break;
    }

    ++v10;
    if (v15)
    {
      __break(1u);
LABEL_27:
      if (v2)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_35:
      if (v1 >> 62)
      {
        goto LABEL_81;
      }

      v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 < v10)
      {
        goto LABEL_82;
      }

LABEL_37:
      specialized Array.replaceSubrange<A>(_:with:)(v10, v16);
      return;
    }
  }

  if (v15)
  {
    goto LABEL_86;
  }

  if (v2)
  {
    if (v14 == __CocoaSet.count.getter())
    {
      goto LABEL_35;
    }
  }

  else if (v14 == *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v2 = v10 + 5;
  while (1)
  {
    v17 = v2 - 4;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x24C1FC540](v2 - 4, v1);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v17 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v18 = *(v1 + 8 * v2);
    }

    v19 = v18;
    v20 = [v18 doc_isLegacyOverflowBarButtonItem];

    if (v20)
    {
      goto LABEL_62;
    }

    if (v17 != v10)
    {
      break;
    }

LABEL_61:
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_77;
    }

LABEL_62:
    v31 = v2 - 3;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_75;
    }

    if (v1 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v2;
    if (v31 == v32)
    {
      goto LABEL_35;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C1FC540](v10, v1);
    v22 = MEMORY[0x24C1FC540](v2 - 4, v1);
  }

  else
  {
    if (v10 < 0)
    {
      goto LABEL_83;
    }

    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v23)
    {
      goto LABEL_84;
    }

    if (v17 >= v23)
    {
      goto LABEL_85;
    }

    v24 = *(v1 + 8 * v2);
    v21 = *(v1 + 8 * v10 + 32);
    v22 = v24;
  }

  v25 = v22;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v26 = (v1 >> 62) & 1;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  v27 = v1 & 0xFFFFFFFFFFFFFF8;
  v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
  *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v25;

  if ((v1 & 0x8000000000000000) != 0 || v26)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    if ((v17 & 0x8000000000000000) != 0)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }
  }

  else if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

  if (v17 < *(v27 + 16))
  {
    v29 = *(v27 + 8 * v2);
    *(v27 + 8 * v2) = v21;

    *a1 = v1;
    goto LABEL_61;
  }

  __break(1u);
LABEL_81:
  v16 = __CocoaSet.count.getter();
  if (v16 >= v10)
  {
    goto LABEL_37;
  }

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
}

uint64_t specialized UINavigationItem._gatherIntoGroups(from:coalesceSpaceDirectionIsTrailing:)(unint64_t a1, char a2)
{
  v3 = a1;
  v44 = a1;

  v41 = a2;
  if ((a2 & 1) == 0)
  {
    specialized MutableCollection<>.reverse()();
    v3 = v44;
  }

  v43 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_138;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_139:
    v33 = MEMORY[0x277D84F90];
LABEL_140:

    return v33;
  }

  while (1)
  {
    v40 = xmmword_249BA0290;
LABEL_7:

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_131;
      }

      v4 = *(v3 + 32);
    }

    v5 = v4;

    v6 = v3 >> 62;
    if (v3 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_130;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_132;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_130;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](0, v3);
      swift_unknownObjectRelease();
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_135;
      }

      if (!v6)
      {
LABEL_14:
        v8 = *(v7 + 16);
        goto LABEL_18;
      }
    }

    v8 = __CocoaSet.count.getter();
LABEL_18:
    if (v8)
    {
      break;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_139;
    }
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = v40;
  *(v9 + 32) = v5;
  v42 = v9;
  v10 = v5;
  v11 = [v10 isDocumentCreationBarButtonItem];
  v12 = v44;
  v3 = v44;
  while (1)
  {
    v13 = v3 >> 62;
    if (v3 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_67;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](0, v3);
      if (!v11)
      {
        break;
      }

      goto LABEL_25;
    }

    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_122;
    }

    v14 = *(v3 + 32);
    if (!v11)
    {
      break;
    }

LABEL_25:
    if (![v14 isDocumentCreationBarButtonItem])
    {
      v12 = v3;
      break;
    }

    if (v13)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (!__CocoaSet.count.getter())
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_125;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](0, v3);
      swift_unknownObjectRelease();
      v15 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_129;
      }

      if (!v13)
      {
LABEL_33:
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = v16 - 1;
          if (!__OFSUB__(v16, 1))
          {
            goto LABEL_42;
          }

LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

LABEL_127:
        __break(1u);
        goto LABEL_128;
      }
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_127;
    }

    if (__CocoaSet.count.getter() < 1)
    {
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v18 = __CocoaSet.count.getter();
    v17 = v18 - 1;
    if (__OFSUB__(v18, 1))
    {
      goto LABEL_122;
    }

LABEL_42:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v13)
    {
LABEL_47:
      __CocoaSet.count.getter();
    }

LABEL_48:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_49:

    if (!(v3 >> 62))
    {
      v20 = *(v19 + 16);
      memmove((v19 + 32), (v19 + 40), 8 * v20 - 8);
      v21 = v20 - 1;
      if (!__OFSUB__(v20, 1))
      {
        goto LABEL_51;
      }

      goto LABEL_123;
    }

    result = __CocoaSet.count.getter();
    if (__OFSUB__(result, 1))
    {
      goto LABEL_146;
    }

    memmove((v19 + 32), (v19 + 40), 8 * (result - 1));
    v24 = __CocoaSet.count.getter();
    v21 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

LABEL_51:
    *(v19 + 16) = v21;
    v22 = v14;
    MEMORY[0x24C1FB090]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (2)
  {

    v3 = v12;
LABEL_67:
    v25 = v3 >> 62;
    if (v3 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_114:
        v44 = v3;
        if ((v41 & 1) == 0)
        {
LABEL_78:
          specialized MutableCollection<>.reverse()();
        }

LABEL_79:
        v28 = [v10 buttonGroup];
        if (v28)
        {
          v29 = v28;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
          v30 = v29;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v30 setBarButtonItems_];
        }

        else
        {
          type metadata accessor for DOCBarButtonItemGroup();
          v32 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

          v30 = v32;
        }

        MEMORY[0x24C1FB090]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v33 = v43;
        if (v25)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_140;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        goto LABEL_7;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_114;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x24C1FC540](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v26 = *(v3 + 32);
    }

    v27 = v26;
    if (![v26 isSystemItem] || (result = objc_msgSend(v27, sel_systemItem), (result - 5) >= 2))
    {
      v44 = v3;

      if ((v41 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v25)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_141;
      }

      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_142;
      }

LABEL_89:
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0, v3);
        swift_unknownObjectRelease();
        v34 = v3 & 0xFFFFFFFFFFFFFF8;
        if (!v25)
        {
LABEL_91:
          result = *(v34 + 16);
          if (!result)
          {
            goto LABEL_143;
          }

          goto LABEL_98;
        }
      }

      else
      {
        v34 = v3 & 0xFFFFFFFFFFFFFF8;
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        if (!v25)
        {
          goto LABEL_91;
        }
      }

      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_143;
      }

      result = __CocoaSet.count.getter();
      if (result < 1)
      {
        goto LABEL_144;
      }

      result = __CocoaSet.count.getter();
LABEL_98:
      v35 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_136;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v25)
        {
          v36 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v35 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = v3;
LABEL_107:

            if (v12 >> 62)
            {
              result = __CocoaSet.count.getter();
              if (__OFSUB__(result, 1))
              {
                goto LABEL_147;
              }

              memmove((v36 + 32), (v36 + 40), 8 * (result - 1));
              v39 = __CocoaSet.count.getter();
              v38 = v39 - 1;
              if (__OFSUB__(v39, 1))
              {
                goto LABEL_137;
              }
            }

            else
            {
              v37 = *(v36 + 16);
              memmove((v36 + 32), (v36 + 40), 8 * v37 - 8);
              v38 = v37 - 1;
              if (__OFSUB__(v37, 1))
              {
                goto LABEL_137;
              }
            }

            *(v36 + 16) = v38;
            v14 = v27;
            MEMORY[0x24C1FB090]();
            if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            continue;
          }

LABEL_106:
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v36 = v12 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_107;
        }
      }

      else if (!v25)
      {
        goto LABEL_106;
      }

      __CocoaSet.count.getter();
      goto LABEL_106;
    }

    break;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_89;
  }

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
  __break(1u);
  return result;
}

uint64_t specialized UINavigationItem._itemGroups(_:areEquivalentTo:)(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

LABEL_5:
    if (v4)
    {
      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
        return 1;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return 1;
      }
    }

    v24 = v6;
    for (i = 4; ; ++i)
    {
      v8 = i - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](i - 4, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v9 = *(a1 + 8 * i);
      }

      v10 = v9;
      v4 = i - 3;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (a2 >> 62)
      {
        if (v8 == __CocoaSet.count.getter())
        {
LABEL_31:
          v23 = 1;
          goto LABEL_34;
        }
      }

      else if (v8 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](i - 4, a2);
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v11 = *(a2 + 8 * i);
      }

      v12 = v11;
      v13 = v10;
      v10 = v12;
      v14 = [v13 barButtonItems];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v10 barButtonItems];
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v16) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15UIBarButtonItemC_Tt1g5(v15, v17);

      if ((v16 & 1) == 0)
      {
        goto LABEL_33;
      }

      v18 = [v13 representativeItem];
      v19 = [v10 representativeItem];
      v20 = v19;
      if (v18)
      {
        if (!v19)
        {

LABEL_33:
          v23 = 0;
LABEL_34:

          return v23;
        }

        v21 = static NSObject.== infix(_:_:)();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        if (v20)
        {
          v23 = 0;
          v10 = v20;
          goto LABEL_34;
        }
      }

      if (v4 == v24)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v5 = __CocoaSet.count.getter();
  }

  if (v5 == __CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

  return 0;
}

void specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_11:
    if (!a2)
    {
      return;
    }

    goto LABEL_14;
  }

  v25 = a1;
  v4 = objc_opt_self();

  if ([v4 _UIPTabInfrastructureEnabled])
  {
    specialized static UIBarButtonItem.removeLegacyOverflowItem(from:)(&v25);
    v6 = v5;
    if (v5)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      aBlock[4] = partial apply for closure #1 in UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:);
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
      aBlock[3] = &block_descriptor_147;
      v9 = _Block_copy(aBlock);
      v10 = v6;

      v6 = [v7 elementWithUncachedProvider_];

      _Block_release(v9);
    }

    v11 = [v2 additionalOverflowItems];
    if (!v11 || (v11, !v6))
    {
      [v2 setAdditionalOverflowItems_];
    }
  }

  v12 = specialized _copyCollectionToContiguousArray<A>(_:)(v25);

  v13 = specialized UINavigationItem._gatherIntoGroups(from:coalesceSpaceDirectionIsTrailing:)(v12, 1);

  v14 = [v2 trailingItemGroups];
  type metadata accessor for NSMutableAttributedString(0, &sharedTypeToFocusInputView._window);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = specialized UINavigationItem._itemGroups(_:areEquivalentTo:)(v15, v13);

  if (v14)
  {

    goto LABEL_11;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setTrailingItemGroups_];

  if (!a2)
  {
    return;
  }

LABEL_14:
  v17 = [v2 pinnedTrailingGroup];
  if (!v17 || (v18 = v17, v19 = [v17 barButtonItems], v18, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem), v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, LOBYTE(v19) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15UIBarButtonItemC_Tt1g5(v20, a2), , (v19 & 1) == 0))
  {
    v21 = objc_allocWithZone(MEMORY[0x277D751F0]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v22 = Array._bridgeToObjectiveC()().super.isa;
    v23 = [v21 initWithBarButtonItems:v22 representativeItem:0];

    [v2 setPinnedTrailingGroup_];
  }
}

unint64_t lazy protocol witness table accessor for type UINavigationItem.DOCSheetType and conformance UINavigationItem.DOCSheetType()
{
  result = sharedTypeToFocusInputView._gestureRecognizers;
  if (!sharedTypeToFocusInputView._gestureRecognizers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._gestureRecognizers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIBarButtonItem.DOCAdaptableDismissButtonType and conformance UIBarButtonItem.DOCAdaptableDismissButtonType()
{
  result = sharedTypeToFocusInputView._viewDelegate;
  if (!sharedTypeToFocusInputView._viewDelegate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._viewDelegate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15UIBarButtonItemCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A]);
  }

  return result;
}

void static DOCDebugUIScenario.forSource(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = xmmword_249BBBD10;
  v4 = 0uLL;
  if (a1 && *&sharedTypeToFocusInputView._viewFlags)
  {
    v5 = a1;

    DOCDebugUIScenarioManager.scenario(for:)(v5, v15);
    v13 = v15[1];
    v14 = v15[0];
    v11 = v15[3];
    v12 = v15[2];
    v10 = v15[4];
    v6 = v16;

    v8 = v10;
    v7 = v11;
    v9 = v12;
    v4 = v13;
    v3 = v14;
  }

  else
  {
    v6 = 0;
    v9 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v6;
}

uint64_t DOCItemCollectionCellContent.debugUIScenario.getter@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x3D0))();
  if (result)
  {
    ObjectType = swift_getObjectType();
    DOCNode.debugUIScenario.getter(ObjectType, v16);
    v14 = v16[1];
    v15 = v16[0];
    v12 = v16[3];
    v13 = v16[2];
    v11 = v16[4];
    v5 = v17;
    result = swift_unknownObjectRelease();
    v7 = v11;
    v6 = v12;
    v9 = v13;
    v8 = v14;
    v10 = v15;
  }

  else
  {
    v5 = 0;
    v10 = xmmword_249BBBD10;
    v8 = 0uLL;
    v9 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v5;
  return result;
}

uint64_t DOCDebugUIScenario.shareInfo.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DOCDebugUIScenario.tags.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x277D84F90];
  if (*v0)
  {
    v21 = MEMORY[0x277D84F90];
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 32);
      do
      {
        v6 = *v4++;
        v5 = v6;
        if (v6 > 3)
        {
          v7 = 6;
          if (v5 != 6)
          {
            v7 = 7;
          }

          v8 = 6579570;
          if (v5 != 6)
          {
            v8 = 0x65676E61726FLL;
          }

          v9 = 0xE300000000000000;
          if (v5 != 6)
          {
            v9 = 0xE600000000000000;
          }

          v10 = 4;
          if (v5 != 4)
          {
            v10 = 5;
          }

          v11 = 1702194274;
          if (v5 != 4)
          {
            v11 = 0x776F6C6C6579;
          }

          v12 = 0xE400000000000000;
          if (v5 != 4)
          {
            v12 = 0xE600000000000000;
          }

          v13 = v5 <= 5;
        }

        else
        {
          v7 = 2;
          if (v5 != 2)
          {
            v7 = 3;
          }

          v8 = 0x6E65657267;
          if (v5 != 2)
          {
            v8 = 0x656C70727570;
          }

          v9 = 0xE500000000000000;
          if (v5 != 2)
          {
            v9 = 0xE600000000000000;
          }

          v10 = 1;
          if (!v5)
          {
            v10 = v5;
          }

          v11 = 0x676154656E6F6ELL;
          if (v5)
          {
            v11 = 2036429415;
          }

          v12 = 0xE700000000000000;
          if (v5)
          {
            v12 = 0xE400000000000000;
          }

          v13 = v5 <= 1;
        }

        if (v13)
        {
          v14 = v10;
        }

        else
        {
          v14 = v7;
        }

        if (v13)
        {
          v15 = v11;
        }

        else
        {
          v15 = v8;
        }

        if (v13)
        {
          v16 = v12;
        }

        else
        {
          v16 = v9;
        }

        v17 = objc_allocWithZone(MEMORY[0x277D06260]);
        v18 = MEMORY[0x24C1FAD20](v15, v16);

        v19 = [v17 initWithDisplayName:v18 labelIndex:v14 type:1];

        if (v19)
        {
          MEMORY[0x24C1FB090]();
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = v21;
        }

        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

uint64_t DOCDebugUIScenario.sourceName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DOCDebugUIScenario.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCNode.debugUIScenario.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  viewFlags = sharedTypeToFocusInputView._viewFlags;
  if (*&sharedTypeToFocusInputView._viewFlags)
  {
    v5 = result;
    swift_unknownObjectRetain();

    specialized DOCDebugUIScenarioManager.scenario(for:)(v2, viewFlags, v5, v17);
    v15 = v17[1];
    v16 = v17[0];
    v13 = v17[3];
    v14 = v17[2];
    v12 = v17[4];
    v6 = v18;

    result = swift_unknownObjectRelease();
    v8 = v12;
    v7 = v13;
    v10 = v14;
    v9 = v15;
    v11 = v16;
  }

  else
  {
    v6 = 0;
    v11 = xmmword_249BBBD10;
    v9 = 0uLL;
    v10 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v6;
  return result;
}

uint64_t static DOCDebugUIScenario.forNode(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = xmmword_249BBBD10;
  v4 = 0uLL;
  if (result && (viewFlags = sharedTypeToFocusInputView._viewFlags) != 0)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();

    specialized DOCDebugUIScenarioManager.scenario(for:)(v6, viewFlags, ObjectType, v17);
    v15 = v17[1];
    v16 = v17[0];
    v13 = v17[3];
    v14 = v17[2];
    v12 = v17[4];
    v8 = v18;

    result = swift_unknownObjectRelease();
    v10 = v12;
    v9 = v13;
    v11 = v14;
    v4 = v15;
    v3 = v16;
  }

  else
  {
    v8 = 0;
    v11 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v11;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  *(a2 + 80) = v8;
  return result;
}

double DOCDebugUIScenario.init(settings:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  DOCDebugUIScenario.loadDerivedValues()();
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = 0;
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void DOCDebugUIScenario.loadDerivedValues()()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v2 = *(v0 + 16) * 100.0;
    goto LABEL_10;
  }

  v1 = *(v0 + 8);
  if (v1 <= 4 || *(v0 + 8) <= 6u)
  {
    goto LABEL_8;
  }

  if (v1 != 7)
  {
    if (v1 != 8)
    {
      return;
    }

LABEL_8:
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_9:
  v2 = 75.0;
LABEL_10:
  v4 = [objc_opt_self() progressWithTotalUnitCount_];
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setCompletedUnitCount_];

  *(v0 + 80) = v5;
  *(v0 + 8) = 7;
}

void *DOCDebugUIScenario.downloadingProgress.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t DOCDebugUIScenarioManager.scenario(for:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v69 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v5);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
  v8 = MEMORY[0x28223BE20](v67, v7);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v61 = &v60 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v68 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  *&v72 = 0xD00000000000001ELL;
  *(&v72 + 1) = 0x8000000249BF93F0;
  v62 = a1;
  v28 = [a1 displayName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  MEMORY[0x24C1FAEA0](v29, v31);

  URL.init(string:)();

  result = (*(v24 + 48))(v22, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v24 + 32);
    v64 = v23;
    v34 = v33(v27, v22, v23);
    v60 = v3;
    v35 = *(v3 + 16);
    MEMORY[0x28223BE20](v34, v36);
    *(&v60 - 2) = v27;
    v37 = *(*v35 + 160);
    v38 = v68;
    v37(closure #1 in DOCDebugUIScenarioManager.storedScenario(forURL:)partial apply);
    outlined init with copy of DOCGridLayout.Spec?(v38, v16, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    v39 = *(v70 + 48);
    v70 += 48;
    LODWORD(v38) = v39(v16, 1, v69);
    outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    if (v38 == 1)
    {
      v40 = DOCDebugUIScenarioManager.loadScenario(forSource:cacheURL:)(v62, v27);
      MEMORY[0x28223BE20](v40, v41);
      *(&v60 - 2) = v27;
      v42 = v61;
      v37(closure #1 in DOCDebugUIScenarioManager.storedScenario(forURL:)partial apply);
      v43 = v68;
      outlined destroy of CharacterSet?(v68, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
      (*(v24 + 8))(v27, v64);
      outlined init with take of (key: URL, value: FPItem)(v42, v43, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
      v44 = v65;
      v45 = v43;
    }

    else
    {
      (*(v24 + 8))(v27, v64);
      v44 = v65;
      v45 = v68;
    }

    outlined init with take of (key: URL, value: FPItem)(v45, v44, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    v46 = v69;
    if (v39(v44, 1, v69) == 1)
    {
      result = outlined destroy of CharacterSet?(v44, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
      v47 = 0;
      v48 = xmmword_249BBBD10;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
    }

    else
    {
      v53 = v44;
      v54 = v63;
      outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v53, v63);
      v55 = v54 + *(v46 + 20);
      v56 = *(v55 + 32);
      v57 = *(v55 + 64);
      v75 = *(v55 + 48);
      v76 = v57;
      v77 = *(v55 + 80);
      v58 = *v55;
      v73 = *(v55 + 16);
      v74 = v56;
      v72 = v58;
      outlined init with copy of DOCGridLayout.Spec?(&v72, v71, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
      result = outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(v54);
      v48 = v72;
      v49 = v73;
      v50 = v74;
      v51 = v75;
      v52 = v76;
      v47 = v77;
    }

    v59 = v66;
    *v66 = v48;
    v59[1] = v49;
    v59[2] = v50;
    v59[3] = v51;
    v59[4] = v52;
    *(v59 + 10) = v47;
  }

  return result;
}

uint64_t DOCDebugUIScenarioManager.loadScenario(forSource:cacheURL:)(void *a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = MEMORY[0x24C1FAD20](0xD000000000000028, 0x8000000249BF9380);
  v14 = [v12 stringForKey_];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [a1 displayName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (!v17)
  {

    v22 = 0;
    v23 = 0;
    goto LABEL_12;
  }

  if (v19 != v15 || v17 != v21)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v17 = 0;
LABEL_12:
    v34 = 0u;
    v35 = xmmword_249BBBD10;
    v33 = 0u;
    v32 = 0u;
    goto LABEL_13;
  }

LABEL_10:
  v43 = 0;
  *&v38 = MEMORY[0x277D84F90];
  WORD4(v38) = 265;
  *&v39 = 0;
  BYTE8(v39) = 1;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  DOCDebugUIScenario.loadDerivedValues()();
  v34 = v39;
  v35 = v38;
  v32 = v41;
  v33 = v40;
  v23 = *(&v42 + 1);
  v22 = v42;
  v17 = v43;
LABEL_13:
  (*(v4 + 16))(v11, v36, v3);
  v25 = &v11[*(v8 + 20)];
  v26 = v34;
  *v25 = v35;
  *(v25 + 1) = v26;
  v27 = v32;
  *(v25 + 2) = v33;
  *(v25 + 3) = v27;
  *(v25 + 8) = v22;
  *(v25 + 9) = v23;
  *(v25 + 10) = v17;
  v28 = URL.standardizedFileURL.getter();
  v29 = *(v37 + 16);
  MEMORY[0x28223BE20](v28, v30);
  *(&v32 - 2) = v7;
  *(&v32 - 1) = v11;
  (*(*v29 + 168))(partial apply for closure #1 in DOCDebugUIScenarioManager.storeScenario(forURL:loadedScenario:));
  (*(v4 + 8))(v7, v3);
  return outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(v11);
}

uint64_t closure #1 in DOCDebugUIScenarioManager.loadCollectionScenarioInFolderContaining(node:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  v17 = a1[3];
  v39 = a1[2];
  v40 = v17;
  v18 = a1[5];
  v41 = a1[4];
  v42 = v18;
  v19 = a1[1];
  v37 = *a1;
  v38 = v19;
  outlined init with copy of DOCGridLayout.Spec?(&v37, &v36, &_sSS3key_26DocumentManagerExecutables18DOCDebugUIScenarioV8SettingsV5valuetMd);

  URL.appendingPathComponent(_:)();
  v35 = 0;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v30 = v38;
  v31 = v39;
  DOCDebugUIScenario.loadDerivedValues()();
  (*(v9 + 16))(v12, v16, v8);
  v20 = v27;
  URL.standardizedFileURL.getter();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v22 = v20 + *(v5 + 28);
  v23 = v33;
  *(v22 + 32) = v32;
  *(v22 + 48) = v23;
  *(v22 + 64) = v34;
  *(v22 + 80) = v35;
  v24 = v31;
  *v22 = v30;
  *(v22 + 16) = v24;
  URL.standardizedFileURL.getter();
  v25 = *(v28 + 16);
  v29[2] = v12;
  v29[3] = v20;
  (*(*v25 + 168))(closure #1 in DOCDebugUIScenarioManager.storeScenario(forURL:loadedScenario:)partial apply, v29, MEMORY[0x277D84F78] + 8);
  v21(v16, v8);
  v21(v12, v8);
  return outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(v20);
}

uint64_t DOCDebugUIScenarioManager.immediateFileURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - v18;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v37 - v23;
  v25 = [a1 nodeURL];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v4 + 32);
    v27(v19, v7, v3);
    v28 = *(v4 + 56);
    v28(v19, 0, 1, v3);
    v27(v24, v19, v3);
    v28(v24, 0, 1, v3);
    v29 = v38;
  }

  else
  {
    v28 = *(v4 + 56);
    v28(v19, 1, 1, v3);
    v30 = [a1 fpfs_fpItem];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 fileURL];

      if (v32)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v28(v15, v33, 1, v3);
      outlined init with take of (key: URL, value: FPItem)(v15, v24, &_s10Foundation3URLVSgMd);
    }

    else
    {
      v28(v24, 1, 1, v3);
    }

    v34 = (*(v4 + 48))(v19, 1, v3);
    v29 = v38;
    if (v34 != 1)
    {
      outlined destroy of CharacterSet?(v19, &_s10Foundation3URLVSgMd);
    }
  }

  outlined init with copy of DOCGridLayout.Spec?(v24, v11, &_s10Foundation3URLVSgMd);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
    v35 = 1;
  }

  else
  {
    URL.standardizedFileURL.getter();
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    (*(v4 + 8))(v11, v3);
    v35 = 0;
  }

  return (v28)(v29, v35, 1, v3);
}

uint64_t closure #1 in DOCDebugUIScenarioManager.storedScenario(forURL:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
    v16 = *(v9 - 8);
    outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(v8 + *(v16 + 72) * v7, a3);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t closure #1 in DOCDebugUIScenarioManager.storeScenario(forURL:loadedScenario:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(a3, v8);
  v14 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  return specialized Dictionary.subscript.setter(v8, v12);
}

uint64_t DOCDebugUIScenarioManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized DOCDebugUIScenarioManager.scenario(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v70 = a3;
  v75 = a4;
  v74 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v6);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
  MEMORY[0x28223BE20](v72, v9);
  v71 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v68 = v65 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v65 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v65 - v24;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = v65 - v33;
  v69 = a1;
  v73 = a2;
  DOCDebugUIScenarioManager.immediateFileURL(for:)(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v35 = &_s10Foundation3URLVSgMd;
    v36 = v25;
  }

  else
  {
    v67 = v8;
    (*(v27 + 32))(v34, v25, v26);
    v37 = URL.standardizedFileURL.getter();
    v38 = v73[2];
    v40 = MEMORY[0x28223BE20](v37, v39);
    v65[-2] = v30;
    v41 = (*v38 + 160);
    v66 = *v41;
    v65[1] = v41;
    v66(partial apply for closure #1 in DOCDebugUIScenarioManager.storedScenario(forURL:), v40);
    v42 = *(v27 + 8);
    v42(v30, v26);
    outlined init with copy of DOCGridLayout.Spec?(v21, v17, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    v43 = *(v76 + 48);
    v44 = v74;
    v76 += 48;
    if ((v43)(v17, 1, v74) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
      specialized DOCDebugUIScenarioManager.loadCollectionScenarioInFolderContaining(node:)(v69, v73);
      v45 = URL.standardizedFileURL.getter();
      v47 = MEMORY[0x28223BE20](v45, v46);
      v65[-2] = v30;
      v73 = v43;
      v48 = v68;
      v66(closure #1 in DOCDebugUIScenarioManager.storedScenario(forURL:)partial apply, v47);
      v44 = v74;
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
      v42(v34, v26);
      v42(v30, v26);
      v49 = v48;
      v43 = v73;
      outlined init with take of (key: URL, value: FPItem)(v49, v21, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    }

    else
    {
      v42(v34, v26);
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    }

    v50 = v71;
    outlined init with take of (key: URL, value: FPItem)(v21, v71, &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd);
    v51 = (v43)(v50, 1, v44);
    v52 = v67;
    if (v51 != 1)
    {
      outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v50, v67);
      v60 = v52 + *(v44 + 20);
      v61 = *(v60 + 32);
      v62 = *(v60 + 64);
      v81 = *(v60 + 48);
      v82 = v62;
      v83 = *(v60 + 80);
      v63 = *v60;
      v79 = *(v60 + 16);
      v80 = v61;
      v78 = v63;
      outlined init with copy of DOCGridLayout.Spec?(&v78, v77, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
      result = outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(v52);
      v55 = v78;
      v56 = v79;
      v57 = v80;
      v58 = v81;
      v59 = v82;
      v54 = v83;
      goto LABEL_10;
    }

    v35 = &_s26DocumentManagerExecutables018DOCDebugUIScenarioB033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVSgMd;
    v36 = v50;
  }

  result = outlined destroy of CharacterSet?(v36, v35);
  v54 = 0;
  v55 = xmmword_249BBBD10;
  v56 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
  v59 = 0uLL;
LABEL_10:
  v64 = v75;
  *v75 = v55;
  v64[1] = v56;
  v64[2] = v57;
  v64[3] = v58;
  v64[4] = v59;
  *(v64 + 10) = v54;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCDebugUIScenario(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCDebugUIScenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario()
{
  result = *(&sharedTypeToFocusInputView._viewFlags + 2);
  if (!*(&sharedTypeToFocusInputView._viewFlags + 2))
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1)
{
  v2 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized DOCDebugUIScenarioManager.loadCollectionScenarioInFolderContaining(node:)(void *a1, uint64_t a2)
{
  v58 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  MEMORY[0x28223BE20](v58, v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v52 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v52 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v52 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v52 - v26;
  DOCDebugUIScenarioManager.immediateFileURL(for:)(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
  }

  v57 = a2;
  (*(v12 + 32))(v27, v10, v11);
  URL.deletingLastPathComponent()();
  URL.appendingPathComponent(_:)();
  v29 = [objc_opt_self() defaultManager];
  v30 = URL.path.getter();
  v31 = MEMORY[0x24C1FAD20](v30);

  v32 = [v29 fileExistsAtPath_];

  if (v32)
  {
    v56 = v23;
    v33 = Data.init(contentsOf:options:)();
    v35 = v34;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type DOCDebugUIScenarioCollection and conformance DOCDebugUIScenarioCollection();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v55 = v59;
    (*(v12 + 16))(v15, v27, v11);
    URL.standardizedFileURL.getter();
    v53 = v35;
    v42 = *(v12 + 8);
    v54 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v15, v11);
    v43 = &v6[*(v58 + 20)];
    *v43 = 1;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 0u;
    *(v43 + 56) = 0u;
    *(v43 + 72) = 0u;
    v44 = URL.standardizedFileURL.getter();
    v52[1] = v52;
    v58 = v33;
    v45 = v57;
    v46 = *(v57 + 16);
    v48 = MEMORY[0x28223BE20](v44, v47);
    v52[-2] = v15;
    v52[-1] = v6;
    (*(*v46 + 168))(closure #1 in DOCDebugUIScenarioManager.storeScenario(forURL:loadedScenario:)partial apply, v48);
    v42(v15, v11);
    v49 = outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(v6);
    MEMORY[0x28223BE20](v49, v50);
    v51 = v55;
    v52[-2] = v56;
    v52[-1] = v45;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in DOCDebugUIScenarioManager.loadCollectionScenarioInFolderContaining(node:), &v52[-4], v51);
    outlined consume of Data._Representation(v58, v53);

    v42(v19, v11);
    v42(v27, v11);
    return (v42)(v56, v11);
  }

  else
  {
    (*(v12 + 16))(v15, v27, v11);
    URL.standardizedFileURL.getter();
    v36 = *(v12 + 8);
    v36(v15, v11);
    v37 = &v6[*(v58 + 20)];
    *v37 = 1;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    *(v37 + 40) = 0u;
    *(v37 + 56) = 0u;
    *(v37 + 72) = 0u;
    v38 = URL.standardizedFileURL.getter();
    v39 = *(v57 + 16);
    v41 = MEMORY[0x28223BE20](v38, v40);
    v52[-2] = v15;
    v52[-1] = v6;
    (*(*v39 + 168))(closure #1 in DOCDebugUIScenarioManager.storeScenario(forURL:loadedScenario:)partial apply, v41);
    v36(v19, v11);
    v36(v27, v11);
    v36(v15, v11);
    outlined destroy of DOCDebugUIScenarioManager.LoadedScenario(v6);
    return (v36)(v23, v11);
  }
}

uint64_t outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DOCDebugUIScenarioCollection and conformance DOCDebugUIScenarioCollection()
{
  result = *(&sharedTypeToFocusInputView._viewFlags + 1);
  if (!*(&sharedTypeToFocusInputView._viewFlags + 1))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._viewFlags + 1);
  }

  return result;
}

void type metadata completion function for DOCDebugUIScenarioManager.LoadedScenario()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DOCDebugUIScenario?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for DOCDebugUIScenario?()
{
  if (!*&sharedTypeToFocusInputView._unsatisfiableConstraintsLoggingSuspensionCount)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &sharedTypeToFocusInputView._unsatisfiableConstraintsLoggingSuspensionCount);
    }
  }
}

uint64_t DOCFocusableCollectionView.backwardDirection.getter()
{
  if ([v0 effectiveUserInterfaceLayoutDirection])
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

id DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for timestampOfLastKeyboardFocusKeyCommand != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, &sharedTypeToFocusInputView._minimumSafeAreaInsets);
  swift_beginAccess();
  (*(v18 + 16))(v21, v22, v17);
  Date.timeIntervalSinceNow.getter();
  v24 = v23;
  (*(v18 + 8))(v21, v17);
  sharedTypeToFocusInputView._minimumSafeAreaInsets.right = -v24;
  Date.init()();
  swift_beginAccess();
  (*(v18 + 40))(v22, v21, v17);
  swift_endAccess();
  specialized DOCFocusableCollectionView.hideMenu()();
  v25 = [v5 effectiveUserInterfaceLayoutDirection];
  v53 = a4;
  if (a1 == 4)
  {
    if (v25 == 1)
    {
      a1 = 3;
    }

    else
    {
      a1 = 4;
    }
  }

  else if (a1 == 3)
  {
    if (v25 == 1)
    {
      a1 = 4;
    }

    else
    {
      a1 = 3;
    }
  }

  v52 = a2;
  v26 = a2 & 3;
  v27 = [v5 indexPathsForSelectedItems];
  if (v27)
  {

    result = [v5 indexPathsForSelectedItems];
    if (!result)
    {
      __break(1u);
      goto LABEL_33;
    }

    v29 = result;
    v30 = type metadata accessor for IndexPath();
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = *(v31 + 16);

    if (v32)
    {
      v33 = (*(v53 + 32))(a3);
      (*(*v33 + 104))(v33);

      v34 = *(v30 - 8);
      v35 = *(v34 + 48);
      v36 = v35(v16, 1, v30);
      outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd);
      if (v36 != 1 && v26 != 2)
      {
        if ((v52 & 1) == 0)
        {
LABEL_17:
          if (one-time initialization token for keyboardFocus != -1)
          {
            swift_once();
          }

          static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_249B9A480;
          *(v37 + 56) = a3;
          *(v37 + 64) = swift_getWitnessTable();
          *(v37 + 32) = v5;
          v5;
          os_log(_:dso:log:type:_:)();

          return DOCFocusableCollectionView.changeFocus(with:)(a1, a3, v53);
        }

        if ([v5 isEditing])
        {
          return DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(a1, (v52 >> 1) & 1, a3, v53);
        }

        v41 = (*(v53 + 8))(a3);
        if (!v41)
        {
          goto LABEL_17;
        }

        v49 = v42;
        v50 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
        v48 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_249B9A480;
        v44 = v51;
        DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.getter(a3, v53);
        v45 = v44;
        result = v35(v44, 1, v30);
        if (result != 1)
        {
          ObjectType = swift_getObjectType();
          (*(v34 + 32))(v43 + v48, v45, v30);
          v47 = (*(v49 + 96))(v5, v53, v43, ObjectType);
          swift_unknownObjectRelease();

          if ((v47 & 1) == 0)
          {
            goto LABEL_17;
          }

          return DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(a1, (v52 >> 1) & 1, a3, v53);
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }
  }

  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249B9A480;
  *(v38 + 56) = a3;
  *(v38 + 64) = swift_getWitnessTable();
  *(v38 + 32) = v5;
  v39 = v5;
  os_log(_:dso:log:type:_:)();

  if (v26 == 2)
  {
    v40 = v53;
    if ((a1 - 1) <= 3)
    {
      a1 = qword_249BBC198[a1 - 1];
    }
  }

  else
  {
    v40 = v53;
  }

  return specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(a1, v26 == 2, a3, v40);
}

uint64_t DOCFocusableCollectionView.hasFocus.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  v3 = (*(*v2 + 152))(v2);

  return v3 & 1;
}

uint64_t DOCFocusableCollectionViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v2 = type metadata accessor for IndexPath();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  return v0;
}

uint64_t DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v12);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v63 = v17;
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v74 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v75 = &v60 - v23;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v60 - v27;
  v29 = *(a4 + 8);
  v78 = a4;
  if (v29(a3, a4, v26))
  {
    v31 = v30;
    ObjectType = swift_getObjectType();
    (*(v31 + 64))(v4, v78, a1, a2 & 1, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  v66 = a2;
  v33 = *(v15 + 16);
  v65 = a1;
  v62 = v15 + 16;
  v61 = v33;
  v33(v28, a1, v14);
  v34 = *(v15 + 56);
  v34(v28, 0, 1, v14);
  v35 = v78;
  DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.setter(v28, a3, v78);
  v34(v28, 1, 1, v14);
  DOCFocusableCollectionView.indexPathForSelectionExtensionStart.setter(v28, a3, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v36 = *(v15 + 80);
  v37 = swift_allocObject();
  *(v37 + 1) = xmmword_249B9A480;
  v38 = *(v35 + 32);
  v76 = a3;
  v77 = v4;
  v73 = v38;
  v39 = v38(a3, v35);
  v40 = v75;
  (*(*v39 + 104))(v39);

  v41 = *(v15 + 48);
  result = v41(v40, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v43 = *(v15 + 32);
    v75 = (v15 + 32);
    v60 = v43;
    v43(&v37[(v36 + 32) & ~v36], v40, v14);
    v80.value._rawValue = v37;
    v80.is_nil = 0;
    DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(v80, 0, v44);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v45 = v73(v76, v78);
    v46 = v74;
    (*(*v45 + 104))(v45);

    result = v41(v46, 1, v14);
    if (result != 1)
    {
      v48 = v76;
      v47 = v77;
      v49 = v78;
      DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(v46, v76, v78);
      (*(v15 + 8))(v46, v14);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v50 = static OS_dispatch_queue.main.getter();
      v51 = v64;
      v61(v64, v65, v14);
      v52 = (v36 + 40) & ~v36;
      v53 = v52 + v63;
      v54 = swift_allocObject();
      *(v54 + 2) = v48;
      *(v54 + 3) = v49;
      *(v54 + 4) = v47;
      v60(&v54[v52], v51, v14);
      v54[v53] = v66 & 1;
      aBlock[4] = partial apply for closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:);
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_148;
      v55 = _Block_copy(aBlock);
      v56 = v47;

      v57 = v67;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v58 = v69;
      v59 = v72;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v57, v58, v55);
      _Block_release(v55);

      (*(v71 + 8))(v58, v59);
      return (*(v68 + 8))(v57, v70);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCFocusableCollectionView.resignFocus()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.setter(v8, v4, v3);
  v10 = *(v3 + 32);
  v11 = v10(v4, v3);
  v12 = (*(*v11 + 152))(v11);

  if (v12)
  {
    if ((*(v3 + 8))(v4, v3))
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = v10(v4, v3);
      (*(*v16 + 104))(v16);

      (*(v14 + 16))(v2, v3, v8, ObjectType, v14);
      swift_unknownObjectRelease();
      outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
    }
  }
}

Swift::Void __swiftcall DOCFocusableCollectionView.performKeyCommand(_:)(UIKeyCommand *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = [(UIKeyCommand *)a1 input];
  if (v6)
  {

    v7 = UIKeyCommand.doc_direction.getter();
    v8 = [(UIKeyCommand *)a1 modifierFlags];
    v9 = [(UIKeyCommand *)a1 modifierFlags]>> 18;
    v10 = *(v3 + 40);

    v10(v7, v9 & 2 | (v8 >> 17) & 1, v4, v3);
  }
}

uint64_t DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  (*(*v2 + 104))(v2);
}

uint64_t DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  v10 = (*(a3 + 32))(a2, a3);
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation9IndexPathVSgMd);
  (*(*v10 + 112))(v9);

  return outlined destroy of CharacterSet?(a1, &_s10Foundation9IndexPathVSgMd);
}

uint64_t DOCFocusableCollectionView.forwardDirection.getter()
{
  if ([v0 effectiveUserInterfaceLayoutDirection])
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

Swift::Void __swiftcall DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(Swift::OpaquePointer_optional _, Swift::Bool animated, UICollectionViewScrollPosition scrollPosition)
{
  v4 = v3;
  v5 = animated;
  v6 = *&_.is_nil;
  rawValue = _.value._rawValue;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 indexPathsForSelectedItems];
  if (!v14)
  {
LABEL_7:
    if (rawValue)
    {
      v20 = rawValue[2];
      if (v20)
      {
        v21 = rawValue + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v22 = *(v9 + 72);
        do
        {
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v4 selectItemAtIndexPath:isa animated:v6 & 1 scrollPosition:v5];

          v21 += v22;
          --v20;
        }

        while (v20);
      }
    }

    return;
  }

  v25 = rawValue;
  v26 = v5;
  v27 = v6;
  v15 = v14;
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_6:

    rawValue = v25;
    v5 = v26;
    LOBYTE(v6) = v27;
    goto LABEL_7;
  }

  v18 = 0;
  while (v18 < *(v16 + 16))
  {
    (*(v9 + 16))(v13, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18++, v8);
    v19 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v4 deselectItemAtIndexPath:v19 animated:v27 & 1];

    (*(v9 + 8))(v13, v8);
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t one-time initialization function for keyboardFocus()
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.keyboardFocus = result;
  return result;
}

uint64_t *OS_os_log.keyboardFocus.unsafeMutableAddressor()
{
  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  return &static OS_os_log.keyboardFocus;
}

id static OS_os_log.keyboardFocus.getter()
{
  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.keyboardFocus;

  return v1;
}

uint64_t key path setter for DOCFocusableCollectionViewState.indexPathForMostRecentlySelectedItem : DOCFocusableCollectionViewState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd);
  return (*(**a2 + 112))(v7);
}

uint64_t key path setter for DOCFocusableCollectionViewState.indexPathForSelectionExtensionStart : DOCFocusableCollectionViewState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd);
  return (*(**a2 + 136))(v7);
}

uint64_t DOCFocusableCollectionViewState.indexPathForMostRecentlySelectedItem.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t DOCFocusableCollectionViewState.hasFocus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCFocusableCollectionViewState.hasFocus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCFocusableCollectionViewState.deinit()
{
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem, &_s10Foundation9IndexPathVSgMd);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, &_s10Foundation9IndexPathVSgMd);
  return v0;
}

uint64_t DOCFocusableCollectionViewState.__deallocating_deinit()
{
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem, &_s10Foundation9IndexPathVSgMd);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, &_s10Foundation9IndexPathVSgMd);

  return swift_deallocClassInstance();
}

uint64_t DOCFocusableCollectionViewState.init()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v2 = type metadata accessor for IndexPath();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  return v0;
}

void (*DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[4] = v11;
  v12 = (*(a3 + 32))(a2, a3);
  (*(*v12 + 104))(v12);

  return DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.modify;
}

uint64_t DOCFocusableCollectionView.indexPathForSelectionExtensionStart.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  (*(*v2 + 128))(v2);
}

uint64_t key path setter for DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t))
{
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v14 - v11;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v14 - v11, &_s10Foundation9IndexPathVSgMd);
  return a5(v12, v7, v8);
}

uint64_t DOCFocusableCollectionView.indexPathForSelectionExtensionStart.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  v10 = (*(a3 + 32))(a2, a3);
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation9IndexPathVSgMd);
  (*(*v10 + 136))(v9);

  return outlined destroy of CharacterSet?(a1, &_s10Foundation9IndexPathVSgMd);
}

void (*DOCFocusableCollectionView.indexPathForSelectionExtensionStart.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[4] = v11;
  v12 = (*(a3 + 32))(a2, a3);
  (*(*v12 + 128))(v12);

  return DOCFocusableCollectionView.indexPathForSelectionExtensionStart.modify;
}

void DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    outlined init with copy of DOCGridLayout.Spec?((*a1)[4], v5, &_s10Foundation9IndexPathVSgMd);
    a3(v5, v8, v7);
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    a3((*a1)[4], v8, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t DOCFocusableCollectionView.hasFocus.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(a2, a3);
  (*(*v4 + 160))(a1);
}

void (*DOCFocusableCollectionView.hasFocus.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 32);
  v7[3] = v9;
  v10 = v9(a2, a3);
  v11 = (*(*v10 + 152))(v10);

  *(v8 + 32) = v11 & 1;
  return DOCFocusableCollectionView.hasFocus.modify;
}

void DOCFocusableCollectionView.hasFocus.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = ((*a1)[3])(**a1);
  (*(*v3 + 160))(v2);

  free(v1);
}

uint64_t one-time initialization function for timestampOfLastKeyboardFocusKeyCommand()
{
  v0 = type metadata accessor for Date();
  __swift_allocate_value_buffer(v0, &sharedTypeToFocusInputView._minimumSafeAreaInsets);
  __swift_project_value_buffer(v0, &sharedTypeToFocusInputView._minimumSafeAreaInsets);
  return Date.init()();
}

void DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = IndexPath.section.getter();
  if (v8 < [v4 numberOfSections] && (v9 = IndexPath.item.getter(), v9 < objc_msgSend(v4, sel_numberOfItemsInSection_, IndexPath.section.getter())) && (v10 = objc_msgSend(v4, sel_collectionViewLayout), isa = IndexPath._bridgeToObjectiveC()().super.isa, v12 = objc_msgSend(v10, sel_layoutAttributesForItemAtIndexPath_, isa), v10, isa, v12))
  {
    if ((*(a3 + 8))(a2, a3))
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 48))(v4, a3, a1, ObjectType, v14);
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = *MEMORY[0x277D768C8];
      v18 = *(MEMORY[0x277D768C8] + 8);
    }

    [v12 frame];
    v27 = UIEdgeInsetsInsetRect(v23, v24, v25, v26, v16, v18);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [v4 _effectiveContentInset];
    v35 = v34;
    v37 = v36;
    rect_16a = v38;
    v40 = v39;
    [v4 contentOffset];
    v42 = v37 + v41;
    [v4 contentOffset];
    rect_8 = v35 + v43;
    [v4 bounds];
    v44 = CGRectGetWidth(v53) - v37 - v40;
    v45 = v27;
    [v4 bounds];
    v46 = CGRectGetHeight(v54) - v35 - rect_16a;
    v55.origin.x = v27;
    v55.origin.y = v29;
    v55.size.width = v31;
    v55.size.height = v33;
    MinY = CGRectGetMinY(v55);
    v56.origin.x = v42;
    v56.origin.y = rect_8;
    v56.size.width = v44;
    v56.size.height = v46;
    if (MinY < CGRectGetMinY(v56) || (v57.origin.x = v45, v57.origin.y = v29, v57.size.width = v31, v57.size.height = v33, MaxY = CGRectGetMaxY(v57), v58.origin.x = v42, v58.origin.y = rect_8, v58.size.width = v44, v58.size.height = v46, CGRectGetMaxY(v58) < MaxY))
    {
      [v4 scrollRectToVisible:0 animated:{v45, v29, v31, v33}];
      [v4 _flashScrollIndicatorsPersistingPreviousFlashes];
    }

    rect_16 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v4 scrollToItemAtIndexPath_atScrollPosition_animated_];
  }

  else
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249B9A480;
    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    rect_16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [a1 cellForItemAtIndexPath_];

  UIAccessibilityPostNotification(0x3FCu, v11);
  result = (*(a5 + 8))(a4, a5);
  if (result)
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    (*(v14 + 72))(a1, a5, a2, a3 & 1, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIKeyCommand.doc_direction.getter()
{
  v1 = [v0 input];
  if (!v1)
  {
    goto LABEL_29;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v6 == v5)
  {
    v9 = 1;
    goto LABEL_9;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v3 || v11 != v5)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        v9 = 2;
        goto LABEL_10;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v14 == v5)
      {
        v9 = 3;
        goto LABEL_9;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        v9 = 3;
        goto LABEL_10;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v16 == v5)
      {
        v9 = 4;
        goto LABEL_9;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        return 4;
      }

      while (1)
      {
LABEL_29:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    v9 = 2;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

uint64_t UIEventDirection.doc_inverted.getter(uint64_t result)
{
  if ((result - 1) <= 3)
  {
    return qword_249BBC198[result - 1];
  }

  return result;
}

uint64_t DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v157) = a2;
  v149 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg_ACSgtMd);
  MEMORY[0x28223BE20](v145, v7);
  v144 = (&v139 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v151 = (&v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v13);
  v150 = &v139 - v14;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v140 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v141 = &v139 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v162 = &v139 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v143 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v152 = &v139 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v147 = &v139 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v154 = &v139 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v142 = &v139 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v148 = &v139 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v139 - v45;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v139 - v49;
  v53 = MEMORY[0x28223BE20](v51, v52);
  v55 = &v139 - v54;
  v56 = *(a4 + 32);
  v160 = (a4 + 32);
  v161 = v4;
  v57 = a3;
  v58 = v56(a3, a4, v53);
  (*(*v58 + 128))(v58);

  v159 = v16;
  v60 = *(v16 + 48);
  v59 = v16 + 48;
  v153 = v15;
  v163 = v60;
  v61 = v60(v55, 1, v15);
  outlined destroy of CharacterSet?(v55, &_s10Foundation9IndexPathVSgMd);
  if (v61 == 1)
  {
    v62 = (v56)(a3, a4);
    (*(*v62 + 104))(v62);

    DOCFocusableCollectionView.indexPathForSelectionExtensionStart.setter(v50, a3, a4);
  }

  v146 = v50;
  v63 = v161;
  v155 = a4;
  v158 = v59;
  if (v157)
  {
    v157 = *(a4 + 8);
    if (v157(a3, a4))
    {
      v65 = v64;
      ObjectType = swift_getObjectType();
      v67 = (*(v65 + 80))(v63, a4, v149, ObjectType, v65);
      swift_unknownObjectRelease();
      if (v67)
      {
        v68 = v56;
        if (!v157(a3, a4))
        {
          v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
          v77 = v150;
          (*(*(v138 - 8) + 56))(v150, 1, 1, v138);
          v81 = v153;
          goto LABEL_20;
        }

        v70 = v69;
        v71 = v68(a3, a4);
        v72 = v142;
        (*(*v71 + 104))(v71);
        v73 = v72;

        v46 = v153;
        if (v163(v72, 1, v153) != 1)
        {
          v74 = v63;
          v75 = swift_getObjectType();
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
          v77 = v150;
          v78 = v74;
          v79 = v73;
          v80 = (*(v70 + 88))(&v150[*(v76 + 48)], v78, a4, v73, v149, v75, v70);
          swift_unknownObjectRelease();
          (*(v159 + 8))(v79, v46);
          *v77 = v80;
          (*(*(v76 - 8) + 56))(v77, 0, 1, v76);
          v81 = v46;
LABEL_20:
          v113 = v163;
LABEL_21:
          v115 = v151;
          outlined init with copy of DOCGridLayout.Spec?(v77, v151, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
          v117 = (*(*(v116 - 8) + 48))(v115, 1, v116);
          v118 = v152;
          if (v117 == 1)
          {
            v119 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd;
            outlined destroy of CharacterSet?(v115, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
            v120 = v77;
          }

          else
          {
            v121 = *(v116 + 48);
            v123 = v144;
            v122 = v145;
            v124 = *(v145 + 48);
            *v144 = *v115;
            outlined init with take of IndexPath?(v115 + v121, v123 + v124);
            v125 = *v123;
            outlined init with take of IndexPath?(v123 + *(v122 + 48), v118);
            v126 = v155;
            v127 = v161;
            if (v157(v57, v155))
            {
              v129 = v128;
              v130 = swift_getObjectType();
              (*(v129 + 104))(v127, v126, v125, v130, v129);
              swift_unknownObjectRelease();
            }

            v131 = v143;
            outlined init with copy of DOCGridLayout.Spec?(v118, v143, &_s10Foundation9IndexPathVSgMd);
            v132 = v113(v131, 1, v81);
            v133 = v159;
            if (v132 != 1)
            {
              v135 = v140;
              (*(v159 + 32))(v140, v131, v81);
              v136 = v146;
              (*(v133 + 16))(v146, v135, v81);
              (*(v133 + 56))(v136, 0, 1, v81);
              DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.setter(v136, v57, v126);
              DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(v135, v57, v126);
              (*(v133 + 8))(v135, v81);
              outlined destroy of CharacterSet?(v118, &_s10Foundation9IndexPathVSgMd);
              v134 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd;
              v120 = v77;
              return outlined destroy of CharacterSet?(v120, v134);
            }

            v119 = &_s10Foundation9IndexPathVSgMd;
            outlined destroy of CharacterSet?(v118, &_s10Foundation9IndexPathVSgMd);
            outlined destroy of CharacterSet?(v77, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
            v120 = v131;
          }

          v134 = v119;
          return outlined destroy of CharacterSet?(v120, v134);
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }
  }

  v142 = v56;
  v82 = (v56)(a3, a4);
  (*(*v82 + 104))(v82);

  v83 = v153;
  if (v163(v46, 1, v153) != 1)
  {
    v84 = v159;
    v85 = *(v159 + 32);
    v85(v162, v46, v83);
    v157 = *(a4 + 8);
    v86 = v157(v57, a4);
    v156 = v57;
    if (v86)
    {
      v88 = v87;
      v89 = swift_getObjectType();
      v90 = v63;
      v91 = v148;
      (*(v88 + 32))(v90, a4, v162, v149, 0, v89, v88);
      v92 = v91;
      v63 = v90;
      swift_unknownObjectRelease();
      v81 = v83;
      if (v163(v92, 1, v83) != 1)
      {
        v93 = v141;
        v85(v141, v92, v83);
        v94 = v146;
        (*(v84 + 16))(v146, v93, v83);
        (*(v84 + 56))(v94, 0, 1, v83);
        v95 = v155;
        DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.setter(v94, v156, v155);
        v96 = *(v84 + 8);
        v96(v93, v81);
        v96(v162, v81);
LABEL_15:
        v57 = v156;
        if (!v157(v156, v95))
        {
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
          v77 = v150;
          (*(*(v114 - 8) + 56))(v150, 1, 1, v114);
          goto LABEL_20;
        }

        v153 = v97;
        v162 = v96;
        v46 = v160;
        v98 = v142;
        v99 = (v142)(v57, v95);
        v100 = v154;
        (*(*v99 + 128))(v99);

        v101 = v100;
        v102 = v163;
        if (v163(v101, 1, v81) == 1)
        {
          __break(1u);
        }

        else
        {
          v103 = v98(v57, v95);
          v104 = v147;
          (*(*v103 + 104))(v103);

          if (v102(v104, 1, v81) != 1)
          {
            v105 = v63;
            v106 = v81;
            v107 = swift_getObjectType();
            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
            v77 = v150;
            v109 = v95;
            v110 = v154;
            v111 = (*(v153 + 5))(&v150[*(v108 + 48)], v105, v109, v154, v104, v107);
            swift_unknownObjectRelease();
            v112 = v162;
            (v162)(v104, v106);
            (v112)(v110, v106);
            *v77 = v111;
            (*(*(v108 - 8) + 56))(v77, 0, 1, v108);
            v81 = v106;
            v113 = v163;
            v57 = v156;
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v92 = v148;
      (*(v84 + 56))(v148, 1, 1, v83);
      v81 = v83;
    }

    v96 = *(v84 + 8);
    v96(v162, v81);
    outlined destroy of CharacterSet?(v92, &_s10Foundation9IndexPathVSgMd);
    v95 = v155;
    goto LABEL_15;
  }

LABEL_34:
  outlined destroy of CharacterSet?(v46, &_s10Foundation9IndexPathVSgMd);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DOCFocusableCollectionView.changeFocus(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v56 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v54 - v20;
  v22 = (*(a3 + 32))(a2, a3, v19);
  (*(*v22 + 104))(v22);

  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    return outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
  }

  v57 = v14;
  v25 = *(v14 + 32);
  v60 = v13;
  v54 = v25;
  v25(v21, v12, v13);
  v26 = a2;
  v27 = *(a3 + 8);
  v58 = v26;
  if (v27())
  {
    v29 = v28;
    ObjectType = swift_getObjectType();
    LOBYTE(v29) = (*(v29 + 112))(v3, a3, v61, v21, ObjectType, v29);
    swift_unknownObjectRelease();
    if ((v29 & 1) == 0)
    {
      return (*(v57 + 8))(v21, v60);
    }
  }

  v55 = v21;
  if ((v27)(v58, a3))
  {
    v32 = v31;
    v33 = swift_getObjectType();
    v34 = v59;
    (*(v32 + 32))(v3, a3, v55, v61, 0, v33, v32);
    swift_unknownObjectRelease();
    if (v23(v34, 1, v60) != 1)
    {
      v35 = v56;
      v36 = v60;
      v54(v56, v34, v60);
      if (one-time initialization token for keyboardFocus != -1)
      {
        swift_once();
      }

      v61 = static OS_os_log.keyboardFocus;
      LODWORD(v59) = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_249BA08C0;
      v38 = v58;
      *(v37 + 56) = v58;
      *(v37 + 64) = swift_getWitnessTable();
      *(v37 + 32) = v3;
      v3;
      v39 = v55;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v41 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSIndexPath);
      *(v37 + 96) = v41;
      v42 = lazy protocol witness table accessor for type NSIndexPath and conformance NSObject();
      *(v37 + 104) = v42;
      *(v37 + 72) = isa;
      v43.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      *(v37 + 136) = v41;
      *(v37 + 144) = v42;
      *(v37 + 112) = v43;
      os_log(_:dso:log:type:_:)();

      (*(a3 + 56))(v35, 1, v38, a3);
      v44 = *(v57 + 8);
      v44(v35, v36);
      return (v44)(v39, v36);
    }
  }

  else
  {
    v34 = v59;
    (*(v57 + 56))(v59, 1, 1, v60);
  }

  outlined destroy of CharacterSet?(v34, &_s10Foundation9IndexPathVSgMd);
  if (!(v27)(v58, a3))
  {
    return (*(v57 + 8))(v55, v60);
  }

  v46 = v45;
  v47 = swift_getObjectType();
  v48 = v61;
  v49 = (*(v46 + 120))(v3, a3, v61, v47, v46);
  v51 = v50;
  swift_unknownObjectRelease();
  v52 = v55;
  if (v49)
  {
    (*(a3 + 64))(v58, a3);
    v53 = swift_getObjectType();
    specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(v48, 0, v53, v51);
  }

  return (*(v57 + 8))(v52, v60);
}

uint64_t specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v26[-v10];
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(a4 + 8))(a3, a4, v15))
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(v4, a4, a1, v27 & 1, ObjectType, v19);
    swift_unknownObjectRelease();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v17, v11, v12);
      (*(a4 + 56))(v17, 1, a3, a4);
      return (*(v13 + 8))(v17, v12);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd);
  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 56) = a3;
  WitnessTable = swift_getWitnessTable();
  *(v22 + 32) = v4;
  v24 = MEMORY[0x277D83C10];
  *(v22 + 96) = MEMORY[0x277D83B88];
  *(v22 + 104) = v24;
  *(v22 + 64) = WitnessTable;
  *(v22 + 72) = a1;
  v25 = v4;
  os_log(_:dso:log:type:_:)();
}

uint64_t specialized DOCFocusableCollectionView.hideMenu()()
{
  [objc_msgSend(objc_opt_self() shared)];

  return swift_unknownObjectRelease();
}

uint64_t specialized DOCFocusableCollectionView.keyboardFocusKeyCommands(with:override:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = [objc_opt_self() *a5];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t partial apply for closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = v0[4];

  return closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v6, v4, v5, v1, v2);
}

unint64_t lazy protocol witness table accessor for type DOCFocusableCollectionViewNavigationModifierFlags and conformance DOCFocusableCollectionViewNavigationModifierFlags()
{
  result = sharedTypeToFocusInputView._clippedSafeAreaCornerInsets.packedInsets;
  if (!sharedTypeToFocusInputView._clippedSafeAreaCornerInsets.packedInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._clippedSafeAreaCornerInsets.packedInsets);
  }

  return result;
}

{
  result = sharedTypeToFocusInputView._layer;
  if (!sharedTypeToFocusInputView._layer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._layer);
  }

  return result;
}

{
  result = sharedTypeToFocusInputView._viewBackingAux;
  if (!sharedTypeToFocusInputView._viewBackingAux)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._viewBackingAux);
  }

  return result;
}

{
  result = sharedTypeToFocusInputView._minXVariable;
  if (!sharedTypeToFocusInputView._minXVariable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &sharedTypeToFocusInputView._minXVariable);
  }

  return result;
}

NSISVariable *type metadata accessor for DOCFocusableCollectionViewState()
{
  result = sharedTypeToFocusInputView._minYVariable;
  if (!sharedTypeToFocusInputView._minYVariable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DOCFocusableCollectionViewState()
{
  type metadata accessor for IndexPath?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t FamilyFetcher.familyCircle()()
{
  return MEMORY[0x2822009F8](FamilyFetcher.familyCircle(), 0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = FamilyFetcher.familyCircle();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._boundsHeightVariable);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned FPItem?, @unowned NSError?) -> () with result type FPItem;
  v0[13] = &block_descriptor_149;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = FamilyFetcher.familyCircle();
  }

  else
  {
    v2 = FamilyFetcher.familyCircle();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = v0[20];
  swift_willThrow();

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.DocumentManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "Files Family Tip Failed to fetch family", v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v8 = v0[1];

  return v8(0);
}

uint64_t FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:), 0, 0);
}

uint64_t FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x24C1FAD20](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    [v6 setBool:0 forKey:*MEMORY[0x277D05E40]];
  }

  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];
  static TaskPriority.background.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v9;
  v12[6] = v8;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:), v12);

  outlined destroy of CharacterSet?(v7, &_sScPSgMd);

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  v6[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._typedStorage);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[47] = v7;
  v6[48] = *(v7 - 8);
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:), 0, 0);
}

uint64_t closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[53] = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = v0[41];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[54] = v3;
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

LABEL_22:
  v10 = Strong;
  v11 = __CocoaSet.count.getter();
  Strong = v10;
  v0[54] = v11;
  if (!v11)
  {
LABEL_16:

LABEL_17:

    v9 = v0[1];

    return v9();
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    v5 = v0[41];
    if ((v5 & 0xC000000000000001) != 0)
    {
      Strong = MEMORY[0x24C1FC540](v4);
      v6 = Strong;
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v6 = *(v5 + 8 * v4 + 32);
      Strong = swift_unknownObjectRetain();
    }

    v0[55] = v6;
    v0[56] = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v6 isFolder] && objc_msgSend(v6, sel_isSharedByCurrentUser))
    {
      break;
    }

    Strong = swift_unknownObjectRelease();
    v4 = v0[56];
    if (v4 == v0[54])
    {
      goto LABEL_16;
    }
  }

  v7 = v0[51];
  v0[2] = v0;
  v0[7] = v7;
  v0[3] = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
  v8 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVSgs5Error_pGMd);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?;
  v0[21] = &block_descriptor_15_6;
  v0[22] = v8;
  [v6 fetchURL_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
  }

  else
  {
    v2 = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  outlined init with take of (key: URL, value: FPItem)(v0[51], v1, &_s10Foundation3URLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v1, v2, &_s10Foundation3URLVSgMd);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[52];
    outlined destroy of CharacterSet?(v0[50], &_s10Foundation3URLVSgMd);
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();

    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[49];
    v8 = v0[50];
    v10 = v0[47];
    v11 = v0[48];
    v12 = v0[45];
    v13 = *(v11 + 32);
    v0[58] = v13;
    v0[59] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v13(v9, v8, v10);
    v14 = objc_opt_self();
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v0[60] = v16;
    v0[10] = v0;
    v0[15] = v12;
    v0[11] = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
    v18 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._layoutEngine);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
    v0[29] = &block_descriptor_19_10;
    v0[30] = v18;
    [v14 existingShareForFileOrFolderURL:v17 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 488) = v1;
  if (v1)
  {
    v2 = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
  }

  else
  {
    v2 = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v38 = *(v0 + 480);
  v1 = *(v0 + 464);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  outlined init with take of (key: URL, value: FPItem)(*(v0 + 360), v5, &sharedTypeToFocusInputView._typedStorage);
  v7 = *(v6 + 48);
  v8 = *(v5 + v7);
  v1(v4, v5, v2);
  *(v4 + v7) = v8;

  outlined init with copy of DOCGridLayout.Spec?(v4, v5, &sharedTypeToFocusInputView._typedStorage);
  v9 = *(v3 + 8);
  v10 = *(v5 + *(v6 + 48));
  *(v0 + 496) = v10;
  *(v0 + 504) = v9;
  *(v0 + 512) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v2);
  v11 = [v10 participants];
  type metadata accessor for CKShareParticipant();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v9;
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_20:

    if (one-time initialization token for DocumentManager != -1)
    {
LABEL_41:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.DocumentManager);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 416);
    v27 = *(v0 + 392);
    v29 = *(v0 + 368);
    v28 = *(v0 + 376);
    if (v25)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2493AC000, v23, v24, "Files Family Tip No shared folder with family member found", v30, 2u);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v29, &sharedTypeToFocusInputView._typedStorage);
    v37(v27, v28);
    outlined destroy of CharacterSet?(v26, &_s10Foundation3URLVSgMd);
    v10 = *(v0 + 448);
    if (v10 == *(v0 + 432))
    {
LABEL_24:

      v31 = *(v0 + 8);

      return v31();
    }

    else
    {
      while (1)
      {
        v32 = *(v0 + 328);
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x24C1FC540](v10);
        }

        else
        {
          if (v10 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v33 = *(v32 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        *(v0 + 440) = v33;
        *(v0 + 448) = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ([v33 isFolder] && (objc_msgSend(v33, sel_isSharedByCurrentUser) & 1) != 0)
        {
          break;
        }

        swift_unknownObjectRelease();
        v10 = *(v0 + 448);
        if (v10 == *(v0 + 432))
        {
          goto LABEL_24;
        }
      }

      v34 = *(v0 + 408);
      *(v0 + 16) = v0;
      *(v0 + 56) = v34;
      *(v0 + 24) = closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:);
      v35 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVSgs5Error_pGMd);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?;
      *(v0 + 168) = &block_descriptor_15_6;
      *(v0 + 176) = v35;
      [v33 fetchURL_];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

LABEL_19:
  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_3:
  v14 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C1FC540](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    *(v0 + 520) = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ((*(**(v0 + 424) + 96))(v15, *(v0 + 336)))
    {
      break;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_20;
    }
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v18)
  {
    v19 = v18;
    [v18 setBool:1 forKey:*MEMORY[0x277D05E40]];
  }

  type metadata accessor for MainActor();
  *(v0 + 528) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:), v21, v20);
}

{

  if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v1, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  *(v0 + 536) = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  return MEMORY[0x2822009F8](closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:), 0, 0);
}

{
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.DocumentManager);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[65];
  v6 = v0[63];
  v7 = v0[62];
  v13 = v0[49];
  v14 = v0[52];
  v8 = v0[46];
  v12 = v0[47];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "Files Family Tip Found shared folder with family member", v9, 2u);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v8, &sharedTypeToFocusInputView._typedStorage);
  v6(v13, v12);
  outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd);

  v10 = v0[1];

  return v10();
}

{
  swift_willThrow();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[60];
  v2 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  outlined destroy of CharacterSet?(v2, &_s10Foundation3URLVSgMd);

  v6 = v0[1];

  return v6();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v15 = swift_allocError();
    *v16 = a3;
    v17 = a3;

    return MEMORY[0x282200958](v14, v15);
  }

  else
  {
    if (a2)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    }

    else
    {
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    }

    outlined init with take of (key: URL, value: FPItem)(v9, v13, &_s10Foundation3URLVSgMd);
    outlined init with take of (key: URL, value: FPItem)(v13, *(*(v14 + 64) + 40), &_s10Foundation3URLVSgMd);
    return swift_continuation_throwingResume();
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._typedStorage);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  v16 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v17 = swift_allocError();
    *v18 = a4;
    v19 = a4;
    v20 = v16;
    v21 = v17;
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = (*(v8 + 32))(v15, v11, v7);
    if (a3)
    {
      *&v15[*(v12 + 48)] = a3;
      v22 = *(*(v16 + 64) + 40);
      v23 = a3;
      outlined init with take of (key: URL, value: FPItem)(v15, v22, &sharedTypeToFocusInputView._typedStorage);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v20, v21);
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of DOCGridLayout.Spec?(a3, v23 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CharacterSet?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

Swift::Bool __swiftcall FamilyFetcher.isParticipantAdultFamilyMember(participant:familyMembers:)(CKShareParticipant participant, Swift::OpaquePointer familyMembers)
{
  if (familyMembers._rawValue >> 62)
  {
    goto LABEL_84;
  }

  v3 = *((familyMembers._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v85 = 0;
    v5 = familyMembers._rawValue & 0xC000000000000001;
    v77 = familyMembers._rawValue + 32;
    v78 = familyMembers._rawValue & 0xFFFFFFFFFFFFFF8;
    isa = participant.super.isa;
    rawValue = familyMembers._rawValue;
    v79 = familyMembers._rawValue & 0xC000000000000001;
    v80 = v3;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x24C1FC540](v4);
      }

      else
      {
        if (v4 >= *(v78 + 16))
        {
          goto LABEL_87;
        }

        v6 = *&v77[8 * v4];
      }

      v7 = v6;
      v8 = __OFADD__(v4, 1);
      v9 = v4 + 1;
      if (v8)
      {
        goto LABEL_83;
      }

      v10 = [v6 appleID];
      v83 = v9;
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = [(objc_class *)participant.super.isa userIdentity];
      v16 = [v15 lookupInfo];

      if (v16 && (v17 = [v16 emailAddress], v16, v17))
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (!v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
        if (!v14)
        {
LABEL_16:

          goto LABEL_21;
        }
      }

      if (v12 == v18 && v14 == v20)
      {

        goto LABEL_73;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_79;
      }

LABEL_21:
      v22 = [v7 contact];
      if (!v22)
      {
        goto LABEL_76;
      }

      v23 = v22;
      v24 = [(objc_class *)participant.super.isa userIdentity];
      v25 = [v24 lookupInfo];

      v89 = v25;
      if (!v25)
      {

LABEL_76:
LABEL_77:
        LOBYTE(v3) = 0;
        return v3;
      }

      v26 = [v23 emailAddresses];
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._layoutMarginsGuide);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v29 = __CocoaSet.count.getter();
        v86 = v23;
        if (!v29)
        {
LABEL_35:

          v32 = MEMORY[0x277D84F90];
          goto LABEL_36;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v86 = v23;
        if (!v29)
        {
          goto LABEL_35;
        }
      }

      v90[0] = MEMORY[0x277D84F90];
      LOBYTE(v3) = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        return v3;
      }

      v88 = v27;
      v30 = v7;
      v31 = 0;
      v32 = v90[0];
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x24C1FC540](v31, v28);
        }

        else
        {
          v33 = *(v28 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 value];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v90[0] = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v32 = v90[0];
        }

        ++v31;
        *(v32 + 16) = v40 + 1;
        v41 = v32 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
      }

      while (v29 != v31);

      v7 = v30;
      v23 = v86;
LABEL_36:
      v42 = [v89 emailAddress];
      if (v42)
      {
        v44 = v42;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v90[0] = v45;
      v90[1] = v47;
      MEMORY[0x28223BE20](v42, v43);
      v76[2] = v90;
      participant.super.isa = v85;
      v48 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v76, v32);
      v85 = participant.super.isa;

      if (v48)
      {

LABEL_79:
LABEL_73:
        LOBYTE(v3) = 1;
        return v3;
      }

      v84 = v7;
      v49 = [v23 phoneNumbers];
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v50 >> 62)
      {
        break;
      }

      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
        goto LABEL_42;
      }

LABEL_4:

      participant.super.isa = isa;
      v4 = v83;
      v5 = v79;
      if (v83 == v80)
      {
        goto LABEL_77;
      }
    }

    v51 = __CocoaSet.count.getter();
    if (!v51)
    {
      goto LABEL_4;
    }

LABEL_42:
    v52 = 0;
    v87 = v50 & 0xFFFFFFFFFFFFFF8;
    v88 = v50 & 0xC000000000000001;
    while (2)
    {
      if (v88)
      {
        v53 = MEMORY[0x24C1FC540](v52, v50);
      }

      else
      {
        if (v52 >= *(v87 + 16))
        {
          goto LABEL_82;
        }

        v53 = *(v50 + 8 * v52 + 32);
      }

      v54 = v53;
      participant.super.isa = (v52 + 1);
      if (!__OFADD__(v52, 1))
      {
        v55 = [v53 value];
        v56 = [v55 fullyQualifiedDigits];

        if (v56)
        {
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v60 = [v89 phoneNumber];
        if (v60)
        {
          v61 = v60;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v62 = 0;
          v64 = 0xE000000000000000;
        }

        v65 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v66 = MEMORY[0x24C1FAD20](v62, v64);

        v67 = [v65 initWithStringValue_];

        v68 = [v67 fullyQualifiedDigits];
        if (v68)
        {
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          if (v59)
          {
            if (v71)
            {
              if (v57 == v69 && v59 == v71)
              {

LABEL_71:

                v73 = v86;
LABEL_72:

                goto LABEL_73;
              }

              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v72)
              {

                v54 = v84;
                goto LABEL_71;
              }

              goto LABEL_45;
            }

LABEL_65:
          }

          else
          {

            if (!v71)
            {
              goto LABEL_69;
            }
          }

LABEL_45:
          ++v52;
          if (participant.super.isa == v51)
          {
            goto LABEL_4;
          }

          continue;
        }

        if (!v59)
        {

LABEL_69:

          v73 = v84;
          goto LABEL_72;
        }

        goto LABEL_65;
      }

      break;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v74 = familyMembers._rawValue;
    v3 = __CocoaSet.count.getter();
    familyMembers._rawValue = v74;
  }

  return v3;
}

uint64_t protocol witness for FamilyFetcherProtocol.familyCircle() in conformance FamilyFetcher()
{
  v4 = (*(**v0 + 80) + **(**v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v4();
}

uint64_t protocol witness for FamilyFetcherProtocol.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:) in conformance FamilyFetcher(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 88) + **(**v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v8(a1, a2);
}

uint64_t partial apply for closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of FamilyFetcherProtocol.familyCircle()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = CreateFolderTargetProvider.getItem(for:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of FamilyFetcherProtocol.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FamilyFetcher.familyCircle()()
{
  v4 = (*(*v0 + 80) + **(*v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v4();
}

uint64_t dispatch thunk of FamilyFetcher.checkIfIsSharingFolderWithAdultFamilyMember(items:adultMembers:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v8(a1, a2);
}

unint64_t type metadata accessor for CKShareParticipant()
{
  result = sharedTypeToFocusInputView._stashedLayoutVariableObservations;
  if (!sharedTypeToFocusInputView._stashedLayoutVariableObservations)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &sharedTypeToFocusInputView._stashedLayoutVariableObservations);
  }

  return result;
}

void *DOCAssertionCollection.__allocating_init(debugName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[5] = a1;
  result[6] = a2;
  result[2] = v9;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t DOCAssertion.__allocating_init(traceInfo:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 1;
  *(result + 40) = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DOCAssertion.DOCWeakAssertionObserver.__deallocating_deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DOCAssertionObserver.assertionDidInvalidate(_:) in conformance DOCAssertion.DOCWeakAssertionObserver(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCAssertion.traceInfo.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCAssertion.init(traceInfo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 1;
  *(v2 + 40) = MEMORY[0x277D84F90];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

_BYTE *DOCAssertion.deinit()
{
  v1 = swift_beginAccess();
  if (v0[32] == 1)
  {
    (*(*v0 + 160))(v1);
  }

  return v0;
}

uint64_t DOCAssertion.__deallocating_deinit()
{
  v1 = swift_beginAccess();
  if (v0[32] == 1)
  {
    (*(*v0 + 160))(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t key path setter for DOCAssertion.valid : DOCAssertion(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 32);
  *(v3 + 32) = v2;
  if ((v2 & 1) == 0)
  {
    if (v5)
    {
      return DOCAssertion.notifyObservers()();
    }
  }

  return result;
}

Swift::Void __swiftcall DOCAssertion.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
  if (v1)
  {
    DOCAssertion.notifyObservers()();
  }
}

uint64_t DOCAssertion.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  DOCAssertion.purgeDeadObservers()();
  type metadata accessor for DOCAssertion.DOCWeakAssertionObserver();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  MEMORY[0x24C1FB090](v5);
  if (*((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t DOCAssertion.removeObserver(_:)(uint64_t a1)
{
  DOCAssertion.purgeDeadObservers()();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 40), a1);
  result = swift_unknownObjectRelease();
  v5 = *(v1 + 40);
  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
    if (result >= v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v3)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v3, v6);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCAssertion.notifyObservers()()
{
  DOCAssertion.purgeDeadObservers()();
  result = swift_beginAccess();
  v2 = *(v0 + 40);
  *(v0 + 40) = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 24);
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v0, ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCAssertion.purgeDeadObservers()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v8 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v8;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_17:

  *(v1 + 40) = v6;
}

uint64_t DOCAssertionCollection.add(_:autoInvalidationTimeout:)(uint64_t a1, uint64_t a2, char a3)
{
  v32 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v32 - v21;
  (*(*a1 + 168))(v3, &protocol witness table for DOCAssertionCollection, v20);
  swift_beginAccess();

  MEMORY[0x24C1FB090](v23);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v24 = swift_endAccess();
  result = (*(v3 + 24))(v24);
  if ((a3 & 1) == 0)
  {
    v26 = v32;
    type metadata accessor for OS_dispatch_queue();
    v27 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v33 = *(v33 + 8);
    v28 = v17;
    v29 = v34;
    (v33)(v28, v34);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = v26;
    aBlock[4] = partial apply for closure #1 in DOCAssertionCollection.add(_:autoInvalidationTimeout:);
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_150;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB940](v22, v13, v9, v31);
    _Block_release(v31);

    (*(v37 + 8))(v9, v6);
    (*(v35 + 8))(v13, v36);
    return (v33)(v22, v29);
  }

  return result;
}

uint64_t closure #1 in DOCAssertionCollection.add(_:autoInvalidationTimeout:)(uint64_t a1)
{
  result = (*(*a1 + 112))();
  if (result)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    MEMORY[0x24C1FAEA0](0xD00000000000001DLL, 0x8000000249BF96B0);
    type metadata accessor for DOCAssertion();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BF96D0);
    Double.write<A>(to:)();
    MEMORY[0x24C1FAEA0](115, 0xE100000000000000);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_2493AC000, v4, v5, "WARNING: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    else
    {
    }

    return (*(*a1 + 160))();
  }

  return result;
}

uint64_t DOCAssertionCollection.validAssertions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_19:
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v8;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      if ((*(*v4 + 112))())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_17:

  return v6;
}

char *DOCAssertionCollection.description.getter()
{
  v1 = v0;
  v2 = DOCAssertionCollection.validAssertions.getter();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    _StringGuts.grow(_:)(50);

    MEMORY[0x24C1FAEA0](*(v1 + 40), *(v1 + 48));
    MEMORY[0x24C1FAEA0](0x7265737361202C27, 0xEF203A736E6F6974);
    v14 = MEMORY[0x24C1FB0D0](v7, MEMORY[0x277D837D0]);
    v16 = v15;

    MEMORY[0x24C1FAEA0](v14, v16);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    return 0xD00000000000001ELL;
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = v0;
    v6 = 0;
    v7 = v18;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v18 + 16) = v12 + 1;
      v13 = v18 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v4 != v6);

    v1 = v17;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t DOCAssertionCollection.assertionDidInvalidate(_:)(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 176))(v2, &protocol witness table for DOCAssertionCollection);
  swift_beginAccess();

  v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + 16), a1);

  v6 = *(v2 + 16);
  if (v6 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (result >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v4, v7);
      v8 = swift_endAccess();
      return (*(v2 + 24))(v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCAssertionCollection.deinit()
{

  return v0;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v11 == __CocoaSet.count.getter())
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v11, v3);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = MEMORY[0x24C1FC540](v7, v3);
                v14 = MEMORY[0x24C1FC540](v11, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_60;
                }

                if (v11 >= v15)
                {
                  goto LABEL_61;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if ((v3 & 0x8000000000000000) != 0 || v16)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return __CocoaSet.count.getter();
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return __CocoaSet.count.getter();
  }

  return *(v4 + 16);
}

{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x24C1FC540](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x24C1FC540](v10, v7);
        v14 = MEMORY[0x24C1FC540](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DocumentManagerExecutables::DOCItemSortMode __swiftcall ColumnType.sortDescriptor()()
{
  v2 = *(v1 + 8) - 1;
  if (v2 >= 8)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x903040508010700uLL >> (8 * v2);
  }

  *v0 = v3;
  return result;
}

void DOCItemSortDescriptor.reversedSortDesciptors.getter(uint64_t a1@<X8>)
{
  v2 = v1[24];
  v3 = *v1;
  DOCItemSortDescriptor.init(type:isReversed:)(&v3, (v2 & 1) == 0, a1);
}

DocumentManagerExecutables::DOCItemSortMode_optional __swiftcall DOCItemSortMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCItemSortMode.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::String __swiftcall DOCItemSortMode.localizedName(for:)(DocumentManagerExecutables::DOCLocalizationContext a1)
{
  v2 = *a1;
  v3 = *v1;
  countAndFlagsBits = _DocumentManagerBundle();
  v6 = countAndFlagsBits;
  if (!v2)
  {
    if (v3 <= 4)
    {
      if (v3 > 1)
      {
        if (v3 != 2)
        {
          if (v3 == 3)
          {
            if (countAndFlagsBits)
            {
              v26 = 0x8000000249BF9F10;
              v7 = 0x617A696C61636F4CLL;
              v8 = 0xEB00000000656C62;
              v11 = 0xD000000000000014;
              v9 = 0x8000000249BF9EF0;
              v10 = 0xD000000000000033;
              goto LABEL_21;
            }

            goto LABEL_107;
          }

          if (!countAndFlagsBits)
          {
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          v26 = 0x8000000249BF9EB0;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v11 = 0xD000000000000014;
          v9 = 0x8000000249BF9E90;
          v10 = 0xD000000000000033;
LABEL_94:
          v12.super.isa = v6;
          v13 = 1702521171;
          v14 = 0xE400000000000000;
          goto LABEL_105;
        }

        if (!countAndFlagsBits)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v26 = 0x8000000249BF9F70;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v11 = 0xD000000000000014;
        v9 = 0x8000000249BF9F50;
        v10 = 0xD000000000000033;
LABEL_65:
        v12.super.isa = v6;
        v13 = 1701667150;
        v14 = 0xE400000000000000;
        goto LABEL_105;
      }

      if (!v3)
      {
        if (countAndFlagsBits)
        {
          v26 = 0x8000000249BFA100;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v13 = 0x646F4D2065746144;
          v14 = 0xED00006465696669;
          v11 = 0xD00000000000001DLL;
          v9 = 0x8000000249BFA0E0;
          v10 = 0xD000000000000040;
          v12.super.isa = v6;
          goto LABEL_105;
        }

        goto LABEL_112;
      }

      if (!countAndFlagsBits)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v22 = "tion date in a grouping menu";
      v23 = 45;
      v26 = 0x8000000249BFA0A0;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v11 = 0xD000000000000020;
LABEL_85:
      v9 = v22 | 0x8000000000000000;
      v14 = 0x8000000249BF9960;
      v10 = v23 | 0xD000000000000010;
      goto LABEL_101;
    }

    if (v3 > 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          if (!countAndFlagsBits)
          {
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          v26 = 0x8000000249BF9FD0;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v13 = 0x6464412065746144;
          v11 = 0xD00000000000001ALL;
          v9 = 0x8000000249BF9FB0;
          v10 = 0xD000000000000039;
LABEL_32:
          v12.super.isa = v6;
          goto LABEL_38;
        }

        if (!countAndFlagsBits)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v15 = "ication date in a sort menu";
        v21 = 0x8000000249BF9D90;
        v16 = 13;
        v17 = 44;
LABEL_81:
        v26 = v21;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v13 = 0x532064756F6C4369;
        v18 = 0x7375746174;
        goto LABEL_82;
      }

      if (!countAndFlagsBits)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v19 = " added in a grouping menu";
      v20 = 44;
      v26 = 0x8000000249BFA030;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v13 = 0x6572432065746144;
      v14 = 0xEC00000064657461;
      v11 = 0xD00000000000001CLL;
LABEL_68:
      v9 = v19 | 0x8000000000000000;
      v10 = v20 | 0xD000000000000010;
      v12.super.isa = v6;
      goto LABEL_105;
    }

    if (v3 == 5)
    {
      if (!countAndFlagsBits)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v26 = 0x8000000249BF9E50;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v11 = 0xD000000000000014;
      v9 = 0x8000000249BF9E30;
      v10 = 0xD000000000000038;
LABEL_58:
      v12.super.isa = v6;
      v13 = 1684957515;
      v14 = 0xE400000000000000;
      goto LABEL_105;
    }

    if (!countAndFlagsBits)
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v26 = 0x8000000249BF9DF0;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v13 = 0x6220646572616853;
    v11 = 0xD000000000000019;
    v9 = 0x8000000249BF9DD0;
    v10 = 0xD000000000000035;
    goto LABEL_104;
  }

  if (v2 != 1)
  {
    if (v3 > 4)
    {
      if (v3 <= 6)
      {
        if (v3 == 5)
        {
          if (!countAndFlagsBits)
          {
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v26 = 0x8000000249BF9830;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v9 = 0x8000000249BF9810;
          v10 = 0xD000000000000024;
LABEL_57:
          v11 = 0xD000000000000010;
          goto LABEL_58;
        }

        if (!countAndFlagsBits)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v26 = 0x8000000249BF97E0;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v13 = 0x6220646572616853;
        v11 = 0xD000000000000013;
        v9 = 0x8000000249BF97C0;
        v10 = 0xD000000000000021;
LABEL_104:
        v12.super.isa = v6;
        v14 = 0xE900000000000079;
        goto LABEL_105;
      }

      if (v3 == 7)
      {
        if (!countAndFlagsBits)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v26 = 0x8000000249BF9930;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v11 = 0x6572432065746144;
        v9 = 0xEC00000064657461;
      }

      else
      {
        if (v3 == 8)
        {
          if (!countAndFlagsBits)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v26 = 0x8000000249BF98E0;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v11 = 0x6464412065746144;
          v10 = 0xD000000000000040;
          v9 = 0xEA00000000006465;
          v12.super.isa = v6;
          v13 = 0x6464412065746144;
LABEL_38:
          v14 = 0xEA00000000006465;
          goto LABEL_105;
        }

        if (!countAndFlagsBits)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v26 = 0x8000000249BF9790;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v11 = 0x532064756F6C4369;
        v9 = 0xED00007375746174;
      }

      v10 = 0xD000000000000028;
    }

    else
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          if (countAndFlagsBits)
          {
            v26 = 0x8000000249BF98C0;
            v7 = 0x617A696C61636F4CLL;
            v8 = 0xEB00000000656C62;
            v10 = 0xD00000000000001FLL;
            v11 = 1701667150;
            v9 = 0xE400000000000000;
            v12.super.isa = v6;
            v13 = 0;
            v14 = 0xE000000000000000;
            goto LABEL_105;
          }

          goto LABEL_130;
        }

        if (v3 == 3)
        {
          if (countAndFlagsBits)
          {
            v26 = 0x8000000249BF98A0;
            v11 = 0x6F735B2073676154;
            v9 = 0xEE005D676E697472;
            v7 = 0x617A696C61636F4CLL;
            v8 = 0xEB00000000656C62;
            v10 = 0xD00000000000001FLL;
            goto LABEL_21;
          }

          goto LABEL_126;
        }

        if (!countAndFlagsBits)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v26 = 0x8000000249BF9880;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v11 = 0xD000000000000013;
        v9 = 0x8000000249BF9860;
        v10 = 0xD00000000000001FLL;
        goto LABEL_94;
      }

      if (v3)
      {
        if (!countAndFlagsBits)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v26 = 0x8000000249BF9980;
        v7 = 0x617A696C61636F4CLL;
        v8 = 0xEB00000000656C62;
        v9 = 0x8000000249BF9960;
        v14 = 0x8000000249BF9960;
        v10 = 0xD000000000000029;
        v11 = 0xD000000000000010;
LABEL_101:
        v12.super.isa = v6;
        v13 = 0xD000000000000010;
        goto LABEL_105;
      }

      if (!countAndFlagsBits)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v26 = 0x8000000249BF99B0;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v11 = 0x646F4D2065746144;
      v9 = 0xED00006465696669;
      v10 = 0xD00000000000002CLL;
    }

    v12.super.isa = v6;
    v13 = v11;
    v14 = v9;
    goto LABEL_105;
  }

  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          if (!countAndFlagsBits)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          v26 = 0x8000000249BF9C10;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v13 = 0x6464412065746144;
          v11 = 0xD000000000000016;
          v9 = 0x8000000249BF9BF0;
          v10 = 0xD000000000000034;
          goto LABEL_32;
        }

        if (!countAndFlagsBits)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v15 = "g items by modification date";
        v21 = 0x8000000249BF9A00;
        v16 = 9;
        v17 = 39;
        goto LABEL_81;
      }

      if (!countAndFlagsBits)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v19 = "added in a sort menu";
      v20 = 39;
      v26 = 0x8000000249BF9C70;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v13 = 0x6572432065746144;
      v14 = 0xEC00000064657461;
      v11 = 0xD000000000000018;
      goto LABEL_68;
    }

    if (v3 == 5)
    {
      if (!countAndFlagsBits)
      {
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v26 = 0x8000000249BF9AC0;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v9 = 0x8000000249BF9AA0;
      v10 = 0xD000000000000033;
      goto LABEL_57;
    }

    if (!countAndFlagsBits)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v26 = 0x8000000249BF9A60;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v13 = 0x6220646572616853;
    v11 = 0xD000000000000015;
    v9 = 0x8000000249BF9A40;
    v10 = 0xD000000000000030;
    goto LABEL_104;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      if (!countAndFlagsBits)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v15 = "used date in a sort menu";
      v16 = 9;
      v17 = 43;
      v26 = 0x8000000249BF9D30;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v13 = 0x646F4D2065746144;
      v18 = 0x6465696669;
LABEL_82:
      v14 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      v11 = v16 | 0xD000000000000010;
      v9 = v15 | 0x8000000000000000;
      v10 = v17 | 0xD000000000000010;
      v12.super.isa = v6;
      goto LABEL_105;
    }

    if (!countAndFlagsBits)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v22 = "ion date in a sort menu";
    v23 = 40;
    v26 = 0x8000000249BF9CD0;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v11 = 0xD00000000000001CLL;
    goto LABEL_85;
  }

  if (v3 == 2)
  {
    if (!countAndFlagsBits)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v26 = 0x8000000249BF9BC0;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v9 = 0x8000000249BF9BA0;
    v10 = 0xD00000000000002ELL;
    v11 = 0xD000000000000010;
    goto LABEL_65;
  }

  if (v3 != 3)
  {
    if (!countAndFlagsBits)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v26 = 0x8000000249BF9B20;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v9 = 0x8000000249BF9B00;
    v10 = 0xD00000000000002ELL;
    v11 = 0xD000000000000010;
    goto LABEL_94;
  }

  if (!countAndFlagsBits)
  {
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v26 = 0x8000000249BF9B70;
  v7 = 0x617A696C61636F4CLL;
  v8 = 0xEB00000000656C62;
  v9 = 0x8000000249BF9B50;
  v10 = 0xD00000000000002ELL;
  v11 = 0xD000000000000010;
LABEL_21:
  v12.super.isa = v6;
  v13 = 1936154964;
  v14 = 0xE400000000000000;
LABEL_105:
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v7, v12, *&v13, *&v10);

  countAndFlagsBits = v24._countAndFlagsBits;
  object = v24._object;
LABEL_136:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}